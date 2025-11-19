uint64_t sub_1E188DF38(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1E1AEFE6C();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C204(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1E135C204(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1E188E208(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_1E1300B24(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1E1308EC0(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C74C(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1E135C74C((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
        v17 = MEMORY[0x1EEE9AC00](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_1E19A0830(v13, v19, &v29, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_1(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_1E188E438()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    goto LABEL_2;
  }

  sub_1E134FD1C(v0 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v3, &unk_1ECEB4B60);
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1E1308058(v3, &unk_1ECEB4B60);
    v4 = 0;
    return v4 & 1;
  }

  v7 = v0;
  v8 = sub_1E1AEFBDC();
  v10 = v9;
  (*(v6 + 8))(v3, v5);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_2:
    v4 = 0;
  }

  else
  {
    if (*(v7 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy))
    {
      v12 = 0x80000001E1B57970;
    }

    else
    {
      v12 = 0xEA00000000006461;
    }

    if (*(v7 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) == 1 && 0x80000001E1B57970 == v12)
    {

      v4 = 1;
    }

    else
    {
      v4 = sub_1E1AF74AC();
    }
  }

  return v4 & 1;
}

char *Shelf.mergingWith(_:)(char *a1)
{
  v2 = v1;
  v195 = *v1;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v175 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v145 - v4;
  v5 = sub_1E1AEFEAC();
  v172 = *(v5 - 8);
  v173 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v171 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v181 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v145 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v182 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v185 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v145 - v16;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v17 = *(v180 - 8);
  v18 = MEMORY[0x1EEE9AC00](v180);
  v184 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v145 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v145 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v188 = &v145 - v26;
  v183 = sub_1E1AEFE6C();
  v187 = *(v183 - 8);
  v27 = MEMORY[0x1EEE9AC00](v183);
  v194 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v186 = &v145 - v29;
  v217[0] = v1[16];
  if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v30 == 0xEB00000000726564)
  {
  }

  else
  {
    v31 = sub_1E1AF74AC();

    if ((v31 & 1) == 0)
    {
LABEL_6:
      v32 = 0;
      goto LABEL_8;
    }
  }

  if (v1[17] == 100)
  {
    goto LABEL_6;
  }

  v217[0] = v1[17];
  LOBYTE(v214) = a1[16];
  v32 = Shelf.ContentType.isCompatible(with:)(&v214);
LABEL_8:
  v217[0] = v1[16];
  LOBYTE(v214) = a1[16];
  v33 = Shelf.ContentType.isCompatible(with:)(&v214);
  if ((v32 & 1) == 0 && (v33 & 1) == 0)
  {
    v34 = sub_1E1AF46EC();
    sub_1E189EE98(&qword_1ECEBA858, MEMORY[0x1E69AB200]);
    swift_allocError();
    v35 = v2[16];
    *(v36 + 24) = &type metadata for Shelf.ContentType;
    *v36 = v35;
    v37 = a1[16];
    *(v36 + 56) = &type metadata for Shelf.ContentType;
    *(v36 + 32) = v37;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69AB1F8], v34);
    swift_willThrow();
    return v2;
  }

  sub_1E1AEFE5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8678);
  v38 = a1;
  v174 = v22;
  v39 = v25;
  v40 = *(v17 + 72);
  v41 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v178 = swift_allocObject();
  v42 = &v178[v41];
  v196 = v38;
  sub_1E134FD1C(&v38[OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate], &v178[v41], &unk_1ECEBB780);
  v176 = v2;
  v177 = v40;
  v43 = &v42[v40];
  v44 = v39;
  v45 = v174;
  sub_1E134FD1C(&v2[OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate], v43, &unk_1ECEBB780);
  v179 = v42;
  sub_1E134FD1C(v42, v44, &unk_1ECEBB780);
  sub_1E14C1EAC(v44, v45);
  v46 = *(v187 + 48);
  v47 = v187 + 32;
  v48 = v183;
  if (v46(v45, 1, v183) == 1)
  {
    sub_1E1308058(v45, &unk_1ECEBB780);
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v176;
    goto LABEL_17;
  }

  v169 = *v47;
  v170 = v46;
  v169(v194, v45, v48);
  v49 = MEMORY[0x1E69E7CC0];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_14;
  }

  while (1)
  {
    v49 = sub_1E172D0BC(0, *(v49 + 16) + 1, 1, v49);
LABEL_14:
    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    v50 = v176;
    if (v52 >= v51 >> 1)
    {
      v49 = sub_1E172D0BC(v51 > 1, v52 + 1, 1, v49);
    }

    *(v49 + 16) = v52 + 1;
    v53 = v49 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v52;
    v48 = v183;
    v169(v53, v194, v183);
    v46 = v170;
LABEL_17:
    sub_1E134FD1C(&v179[v177], v44, &unk_1ECEBB780);
    sub_1E14C1EAC(v44, v45);
    if (v46(v45, 1, v48) == 1)
    {
      sub_1E1308058(v45, &unk_1ECEBB780);
      v54 = v196;
      v55 = v191;
    }

    else
    {
      v56 = *v47;
      v177 = v47;
      v56(v194, v45, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v196;
      v55 = v191;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = sub_1E172D0BC(0, *(v49 + 16) + 1, 1, v49);
      }

      v59 = *(v49 + 16);
      v58 = *(v49 + 24);
      if (v59 >= v58 >> 1)
      {
        v49 = sub_1E172D0BC(v58 > 1, v59 + 1, 1, v49);
      }

      *(v49 + 16) = v59 + 1;
      v56((v49 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v59), v194, v48);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    v60 = swift_deallocClassInstance();
    MEMORY[0x1EEE9AC00](v60);
    *(&v145 - 2) = v186;
    v61 = sub_1E188DF38(sub_1E16F769C, (&v145 - 4), v49);
    v147 = v55;
    sub_1E1890084(v61, v188);

    v217[0] = *(v50 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v62 == 0xEE0072656B72614DLL)
    {
      goto LABEL_26;
    }

    v63 = sub_1E1AF74AC();

    if (v63)
    {
      goto LABEL_28;
    }

    v217[0] = *(v50 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v120 == 0xEB00000000726564)
    {
LABEL_26:

LABEL_28:
      LODWORD(v191) = v54[16];
      v64 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }

    v121 = sub_1E1AF74AC();

    if (v121)
    {
      goto LABEL_28;
    }

    LODWORD(v191) = *(v50 + 16);
    v64 = *(v50 + 24);

LABEL_29:
    sub_1E134E724(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v217);
    LODWORD(v169) = *(v50 + 17);
    *&v214 = v64;

    sub_1E17285A0(v65);
    v66 = v214;
    v176 = sub_1E17D844C(*(v54 + 5), *(v50 + 40), 1);
    sub_1E134FD1C(&v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_url], v189, &unk_1ECEB4B60);
    v168 = v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched];
    v167 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy);
    v67 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8);
    v166 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
    v68 = *&v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8];
    if (v68)
    {
      v146 = *&v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle];
      v153 = v68;
    }

    else
    {
      v69 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8);
      v146 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
      v153 = v69;
    }

    v170 = v67;
    v177 = *&v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction];
    if (!v177)
    {
      v177 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
    }

    v180 = v68;
    v174 = v66;
    v70 = *&v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle];
    v194 = v70;
    if (v70 == 1)
    {
      v194 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
      sub_1E15470AC(v194);
    }

    v165 = v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden];
    v152 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
    v151 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior);
    v150 = v54[OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized];
    v154 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
    v71 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
    v72 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
    v73 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
    v178 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
    v74 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
    v159 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel);
    *&v214 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);

    sub_1E15470AC(v70);
    v157 = v72;
    v158 = v71;
    v156 = v73;
    v155 = v74;
    sub_1E151F120(v71, v72, v178, v73, v74);

    v76 = v196;
    sub_1E1728824(v75);
    v148 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
    v149 = v214;
    v77 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
    v160 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
    v161 = v77;
    v78 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
    v162 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
    v163 = v78;
    v79 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
    v179 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
    v180 = v79;
    v164 = *(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
    sub_1E134FD1C(v188, v184, &unk_1ECEBB780);
    v80 = v181;
    sub_1E134FD1C(&v76[OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics], v181, &unk_1ECEB1770);
    v81 = sub_1E1AF46DC();
    v82 = *(v81 - 8);
    v83 = *(v82 + 48);
    if (v83(v80, 1, v81) == 1)
    {
      sub_1E134FD1C(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, v190, &unk_1ECEB1770);
      if (v83(v80, 1, v81) != 1)
      {
        sub_1E1308058(v80, &unk_1ECEB1770);
      }
    }

    else
    {
      v84 = v190;
      (*(v82 + 32))(v190, v80, v81);
      (*(v82 + 56))(v84, 0, 1, v81);
    }

    v85 = v182;
    sub_1E134FD1C(&v76[OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl], v182, &unk_1ECEB4B60);
    v86 = sub_1E1AEFCCC();
    v87 = *(v86 - 8);
    v88 = *(v87 + 48);
    if (v88(v85, 1, v86) == 1)
    {
      sub_1E134FD1C(v50 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v185, &unk_1ECEB4B60);
      v89 = v88(v85, 1, v86);
      v90 = v163;
      v92 = v160;
      v91 = v161;
      if (v89 != 1)
      {
        sub_1E1308058(v85, &unk_1ECEB4B60);
      }
    }

    else
    {
      v93 = v185;
      (*(v87 + 32))(v185, v85, v86);
      (*(v87 + 56))(v93, 0, 1, v86);
      v90 = v163;
      v92 = v160;
      v91 = v161;
    }

    v94 = v196;
    v95 = *&v196[OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics];
    if (!v95)
    {
    }

    v182 = v95;
    v96 = *&v94[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 8];
    v181 = *&v94[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
    v97 = *&v94[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 24];
    v161 = *&v94[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 16];
    v98 = swift_allocObject();
    sub_1E134FD1C(v217, &v211, &unk_1ECEB5670);
    v163 = v96;
    v160 = v97;
    if (*(&v212 + 1))
    {
      v214 = v211;
      v215 = v212;
      v216 = v213;
    }

    else
    {

      v99 = v171;
      sub_1E1AEFE9C();
      v100 = sub_1E1AEFE7C();
      v102 = v101;
      (*(v172 + 8))(v99, v173);
      *&v208 = v100;
      *(&v208 + 1) = v102;
      sub_1E1AF6F6C();
      sub_1E1308058(&v211, &unk_1ECEB5670);
    }

    v103 = v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
    v104 = v215;
    *v103 = v214;
    *(v103 + 16) = v104;
    *(v103 + 32) = v216;
    sub_1E134FD1C(v190, v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
    v105 = v191;
    *(v98 + 16) = v191;
    *(v98 + 17) = v169;
    *(v98 + 18) = 1;
    *(v98 + 24) = v174;
    LODWORD(v191) = v105;
    LOBYTE(v214) = v105;

    *(v98 + 32) = sub_1E1956360(v106, &v214);
    sub_1E134FD1C(v189, v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v168;
    v107 = (v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
    v108 = v170;
    *v107 = v166;
    v107[1] = v108;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v167;
    *(v98 + 40) = v176;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v165;
    v109 = (v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
    *v109 = v92;
    v109[1] = v91;
    v110 = v162;
    v109[2] = v162;
    v109[3] = v90;
    v111 = v179;
    v109[4] = v180;
    v109[5] = v111;
    v112 = v90;
    v113 = v164;
    v109[6] = v164;
    if (v194 >= 2)
    {
      v196 = objc_opt_self();

      sub_1E189EE00(v92, v91, v110, v112, v180, v179, v113);
      result = [v196 defaultWorkspace];
      if (!result)
      {
        goto LABEL_104;
      }

      v115 = result;

      v116 = sub_1E1AF5DBC();
      v117 = [v115 applicationIsInstalled_];

      if ((v117 & 1) == 0)
      {
        sub_1E1547120(v194);

        v122 = (v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
        *v122 = 0;
        v122[1] = 0;
        *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
        *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
        goto LABEL_59;
      }
    }

    else
    {

      sub_1E189EE00(v92, v91, v110, v112, v180, v179, v113);
    }

    v118 = (v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v119 = v153;
    *v118 = v146;
    v118[1] = v119;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v177;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v194;

LABEL_59:
    v123 = v182;
    sub_1E134FD1C(v184, v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
    sub_1E134FD1C(v185, v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = v123;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v148;
    v124 = v151;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v152;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v124;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v150;
    v125 = v154;
    if (v154)
    {
    }

    else
    {
      LOBYTE(v214) = v191;

      v125 = sub_1E1956580();
    }

    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v125;
    v126 = v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
    v127 = v157;
    *v126 = v158;
    *(v126 + 8) = v127;
    v128 = v156;
    *(v126 + 16) = v178;
    *(v126 + 24) = v128;
    *(v126 + 32) = v155;
    v129 = v159;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v159;
    *(v98 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v149;
    v194 = v98;
    v45 = *(v98 + 24);
    v130 = sub_1E13C50E8();

    v49 = 0;
    v218 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v130);
    v131 = (v45 + 32);
    v132 = 0uLL;
    v191 = xmmword_1E1B16440;
    v2 = &unk_1E1B2E400;
    v196 = (v45 + 32);
    while (2)
    {
      v44 = *(v45 + 16);
      if (v49 != v44)
      {
LABEL_66:
        if ((v49 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v49 < *(v45 + 16))
        {
          sub_1E1300B24(&v131[40 * v49++], &v201);
          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_99;
      }

      while (1)
      {
        v203 = 0;
        v49 = v44;
        v201 = v132;
        v202 = v132;
LABEL_70:
        v199[0] = v201;
        v199[1] = v202;
        v200 = v203;
        if (!*(&v202 + 1))
        {
          memset(v204, 0, 24);
          *(&v204[1] + 8) = v191;
LABEL_78:
          sub_1E1308058(v204, &qword_1ECEB55B8);
          v210 = 0;
          v208 = 0u;
          v209 = 0u;
LABEL_79:
          sub_1E1308058(&v208, &qword_1ECEB55B0);
          v214 = 0u;
          v215 = 0u;
          v216 = 0;
          goto LABEL_80;
        }

        sub_1E1308EC0(v199, v198);
        sub_1E1300B24(v198, &v197);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v204, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v198);
        if (*(&v204[1] + 1) == 1)
        {
          goto LABEL_78;
        }

        v205 = v204[0];
        v206 = v204[1];
        v207 = *&v204[2];
        if (*(&v204[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v205, &qword_1ECEB55B0);
        v132 = 0uLL;
        if (v49 != v44)
        {
          goto LABEL_66;
        }
      }

      *(&v206 + 1) = *(&v204[1] + 1);
      result = sub_1E134FD1C(&v205, v204, &qword_1ECEB55B0);
      if (!*(&v204[1] + 1))
      {
        __break(1u);
LABEL_104:
        __break(1u);
        return result;
      }

      sub_1E1308EC0(v204, &v208);
      sub_1E1308058(&v205, &qword_1ECEB55B0);
      if (!*(&v209 + 1))
      {
        goto LABEL_79;
      }

      sub_1E1308EC0(&v208, &v211);
      v135 = *(&v212 + 1);
      v136 = v213;
      v137 = __swift_project_boxed_opaque_existential_1Tm(&v211, *(&v212 + 1));
      v138 = v135;
      v129 = v137;
      if ((PersonalizableModel.needsClientPersonalization.getter(v138, v136) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v211);
LABEL_64:
        v131 = v196;
        v132 = 0uLL;
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v211, &v214);
LABEL_80:
    v211 = v214;
    v212 = v215;
    v213 = v216;
    if (*(&v215 + 1))
    {
      sub_1E1308EC0(&v211, &v208);
      v133 = *(&v209 + 1);
      v134 = v210;
      __swift_project_boxed_opaque_existential_1Tm(&v208, *(&v209 + 1));
      (*(v134 + 16))(&v205, v133, v134);
      LOBYTE(v134) = v205;
      __swift_destroy_boxed_opaque_existential_1(&v208);
      v129 = &v218;
      sub_1E1893F1C(&v214, v134);
      goto LABEL_64;
    }

    v2 = v194;
    *&v194[OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles] = v218;
    v139 = &v2[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
    v140 = v163;
    *v139 = v181;
    *(v139 + 1) = v140;
    v141 = v160;
    *(v139 + 2) = v161;
    *(v139 + 3) = v141;
    v129 = *&v2[OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents];
    if (!(v129 >> 62))
    {
      break;
    }

LABEL_99:
    v47 = sub_1E1AF71CC();
    if (!v47)
    {
      goto LABEL_95;
    }

LABEL_88:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
    if (v47 >= 1)
    {
      *&v191 = v129 & 0xC000000000000001;
      v142 = (v175 + 8);

      v143 = 0;
      v196 = v129;
      do
      {
        if (v191)
        {
          MEMORY[0x1E68FFD80](v143, v129);
        }

        else
        {
        }

        ++v143;
        sub_1E15470BC();
        sub_1E1AF3CDC();
        v144 = v192;
        sub_1E1AF3CEC();

        __swift_destroy_boxed_opaque_existential_1(&v214);
        (*v142)(v144, v193);
        v129 = v196;
      }

      while (v47 != v143);

      v2 = v194;
      goto LABEL_95;
    }

    __break(1u);
  }

  v47 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    goto LABEL_88;
  }

LABEL_95:

  sub_1E1308058(v185, &unk_1ECEB4B60);
  sub_1E1308058(v190, &unk_1ECEB1770);
  sub_1E1308058(v184, &unk_1ECEBB780);
  sub_1E1308058(v189, &unk_1ECEB4B60);
  sub_1E1308058(v217, &unk_1ECEB5670);
  sub_1E1308058(v188, &unk_1ECEBB780);
  (*(v187 + 8))(v186, v183);
  return v2;
}

uint64_t sub_1E1890084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AEFE6C();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1E189EE98(&qword_1EE1FADC0, MEMORY[0x1E6969530]);
        v20 = sub_1E1AF5D7C();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1E1890334(uint64_t a1)
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
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

_BYTE *sub_1E1890378()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  if (v1[OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden])
  {
    goto LABEL_18;
  }

  sub_1E134FD1C(&v1[OBJC_IVAR____TtC11AppStoreKit5Shelf_url], v8, &unk_1ECEB4B60);
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E1308058(v8, &unk_1ECEB4B60);
  }

  else
  {
    v11 = sub_1E1AEFBDC();
    v13 = v12;
    (*(v10 + 8))(v8, v9);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      goto LABEL_18;
    }

    if (v1[OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy])
    {
      v15 = 0x80000001E1B57970;
    }

    else
    {
      v15 = 0xEA00000000006461;
    }

    if (v1[OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy] == 1 && 0x80000001E1B57970 == v15)
    {
    }

    else
    {
      v17 = sub_1E1AF74AC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (!*(*(v1 + 3) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1E1B02CC0;
      v20 = type metadata accessor for PrefetchMarkerItem();
      v21 = swift_allocObject();
      sub_1E1AEFE9C();
      v22 = sub_1E1AEFE7C();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25[0] = v22;
      v25[1] = v24;
      sub_1E1AF6F6C();
      *(v19 + 56) = v20;
      *(v19 + 64) = sub_1E189EE98(&qword_1ECEBA868, type metadata accessor for PrefetchMarkerItem);
      *(v19 + 32) = v21;
      LOBYTE(v25[0]) = 96;
      v1 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v19, v25, 1, 2);

      return v1;
    }
  }

LABEL_18:

  return v1;
}

id Shelf.withId(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v94 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v90 - v5;
  v6 = sub_1E1AEFEAC();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v90 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v90 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v90 - v18;
  sub_1E134E724(a1, v159);
  v122 = *(v2 + 16);
  v109 = *(v2 + 17);
  v20 = v2[3];
  v120 = v2[5];
  v125 = v19;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v19, &unk_1ECEB4B60);
  v118 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched);
  v117 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy);
  v96 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  v137 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
  v21 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8);
  v110 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v119 = v21;
  v114 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden);
  v104 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
  v103 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior);
  v102 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized);
  v22 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8);
  v95 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  v130 = v22;
  v106 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
  v108 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel);
  v23 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  v24 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v26 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v25 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  v128 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v129 = v25;
  v131 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
  v101 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
  v27 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
  v111 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v112 = v27;
  v28 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
  v113 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
  v30 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
  v29 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
  v115 = v28;
  v116 = v30;
  *&v132 = v29;
  v136 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
  v124 = v13;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v13, &unk_1ECEBB780);
  v126 = v10;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, v10, &unk_1ECEB1770);
  v123 = v17;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v17, &unk_1ECEB4B60);
  v127 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics);
  v31 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 8);
  v100 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 16);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 24);
  v98 = v32;
  v135 = v4;
  v34 = swift_allocObject();
  sub_1E134FD1C(v159, &v153, &unk_1ECEB5670);
  v99 = v31;
  v97 = v33;
  v107 = v23;
  v105 = v24;
  v121 = v26;
  if (*(&v154 + 1))
  {
    v156 = v153;
    v157 = v154;
    v158 = v155;

    sub_1E15470AC(v137);
    sub_1E151F120(v128, v24, v26, v129, v131);
  }

  else
  {

    sub_1E15470AC(v137);
    sub_1E151F120(v128, v24, v26, v129, v131);

    v35 = v91;
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v38 = v37;
    (*(v92 + 8))(v35, v93);
    *&v149 = v36;
    *(&v149 + 1) = v38;
    sub_1E1AF6F6C();
    sub_1E1308058(&v153, &unk_1ECEB5670);
  }

  v39 = v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v40 = v157;
  *v39 = v156;
  *(v39 + 16) = v40;
  *(v39 + 32) = v158;
  sub_1E134FD1C(v126, v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  v41 = v122;
  *(v34 + 16) = v122;
  *(v34 + 17) = v109;
  *(v34 + 18) = 1;
  *(v34 + 24) = v20;
  LOBYTE(v156) = v41;
  swift_bridgeObjectRetain_n();
  v42 = sub_1E1956360(v20, &v156);

  *(v34 + 32) = v42;
  sub_1E134FD1C(v125, v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v118;
  v43 = (v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v44 = v111;
  v46 = v119;
  v45 = v120;
  *v43 = v110;
  v43[1] = v46;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v117;
  *(v34 + 40) = v45;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v114;
  v47 = (v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v48 = v112;
  v49 = v113;
  *v47 = v44;
  v47[1] = v48;
  v51 = v115;
  v50 = v116;
  v47[2] = v49;
  v47[3] = v51;
  v52 = v132;
  v47[4] = v50;
  v47[5] = v52;
  v53 = v137;
  v47[6] = v136;
  if (v53 < 2)
  {

    sub_1E189EE00(v44, v48, v49, v51, v50, v132, v136);
    v54 = v121;
    v55 = v130;
LABEL_8:
    v61 = (v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v62 = v96;
    *v61 = v95;
    v61[1] = v55;
    *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v62;
    *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v53;

    goto LABEL_10;
  }

  v56 = objc_opt_self();

  sub_1E189EE00(v44, v48, v49, v51, v50, v132, v136);
  result = [v56 defaultWorkspace];
  v54 = v121;
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v58 = result;
  v59 = sub_1E1AF5DBC();
  v60 = [v58 applicationIsInstalled_];

  v53 = v137;
  v55 = v130;
  if (v60)
  {
    goto LABEL_8;
  }

  sub_1E1547120(v137);

  v63 = (v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v63 = 0;
  v63[1] = 0;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_10:
  v65 = v106;
  v64 = v107;
  sub_1E134FD1C(v124, v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v123, v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = v127;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v101;
  v66 = v103;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v104;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v66;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v102;
  v67 = v105;
  if (v65)
  {
  }

  else
  {
    LOBYTE(v156) = v122;

    v65 = sub_1E1956580();
  }

  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v65;
  v68 = v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v69 = v129;
  *v68 = v128;
  *(v68 + 8) = v67;
  *(v68 + 16) = v54;
  *(v68 + 24) = v69;
  *(v68 + 32) = v131;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v108;
  *(v34 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v64;
  v136 = v34;
  v70 = *(v34 + 24);
  v71 = sub_1E13C50E8();

  v72 = 0;
  v152 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v71);
  v73 = (v70 + 32);
  v74 = 0uLL;
  v132 = xmmword_1E1B16440;
  v137 = (v70 + 32);
  while (2)
  {
    v75 = *(v70 + 16);
    if (v72 == v75)
    {
LABEL_17:
      v144 = 0;
      v72 = v75;
      v142 = v74;
      v143 = v74;
      goto LABEL_21;
    }

    while (1)
    {
      if ((v72 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v85 = sub_1E1AF71CC();
        if (!v85)
        {
          goto LABEL_46;
        }

LABEL_39:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
        if (v85 >= 1)
        {
          v137 = (v71 & 0xC000000000000001);
          v86 = (v94 + 8);

          v87 = 0;
          v88 = v71;
          do
          {
            if (v137)
            {
              MEMORY[0x1E68FFD80](v87, v71);
            }

            else
            {
            }

            ++v87;
            sub_1E15470BC();
            sub_1E1AF3CDC();
            v89 = v133;
            sub_1E1AF3CEC();

            __swift_destroy_boxed_opaque_existential_1(&v156);
            (*v86)(v89, v134);
            v71 = v88;
          }

          while (v85 != v87);

          v72 = v136;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (v72 >= *(v70 + 16))
      {
        goto LABEL_48;
      }

      sub_1E1300B24(v73 + 40 * v72++, &v142);
LABEL_21:
      v140[0] = v142;
      v140[1] = v143;
      v141 = v144;
      if (!*(&v143 + 1))
      {
        memset(v145, 0, 24);
        *(&v145[1] + 8) = v132;
LABEL_29:
        sub_1E1308058(v145, &qword_1ECEB55B8);
        v151 = 0;
        v149 = 0u;
        v150 = 0u;
        goto LABEL_30;
      }

      sub_1E1308EC0(v140, v139);
      sub_1E1300B24(v139, &v138);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v145, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v139);
      if (*(&v145[1] + 1) == 1)
      {
        goto LABEL_29;
      }

      v146 = v145[0];
      v147 = v145[1];
      v148 = *&v145[2];
      if (*(&v145[1] + 1))
      {
        break;
      }

      sub_1E1308058(&v146, &qword_1ECEB55B0);
      v74 = 0uLL;
      if (v72 == v75)
      {
        goto LABEL_17;
      }
    }

    *(&v147 + 1) = *(&v145[1] + 1);
    result = sub_1E134FD1C(&v146, v145, &qword_1ECEB55B0);
    if (!*(&v145[1] + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_1E1308EC0(v145, &v149);
    sub_1E1308058(&v146, &qword_1ECEB55B0);
    if (!*(&v150 + 1))
    {
LABEL_30:
      sub_1E1308058(&v149, &qword_1ECEB55B0);
      v156 = 0u;
      v157 = 0u;
      v158 = 0;
      goto LABEL_31;
    }

    sub_1E1308EC0(&v149, &v153);
    v78 = *(&v154 + 1);
    v79 = v155;
    v80 = __swift_project_boxed_opaque_existential_1Tm(&v153, *(&v154 + 1));
    v81 = v78;
    v71 = v80;
    if ((PersonalizableModel.needsClientPersonalization.getter(v81, v79) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v153);
LABEL_15:
      v73 = v137;
      v74 = 0uLL;
      continue;
    }

    break;
  }

  sub_1E1308EC0(&v153, &v156);
LABEL_31:
  v153 = v156;
  v154 = v157;
  v155 = v158;
  if (*(&v157 + 1))
  {
    sub_1E1308EC0(&v153, &v149);
    v76 = *(&v150 + 1);
    v77 = v151;
    __swift_project_boxed_opaque_existential_1Tm(&v149, *(&v150 + 1));
    (*(v77 + 16))(&v146, v76, v77);
    LOBYTE(v77) = v146;
    __swift_destroy_boxed_opaque_existential_1(&v149);
    v71 = &v152;
    sub_1E1893F1C(&v156, v77);
    goto LABEL_15;
  }

  v72 = v136;
  *(v136 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v152;
  v82 = (v72 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v83 = v99;
  *v82 = v100;
  v82[1] = v83;
  v84 = v97;
  v82[2] = v98;
  v82[3] = v84;
  v71 = *(v72 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v71 >> 62)
  {
    goto LABEL_49;
  }

  v85 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v85)
  {
    goto LABEL_39;
  }

LABEL_46:
  sub_1E1308058(v123, &unk_1ECEB4B60);
  sub_1E1308058(v126, &unk_1ECEB1770);
  sub_1E1308058(v124, &unk_1ECEBB780);
  sub_1E1308058(v125, &unk_1ECEB4B60);
  sub_1E1308058(v159, &unk_1ECEB5670);
  return v72;
}

char *Shelf.replacingContent(with:)(char *a1)
{
  v2 = v1;
  v164 = *v1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v150 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v162 = &v116 - v4;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v160 = &v116 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v158 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v157 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v116 - v15;
  v16 = v1 + 2;
  v187[0] = *(v1 + 16);
  v17 = Shelf.ContentType.rawValue.getter();
  v148 = v6;
  if (v17 == 0x6C6F686563616C70 && v18 == 0xEB00000000726564)
  {
  }

  else
  {
    v19 = sub_1E1AF74AC();

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (*(v1 + 17) != 100)
  {
    v187[0] = *(v1 + 17);
    LOBYTE(v184) = a1[16];
    v20 = Shelf.ContentType.isCompatible(with:)(&v184);
    goto LABEL_8;
  }

LABEL_6:
  v20 = 0;
LABEL_8:
  v187[0] = *v16;
  v21 = a1 + 16;
  LOBYTE(v184) = a1[16];
  v22 = Shelf.ContentType.isCompatible(with:)(&v184);
  if ((v20 & 1) == 0 && (v22 & 1) == 0)
  {
    v23 = sub_1E1AF46EC();
    sub_1E189EE98(&qword_1ECEBA858, MEMORY[0x1E69AB200]);
    swift_allocError();
    v24 = *v16;
    *(v25 + 24) = &type metadata for Shelf.ContentType;
    *v25 = v24;
    v26 = *v21;
    *(v25 + 56) = &type metadata for Shelf.ContentType;
    *(v25 + 32) = v26;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69AB1F8], v23);
    swift_willThrow();
    return a1;
  }

  v117 = v5;
  v187[0] = *v16;
  if (Shelf.ContentType.rawValue.getter() == 0x6863746566657270 && v27 == 0xEE0072656B72614DLL)
  {
    goto LABEL_13;
  }

  v28 = sub_1E1AF74AC();

  if ((v28 & 1) == 0)
  {
    v187[0] = *v16;
    if (Shelf.ContentType.rawValue.getter() == 0x6C6F686563616C70 && v29 == 0xEB00000000726564)
    {
LABEL_13:

      goto LABEL_19;
    }

    v30 = sub_1E1AF74AC();

    if ((v30 & 1) == 0)
    {
      v21 = (v1 + 2);
    }
  }

LABEL_19:
  v146 = *v21;
  sub_1E134E724(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v187);
  v31 = *(v1 + 17);
  v32 = *(a1 + 3);
  v152 = sub_1E17D844C(*(a1 + 5), v2[5], 0);
  sub_1E134FD1C(&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_url], v159, &unk_1ECEB4B60);
  v33 = a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched];
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy);
  v36 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8);
  v151 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8];
  v144 = v32;
  v145 = v35;
  v142 = v34;
  v143 = v33;
  v141 = v36;
  v140 = v31;
  if (v151)
  {
    v118 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle];
    v128 = v151;
  }

  else
  {
    v37 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8);
    v118 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v128 = v37;
  }

  v153 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction];
  if (!v153)
  {
    v153 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  }

  v38 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle];
  v39 = v38;
  if (v38 == 1)
  {
    v39 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
    sub_1E15470AC(v39);
  }

  v149 = v39;
  v134 = a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden];
  v127 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
  v126 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior);
  v125 = a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized];
  v129 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
  v40 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v155 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v133 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel);
  v41 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  v154 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v42 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents];
  v156 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
  v124 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
  v43 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
  v135 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v136 = v43;
  v44 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
  v137 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
  v138 = v44;
  v45 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
  *&v161 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
  v166 = v45;
  v139 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
  sub_1E134FD1C(&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate], v158, &unk_1ECEBB780);
  sub_1E134FD1C(&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics], v160, &unk_1ECEB1770);
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v157, &unk_1ECEB4B60);
  v46 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics];
  v47 = &a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
  v48 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
  v49 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 8];
  v122 = v48;
  v50 = *(v47 + 3);
  v120 = *(v47 + 2);
  v165 = swift_allocObject();
  sub_1E134FD1C(v187, &v181, &unk_1ECEB5670);
  v121 = v49;
  v119 = v50;
  v131 = v42;
  v132 = v40;
  v130 = v41;
  v123 = v46;
  if (*(&v182 + 1))
  {
    v184 = v181;
    v185 = v182;
    v186 = v183;

    sub_1E151F120(v40, v155, v154, v41, v156);

    sub_1E15470AC(v38);
  }

  else
  {

    sub_1E151F120(v40, v155, v154, v41, v156);

    sub_1E15470AC(v38);
    v51 = v147;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v54 = v53;
    (*(v148 + 8))(v51, v117);
    *&v178 = v52;
    *(&v178 + 1) = v54;
    sub_1E1AF6F6C();
    sub_1E1308058(&v181, &unk_1ECEB5670);
  }

  v55 = v165;
  v56 = v165 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v57 = v185;
  *v56 = v184;
  *(v56 + 16) = v57;
  *(v56 + 32) = v186;
  sub_1E134FD1C(v160, v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  v58 = v146;
  *(v55 + 16) = v146;
  *(v55 + 17) = v140;
  *(v55 + 18) = 1;
  v59 = v144;
  *(v55 + 24) = v144;
  LOBYTE(v184) = v58;
  swift_bridgeObjectRetain_n();
  v60 = sub_1E1956360(v59, &v184);

  *(v55 + 32) = v60;
  sub_1E134FD1C(v159, v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v143;
  v61 = (v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v62 = v145;
  *v61 = v141;
  v61[1] = v62;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v142;
  *(v55 + 40) = v152;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v134;
  v63 = (v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v64 = v135;
  v65 = v136;
  *v63 = v135;
  v63[1] = v65;
  v67 = v137;
  v66 = v138;
  v63[2] = v137;
  v63[3] = v66;
  v68 = v166;
  v63[4] = v161;
  v63[5] = v68;
  v69 = v139;
  v63[6] = v139;
  v70 = v149;
  if (v149 >= 2)
  {
    v151 = objc_opt_self();

    sub_1E189EE00(v64, v65, v67, v66, v161, v166, v69);
    result = [v151 defaultWorkspace];
    if (!result)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v74 = result;
    v75 = sub_1E1AF5DBC();
    v76 = [v74 applicationIsInstalled_];

    v71 = v131;
    v70 = v149;
    v72 = v123;
    if ((v76 & 1) == 0)
    {
      sub_1E1547120(v149);

      v79 = (v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
      *v79 = 0;
      v79[1] = 0;
      *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
      *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
      goto LABEL_35;
    }
  }

  else
  {

    sub_1E189EE00(v64, v65, v67, v66, v161, v166, v69);
    v71 = v131;
    v72 = v123;
  }

  v77 = (v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  v78 = v128;
  *v77 = v118;
  v77[1] = v78;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v153;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v70;

LABEL_35:
  v80 = v132;
  v81 = v130;
  sub_1E134FD1C(v158, v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v157, v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = v72;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v124;
  v82 = v126;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v127;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v82;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v125;
  v83 = v156;
  v84 = v129;
  if (v129)
  {
  }

  else
  {
    LOBYTE(v184) = v146;

    v84 = sub_1E1956580();
  }

  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v84;
  v85 = v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v86 = v154;
  v87 = v155;
  *v85 = v80;
  *(v85 + 8) = v87;
  *(v85 + 16) = v86;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  v88 = v133;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v133;
  *(v55 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v71;
  v89 = *(v55 + 24);
  v90 = sub_1E13C50E8();

  v91 = 0;
  v188 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v90);
  v92 = v89 + 32;
  v93 = 0uLL;
  v94 = &qword_1ECEB55B0;
  a1 = &unk_1E1B219E0;
  v95 = &qword_1ECEB24B0;
  v161 = xmmword_1E1B16440;
  v166 = v89;
  while (2)
  {
    while (2)
    {
      v96 = *(v89 + 16);
      if (v91 != v96)
      {
LABEL_40:
        if ((v91 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v91 < *(v89 + 16))
        {
          sub_1E1300B24(v92 + 40 * v91++, &v171);
          goto LABEL_44;
        }

        __break(1u);
LABEL_74:
        v112 = sub_1E1AF71CC();
        if (!v112)
        {
          goto LABEL_70;
        }

LABEL_63:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
        if (v112 >= 1)
        {
          *&v161 = v88 & 0xC000000000000001;
          v113 = (v150 + 8);

          v114 = 0;
          v166 = v88;
          do
          {
            if (v161)
            {
              MEMORY[0x1E68FFD80](v114, v88);
            }

            else
            {
            }

            ++v114;
            sub_1E15470BC();
            sub_1E1AF3CDC();
            v115 = v162;
            sub_1E1AF3CEC();

            __swift_destroy_boxed_opaque_existential_1(&v184);
            (*v113)(v115, v163);
            v88 = v166;
          }

          while (v112 != v114);

          a1 = v165;
          goto LABEL_70;
        }

        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      while (1)
      {
        v173 = 0;
        v91 = v96;
        v171 = v93;
        v172 = v93;
LABEL_44:
        v169[0] = v171;
        v169[1] = v172;
        v170 = v173;
        if (!*(&v172 + 1))
        {
          memset(v174, 0, 24);
          *(&v174[1] + 8) = v161;
LABEL_52:
          sub_1E1308058(v174, &qword_1ECEB55B8);
          v180 = 0;
          v178 = 0u;
          v179 = 0u;
LABEL_53:
          sub_1E1308058(&v178, v94);
          v184 = 0u;
          v185 = 0u;
          v186 = 0;
          goto LABEL_54;
        }

        sub_1E1308EC0(v169, v168);
        sub_1E1300B24(v168, &v167);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v174, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v168);
        if (*(&v174[1] + 1) == 1)
        {
          goto LABEL_52;
        }

        v175 = v174[0];
        v176 = v174[1];
        v177 = *&v174[2];
        if (*(&v174[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v175, v94);
        v93 = 0uLL;
        if (v91 != v96)
        {
          goto LABEL_40;
        }
      }

      *(&v176 + 1) = *(&v174[1] + 1);
      result = sub_1E134FD1C(&v175, v174, v94);
      if (!*(&v174[1] + 1))
      {
        goto LABEL_77;
      }

      sub_1E1308EC0(v174, &v178);
      sub_1E1308058(&v175, v94);
      if (!*(&v179 + 1))
      {
        goto LABEL_53;
      }

      sub_1E1308EC0(&v178, &v181);
      v105 = *(&v182 + 1);
      v106 = v183;
      v107 = __swift_project_boxed_opaque_existential_1Tm(&v181, *(&v182 + 1));
      v108 = v105;
      v88 = v107;
      if ((PersonalizableModel.needsClientPersonalization.getter(v108, v106) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v181);
        v93 = 0uLL;
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v181, &v184);
LABEL_54:
    v181 = v184;
    v182 = v185;
    v183 = v186;
    if (*(&v185 + 1))
    {
      sub_1E1308EC0(&v181, &v178);
      v97 = *(&v179 + 1);
      v98 = a1;
      v99 = v94;
      v100 = v95;
      v101 = v92;
      v102 = v180;
      __swift_project_boxed_opaque_existential_1Tm(&v178, *(&v179 + 1));
      v103 = *(v102 + 16);
      v104 = v102;
      v92 = v101;
      v95 = v100;
      v94 = v99;
      a1 = v98;
      v89 = v166;
      v103(&v175, v97, v104);
      LOBYTE(v97) = v175;
      __swift_destroy_boxed_opaque_existential_1(&v178);
      v88 = &v188;
      sub_1E1893F1C(&v184, v97);
      v93 = 0uLL;
      continue;
    }

    break;
  }

  a1 = v165;
  *(v165 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v188;
  v109 = &a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata];
  v110 = v121;
  *v109 = v122;
  *(v109 + 1) = v110;
  v111 = v119;
  *(v109 + 2) = v120;
  *(v109 + 3) = v111;
  v88 = *&a1[OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents];
  if (v88 >> 62)
  {
    goto LABEL_74;
  }

  v112 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v112)
  {
    goto LABEL_63;
  }

LABEL_70:

  sub_1E1308058(v157, &unk_1ECEB4B60);
  sub_1E1308058(v160, &unk_1ECEB1770);
  sub_1E1308058(v158, &unk_1ECEBB780);
  sub_1E1308058(v159, &unk_1ECEB4B60);
  sub_1E1308058(v187, &unk_1ECEB5670);
  return a1;
}

id Shelf.withURL(_:)(void *a1)
{
  v2 = v1;
  v139 = a1;
  v3 = *v1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v96 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v92 - v4;
  v5 = sub_1E1AEFEAC();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v92 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v92 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v92 - v17;
  sub_1E134E724(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v161);
  v125 = *(v1 + 16);
  v121 = *(v1 + 17);
  v19 = v1[3];
  v124 = v1[5];
  v20 = sub_1E1AEFCCC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v18, v139, v20);
  v22 = *(v21 + 56);
  v128 = v18;
  v22(v18, 0, 1, v20);
  v122 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched);
  v120 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy);
  v98 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  v139 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle);
  v23 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup + 8);
  v113 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v123 = v23;
  v117 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden);
  v108 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);
  v107 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior);
  v106 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized);
  v24 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle + 8);
  v97 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  v110 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
  v112 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel);
  v25 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  v26 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
  v28 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
  v27 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
  v130 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
  v131 = v28;
  v132 = v27;
  v133 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
  v105 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints);
  v29 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 8);
  v114 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v115 = v29;
  v30 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 24);
  v116 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 16);
  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 32);
  v31 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 40);
  v118 = v30;
  v119 = v32;
  *&v134 = v31;
  v138 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata + 48);
  v127 = v12;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v12, &unk_1ECEBB780);
  v129 = v9;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, v9, &unk_1ECEB1770);
  v126 = v15;
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, v15, &unk_1ECEB4B60);
  v104 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 8);
  v102 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 24);
  v100 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata + 16);
  v137 = v3;
  v35 = swift_allocObject();
  sub_1E134FD1C(v161, &v155, &unk_1ECEB5670);
  v101 = v33;
  v99 = v34;
  v111 = v25;
  v109 = v26;
  v103 = v24;
  if (*(&v156 + 1))
  {
    v158 = v155;
    v159 = v156;
    v160 = v157;

    sub_1E15470AC(v139);
    sub_1E151F120(v26, v130, v131, v132, v133);
  }

  else
  {

    sub_1E15470AC(v139);
    sub_1E151F120(v26, v130, v131, v132, v133);

    v36 = v93;
    sub_1E1AEFE9C();
    v37 = sub_1E1AEFE7C();
    v39 = v38;
    (*(v94 + 8))(v36, v95);
    *&v151 = v37;
    *(&v151 + 1) = v39;
    sub_1E1AF6F6C();
    sub_1E1308058(&v155, &unk_1ECEB5670);
  }

  v40 = v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v41 = v159;
  *v40 = v158;
  *(v40 + 16) = v41;
  *(v40 + 32) = v160;
  sub_1E134FD1C(v129, v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  v42 = v125;
  *(v35 + 16) = v125;
  *(v35 + 17) = v121;
  *(v35 + 18) = 1;
  *(v35 + 24) = v19;
  LOBYTE(v158) = v42;
  swift_bridgeObjectRetain_n();
  v43 = sub_1E1956360(v19, &v158);

  *(v35 + 32) = v43;
  sub_1E134FD1C(v128, v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = v122;
  v44 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  v45 = v114;
  v47 = v123;
  v46 = v124;
  *v44 = v113;
  v44[1] = v47;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = v120;
  *(v35 + 40) = v46;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = v117;
  v48 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata);
  v50 = v115;
  v49 = v116;
  *v48 = v45;
  v48[1] = v50;
  v52 = v118;
  v51 = v119;
  v48[2] = v49;
  v48[3] = v52;
  v53 = v134;
  v48[4] = v51;
  v48[5] = v53;
  v54 = v139;
  v48[6] = v138;
  if (v54 < 2)
  {

    sub_1E189EE00(v45, v50, v49, v52, v51, v134, v138);
LABEL_8:
    v60 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    v61 = v98;
    v62 = v103;
    *v60 = v97;
    v60[1] = v62;
    *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = v61;
    *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = v54;

    goto LABEL_10;
  }

  v55 = objc_opt_self();

  sub_1E189EE00(v45, v50, v49, v52, v51, v134, v138);
  result = [v55 defaultWorkspace];
  if (!result)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v57 = result;
  v58 = sub_1E1AF5DBC();
  v59 = [v57 applicationIsInstalled_];

  v54 = v139;
  if (v59)
  {
    goto LABEL_8;
  }

  sub_1E1547120(v139);

  v63 = (v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v63 = 0;
  v63[1] = 0;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
LABEL_10:
  v64 = v111;
  sub_1E134FD1C(v127, v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v126, v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  v65 = v105;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = v104;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = v65;
  LOBYTE(v65) = v107;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = v108;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = v65;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = v106;
  v67 = v109;
  v66 = v110;
  if (v110)
  {
  }

  else
  {
    LOBYTE(v158) = v125;

    v66 = sub_1E1956580();
  }

  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = v66;
  v68 = v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  v69 = v130;
  v70 = v131;
  *v68 = v67;
  *(v68 + 8) = v69;
  v71 = v132;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v133;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v112;
  *(v35 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v64;
  v138 = v35;
  v72 = *(v35 + 24);
  v73 = sub_1E13C50E8();

  v74 = 0;
  v154 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v73);
  v75 = (v72 + 32);
  v76 = 0uLL;
  v134 = xmmword_1E1B16440;
  v139 = (v72 + 32);
  while (2)
  {
    v77 = *(v72 + 16);
    if (v74 == v77)
    {
LABEL_17:
      v146 = 0;
      v74 = v77;
      v144 = v76;
      v145 = v76;
      goto LABEL_21;
    }

    while (1)
    {
      if ((v74 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        v87 = sub_1E1AF71CC();
        if (!v87)
        {
          goto LABEL_46;
        }

LABEL_39:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
        if (v87 >= 1)
        {
          v139 = (v73 & 0xC000000000000001);
          v88 = (v96 + 8);

          v89 = 0;
          v90 = v73;
          do
          {
            if (v139)
            {
              MEMORY[0x1E68FFD80](v89, v73);
            }

            else
            {
            }

            ++v89;
            sub_1E15470BC();
            sub_1E1AF3CDC();
            v91 = v135;
            sub_1E1AF3CEC();

            __swift_destroy_boxed_opaque_existential_1(&v158);
            (*v88)(v91, v136);
            v73 = v90;
          }

          while (v87 != v89);

          v74 = v138;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_52;
      }

      if (v74 >= *(v72 + 16))
      {
        goto LABEL_48;
      }

      sub_1E1300B24(v75 + 40 * v74++, &v144);
LABEL_21:
      v142[0] = v144;
      v142[1] = v145;
      v143 = v146;
      if (!*(&v145 + 1))
      {
        memset(v147, 0, 24);
        *(&v147[1] + 8) = v134;
LABEL_29:
        sub_1E1308058(v147, &qword_1ECEB55B8);
        v153 = 0;
        v151 = 0u;
        v152 = 0u;
        goto LABEL_30;
      }

      sub_1E1308EC0(v142, v141);
      sub_1E1300B24(v141, &v140);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v147, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v141);
      if (*(&v147[1] + 1) == 1)
      {
        goto LABEL_29;
      }

      v148 = v147[0];
      v149 = v147[1];
      v150 = *&v147[2];
      if (*(&v147[1] + 1))
      {
        break;
      }

      sub_1E1308058(&v148, &qword_1ECEB55B0);
      v76 = 0uLL;
      if (v74 == v77)
      {
        goto LABEL_17;
      }
    }

    *(&v149 + 1) = *(&v147[1] + 1);
    result = sub_1E134FD1C(&v148, v147, &qword_1ECEB55B0);
    if (!*(&v147[1] + 1))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_1E1308EC0(v147, &v151);
    sub_1E1308058(&v148, &qword_1ECEB55B0);
    if (!*(&v152 + 1))
    {
LABEL_30:
      sub_1E1308058(&v151, &qword_1ECEB55B0);
      v158 = 0u;
      v159 = 0u;
      v160 = 0;
      goto LABEL_31;
    }

    sub_1E1308EC0(&v151, &v155);
    v80 = *(&v156 + 1);
    v81 = v157;
    v82 = __swift_project_boxed_opaque_existential_1Tm(&v155, *(&v156 + 1));
    v83 = v80;
    v73 = v82;
    if ((PersonalizableModel.needsClientPersonalization.getter(v83, v81) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v155);
LABEL_15:
      v75 = v139;
      v76 = 0uLL;
      continue;
    }

    break;
  }

  sub_1E1308EC0(&v155, &v158);
LABEL_31:
  v155 = v158;
  v156 = v159;
  v157 = v160;
  if (*(&v159 + 1))
  {
    sub_1E1308EC0(&v155, &v151);
    v78 = *(&v152 + 1);
    v79 = v153;
    __swift_project_boxed_opaque_existential_1Tm(&v151, *(&v152 + 1));
    (*(v79 + 16))(&v148, v78, v79);
    LOBYTE(v79) = v148;
    __swift_destroy_boxed_opaque_existential_1(&v151);
    v73 = &v154;
    sub_1E1893F1C(&v158, v79);
    goto LABEL_15;
  }

  v74 = v138;
  *(v138 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v154;
  v84 = (v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  v85 = v101;
  *v84 = v102;
  v84[1] = v85;
  v86 = v99;
  v84[2] = v100;
  v84[3] = v86;
  v73 = *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v73 >> 62)
  {
    goto LABEL_49;
  }

  v87 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
    goto LABEL_39;
  }

LABEL_46:
  sub_1E1308058(v126, &unk_1ECEB4B60);
  sub_1E1308058(v129, &unk_1ECEB1770);
  sub_1E1308058(v127, &unk_1ECEBB780);
  sub_1E1308058(v128, &unk_1ECEB4B60);
  sub_1E1308058(v161, &unk_1ECEB5670);
  return v74;
}

uint64_t sub_1E1893960(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v47[0] = *a2;
  v47[1] = v5;
  v6 = *(a2 + 3);
  v47[2] = *(a2 + 2);
  v47[3] = v6;
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  v7 = sub_1E1AF767C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v45 = v4 + 56;
  v36 = a2;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = a2[1];
    v44 = a2[2];
    v42 = *a2;
    v43 = a2[3];
    v38 = a2[6];
    v39 = a2[4];
    v40 = a2[7];
    v41 = a2[5];
    v34 = v4;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + (v9 << 6));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      if (v14)
      {
        if (!v11)
        {
          goto LABEL_4;
        }

        v21 = *v13 == v42 && v14 == v11;
        if (!v21 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      v22 = v15 == v44 && v16 == v43;
      if (!v22 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (!v41)
        {
          goto LABEL_4;
        }

        v23 = v17 == v39 && v18 == v41;
        if (!v23 && (sub_1E1AF74AC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v41)
      {
        goto LABEL_4;
      }

      if (v20)
      {
        if (v40 && (v19 == v38 && v20 == v40 || (sub_1E1AF74AC() & 1) != 0))
        {
LABEL_33:
          sub_1E13C5094(v36);
          v24 = (*(v34 + 48) + (v9 << 6));
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[3];
          v46[2] = v24[2];
          v46[3] = v27;
          v46[0] = v25;
          v46[1] = v26;
          v28 = v24[1];
          *a1 = *v24;
          a1[1] = v28;
          v29 = v24[3];
          a1[2] = v24[2];
          a1[3] = v29;
          sub_1E13C5038(v46, v47);
          return 0;
        }
      }

      else if (!v40)
      {
        goto LABEL_33;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v45 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v47[0] = *v35;
  sub_1E13C5038(v36, v46);
  sub_1E1898B74(v36, v9, isUniquelyReferenced_nonNull_native);
  *v35 = *&v47[0];
  v32 = v36[1];
  *a1 = *v36;
  a1[1] = v32;
  v33 = v36[3];
  a1[2] = v36[2];
  a1[3] = v33;
  return 1;
}

uint64_t sub_1E1893C10(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1E1AF762C();
  v18 = a2;
  if (a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (a2)
  {
    v6 = 0x80000001E1B57100;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  sub_1E1AF5F0C();

  v7 = sub_1E1AF767C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0xD000000000000016 : 0x656461637261;
      v12 = *(*(v4 + 48) + v9) ? 0x80000001E1B57100 : 0xE600000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1E1AF74AC();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_1E1898E18(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1E1893DD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E1AF6F2C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1E134E724(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1E68FFC60](v16, a2);
      sub_1E134B88C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E134B88C(a2);
    sub_1E134E724(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E134E724(a2, v16);
    v15 = *v3;
    sub_1E189902C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1E1893F1C(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1E1AF762C();
  v18 = a2;
  if (a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_1E1AF5F0C();

  v7 = sub_1E1AF767C();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 7304045 : 1701736302;
      v12 = *(*(v4 + 48) + v9) ? 0xE300000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1E1AF74AC();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_1E18991A4(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1E18940C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1E1AF767C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1E141CF00(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1E68FFC60](v16, a2);
      sub_1E138867C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E138867C(a2);
    sub_1E141CF00(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E141CF00(a2, v16);
    v15 = *v3;
    sub_1E18993A4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1E1894228(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E1AF762C();
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();

  v6 = sub_1E1AF767C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = Shelf.ContentType.rawValue.getter();
      v12 = v11;
      if (v10 == Shelf.ContentType.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_1E1AF74AC();

      if (v15)
      {
        goto LABEL_11;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v8);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1E1899530(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E18943C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v8 = sub_1E1AF767C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E1899728(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E1894510(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1E1AF762C();
  sub_1E19DB4A4();
  v5 = sub_1E1AF767C();
  v35 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v34 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v33 = ~v6;
    v8 = 0xEB00000000646569;
    while (1)
    {
      v9 = *(*(v35 + 48) + v7);
      v36 = v7;
      if (v9 <= 3)
      {
        v12 = 0xD000000000000016;
        if (v9 == 2)
        {
          v13 = 0x80000001E1B58330;
        }

        else
        {
          v12 = 0x646E756F72;
          v13 = 0xE500000000000000;
        }

        if (*(*(v35 + 48) + v7))
        {
          v14 = 0x526465646E756F72;
        }

        else
        {
          v14 = 0x6669636570736E75;
        }

        if (*(*(v35 + 48) + v7))
        {
          v15 = 0xEB00000000746365;
        }

        else
        {
          v15 = v8;
        }

        if (*(*(v35 + 48) + v7) <= 1u)
        {
          v11 = v14;
        }

        else
        {
          v11 = v12;
        }

        if (*(*(v35 + 48) + v7) <= 1u)
        {
          v10 = v15;
        }

        else
        {
          v10 = v13;
        }
      }

      else if (*(*(v35 + 48) + v7) <= 5u)
      {
        if (v9 == 4)
        {
          v11 = 0xD000000000000010;
          v10 = 0x80000001E1B58350;
        }

        else
        {
          v10 = 0xE400000000000000;
          v11 = 1819044208;
        }
      }

      else if (v9 == 6)
      {
        v10 = 0xE300000000000000;
        v11 = 7364969;
      }

      else if (v9 == 7)
      {
        v10 = 0xE600000000000000;
        v11 = 0x746365527674;
      }

      else
      {
        v11 = 0x656E726F64616E75;
        v10 = 0xE900000000000064;
      }

      v16 = 0x656E726F64616E75;
      if (a2 == 7)
      {
        v16 = 0x746365527674;
      }

      v17 = 0xE900000000000064;
      if (a2 == 7)
      {
        v17 = 0xE600000000000000;
      }

      if (a2 == 6)
      {
        v16 = 7364969;
        v17 = 0xE300000000000000;
      }

      v18 = 1819044208;
      if (a2 == 4)
      {
        v18 = 0xD000000000000010;
      }

      v19 = 0x80000001E1B58350;
      if (a2 != 4)
      {
        v19 = 0xE400000000000000;
      }

      if (a2 <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = 0xD000000000000016;
      if (a2 == 2)
      {
        v21 = 0x80000001E1B58330;
      }

      else
      {
        v20 = 0x646E756F72;
        v21 = 0xE500000000000000;
      }

      if (a2)
      {
        v22 = 0x526465646E756F72;
      }

      else
      {
        v22 = 0x6669636570736E75;
      }

      if (a2)
      {
        v23 = 0xEB00000000746365;
      }

      else
      {
        v23 = v8;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a2 <= 3u ? v20 : v16;
      v25 = a2 <= 3u ? v21 : v17;
      if (v11 == v24 && v10 == v25)
      {
        break;
      }

      v26 = a2;
      v27 = v8;
      v28 = sub_1E1AF74AC();

      if (v28)
      {
        goto LABEL_64;
      }

      v7 = (v36 + 1) & v33;
      v8 = v27;
      a2 = v26;
      if (((*(v34 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    result = 0;
    LOBYTE(a2) = *(*(v35 + 48) + v36);
  }

  else
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v31;
    sub_1E18998A8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v31 = v37;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E1894874(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a2);
  v6 = sub_1E1AF767C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1E1899C58(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E189496C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v8 = sub_1E1AF767C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E1899DA4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E1894ABC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E1AF51EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E189EE98(&qword_1ECEBA870, MEMORY[0x1E69AB4A0]);
  v33 = a2;
  v11 = sub_1E1AF5D0C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E189EE98(&qword_1ECEBA878, MEMORY[0x1E69AB4A0]);
      v21 = sub_1E1AF5DAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E1899F24(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E1894D9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E1AF523C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E189EE98(&unk_1EE1E3670, MEMORY[0x1E69AB4C0]);
  v33 = a2;
  v11 = sub_1E1AF5D0C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E189EE98(&unk_1EE1D2818, MEMORY[0x1E69AB4C0]);
      v21 = sub_1E1AF5DAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E189A1EC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E189507C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1E1AF762C();
  sub_1E19DC324(v23, a2, a3);
  v7 = sub_1E1AF767C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_74:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *v20;
    sub_1E13BC260(a2, a3);
    sub_1E189A4B4(a2, a3, v9, isUniquelyReferenced_nonNull_native);
    *v20 = v23[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v22 = ~v8;
  while (1)
  {
    v10 = (*(v6 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    if (v12 <= 4)
    {
      break;
    }

    if (v12 > 7)
    {
      switch(v12)
      {
        case 8:
          v14 = 0xE600000000000000;
          v13 = 0x737472616863;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        case 9:
          v13 = 0x6573616863727570;
          v14 = 0xE900000000000064;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        case 10:
          v14 = 0xE900000000000073;
          v13 = 0x64616F6C6E776F64;
          if (a3 <= 4)
          {
            goto LABEL_55;
          }

          break;
        default:
          goto LABEL_54;
      }
    }

    else if (v12 == 5)
    {
      v14 = 0xE600000000000000;
      v13 = 0x656461637261;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else if (v12 == 6)
    {
      v14 = 0xE800000000000000;
      v13 = 0x6465727574616566;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v13 = 0x69726F6765746163;
      v14 = 0xEA00000000007365;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

LABEL_36:
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8:
          v15 = 0xE600000000000000;
          if (v13 == 0x737472616863)
          {
            goto LABEL_71;
          }

          break;
        case 9:
          v15 = 0xE900000000000064;
          if (v13 == 0x6573616863727570)
          {
            goto LABEL_71;
          }

          break;
        case 10:
          v15 = 0xE900000000000073;
          if (v13 == 0x64616F6C6E776F64)
          {
            goto LABEL_71;
          }

          break;
        default:
          goto LABEL_70;
      }
    }

    else if (a3 == 5)
    {
      v15 = 0xE600000000000000;
      if (v13 == 0x656461637261)
      {
        goto LABEL_71;
      }
    }

    else if (a3 == 6)
    {
      v15 = 0xE800000000000000;
      if (v13 == 0x6465727574616566)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v15 = 0xEA00000000007365;
      if (v13 == 0x69726F6765746163)
      {
        goto LABEL_71;
      }
    }

LABEL_72:
    v16 = sub_1E1AF74AC();
    sub_1E13BC260(v11, v12);
    sub_1E13BC260(a2, a3);

    if (v16)
    {
      goto LABEL_76;
    }

    v9 = (v9 + 1) & v22;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 0xE400000000000000;
      v13 = 1936748641;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else if (v12 == 3)
    {
      v14 = 0xE700000000000000;
      v13 = 0x73657461647075;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      v13 = 0x686372616573;
      if (a3 <= 4)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_36;
  }

  if (!v12)
  {
    v14 = 0xE500000000000000;
    v13 = 0x7961646F74;
    if (a3 <= 4)
    {
      goto LABEL_55;
    }

    goto LABEL_36;
  }

  if (v12 == 1)
  {
    v14 = 0xE500000000000000;
    v13 = 0x73656D6167;
    if (a3 <= 4)
    {
      goto LABEL_55;
    }

    goto LABEL_36;
  }

LABEL_54:
  v13 = *v10;
  v14 = v10[1];
  if (a3 > 4)
  {
    goto LABEL_36;
  }

LABEL_55:
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v15 = 0xE400000000000000;
      if (v13 == 1936748641)
      {
        goto LABEL_71;
      }
    }

    else if (a3 == 3)
    {
      v15 = 0xE700000000000000;
      if (v13 == 0x73657461647075)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v13 == 0x686372616573)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_72;
  }

  if (!a3)
  {
    v15 = 0xE500000000000000;
    if (v13 == 0x7961646F74)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (a3 == 1)
  {
    v15 = 0xE500000000000000;
    if (v13 == 0x73656D6167)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

LABEL_70:
  v15 = a3;
  if (v13 != a2)
  {
    goto LABEL_72;
  }

LABEL_71:
  if (v14 != v15)
  {
    goto LABEL_72;
  }

  sub_1E13BC260(v11, v12);
  sub_1E13BC260(a2, a3);

LABEL_76:
  sub_1E14B175C(a2, a3);
  v19 = *(*(v6 + 48) + 16 * v9);
  *a1 = v19;
  sub_1E13BC260(v19, *(&v19 + 1));
  return 0;
}

BOOL sub_1E18955D4()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v2 = sub_1E1AF767C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1E189AA20(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1E1895698(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1E1AF5DFC();
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v7 = sub_1E1AF767C();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1E1AF5DFC();
      v13 = v12;
      if (v11 == sub_1E1AF5DFC() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1E1AF74AC();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1E189AB40(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1E1895860(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E1AF31DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E189EE98(&qword_1EE1E3C90, MEMORY[0x1E698B288]);
  v33 = a2;
  v11 = sub_1E1AF5D0C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E189EE98(&qword_1EE1E3C88, MEMORY[0x1E698B288]);
      v21 = sub_1E1AF5DAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E189AD28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E1895B78(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = sub_1E1AF761C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1E189AFF0(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E1895C78()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4788);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v33 = v1;
    v34 = v2;
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    v35 = result;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v19 = (*(v2 + 48) + ((v16 | (v5 << 6)) << 6));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v37 = v19[6];
      v38 = v19[4];
      v39 = v19[5];
      v40 = v19[7];
      sub_1E1AF762C();
      if (v20)
      {
        sub_1E1AF764C();
        v24 = v20;
        sub_1E1AF5F0C();
      }

      else
      {
        v24 = 0;
        sub_1E1AF764C();
      }

      sub_1E1AF5F0C();
      sub_1E1AF764C();
      if (v39)
      {
        sub_1E1AF5F0C();
      }

      sub_1E1AF764C();
      if (v40)
      {
        sub_1E1AF5F0C();
      }

      result = sub_1E1AF767C();
      v4 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v13 = v21;
        v14 = v40;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v13 = v21;
      v14 = v40;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = (*(v35 + 48) + (v12 << 6));
      v9 = v36;
      *v15 = v13;
      v15[1] = v24;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v38;
      v15[5] = v39;
      v15[6] = v37;
      v15[7] = v14;
      ++*(v35 + 16);
      v2 = v34;
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      bzero(v6, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v33;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1895FD8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8B8);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E189626C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = sub_1E1AF6F2C();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E18964CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8C8);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1896748()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8B0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      sub_1E1AF762C();
      _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_1E1AF767C();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E18969BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8A0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1E1AF762C();
      Shelf.ContentType.rawValue.getter();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1896C2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1896E8C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8C0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1897208()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA888);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1E1AF762C();
      MEMORY[0x1E6900360](v16);
      result = sub_1E1AF767C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1897458()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E18976B8()
{
  v1 = v0;
  v35 = sub_1E1AF51EC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA880);
  result = sub_1E1AF6F8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1E189EE98(&qword_1ECEBA870, MEMORY[0x1E69AB4A0]);
      result = sub_1E1AF5D0C();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1E1897A14()
{
  v1 = v0;
  v35 = sub_1E1AF523C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4790);
  result = sub_1E1AF6F8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1E189EE98(&unk_1EE1E3670, MEMORY[0x1E69AB4C0]);
      result = sub_1E1AF5D0C();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1E1897D70()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA898);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = (*(v2 + 48) + 16 * (v17 | (v5 << 6)));
      v22 = *v20;
      v21 = v20[1];
      sub_1E1AF762C();
      sub_1E13BC260(v22, v21);
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v12) >> 6;
        while (++v14 != v24 || (v23 & 1) == 0)
        {
          v25 = v14 == v24;
          if (v14 == v24)
          {
            v14 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v14);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v4 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v21;
      ++*(v4 + 16);
      v2 = v28;
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero(v6, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E1898158()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA890);
  result = sub_1E1AF6F8C();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1E1898380()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4798);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1E1AF5DFC();
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      v17 = sub_1E1AF767C();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1E18985FC()
{
  v1 = v0;
  v35 = sub_1E1AF31DC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4750);
  result = sub_1E1AF6F8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1E189EE98(&qword_1EE1E3C90, MEMORY[0x1E698B288]);
      result = sub_1E1AF5D0C();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1E1898958(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1E1AF6F8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    v26 = v3;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_1E1AF761C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    if (v9 >= 64)
    {
      bzero((v4 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v3 = v26;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1E1898B74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_41;
  }

  if (a3)
  {
    sub_1E1895C78();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E189B12C();
      goto LABEL_41;
    }

    sub_1E189C210();
  }

  v8 = *v3;
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  result = sub_1E1AF767C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  v40 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = v5[1];
    v39 = v5[2];
    v37 = *v5;
    v38 = v5[3];
    v36 = v5[5];
    v31 = v5[6];
    v32 = v5[4];
    v33 = v5[7];
    v12 = *(v8 + 48);
    do
    {
      v13 = (v12 + (a2 << 6));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[6];
      v20 = v13[7];
      if (v14)
      {
        if (!v11)
        {
          goto LABEL_11;
        }

        result = *v13;
        if (*v13 != v37 || v14 != v11)
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v11)
      {
        goto LABEL_11;
      }

      if (v15 != v39 || v16 != v38)
      {
        result = sub_1E1AF74AC();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v18)
      {
        if (!v36)
        {
          goto LABEL_11;
        }

        if (v17 != v32 || v18 != v36)
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v36)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (v33)
        {
          if (v19 == v31 && v20 == v33 || (result = sub_1E1AF74AC(), (result & 1) != 0))
          {
LABEL_40:
            result = sub_1E1AF756C();
            __break(1u);
            break;
          }
        }
      }

      else if (!v33)
      {
        goto LABEL_40;
      }

LABEL_11:
      a2 = (a2 + 1) & v10;
    }

    while (((*(v40 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_41:
  v24 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = (*(v24 + 48) + (a2 << 6));
  v26 = v35[1];
  *v25 = *v35;
  v25[1] = v26;
  v27 = v35[3];
  v25[2] = v35[2];
  v25[3] = v27;
  v28 = *(v24 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v30;
  }

  return result;
}

uint64_t sub_1E1898E18(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1E1895FD8();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E189B428(&qword_1ECEBA8B8);
      goto LABEL_28;
    }

    sub_1E189C520();
  }

  v8 = *v3;
  sub_1E1AF762C();
  if (v5)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0x656461637261;
  }

  if (v5)
  {
    v10 = 0x80000001E1B57100;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  sub_1E1AF5F0C();

  result = sub_1E1AF767C();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0xD000000000000016 : 0x656461637261;
      v14 = *(*(v8 + 48) + a2) ? 0x80000001E1B57100 : 0xE600000000000000;
      if (v13 == v9 && v14 == v10)
      {
        goto LABEL_31;
      }

      v16 = sub_1E1AF74AC();

      if (v16)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189902C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E189626C();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E189B2B0();
      goto LABEL_12;
    }

    sub_1E189C784();
  }

  v9 = *v3;
  result = sub_1E1AF6F2C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1E134E724(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1E68FFC60](v19, v6);
      result = sub_1E134B88C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E18991A4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1E18964CC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E189B428(&qword_1ECEBA8C8);
      goto LABEL_28;
    }

    sub_1E189C9B0();
  }

  v8 = *v3;
  sub_1E1AF762C();
  if (v5)
  {
    v9 = 7304045;
  }

  else
  {
    v9 = 1701736302;
  }

  if (v5)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  sub_1E1AF5F0C();

  result = sub_1E1AF767C();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2) ? 7304045 : 1701736302;
      v14 = *(*(v8 + 48) + a2) ? 0xE300000000000000 : 0xE400000000000000;
      if (v13 == v9 && v14 == v10)
      {
        goto LABEL_31;
      }

      v16 = sub_1E1AF74AC();

      if (v16)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E18993A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E1896748();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E189B558();
      goto LABEL_12;
    }

    sub_1E189CBFC();
  }

  v9 = *v3;
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  result = sub_1E1AF767C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1E141CF00(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1E68FFC60](v19, v6);
      result = sub_1E138867C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E1899530(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1E18969BC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E189B428(&qword_1ECEBA8A0);
      goto LABEL_16;
    }

    sub_1E189CE3C();
  }

  v8 = *v3;
  sub_1E1AF762C();
  Shelf.ContentType.rawValue.getter();
  sub_1E1AF5F0C();

  result = sub_1E1AF767C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = Shelf.ContentType.rawValue.getter();
      v13 = v12;
      if (v11 == Shelf.ContentType.rawValue.getter() && v13 == v14)
      {
        goto LABEL_19;
      }

      v16 = sub_1E1AF74AC();

      if (v16)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E1899728(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1E1896C2C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E189B6D0();
      goto LABEL_16;
    }

    sub_1E189D07C();
  }

  v10 = *v4;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  result = sub_1E1AF767C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E1AF74AC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E18998A8(uint64_t result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_67;
  }

  if (a3)
  {
    sub_1E1896E8C();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1E189B428(&qword_1ECEBA8C0);
      goto LABEL_67;
    }

    sub_1E189D2B4();
  }

  v7 = *v3;
  sub_1E1AF762C();
  sub_1E19DB4A4();
  result = sub_1E1AF767C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v8;
    v9 = 0xEB00000000746365;
    v10 = 0x6669636570736E75;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 3)
      {
        v14 = 0xD000000000000016;
        if (v11 == 2)
        {
          v15 = 0x80000001E1B58330;
        }

        else
        {
          v14 = 0x646E756F72;
          v15 = 0xE500000000000000;
        }

        if (*(*(v7 + 48) + a2))
        {
          v16 = 0x526465646E756F72;
        }

        else
        {
          v16 = v10;
        }

        if (*(*(v7 + 48) + a2))
        {
          v17 = v9;
        }

        else
        {
          v17 = 0xEB00000000646569;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v13 = v16;
        }

        else
        {
          v13 = v14;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v12 = v17;
        }

        else
        {
          v12 = v15;
        }
      }

      else if (*(*(v7 + 48) + a2) <= 5u)
      {
        if (v11 == 4)
        {
          v13 = 0xD000000000000010;
          v12 = 0x80000001E1B58350;
        }

        else
        {
          v12 = 0xE400000000000000;
          v13 = 1819044208;
        }
      }

      else if (v11 == 6)
      {
        v12 = 0xE300000000000000;
        v13 = 7364969;
      }

      else if (v11 == 7)
      {
        v12 = 0xE600000000000000;
        v13 = 0x746365527674;
      }

      else
      {
        v13 = 0x656E726F64616E75;
        v12 = 0xE900000000000064;
      }

      v18 = 0x656E726F64616E75;
      if (v35 == 7)
      {
        v18 = 0x746365527674;
      }

      v19 = 0xE900000000000064;
      if (v35 == 7)
      {
        v19 = 0xE600000000000000;
      }

      if (v35 == 6)
      {
        v18 = 7364969;
        v19 = 0xE300000000000000;
      }

      v20 = 1819044208;
      if (v35 == 4)
      {
        v20 = 0xD000000000000010;
      }

      v21 = 0x80000001E1B58350;
      if (v35 != 4)
      {
        v21 = 0xE400000000000000;
      }

      if (v35 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = 0xD000000000000016;
      if (v35 == 2)
      {
        v23 = 0x80000001E1B58330;
      }

      else
      {
        v22 = 0x646E756F72;
        v23 = 0xE500000000000000;
      }

      v24 = v10;
      if (v35)
      {
        v10 = 0x526465646E756F72;
      }

      v25 = v9;
      if (!v35)
      {
        v9 = 0xEB00000000646569;
      }

      if (v35 <= 1u)
      {
        v22 = v10;
        v23 = v9;
      }

      v26 = v35 <= 3u ? v22 : v18;
      v27 = v35 <= 3u ? v23 : v19;
      if (v13 == v26 && v12 == v27)
      {
        goto LABEL_70;
      }

      v28 = sub_1E1AF74AC();

      if (v28)
      {
        goto LABEL_71;
      }

      a2 = (a2 + 1) & v34;
      v9 = v25;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_67:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_70:

LABEL_71:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E1899C58(uint64_t result, unint64_t a2, char a3)
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
    sub_1E1897208();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1E189B82C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1E189D600();
  }

  v8 = *v3;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v4);
  result = sub_1E1AF767C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E1899DA4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1E1897458();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E189B96C();
      goto LABEL_16;
    }

    sub_1E189D820();
  }

  v10 = *v4;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  result = sub_1E1AF767C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E1AF74AC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E1899F24(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E1AF51EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E18976B8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E189BE94(MEMORY[0x1E69AB4A0], &qword_1ECEBA880);
      goto LABEL_12;
    }

    sub_1E189DA58();
  }

  v12 = *v3;
  sub_1E189EE98(&qword_1ECEBA870, MEMORY[0x1E69AB4A0]);
  v13 = sub_1E1AF5D0C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1E189EE98(&qword_1ECEBA878, MEMORY[0x1E69AB4A0]);
      v21 = sub_1E1AF5DAC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189A1EC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1E1AF523C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E1897A14();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E189BE94(MEMORY[0x1E69AB4C0], &qword_1ECEB4790);
      goto LABEL_12;
    }

    sub_1E189DD74();
  }

  v12 = *v3;
  sub_1E189EE98(&unk_1EE1E3670, MEMORY[0x1E69AB4C0]);
  v13 = sub_1E1AF5D0C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1E189EE98(&unk_1EE1D2818, MEMORY[0x1E69AB4C0]);
      v21 = sub_1E1AF5DAC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189A4B4(uint64_t result, int64_t a2, unint64_t a3, char a4)
{
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1E1897D70();
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_1E189BAC8();
        goto LABEL_81;
      }

      sub_1E189E090();
    }

    v11 = *v4;
    sub_1E1AF762C();
    sub_1E19DC324(v25, v8, a2);
    v4 = v25;
    result = sub_1E1AF767C();
    v12 = -1 << *(v11 + 32);
    a3 = result & ~v12;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v24 = ~v12;
      do
      {
        v13 = (*(v11 + 48) + 16 * a3);
        v4 = *v13;
        v5 = v13[1];
        if (v5 <= 4)
        {
          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v15 = 0xE400000000000000;
              v14 = 1936748641;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else if (v5 == 3)
            {
              v15 = 0xE700000000000000;
              v14 = 0x73657461647075;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x686372616573;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_62;
          }

          if (!v5)
          {
            v15 = 0xE500000000000000;
            v14 = 0x7961646F74;
            if (a2 > 4)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }

          if (v5 == 1)
          {
            v15 = 0xE500000000000000;
            v14 = 0x73656D6167;
            if (a2 > 4)
            {
              goto LABEL_43;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v5 <= 7)
          {
            if (v5 == 5)
            {
              v15 = 0xE600000000000000;
              v14 = 0x656461637261;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else if (v5 == 6)
            {
              v15 = 0xE800000000000000;
              v14 = 0x6465727574616566;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v14 = 0x69726F6765746163;
              v15 = 0xEA00000000007365;
              if (a2 > 4)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_62;
          }

          switch(v5)
          {
            case 8:
              v15 = 0xE600000000000000;
              v14 = 0x737472616863;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            case 9:
              v14 = 0x6573616863727570;
              v15 = 0xE900000000000064;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
            case 10:
              v15 = 0xE900000000000073;
              v14 = 0x64616F6C6E776F64;
              if (a2 > 4)
              {
                goto LABEL_43;
              }

              goto LABEL_62;
          }
        }

        v14 = *v13;
        v15 = v13[1];
        if (a2 > 4)
        {
LABEL_43:
          if (a2 <= 7)
          {
            if (a2 == 5)
            {
              v16 = 0xE600000000000000;
              if (v14 == 0x656461637261)
              {
                goto LABEL_78;
              }
            }

            else if (a2 == 6)
            {
              v16 = 0xE800000000000000;
              if (v14 == 0x6465727574616566)
              {
                goto LABEL_78;
              }
            }

            else
            {
              v16 = 0xEA00000000007365;
              if (v14 == 0x69726F6765746163)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_79;
          }

          switch(a2)
          {
            case 8:
              v16 = 0xE600000000000000;
              if (v14 == 0x737472616863)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
            case 9:
              v16 = 0xE900000000000064;
              if (v14 == 0x6573616863727570)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
            case 10:
              v16 = 0xE900000000000073;
              if (v14 == 0x64616F6C6E776F64)
              {
                goto LABEL_78;
              }

              goto LABEL_79;
          }

          goto LABEL_77;
        }

LABEL_62:
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v16 = 0xE400000000000000;
            if (v14 == 1936748641)
            {
              goto LABEL_78;
            }
          }

          else if (a2 == 3)
          {
            v16 = 0xE700000000000000;
            if (v14 == 0x73657461647075)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 == 0x686372616573)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_79;
        }

        if (!a2)
        {
          v16 = 0xE500000000000000;
          if (v14 == 0x7961646F74)
          {
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        if (a2 == 1)
        {
          v16 = 0xE500000000000000;
          if (v14 == 0x73656D6167)
          {
            goto LABEL_78;
          }

          goto LABEL_79;
        }

LABEL_77:
        v16 = a2;
        if (v14 == v8)
        {
LABEL_78:
          if (v15 == v16)
          {
            goto LABEL_84;
          }
        }

LABEL_79:
        v17 = sub_1E1AF74AC();
        sub_1E13BC260(v4, v5);
        sub_1E13BC260(v8, a2);

        if (v17)
        {
          goto LABEL_85;
        }

        a3 = (a3 + 1) & v24;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_81:
  v18 = *v23;
  *(*v23 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v8;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_84:
    sub_1E13BC260(v4, v5);
    sub_1E13BC260(v8, a2);

LABEL_85:
    result = sub_1E1AF756C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

unint64_t sub_1E189AA20(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1E1898158();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1E189E454();
LABEL_8:
      v6 = *v2;
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      result = sub_1E1AF767C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1E189BC24();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189AB40(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1E1898380();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1E189BD30();
      goto LABEL_16;
    }

    sub_1E189E640();
  }

  v9 = *v3;
  sub_1E1AF5DFC();
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v10 = sub_1E1AF767C();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_1E1AF5DFC();
      v15 = v14;
      if (v13 == sub_1E1AF5DFC() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1E1AF74AC();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189AD28(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1E1AF31DC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E18985FC();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E189BE94(MEMORY[0x1E698B288], &qword_1ECEB4750);
      goto LABEL_12;
    }

    sub_1E189E894();
  }

  v13 = *v3;
  sub_1E189EE98(&qword_1EE1E3C90, MEMORY[0x1E698B288]);
  v14 = sub_1E1AF5D0C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1E189EE98(&qword_1EE1E3C88, MEMORY[0x1E698B288]);
      v22 = sub_1E1AF5DAC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

uint64_t sub_1E189AFF0(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E1898958(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1E189C0E0(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1E189EBB0(v6 + 1, a4);
  }

  v9 = *v4;
  result = sub_1E1AF761C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

void *sub_1E189B12C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4788);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1E13C5038(v27, &v26);
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

void *sub_1E189B2B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1E134E724(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_1E189B428(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1E1AF6F7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1E189B558()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8B0);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1E141CF00(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_1E189B6D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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

void *sub_1E189B82C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA888);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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

void *sub_1E189B96C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B0);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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

void *sub_1E189BAC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA898);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1E13BC260(v18, *(&v18 + 1));
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

void *sub_1E189BC24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA890);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

id sub_1E189BD30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4798);
  v2 = *v0;
  v3 = sub_1E1AF6F7C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1E189BE94(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_1E1AF6F7C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1E189C0E0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1E1AF6F7C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E189C210()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4788);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_34:
    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = result + 56;
  while (v8)
  {
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_15:
    v19 = (*(v2 + 48) + ((v16 | (v5 << 6)) << 6));
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[3];
    v34 = v19[2];
    v35 = v22;
    v32 = v21;
    v33 = v20;
    sub_1E1AF762C();
    if (*(&v32 + 1))
    {
      sub_1E1AF764C();
      sub_1E13C5038(&v32, v31);
      sub_1E1AF5F0C();
    }

    else
    {
      sub_1E1AF764C();
      sub_1E13C5038(&v32, v31);
    }

    v23 = *(&v34 + 1);
    sub_1E1AF5F0C();
    if (v23)
    {
      sub_1E1AF764C();
      sub_1E1AF5F0C();
      if (*(&v35 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1E1AF764C();
      if (*(&v35 + 1))
      {
LABEL_20:
        sub_1E1AF764C();
        sub_1E1AF5F0C();
        goto LABEL_23;
      }
    }

    sub_1E1AF764C();
LABEL_23:
    result = sub_1E1AF767C();
    v24 = -1 << *(v4 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v10 + 8 * v26);
        if (v30 != -1)
        {
          v11 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_36;
    }

    v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = (*(v4 + 48) + (v11 << 6));
    v13 = v32;
    v14 = v33;
    v15 = v35;
    v12[2] = v34;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    ++*(v4 + 16);
  }

  v17 = v5;
  while (1)
  {
    v5 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v5 >= v9)
    {

      v1 = v0;
      goto LABEL_34;
    }

    v18 = *(v2 + 56 + 8 * v5);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v8 = (v18 - 1) & v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1E189C520()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8B8);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189C784()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_1E134E724(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = sub_1E1AF6F2C();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189C9B0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8C8);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189CBFC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8B0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_1E141CF00(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      sub_1E1AF762C();
      _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      result = sub_1E1AF767C();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189CE3C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8A0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1E1AF762C();
      Shelf.ContentType.rawValue.getter();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189D07C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4770);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E189D2B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8C0);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}