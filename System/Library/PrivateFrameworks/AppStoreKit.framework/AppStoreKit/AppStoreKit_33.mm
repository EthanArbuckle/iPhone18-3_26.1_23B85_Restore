uint64_t ReviewsPage.init(adamId:title:targetReviewId:shelves:sortOptions:initialSortOptionIdentifier:sortActionSheetTitle:ratings:productReviewActions:alwaysAllowReviews:loadCompletedAction:nextPage:pageMetrics:pageRenderEvent:trailingNavBarAction:)(void *a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t), unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v95 = a8;
  v93 = a7;
  v86 = a6;
  v88 = a5;
  v85 = a4;
  v94 = a3;
  v90 = a2;
  v96 = a18;
  v92 = a15;
  v99 = a13;
  v100 = a19;
  LODWORD(v91) = a14;
  v84 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v83 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v83 - v29;
  v30 = sub_1E1AF3C3C();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v97 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v83 - v34;
  v36 = a1[1];
  v37 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  *v37 = *a1;
  v37[1] = v36;
  v38 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v39 = v88;
  *v38 = v85;
  v38[1] = v39;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v93;
  v40 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  *v40 = v95;
  v40[1] = a9;
  v41 = (v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v42 = v84;
  *v41 = a10;
  v41[1] = v42;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = a12;
  v43 = v100;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v99;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v91;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction) = v43;
  v89 = a16;
  sub_1E134FD1C(a16, v103, &qword_1ECEB2DF0);
  v88 = v31;
  v85 = *(v31 + 2);
  v93 = a17;
  v85(v35, a17, v30);
  v95 = sub_1E1AF39DC();
  v44 = *(v95 - 8);
  v45 = v101;
  (*(v44 + 56))(v101, 1, 1, v95);
  v46 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v91 = a12;

  v47 = sub_1E175EC2C(v86);
  v49 = v48;

  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v47;
  v50 = v45;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v49;
  v51 = (v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v52 = v94;
  *v51 = v90;
  v51[1] = v52;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
  sub_1E134FD1C(v103, v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v20 + v46) = 0;
  v53 = v96;

  *(v20 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v54 = v97;
  v94 = v35;
  v55 = v85;
  v85(v97, v35, v30);
  v56 = v50;
  v57 = v98;
  sub_1E134FD1C(v56, v98, &qword_1ECEB3B28);
  *(v20 + 16) = 0;
  v90 = v30;
  v55(v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v54, v30);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v53;
  v58 = v87;
  sub_1E134FD1C(v57, v87, &qword_1ECEB3B28);
  v86 = v44;
  v59 = *(v44 + 48);
  if (v59(v58, 1, v95) == 1)
  {

    v60 = *(v88 + 1);
    v61 = v90;
    v60(v93, v90);
    sub_1E1308058(v89, &qword_1ECEB2DF0);
    sub_1E1308058(v57, &qword_1ECEB3B28);
    v60(v54, v61);
    sub_1E1308058(v101, &qword_1ECEB3B28);
    v60(v94, v61);
    sub_1E1308058(v103, &qword_1ECEB2DF0);
    v62 = v58;
    v63 = &qword_1ECEB3B28;
  }

  else
  {
    v64 = v58;
    v65 = v88;
    v66 = qword_1EE1E3BC8;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v67, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v68 = v102;
    v69 = v65;
    if (v102)
    {
    }

    v70 = v86 + 8;
    v71 = *(v86 + 8);
    v72 = v95;
    v71(v64, v95);
    v73 = v83;
    if (v68)
    {
      v74 = v98;
      sub_1E134FD1C(v98, v83, &qword_1ECEB3B28);
      if (v59(v73, 1, v72) != 1)
      {
        v86 = v70;
        v80 = v73;
        sub_1E15F0974();

        v81 = v90;
        v82 = *(v69 + 1);
        v82(v93, v90);
        sub_1E1308058(v89, &qword_1ECEB2DF0);
        sub_1E1308058(v74, &qword_1ECEB3B28);
        v82(v97, v81);
        sub_1E1308058(v101, &qword_1ECEB3B28);
        v82(v94, v81);
        sub_1E1308058(v103, &qword_1ECEB2DF0);
        v71(v80, v72);
        return v20;
      }

      v75 = *(v69 + 1);
      v76 = v90;
      v75(v93, v90);
      sub_1E1308058(v89, &qword_1ECEB2DF0);
      sub_1E1308058(v74, &qword_1ECEB3B28);
      v75(v97, v76);
      sub_1E1308058(v101, &qword_1ECEB3B28);
      v75(v94, v76);
      sub_1E1308058(v103, &qword_1ECEB2DF0);
      v62 = v73;
      v63 = &qword_1ECEB3B28;
    }

    else
    {

      v77 = *(v69 + 1);
      v78 = v90;
      v77(v93, v90);
      sub_1E1308058(v89, &qword_1ECEB2DF0);
      sub_1E1308058(v98, &qword_1ECEB3B28);
      v77(v97, v78);
      sub_1E1308058(v101, &qword_1ECEB3B28);
      v77(v94, v78);
      v62 = v103;
      v63 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v62, v63);
  return v20;
}

uint64_t sub_1E1638E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ReviewsPage.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  a1[1] = v2;
}

uint64_t ReviewsPage.targetReviewId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);

  return v1;
}

uint64_t ReviewsPage.initialSortOptionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);

  return v1;
}

uint64_t ReviewsPage.sortActionSheetTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);

  return v1;
}

uint64_t sub_1E1639070(uint64_t a1)
{
  v2 = v1;
  v184 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v175 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v178 = &v162 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v162 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v162 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v176 = &v162 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v180 = &v162 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v181 = &v162 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v186 = &v162 - v20;
  v21 = sub_1E1AF3C3C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v162 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v179 = &v162 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v189 = (&v162 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v162 - v36;
  v182 = type metadata accessor for ReviewsPage(0);
  v37 = swift_dynamicCastClass();
  v38 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId + 8);
  v183 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  v40 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v39 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v188 = v22;
  v190 = v21;
  v185 = v40;
  if (v37)
  {
    v41 = v37;
    v42 = v184;
    v43 = v21;
    v44 = v38;
    v45 = v39;
    if (!v39)
    {
      v185 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    }

    v177 = v45;
    v46 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
    if (v46)
    {
      v172 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
      v171 = v46;
    }

    else
    {
      v61 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
      v172 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
      v171 = v61;
    }

    v62 = ShelfBasedPage.shelves.getter(v42, &protocol witness table for GenericPage);
    v63 = sub_1E1635254(type metadata accessor for ReviewsPage);
    v175 = sub_1E163ABFC(v62, v63);

    v173 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
    v64 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
    if (v64)
    {
      v184 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v167 = v64;
    }

    else
    {
      v65 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
      v184 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
      v167 = v65;
    }

    v66 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
    v174 = v64;
    v170 = v66;
    if (v66)
    {
      v165 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
      v164 = v66;
    }

    else
    {
      v67 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
      v165 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
      v164 = v67;
    }

    v68 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
    v168 = v68;
    if (!v68)
    {
      v68 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
    }

    v69 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
    if (v69)
    {
      v166 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
      v178 = v69;
    }

    else
    {
      v178 = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);

      v166 = 0;
    }

    LODWORD(v163) = *(v41 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews);
    sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v194, &qword_1ECEB2DF0);
    v70 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v71 = *(v22 + 16);
    v72 = v187;
    v71(v187, v2 + v70, v43);
    v169 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v73 = OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction;
    v74 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction);
    v2 = swift_allocObject();
    v75 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
    *v75 = v183;
    v75[1] = v44;
    v76 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
    v77 = v171;
    *v76 = v172;
    v76[1] = v77;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v173;
    v78 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
    v79 = v167;
    *v78 = v184;
    v78[1] = v79;
    v80 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
    v81 = v164;
    *v80 = v165;
    v80[1] = v81;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = v68;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v178;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v163;
    *(v2 + v73) = v74;
    sub_1E134FD1C(v194, &v192, &qword_1ECEB2DF0);
    v71(v189, v72, v43);
    v82 = v71;
    v183 = sub_1E1AF39DC();
    v184 = *(v183 - 8);
    v83 = v186;
    (*(v184 + 56))(v186, 1, 1, v183);
    v84 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

    v182 = v68;

    v85 = sub_1E175EC2C(v175);
    v87 = v86;

    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v85;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v87;
    v88 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v89 = v177;
    *v88 = v185;
    v88[1] = v89;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
    sub_1E134FD1C(&v192, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
    swift_beginAccess();
    *(v2 + v84) = 0;
    v90 = v189;
    v91 = v190;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v92 = v179;
    v82(v179, v90, v91);
    v93 = v181;
    sub_1E134FD1C(v83, v181, &qword_1ECEB3B28);
    *(v2 + 16) = 0;
    v82((v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v92, v91);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v169;
    v94 = v180;
    sub_1E134FD1C(v93, v180, &qword_1ECEB3B28);
    v95 = *(v184 + 48);
    if (v95(v94, 1, v183) == 1)
    {

      v96 = &qword_1ECEB3B28;
      sub_1E1308058(v93, &qword_1ECEB3B28);
      v97 = v90;
      v98 = *(v188 + 8);
      v98(v92, v91);
      sub_1E1308058(v186, &qword_1ECEB3B28);
      v98(v97, v91);
      sub_1E1308058(&v192, &qword_1ECEB2DF0);
      v98(v187, v91);
      sub_1E1308058(v194, &qword_1ECEB2DF0);
      v99 = v94;
      goto LABEL_53;
    }

    v185 = v95;
    v100 = qword_1EE1E3BC8;

    if (v100 != -1)
    {
LABEL_57:
      swift_once();
    }

    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v101, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v102 = v193;
    v103 = v176;
    v104 = v181;
    v105 = v179;
    if (v193)
    {
    }

    v106 = *(v184 + 8);
    v107 = v183;
    v184 += 8;
    v106(v180, v183);
    if (v102)
    {
      sub_1E134FD1C(v104, v103, &qword_1ECEB3B28);
      if (v185(v103, 1, v107) == 1)
      {

        v96 = &qword_1ECEB3B28;
        sub_1E1308058(v104, &qword_1ECEB3B28);
        v108 = *(v188 + 8);
        v109 = v190;
        v108(v105, v190);
        sub_1E1308058(v186, &qword_1ECEB3B28);
        v108(v189, v109);
        sub_1E1308058(&v192, &qword_1ECEB2DF0);
        v108(v187, v109);
        sub_1E1308058(v194, &qword_1ECEB2DF0);
        v99 = v103;
        goto LABEL_53;
      }

      sub_1E15F0974();

      sub_1E1308058(v104, &qword_1ECEB3B28);
      v157 = *(v188 + 8);
      v158 = v190;
      v157(v105, v190);
      sub_1E1308058(v186, &qword_1ECEB3B28);
      v157(v189, v158);
      sub_1E1308058(&v192, &qword_1ECEB2DF0);
      v157(v187, v158);
      sub_1E1308058(v194, &qword_1ECEB2DF0);
      v106(v103, v107);
      return v2;
    }

    sub_1E1308058(v104, &qword_1ECEB3B28);
    v155 = *(v188 + 8);
    v156 = v190;
    v155(v105, v190);
    sub_1E1308058(v186, &qword_1ECEB3B28);
    v155(v189, v156);
    v96 = &qword_1ECEB2DF0;
    sub_1E1308058(&v192, &qword_1ECEB2DF0);
    v155(v187, v156);
LABEL_52:
    v99 = v194;
    goto LABEL_53;
  }

  v186 = v24;
  v172 = v27;
  v173 = v12;
  v174 = v30;
  v47 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId + 8);
  v180 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v179 = v47;
  v48 = v39;

  v189 = v38;

  v181 = v48;

  v49 = ShelfBasedPage.shelves.getter(v184, &protocol witness table for GenericPage);
  v50 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = MEMORY[0x1E69E7CC0];
  v192 = MEMORY[0x1E69E7CC0];
  v53 = *(v51 + 16);
  v54 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v53)
  {
    goto LABEL_39;
  }

  v55 = 0;
  v56 = v51 + 32;
  v176 = v53 - 1;
  v187 = v49;
  v184 = v51 + 32;
  do
  {
    v57 = v56 + 40 * v55;
    v58 = v55;
    while (1)
    {
      if (v58 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }

      sub_1E134E724(v57, v194);
      if (*(*(a1 + v54) + 16))
      {
        break;
      }

LABEL_9:
      ++v58;
      sub_1E134B88C(v194);
      v57 += 40;
      if (v53 == v58)
      {
        v49 = v187;
        goto LABEL_39;
      }
    }

    sub_1E135FCF4(v194);
    if ((v59 & 1) == 0)
    {

      goto LABEL_9;
    }

    v60 = sub_1E134B88C(v194);
    MEMORY[0x1E68FEF20](v60);
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v55 = v58 + 1;
    sub_1E1AF62AC();
    v52 = v192;
    v49 = v187;
    v56 = v184;
  }

  while (v176 != v58);
LABEL_39:

  v176 = sub_1E163ABFC(v49, v52);

  v163 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions);
  v110 = v163;
  v111 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier + 8);
  v170 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v169 = v111;
  v168 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings);
  v112 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle + 8);
  v166 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v164 = v112;
  v187 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions);
  LODWORD(v165) = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v194, &qword_1ECEB2DF0);
  v113 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v115 = (v188 + 16);
  v114 = *(v188 + 16);
  v116 = v174;
  v117 = v190;
  v114(v174, v2 + v113, v190);
  v167 = v115;
  v171 = v114;
  v184 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v118 = OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction;
  v119 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_trailingNavBarAction);
  v2 = swift_allocObject();
  v120 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_adamId);
  v121 = v189;
  *v120 = v183;
  v120[1] = v121;
  v122 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_targetReviewId);
  v123 = v179;
  *v122 = v180;
  v122[1] = v123;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortOptions) = v110;
  v124 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_initialSortOptionIdentifier);
  v125 = v169;
  *v124 = v170;
  v124[1] = v125;
  v126 = (v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_sortActionSheetTitle);
  v127 = v164;
  *v126 = v166;
  v126[1] = v127;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_ratings) = v168;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_productReviewActions) = v187;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11ReviewsPage_alwaysAllowReviews) = v165;
  *(v2 + v118) = v119;
  sub_1E134FD1C(v194, &v192, &qword_1ECEB2DF0);
  v128 = v172;
  v114(v172, v116, v117);
  v183 = sub_1E1AF39DC();
  v189 = *(v183 - 8);
  v129 = v173;
  v189[7](v173, 1, 1, v183);
  v130 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

  v131 = sub_1E175EC2C(v176);
  v133 = v132;

  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v131;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v133;
  v134 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v135 = v181;
  *v134 = v185;
  v134[1] = v135;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = 0;
  sub_1E134FD1C(&v192, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = 0;
  swift_beginAccess();
  *(v2 + v130) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v136 = v186;
  v137 = v190;
  v138 = v171;
  v171(v186, v128, v190);
  v139 = v177;
  sub_1E134FD1C(v129, v177, &qword_1ECEB3B28);
  *(v2 + 16) = 0;
  v140 = v137;
  v138(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v136, v137);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v184;
  v141 = v178;
  v142 = v183;
  sub_1E134FD1C(v139, v178, &qword_1ECEB3B28);
  v143 = v189[6];
  if ((v143)(v141, 1, v142) == 1)
  {

    v96 = &qword_1ECEB3B28;
    sub_1E1308058(v139, &qword_1ECEB3B28);
    v144 = *(v188 + 8);
    v144(v136, v140);
    sub_1E1308058(v173, &qword_1ECEB3B28);
    v144(v172, v140);
    sub_1E1308058(&v192, &qword_1ECEB2DF0);
    v144(v174, v140);
    goto LABEL_48;
  }

  v187 = v143;
  v145 = v142;
  v146 = v140;
  v147 = qword_1EE1E3BC8;

  if (v147 != -1)
  {
    swift_once();
  }

  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
  __swift_project_value_buffer(v148, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
  sub_1E1AF39EC();
  v149 = v191;
  v150 = v188;
  v141 = v175;
  v151 = v186;
  if (v191)
  {
  }

  v152 = v189[1];
  ++v189;
  (v152)(v178, v145);
  v153 = v177;
  if (!v149)
  {
    sub_1E1308058(v177, &qword_1ECEB3B28);
    v159 = *(v150 + 8);
    v159(v151, v146);
    sub_1E1308058(v173, &qword_1ECEB3B28);
    v159(v172, v146);
    v96 = &qword_1ECEB2DF0;
    sub_1E1308058(&v192, &qword_1ECEB2DF0);
    v159(v174, v146);
    goto LABEL_52;
  }

  sub_1E134FD1C(v177, v141, &qword_1ECEB3B28);
  if ((v187)(v141, 1, v145) == 1)
  {
    v96 = &qword_1ECEB3B28;
    sub_1E1308058(v153, &qword_1ECEB3B28);
    v154 = *(v150 + 8);
    v154(v151, v146);
    sub_1E1308058(v173, &qword_1ECEB3B28);
    v154(v172, v146);
    sub_1E1308058(&v192, &qword_1ECEB2DF0);
    v154(v174, v146);
LABEL_48:
    sub_1E1308058(v194, &qword_1ECEB2DF0);
    v99 = v141;
LABEL_53:
    sub_1E1308058(v99, v96);
  }

  else
  {
    sub_1E15F0974();
    sub_1E1308058(v153, &qword_1ECEB3B28);
    v161 = *(v150 + 8);
    v161(v151, v146);
    sub_1E1308058(v173, &qword_1ECEB3B28);
    v161(v172, v146);
    sub_1E1308058(&v192, &qword_1ECEB2DF0);
    v161(v174, v146);
    sub_1E1308058(v194, &qword_1ECEB2DF0);
    (v152)(v141, v145);
  }

  return v2;
}

uint64_t sub_1E163AA40()
{
}

uint64_t ReviewsPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t ReviewsPage.__deallocating_deinit()
{
  ReviewsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E163ABFC(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1E175EC2C(a2);
  v5 = v4;

  v29 = v5;
  v28 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    result = sub_1E1AF71CC();
    v7 = result;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v2;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      goto LABEL_43;
    }

    v8 = 0;
    v27 = v7;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E68FFD80](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      if (*(v5 + 16) && (v12 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id, sub_1E135FCF4(v11 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id), (v13 & 1) != 0))
      {

        Shelf.mergingWith(_:)(v14);

        MEMORY[0x1E68FEF20](v15);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
        v10 = v28;
        sub_1E1410E94(v11 + v12);

        v7 = v27;
      }

      else
      {

        MEMORY[0x1E68FEF20](v9);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        v10 = v28;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (!(v2 >> 62))
  {
    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_21;
    }

LABEL_41:

    return v10;
  }

  result = sub_1E1AF71CC();
  v16 = result;
  if (!result)
  {
    goto LABEL_41;
  }

LABEL_21:
  if (v16 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1E68FFD80](i, v2);
        if (*(v5 + 16) && (sub_1E135FCF4(v18 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id), (v19 & 1) != 0))
        {
          v20 = swift_unknownObjectRetain();
          MEMORY[0x1E68FEF20](v20);
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
            v2 = v26;
          }

          sub_1E1AF62AC();
          swift_unknownObjectRelease();
          v10 = v28;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v21 = (v2 + 32);
      do
      {
        if (*(v29 + 16))
        {
          v22 = *v21;
          v23 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

          sub_1E135FCF4(v22 + v23);
          if (v24)
          {

            MEMORY[0x1E68FEF20](v25);
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            sub_1E1AF62AC();

            v10 = v28;
          }

          else
          {
          }
        }

        ++v21;
        --v16;
      }

      while (v16);
    }

    goto LABEL_41;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1E163B118()
{
  result = sub_1E1AEFCCC();
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

uint64_t NewWatchPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 2;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_1E1308EC0(a2, v4 + 16);
  return v4;
}

uint64_t NewWatchPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 2;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_1E1308EC0(a2, v2 + 16);
  return v2;
}

uint64_t NewWatchPairingCardTrigger.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t sub_1E163B2F0(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t sub_1E163B398(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_1E163B45C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 81) = a1;
  return result;
}

uint64_t NewWatchPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t NewWatchPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E163B564@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 72);
  *a1 = *(*v1 + 64);
  a1[1] = v2;
}

uint64_t sub_1E163B574(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t sub_1E163B5EC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1E163B62C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 81);
}

uint64_t sub_1E163B814()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E3030 = result;
  return result;
}

uint64_t sub_1E163B870()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E2EA0 = result;
  return result;
}

uint64_t JSFreshnessWatchdog.BootstrapReason.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t JSFreshnessWatchdog.BagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t JSFreshnessWatchdog.BagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_1E1AF539C();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

uint64_t JSFreshnessWatchdog.BagContract.bag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v4 = sub_1E1AF539C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 JSFreshnessWatchdog.BagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

double sub_1E163BC0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = sub_1E1AF3D0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  (*(v10 + 104))(v12, *MEMORY[0x1E69AAFD0], v9);
  sub_1E1AF52AC();
  (*(v10 + 8))(v12, v9);
  sub_1E1AF532C();
  (*(v6 + 8))(v8, v5);
  return *&v14[3];
}

uint64_t JSFreshnessWatchdog.BagContract.deinit()
{
  v1 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t JSFreshnessWatchdog.BagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E163BF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v5 = sub_1E1AF539C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 sub_1E163BF9C@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  return result;
}

double sub_1E163C064(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v16[2] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = sub_1E1AF3D0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E69AAFD0], v11);
  sub_1E1AF52AC();
  (*(v12 + 8))(v14, v11);
  sub_1E1AF532C();
  (*(v8 + 8))(v10, v7);
  return *&v16[3];
}

uint64_t sub_1E163C260()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE215A88);
  __swift_project_value_buffer(v4, qword_1EE215A88);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E163C3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_allocate_value_buffer(v0, qword_1EE1DCE08);
  __swift_project_value_buffer(v0, qword_1EE1DCE08);
  return sub_1E1AF3F9C();
}

uint64_t static JSFreshnessWatchdog.debugAlwaysTreatResidentSessionAsInvalidKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1DCE00 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  v3 = __swift_project_value_buffer(v2, qword_1EE1DCE08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JSFreshnessWatchdog.__allocating_init(bagContract:networkInquiry:process:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_1E163E4E4(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t JSFreshnessWatchdog.init(bagContract:networkInquiry:process:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1E163E3D0(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t JSFreshnessWatchdog.__allocating_init(bag:isOfflineBag:bagOfflinePolicy:networkInquiry:process:)(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = a2;
  v8 = sub_1E1AF539C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v13 = a3[1];
  v15 = *(a3 + 16);
  (*(v9 + 16))(v12, a1, v8, v10);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag, v12, v8);
  *(v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v22;
  v17 = v16 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v17 = v14;
  *(v17 + 8) = v13;
  *(v17 + 16) = v15;
  sub_1E1300B24(a4, v24);
  v18 = swift_allocObject();
  v19 = sub_1E163E2E4(v16, v24, v23, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v9 + 8))(a1, v8);
  return v19;
}

uint64_t JSFreshnessWatchdog.deinit()
{
  v1 = v0;
  if (*(v0 + 96))
  {
    sub_1E1300B24(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_1E1308058(v0 + 72, &unk_1ECEB5718);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  sub_1E1300EA8(*(v0 + 152));
  v4 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_1E1AF3F6C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t JSFreshnessWatchdog.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + 96))
  {
    sub_1E1300B24(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_1E1308058(v0 + 72, &unk_1ECEB5718);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  sub_1E1300EA8(*(v0 + 152));
  v4 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_1E1AF3F6C();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

void *JSFreshnessWatchdog.process.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1E163CA70()
{
  sub_1E163D478(v10);
  v1 = v10[0];
  if (!v10[0])
  {
    if (qword_1EE1DCDF8 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    swift_beginAccess();
    v4 = v0[19];
    if (v4 && (v10[0] = v1, , v5 = v4(v10), sub_1E1300EA8(v4), (v5 & 1) == 0))
    {
      if (qword_1EE1DCDF8 != -1)
      {
        swift_once();
      }

      v9 = sub_1E1AF591C();
      __swift_project_value_buffer(v9, qword_1EE215A88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();
    }

    else
    {
      if (qword_1EE1DCDF8 != -1)
      {
        swift_once();
      }

      v6 = sub_1E1AF591C();
      __swift_project_value_buffer(v6, qword_1EE215A88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      v11 = &type metadata for JSFreshnessWatchdog.BootstrapReason;
      v10[0] = v1;
      sub_1E1AF38BC();
      sub_1E1308058(v10, &qword_1ECEB2DF0);
      sub_1E1AF548C();

      v7 = [objc_opt_self() sharedCoordinator];
      [v7 notify];
    }

    return;
  }

  if (qword_1EE1DCDF8 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_11:
  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE215A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t sub_1E163D048@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E163E910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E163D0DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E163E8D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 152);
  *(v7 + 152) = v6;
  *(v7 + 160) = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t JSFreshnessWatchdog.reasonValidator.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t JSFreshnessWatchdog.reasonValidator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return sub_1E1300EA8(v5);
}

Swift::Void __swiftcall JSFreshnessWatchdog.didFinishBootstrap()()
{
  v1 = sub_1E1AF3F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF3F5C();
  v5 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

Swift::Void __swiftcall JSFreshnessWatchdog.willEnterForeground()()
{
  v1 = sub_1E1AF3F6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E163CA70();
  sub_1E1AF3F5C();
  v5 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

uint64_t sub_1E163D478@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v3 = sub_1E1AEFE6C();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v89 - v8;
  v94 = sub_1E1AF539C();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF3F6C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(v1 + 17);
  v17 = *(v1 + 18);
  v19 = __swift_project_boxed_opaque_existential_1Tm(v1 + 14, v18);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v17 + 40))(v18, v17);
  (*(v20 + 8))(v23, v18);
  v25 = *(v2 + 17);
  v26 = *(v2 + 18);
  v27 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v25);
  v28 = *(v25 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v29);
  v32 = (*(v26 + 48))(v25, v26);
  (*(v28 + 8))(v31, v25);
  v33 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  v34 = *(v14 + 16);
  v98 = v33;
  v97 = v14 + 16;
  v96 = v34;
  v34(v16, &v2[v33], v13);
  sub_1E1AF3F4C();
  v36 = v35;
  v37 = *(v14 + 8);
  v103 = v13;
  v37(v16, v13);
  if (qword_1EE1DCDF8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v10, qword_1EE215A88);
  v104 = v11;
  v105 = v10;
  (*(v11 + 16))(v107, v38, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1E1B03770;
  v95 = v39;
  sub_1E1AF382C();
  v40 = *(v2 + 17);
  v41 = *(v2 + 18);
  v42 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v40);
  v43 = *(v40 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46, v44);
  LOBYTE(v41) = (*(v41 + 32))(v40, v41);
  (*(v43 + 8))(v46, v40);
  v109 = MEMORY[0x1E69E6370];
  LOBYTE(v108[0]) = v41 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v47 = *(v2 + 17);
  v48 = *(v2 + 18);
  v49 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v47);
  v91 = &v89;
  v50 = *(v47 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v89 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v53, v51);
  v54 = v92;
  (*(v48 + 8))(v47, v48);
  (*(v50 + 8))(v53, v47);
  v55 = sub_1E1AF527C();
  (*(v93 + 8))(v54, v94);
  v56 = [v55 expirationDate];
  swift_unknownObjectRelease();
  if (v56)
  {
    v57 = v100;
    sub_1E1AEFE3C();

    v58 = 0;
    v60 = v101;
    v59 = v102;
  }

  else
  {
    v58 = 1;
    v60 = v101;
    v59 = v102;
    v57 = v100;
  }

  v61 = v99;
  v62 = 1819047278;
  (*(v60 + 56))(v57, v58, 1, v59);
  sub_1E1380BEC(v57, v61);
  if ((*(v60 + 48))(v61, 1, v59) == 1)
  {
    sub_1E1308058(v57, &unk_1ECEBB780);
    v109 = MEMORY[0x1E69E6158];
  }

  else
  {
    v63 = v90;
    (*(v60 + 32))(v90, v61, v59);
    v64 = sub_1E1AEFD7C();
    v66 = v65;
    (*(v60 + 8))(v63, v59);
    sub_1E1308058(v57, &unk_1ECEBB780);
    v109 = MEMORY[0x1E69E6158];
    if (v66)
    {
      v62 = v64;
      goto LABEL_11;
    }
  }

  v66 = 0xE400000000000000;
LABEL_11:
  v108[0] = v62;
  v108[1] = v66;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v67 = *(v2 + 17);
  v68 = *(v2 + 18);
  v69 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v67);
  v70 = *(v67 - 8);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v73 = &v89 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v73, v71);
  LOBYTE(v68) = (*(v68 + 16))(v67, v68);
  (*(v70 + 8))(v73, v67);
  v109 = MEMORY[0x1E69E6370];
  LOBYTE(v108[0]) = v68 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v74 = v103;
  v109 = v103;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v108);
  v96(boxed_opaque_existential_0, &v2[v98], v74);
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v109 = MEMORY[0x1E69E63B0];
  *v108 = v36;
  sub_1E1AF38BC();
  sub_1E1308058(v108, &qword_1ECEB2DF0);
  v76 = v105;
  v77 = v107;
  sub_1E1AF548C();

  (*(v104 + 8))(v77, v76);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1EE1DCE00 != -1)
  {
    swift_once();
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v78, qword_1EE1DCE08);
  sub_1E1AF3C8C();

  if (LOBYTE(v108[0]) == 2 || (v108[0] & 1) == 0)
  {
    if (v24 <= 0.0 || v24 > v36)
    {
      if (v32 > 0.0 && v32 <= v36 && (v81 = *(v2 + 17), v82 = *(v2 + 18), v83 = __swift_project_boxed_opaque_existential_1Tm(v2 + 14, v81), v84 = *(v81 - 8), v85 = MEMORY[0x1EEE9AC00](v83), v87 = &v89 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v84 + 16))(v87, v85), v88 = (*(v82 + 32))(v81, v82), result = (*(v84 + 8))(v87, v81), (v88 & 1) != 0))
      {
        v80 = 2;
      }

      else
      {
        v80 = 0;
      }
    }

    else
    {
      v80 = 4;
    }
  }

  else
  {
    v80 = 1;
  }

  *v106 = v80;
  return result;
}

uint64_t sub_1E163E2E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v11[4] = &protocol witness table for JSFreshnessWatchdog.BagContract;
  v11[0] = a1;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_1E1AF3F5C();
  sub_1E1300B24(v11, a4 + 112);
  sub_1E1300B24(a2, a4 + 24);
  *(a4 + 16) = a3;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v8);
  LOBYTE(a3) = (*(v9 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v11);
  *(a4 + 64) = a3 & 1;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_1E163E3D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v6 - 8) + 32))(boxed_opaque_existential_0, a1, v6);
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_1E1AF3F5C();
  sub_1E1300B24(v15, a4 + 112);
  sub_1E1300B24(a2, a4 + 24);
  *(a4 + 16) = a3;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v12);
  LOBYTE(v6) = (*(v13 + 8))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v15);
  *(a4 + 64) = v6 & 1;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_1E163E4E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_1E163E3D0(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_1E163E60C()
{
  result = qword_1ECEB7190;
  if (!qword_1ECEB7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7190);
  }

  return result;
}

uint64_t sub_1E163E700()
{
  result = sub_1E1AF3F6C();
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

uint64_t sub_1E163E808()
{
  result = sub_1E1AF539C();
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

uint64_t sub_1E163E910@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E163E978@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  v6 = sub_1E1AF27EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v10 + 56);

  if (v11 == 1)
  {
    v13 = sub_1E1AF2B1C();
  }

  else
  {
    v13 = sub_1E1AF2B2C();
  }

  v14 = v13;
  v15 = sub_1E1AF2ABC();
  sub_1E1AF2ABC();

  sub_1E1AF2B1C();

  v16 = sub_1E1AF274C();
  sub_1E1AF275C();
  (*(v7 + 104))(v9, *MEMORY[0x1E6980E98], v6);
  sub_1E1AF280C();

  (*(v7 + 8))(v9, v6);
  sub_1E1AF275C();

  type metadata accessor for LinkableTextViewModel();
  v17 = swift_allocObject();

  v19 = sub_1E142E020(v18);

  if (*(v19 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B8);
    v20 = sub_1E1AF72CC();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v29[0] = v20;

  sub_1E142E5BC(v21, 1, v29);

  *(v17 + qword_1ECEB46A0) = v29[0];
  v17[3] = v15;
  v17[4] = v14;
  LinkableText.asMarkdownAttributedString()(v5);
  v22 = sub_1E1AEF91C();
  if ((*(*(v22 - 8) + 48))(v5, 1, v22))
  {
  }

  else
  {
    v29[0] = v16;
    sub_1E142E9DC();
    sub_1E1AEF93C();
  }

  sub_1E163EF50(v5, v17 + qword_1ECEB4698);
  v17[2] = v12;
  sub_1E142E974(v5);
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 56) = 0;
  v23 = type metadata accessor for LinkableTextView();
  v24 = v23[8];
  *(a1 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + v23[9];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a1 + v23[10];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a1 + v23[11];
  result = swift_getKeyPath();
  *v27 = result;
  *(v27 + 8) = 0;
  *a1 = v17;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_1E163ED58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  memcpy(__dst, v1 + 2, 0x188uLL);
  memcpy(&__src[7], v1 + 2, 0x188uLL);
  *a1 = v3;
  *(a1 + 8) = v4;
  memcpy((a1 + 9), __src, 0x18FuLL);

  return sub_1E141D08C(__dst, v6);
}

uint64_t sub_1E163EDE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
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

uint64_t sub_1E163EE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E163EEE0()
{
  result = qword_1ECEB7198;
  if (!qword_1ECEB7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7198);
  }

  return result;
}

uint64_t sub_1E163EF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E163EFC0()
{
  result = qword_1ECEB71A0;
  if (!qword_1ECEB71A0)
  {
    type metadata accessor for LinkableTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB71A0);
  }

  return result;
}

double sub_1E163F03C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(*v1 + qword_1EE2168A8) + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t static ProductShelfOrderingId.defaultOrdering.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEB71A8;
  return result;
}

uint64_t static ProductShelfOrderingId.defaultOrdering.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEB71A8 = v1;
  return result;
}

AppStoreKit::ProductShelfOrderingId_optional __swiftcall ProductShelfOrderingId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductShelfOrderingId.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000021;
    v7 = 0xD00000000000001BLL;
    if (v2 != 10)
    {
      v7 = 0xD000000000000029;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (v2 == 7)
    {
      v8 = 0xD000000000000027;
    }

    if (v2 == 6)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000001FLL;
    v4 = 0xD00000000000001CLL;
    if (v2 != 4)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 == 1)
    {
      v1 = 0xD000000000000022;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1E163F338()
{
  v0 = ProductShelfOrderingId.rawValue.getter();
  v2 = v1;
  if (v0 == ProductShelfOrderingId.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E163F3D4()
{
  sub_1E1AF762C();
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E163F43C()
{
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E163F4A0()
{
  sub_1E1AF762C();
  ProductShelfOrderingId.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E163F510@<X0>(unint64_t *a1@<X8>)
{
  result = ProductShelfOrderingId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E163F538@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEB71A8;
  return result;
}

_BYTE *ShelfBasedProductPage.init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v142 = a2;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v130 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v124 = &v117[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v122 = &v117[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v117[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v117[-v14];
  v137 = sub_1E1AF380C();
  v132 = *(v137 - 8);
  v16 = MEMORY[0x1EEE9AC00](v137);
  v129 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v128 = &v117[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v127 = &v117[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v126 = &v117[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v125 = &v117[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v123 = &v117[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v117[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v117[-v31];
  v33 = qword_1EE2168C8;
  v136 = v2;
  *(v2 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Lockup();
  v144 = a1;
  sub_1E1AF381C();
  v133 = v5;
  v34 = v5 + 16;
  v35 = *(v5 + 16);
  v36 = v142;
  v139 = v35;
  v140 = v34;
  v35(v15);
  sub_1E16453D4(&qword_1EE1E4F60, type metadata accessor for Lockup);
  v134 = v15;
  sub_1E1AF464C();
  v37 = v145;
  if (v145)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v120 = v33;
    v143 = v4;
    *(v136 + qword_1EE2168A8) = v145;
    v121 = v37;

    sub_1E1AF381C();
    v39 = sub_1E1AF370C();
    v135 = *(v132 + 8);
    v138 = v132 + 8;
    v135(v30, v137);
    if (v39 == 2 || (v39 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      v145 = v42;
      v40 = v122;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v43, qword_1EE1E3BD0);
      sub_1E1AF395C();

      v118 = 0;
    }

    else
    {
      v40 = v122;
      if (qword_1EE1E3BC8 != -1)
      {
        swift_once();
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v41, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      sub_1E1AF396C();
      v118 = 1;
    }

    v44 = v141;
    (*(v133 + 32))(v141, v40, v143);
    v45 = type metadata accessor for Action();
    sub_1E1AF381C();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v44);
    v47 = v137;
    v48 = v135;
    v135(v32, v137);
    v49 = v136;
    *(v136 + qword_1EE216950) = v46;
    sub_1E1AF381C();
    v50 = v141;
    v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v141);
    v48(v32, v47);
    *(v49 + qword_1EE216940) = v51;
    sub_1E1AF381C();
    v122 = v45;
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v50);
    v48(v32, v47);
    *(v49 + qword_1EE2158C8) = v52;
    v53 = v123;
    sub_1E1AF381C();
    v54 = v124;
    v55 = v143;
    v139(v124, v142);
    type metadata accessor for Uber();
    swift_allocObject();
    v56 = v131;
    v57 = Uber.init(deserializing:using:)(v53, v54);
    if (v56)
    {

      v57 = 0;
    }

    v124 = 0;
    v61 = v136;
    *(v136 + qword_1EE2168D0) = v57;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v62 = v134;
    v63 = v141;
    (v139)(v134, v141, v55);
    v131 = sub_1E16453D4(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    *(v61 + qword_1EE216958) = v145;
    v123 = 0xD000000000000018;
    sub_1E1AF381C();
    v64 = v63;
    v65 = v143;
    v66 = v139;
    (v139)(v62, v64, v143);
    sub_1E1AF464C();
    *(v61 + qword_1EE2168F8) = v145;
    sub_1E1AF381C();
    v67 = v141;
    v66(v62, v141, v65);
    type metadata accessor for Badge();
    sub_1E16453D4(&qword_1EE1E58C0, type metadata accessor for Badge);
    *(v61 + qword_1EE2168B8) = sub_1E1AF630C();
    type metadata accessor for ProductPageExpandedOfferDetails();
    sub_1E1AF381C();
    v66(v62, v67, v65);
    sub_1E16453D4(qword_1EE1E7CF0, type metadata accessor for ProductPageExpandedOfferDetails);
    sub_1E1AF464C();
    v68 = v136;
    *(v136 + qword_1EE216918) = v145;
    v119 = 0xD000000000000015;
    sub_1E1AF381C();
    v69 = sub_1E1AF37CC();
    v71 = v70;
    v72 = v137;
    v73 = v135;
    v135(v32, v137);
    v74 = (v68 + qword_1EE216908);
    *v74 = v69;
    v74[1] = v71;
    sub_1E1AF381C();
    sub_1E147A7C0();
    sub_1E1AF369C();
    v73(v32, v72);
    *(v68 + qword_1EE2168C0) = v145;
    sub_1E1AF381C();
    v75 = sub_1E1AF36EC();
    LOBYTE(v71) = v76;
    v73(v32, v72);
    v77 = v68 + qword_1EE2168F0;
    *v77 = v75;
    *(v77 + 8) = v71 & 1;
    sub_1E1AF381C();
    v78 = sub_1E1AF37CC();
    v80 = v79;
    v73(v32, v72);
    v81 = (v68 + qword_1EE216930);
    *v81 = v78;
    v81[1] = v80;
    sub_1E1AF381C();
    v82 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_1EE216900) = v82;
    sub_1E1AF381C();
    v83 = JSONObject.appStoreColor.getter();
    v73(v32, v72);
    *(v68 + qword_1EE2168E0) = v83;
    sub_1E1AF381C();
    LOBYTE(v83) = sub_1E1AF370C();
    v73(v32, v72);
    *(v68 + qword_1EE2168E8) = v83;
    sub_1E1AF381C();
    (v139)(v134, v141, v143);
    type metadata accessor for ProductMedia();
    sub_1E16453D4(&qword_1EE1F5BB0, type metadata accessor for ProductMedia);
    v84 = sub_1E1AF630C();
    v85 = v120;
    swift_beginAccess();
    *(v68 + v85) = v84;

    v86 = v68 + qword_1EE2158C0;
    *v86 = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *(v86 + 48) = 0;
    sub_1E1AF381C();
    v87 = sub_1E1AF37CC();
    v89 = v88;
    v73(v32, v72);
    v90 = (v68 + qword_1EE216928);
    *v90 = v87;
    v90[1] = v89;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    v91 = v134;
    v92 = v143;
    v93 = v139;
    (v139)(v134, v142, v143);
    sub_1E16453D4(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
    sub_1E1AF464C();
    *(v68 + qword_1EE2168D8) = v146;
    v131 = type metadata accessor for Banner();
    sub_1E1AF381C();
    v94 = v142;
    v93(v91, v142, v92);
    v120 = sub_1E16453D4(&qword_1EE1E5068, type metadata accessor for Banner);
    sub_1E1AF464C();
    *(v68 + qword_1EE2168B0) = v146;
    type metadata accessor for AppStateBanner();
    sub_1E1AF381C();
    v93(v91, v94, v143);
    sub_1E16453D4(qword_1EE1F92F8, type metadata accessor for AppStateBanner);
    sub_1E1AF464C();
    *(v68 + qword_1EE216948) = v146;
    sub_1E1AF381C();
    v93(v91, v94, v143);
    sub_1E1AF464C();
    *(v68 + qword_1EE216938) = v146;
    v95 = v125;
    sub_1E1AF381C();
    v96 = v124;
    v97 = static Action.makeInstance(byDeserializing:using:)(v95, v94);
    if (v96)
    {

      v98 = 0;
    }

    else
    {
      v98 = v97;
    }

    v99 = v127;
    v100 = v126;
    v101 = v95;
    v102 = v137;
    v103 = v135;
    v135(v101, v137);
    *(v68 + qword_1EE216960) = v98;
    sub_1E1AF381C();
    v104 = static Action.makeInstance(byDeserializing:using:)(v100, v94);
    v103(v100, v102);
    *(v68 + qword_1EE216910) = v104;
    sub_1E1AF381C();
    v105 = static Action.makeInstance(byDeserializing:using:)(v99, v94);
    v103(v99, v102);
    *(v68 + qword_1EE216968) = v105;
    v106 = v128;
    v107 = v144;
    sub_1E1AF381C();
    LOBYTE(v105) = sub_1E1AF370C();
    v103(v106, v102);
    *(v68 + qword_1EE216920) = v105 & 1;
    v108 = v129;
    (*(v132 + 16))(v129, v107, v102);
    v109 = v130;
    (v139)(v130, v141, v143);
    v15 = sub_1E163300C(v108, v109);
    if (v118)
    {

      v111 = v142;
      v110 = v143;
      v112 = v144;
    }

    else
    {
      v113 = qword_1EE1E3BC8;

      v111 = v142;
      v112 = v144;
      if (v113 != -1)
      {
        swift_once();
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
      __swift_project_value_buffer(v114, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
      sub_1E1AF39EC();
      if (v146)
      {

        sub_1E15F0974();
      }

      v110 = v143;
    }

    v115 = *(v133 + 8);
    v115(v111, v110);
    v135(v112, v102);
    v115(v141, v110);
  }

  else
  {
    v58 = sub_1E1AF5A7C();
    sub_1E16453D4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v60 = v59;
    *v59 = type metadata accessor for ShelfBasedProductPage();
    v60[1] = MEMORY[0x1E69E7CC0];
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69AB698], v58);
    swift_willThrow();
    (*(v133 + 8))(v36, v4);
    (*(v132 + 8))(v144, v137);

    swift_deallocPartialClassInstance();
  }

  return v15;
}

uint64_t sub_1E1640BAC(uint64_t a1)
{

  return _s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(v2, a1);
}

double sub_1E1640C3C@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(*(v1 + qword_1EE2168A8) + 240);
  if (v2)
  {
    sub_1E134FD1C(v2 + 144, a1, &qword_1ECEB2DF0);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ShelfBasedProductPage.regularPriceFormatted.getter()
{
  v1 = *(v0 + qword_1EE216908);

  return v1;
}

uint64_t ShelfBasedProductPage.updateBuyParams.getter()
{
  v1 = *(v0 + qword_1EE216930);

  return v1;
}

uint64_t ShelfBasedProductPage.askToBuy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + qword_1EE2158C0);
  v3 = *(v1 + qword_1EE2158C0 + 8);
  v4 = *(v1 + qword_1EE2158C0 + 16);
  v5 = *(v1 + qword_1EE2158C0 + 24);
  v6 = *(v1 + qword_1EE2158C0 + 32);
  v7 = *(v1 + qword_1EE2158C0 + 40);
  v8 = *(v1 + qword_1EE2158C0 + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1E1475BB8(v2, v3, v4, v5);
}

uint64_t ShelfBasedProductPage.mediaSectionTitle.getter()
{
  v1 = *(v0 + qword_1EE216928);

  return v1;
}

uint64_t sub_1E1640DDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_1EE2168C8;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void *ShelfBasedProductPage.pageTopBackgroundColor.getter()
{
  v1 = *(v0 + qword_1EE216900);
  v2 = v1;
  return v1;
}

void *ShelfBasedProductPage.pageBottomBackgroundColor.getter()
{
  v1 = *(v0 + qword_1EE2168E0);
  v2 = v1;
  return v1;
}

uint64_t sub_1E1640F80()
{

  sub_1E147A814(*(v0 + qword_1EE2158C0), *(v0 + qword_1EE2158C0 + 8), *(v0 + qword_1EE2158C0 + 16), *(v0 + qword_1EE2158C0 + 24));
}

uint64_t ShelfBasedProductPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + *(*v0 + 192), &qword_1ECEB2DF0);

  sub_1E147A814(*(v0 + qword_1EE2158C0), *(v0 + qword_1EE2158C0 + 8), *(v0 + qword_1EE2158C0 + 16), *(v0 + qword_1EE2158C0 + 24));

  return v0;
}

uint64_t ShelfBasedProductPage.__deallocating_deinit()
{
  ShelfBasedProductPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s11AppStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v233 = &v218[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v249 = &v218[-v6];
  MEMORY[0x1EEE9AC00](v5);
  v250 = &v218[-v7];
  v257 = sub_1E1AF3C3C();
  v255 = *(v257 - 8);
  v8 = MEMORY[0x1EEE9AC00](v257);
  v254 = &v218[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v218[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v218[-v13];
  v15 = sub_1E1AEFCCC();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v243 = &v218[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v246 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v261 = &v218[-v18];
  v264 = sub_1E1AEFEAC();
  *&v259 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v248 = &v218[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v218[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v218[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v218[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v218[-v30];
  if (!a1)
  {
    return 0;
  }

  v245 = v12;
  v256 = v14;
  v32 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
  swift_beginAccess();
  v258 = a1;
  v33 = *(a1 + v32);
  v293 = 0;
  memset(v292, 0, sizeof(v292));
  v34 = *(v16 + 7);
  v253 = v31;
  v34(v31, 1, 1, v15);
  v35 = sub_1E1AEFE6C();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = sub_1E1AF46DC();
  (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
  v252 = v29;
  v34(v29, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
  swift_allocObject();
  v244 = v33;

  v251 = sub_1E1AF35CC();
  v260 = type metadata accessor for Shelf();
  v263 = swift_allocObject();
  sub_1E134FD1C(v292, &v286, &unk_1ECEB5670);
  v241 = v16;
  v242 = v15;
  if (*(&v287 + 1))
  {
    v289 = v286;
    v290 = v287;
    v291 = v288;
  }

  else
  {
    v38 = v248;
    sub_1E1AEFE9C();
    v39 = sub_1E1AEFE7C();
    v41 = v40;
    (*(v259 + 8))(v38, v264);
    *&v282 = v39;
    *(&v282 + 1) = v41;
    sub_1E1AF6F6C();
    sub_1E1308058(&v286, &unk_1ECEB5670);
  }

  v42 = v263;
  v43 = v263 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v44 = v290;
  *v43 = v289;
  *(v43 + 16) = v44;
  *(v43 + 32) = v291;
  v248 = v22;
  sub_1E134FD1C(v22, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
  *(v42 + 16) = 25600;
  *(v42 + 18) = 0;
  v45 = MEMORY[0x1E69E7CC0];
  *(v42 + 24) = MEMORY[0x1E69E7CC0];
  LOBYTE(v282) = 0;
  *(v42 + 32) = sub_1E1956360(v45, &v282);
  sub_1E134FD1C(v253, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
  v46 = (v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v46 = 0x6E6F6D6D6F63;
  v46[1] = 0xE600000000000000;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v42 + 40) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
  v47 = v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 3221225472;
  v48 = (v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v48 = 0;
  v48[1] = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
  v247 = v25;
  sub_1E134FD1C(v25, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
  sub_1E134FD1C(v252, v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
  v49 = v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0x8000;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v251;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v45;
  v50 = *(v42 + 24);
  v51 = sub_1E13C50E8();

  v52 = 0;
  v285 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v51);
  v264 = v50 + 32;
  v259 = xmmword_1E1B16440;
  v53 = &qword_1ECEB55A8;
  while (2)
  {
    while (2)
    {
      v54 = 0uLL;
      v55 = *(v50 + 16);
      if (v52 == v55)
      {
LABEL_8:
        v271 = 0;
        v52 = v55;
        v269 = v54;
        v270 = v54;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v52 >= *(v50 + 16))
        {
          goto LABEL_39;
        }

        sub_1E1300B24(v264 + 40 * v52++, &v269);
LABEL_12:
        v267[0] = v269;
        v267[1] = v270;
        v268 = v271;
        if (!*(&v270 + 1))
        {
          memset(v272, 0, 24);
          *(&v272[1] + 8) = v259;
LABEL_20:
          sub_1E1308058(v272, &qword_1ECEB55B8);
          v278 = 0;
          v276 = 0u;
          v277 = 0u;
LABEL_21:
          sub_1E1308058(&v276, &qword_1ECEB55B0);
          v282 = 0u;
          v283 = 0u;
          v284 = 0;
          goto LABEL_22;
        }

        sub_1E1308EC0(v267, v266);
        sub_1E1300B24(v266, &v265);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v272, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v266);
        if (*(&v272[1] + 1) == 1)
        {
          goto LABEL_20;
        }

        v273 = v272[0];
        v274 = v272[1];
        v275 = *&v272[2];
        if (*(&v272[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v273, &qword_1ECEB55B0);
        v54 = 0uLL;
        if (v52 == v55)
        {
          goto LABEL_8;
        }
      }

      *(&v274 + 1) = *(&v272[1] + 1);
      result = sub_1E134FD1C(&v273, v272, &qword_1ECEB55B0);
      if (!*(&v272[1] + 1))
      {
        goto LABEL_155;
      }

      sub_1E1308EC0(v272, &v276);
      sub_1E1308058(&v273, &qword_1ECEB55B0);
      if (!*(&v277 + 1))
      {
        goto LABEL_21;
      }

      sub_1E1308EC0(&v276, &v279);
      v58 = *(&v280 + 1);
      v59 = v281;
      v60 = __swift_project_boxed_opaque_existential_1Tm(&v279, *(&v280 + 1));
      v61 = v58;
      v51 = v60;
      if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v279);
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v279, &v282);
LABEL_22:
    v279 = v282;
    v280 = v283;
    v281 = v284;
    if (*(&v283 + 1))
    {
      sub_1E1308EC0(&v279, &v276);
      v56 = *(&v277 + 1);
      v57 = v278;
      __swift_project_boxed_opaque_existential_1Tm(&v276, *(&v277 + 1));
      (*(v57 + 16))(&v273, v56, v57);
      LOBYTE(v57) = v273;
      __swift_destroy_boxed_opaque_existential_1(&v276);
      v51 = &v285;
      sub_1E1893F1C(&v282, v57);
      continue;
    }

    break;
  }

  v62 = v263;
  *(v263 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v285;
  v63 = (v62 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v63 = 0u;
  v63[1] = 0u;
  v51 = *(v62 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v51 >> 62)
  {
LABEL_40:
    v64 = sub_1E1AF71CC();
    v66 = v247;
    v65 = v248;
    if (v64)
    {
      goto LABEL_31;
    }

LABEL_41:

    goto LABEL_42;
  }

  v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v247;
  v65 = v248;
  if (!v64)
  {
    goto LABEL_41;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
  if (v64 < 1)
  {
    goto LABEL_150;
  }

  v264 = v51 & 0xC000000000000001;
  v67 = (v246 + 8);

  v68 = 0;
  v69 = v51;
  do
  {
    if (v264)
    {
      MEMORY[0x1E68FFD80](v68, v51);
    }

    else
    {
    }

    ++v68;
    sub_1E15470BC();
    sub_1E1AF3CDC();
    v70 = v261;
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(&v282);
    (*v67)(v70, v262);
    v51 = v69;
  }

  while (v64 != v68);

  v66 = v247;
  v65 = v248;
LABEL_42:
  sub_1E1308058(v252, &unk_1ECEB4B60);
  sub_1E1308058(v65, &unk_1ECEB1770);
  sub_1E1308058(v66, &unk_1ECEBB780);
  sub_1E1308058(v253, &unk_1ECEB4B60);
  sub_1E1308058(v292, &unk_1ECEB5670);
  v71 = v244;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v282 = v71;
  sub_1E1599EB8(v263, 0x756B636F4C706F74, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v73 = v282;
  *&v273 = sub_1E159FBD8(MEMORY[0x1E69E7CC0]);
  v65 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  v53 = *(v258 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering);
  v263 = v73;
  if (!v53)
  {
    v75 = 0;
    goto LABEL_71;
  }

  if (v53 >> 62)
  {
    goto LABEL_151;
  }

  v74 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  v75 = MEMORY[0x1E69E7CC0];
  if (!v74)
  {
LABEL_71:
    v91 = v258;
    sub_1E1387250(v75, 2);
    v92 = *(v91 + v65);
    if (v92)
    {
      if (v92 >> 62)
      {
        v93 = sub_1E1AF71CC();
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = MEMORY[0x1E69E7CC0];
      if (v93)
      {
        *&v276 = MEMORY[0x1E69E7CC0];
        result = sub_1E135C2E8(0, v93 & ~(v93 >> 63), 0);
        if (v93 < 0)
        {
          goto LABEL_154;
        }

        v95 = 0;
        v94 = v276;
        do
        {
          if ((v92 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x1E68FFD80](v95, v92);
            v97 = *(v96 + 32);
            if (!v97)
            {
              goto LABEL_81;
            }
          }

          else
          {
            v96 = *(v92 + 8 * v95 + 32);

            v97 = *(v96 + 32);
            if (!v97)
            {
LABEL_81:
              v100 = *(v96 + 16);
              v101 = 0x68736E6565726373;
              if (v100 != 2)
              {
                v101 = 0x666C656873;
              }

              v102 = 0xEB0000000073746FLL;
              if (v100 != 2)
              {
                v102 = 0xE500000000000000;
              }

              v103 = 0x756B636F4C706F74;
              if (!*(v96 + 16))
              {
                v103 = 0x7975426F546B7361;
              }

              v104 = 0xE900000000000070;
              if (!*(v96 + 16))
              {
                v104 = 0xEF74736575716552;
              }

              if (*(v96 + 16) <= 1u)
              {
                v98 = v103;
              }

              else
              {
                v98 = v101;
              }

              if (*(v96 + 16) <= 1u)
              {
                v99 = v104;
              }

              else
              {
                v99 = v102;
              }

              goto LABEL_95;
            }
          }

          v98 = *(v96 + 24);
          v99 = v97;
LABEL_95:
          *&v279 = v98;
          *(&v279 + 1) = v99;

          sub_1E1AF6F6C();

          *&v276 = v94;
          v106 = *(v94 + 16);
          v105 = *(v94 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_1E135C2E8((v105 > 1), v106 + 1, 1);
            v94 = v276;
          }

          ++v95;
          *(v94 + 16) = v106 + 1;
          v107 = v94 + 40 * v106;
          v108 = v282;
          v109 = v283;
          *(v107 + 64) = v284;
          *(v107 + 32) = v108;
          *(v107 + 48) = v109;
        }

        while (v93 != v95);
      }
    }

    else
    {
      v94 = 0;
    }

    v110 = v258;
    sub_1E1387250(v94, 0);
    v111 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtworkForCompactDisplay);
    v112 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberStyle);
    v113 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberArtwork);
    v114 = *(v110 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_uberVideo);
    v65 = *(v110 + 48);
    v253 = type metadata accessor for Uber();
    v251 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2728);
    v115 = swift_allocObject();
    if (v113)
    {
      v116 = *(v113 + 16);

      v115[4] = v116;
      v115[5] = v117;
      if (v111)
      {
LABEL_102:
        v118 = *(v111 + 16);

LABEL_105:
        v115[6] = v118;
        v115[7] = v119;
        v120 = *&aBackgrou_0[8 * v112 + 8];
        v115[8] = *&aAbove_4[8 * v112];
        v115[9] = v120;
        v244 = v111;
        v264 = v65;
        v261 = v114;
        v262 = v113;
        if (v114)
        {
          v260 = v112;
          v121 = v241;
          v122 = v242;
          *&v259 = *(v241 + 2);
          v123 = v243;
          (v259)(v243, v114 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v242);

          swift_retain_n();
          swift_retain_n();

          v124 = sub_1E1AEFBDC();
          v126 = v125;
          v127 = *(v121 + 1);
          v127(v123, v122);
          v115[10] = v124;
          v115[11] = v126;
          (v259)(v123, v114 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v122);
          v114 = sub_1E1AEFBDC();
          v129 = v128;
          v130 = v122;
          v65 = v264;
          v127(v123, v130);
          LOBYTE(v112) = v260;
        }

        else
        {
          v115[10] = 0;
          v115[11] = 0;

          swift_retain_n();

          v129 = 0;
        }

        v112 = v112;
        v115[12] = v114;
        v115[13] = v129;
        if (v65)
        {
          v131 = *(v65 + 16);
        }

        else
        {
          v131 = 0;
          v132 = 0;
        }

        v133 = v244;
        v53 = 0;
        v115[14] = v131;
        v115[15] = v132;
        v115[16] = 0;
        v115[17] = 0;
        v134 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v135 = 7;
          if (v53 > 7)
          {
            v135 = v53;
          }

          v136 = v135 + 1;
          v137 = 16 * v53 + 40;
          do
          {
            if (v53 == 7)
            {
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v146 = sub_1E1AF637C();

              *&v279 = v146;
              sub_1E1AF6F6C();
              v147 = v283;
              v148 = v251;
              *(v251 + 80) = v282;
              *(v148 + 96) = v147;
              *(v148 + 112) = v284;
              *(v148 + 16) = v112;
              v150 = v261;
              v149 = v262;
              *(v148 + 24) = v262;
              v151 = v133;
              if (!v133)
              {

                v151 = v149;
              }

              v152 = v150 != 0;
              *(v148 + 32) = v151;
              *(v148 + 40) = v150;
              *(v148 + 48) = v150;
              *(v148 + 56) = v65;
              *(v148 + 64) = 0;
              *(v148 + 72) = 0;
              v153 = v150 | v149;
              v154 = v255;
              v155 = v258;
              if (v153)
              {
LABEL_133:
                *(v148 + 17) = v152;
                v232 = 40;
              }

              else
              {
                if (v65)
                {

                  v156 = ASKDeviceTypeGetCurrent();
                  v157 = sub_1E1AF5DFC();
                  v159 = v158;
                  if (v157 == sub_1E1AF5DFC() && v159 == v160)
                  {

                    goto LABEL_132;
                  }

                  v161 = sub_1E1AF74AC();

                  if (v161)
                  {
LABEL_132:
                    v152 = 2;
                    v148 = v251;
                    goto LABEL_133;
                  }

                  v148 = v251;
                }

                sub_1E134B88C(v148 + 80);
                swift_deallocPartialClassInstance();
                v232 = 0;
                v251 = 0;
              }

              v225 = sub_1E14C6348(v263);

              v282 = 0u;
              v283 = 0u;
              LODWORD(v231) = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete);
              v224 = v273;
              v239 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRefreshPolicy);
              v162 = *(v154 + 16);
              v222 = v154 + 16;
              v223 = v162;
              v162(v256, (v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics), v257);
              v240 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageRenderEvent);
              v253 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_banner);
              v261 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_secondaryBanner);
              v238 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_badges);
              v262 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_expandedOfferDetails);
              v163 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted + 8);
              v230 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_regularPriceFormatted);
              v237 = v163;
              v229 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier);
              LODWORD(v228) = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier + 8);
              *&v259 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_titleOfferDisplayProperties);
              v164 = v155;
              v165 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams + 8);
              v227 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
              v243 = v165;
              v166 = v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy;
              v260 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_logoArtwork);
              v263 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_navigationBarIconArtwork);
              v167 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 8);
              v235 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy);
              v236 = v167;
              v221 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_theme);
              v220 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_hasDarkUserInterfaceStyle);
              v168 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 24);
              v234 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 16);
              v241 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageTopBackgroundColor);
              v242 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageBottomBackgroundColor);
              v170 = *(v155 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_askToBuy + 32);
              v169 = *(v166 + 40);
              v264 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_shareAction);
              v171 = *(v166 + 48);
              v252 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_developerAction);
              v248 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_ageRatingAction);
              v247 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction);
              v246 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_appPromotionDetailPageAction);
              v172 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle + 8);
              v226 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_mediaSectionTitle);
              v219 = *(v164 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_alwaysAllowReviews);
              type metadata accessor for ShelfBasedProductPage();
              v173 = swift_allocObject();
              v174 = qword_1EE2168C8;
              v175 = MEMORY[0x1E69E7CC0];
              *(v173 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
              *(v173 + qword_1EE2168A8) = v164;
              *(v173 + qword_1EE2168B0) = v253;
              *(v173 + qword_1EE216948) = 0;
              *(v173 + qword_1EE216938) = v261;
              *(v173 + qword_1EE2168B8) = v238;
              *(v173 + qword_1EE216918) = v262;
              v176 = (v173 + qword_1EE216908);
              v177 = v237;
              *v176 = v230;
              v176[1] = v177;
              v178 = v173 + qword_1EE2168F0;
              *v178 = v229;
              v178[8] = v228;
              v179 = (v173 + qword_1EE216930);
              v180 = v243;
              *v179 = v227;
              v179[1] = v180;
              *(v173 + qword_1EE2168D8) = v259;
              v181 = (v173 + qword_1EE2158C0);
              v182 = v236;
              *v181 = v235;
              v181[1] = v182;
              v181[2] = v234;
              v181[3] = v168;
              v229 = v169;
              v230 = v168;
              v227 = v171;
              v228 = v170;
              v181[4] = v170;
              v181[5] = v169;
              v181[6] = v171;
              *(v173 + qword_1EE2168D0) = v251;
              *(v173 + qword_1EE216958) = v260;
              *(v173 + qword_1EE2168F8) = v263;
              v183 = (v173 + qword_1EE216928);
              *v183 = v226;
              v183[1] = v172;
              v226 = v172;
              swift_beginAccess();
              *(v173 + v174) = v175;
              v184 = v220;
              *(v173 + qword_1EE2168C0) = v221;
              *(v173 + qword_1EE2168E8) = v184;
              v185 = v242;
              *(v173 + qword_1EE216900) = v241;
              *(v173 + qword_1EE2168E0) = v185;
              *(v173 + qword_1EE216950) = v264;
              *(v173 + qword_1EE216940) = v252;
              v186 = v247;
              *(v173 + qword_1EE2158C8) = v248;
              *(v173 + qword_1EE216960) = v186;
              *(v173 + qword_1EE216910) = 0;
              *(v173 + qword_1EE216968) = v246;
              *(v173 + qword_1EE216920) = v219;
              sub_1E134FD1C(&v282, &v279, &qword_1ECEB2DF0);
              v187 = v245;
              v188 = v257;
              v189 = v223;
              v223(v245, v256, v257);
              v190 = v224;
              *(v173 + qword_1EE217318) = v225;
              *(v173 + qword_1EE217310) = v190;
              *(v173 + *(*v173 + 184)) = 0;
              sub_1E134FD1C(&v279, v173 + *(*v173 + 192), &qword_1ECEB2DF0);
              *(v173 + *(*v173 + 200)) = (v231 & 1) == 0;
              *(v173 + *(*v173 + 208)) = v232;
              v191 = v254;
              v189(v254, v187, v188);
              v192 = sub_1E1AF39DC();
              v193 = *(v192 - 8);
              v194 = v250;
              (*(v193 + 56))(v250, 1, 1, v192);
              v173[2] = v239;
              v189(v173 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v191, v188);
              v231 = v173;
              *(v173 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v240;
              v195 = v249;
              sub_1E134FD1C(v194, v249, &qword_1ECEB3B28);
              v232 = v193;
              v196 = *(v193 + 48);
              v225 = v192;
              LODWORD(v192) = v196(v195, 1, v192);

              v197 = v241;
              v198 = v242;

              if (v192 == 1)
              {

                sub_1E1475BB8(v235, v236, v234, v230);

                v199 = &qword_1ECEB3B28;
                sub_1E1308058(v194, &qword_1ECEB3B28);
                v200 = *(v255 + 8);
                v201 = v257;
                v200(v254, v257);
                v200(v245, v201);
                sub_1E1308058(&v279, &qword_1ECEB2DF0);
                v200(v256, v201);
                sub_1E1308058(&v282, &qword_1ECEB2DF0);
                v202 = v195;
                goto LABEL_144;
              }

              v241 = v196;

              v242 = v197;
              v243 = v198;

              sub_1E1475BB8(v235, v236, v234, v230);
              v203 = qword_1EE1E3BC8;

              if (v203 != -1)
              {
                swift_once();
              }

              v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
              __swift_project_value_buffer(v204, qword_1EE1E3BD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
              v205 = v249;
              sub_1E1AF39EC();
              v206 = *&v272[0];
              if (*&v272[0])
              {
              }

              v207 = *(v232 + 8);
              v208 = v225;
              v232 += 8;
              v207(v205, v225);
              if (v206)
              {
                v209 = v250;
                v210 = v233;
                sub_1E134FD1C(v250, v233, &qword_1ECEB3B28);
                if (v241(v210, 1, v208) == 1)
                {

                  v211 = v210;
                  v199 = &qword_1ECEB3B28;
                  sub_1E1308058(v209, &qword_1ECEB3B28);
                  v212 = *(v255 + 8);
                  v213 = v257;
                  v212(v254, v257);
                  v212(v245, v213);
                  sub_1E1308058(&v279, &qword_1ECEB2DF0);
                  v212(v256, v213);
                  sub_1E1308058(&v282, &qword_1ECEB2DF0);
                  v202 = v211;
                  goto LABEL_144;
                }

                sub_1E15F0974();

                sub_1E1308058(v209, &qword_1ECEB3B28);
                v216 = *(v255 + 8);
                v217 = v257;
                v216(v254, v257);
                v216(v245, v217);
                sub_1E1308058(&v279, &qword_1ECEB2DF0);
                v216(v256, v217);
                sub_1E1308058(&v282, &qword_1ECEB2DF0);
                v207(v233, v208);
              }

              else
              {

                sub_1E1308058(v250, &qword_1ECEB3B28);
                v214 = *(v255 + 8);
                v215 = v257;
                v214(v254, v257);
                v214(v245, v215);
                v199 = &qword_1ECEB2DF0;
                sub_1E1308058(&v279, &qword_1ECEB2DF0);
                v214(v256, v215);
                v202 = &v282;
LABEL_144:
                sub_1E1308058(v202, v199);
              }

              return v231;
            }

            if (v136 == ++v53)
            {
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              v74 = sub_1E1AF71CC();
              goto LABEL_45;
            }

            v138 = v137 + 16;
            v139 = *(v115 + v137);
            v137 += 16;
          }

          while (!v139);
          v140 = v133;
          v141 = v112;
          v142 = *(v115 + v138 - 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = sub_1E130C06C(0, *(v134 + 2) + 1, 1, v134);
          }

          v144 = *(v134 + 2);
          v143 = *(v134 + 3);
          if (v144 >= v143 >> 1)
          {
            v134 = sub_1E130C06C((v143 > 1), v144 + 1, 1, v134);
          }

          *(v134 + 2) = v144 + 1;
          v145 = &v134[16 * v144];
          *(v145 + 4) = v142;
          *(v145 + 5) = v139;
          v112 = v141;
          v133 = v140;
          v65 = v264;
        }
      }
    }

    else
    {
      v115[4] = 0;
      v115[5] = 0;
      if (v111)
      {
        goto LABEL_102;
      }
    }

    v118 = 0;
    v119 = 0;
    goto LABEL_105;
  }

  v264 = v65;
  *&v276 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C2E8(0, v74 & ~(v74 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    v75 = v276;
    while (1)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x1E68FFD80](v76, v53);
        v78 = *(v77 + 32);
        if (!v78)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v77 = *(v53 + 8 * v76 + 32);

        v78 = *(v77 + 32);
        if (!v78)
        {
LABEL_52:
          v81 = *(v77 + 16);
          v82 = 0x68736E6565726373;
          if (v81 != 2)
          {
            v82 = 0x666C656873;
          }

          v83 = 0xEB0000000073746FLL;
          if (v81 != 2)
          {
            v83 = 0xE500000000000000;
          }

          v84 = 0x756B636F4C706F74;
          if (!*(v77 + 16))
          {
            v84 = 0x7975426F546B7361;
          }

          v85 = 0xE900000000000070;
          if (!*(v77 + 16))
          {
            v85 = 0xEF74736575716552;
          }

          if (*(v77 + 16) <= 1u)
          {
            v79 = v84;
          }

          else
          {
            v79 = v82;
          }

          if (*(v77 + 16) <= 1u)
          {
            v80 = v85;
          }

          else
          {
            v80 = v83;
          }

          goto LABEL_66;
        }
      }

      v79 = *(v77 + 24);
      v80 = v78;
LABEL_66:
      *&v279 = v79;
      *(&v279 + 1) = v80;

      sub_1E1AF6F6C();

      *&v276 = v75;
      v87 = *(v75 + 16);
      v86 = *(v75 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_1E135C2E8((v86 > 1), v87 + 1, 1);
        v75 = v276;
      }

      ++v76;
      *(v75 + 16) = v87 + 1;
      v88 = v75 + 40 * v87;
      v89 = v282;
      v90 = v283;
      *(v88 + 64) = v284;
      *(v88 + 32) = v89;
      *(v88 + 48) = v90;
      if (v74 == v76)
      {
        v65 = v264;
        goto LABEL_71;
      }
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t _s11AppStoreKit21ShelfBasedProductPageC4from04fullF13FetchedActionACSgAF_AA0K0CtcfC_0(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v175 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v197 = (&v146 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v146 - v8;
  v10 = sub_1E1AF3C3C();
  v202 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v198 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v146 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v203 = &v146 - v16;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0);
  v192 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v146 - v17;
  v210 = sub_1E1AEFEAC();
  *&v205 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v146 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v146 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v146 - v30;
  if (a1)
  {
    v193 = v9;
    v194 = v14;
    v201 = v10;
    v32 = qword_1EE217318;
    swift_beginAccess();
    v33 = *(a1 + v32);
    *&v238[0] = 0x756B636F4C706F74;
    *(&v238[0] + 1) = 0xE900000000000070;

    v191 = v33;

    sub_1E1AF6F6C();
    v34 = sub_1E1AEFCCC();
    memset(v238, 0, sizeof(v238));
    v239 = 0;
    v35 = *(*(v34 - 8) + 56);
    v196 = v31;
    v35(v31, 1, 1, v34);
    v36 = sub_1E1AEFE6C();
    v37 = *(*(v36 - 8) + 56);
    v199 = v25;
    v37(v25, 1, 1, v36);
    v38 = sub_1E1AF46DC();
    v39 = *(*(v38 - 8) + 56);
    v200 = v22;
    v39(v22, 1, 1, v38);
    v35(v28, 1, 1, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
    swift_allocObject();
    v40 = sub_1E1AF35CC();
    v206 = type metadata accessor for Shelf();
    v209 = swift_allocObject();
    sub_1E134FD1C(v238, &v232, &unk_1ECEB5670);
    v195 = a1;
    if (*(&v233 + 1))
    {
      v235 = v232;
      v236 = v233;
      v237 = v234;
    }

    else
    {
      sub_1E1AEFE9C();
      v42 = sub_1E1AEFE7C();
      v44 = v43;
      (*(v205 + 8))(v19, v210);
      *&v228 = v42;
      *(&v228 + 1) = v44;
      sub_1E1AF6F6C();
      sub_1E1308058(&v232, &unk_1ECEB5670);
    }

    v45 = v209;
    v46 = v209 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
    v47 = v236;
    *v46 = v235;
    *(v46 + 16) = v47;
    *(v46 + 32) = v237;
    sub_1E134FD1C(v200, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770);
    *(v45 + 16) = 25600;
    *(v45 + 18) = 0;
    v48 = MEMORY[0x1E69E7CC0];
    *(v45 + 24) = MEMORY[0x1E69E7CC0];
    LOBYTE(v228) = 0;
    *(v45 + 32) = sub_1E1956360(v48, &v228);
    sub_1E134FD1C(v196, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
    v49 = (v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
    *v49 = 0x6E6F6D6D6F63;
    v49[1] = 0xE600000000000000;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
    *(v45 + 40) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
    v50 = v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 3221225472;
    v51 = (v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
    *v51 = 0;
    v51[1] = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
    sub_1E134FD1C(v199, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780);
    v190 = v28;
    sub_1E134FD1C(v28, v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60);
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
    v52 = v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0x8000;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v40;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v48;
    v53 = *(v45 + 24);
    v54 = sub_1E13C50E8();
    v189 = v40;

    v55 = 0;
    v231 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v54);
    v210 = v53 + 32;
    v205 = xmmword_1E1B16440;
    while (2)
    {
      v56 = 0uLL;
      v57 = *(v53 + 16);
      if (v55 == v57)
      {
LABEL_8:
        v217 = 0;
        v55 = v57;
        v215 = v56;
        v216 = v56;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v55 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        sub_1E1300B24(v210 + 40 * v55++, &v215);
LABEL_12:
        v213[0] = v215;
        v213[1] = v216;
        v214 = v217;
        if (!*(&v216 + 1))
        {
          memset(v218, 0, 24);
          *(&v218[1] + 8) = v205;
LABEL_24:
          sub_1E1308058(v218, &qword_1ECEB55B8);
          v224 = 0;
          v222 = 0u;
          v223 = 0u;
          goto LABEL_25;
        }

        sub_1E1308EC0(v213, v212);
        sub_1E1300B24(v212, &v211);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v218, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v212);
        if (*(&v218[1] + 1) == 1)
        {
          goto LABEL_24;
        }

        v219 = v218[0];
        v220 = v218[1];
        v221 = *&v218[2];
        if (*(&v218[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v219, &qword_1ECEB55B0);
        v56 = 0uLL;
        if (v55 == v57)
        {
          goto LABEL_8;
        }
      }

      *(&v220 + 1) = *(&v218[1] + 1);
      result = sub_1E134FD1C(&v219, v218, &qword_1ECEB55B0);
      if (*(&v218[1] + 1))
      {
        sub_1E1308EC0(v218, &v222);
        sub_1E1308058(&v219, &qword_1ECEB55B0);
        if (*(&v223 + 1))
        {
          sub_1E1308EC0(&v222, &v225);
          v58 = *(&v226 + 1);
          v59 = v227;
          v60 = __swift_project_boxed_opaque_existential_1Tm(&v225, *(&v226 + 1));
          v61 = v58;
          v54 = v60;
          if ((PersonalizableModel.needsClientPersonalization.getter(v61, v59) & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v225);
            continue;
          }

          sub_1E1308EC0(&v225, &v228);
LABEL_26:
          v225 = v228;
          v226 = v229;
          v227 = v230;
          if (*(&v229 + 1))
          {
            sub_1E1308EC0(&v225, &v222);
            v62 = *(&v223 + 1);
            v63 = v224;
            __swift_project_boxed_opaque_existential_1Tm(&v222, *(&v223 + 1));
            (*(v63 + 16))(&v219, v62, v63);
            LOBYTE(v62) = v219;
            __swift_destroy_boxed_opaque_existential_1(&v222);
            v54 = &v231;
            sub_1E1893F1C(&v228, v62);
            continue;
          }

          v64 = v209;
          *(v209 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v231;
          v65 = (v64 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
          *v65 = 0u;
          v65[1] = 0u;
          v54 = *(v64 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
          if (!(v54 >> 62))
          {
            v66 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_31;
          }

LABEL_57:
          v66 = sub_1E1AF71CC();
LABEL_31:
          v67 = v202;
          v68 = v195;
          v70 = v199;
          v69 = v200;
          if (!v66)
          {

            goto LABEL_40;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
          if (v66 < 1)
          {
            __break(1u);
          }

          else
          {
            v210 = v54 & 0xC000000000000001;
            v71 = (v192 + 8);

            v72 = 0;
            v73 = v54;
            do
            {
              if (v210)
              {
                MEMORY[0x1E68FFD80](v72, v54);
              }

              else
              {
              }

              ++v72;
              sub_1E15470BC();
              sub_1E1AF3CDC();
              v74 = v207;
              sub_1E1AF3CEC();

              __swift_destroy_boxed_opaque_existential_1(&v228);
              (*v71)(v74, v208);
              v54 = v73;
            }

            while (v66 != v72);

            v67 = v202;
            v68 = v195;
            v70 = v199;
            v69 = v200;
LABEL_40:
            sub_1E1308058(v190, &unk_1ECEB4B60);
            sub_1E1308058(v69, &unk_1ECEB1770);
            sub_1E1308058(v70, &unk_1ECEBB780);
            sub_1E1308058(v196, &unk_1ECEB4B60);
            sub_1E1308058(v238, &unk_1ECEB5670);
            v75 = v191;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v228 = v75;
            sub_1E1598874(v209, v240, isUniquelyReferenced_nonNull_native);
            sub_1E134B88C(v240);
            v174 = v228;
            v77 = qword_1EE217310;
            swift_beginAccess();
            v173 = *(v68 + v77);

            v78 = *(v68 + qword_1EE2168D0);
            v210 = v78;
            if (v78)
            {
              v172 = *(v78 + 32);

              v171 = 40;
            }

            else
            {
              v171 = 0;
              v172 = 0;
            }

            v79 = v203;
            v228 = 0u;
            v229 = 0u;
            v209 = *(v68 + 16);
            v80 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
            swift_beginAccess();
            v81 = *(v67 + 16);
            v168 = (v67 + 16);
            v169 = v81;
            v81(v79, (v68 + v80), v201);
            v189 = *(v68 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
            v147 = qword_1EE2168B0;
            v148 = qword_1EE2168A8;
            v150 = qword_1EE2168B8;
            v151 = qword_1EE216938;
            v149 = qword_1EE216918;
            v166 = qword_1EE216908;
            v82 = *(v68 + qword_1EE216908 + 8);
            v167 = *(v68 + qword_1EE216908);
            v186 = v82;
            v163 = qword_1EE2168F0;
            v165 = *(v68 + qword_1EE2168F0);
            v164 = *(v68 + qword_1EE2168F0 + 8);
            v161 = qword_1EE216930;
            v83 = *(v68 + qword_1EE216930 + 8);
            v162 = *(v68 + qword_1EE216930);
            v176 = v83;
            v152 = qword_1EE2168D8;
            v158 = qword_1EE2158C0;
            v177 = *(v68 + qword_1EE2158C0);
            v180 = *(v68 + qword_1EE2158C0 + 8);
            v185 = *(v68 + qword_1EE2158C0 + 16);
            v184 = *(v68 + qword_1EE2158C0 + 24);
            v183 = *(v68 + qword_1EE2158C0 + 32);
            v84 = *(v68 + qword_1EE2158C0 + 40);
            v181 = *(v68 + qword_1EE2158C0 + 48);
            v182 = v84;
            v153 = qword_1EE2168F8;
            v154 = qword_1EE216958;
            v155 = qword_1EE216928;
            v85 = *(v68 + qword_1EE216928 + 8);
            v156 = *(v68 + qword_1EE216928);
            v188 = v85;
            v160 = *(v68 + qword_1EE2168C0);
            v159 = *(v68 + qword_1EE2168E8);
            v178 = *(v68 + qword_1EE216900);
            v179 = *(v68 + qword_1EE2168E0);
            *&v205 = *(v68 + qword_1EE216950);
            v206 = *(v68 + qword_1EE216940);
            v199 = *(v68 + qword_1EE2158C8);
            v200 = *(v68 + qword_1EE216968);
            v157 = *(v68 + qword_1EE216920);
            v187 = *(v68 + qword_1EE2168A8);
            v86 = v187;
            v88 = *(v68 + qword_1EE216938);
            v190 = *(v68 + qword_1EE2168B0);
            v87 = v190;
            v191 = v88;
            v170 = *(v68 + qword_1EE2168B8);
            v89 = v170;
            v192 = *(v68 + qword_1EE216918);
            v90 = v192;
            v196 = *(v68 + qword_1EE2168D8);
            v91 = v196;
            v92 = *(v68 + qword_1EE2168F8);
            v207 = *(v68 + qword_1EE216958);
            v208 = v92;
            type metadata accessor for ShelfBasedProductPage();
            v93 = swift_allocObject();
            v94 = qword_1EE2168C8;
            *(v93 + qword_1EE2168C8) = MEMORY[0x1E69E7CC0];
            v95 = v147;
            *(v93 + v148) = v86;
            *(v93 + v95) = v87;
            *(v93 + qword_1EE216948) = 0;
            v96 = v150;
            *(v93 + v151) = v88;
            *(v93 + v96) = v89;
            *(v93 + v149) = v90;
            v97 = (v93 + v166);
            v98 = v186;
            *v97 = v167;
            v97[1] = v98;
            v99 = v93 + v163;
            *v99 = v165;
            v99[8] = v164;
            v100 = (v93 + v161);
            v102 = v176;
            v101 = v177;
            *v100 = v162;
            v100[1] = v102;
            *(v93 + v152) = v91;
            v103 = (v93 + v158);
            *v103 = v101;
            v104 = v184;
            v105 = v185;
            v103[1] = v180;
            v103[2] = v105;
            v103[3] = v104;
            v106 = v182;
            v103[4] = v183;
            v103[5] = v106;
            v103[6] = v181;
            *(v93 + qword_1EE2168D0) = v210;
            v107 = v208;
            v108 = v153;
            *(v93 + v154) = v207;
            *(v93 + v108) = v107;
            v109 = (v93 + v155);
            v110 = v188;
            *v109 = v156;
            v109[1] = v110;
            swift_beginAccess();
            *(v93 + v94) = MEMORY[0x1E69E7CC0];
            v111 = v159;
            *(v93 + qword_1EE2168C0) = v160;
            *(v93 + qword_1EE2168E8) = v111;
            v112 = v179;
            *(v93 + qword_1EE216900) = v178;
            *(v93 + qword_1EE2168E0) = v112;
            *(v93 + qword_1EE216950) = v205;
            *(v93 + qword_1EE216940) = v206;
            *(v93 + qword_1EE2158C8) = v199;
            *(v93 + qword_1EE216960) = v204;
            *(v93 + qword_1EE216910) = 0;
            *(v93 + qword_1EE216968) = v200;
            *(v93 + qword_1EE216920) = v157;
            sub_1E134FD1C(&v228, &v225, &qword_1ECEB2DF0);
            v113 = v194;
            v114 = v201;
            v115 = v169;
            v169(v194, v203, v201);
            v116 = v173;
            *(v93 + qword_1EE217318) = v174;
            *(v93 + qword_1EE217310) = v116;
            *(v93 + *(*v93 + 184)) = 0;
            sub_1E134FD1C(&v225, v93 + *(*v93 + 192), &qword_1ECEB2DF0);
            *(v93 + *(*v93 + 200)) = 0;
            *(v93 + *(*v93 + 208)) = v171;
            v117 = v198;
            v115(v198, v113, v114);
            v118 = v115;
            v119 = sub_1E1AF39DC();
            v120 = *(v119 - 8);
            v121 = v193;
            (*(v120 + 56))(v193, 1, 1, v119);
            v93[2] = v209;
            v118(v93 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v117, v114);
            v173 = v93;
            *(v93 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v189;
            v122 = v197;
            sub_1E134FD1C(v121, v197, &qword_1ECEB3B28);
            v174 = v120;
            v168 = *(v120 + 48);
            v169 = v119;
            LODWORD(v171) = v168(v122, 1, v119);

            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v123 = v178;
            v124 = v179;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v125 = v123;
            v126 = v124;

            sub_1E1475BB8(v177, v180, v185, v184);
            if (v171 == 1)
            {

              v127 = &qword_1ECEB3B28;
              sub_1E1308058(v193, &qword_1ECEB3B28);
              v128 = v201;
              v129 = *(v202 + 8);
              v129(v198, v201);
              v129(v194, v128);
              sub_1E1308058(&v225, &qword_1ECEB2DF0);
              v129(v203, v128);
              sub_1E1308058(&v228, &qword_1ECEB2DF0);
              v130 = v197;
              goto LABEL_52;
            }

            v69 = v125;
            v186 = v126;
            v131 = qword_1EE1E3BC8;

            if (v131 == -1)
            {
LABEL_46:
              v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
              __swift_project_value_buffer(v132, qword_1EE1E3BD0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
              v133 = v197;
              sub_1E1AF39EC();
              v134 = v215;
              v135 = v175;
              v136 = v169;
              if (v215)
              {
              }

              v137 = *(v174 + 8);
              v174 += 8;
              v197 = v137;
              (v137)(v133, v136);
              if (v134)
              {
                v138 = v193;
                sub_1E134FD1C(v193, v135, &qword_1ECEB3B28);
                if (v168(v135, 1, v136) == 1)
                {

                  v139 = v135;
                  v127 = &qword_1ECEB3B28;
                  sub_1E1308058(v138, &qword_1ECEB3B28);
                  v140 = v201;
                  v141 = *(v202 + 8);
                  v141(v198, v201);
                  v141(v194, v140);
                  sub_1E1308058(&v225, &qword_1ECEB2DF0);
                  v141(v203, v140);
                  sub_1E1308058(&v228, &qword_1ECEB2DF0);
                  v130 = v139;
                  goto LABEL_52;
                }

                sub_1E15F0974();

                sub_1E1308058(v138, &qword_1ECEB3B28);
                v144 = v201;
                v145 = *(v202 + 8);
                v145(v198, v201);
                v145(v194, v144);
                sub_1E1308058(&v225, &qword_1ECEB2DF0);
                v145(v203, v144);
                sub_1E1308058(&v228, &qword_1ECEB2DF0);
                (v197)(v175, v136);
              }

              else
              {

                sub_1E1308058(v193, &qword_1ECEB3B28);
                v142 = v201;
                v143 = *(v202 + 8);
                v143(v198, v201);
                v143(v194, v142);
                v127 = &qword_1ECEB2DF0;
                sub_1E1308058(&v225, &qword_1ECEB2DF0);
                v143(v203, v142);
                v130 = &v228;
LABEL_52:
                sub_1E1308058(v130, v127);
              }

              return v173;
            }
          }

          swift_once();
          goto LABEL_46;
        }

LABEL_25:
        sub_1E1308058(&v222, &qword_1ECEB55B0);
        v228 = 0u;
        v229 = 0u;
        v230 = 0;
        goto LABEL_26;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ShelfBasedProductPage()
{
  result = qword_1EE1ECE40;
  if (!qword_1EE1ECE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16453D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1645420()
{
  result = qword_1EE1EC050;
  if (!qword_1EE1EC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC050);
  }

  return result;
}

unint64_t sub_1E1645474(uint64_t a1)
{
  *(a1 + 8) = sub_1E1634F30();
  result = sub_1E16454A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E16454A4()
{
  result = qword_1EE1EC048;
  if (!qword_1EE1EC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC048);
  }

  return result;
}

id sub_1E1645664(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_accounts] = a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_onDevicePersonalizationDataManager] = a2;
  v7 = objc_allocWithZone(MEMORY[0x1E696AB38]);
  v8 = a2;

  v9 = [v7 initWithCondition_];
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D8);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox] = sub_1E14C51E8(2);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_init);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_1E1646AB0;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E1623918;
  v17[3] = &block_descriptor_8_0;
  v13 = _Block_copy(v17);
  v14 = v10;

  [v11 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v13);
  v15 = [objc_opt_self() defaultCenter];
  [v15 addObserver:v14 selector:sel_queryFitnessAppInstallationAllowed name:*MEMORY[0x1E698DC78] object:0];

  return v14;
}

uint64_t sub_1E16458C0(SEL *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  MEMORY[0x1E68FE6D0](v3);
  v6 = sub_1E1AF594C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEBBA70);
  }

  else
  {
    v8 = sub_1E1AF593C();
    (*(v7 + 8))(v5, v6);
    v9 = [v8 *a1];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E1AF5DFC();

      return v11;
    }
  }

  return 0;
}

id sub_1E1645A44(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1E16458C0(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1E1AF5DBC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1E1645B48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  MEMORY[0x1E68FE6D0](v1);
  v4 = sub_1E1AF594C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E1308058(v3, &qword_1ECEBBA70);
  }

  else
  {
    v6 = sub_1E1AF593C();
    (*(v5 + 8))(v3, v4);
    v7 = [v6 ams_DSID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 stringValue];

      v10 = sub_1E1AF5DFC();
      return v10;
    }
  }

  return 0;
}

uint64_t sub_1E1645EC4()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB71D0);
  sub_1E1AF690C();

  v2 = v6;
  if (v6 == 2)
  {
    v3 = OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v4 = [*(v1 + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lockWhenCondition_];
    MEMORY[0x1EEE9AC00](v4);

    sub_1E1AF690C();

    v2 = (v6 == 2) | v6;
    [*(v1 + v3) unlock];
  }

  return v2 & 1;
}

void sub_1E1646044(char a1)
{
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock;
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_fitnessAppInstallationAllowedConditionLock) lock];
    v13[0] = v13;
    v10 = *&v8[OBJC_IVAR____TtC11AppStoreKit12JSUserObject_isFitnessAppInstallationAllowedBox];
    MEMORY[0x1EEE9AC00](v9);
    LOBYTE(v13[-2]) = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v13[2] = v11;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v12 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v12);
    v13[-4] = sub_1E1646A60;
    v13[-3] = &v13[-4];
    v13[-2] = v10;
    sub_1E1AF68FC();
    (*(v3 + 8))(v5, v2);

    [*&v8[v7] unlockWithCondition_];
  }
}

uint64_t sub_1E1646414(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-v4];
  MEMORY[0x1E68FE6D0](v3);
  v6 = sub_1E1AF594C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = &qword_1ECEBBA70;
    v9 = v5;
LABEL_10:
    sub_1E1308058(v9, v8);
    return 0;
  }

  v10 = sub_1E1AF593C();
  (*(v7 + 8))(v5, v6);
  if ([v10 ams:*a1 accountFlagValueForAccountFlag:?])
  {
    sub_1E1AF6EBC();

    swift_unknownObjectRelease();
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    v8 = &qword_1ECEB2DF0;
    v9 = v15;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v12[15];
  }

  return 0;
}

id sub_1E16465E8(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11AppStoreKit12JSUserObject_onDevicePersonalizationDataManager))
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1E15A19DC(MEMORY[0x1E69E7CC0]);
    v38 = sub_1E1303A74(v36);
    v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
    v40 = objc_allocWithZone(v39);
    *&v40[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v37;
    *&v40[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v38;
    v48 = v40;
    v41 = &v48;
    goto LABEL_30;
  }

  v3 = sub_1E193F1AC();
  v5 = v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_29;
  }

  v7 = 0;
  v8 = a1 + 40;
  v9 = MEMORY[0x1E69E7CC8];
  v45 = v8;
  while (2)
  {
    v10 = (v8 + 16 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= v6)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_32;
      }

      v13 = *(v10 - 1);
      v12 = *v10;
      v14 = *(v3 + 16);

      if (v14)
      {
        v15 = sub_1E13018F8(v13, v12);
        if (v16)
        {
          break;
        }
      }

      v17 = sub_1E13018F8(v13, v12);
      if (v18)
      {
        v19 = v17;
        v47 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1E14199C8();
          v9 = v47;
        }

        sub_1E141D25C(v19, v9);

        goto LABEL_25;
      }

      ++v11;
      v10 += 2;
      if (v7 == v6)
      {
        goto LABEL_29;
      }
    }

    v20 = v5;
    v44 = *(*(v3 + 56) + 8 * v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v22 = sub_1E13018F8(v13, v12);
    v24 = v9[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = v23;
    if (v9[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v22;
        sub_1E14199C8();
        v22 = v35;
      }
    }

    else
    {
      sub_1E168FBA0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1E13018F8(v13, v12);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_35;
      }
    }

    v5 = v20;
    v9 = v47;
    if ((v28 & 1) == 0)
    {
      v47[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v9[6] + 16 * v22);
      *v32 = v13;
      v32[1] = v12;
      *(v9[7] + 8 * v22) = v44;
      v33 = v9[2];
      v26 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (!v26)
      {
        v9[2] = v34;
        goto LABEL_25;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1E1AF757C();
      __break(1u);
      return result;
    }

    v30 = v47[7];
    v31 = *(v30 + 8 * v22);
    *(v30 + 8 * v22) = v44;

LABEL_25:
    v8 = v45;
    if (v7 != v6)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v39 = type metadata accessor for OnDevicePersonalizationDataContainer();
  v42 = objc_allocWithZone(v39);
  *&v42[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_personalizationData] = v9;
  *&v42[OBJC_IVAR____TtC11AppStoreKit36OnDevicePersonalizationDataContainer_metricsData] = v5;
  v46.receiver = v42;
  v41 = &v46;
LABEL_30:
  v41->super_class = v39;
  return [(objc_super *)v41 init];
}

id static SpacerSupplementary.makeTopSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_1E1AF5DBC();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1 absoluteOffset:{0.0, -a2}];

  return v9;
}

id static SpacerSupplementary.makeBottomSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_1E1AF5DBC();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:5 absoluteOffset:{0.0, a2}];

  return v9;
}

uint64_t static SpacerSupplementary.makeSpacerRegistration(elementKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SpacerSupplementary();
  v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = nullsub_5;
  a3[5] = 0;
}

id SpacerSupplementary.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SpacerSupplementary.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SpacerSupplementary.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpacerSupplementary.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpacerSupplementary();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpacerSupplementary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1647078@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E14D3A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E1647118(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E14D3A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t InlineUnifiedMessagePresenter.actionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1);
  return v2;
}

uint64_t InlineUnifiedMessagePresenter.actionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1300EA8(v6);
}

uint64_t InlineUnifiedMessagePresenter.inlineViewControllers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id InlineUnifiedMessagePresenter.init(objectGraph:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E1AF436C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToShowUnifiedMessage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940);
  swift_allocObject();
  *&v1[v10] = sub_1E1AF35CC();
  v11 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToHideUnifiedMessage;
  swift_allocObject();
  *&v1[v11] = sub_1E1AF35CC();
  v12 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  *&v2[v12] = sub_1E159D30C(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_objectGraph] = a1;

  sub_1E1AF416C();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_metricsPipeline], v8, v5);
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  v13 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];
  swift_unknownObjectRelease();

  *&v2[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement] = v13;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, sel_init);
  v15 = qword_1EE1E35C0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1E1AF591C();
  __swift_project_value_buffer(v17, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  return v16;
}

void *InlineUnifiedMessagePresenter.inlineViewController(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E13018F8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

Swift::Void __swiftcall InlineUnifiedMessagePresenter.startListening(for:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v2 = sub_1E1AF71CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v3 = 0;
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E68FFD80](v3, a1._rawValue);
      }

      else
      {
        v4 = *(a1._rawValue + v3 + 4);
      }

      ++v3;
      v5 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);
      v6 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement + 8);
      v7 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_context);
      v8 = *(v4 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_deliveryMethod);
      sub_1E16478E4(v5, v6, v7, &v8);
    }

    while (v2 != v3);
  }
}

void sub_1E16478E4(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4)
{
  v35 = a3;
  v7 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32[4] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF591C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a4;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_1EE1E35C8);
  v14 = *(v10 + 16);
  v32[3] = v13;
  v14(v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v16 = *(sub_1E1AF38EC() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v32[1] = v15;
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  v32[2] = v17;
  sub_1E1AF382C();
  v39 = MEMORY[0x1E69E6158];
  aBlock = a1;
  v37 = a2;

  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (v35)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    v19 = v35;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v37 = 0;
    v38 = 0;
  }

  aBlock = v19;
  v39 = v18;

  sub_1E1AF38DC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  (*(v10 + 8))(v12, v9);

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  UnifiedMessagingPlacement.init(rawValue:)(v20);
  if (aBlock == 29 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0), sub_1E1AF416C(), v21 = v39, v22 = v40, __swift_project_boxed_opaque_existential_1Tm(&aBlock, v39), v23 = (*(v22 + 1))(v21, v22), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v23 & 1) == 0))
  {
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v39 = &type metadata for UnifiedMessagingPlacement;
    LOBYTE(aBlock) = 29;
    sub_1E1AF385C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v24 = a1;
    v25 = _sSo25AMSEngagementMessageEventC11AppStoreKitE03appE9Placement_5usingABSS_SDys11AnyHashableVypGSgtFZ_0(a1, a2, v35);
    v26 = v34;
    v27 = [*&v34[OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement] enqueueMessageEvent_];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v33;
    *(v28 + 32) = v24;
    *(v28 + 40) = a2;
    *(v28 + 48) = v25;
    v40 = sub_1E164DF1C;
    v41 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1E14CC840;
    v39 = &block_descriptor_39;
    v29 = _Block_copy(&aBlock);

    v30 = v26;
    v31 = v25;

    [v27 addFinishBlock_];
    _Block_release(v29);
  }
}

uint64_t sub_1E1647E9C(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v28 = a1;
  v29 = a7;
  v12 = sub_1E1AF320C();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF324C();
  v31 = *(v15 - 8);
  v32 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v30 = sub_1E1AF68EC();
  v18 = swift_allocObject();
  *(v18 + 16) = a4 & 1;
  *(v18 + 24) = a3;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a2;
  v20 = v28;
  v19 = v29;
  *(v18 + 56) = v29;
  *(v18 + 64) = v20;
  aBlock[4] = sub_1E164DF30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_25_0;
  v21 = _Block_copy(aBlock);
  v22 = a3;

  v23 = a2;
  v24 = v20;
  v25 = v19;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v26 = v30;
  MEMORY[0x1E68FF640](0, v17, v14, v21);
  _Block_release(v21);

  (*(v33 + 8))(v14, v12);
  return (*(v31 + 8))(v17, v32);
}

void sub_1E1648174(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  *&v55 = a3;
  *(&v55 + 1) = a4;
  v47 = a2;
  v56 = sub_1E1AF591C();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF389C();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = a1;
  if (a5)
  {
    v16 = a5;
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v56, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v17 = v57;
    v18 = v58;
    *(&v60 + 1) = v58;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v17, v18);
    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v60 + 1) = sub_1E13006E4(0, &unk_1EE1D2448);
    *&v59 = a6;
    v20 = a6;
    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v60 + 1) = MEMORY[0x1E69E6158];
    v59 = v55;

    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

LABEL_5:
    sub_1E1648DB4(v46 & 1, v47);
    return;
  }

  if (!a7)
  {
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v56, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v60 + 1) = sub_1E13006E4(0, &unk_1EE1D2448);
    *&v59 = a6;
    v42 = a6;
    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v60 + 1) = MEMORY[0x1E69E6158];
    v59 = v55;

    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    goto LABEL_5;
  }

  v21 = a7;
  v22 = [v21 messageActions];
  if (!v22)
  {
LABEL_44:
    if (qword_1EE1E35C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v56, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v60 + 1) = sub_1E13006E4(0, &unk_1EE1E3300);
    *&v59 = v21;
    v43 = v21;
    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    *(&v60 + 1) = MEMORY[0x1E69E6158];
    v44 = v55;
    v59 = v55;

    sub_1E1AF385C();
    sub_1E1308058(&v59, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    sub_1E1648F20(v44, *(&v44 + 1));

    goto LABEL_5;
  }

  v23 = v22;
  sub_1E13006E4(0, &unk_1ECEB4BA0);
  v24 = sub_1E1AF621C();

  if (v24 >> 62)
  {
    goto LABEL_42;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_43:

    goto LABEL_44;
  }

  while (1)
  {
    v45 = v21;
    if (v25 < 1)
    {
      break;
    }

    v21 = 0;
    v54 = v24 & 0xC000000000000001;
    v51 = "w at placements ";
    v52 = (v11 + 1);
    v50 = v11 + 1;
    v49 = xmmword_1E1B02CC0;
    v48 = v13;
    v53 = v25;
    while (1)
    {
      if (v54)
      {
        v26 = MEMORY[0x1E68FFD80](v21, v24);
      }

      else
      {
        v26 = *(v24 + 8 * v21 + 32);
      }

      v27 = v26;
      v28 = [v26 placementsMap];
      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4BB0);
      v30 = sub_1E1AF5C7C();

      if (!*(v30 + 16) || (v31 = sub_1E13018F8(v55, *(&v55 + 1)), (v32 & 1) == 0))
      {
LABEL_25:

LABEL_26:
        v35 = 0;
LABEL_27:
        v37 = v24;
        if (qword_1EE1E35C0 != -1)
        {
          swift_once();
        }

        v38 = v56;
        v39 = __swift_project_value_buffer(v56, qword_1EE1E35C8);
        (*v52)(v13, v39, v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        v11 = swift_allocObject();
        v11[1] = v49;
        sub_1E1AF388C();
        sub_1E1AF387C();
        if (v35)
        {
          *(&v60 + 1) = sub_1E13006E4(0, &qword_1ECEB6180);
          *&v59 = v35;
        }

        else
        {
          v59 = 0u;
          v60 = 0u;
        }

        v40 = v35;
        sub_1E1AF385C();
        sub_1E1308058(&v59, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        *(&v60 + 1) = MEMORY[0x1E69E6158];
        v59 = v55;

        sub_1E1AF385C();
        sub_1E1308058(&v59, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        v41 = v56;
        v13 = v48;
        sub_1E1AF548C();

        (*v50)(v13, v41);
        v24 = v37;
        goto LABEL_33;
      }

      v33 = *(*(v30 + 56) + 8 * v31);

      if (v33 >> 62)
      {
        if (!sub_1E1AF71CC())
        {
          goto LABEL_25;
        }
      }

      else if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if ((v33 & 0xC000000000000001) == 0)
      {
        break;
      }

      v34 = MEMORY[0x1E68FFD80](0, v33);
LABEL_23:
      v35 = v34;

      v36 = [v35 makeDialogRequest];
      if (!v36)
      {
        goto LABEL_27;
      }

      v11 = v36;
      InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(v36, v55, *(&v55 + 1));

LABEL_33:
      v21 = v21 + 1;
      if (v53 == v21)
      {

        goto LABEL_5;
      }
    }

    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v33 + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_42:
    v25 = sub_1E1AF71CC();
    if (!v25)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
}

void sub_1E1648DB4(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1E1AF74AC();

    if ((v3 & 1) == 0)
    {
      v4 = *(a2 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_engagement);
      v5 = sub_1E1AF5DBC();
      v6 = sub_1E1AF5DBC();
      sub_1E13006E4(0, &qword_1EE1E3430);
      v7 = sub_1E1AF68EC();
      [v4 addObserver:a2 placement:v5 serviceType:v6 queue:v7];
    }
  }

  else
  {
  }
}

uint64_t sub_1E1648F20(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {
    sub_1E13018F8(a1, a2);
    if (v7)
    {
      swift_endAccess();
      if (qword_1EE1E35C0 != -1)
      {
        swift_once();
      }

      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1EE1E35C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      v12 = MEMORY[0x1E69E6158];
      v10 = a1;
      v11 = a2;

      sub_1E1AF385C();
      sub_1E1308058(&v10, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF548C();

      v10 = a1;
      v11 = a2;
      sub_1E1AF35BC();
      swift_beginAccess();

      sub_1E138796C(0, a1, a2);
    }
  }

  return swift_endAccess();
}

void InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v21 = sub_1E13006E4(0, &qword_1ECEB4A70);
  v20[0] = a1;
  v9 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v20, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v21 = MEMORY[0x1E69E6158];
  v20[0] = a2;
  v20[1] = a3;

  sub_1E1AF385C();
  sub_1E1308058(v20, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v10 = sub_1E1AF527C();

  sub_1E13006E4(0, &qword_1EE1E3480);
  sub_1E1AF55EC();
  v11 = v20[0];
  v12 = [v20[0] ams_activeiTunesAccount];

  v13 = [objc_allocWithZone(MEMORY[0x1E698CCE8]) initWithRequest:v9 bag:v10 account:v12];
  [v13 setDelegate_];
  [v13 setImpressionsReportingFrequency_];
  v14 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();

  v15 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_1E159B2F8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v14) = v19;
  swift_endAccess();
  v17 = [v15 view];
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall InlineUnifiedMessagePresenter.isUnifiedMessageAvailable(for:)(AppStoreKit::UnifiedMessagingPlacement a1)
{
  v2 = v1;
  v3 = UnifiedMessagingPlacement.rawValue.getter();
  v5 = v4;
  v6 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {
    sub_1E13018F8(v3, v5);
    v8 = v7;
  }

  else
  {

    v8 = 0;
  }

  swift_endAccess();
  return v8 & 1;
}

uint64_t InlineUnifiedMessagePresenter.messageViewController(_:didSelectActionWith:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v84 = type metadata accessor for ActionIntent();
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E1AEFCCC();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v84 - v9;
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v13 = sub_1E1AF591C();
  v14 = __swift_project_value_buffer(v13, qword_1EE1E35C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v16 = *(sub_1E1AF38EC() - 8);
  v17 = *(v16 + 80);
  v18 = (v17 + 32) & ~v17;
  v96 = *(v16 + 72);
  v97 = v17;
  v99 = v15;
  v19 = swift_allocObject();
  v98 = xmmword_1E1B02CC0;
  *(v19 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v105[0] = a1;
  v104 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v105, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  a1 = [a2 originalRequest];
  ObjectType = sub_1E13006E4(0, &qword_1ECEB4A70);
  v105[0] = a1;
  sub_1E1AF385C();
  sub_1E1308058(v105, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v91 = sub_1E13006E4(0, &qword_1ECEB4A78);
  ObjectType = v91;
  v105[0] = a2;
  v100 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v105, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v92 = v18;
  v95 = v12;
  sub_1E1AF38AC();
  v94 = v13;
  v93 = v14;
  v12 = v14;
  sub_1E1AF548C();

  v20 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
  swift_beginAccess();
  v103 = v3;
  v21 = *(v3 + v20);
  v22 = v21 + 64;
  v23 = 1 << v21[32];
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v3 = v24 & *(v21 + 8);
  v101 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_onReceivedRequestToHideUnifiedMessage;
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  for (i = v21; v3; v21 = i)
  {
LABEL_11:
    while (1)
    {
      v28 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v29 = v28 | (v26 << 6);
      v30 = (*(v21 + 6) + 16 * v29);
      a2 = *v30;
      a1 = v30[1];
      v31 = *(*(v21 + 7) + 8 * v29);
      v12 = sub_1E13006E4(0, &qword_1EE1E31E0);

      v32 = v31;
      if (sub_1E1AF6D0C())
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v105[0] = a2;
    v105[1] = a1;
    sub_1E1AF35BC();
    swift_beginAccess();
    a2 = sub_1E13018F8(a2, a1);
    v12 = v33;

    if (v12)
    {
      v34 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = *(v34 + v20);
      v108 = a1;
      *(v34 + v20) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v12 = &v108;
        sub_1E1419B44();
        a1 = v108;
      }

      sub_1E141D25C(a2, a1);
      *(v34 + v20) = a1;
    }

    swift_endAccess();
  }

  while (1)
  {
LABEL_7:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v27 >= v25)
    {
      break;
    }

    v3 = *&v22[8 * v27];
    ++v26;
    if (v3)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  v36 = v100;
  v37 = [v100 originalRequest];
  v38 = [v36 selectedActionIdentifier];
  if (!v38)
  {
    sub_1E1AF5DFC();
    v38 = sub_1E1AF5DBC();
  }

  v39 = [v37 locateActionWithIdentifier_];

  *(swift_allocObject() + 16) = v98;
  if (!v39)
  {
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = v91;
    v105[0] = v100;
    v79 = v100;
    sub_1E1AF385C();
    sub_1E1308058(v105, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  sub_1E1AF388C();
  sub_1E1AF387C();
  v40 = sub_1E13006E4(0, &qword_1ECEB4A80);
  ObjectType = v40;
  v105[0] = v39;
  v41 = v39;
  sub_1E1AF385C();
  sub_1E1308058(v105, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  ObjectType = v91;
  v105[0] = v100;
  v42 = v100;
  sub_1E1AF385C();
  sub_1E1308058(v105, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v43 = [v41 deepLink];
  if (!v43)
  {
LABEL_29:
    *(swift_allocObject() + 16) = v98;
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = v40;
    v105[0] = v41;
    v80 = v41;
    sub_1E1AF385C();
    sub_1E1308058(v105, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  v44 = v89;
  v45 = v43;
  sub_1E1AEFC5C();

  v46 = sub_1E1AEFBDC();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    (*(v90 + 8))(v44, v88);
    goto LABEL_29;
  }

  v50 = v103;
  v51 = (v103 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_actionHandler);
  swift_beginAccess();
  v52 = *v51;
  if (*v51)
  {
    v100 = v51[1];
    v101 = v52;
    v53 = v44;
    *(swift_allocObject() + 16) = v98;

    sub_1E1AF388C();
    sub_1E1AF387C();
    v54 = v88;
    ObjectType = v88;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v105);
    i = v41;
    v56 = v90 + 16;
    v104 = *(v90 + 16);
    v104(boxed_opaque_existential_0, v44, v54);
    sub_1E1AF385C();
    sub_1E1308058(v105, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    type metadata accessor for JSIntentDispatcher();
    v57 = *(v50 + OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v58 = v104;
    v103 = v105[0];
    v59 = v84;
    v60 = v87;
    v61 = (v87 + *(v84 + 20));
    v97 = v56;
    v104(v61, v53, v54);
    strcpy(v60, "ActionIntent");
    *(v60 + 13) = 0;
    *(v60 + 14) = -5120;
    *(v60 + *(v59 + 24)) = 0;
    v62 = v60 + *(v59 + 28);
    *v62 = xmmword_1E1B04490;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = 0;
    *(v62 + 40) = 0;
    v99 = sub_1E1368108(v60, v57, "AppStoreKit/InlineUnifiedMessagePresenter.swift", 47, 2);
    v63 = v86;
    v58(v86, v53, v54);
    v64 = v90;
    v65 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v66 = (v85 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *&v98 = v67;
    v68 = *(v64 + 32);
    v68(v67 + v65, v63, v54);
    v69 = (v67 + v66);
    v70 = v100;
    v71 = v101;
    *v69 = v101;
    v69[1] = v70;
    v72 = v53;
    v73 = v54;
    v104(v63, v72, v54);
    v74 = swift_allocObject();
    v68(v74 + v65, v63, v73);
    v75 = (v74 + v66);
    *v75 = v71;
    v75[1] = v70;
    v76 = sub_1E13006E4(0, &qword_1EE1E3430);
    sub_1E1300E34(v71);

    v77 = sub_1E1AF68EC();
    ObjectType = v76;
    v107 = MEMORY[0x1E69AB720];
    v105[0] = v77;
    sub_1E1AF57FC();

    sub_1E1300EA8(v71);

    sub_1E14D28AC(v87);
    (*(v90 + 8))(v89, v73);
    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  else
  {
    *(swift_allocObject() + 16) = v98;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v81 = v88;
    ObjectType = v88;
    v82 = __swift_allocate_boxed_opaque_existential_0(v105);
    v83 = v90;
    (*(v90 + 16))(v82, v44, v81);
    sub_1E1AF385C();
    sub_1E1308058(v105, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    return (*(v83 + 8))(v44, v81);
  }
}

uint64_t sub_1E164A510(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v9 = sub_1E1AEFCCC();
  v13 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);
  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v13 = type metadata accessor for Action();
  v12[0] = v7;

  sub_1E1AF385C();
  sub_1E1308058(v12, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return a3(v7);
}

uint64_t sub_1E164A7B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v61 = a4;
  v62 = a3;
  v74 = a2;
  v71 = a1;
  v59 = sub_1E1AEFEAC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v56 - v8;
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E1AF3E1C();
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v56 - v14;
  v15 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v79 = sub_1E1AF591C();
  v73 = __swift_project_value_buffer(v79, qword_1EE1E35C8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v16 = *(sub_1E1AF38EC() - 8);
  v77 = *(v16 + 72);
  v17 = *(v16 + 80);
  v18 = swift_allocObject();
  v76 = xmmword_1E1B02CC0;
  *(v18 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v89 + 1) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v88);
  v75 = *(v10 + 16);
  v20 = v74;
  v75(boxed_opaque_existential_0, v74, v9);
  sub_1E1AF385C();
  v72 = v10;
  sub_1E1308058(&v88, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  swift_getErrorValue();
  v21 = sub_1E1AF75AC();
  *(&v89 + 1) = MEMORY[0x1E69E6158];
  *&v88 = v21;
  *(&v88 + 1) = v22;
  sub_1E1AF385C();
  sub_1E1308058(&v88, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  v67 = v17;
  *(swift_allocObject() + 16) = v76;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v89 + 1) = v9;
  v23 = __swift_allocate_boxed_opaque_existential_0(&v88);
  v71 = v10 + 16;
  v75(v23, v20, v9);
  sub_1E1AF385C();
  sub_1E1308058(&v88, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v66 = (v17 + 32) & ~v17;
  sub_1E1AF38AC();
  sub_1E1AF548C();

  sub_1E1AEFBDC();
  v24 = v70;
  sub_1E1AF3DFC();
  type metadata accessor for ExternalUrlAction();
  v25 = swift_allocObject();
  v26 = v65;
  v27 = v72;
  sub_1E1AEFCAC();

  v28 = v26;
  if ((*(v27 + 48))(v26, 1, v9) == 1)
  {
    (*(v69 + 8))(v24, v68);
    sub_1E1308058(v26, &unk_1ECEB4B60);
    swift_deallocPartialClassInstance();
    *(swift_allocObject() + 16) = v76;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v89 + 1) = v9;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v88);
    v75(v29, v74, v9);
    sub_1E1AF385C();
    sub_1E1308058(&v88, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  else
  {
    v31 = *(v27 + 32);
    v32 = v24;
    v33 = v63;
    v31(v63, v28, v9);
    v34 = v9;
    v35 = v9;
    v36 = v75;
    v75((v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url), v33, v35);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
    v37 = v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v37 = 0;
    *(v37 + 8) = 1;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v38 = v69;
    v39 = v64;
    v40 = v68;
    (*(v69 + 16))(v64, v32, v68);
    v41 = sub_1E1AF46DC();
    v42 = v60;
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v43 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v43 = 0u;
    v43[1] = 0u;
    sub_1E134FD1C(&v88, &v82, &unk_1ECEB5670);
    if (*(&v83 + 1))
    {
      v85 = v82;
      v86 = v83;
      v87 = v84;
    }

    else
    {
      v44 = v36;
      v45 = v57;
      sub_1E1AEFE9C();
      v46 = sub_1E1AEFE7C();
      v48 = v47;
      v49 = v45;
      v36 = v44;
      v33 = v63;
      (*(v58 + 8))(v49, v59);
      v80 = v46;
      v38 = v69;
      v81 = v48;
      v39 = v64;
      sub_1E1AF6F6C();
      sub_1E1308058(&v82, &unk_1ECEB5670);
    }

    sub_1E1308058(&v88, &unk_1ECEB5670);
    (*(v72 + 8))(v33, v34);
    (*(v38 + 8))(v70, v40);
    v50 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v51 = v86;
    *v50 = v85;
    *(v50 + 16) = v51;
    *(v50 + 32) = v87;
    sub_1E134B7C8(v42, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    (*(v38 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v39, v40);
    *(swift_allocObject() + 16) = v76;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v89 + 1) = v34;
    v52 = __swift_allocate_boxed_opaque_existential_0(&v88);
    v36(v52, v74, v34);
    sub_1E1AF385C();
    sub_1E1308058(&v88, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    v53 = swift_allocObject();
    v54 = v62;
    v55 = v61;
    *(v53 + 16) = v62;
    *(v53 + 24) = v55;
    *(&v89 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4B70);
    *&v88 = sub_1E14D3B10;
    *(&v88 + 1) = v53;

    sub_1E1AF385C();
    sub_1E1308058(&v88, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v54(v25);
  }
}

uint64_t InlineUnifiedMessagePresenter.messageViewController(_:didUpdate:)(id a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (qword_1EE1E35C0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE1E35C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    ObjectType = swift_getObjectType();
    v21[0] = a1;
    a1 = a1;
    sub_1E1AF385C();
    sub_1E1308058(v21, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    type metadata accessor for CGSize(0);
    ObjectType = v10;
    *v21 = a2;
    *&v21[1] = a3;
    sub_1E1AF385C();
    sub_1E1308058(v21, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    v11 = OBJC_IVAR____TtC11AppStoreKit29InlineUnifiedMessagePresenter_inlineViewControllers;
    swift_beginAccess();
    v12 = *(v4 + v11);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v4 = (v13 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    if (v15)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v4)
      {
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  while (1)
  {
    v17 = v16;
LABEL_9:
    v18 = *(*(v12 + 56) + 8 * (__clz(__rbit64(v15)) | (v17 << 6)));
    sub_1E13006E4(0, &qword_1EE1E31E0);

    v19 = v18;
    if (sub_1E1AF6D0C())
    {
      break;
    }

    v15 &= v15 - 1;

    v16 = v17;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  sub_1E1AF35BC();
}

void InlineUnifiedMessagePresenter.engagement(_:didUpdate:placement:serviceType:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  *&v43 = a5;
  *(&v43 + 1) = a6;
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E1AF591C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1EE1E35C8);
  v44 = v13;
  v17 = *(v13 + 16);
  v38 = v16;
  v17(v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v19 = *(sub_1E1AF38EC() - 8);
  v20 = *(v19 + 72);
  v42 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = v20;
  v37 = v18;
  v21 = swift_allocObject();
  v35 = xmmword_1E1B02CC0;
  *(v21 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v48 + 1) = sub_1E13006E4(0, &qword_1EE1E3490);
  *&v47 = a1;
  v22 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v45 = a3;
  if (a2)
  {
    v23 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v24 = a2;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    *(&v47 + 1) = 0;
    *&v48 = 0;
  }

  v25 = v46;
  *&v47 = v24;
  *(&v48 + 1) = v23;
  v26 = a2;
  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v27 = MEMORY[0x1E69E6158];
  v40 = v26;
  v41 = a2;
  if (a2 && (v28 = [v26 identifier]) != 0)
  {
    v29 = v28;
    v30 = sub_1E1AF5DFC();
    v32 = v31;

    *(&v48 + 1) = v27;
    *&v47 = v30;
    *(&v47 + 1) = v32;
    v25 = v46;
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  *(&v48 + 1) = v27;
  v33 = v45;
  *&v47 = v45;
  *(&v47 + 1) = v25;

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  *(&v48 + 1) = v27;
  v47 = v43;

  sub_1E1AF385C();
  sub_1E1308058(&v47, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  (*(v44 + 8))(v15, v12);
  if (v41)
  {
    v34 = v40;
    sub_1E1648F20(v33, v25);
    InlineUnifiedMessagePresenter.prepareInlineViewController(for:placement:)(v34, v33, v25);
  }

  else
  {
    *(swift_allocObject() + 16) = v35;
    sub_1E1AF388C();
    sub_1E1AF387C();
    *(&v48 + 1) = v27;
    *&v47 = v33;
    *(&v47 + 1) = v25;

    sub_1E1AF385C();
    sub_1E1308058(&v47, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    *&v47 = v33;
    *(&v47 + 1) = v25;
    sub_1E1AF35BC();
    swift_beginAccess();

    sub_1E138796C(0, v33, v25);
    swift_endAccess();
  }
}

void sub_1E164C180(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

id InlineUnifiedMessagePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InlineUnifiedMessagePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E164C49C(uint64_t *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E164A510(a1, v1 + v4, v5);
}

uint64_t sub_1E164C53C(uint64_t a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1E164A7B8(a1, v1 + v4, v6, v7);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_16didFailWithErrorySo012AMSUIMessageiJ0_So06UIViewJ0CXc_s0N0_pSgtF_0(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  ObjectType = swift_getObjectType();
  v16[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  if (a2)
  {
    swift_getErrorValue();
    v11 = sub_1E1AF75AC();
    v13 = MEMORY[0x1E69E6158];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[2] = 0;
  }

  v16[0] = v11;
  v16[1] = v12;
  ObjectType = v13;
  sub_1E1AF385C();
  sub_1E1308058(v16, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_22enqueueEventWithFields7inTopicySo012AMSUIMessageiJ0_So06UIViewJ0CXc_SDys11AnyHashableVypGSSSgtF_0(void *a1, uint64_t a2)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v41 - v6;
  v7 = sub_1E1AF4A9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v41 - v15;
  v16 = sub_1E1AF3ABC();
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E14AD4CC(a2);
  if (v18)
  {
    v19 = v18;
    v42 = v16;
    v43 = v8;
    v44 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
    v20 = sub_1E1AF523C();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF51FC();
    sub_1E1498AF4(v23);
    swift_setDeallocating();
    (*(v21 + 8))(v23 + v22, v20);
    swift_deallocClassInstance();
    if (*(v19 + 16))
    {
      v24 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
      if (v25)
      {
        sub_1E137A5C4(*(v19 + 56) + 32 * v24, &v56);
        if (swift_dynamicCast())
        {
          v26 = HIBYTE(*(&v54[0] + 1)) & 0xFLL;
          if ((*(&v54[0] + 1) & 0x2000000000000000) == 0)
          {
            v26 = *&v54[0] & 0xFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            v27 = v43;
LABEL_14:
            sub_1E1AF3A7C();
            if (qword_1EE1F3430 != -1)
            {
              swift_once();
            }

            v31 = off_1EE1F3438;
            swift_beginAccess();
            v32 = v31[11];
            v58 = 0;
            v56 = 0u;
            v57 = 0u;
            v55 = 0;
            memset(v54, 0, sizeof(v54));

            sub_1E1AF4A8C();
            LOBYTE(v53[0]) = 0;
            if (qword_1EE1E3928 != -1)
            {
              swift_once();
            }

            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
            __swift_project_value_buffer(v33, qword_1EE1E3930);
            sub_1E1AF4A3C();
            v34 = *(v27 + 8);
            v34(v13, v7);
            v35 = *(v27 + 32);
            v35(v13, v10, v7);
            if (v32)
            {
              v53[0] = v32;
              v36 = v45;
              sub_1E1AF4A5C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
              sub_1E1AF4A3C();
              (*(v46 + 8))(v36, v47);
              v34(v13, v7);
              v35(v13, v10, v7);
            }

            sub_1E134FD1C(&v56, &v51, &unk_1ECEB7230);
            if (v52)
            {
              sub_1E1308EC0(&v51, v53);
              if (qword_1EE1D28F8 != -1)
              {
                swift_once();
              }

              v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
              __swift_project_value_buffer(v37, qword_1EE1D2900);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
              sub_1E1AF4A3C();
              __swift_destroy_boxed_opaque_existential_1(v53);
              v34(v13, v7);
              v35(v13, v10, v7);
            }

            else
            {
              sub_1E1308058(&v51, &unk_1ECEB7230);
            }

            sub_1E134FD1C(v54, &v51, &qword_1ECEB2B70);
            if (v52)
            {
              sub_1E1308EC0(&v51, v53);
              if (qword_1EE1D28B0 != -1)
              {
                swift_once();
              }

              v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
              __swift_project_value_buffer(v38, qword_1EE1D28B8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
              sub_1E1AF4A3C();
              __swift_destroy_boxed_opaque_existential_1(v53);
              v34(v13, v7);
              v35(v13, v10, v7);
            }

            else
            {
              sub_1E1308058(&v51, &qword_1ECEB2B70);
            }

            sub_1E1308058(v54, &qword_1ECEB2B70);
            sub_1E1308058(&v56, &unk_1ECEB7230);
            v39 = v49;
            v35(v49, v13, v7);
            v40 = v50;
            sub_1E1AF434C();

            v34(v39, v7);
            return (*(v48 + 8))(v40, v42);
          }
        }
      }
    }

    v27 = v43;
    goto LABEL_14;
  }

  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1E1AF591C();
  __swift_project_value_buffer(v28, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(&v57 + 1) = swift_getObjectType();
  *&v56 = a1;
  v29 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
  *&v56 = a2;

  sub_1E1AF386C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF54AC();
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0L6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v16 = sub_1E13006E4(0, &qword_1EE1E3490);
  v15[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  if (a2)
  {
    v11 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v16 = v11;
  v13 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_6handle10completionySo13AMSEngagementC_So0K7RequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_1EE1E35C8);
  (*(v6 + 16))(v8, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v16 = sub_1E13006E4(0, &qword_1EE1E3490);
  v15[0] = a1;
  v10 = a1;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  if (a2)
  {
    v11 = sub_1E13006E4(0, &unk_1ECEB5F50);
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v12;
  v16 = v11;
  v13 = a2;
  sub_1E1AF385C();
  sub_1E1308058(v15, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0O7RequestCSgS2SySo0O6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a3;
  v9 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E1AF591C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_1EE1E35C8);
  (*(v11 + 16))(v13, v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v28 = sub_1E13006E4(0, &qword_1EE1E3490);
  v25 = a1;
  v15 = a1;
  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  if (a2)
  {
    v16 = sub_1E13006E4(0, &unk_1ECEB5F50);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v26 = 0;
    v27 = 0;
  }

  v25 = v17;
  v28 = v16;
  v18 = a2;
  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v19 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6158];
  v25 = v22;
  v26 = a4;

  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v28 = v19;
  v25 = v23;
  v26 = v24;

  sub_1E1AF385C();
  sub_1E1308058(&v25, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for InlineUnifiedMessagePresenter()
{
  result = qword_1EE1E8908;
  if (!qword_1EE1E8908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E164DE28()
{
  result = sub_1E1AF436C();
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

void sub_1E164DF4C()
{
  if (qword_1EE1E3210 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1E3218;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithHierarchicalColor_];

  qword_1ECEF45A0 = v3;
}

void sub_1E164DFE4()
{
  v0 = [objc_opt_self() systemGrayColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor_];

  qword_1ECEF45A8 = v1;
}

void sub_1E164E058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B12AE0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemOrangeColor];
  *(v0 + 40) = [v1 systemGrayColor];
  sub_1E1355E88();
  v2 = sub_1E1AF620C();

  v3 = [objc_opt_self() configurationWithPaletteColors_];

  qword_1ECEF45B0 = v3;
}

__n128 SearchResultsContent.__allocating_init(results:nextPage:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  return result;
}

uint64_t SearchResultsContent.init(results:nextPage:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return v2;
}

uint64_t SearchResultsContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResultsContent.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchResultsContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v42 = a2;
  v46 = v4;
  v39 = *v4;
  v40 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v41 = *(v13 + 8);
  v41(v17, v12);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB1F90);
    v22 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v23 = 0x73746C75736572;
    v24 = v39;
    v23[1] = 0xE700000000000000;
    v23[2] = v24;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v42, v25);
    v41(v43, v12);
    v26 = v46;
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v19 + 32))(v21, v11, v18);
    (*(v19 + 16))(v8, v21, v18);
    (*(v19 + 56))(v8, 0, 1, v18);
    v39 = v12;
    v27 = v42;
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s11AppStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v8, v42);
    sub_1E1308058(v8, &qword_1ECEB1F90);
    v29 = MEMORY[0x1E69E7CC0];
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v29 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    v26 = v46;
    v46[2] = v29;
    v30 = v38;
    v31 = v43;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v32 = sub_1E1AF39DC();
    (*(*(v32 - 8) + 8))(v27, v32);
    v33 = v31;
    v34 = v39;
    v35 = v41;
    v41(v33, v39);
    v35(v30, v34);
    (*(v19 + 8))(v21, v18);
    v36 = v45;
    *(v26 + 3) = v44;
    *(v26 + 5) = v36;
  }

  return v26;
}

uint64_t SearchResultsContent.deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB2DF0);
  return v0;
}

uint64_t SearchResultsContent.__deallocating_deinit()
{

  sub_1E1308058(v0 + 24, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

void *sub_1E164E7B0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchResultsContent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

AppStoreKit::TopShelf::Style_optional __swiftcall TopShelf.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TopShelf.Style.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6573756F726163;
  }

  else
  {
    return 0x7465736E69;
  }
}

uint64_t sub_1E164E95C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v3 = 0xEF736C6961746544;
  }

  if (*a1)
  {
    v4 = 0x6C6573756F726163;
  }

  else
  {
    v4 = 0x7465736E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEF736E6F69746341;
  if (*a2 != 1)
  {
    v6 = 0xEF736C6961746544;
  }

  if (*a2)
  {
    v7 = 0x6C6573756F726163;
  }

  else
  {
    v7 = 0x7465736E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

uint64_t sub_1E164EA54()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E164EB0C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E164EBB0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E164EC70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEF736E6F69746341;
  if (v2 != 1)
  {
    v4 = 0xEF736C6961746544;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6C6573756F726163;
  }

  else
  {
    v6 = 0x7465736E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t TopShelf.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  TopShelf.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TopShelf.init(deserializing:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v55 = a2;
  v44 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v43 - v6;
  v7 = sub_1E1AF5A6C();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF39DC();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v50 = a1;
  sub_1E1AF381C();
  sub_1E164F390();
  sub_1E1AF36DC();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v51 = v20;
  v52 = v12;
  v20(v18, v12);
  v21 = v57;
  if (v57 == 3)
  {
    v22 = sub_1E1AF5A7C();
    sub_1E164F78C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v23 = 0x656C797473;
    v23[1] = 0xE500000000000000;
    v23[2] = v44;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v51(v50, v52);
    type metadata accessor for TopShelf();
    swift_deallocPartialClassInstance();
    (*(v53 + 8))(v55, v54);
    return v3;
  }

  *(v3 + 16) = v57;
  type metadata accessor for TopShelfPromotionItem();
  v25 = v3;
  v43 = v3;
  v26 = v50;
  sub_1E1AF381C();
  (*(v53 + 16))(v11, v55, v54);
  sub_1E164F78C(&qword_1ECEB7270, type metadata accessor for TopShelfPromotionItem);
  sub_1E1AF464C();
  v25[3] = v56;
  sub_1E1AF381C();
  v27 = v45;
  sub_1E1AF374C();
  v29 = v51;
  v28 = v52;
  v51(v15, v52);
  v31 = v48;
  v30 = v49;
  v32 = (*(v48 + 48))(v27, 1, v49);
  v24 = v43;
  if (v32 == 1)
  {
    sub_1E14352B8(v27);
    v29(v26, v28);
    v33 = MEMORY[0x1E69E7CC0];
    v35 = v54;
    v34 = v55;
    v36 = v53;
LABEL_10:
    v24[4] = v33;
    (*(v36 + 8))(v34, v35);
    return v24;
  }

  v44 = v19;
  (*(v31 + 32))(v46, v27, v30);
  v37 = v47;
  if (v21)
  {
    v38 = type metadata accessor for TopShelfCarouselItem();
  }

  else
  {
    v38 = type metadata accessor for TopShelfInsetItem();
  }

  v35 = v54;
  v34 = v55;
  v36 = v53;
  v55 = &v43;
  MEMORY[0x1EEE9AC00](v38);
  *(&v43 - 2) = v39;
  *(&v43 - 1) = v34;
  type metadata accessor for TopShelfItem();
  v40 = v46;
  v41 = sub_1E1AF59FC();
  if (!v37)
  {
    v33 = v41;
    v51(v26, v52);
    (*(v48 + 8))(v40, v49);
    goto LABEL_10;
  }

  type metadata accessor for TopShelf();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_1E164F390()
{
  result = qword_1ECEB7268;
  if (!qword_1ECEB7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7268);
  }

  return result;
}

uint64_t sub_1E164F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  (*(v6 + 16))(v8, a3, v5);
  type metadata accessor for TopShelfItem();
  sub_1E164F78C(&qword_1ECEB7280, type metadata accessor for TopShelfItem);
  return sub_1E1AF464C();
}

uint64_t TopShelf.deinit()
{

  return v0;
}

uint64_t TopShelf.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1E164F680()
{
  result = qword_1ECEB7278;
  if (!qword_1ECEB7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7278);
  }

  return result;
}

uint64_t sub_1E164F6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelf();
  v7 = swift_allocObject();
  result = TopShelf.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E164F78C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UserEngagementManager.shared.getter()
{
  if (qword_1EE1ECA60 != -1)
  {
    swift_once();
  }
}

uint64_t UserEngagementManager.defaultTabIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_1E164F880(v3, v4);
}

uint64_t sub_1E164F880(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_1E13BC260(a1, a2);
  }

  return a1;
}

uint64_t sub_1E164F890()
{
  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v4);
  sub_1E1AF54AC();
}

uint64_t UserEngagementManager.deinit()
{
  sub_1E13017D4(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t UserEngagementManager.__deallocating_deinit()
{
  sub_1E13017D4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t AppIconSnapshotCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E159F1F4(MEMORY[0x1E69E7CC0]);
  return v0;
}

void *AppIconSnapshotCache.snapshot(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_1E135FCF4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v7 = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t AppIconSnapshotCache.insertSnapshot(_:for:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1E15992F0(v6, a2, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v9;
  return swift_endAccess();
}

Swift::Void __swiftcall AppIconSnapshotCache.clearCache()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t AppIconSnapshotCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ProductReviewActions.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v38 = *v4;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v47 = sub_1E1AF380C();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;

  v51 = a1;
  sub_1E1AF381C();
  v48 = v8;
  v41 = *(v8 + 16);
  v42 = v8 + 16;
  v41(v12, a2, v7);
  type metadata accessor for TapToRate();
  swift_allocObject();
  v20 = TapToRate.init(deserializing:using:)(v19, v12);
  v49 = v7;
  if (v3)
  {
    v21 = a2;

    v20 = 0;
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v21 = a2;
  }

  v45 = OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_tapToRate;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_tapToRate) = v20;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v22 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v23 = *(v50 + 8);
  v24 = v47;
  v23(v16, v47);
  v39 = OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_writeReviewAction;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_writeReviewAction) = v22;
  v25 = v45;
  sub_1E1AF381C();
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, v21);
  v46 = v23;
  v23(v16, v24);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit20ProductReviewActions_supportAction) = v26;
  if (*(v4 + v25) || *(v4 + v39) || (, , v26))
  {

    v27 = v43;
    v28 = v51;
    (*(v50 + 16))(v43, v51, v24);
    v29 = v44;
    v30 = v49;
    v41(v44, v21, v49);
    v31 = v40;
    v32 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v27, v29);
    if (v31)
    {
      (*(v48 + 8))(v21, v30);
      return v46(v28, v24);
    }

    else
    {
      v34 = v32;
      (*(v48 + 8))(v21, v30);
      v46(v28, v24);
      return v34;
    }
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v36 = 0xD000000000000029;
    v36[1] = 0x80000001E1B6C1B0;
    v36[2] = v38;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v48 + 8))(v21, v49);
    v46(v51, v24);

    type metadata accessor for ProductReviewActions();
    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_1E1650398()
{
}

uint64_t ProductReviewActions.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t ProductReviewActions.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductReviewActions()
{
  result = qword_1ECEB7288;
  if (!qword_1ECEB7288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AppStoreKit::ItemBackground_optional __swiftcall ItemBackground.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ItemBackground.rawValue.getter()
{
  v1 = 25697;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x65736E65646E6F63;
  }

  if (*v0)
  {
    v1 = 0x64417465736E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E16506A4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E165076C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1650820()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16508F0(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25697;
  v4 = 0x80000001E1B56AE0;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x65736E65646E6F63;
    v4 = 0xEF68637261655364;
  }

  if (*v1)
  {
    v3 = 0x64417465736E69;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1E1650998()
{
  result = qword_1ECEB7298;
  if (!qword_1ECEB7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7298);
  }

  return result;
}

uint64_t _JetTraceAggregator.__allocating_init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v8 = sub_1E1AF68DC();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v20 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = swift_allocObject();
  *(v12 + 32) = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 128) = sub_1E159F790(MEMORY[0x1E69E7CC0]);
  v14 = sub_1E159F92C(v13);
  v15 = MEMORY[0x1E69E7CD0];
  *(v12 + 136) = v14;
  *(v12 + 144) = v15;
  *(v12 + 152) = v13;
  *(v12 + 160) = v13;
  *(v12 + 168) = v13;
  *(v12 + 176) = 0;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  swift_beginAccess();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  v16 = objc_allocWithZone(MEMORY[0x1E696AD10]);
  v19 = a1;
  *(v12 + 80) = [v16 init];
  sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF322C();
  v23 = v13;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8090], v22);
  v17 = sub_1E1AF692C();

  *(v12 + 88) = v17;
  return v12;
}

Swift::Void __swiftcall _JetTraceAggregator.start()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  sub_1E1651B04(v0);

  [v1 unlock];
}

Swift::Void __swiftcall _JetTraceAggregator.stop()()
{
  v1 = *(v0 + 80);
  [v1 lock];
  v2 = *(v0 + 176);
  if (v2)
  {
    v3 = *(v2 + 24);

    [v3 lock];
    *(v2 + 16) = 1;
    [v3 unlock];
  }

  *(v0 + 176) = 0;

  [v1 unlock];
}

uint64_t sub_1E1650E98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40);
  v6 = *(v5 - 8);
  v7 = v6;
  if (v4)
  {
    sub_1E134FD1C(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, &qword_1ECEB4D40);
    (*(v7 + 56))(a1, 0, 1, v5);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40) - 8);
    sub_1E14E665C(v3, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), 1, (2 * v4) | 1);
    v3 = v9;
  }

  else
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  *v1 = v3;
  return result;
}

uint64_t _JetTraceAggregator.TimedEvent.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1E1651088()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E16510C8()
{
  sub_1E13006E4(0, &qword_1ECEB72A8);
  result = sub_1E1AF6D7C();
  qword_1ECEB72A0 = result;
  return result;
}

uint64_t sub_1E165115C()
{
  sub_1E13006E4(0, &qword_1EE1E34B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CD0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1E13C2F48();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001E1B6C410;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x656361725474656ALL;
  *(v0 + 80) = 0xE800000000000000;
  result = sub_1E1AF678C();
  qword_1EE1EE5E0 = result;
  return result;
}

uint64_t sub_1E1651268()
{
  sub_1E13006E4(0, &qword_1EE1E34B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CD0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1E13C2F48();
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000001E1B6C5E0;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0x5D74656A5BLL;
  *(v0 + 80) = 0xE500000000000000;
  result = sub_1E1AF678C();
  qword_1EE1EE698 = result;
  return result;
}

uint64_t _JetTraceAggregator.init(signpostPredicate:aggregationWindow:signpostTimeout:activityTimeout:)(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1E1AF68DC();
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v21 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  *(v4 + 32) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  v14 = MEMORY[0x1E69E7CC0];
  *(v4 + 128) = sub_1E159F790(MEMORY[0x1E69E7CC0]);
  v15 = sub_1E159F92C(v14);
  v16 = MEMORY[0x1E69E7CD0];
  *(v4 + 136) = v15;
  *(v4 + 144) = v16;
  *(v4 + 152) = v14;
  *(v4 + 160) = v14;
  *(v4 + 168) = v14;
  *(v4 + 176) = 0;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  swift_beginAccess();
  v17 = *(v4 + 16);
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v20 = a1;
  sub_1E1300EA8(v17);
  *(v4 + 80) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E1AF322C();
  v24 = v14;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8090], v23);
  v18 = sub_1E1AF692C();

  *(v5 + 88) = v18;
  return v5;
}

uint64_t sub_1E165167C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E165565C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E1651710(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E1655634;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t _JetTraceAggregator.didFinishEvent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t _JetTraceAggregator.didFinishEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1E1300EA8(v5);
}

uint64_t sub_1E16518C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E163E910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E1651954(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E163E8D8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t _JetTraceAggregator.shouldRecordActivity.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t _JetTraceAggregator.shouldRecordActivity.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1E1300EA8(v5);
}

uint64_t sub_1E1651B04(uint64_t a1)
{
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + 176);
  if (v6)
  {
    v7 = *(v6 + 24);

    [v7 lock];
    *(v6 + 16) = 1;
    [v7 unlock];
  }

  swift_beginAccess();
  sub_1E134FD1C(a1 + 96, aBlock, &qword_1ECEB2DF0);
  v8 = v17;
  sub_1E1308058(aBlock, &qword_1ECEB2DF0);
  if (!v8)
  {
    v9 = [objc_opt_self() sharedCoordinator];
    v18 = j___s11AppStoreKit19_JetTraceAggregatorC4stopyyF;
    v19 = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    v17 = &block_descriptor_41;
    v10 = _Block_copy(aBlock);

    v11 = [v9 registerCleanupHandler_];
    _Block_release(v10);

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1E137F818(aBlock, a1 + 96);
    swift_endAccess();
  }

  sub_1E1AEFE5C();
  type metadata accessor for _JetTraceAggregator.CancellableAggregation();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  *(v12 + 32) = 0;
  v13 = sub_1E1655688(v5, v12);

  (*(v3 + 8))(v5, v2);
  *(a1 + 176) = v13;
}

id sub_1E1651DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-1] - v12;
  v14 = *(a1 + 24);
  [v14 lock];
  v15 = *(a1 + 16);
  result = [v14 unlock];
  if ((v15 & 1) == 0)
  {
    sub_1E1AEFE5C();
    sub_1E165201C(a3, a1);
    (*(v7 + 16))(v9, v13, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = a1;
    v20 = sub_1E13006E4(0, &qword_1EE1E3430);

    v21 = sub_1E1AF68EC();
    v23[3] = v20;
    v23[4] = MEMORY[0x1E69AB720];
    v23[0] = v21;
    sub_1E1AF583C();

    (*(v7 + 8))(v13, v6);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1E165201C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v6 = sub_1E1AF588C();
  v16 = [objc_opt_self() localStore];
  v23 = sub_1E1655DFC;
  v24 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E16527D0;
  v22 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);

  [v16 setProgressHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v9, v17, v2);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  (*(v3 + 32))(v12 + v10, v9, v2);
  *(v12 + v11) = v18;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v23 = sub_1E1655E04;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E14CC840;
  v22 = &block_descriptor_52;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v16 prepareWithCompletionHandler_];
  _Block_release(v13);

  return v6;
}

void sub_1E1652428(void *a1, double a2)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if ((sub_1E1AF57BC() & 1) == 0)
  {
    if (a1)
    {
      v5 = a1;
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v6 = sub_1E1AF591C();
      __swift_project_value_buffer(v6, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      swift_getErrorValue();
      v10[3] = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0);
      sub_1E1AF385C();
      sub_1E1308058(v10, &qword_1ECEB2DF0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();
    }

    if (a2 >= 1.0)
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v8 = sub_1E1AF591C();
      __swift_project_value_buffer(v8, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      LOBYTE(v10[0]) = 1;
      sub_1E1AF586C();
    }
  }
}

void sub_1E16527D0(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1E165284C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = a1;
  v10 = a2;
  sub_1E13006E4(0, &qword_1EE1E3450);
  sub_1E1AF55CC();
  v34 = aBlock;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B0);
  sub_1E1AF55DC();
  sub_1E1655EC0(aBlock);
  v11 = v33;
  v12 = [objc_allocWithZone(MEMORY[0x1E69AD3D0]) initWithSource_];
  [v12 setFlags_];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E1B12AE0;
    v16 = *(v14 + 48);
    *(v15 + 32) = v16;
    v17 = qword_1ECEB0F48;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_1EE1EE698;
    *(v15 + 40) = qword_1EE1EE698;
    sub_1E13006E4(0, &qword_1EE1E34B8);
    v20 = v19;
    v21 = sub_1E1AF620C();

    v22 = [objc_opt_self() orPredicateWithSubpredicates_];
  }

  else
  {
    v22 = 0;
  }

  [v12 setFilterPredicate_];

  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v31 = sub_1E1655ECC;
  v32 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1E1367148;
  v30 = &block_descriptor_56;
  v24 = _Block_copy(&aBlock);

  [v12 setEventHandler_];
  _Block_release(v24);
  v25 = sub_1E1AEFDBC();
  [v12 activateStreamFromDate_];

  v26 = *(a5 + 32);
  *(a5 + 32) = v12;
}

uint64_t sub_1E1652DAC(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1652E0C(a1);
  }

  return result;
}

uint64_t sub_1E1652E0C(void *a1)
{
  v3 = sub_1E1AF320C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1655ED4(a1, v20);
  v9 = swift_allocObject();
  v10 = v20[3];
  *(v9 + 48) = v20[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = v20[4];
  v11 = v21;
  v12 = v20[1];
  *(v9 + 16) = v20[0];
  *(v9 + 32) = v12;
  *(v9 + 96) = v11;
  *(v9 + 104) = v1;
  aBlock[4] = sub_1E16560D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_62;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v5, v13);
  _Block_release(v13);
  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1E16530F0(uint64_t a1)
{
  sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](a1);
  v3 = *v2;
  if (*v2 == 513)
  {
    sub_1E1653578(v2);
  }

  else if (v3 == 1536)
  {
    sub_1E1653320(v2);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    type metadata accessor for OSLogEventType(0);
    v7[3] = v5;
    v7[0] = v3;
    sub_1E1AF385C();
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }

  return sub_1E1653E74();
}

uint64_t sub_1E1653320(uint64_t a1)
{
  sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](a1);
  v3 = *(v2 + 48);
  if (v3 == 2)
  {

    return sub_1E1654B08(v2);
  }

  else if (v3 == 1)
  {

    return sub_1E16547E8(v2);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    type metadata accessor for OSLogEventSignpostType(0);
    v7[3] = v6;
    v7[0] = v3;
    sub_1E1AF385C();
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1653578(void *a1)
{
  v2 = v1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = (&v80 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v92 = (&v80 - v10);
  v90 = sub_1E1AEFE6C();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v80 - v15;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v20 = a1[2];
  if (!v20 || (*&v96 = a1[1], *(&v96 + 1) = v20, *&v95[0] = 0x5D74656A5BLL, *(&v95[0] + 1) = 0xE500000000000000, sub_1E1656488(), sub_1E16564DC(), , (sub_1E1AF5D4C() & 1) == 0))
  {
    swift_beginAccess();
    if (!*(v1[17] + 16) || (sub_1E15A47C8(a1[5]), (v22 & 1) == 0))
    {
      swift_endAccess();
    }

    swift_endAccess();
  }

  sub_1E1AEFE9C();
  v82 = sub_1E1AEFE7C();
  v81 = v23;
  (*(v17 + 8))(v19, v16);
  v24 = a1[4];
  v80 = a1[5];
  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_1E1AF602C();

  if (v27)
  {
    v28 = sub_1E1AF5F1C();
    v29 = sub_1E150FD68(v28, v25, v26);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x1E68FEBF0](v29, v31, v33, v35);
    v37 = v36;
  }

  else
  {
    v37 = v26;
  }

  v39 = v88;
  if (sub_1E1AF602C())
  {
    v40 = sub_1E150FD68(1uLL, v25, v37);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v25 = MEMORY[0x1E68FEBF0](v40, v42, v44, v46);
    v37 = v47;
  }

  *&v96 = v25;
  *(&v96 + 1) = v37;
  v48 = sub_1E1AF608C();
  v50 = v49;

  *&v96 = v82;
  *(&v96 + 1) = v81;
  *&v97 = v24;
  *(&v97 + 1) = v80;
  *&v98 = v48;
  *(&v98 + 1) = v50;
  swift_beginAccess();
  sub_1E1656420(&v96, v95);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v95[0] = v2[17];
  v2[17] = 0x8000000000000000;
  sub_1E159B5C4(&v96, v24, isUniquelyReferenced_nonNull_native);
  v2[17] = *&v95[0];
  swift_endAccess();
  v52 = v89;
  sub_1E1AEFE5C();
  v53 = v86;
  sub_1E1AEFDAC();
  v54 = v93;
  v55 = *(v93 + 8);
  v56 = v52;
  v57 = v90;
  v55(v56, v90);
  v58 = *(v39 + 48);
  v59 = v92;
  *v92 = v24;
  v60 = *(v54 + 32);
  v93 = v54 + 32;
  v60(v59 + v58, v53, v57);
  sub_1E134FD1C(v59, v91, &qword_1ECEB4D40);
  v61 = v2[20];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v2[20] = v61;
  if ((v62 & 1) == 0)
  {
    v61 = sub_1E172ECAC(0, v61[2] + 1, 1, v61);
    v2[20] = v61;
  }

  v64 = v61[2];
  v63 = v61[3];
  v65 = v39;
  if (v64 >= v63 >> 1)
  {
    v61 = sub_1E172ECAC(v63 > 1, v64 + 1, 1, v61);
    v2[20] = v61;
  }

  v61[2] = v64 + 1;
  v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v66 = *(v87 + 72);
  sub_1E137F600(v91, v61 + v88 + v66 * v64, &qword_1ECEB4D40);
  v2[20] = v61;
  sub_1E1308058(v92, &qword_1ECEB4D40);
  swift_beginAccess();
  if (sub_1E14B18DC(*(&v97 + 1), v2[18]))
  {
    sub_1E1656458(&v96);
  }

  else
  {
    swift_beginAccess();
    v67 = v2[4];
    if (!v67)
    {
      return sub_1E1656458(&v96);
    }

    v95[0] = v96;
    v95[1] = v97;
    v95[2] = v98;

    v68 = v67(v95);
    sub_1E1300EA8(v67);
    result = sub_1E1656458(&v96);
    if (v68)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1E1895844(&v94, v24);
  swift_endAccess();
  v69 = v89;
  sub_1E1AEFE5C();
  v70 = v83;
  sub_1E1AEFDAC();
  v71 = v69;
  v72 = v90;
  v55(v71, v90);
  v73 = *(v65 + 48);
  v74 = v85;
  *v85 = v24;
  v60((v74 + v73), v70, v72);
  swift_beginAccess();
  v75 = v84;
  sub_1E134FD1C(v74, v84, &qword_1ECEB4D40);
  v76 = v2[21];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v2[21] = v76;
  if ((v77 & 1) == 0)
  {
    v76 = sub_1E172ECAC(0, v76[2] + 1, 1, v76);
    v2[21] = v76;
  }

  v79 = v76[2];
  v78 = v76[3];
  if (v79 >= v78 >> 1)
  {
    v76 = sub_1E172ECAC(v78 > 1, v79 + 1, 1, v76);
    v2[21] = v76;
  }

  v76[2] = v79 + 1;
  sub_1E137F600(v75, v76 + v88 + v79 * v66, &qword_1ECEB4D40);
  v2[21] = v76;
  return sub_1E1308058(v74, &qword_1ECEB4D40);
}

uint64_t sub_1E1653E74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = &v65 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B8);
  v68 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = (&v65 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = (&v65 - v8);
  v79 = sub_1E1AEFE6C();
  v66 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D40);
  v69 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  v16 = v0[20];
  if (!*(v16 + 16))
  {
LABEL_20:
    result = swift_beginAccess();
    v40 = v1[21];
    if (*(v40 + 16))
    {
      v41 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v42 = (v66 + 8);
      v43 = v73;
      while (1)
      {
        sub_1E134FD1C(v40 + v41, v12, &qword_1ECEB4D40);
        v44 = *v12;
        sub_1E1AEFE5C();
        v45 = sub_1E1AEFDDC();
        (*v42)(v10, v79);
        if ((v45 & 1) == 0)
        {
          break;
        }

        swift_beginAccess();
        sub_1E1650E98(v43);
        swift_endAccess();
        sub_1E1308058(v43, &qword_1ECEB72E0);
        swift_beginAccess();
        sub_1E154E7E4(v44);
        swift_endAccess();
        result = sub_1E1308058(v12, &qword_1ECEB4D40);
        v40 = v1[21];
        if (!*(v40 + 16))
        {
          goto LABEL_26;
        }
      }

      result = sub_1E1308058(v12, &qword_1ECEB4D40);
    }

LABEL_26:
    v80 = v10;
    v46 = v1[19];
    v47 = v77;
    if (*(v46 + 16))
    {
      v74 = *(v68 + 80);
      v48 = (v74 + 32) & ~v74;
      v49 = (v66 + 8);
      v76 = (v68 + 56);
      while (1)
      {
        sub_1E134FD1C(v46 + v48, v47, &qword_1ECEB72B8);
        v50 = *v47;
        v51 = v80;
        sub_1E1AEFE5C();
        v52 = sub_1E1AEFDDC();
        (*v49)(v51, v79);
        if ((v52 & 1) == 0)
        {
          return sub_1E1308058(v77, &qword_1ECEB72B8);
        }

        v53 = v1[19];
        v54 = v53[2];
        if (v54)
        {
          v55 = v75;
          sub_1E134FD1C(v53 + v48, v75, &qword_1ECEB72B8);
          (*v76)(v55, 0, 1, v78);
          v56 = v54 - 1;
          if (v54 == 1)
          {
            v53 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72E8);
            v57 = *(v68 + 72);
            v53 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v53);
            if (!v57)
            {
              goto LABEL_48;
            }

            if (result - v48 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_50;
            }

            v53[2] = v56;
            v53[3] = 2 * ((result - v48) / v57);
            swift_arrayInitWithCopy();
          }

          v59 = v75;
        }

        else
        {
          v59 = v75;
          (*v76)(v75, 1, 1, v78);
        }

        v1[19] = v53;

        sub_1E1308058(v59, &qword_1ECEB72D8);
        swift_beginAccess();
        v60 = sub_1E15A47C8(v50);
        v47 = v77;
        if (v61)
        {
          v62 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v1[16];
          v81 = v64;
          v1[16] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1E1419B58();
            v64 = v81;
          }

          sub_1E141474C(v62, v64);
          v1[16] = v64;
          v47 = v77;
        }

        swift_endAccess();
        result = sub_1E1308058(v47, &qword_1ECEB72B8);
        v46 = v1[19];
        if (!*(v46 + 16))
        {
          return result;
        }
      }
    }

    return result;
  }

  v67 = *(v69 + 80);
  v17 = (v67 + 32) & ~v67;
  v71 = (v69 + 56);
  v72 = (v66 + 8);
  v18 = &unk_1E1B11590;
  v70 = v12;
  v74 = v17;
  while (1)
  {
    v19 = v18;
    sub_1E134FD1C(v16 + v17, v15, &qword_1ECEB4D40);
    v20 = *v15;
    sub_1E1AEFE5C();
    v21 = sub_1E1AEFDDC();
    (*v72)(v10, v79);
    if ((v21 & 1) == 0)
    {
      sub_1E1308058(v15, &qword_1ECEB4D40);
      goto LABEL_20;
    }

    v22 = v1[20];
    v23 = v22[2];
    if (!v23)
    {
      v33 = v76;
      (*v71)(v76, 1, 1, v80);

      goto LABEL_16;
    }

    v24 = v76;
    v25 = v74;
    sub_1E134FD1C(v22 + v74, v76, &qword_1ECEB4D40);
    (*v71)(v24, 0, 1, v80);
    v26 = v23 - 1;
    if (v23 == 1)
    {
      v22 = MEMORY[0x1E69E7CC0];
      v33 = v76;
      v12 = v70;
      goto LABEL_16;
    }

    v27 = v10;
    v28 = v15;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D48);
    v30 = *(v69 + 72);
    v22 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v22);
    if (!v30)
    {
      break;
    }

    if (result - v25 == 0x8000000000000000 && v30 == -1)
    {
      goto LABEL_49;
    }

    v22[2] = v26;
    v22[3] = 2 * ((result - v25) / v30);
    swift_arrayInitWithCopy();
    v33 = v76;
    v12 = v70;
    v34 = v29;
    v15 = v28;
    v10 = v34;
LABEL_16:
    v1[20] = v22;

    sub_1E1308058(v33, &qword_1ECEB72E0);
    swift_beginAccess();
    v35 = sub_1E15A47C8(v20);
    v17 = v74;
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = v1[17];
      v82 = v39;
      v1[17] = 0x8000000000000000;
      if (!v38)
      {
        sub_1E1419D18();
        v39 = v82;
      }

      sub_1E14148C0(v37, v39);
      v1[17] = v39;
    }

    swift_endAccess();
    v18 = v19;
    sub_1E1308058(v15, &qword_1ECEB4D40);
    v16 = v1[20];
    if (!*(v16 + 16))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1E16547E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72B8);
  v5 = v4 - 8;
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v27 - v8);
  v10 = sub_1E1AEFE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = *(a1 + 56);
  swift_beginAccess();
  sub_1E141D198(a1, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29[0] = *(v1 + 128);
  *(v1 + 128) = 0x8000000000000000;
  sub_1E159B4A0(a1, v17, isUniquelyReferenced_nonNull_native);
  *(v1 + 128) = v29[0];
  swift_endAccess();
  sub_1E1AEFE5C();
  sub_1E1AEFDAC();
  v19 = v13;
  v20 = v27;
  (*(v11 + 8))(v19, v10);
  v21 = *(v5 + 56);
  *v9 = v17;
  (*(v11 + 32))(v9 + v21, v16, v10);
  sub_1E134FD1C(v9, v20, &qword_1ECEB72B8);
  v22 = *(v1 + 152);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 152) = v22;
  if ((v23 & 1) == 0)
  {
    v22 = sub_1E172EB68(0, v22[2] + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1E172EB68(v24 > 1, v25 + 1, 1, v22);
    *(v2 + 152) = v22;
  }

  v22[2] = v25 + 1;
  sub_1E137F600(v20, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, &qword_1ECEB72B8);
  *(v2 + 152) = v22;
  return sub_1E1308058(v9, &qword_1ECEB72B8);
}

uint64_t sub_1E1654B08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 128);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v10 = *(a1 + 56);
  v11 = sub_1E15A47C8(v10);
  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v52 = v5;
  v13 = *(v9 + 56) + 88 * v11;
  v14 = *(v13 + 24);
  v50 = v6;
  v51 = v14;
  v15 = *(v13 + 80);
  swift_endAccess();
  swift_beginAccess();
  v53 = v15;

  v49 = v10;
  sub_1E1410F58(v10, &v56);
  swift_endAccess();
  v62[2] = v58;
  v62[3] = v59;
  v62[4] = v60;
  v63 = v61;
  v62[0] = v56;
  v62[1] = v57;
  sub_1E1308058(v62, &qword_1ECEB72C0);
  v54 = sub_1E16551D8(a1);
  v16 = *(v54 + 16);
  if (v16)
  {
    v17 = v54 + 32;
    swift_beginAccess();
    v18 = 0;
    while (1)
    {
      v19 = *(v2 + 144);
      if (*(v19 + 16))
      {
        v20 = *(v17 + 48 * v18 + 16);
        v21 = sub_1E1AF761C();
        v22 = -1 << *(v19 + 32);
        v23 = v21 & ~v22;
        if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_5:
      if (++v18 == v16)
      {
        goto LABEL_13;
      }
    }

    v24 = ~v22;
    while (*(*(v19 + 48) + 8 * v23) != v20)
    {
      v23 = (v23 + 1) & v24;
      if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_22;
  }

LABEL_13:
  v26 = *(a1 + 24);
  v27 = v51;
  if (v26 >= v51)
  {
    v35 = sub_1E16560E0(v51, v26);
    if ((v36 & 1) == 0)
    {
      v64[0] = *(a1 + 64);
      v37 = *(&v64[0] + 1);
      if (*(&v64[0] + 1))
      {
        v38 = v35;
        v39 = *&v64[0];
        v40 = *(a1 + 80);
        sub_1E134FD1C(v64, &v56, &unk_1ECEB5D40);

        v41 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v56 = v41;
        sub_1E1656180(v40, sub_1E1655478, 0, isUniquelyReferenced_nonNull_native, &v56);

        v43 = v56;
        swift_beginAccess();
        v44 = *(v2 + 16);
        if (v44)
        {
          *&v56 = v38;
          *(&v56 + 1) = v39;
          *&v57 = v37;
          *(&v57 + 1) = v54;
          *&v58 = v43;

          v44(&v56);
          sub_1E1300EA8(v44);
        }
      }
    }

LABEL_22:
  }

  v48 = *(a1 + 24);

  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v28 = v52;
  v29 = __swift_project_value_buffer(v52, qword_1EE216140);
  v30 = v50;
  (*(v50 + 16))(v8, v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v31 = *(sub_1E1AF38EC() - 8);
  v54 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v32 = MEMORY[0x1E69E76D8];
  *(&v57 + 1) = MEMORY[0x1E69E76D8];
  *&v56 = v27;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  *(&v57 + 1) = v32;
  *&v56 = v48;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  v55 = *(a1 + 64);
  if (*(&v55 + 1))
  {
    v33 = MEMORY[0x1E69E6158];
    v34 = v55;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *&v57 = 0;
  }

  v45 = v49;
  *&v56 = v34;
  *(&v56 + 1) = *(&v55 + 1);
  *(&v57 + 1) = v33;
  sub_1E134FD1C(&v55, v64, &unk_1ECEB5D40);
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  *(&v57 + 1) = MEMORY[0x1E69E76D8];
  *&v56 = v45;
  sub_1E1AF385C();
  sub_1E1308058(&v56, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  v46 = v52;
  sub_1E1AF54AC();

  return (*(v30 + 8))(v8, v46);
}

char *sub_1E16551D8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (*(v4 + 16) && (v5 = sub_1E15A47C8(*(a1 + 32)), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 48 * v5);
    v9 = *v7;
    v8 = v7[1];
    v11 = v7[2];
    v10 = v7[3];
    v13 = v7[4];
    v12 = v7[5];
    swift_endAccess();

    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1E172EB8C(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1E172EB8C((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[48 * v16];
      *(v17 + 4) = v9;
      *(v17 + 5) = v8;
      *(v17 + 6) = v11;
      *(v17 + 7) = v10;
      *(v17 + 8) = v13;
      *(v17 + 9) = v12;
      swift_beginAccess();
      v18 = *(v2 + 136);
      if (!*(v18 + 16))
      {
        break;
      }

      v19 = sub_1E15A47C8(v10);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v18 + 56) + 48 * v19);
      v9 = *v21;
      v22 = v21[1];
      v11 = v21[2];
      v10 = v21[3];
      v13 = v21[4];
      v23 = v21[5];
      swift_endAccess();

      v8 = v22;
      v12 = v23;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

uint64_t _JetTraceAggregator.deinit()
{
  sub_1E1300EA8(*(v0 + 16));
  sub_1E1300EA8(*(v0 + 32));

  sub_1E1308058(v0 + 96, &qword_1ECEB2DF0);

  return v0;
}

uint64_t _JetTraceAggregator.__deallocating_deinit()
{
  _JetTraceAggregator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1655478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E1655588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E16555D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1655688(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v41 = a2;
  v2 = sub_1E1AF320C();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E1AEFE6C();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29[2] = v7;
  v30 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF31EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_1E1AF326C();
  v32 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v17 = sub_1E1AF591C();
  __swift_project_value_buffer(v17, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  v18 = v34;
  v29[1] = *(v34 + 88);
  sub_1E1AF325C();
  *v11 = 10;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F48], v8);
  MEMORY[0x1E68FBFF0](v13, v11);
  (*(v9 + 8))(v11, v8);
  v32 = *(v32 + 8);
  (v32)(v13, v42);
  v20 = v30;
  v19 = v31;
  (*(v6 + 16))(v30, v33, v31);
  v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  *(v22 + 16) = v41;
  *(v22 + 24) = v18;
  (*(v6 + 32))(v22 + v21, v20, v19);
  aBlock[4] = sub_1E1655D08;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_37;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_1E1AF322C();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v26 = v38;
  v27 = v40;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF5E0](v16, v25, v26, v24);
  _Block_release(v24);
  (*(v39 + 8))(v26, v27);
  (*(v36 + 8))(v25, v37);
  (v32)(v16, v42);

  return v23;
}