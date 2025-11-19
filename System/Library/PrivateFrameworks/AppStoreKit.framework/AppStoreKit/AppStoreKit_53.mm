unint64_t sub_1E182A648()
{
  result = qword_1EE1DC838[0];
  if (!qword_1EE1DC838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DC838);
  }

  return result;
}

double sub_1E182A6C8()
{
  v0 = sub_1E1AF1BEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReviewSummaryLayout.layout.getter();
  sub_1E1AF1DAC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E182A7EC()
{
  v0 = sub_1E1AF1BEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReviewSummaryLayout.layout.getter();
  sub_1E1AF1D9C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E182A900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E182AA0C();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

uint64_t sub_1E182A964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E182A9AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E182AA0C()
{
  result = qword_1ECEB9F88;
  if (!qword_1ECEB9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB9F88);
  }

  return result;
}

void *SearchAction.__allocating_init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v62 = a8;
  v71 = a1;
  v72 = a2;
  v69 = a17;
  v70 = a18;
  v67 = a15;
  v68 = a16;
  v65 = a13;
  v66 = a14;
  v64 = a12;
  v63 = a11;
  v61 = a10;
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = *a6;
  v28 = *a9;
  v29 = *(a20 + 32);
  v30 = *(a20 + 40);
  v31 = (v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  *v31 = a3;
  v31[1] = a4;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin) = v27;
  v32 = (v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  v33 = v62;
  *v32 = a7;
  v32[1] = v33;
  sub_1E134FD1C(a5, v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);
  *(v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity) = v28;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled) = v61;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms) = v63;
  v34 = (v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  v35 = v65;
  *v34 = v64;
  v34[1] = v35;
  v36 = (v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);
  v37 = v67;
  *v36 = v66;
  v36[1] = v37;
  v38 = v69;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens) = v68;
  v39 = (v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v40 = v70;
  *v39 = v38;
  v39[1] = v40;
  v41 = v26 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  v42 = *(a20 + 16);
  *v41 = *a20;
  *(v41 + 1) = v42;
  *(v41 + 4) = v29;
  v41[40] = v30;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v43 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v44 = sub_1E1AF3E1C();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v26 + v43, a19, v44);
  v46 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v47 = sub_1E1AF46DC();
  (*(*(v47 - 8) + 56))(v26 + v46, 1, 1, v47);
  v48 = (v26 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v26 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v78, &v75, &unk_1ECEB5670);
  if (*(&v76 + 1))
  {
    v50 = v76;
    *v49 = v75;
    *(v49 + 1) = v50;
    *(v49 + 4) = v77;
  }

  else
  {
    v51 = v58;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v53 = a5;
    v55 = v54;
    (*(v59 + 8))(v51, v60);
    v73 = v52;
    v74 = v55;
    a5 = v53;
    sub_1E1AF6F6C();
    sub_1E1308058(&v75, &unk_1ECEB5670);
  }

  (*(v45 + 8))(a19, v44);
  sub_1E1308058(a5, &unk_1ECEB4B60);
  sub_1E1308058(v78, &unk_1ECEB5670);
  v56 = v72;
  v26[2] = v71;
  v26[3] = v56;
  v26[4] = 0;
  v26[5] = 0;
  return v26;
}

uint64_t SearchAction.term.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);

  return v1;
}

uint64_t SearchAction.source.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);

  return v1;
}

uint64_t SearchAction.originatingTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);

  return v1;
}

uint64_t SearchAction.prefixTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);

  return v1;
}

uint64_t SearchAction.guidedSearchOptimizationTerm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);

  return v1;
}

void SearchAction.referrerData.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  sub_1E13E2380(v3, v4, v5, v6, v7, v8);
}

void *SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, char *a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v66 = a8;
  v64 = a7;
  v63 = a5;
  v76 = a1;
  v77 = a2;
  v74 = a18;
  v73 = a17;
  v72 = a16;
  v71 = a15;
  v70 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a11;
  v65 = a10;
  v75 = a19;
  v62 = sub_1E1AEFEAC();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v59 - v27;
  v29 = sub_1E1AF3E1C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v31) = *a6;
  v33 = *a9;
  v34 = *(a20 + 32);
  LOBYTE(a6) = *(a20 + 40);
  v35 = (v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  *v35 = a3;
  v35[1] = a4;
  v36 = v32;
  v37 = v63;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin) = v31;
  v38 = (v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  v39 = v66;
  *v38 = v64;
  v38[1] = v39;
  sub_1E134FD1C(v37, v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity) = v33;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled) = v65;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms) = v67;
  v40 = (v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  v41 = v69;
  *v40 = v68;
  v40[1] = v41;
  v42 = (v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);
  v43 = v71;
  *v42 = v70;
  v42[1] = v43;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens) = v72;
  v44 = (v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v45 = v74;
  *v44 = v73;
  v44[1] = v45;
  v46 = v21 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  v47 = *(a20 + 16);
  *v46 = *a20;
  *(v46 + 1) = v47;
  *(v46 + 4) = v34;
  v46[40] = a6;
  v48 = v75;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  (*(v30 + 16))(v36, v75, v29);
  v49 = sub_1E1AF46DC();
  (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
  v50 = (v21 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v50 = 0u;
  v50[1] = 0u;
  sub_1E134FD1C(v86, &v80, &unk_1ECEB5670);
  if (*(&v81 + 1))
  {
    v83 = v80;
    v84 = v81;
    v85 = v82;
  }

  else
  {
    v51 = v60;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v54 = v53;
    (*(v61 + 8))(v51, v62);
    v78 = v52;
    v79 = v54;
    sub_1E1AF6F6C();
    sub_1E1308058(&v80, &unk_1ECEB5670);
  }

  (*(v30 + 8))(v48, v29);
  sub_1E1308058(v37, &unk_1ECEB4B60);
  sub_1E1308058(v86, &unk_1ECEB5670);
  v55 = v21 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v55 + 4) = v85;
  v56 = v84;
  *v55 = v83;
  *(v55 + 1) = v56;
  sub_1E137F600(v28, v21 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  v57 = v77;
  v21[2] = v76;
  v21[3] = v57;
  v21[4] = 0;
  v21[5] = 0;
  (*(v30 + 32))(v21 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v36, v29);
  return v21;
}

uint64_t SearchAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v115 = a2;
  v120 = v3;
  v112 = *v3;
  v5 = sub_1E1AF39DC();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v108 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v107 = v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v102 = v99 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v109 = v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v100 = (v99 - v16);
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v105 = v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = v99 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v101 = v99 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v99 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v99 - v28;
  v30 = 0xE400000000000000;
  v31 = a1;
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  v34 = v33;
  v106 = v18;
  v35 = v18 + 8;
  v36 = *(v18 + 8);
  v37 = v29;
  v38 = v17;
  v39 = v35;
  v36(v37, v38);
  if (!v34)
  {
    v111 = 1836213620;
    v42 = a1;
    goto LABEL_5;
  }

  v111 = 0x6E696769726FLL;
  sub_1E1AF381C();
  sub_1E1611548();
  sub_1E1AF36DC();
  v36(v27, v38);
  v40 = v38;
  v41 = v116;
  if (v116 == 15)
  {
    v42 = v31;

    v30 = 0xE600000000000000;
    v38 = v40;
LABEL_5:
    v43 = sub_1E1AF5A7C();
    sub_1E182C6D0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v44 = v112;
    *v45 = v111;
    v45[1] = v30;
    v45[2] = v44;
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69AB690], v43);
    swift_willThrow();
    (*(v113 + 8))(v115, v114);
    v36(v42, v38);
    swift_deallocPartialClassInstance();
    return v43;
  }

  v46 = v120;
  v47 = (v120 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  *v47 = v32;
  v47[1] = v34;
  v48 = v40;
  sub_1E1AF381C();
  v49 = v100;
  sub_1E1AF36FC();
  v36(v27, v40);
  sub_1E137F600(v49, v46 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);
  sub_1E1AF381C();
  sub_1E14B7B80();
  sub_1E1AF36DC();
  v36(v27, v40);
  *(v46 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity) = v116;
  *(v46 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin) = v41;
  sub_1E1AF381C();
  v50 = sub_1E1AF37CC();
  v52 = v51;
  v36(v27, v48);
  v53 = (v46 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  *v53 = v50;
  v53[1] = v52;
  v54 = v101;
  sub_1E1AF381C();
  LOBYTE(v50) = sub_1E1AF370C();
  v36(v54, v48);
  *(v46 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled) = v50 & 1;
  sub_1E1AF381C();
  v55 = v109;
  sub_1E1AF374C();
  v36(v27, v48);
  v56 = v102;
  sub_1E134FD1C(v55, v102, &qword_1ECEB1F90);
  v57 = sub_1E1AF5A6C();
  v58 = *(v57 - 8);
  v59 = *(v58 + 6);
  v111 = (v58 + 48);
  v101 = v59;
  v60 = (v59)(v56, 1, v57);
  v112 = v48;
  v99[1] = v39;
  v100 = v58;
  if (v60 == 1)
  {
    sub_1E1308058(v56, &qword_1ECEB1F90);
    v61 = 0;
  }

  else
  {
    v62 = v110;
    v61 = sub_1E1AF59FC();
    v110 = v62;
    (*(v58 + 1))(v56, v57);
  }

  v63 = v120;
  *(v120 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms) = v61;
  sub_1E1AF381C();
  v64 = sub_1E1AF37CC();
  v66 = v65;
  v67 = v112;
  v36(v27, v112);
  v68 = (v63 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  *v68 = v64;
  v68[1] = v66;
  sub_1E1AF381C();
  v69 = sub_1E1AF37CC();
  v71 = v70;
  v36(v27, v67);
  v72 = (v63 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);
  *v72 = v69;
  v72[1] = v71;
  v73 = v103;
  sub_1E1AF381C();
  v74 = v104;
  sub_1E1AF374C();
  v75 = v67;
  v76 = v36;
  v36(v73, v75);
  if ((v101)(v74, 1, v57) == 1)
  {
    sub_1E1308058(v74, &qword_1ECEB1F90);
    v77 = 0;
  }

  else
  {
    v77 = sub_1E1AF5A0C();
    v100[1](v74, v57);
  }

  v78 = v120;
  *(v120 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens) = v77;
  sub_1E1AF381C();
  v79 = sub_1E1AF37CC();
  v81 = v80;
  v76(v27, v112);
  v82 = (v78 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v82 = v79;
  v82[1] = v81;
  sub_1E1AF381C();
  v111 = v76;
  v83 = v113;
  v84 = v114;
  v43 = v113 + 16;
  v85 = *(v113 + 16);
  v86 = v115;
  v85(v107, v115, v114);
  sub_1E15D7EC0();
  sub_1E1AF464C();
  v87 = v118;
  v88 = v119;
  v89 = v78 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  v90 = v117;
  *v89 = v116;
  *(v89 + 16) = v90;
  *(v89 + 32) = v87;
  *(v89 + 40) = v88;
  v91 = v105;
  v92 = *(v106 + 16);
  v107 = v31;
  v93 = v31;
  v94 = v112;
  v92(v105, v93, v112);
  v95 = v108;
  v85(v108, v86, v84);
  v96 = v110;
  v97 = Action.init(deserializing:using:)(v91, v95);
  if (!v96)
  {
    v43 = v97;
  }

  (*(v83 + 8))(v115, v114);
  (v111)(v107, v94);
  sub_1E1308058(v109, &qword_1ECEB1F90);
  return v43;
}

void sub_1E182C228()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);

  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 32);
  v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 40);

  sub_1E13DED78(v1, v2, v3, v4, v5, v6);
}

uint64_t SearchAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData + 40));
  return v0;
}

uint64_t SearchAction.__deallocating_deinit()
{
  SearchAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchAction.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E182C5B0()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E182C638()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E182C6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAction()
{
  result = qword_1EE1F5AA8;
  if (!qword_1EE1F5AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E182C76C()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1E1AF3ABC();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1E1AF436C();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF3C3C();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF1ABC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = a1;
  sub_1E1AF1AAC();
  v17 = swift_allocObject();
  *(v17 + 24) = a3;
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = v17;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  sub_1E1300E34(a5);
  v19 = sub_1E1AF1ACC();
  if ((a4 & 1) == 0)
  {
    v31 = v19;
    sub_1E1361B18(a5, a6);

    swift_unknownObjectRelease();
    return v31;
  }

  v51 = v19;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v22 = a3;
  v23 = *(a3 + 32);
  v40 = ObjectType;
  v23(v52, ObjectType, a3);
  v41 = a6;
  if (!v53)
  {
    sub_1E1308058(v52, &qword_1ECEB2588);
LABEL_10:
    v26 = a5;
    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1Tm(v52, v53);
  v24 = v42;
  sub_1E1AF5B8C();
  v25 = sub_1E1AF3AEC();
  (*(v43 + 8))(v24, v44);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    goto LABEL_10;
  }

  v26 = a5;
  if (*(v25 + 16))
  {
    v27 = sub_1E13018F8(0x6C725565676170, 0xE700000000000000);
    v28 = v20;
    v29 = v45;
    if (v30)
    {
      sub_1E137A5C4(*(v25 + 56) + 32 * v27, &v54);
    }

    else
    {

      v54 = 0u;
      v55 = 0u;
    }
  }

  else
  {

    v54 = 0u;
    v55 = 0u;
    v28 = v20;
    v29 = v45;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  if (*(&v55 + 1))
  {
    v35 = swift_dynamicCast();
    if (v35)
    {
      v33 = v52[0];
    }

    else
    {
      v33 = 0;
    }

    if (v35)
    {
      v34 = v52[1];
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_21;
  }

LABEL_11:
  sub_1E1308058(&v54, &qword_1ECEB2DF0);
  v33 = 0;
  v34 = 0;
LABEL_21:
  type metadata accessor for PageMetricsEvent();
  swift_initStackObject();
  v36 = v28;
  PageMetricsEvent.init(error:pageUrl:)(v28, v33, v34);
  (*(v22 + 88))(v40, v22);
  v37 = v47;
  sub_1E1561668();
  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v38 = sub_1E1AF4A9C();
  __swift_project_value_buffer(v38, qword_1EE1E3998);
  sub_1E1AF434C();
  swift_unknownObjectRelease();

  sub_1E1361B18(v26, v41);

  (*(v49 + 8))(v37, v50);
  (*(v46 + 8))(v29, v48);
  return v51;
}

uint64_t sub_1E182CEB8(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1E1AF3ABC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF436C();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = v13;
    _s11AppStoreKit17ClickMetricsEventC014makeErrorRetryF0ACyFZ_0();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {

      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v23 = v9;
    v16 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 88))(ObjectType, v16);
    swift_unknownObjectRelease();
    sub_1E1560214();
    if (qword_1EE1E3990 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF4A9C();
    __swift_project_value_buffer(v18, qword_1EE1E3998);
    sub_1E1AF434C();

    (*(v23 + 8))(v11, v8);
    (*(v24 + 8))(v15, v12);
  }

  if (a3)
  {
LABEL_7:

    a3(v19);
    return sub_1E1361B18(a3, a4);
  }

LABEL_9:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = *(a2 + 24);
    v22 = swift_getObjectType();
    (*(*(v21 + 24) + 32))(1, v22);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *SearchAdAction.__allocating_init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC11AppStoreKit14SearchAdAction_action] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v16 + 8))(a5, v15);
  sub_1E1308058(v38, &unk_1ECEB5670);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *SearchAdAction.init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_1E1AEFEAC();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14SearchAdAction_action) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  (*(v17 + 8))(v20, v16);
  sub_1E1308058(v47, &unk_1ECEB5670);
  v29 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t *SearchAdAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v27 = *v4;
  v28 = v3;
  v29 = sub_1E1AF39DC();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  v31 = a1;
  sub_1E1AF381C();
  type metadata accessor for Action();
  v30 = a2;
  v17 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, a2);
  if (v17)
  {
    *(v4 + OBJC_IVAR____TtC11AppStoreKit14SearchAdAction_action) = v17;

    sub_1E1AF381C();
    (*(v7 + 16))(v9, v30, v29);
    v18 = v28;
    v19 = Action.init(deserializing:using:)(v14, v9);
    if (v18)
    {

      (*(v7 + 8))(v30, v29);
      v20 = *(v11 + 8);
      v20(v31, v10);
      v20(v16, v10);
    }

    else
    {
      v4 = v19;

      (*(v7 + 8))(v30, v29);
      v25 = *(v11 + 8);
      v25(v31, v10);
      v25(v16, v10);
    }
  }

  else
  {
    v21 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v22 = 0x6E6F69746361;
    v23 = v27;
    v22[1] = 0xE600000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    (*(v7 + 8))(v30, v29);
    v24 = *(v11 + 8);
    v24(v31, v10);
    v24(v16, v10);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t SearchAdAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t SearchAdAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchAdAction()
{
  result = qword_1EE1F3C08;
  if (!qword_1EE1F3C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E182DF30(uint64_t a1)
{
  v2 = sub_1E1AEFE6C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA020);
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v9 = sub_1E1AF588C();
  sub_1E1AF44CC();
  sub_1E1AF44BC();
  if (qword_1ECEB1560 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1ECEBA7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBA028);
  sub_1E1AF3C8C();

  if (v45[0])
  {
  }

  else
  {
    sub_1E1AF44BC();
    (*(v43 + 16))(v8, v10, v4);
    v45[0] = MEMORY[0x1E69E7CC8];
    sub_1E1AF3C9C();
  }

  sub_1E1AF44BC();
  sub_1E1AF3C8C();

  v11 = v45[0];
  if (!v45[0])
  {
    goto LABEL_14;
  }

  if (!*(v45[0] + 16) || (v12 = sub_1E13018F8(*(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey), *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey + 8)), (v13 & 1) == 0))
  {

LABEL_14:
    sub_1E1AF44BC();
    (*(v43 + 16))(v42, v10, v4);
    v23 = sub_1E1AF3C7C();
    if (*v22)
    {
      v24 = v22;
      v38 = v4;
      v25 = v9;
      v27 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey);
      v26 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_actionKey + 8);
      v28 = v39;
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v30 = v29;
      (*(v40 + 8))(v28, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *v24;
      *v24 = 0x8000000000000000;
      v32 = v26;
      v9 = v25;
      v4 = v38;
      sub_1E159BE24(v27, v32, isUniquelyReferenced_nonNull_native, v30);
      *v24 = v44;
    }

    v23(v45, 0);

    (*(v43 + 8))(v42, v4);
    v33 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_primaryAction);
    v46 = type metadata accessor for Action();
    v47 = sub_1E182E6D8(qword_1EE1D2F80, type metadata accessor for Action);
    v45[0] = v33;
    type metadata accessor for RateLimitedActionImplementation();

    swift_getWitnessTable();
    sub_1E1834054(v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v34 = sub_1E1361A80();
    swift_retain_n();
    v35 = sub_1E1AF68EC();
    v46 = v34;
    v47 = MEMORY[0x1E69AB720];
    v45[0] = v35;
    sub_1E1AF57FC();

    goto LABEL_17;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  if ((*(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit + 8) & 1) == 0)
  {
    v15 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_rateLimit);
    v16 = v39;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v18 = v17;
    (*(v40 + 8))(v16, v41);
    if (v15 < v18 - v14)
    {
      goto LABEL_14;
    }
  }

  v19 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17RateLimitedAction_fallbackAction);
  if (!v19)
  {
    type metadata accessor for RateLimitedActionImplementation.ImplementationError();
    swift_getWitnessTable();
    v37 = swift_allocError();
    sub_1E1AF584C();

    return v9;
  }

  v46 = type metadata accessor for Action();
  v47 = sub_1E182E6D8(qword_1EE1D2F80, type metadata accessor for Action);
  v45[0] = v19;
  type metadata accessor for RateLimitedActionImplementation();
  swift_retain_n();
  swift_getWitnessTable();
  sub_1E1834054(v45);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v20 = sub_1E1361A80();
  swift_retain_n();
  v21 = sub_1E1AF68EC();
  v46 = v20;
  v47 = MEMORY[0x1E69AB720];
  v45[0] = v21;
  sub_1E1AF57FC();

LABEL_17:

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v9;
}

uint64_t sub_1E182E6D8(unint64_t *a1, void (*a2)(uint64_t))
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

AppStoreKit::PrivacyTypeStyle_optional __swiftcall PrivacyTypeStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t PrivacyTypeStyle.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x61506C6961746564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_1E182E810(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x80000001E1B56F70;
  if (v2 == 1)
  {
    v5 = 0x80000001E1B56F70;
  }

  else
  {
    v3 = 0x61506C6961746564;
    v5 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x50746375646F7270;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000656761;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x50746375646F7270;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000656761;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E182E918()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E182E9CC()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E182EA6C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E182EB28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656761;
  v4 = 0x80000001E1B56F70;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x61506C6961746564;
    v4 = 0xEA00000000006567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x50746375646F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PrivacyType.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyType.detail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyType.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t PrivacyType.__allocating_init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v30 = a6;
  v31 = a7;
  v32 = a11;
  v33 = a2;
  v36 = a10;
  v34 = a9;
  v35 = a3;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *a8;
  sub_1E134FD1C(a1, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v19 + 80) = v39;
    *(v19 + 96) = v21;
    *(v19 + 112) = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v29 = a4;
    v24 = v23;
    (*(v16 + 8))(v18, v15);
    v37 = v22;
    v38 = v24;
    a4 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v32, v19 + OBJC_IVAR____TtC11AppStoreKit11PrivacyType_impressionMetrics);
  v25 = v35;
  *(v19 + 16) = v33;
  *(v19 + 24) = v25;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v26 = v31;
  *(v19 + 48) = v30;
  *(v19 + 56) = v26;
  *(v19 + 64) = v20;
  *(v19 + 72) = v34;
  *(v19 + 65) = v36 & 1;
  return v19;
}

uint64_t PrivacyType.init(id:title:detail:artwork:categories:style:clickAction:wantsScrollFocus:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v12 = v11;
  v31 = a6;
  v32 = a7;
  v33 = a11;
  v34 = a2;
  v37 = a10;
  v35 = a9;
  v36 = a3;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a8;
  sub_1E134FD1C(a1, &v40, &unk_1ECEB5670);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v30 = a4;
    v24 = v23;
    (*(v18 + 8))(v20, v17);
    v38 = v22;
    v39 = v24;
    a4 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v40, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v25 = v44;
  *(v12 + 80) = v43;
  *(v12 + 96) = v25;
  *(v12 + 112) = v45;
  sub_1E134B7C8(v33, v12 + OBJC_IVAR____TtC11AppStoreKit11PrivacyType_impressionMetrics);
  v26 = v36;
  *(v12 + 16) = v34;
  *(v12 + 24) = v26;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v27 = v32;
  *(v12 + 48) = v31;
  *(v12 + 56) = v27;
  *(v12 + 64) = v21;
  *(v12 + 72) = v35;
  *(v12 + 65) = v37 & 1;
  return v12;
}

uint64_t PrivacyType.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v88 = sub_1E1AEFEAC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v76 - v11;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  sub_1E1AF381C();
  v92 = sub_1E1AF37CC();
  v30 = v29;
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v31 = v33;
  v33(v28, v12);
  if (!v30)
  {
    v52 = sub_1E1AF5A7C();
    sub_1E18300F8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C746974;
LABEL_10:
    v55 = 0xE500000000000000;
    goto LABEL_11;
  }

  v95 = v30;
  sub_1E1AF381C();
  v84 = sub_1E1AF37CC();
  v35 = v34;
  v31(v25, v12);
  if (!v35)
  {

    v52 = sub_1E1AF5A7C();
    sub_1E18300F8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x6C6961746564;
    v55 = 0xE600000000000000;
LABEL_11:
    v53[1] = v55;
    v53[2] = v97;
    v56 = MEMORY[0x1E69AB690];
LABEL_12:
    (*(*(v52 - 8) + 104))(v54, *v56, v52);
    swift_willThrow();
    (*(v98 + 8))(v106, v99);
    v31(a1, v12);
    return a1;
  }

  v85 = v35;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v37 = v36;
  v31(v22, v12);
  if (!v37)
  {

    v52 = sub_1E1AF5A7C();
    sub_1E18300F8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v54 = v53;
    *v53 = 0x656C797473;
    goto LABEL_10;
  }

  v38 = sub_1E1AF72FC();

  if (v38 >= 3)
  {

    v52 = sub_1E1AF5A7C();
    sub_1E18300F8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v54 = v58;
    v59 = MEMORY[0x1E69E7CC0];
    *v58 = 0x656C797473;
    v58[1] = 0xE500000000000000;
    v58[2] = v97;
    v58[3] = v59;
    v56 = MEMORY[0x1E69AB6A0];
    goto LABEL_12;
  }

  v82 = v38;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v83 = v12;
  v79 = *(v98 + 16);
  v39 = v90;
  v77 = v31;
  v40 = v106;
  v41 = v99;
  (v79)(v90, v106, v99);
  sub_1E1AF464C();
  v81 = v32;
  v42 = v94;
  v43 = v40;
  v44 = v79;
  (v79)(v94, v43, v41);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  (v44)(v39, v42, v41);
  sub_1E18300F8(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v80 = v105;
  sub_1E1AF381C();
  (v44)(v39, v42, v41);
  v45 = v83;
  type metadata accessor for PrivacyCategory();
  sub_1E18300F8(&qword_1EE1F2FF8, type metadata accessor for PrivacyCategory);
  v46 = v77;
  v90 = sub_1E1AF630C();
  type metadata accessor for Action();
  sub_1E1AF381C();
  v79 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v42);
  v46(v19, v45);
  v47 = v89;
  sub_1E1AF381C();
  v78 = sub_1E1AF370C();
  v46(v47, v45);
  v48 = v91;
  sub_1E1AF381C();
  v49 = sub_1E1AF37CC();
  v51 = a1;
  if (v50)
  {
    *&v102 = v49;
    *(&v102 + 1) = v50;
  }

  else
  {
    v60 = v86;
    sub_1E1AEFE9C();
    v61 = sub_1E1AEFE7C();
    v63 = v62;
    (*(v87 + 8))(v60, v88);
    *&v102 = v61;
    *(&v102 + 1) = v63;
  }

  sub_1E1AF6F6C();
  v64 = v46;
  v46(v48, v45);
  v65 = v93;
  sub_1E134FD1C(v96, v93, &unk_1ECEB1770);
  a1 = swift_allocObject();
  sub_1E134FD1C(&v105, &v102, &unk_1ECEB5670);
  if (*(&v103 + 1))
  {
    v66 = v103;
    *(a1 + 80) = v102;
    *(a1 + 96) = v66;
    *(a1 + 112) = v104;
  }

  else
  {
    v67 = v86;
    sub_1E1AEFE9C();
    v68 = sub_1E1AEFE7C();
    v70 = v69;
    (*(v87 + 8))(v67, v88);
    v100 = v68;
    v101 = v70;
    sub_1E1AF6F6C();
    sub_1E1308058(&v102, &unk_1ECEB5670);
  }

  v71 = v99;
  v72 = *(v98 + 8);
  v72(v106, v99);
  v64(v51, v45);
  sub_1E1308058(&v105, &unk_1ECEB5670);
  v72(v94, v71);
  sub_1E1308058(v96, &unk_1ECEB1770);
  sub_1E134B7C8(v65, a1 + OBJC_IVAR____TtC11AppStoreKit11PrivacyType_impressionMetrics);
  v73 = v95;
  *(a1 + 16) = v92;
  *(a1 + 24) = v73;
  v74 = v85;
  *(a1 + 32) = v84;
  *(a1 + 40) = v74;
  v75 = v90;
  *(a1 + 48) = v80;
  *(a1 + 56) = v75;
  *(a1 + 64) = v82;
  *(a1 + 72) = v79;
  *(a1 + 65) = v78 & 1;
  return a1;
}

uint64_t PrivacyType.deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11PrivacyType_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t PrivacyType.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11PrivacyType_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

unint64_t sub_1E182FDB0()
{
  result = qword_1ECEBA0B0;
  if (!qword_1ECEBA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA0B0);
  }

  return result;
}

uint64_t type metadata accessor for PrivacyType()
{
  result = qword_1EE1F6E50;
  if (!qword_1EE1F6E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E182FE98@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E18300F8(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_1E182FF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyType.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E182FFB8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E18300F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1830140()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE215678 = sub_1E1AF591C();
  unk_1EE215680 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE215660);
  return sub_1E1AF590C();
}

id DynamicViewControllerDelegate.__allocating_init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = objc_allocWithZone(v13);
  *&v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_subscriptionManager] = a1;
  v21 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v21 = a12;
  *(v21 + 1) = a13;
  v22 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v20[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v26 = a10;
  *(v26 + 1) = a11;
  v30.receiver = v20;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, sel_init);
}

id DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_subscriptionManager] = a1;
  v21 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_contentViewConstructor];
  *v21 = a12;
  *(v21 + 1) = a13;
  v22 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v13[OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_didDismissHandler];
  *v26 = a10;
  *(v26 + 1) = a11;
  v30.receiver = v13;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init);
}

void sub_1E18304F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(a4, a5);
}

uint64_t DynamicViewControllerDelegate.dynamicViewController(_:didFinishWith:error:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_didDismissHandler);
  if (v1)
  {
    v1();
  }

  if (qword_1EE1D63A0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t DynamicViewControllerDelegate.dynamicViewController(_:contentViewWith:frame:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_contentViewConstructor);
  if (v3)
  {
    return v3(a2);
  }

  else
  {
    return 0;
  }
}

id DynamicViewControllerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewControllerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E1830B2C(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
LABEL_3:
    v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseFailureHandler);
    if (v4)
    {
      v4(a2);
    }

    else
    {
      v15 = a2;
    }

    if (qword_1EE1D63A0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v20 = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v18);
    sub_1E1AF54AC();

    return;
  }

  if (!a1)
  {
    return;
  }

  v6 = [a1 error];
  a2 = 0;
  v3 = v6;
  if (v6)
  {
    goto LABEL_3;
  }

  v7 = objc_opt_self();
  v8 = a1;
  v9 = [v7 ams_sharedAccountStore];
  v10 = [v9 ams_activeiTunesAccount];

  v11 = [v10 ams_DSID];
  v21 = v11;
  v22 = 0x80;
  v12 = v11;
  ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v21, 1, &v18);
  sub_1E1361A60(v21, v22);
  sub_1E1361A60(v18, v19);
  v13 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_purchaseSuccessHandler);
  if (v13)
  {
    v13();
  }

  if (qword_1EE1D63A0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v20 = sub_1E13006E4(0, &qword_1ECEBA168);
  v18 = v8;
  v14 = v8;
  sub_1E1AF38BC();
  sub_1E13E44F8(&v18);
  sub_1E1AF548C();
}

void sub_1E1830F9C(void *a1, id a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkFailureHandler);
    if (v4)
    {
      v4(a2);
    }

    else
    {
      v14 = a2;
    }

    if (qword_1EE1D63A0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v19 = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v17);
    sub_1E1AF54AC();
  }

  else if (a1)
  {
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];

    v10 = [v9 ams_DSID];
    v20 = v10;
    v21 = 0x80;
    v11 = v10;
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v20, 1, &v17);
    sub_1E1361A60(v20, v21);
    sub_1E1361A60(v17, v18);
    v12 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29DynamicViewControllerDelegate_carrierLinkSuccessHandler);
    if (v12)
    {
      v12();
    }

    if (qword_1EE1D63A0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215660, qword_1EE215678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v19 = sub_1E13006E4(0, &unk_1ECEBA158);
    v17 = v7;
    v13 = v7;
    sub_1E1AF38BC();
    sub_1E13E44F8(&v17);
    sub_1E1AF548C();
  }
}

uint64_t Brick.makeMSOPersonalizedModel(with:)(uint64_t *a1)
{
  v2 = v1;
  v87 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = &v69 - v5;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF3E1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = a1[1];
  if (!v16)
  {
    return 0;
  }

  v80 = v2;
  v70 = v9;
  v71 = v7;
  v72 = v6;
  v86 = v11;
  v17 = *a1;
  v82 = v10;
  v19 = a1[2];
  v18 = a1[3];
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  v20 = OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_url;
  v21 = &v69 - v15;
  v22 = sub_1E1AEFCCC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, v18 + v20, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v101[3] = &type metadata for MSOContext;
  v24 = swift_allocObject();
  v101[0] = v24;
  v24[2] = v17;
  v24[3] = v16;
  v24[4] = v19;
  v24[5] = v18;
  v84 = v17;
  v25 = v17;
  v26 = v86;
  sub_1E13BBA90(v25, v16);
  v85 = v16;

  v83 = v19;
  v27 = v82;

  v89 = v18;

  sub_1E1AF3DFC();
  v28 = sub_1E1AF4D0C();
  v30 = v29;
  type metadata accessor for FlowAction();
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = (v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 21;
  v81 = v21;
  sub_1E134FD1C(v21, v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v34 = (v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  *v34 = 0;
  v34[1] = 0;
  v35 = v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  *v35 = xmmword_1E1B04490;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 16) = 0;
  *(v35 + 40) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
  v36 = (v31 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v36 = v28;
  v36[1] = v30;
  sub_1E134FD1C(v102, v100, &unk_1ECEB5670);
  v37 = *(v26 + 16);
  v79 = v13;
  v37(v31 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v13, v27);
  v38 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v39 = sub_1E1AF46DC();
  (*(*(v39 - 8) + 56))(v31 + v38, 1, 1, v39);
  v40 = (v31 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v31 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v100, &v97, &unk_1ECEB5670);
  if (*(&v98 + 1))
  {
    v42 = v98;
    *v41 = v97;
    *(v41 + 16) = v42;
    *(v41 + 32) = v99;
    v43 = v89;
  }

  else
  {
    v45 = v70;
    sub_1E1AEFE9C();
    v46 = sub_1E1AEFE7C();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v96[0] = v46;
    v96[1] = v48;
    v43 = v89;
    v26 = v86;
    sub_1E1AF6F6C();
    sub_1E1308058(&v97, &unk_1ECEB5670);
  }

  v49 = v80;
  sub_1E1308058(v100, &unk_1ECEB5670);
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;

  FlowAction.setPageData(_:)(v101);

  (*(v26 + 8))(v79, v27);
  sub_1E1308058(v81, &unk_1ECEB4B60);
  sub_1E1308058(v102, &unk_1ECEB5670);
  sub_1E1308058(v101, &qword_1ECEB2DF0);
  memset(v96, 0, 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1E1B06D70;
  *(v50 + 32) = *(v43 + OBJC_IVAR____TtC11AppStoreKit15MSOProviderData_artwork);
  v51 = v49[4];
  v52 = v49[5];
  v53 = v49[7];
  v81 = v49[6];
  v82 = v51;
  LODWORD(v86) = *(v49 + OBJC_IVAR____TtC11AppStoreKit5Brick_personalizationStyle);
  v95[3] = v87;
  v95[4] = sub_1E1831E44();
  v95[0] = v49;
  v54 = v88;
  sub_1E134FD1C(v49 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics, v88, &unk_1ECEB1770);
  v55 = qword_1ECEB1190;

  v80 = v53;

  if (v55 != -1)
  {
    swift_once();
  }

  v78 = BYTE1(dword_1ECEB9550);
  LODWORD(v79) = dword_1ECEB9550;
  v76 = HIBYTE(dword_1ECEB9550);
  v77 = BYTE2(dword_1ECEB9550);
  v74 = byte_1ECEB9555;
  v75 = byte_1ECEB9554;
  v73 = byte_1ECEB9556;
  v44 = swift_allocObject();
  v56 = v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_originalModel;
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0;
  v57 = v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_id;
  sub_1E134FD1C(v96, &v92, &unk_1ECEB5670);
  if (*(&v93 + 1))
  {
    v58 = v93;
    *v57 = v92;
    *(v57 + 16) = v58;
    *(v57 + 32) = v94;
  }

  else
  {
    v59 = v70;
    sub_1E1AEFE9C();
    v60 = sub_1E1AEFE7C();
    v62 = v61;
    (*(v71 + 8))(v59, v72);
    v90 = v60;
    v91 = v62;
    v54 = v88;
    sub_1E1AF6F6C();
    sub_1E1308058(&v92, &unk_1ECEB5670);
  }

  sub_1E13BBAE0(v84, v85);
  sub_1E1308058(v96, &unk_1ECEB5670);
  sub_1E134B7C8(v54, v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_impressionMetrics);
  *(v44 + 16) = v50;
  *(v44 + 24) = 2;
  v63 = v81;
  *(v44 + 32) = v82;
  *(v44 + 40) = v52;
  v64 = v80;
  *(v44 + 48) = v63;
  *(v44 + 56) = v64;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 96) = 0u;
  *(v44 + 112) = 0;
  LOBYTE(v64) = v78;
  *(v44 + 120) = v79;
  *(v44 + 121) = v64;
  LOBYTE(v64) = v76;
  *(v44 + 122) = v77;
  *(v44 + 123) = v64;
  LOBYTE(v64) = v74;
  *(v44 + 124) = v75;
  *(v44 + 125) = v64;
  *(v44 + 126) = v73;
  *(v44 + 128) = v31;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_personalizationStyle) = v86;
  swift_beginAccess();
  sub_1E1831E9C(v95, v56);
  swift_endAccess();
  v65 = v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_shelfBackground;
  *(v65 + 32) = 0x8000;
  *v65 = 0u;
  *(v65 + 16) = 0u;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_flowPreviewActionsConfiguration) = 0;
  v66 = v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_artworkSafeArea;
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = 2;
  *(v66 + 24) = 0u;
  *(v66 + 40) = 0u;
  *(v66 + 56) = 0;
  v67 = v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_textSafeArea;
  *v67 = 0;
  *(v67 + 8) = 0;
  *(v67 + 16) = 2;
  *(v67 + 24) = 0u;
  *(v67 + 40) = 0u;
  *(v67 + 56) = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_backgroundColor) = 0;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit5Brick_placementStyle) = 0;
  return v44;
}

unint64_t sub_1E1831E44()
{
  result = qword_1ECEBA170;
  if (!qword_1ECEBA170)
  {
    type metadata accessor for Brick();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA170);
  }

  return result;
}

uint64_t sub_1E1831E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *RibbonBarItem.__allocating_init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a3;
  v35 = a4;
  v32 = a9;
  v33 = a2;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id;
  sub_1E134FD1C(a1, &v38, &unk_1ECEB5670);
  if (*(&v39 + 1))
  {
    v20 = v39;
    *v19 = v38;
    *(v19 + 1) = v20;
    *(v19 + 4) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v30 = a5;
    v31 = a6;
    v22 = a8;
    v23 = v21;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a7 = v24;
    a5 = v30;
    a6 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v32, v18 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics);
  v27 = v34;
  v18[2] = v33;
  v18[3] = v27;
  v18[4] = v35;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  return v18;
}

void *RibbonBarItem.init(id:artwork:artworkTintColor:accessibilityLabel:title:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v32 = a4;
    v33 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    a4 = v32;
    a5 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v10 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 4) = v44;
  sub_1E134B7C8(v34, v10 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics);
  v30 = v36;
  v10[2] = v35;
  v10[3] = v30;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a6;
  v10[7] = a7;
  v10[8] = a8;
  return v10;
}

uint64_t RibbonBarItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RibbonBarItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RibbonBarItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v66 = *v3;
  v73 = sub_1E1AF39DC();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v59 - v9;
  v61 = sub_1E1AEFEAC();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v79 = a1;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  v24 = v23;
  v26 = *(v13 + 8);
  v25 = v13 + 8;
  v27 = v21;
  v28 = v12;
  v29 = v26;
  v26(v27, v28);
  v68 = v24;
  if (v24)
  {
    v66 = v22;
    sub_1E1AF381C();
    v30 = sub_1E1AF37CC();
    v64 = v25;
    v65 = v28;
    v63 = v29;
    if (v31)
    {
      v74 = v30;
      v75 = v31;
      sub_1E1AF6F6C();
      v32 = v18;
      v33 = v28;
    }

    else
    {
      sub_1E1AEFE9C();
      v37 = sub_1E1AEFE7C();
      v38 = v28;
      v40 = v39;
      (*(v60 + 8))(v11, v61);
      v74 = v37;
      v75 = v40;
      sub_1E1AF6F6C();
      v32 = v18;
      v33 = v38;
    }

    v29(v32, v33);
    v41 = v3 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id;
    v42 = v77;
    *v41 = v76;
    *(v41 + 1) = v42;
    *(v41 + 4) = v78;
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v43 = v72;
    v44 = *(v71 + 16);
    v45 = v70;
    v44(v70, v72, v73);
    v46 = v67;
    sub_1E1AF464C();
    sub_1E134B7C8(v46, v3 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics);
    v47 = v73;
    v44(v45, v43, v73);
    type metadata accessor for Artwork();
    v48 = v79;
    sub_1E1AF381C();
    v44(v69, v45, v47);
    sub_1E1833FD0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v3[2] = v76;
    sub_1E1AF381C();
    v49 = JSONObject.appStoreColor.getter();
    v50 = v65;
    v51 = v63;
    v63(v15, v65);
    v3[3] = v49;
    sub_1E1AF381C();
    v52 = sub_1E1AF37CC();
    v54 = v53;
    v51(v15, v50);
    v62 = v3;
    v3[4] = v52;
    v3[5] = v54;
    v55 = v68;
    v3[6] = v66;
    v3[7] = v55;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v69 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v45);
    v56 = *(v71 + 8);
    v57 = v73;
    v56(v72, v73);
    v51(v48, v50);
    v51(v15, v50);
    v3 = v62;
    v56(v45, v57);
    v3[8] = v69;
  }

  else
  {
    v34 = sub_1E1AF5A7C();
    sub_1E1833FD0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v35 = 0x656C746974;
    v36 = v66;
    v35[1] = 0xE500000000000000;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    (*(v71 + 8))(v72, v73);
    v29(v79, v28);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *RibbonBarItem.artworkTintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RibbonBarItem.accessibilityLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RibbonBarItem.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RibbonBarItem.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t RibbonBarItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF468C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  if (v1[2])
  {
    sub_1E1AF764C();
    sub_1E1448710();
    v17 = v1[3];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1E1AF764C();
    v19 = v1[8];
    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1E1AF764C();
  v17 = v1[3];
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1E1AF764C();
  v18 = v17;
  sub_1E1AF6D1C();

  v19 = v2[8];
  if (v19)
  {
LABEL_4:
    sub_1E134E724(v19 + OBJC_IVAR____TtC11AppStoreKit6Action_id, v31);
    goto LABEL_8;
  }

LABEL_7:
  v32 = 0;
  memset(v31, 0, sizeof(v31));
LABEL_8:
  sub_1E134FD1C(v31, &v28, &unk_1ECEB5670);
  if (*(&v29 + 1))
  {
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    sub_1E1AF764C();
    _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
    sub_1E134B88C(v26);
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1308058(v31, &unk_1ECEB5670);
  v20 = v2[5];
  v25[1] = a1;
  sub_1E1AF764C();
  if (v20)
  {
    sub_1E1AF5F0C();
  }

  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics, v10, &unk_1ECEB1770);
  v21 = sub_1E1AF46DC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1E1308058(v10, &unk_1ECEB1770);
    v23 = 1;
  }

  else
  {
    sub_1E1AF46AC();
    (*(v22 + 8))(v10, v21);
    v23 = 0;
  }

  (*(v5 + 56))(v16, v23, 1, v4);
  sub_1E134FD1C(v16, v13, &qword_1ECEB8960);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_1E1AF764C();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_1E1AF764C();
    sub_1E1833FD0(&qword_1EE1D29A0, MEMORY[0x1E69AB1C8]);
    sub_1E1AF5D1C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1E1308058(v16, &qword_1ECEB8960);
}

uint64_t RibbonBarItem.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics, &unk_1ECEB1770);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id);
  return v0;
}

uint64_t RibbonBarItem.__deallocating_deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics, &unk_1ECEB1770);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id);

  return swift_deallocClassInstance();
}

uint64_t RibbonBarItem.hashValue.getter()
{
  sub_1E1AF762C();
  RibbonBarItem.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E18332BC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 64);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1833FD0(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t *sub_1E183335C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = RibbonBarItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18333C4()
{
  sub_1E1AF762C();
  RibbonBarItem.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E183342C()
{
  sub_1E1AF762C();
  RibbonBarItem.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit13RibbonBarItemC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1E1AF468C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA180);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v61 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v62 = &v55 - v23;
  if ((MEMORY[0x1E68FFC60](a1 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id, a2 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_id, v22) & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_35;
  }

  v58 = v9;
  v59 = v5;
  v24 = a1[2];
  v25 = a2[2];
  if (!v24)
  {
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_10:
    v57 = v4;
    v27 = a1[3];
    v28 = a2[3];
    if (v27)
    {
      if (!v28)
      {
        goto LABEL_35;
      }

      sub_1E1355E88();
      v29 = v28;
      v30 = v27;
      v31 = sub_1E1AF6D0C();

      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v28)
    {
      goto LABEL_35;
    }

    v32 = a1[8];
    if (v32)
    {
      sub_1E134E724(v32 + OBJC_IVAR____TtC11AppStoreKit6Action_id, v72);
      v33 = a2[8];
      if (v33)
      {
LABEL_17:
        sub_1E134E724(v33 + OBJC_IVAR____TtC11AppStoreKit6Action_id, v70);
        goto LABEL_20;
      }
    }

    else
    {
      v73 = 0;
      memset(v72, 0, sizeof(v72));
      v33 = a2[8];
      if (v33)
      {
        goto LABEL_17;
      }
    }

    v71 = 0;
    memset(v70, 0, sizeof(v70));
LABEL_20:
    sub_1E134FD1C(v72, v66, &unk_1ECEB5670);
    sub_1E134FD1C(v70, &v67, &unk_1ECEB5670);
    if (v66[3])
    {
      sub_1E134FD1C(v66, v65, &unk_1ECEB5670);
      if (*(&v68 + 1))
      {
        v63[0] = v67;
        v63[1] = v68;
        v64 = v69;
        v34 = MEMORY[0x1E68FFC60](v65, v63);
        sub_1E134B88C(v63);
        sub_1E1308058(v70, &unk_1ECEB5670);
        sub_1E1308058(v72, &unk_1ECEB5670);
        sub_1E134B88C(v65);
        sub_1E1308058(v66, &unk_1ECEB5670);
        if (v34)
        {
          goto LABEL_26;
        }

LABEL_35:
        LOBYTE(v25) = 0;
        return v25 & 1;
      }

      sub_1E1308058(v70, &unk_1ECEB5670);
      sub_1E1308058(v72, &unk_1ECEB5670);
      sub_1E134B88C(v65);
    }

    else
    {
      sub_1E1308058(v70, &unk_1ECEB5670);
      sub_1E1308058(v72, &unk_1ECEB5670);
      if (!*(&v68 + 1))
      {
        sub_1E1308058(v66, &unk_1ECEB5670);
LABEL_26:
        v35 = a1[5];
        v36 = a2[5];
        if (v35)
        {
          if (!v36 || (a1[4] != a2[4] || v35 != v36) && (sub_1E1AF74AC() & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if (v36)
        {
          goto LABEL_35;
        }

        sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics, v15, &unk_1ECEB1770);
        v40 = sub_1E1AF46DC();
        v41 = *(v40 - 8);
        v56 = *(v41 + 48);
        if (v56(v15, 1, v40) == 1)
        {
          sub_1E1308058(v15, &unk_1ECEB1770);
          v42 = 1;
          v43 = v62;
        }

        else
        {
          v43 = v62;
          v55 = v41;
          sub_1E1AF46AC();
          v41 = v55;
          (*(v55 + 8))(v15, v40);
          v42 = 0;
        }

        v55 = *(v59 + 56);
        (v55)(v43, v42, 1, v57);
        sub_1E134FD1C(a2 + OBJC_IVAR____TtC11AppStoreKit13RibbonBarItem_impressionMetrics, v12, &unk_1ECEB1770);
        if (v56(v12, 1, v40) == 1)
        {
          sub_1E1308058(v12, &unk_1ECEB1770);
          v44 = 1;
        }

        else
        {
          sub_1E1AF46AC();
          (*(v41 + 8))(v12, v40);
          v44 = 0;
        }

        v45 = v57;
        (v55)(v20, v44, 1, v57);
        v46 = *(v7 + 48);
        v47 = v62;
        v48 = v58;
        sub_1E134FD1C(v62, v58, &qword_1ECEB8960);
        sub_1E134FD1C(v20, v48 + v46, &qword_1ECEB8960);
        v49 = *(v59 + 48);
        if (v49(v48, 1, v45) == 1)
        {
          sub_1E1308058(v20, &qword_1ECEB8960);
          v25 = v58;
          sub_1E1308058(v47, &qword_1ECEB8960);
          if (v49(v25 + v46, 1, v45) == 1)
          {
            sub_1E1308058(v25, &qword_1ECEB8960);
            LOBYTE(v25) = 1;
            return v25 & 1;
          }
        }

        else
        {
          v50 = v61;
          sub_1E134FD1C(v48, v61, &qword_1ECEB8960);
          if (v49(v48 + v46, 1, v45) != 1)
          {
            v51 = v50;
            v53 = v59;
            v52 = v60;
            (*(v59 + 32))(v60, v48 + v46, v45);
            sub_1E1833FD0(&qword_1EE1D2998, MEMORY[0x1E69AB1C8]);
            LOBYTE(v25) = sub_1E1AF5DAC();
            v54 = *(v53 + 8);
            v54(v52, v45);
            sub_1E1308058(v20, &qword_1ECEB8960);
            sub_1E1308058(v62, &qword_1ECEB8960);
            v54(v51, v45);
            sub_1E1308058(v48, &qword_1ECEB8960);
            return v25 & 1;
          }

          sub_1E1308058(v20, &qword_1ECEB8960);
          v25 = v58;
          sub_1E1308058(v47, &qword_1ECEB8960);
          (*(v59 + 8))(v50, v45);
        }

        v37 = &qword_1ECEBA180;
        v38 = v25;
        goto LABEL_34;
      }
    }

    v37 = &qword_1ECEB3840;
    v38 = v66;
LABEL_34:
    sub_1E1308058(v38, v37);
    goto LABEL_35;
  }

  if (v25)
  {

    v26 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v24, v25);

    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  return v25 & 1;
}

uint64_t type metadata accessor for RibbonBarItem()
{
  result = qword_1EE1F49E8;
  if (!qword_1EE1F49E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1833EB8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1833FD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1834054(uint64_t a1)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA188);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_1E1AF4A9C();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA190);
  v7 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  sub_1E1AF413C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEBA198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
    sub_1E1481038();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0;
    return sub_1E1AF581C();
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1E1AF413C();
    if ((*(v28 + 48))(v3, 1, v4) == 1)
    {
      sub_1E1308058(v3, &qword_1ECEBA188);
      v19 = MEMORY[0x1E69AB128];
    }

    else
    {
      v25 = v7;
      v20 = *(v28 + 32);
      v20(v6, v3, v4);
      v20(v9, v6, v4);
      v7 = v25;
      v19 = MEMORY[0x1E69AB120];
    }

    v21 = v26;
    (*(v7 + 104))(v9, *v19, v26);
    v22 = sub_1E1AF43FC();
    v23 = v7;
    v24 = v22;
    (*(v23 + 8))(v9, v21);
    (*(v14 + 8))(v16, v13);
    return v24;
  }
}

uint64_t SearchFocusDiffablePagePresenter.init(objectGraph:sidePackedPage:supportsFastImpressions:advertLifecycleMetricsReporter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v122 = a2;
  v120 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA1C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v118 = v100 - v9;
  v114 = sub_1E1AF68DC();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v109);
  v111 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v110 = v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v100 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v108 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v100 - v18;
  v20 = sub_1E1AF3D0C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (v5 + qword_1ECEF4B80);
  *v24 = 0;
  v24[1] = 0;
  v25 = v5 + qword_1ECEF4B88;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v5 + qword_1ECEF4B90) = 0;
  v26 = qword_1ECEBA1D0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA1D8);
  v28 = *(v27 - 8);
  v116 = *(v28 + 56);
  v117 = v27;
  v115 = v28 + 56;
  v116(v5 + v26, 1, 1);
  *(v5 + qword_1ECEBA1E0) = 0;
  v121 = a4;
  v119 = v16;
  if (a3)
  {
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v29 = v124[0];
    v104 = "GenericPagePresenter";
    v30 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v31 = *(v21 + 104);
    LODWORD(v106) = *MEMORY[0x1E69AAFB8];
    v105 = v31;
    v31(v23);
    v102 = v30;
    sub_1E1AF52AC();
    v32 = *(v21 + 8);
    v100[1] = v21 + 8;
    v103 = v32;
    v32(v23, v20);
    sub_1E1AF532C();
    v101 = v108[1];
    v101(v19, v17);
    v33 = v124[0];
    type metadata accessor for FastImpressionsTracker();
    v34 = swift_allocObject();
    v34[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    v107 = v29;
    swift_allocObject();
    v34[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v34[6] = sub_1E1AF4E8C();
    v108 = v34;
    v34[4] = v33;
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v105(v23, v106, v20);
    sub_1E1AF52AC();
    v103(v23, v20);
    sub_1E1AF532C();
    v101(v19, v17);
    v35 = v124[0];
    type metadata accessor for FastImpressionFlushGate();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36[4] = 0;
    v36[5] = 0;
    v36[2] = v35;
    *(v5 + qword_1ECEBA1E8) = v36;
    v37 = sub_1E1AEFCCC();
    (*(*(v37 - 8) + 56))(v119, 1, 1, v37);
    sub_1E1300B24(v121, v124);
    v106 = sub_1E1836BD8(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
    *(v5 + qword_1EE2169B8) = 0;
    v38 = MEMORY[0x1E69E7CC0];
    *(v5 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v5 + qword_1EE1ED400) = 0;
    v39 = *(*v5 + 640);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F0);
    v41 = *(*(v40 - 8) + 56);
    v41(v5 + v39, 1, 1, v40);
    v42 = *(*v5 + 648);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v43 - 8) + 56))(v5 + v42, 1, 1, v43);
    v44 = *(*v5 + 656);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32E8);
    (*(*(v45 - 8) + 56))(v5 + v44, 1, 1, v45);
    v41(v5 + *(*v5 + 664), 1, 1, v40);
    v46 = *(*v5 + 672);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v47 - 8) + 56))(v5 + v46, 1, 1, v47);
    v48 = *(*v5 + 680);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v49 - 8) + 56))(v5 + v48, 1, 1, v49);
    v50 = *(*v5 + 688);
    sub_1E1361A80();
    v51 = v120;

    sub_1E1AF322C();
    v123 = v38;
    sub_1E1836BD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v112 + 104))(v113, *MEMORY[0x1E69E8090], v114);
    *(v5 + v50) = sub_1E1AF692C();
    sub_1E13C6184(v5 + *(*v5 + 696));
    v52 = (v5 + *(*v5 + 704));
    *v52 = 0u;
    v52[1] = 0u;
    *(v52 + 25) = 0u;
    v53 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v5 + v53) = sub_1E1AF5BEC();
    v54 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v5 + v54) = sub_1E1AF5BEC();
    v55 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v5 + v55) = sub_1E1AF5BEC();
    *(v5 + *(*v5 + 736)) = 0;
    v56 = (v5 + *(*v5 + 752));
    *v56 = 0;
    v56[1] = 0;
    v57 = v119;
    sub_1E134FD1C(v119, v5 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(v124, v5 + *(*v5 + 744), &qword_1ECEB24F8);
    v58 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v5 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v59);

    v60 = v108;

    v61 = sub_1E13C59C4(v51, v60, v106, 0);
    v62 = *(*v61 + 1112);

    *(v61 + qword_1EE2169B8) = v62(v122);

    sub_1E13CCB74(0);

    sub_1E1308058(v124, &qword_1ECEB24F8);
    v63 = v57;
  }

  else
  {
    *(v5 + qword_1ECEBA1E8) = 0;
    v64 = sub_1E1AEFCCC();
    (*(*(v64 - 8) + 56))(v16, 1, 1, v64);
    sub_1E1300B24(a4, v124);
    *(v5 + qword_1EE2169B8) = 0;
    v65 = MEMORY[0x1E69E7CC0];
    *(v5 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v5 + qword_1EE1ED400) = 0;
    v66 = *(*v5 + 640);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F0);
    v68 = *(*(v67 - 8) + 56);
    v68(v5 + v66, 1, 1, v67);
    v69 = *(*v5 + 648);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v70 - 8) + 56))(v5 + v69, 1, 1, v70);
    v71 = *(*v5 + 656);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32E8);
    (*(*(v72 - 8) + 56))(v5 + v71, 1, 1, v72);
    v68(v5 + *(*v5 + 664), 1, 1, v67);
    v73 = *(*v5 + 672);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v74 - 8) + 56))(v5 + v73, 1, 1, v74);
    v75 = *(*v5 + 680);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v76 - 8) + 56))(v5 + v75, 1, 1, v76);
    v77 = *(*v5 + 688);
    sub_1E1361A80();

    sub_1E1AF322C();
    v123 = v65;
    sub_1E1836BD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v112 + 104))(v113, *MEMORY[0x1E69E8090], v114);
    *(v5 + v77) = sub_1E1AF692C();
    sub_1E13C6184(v5 + *(*v5 + 696));
    v78 = (v5 + *(*v5 + 704));
    *v78 = 0u;
    v78[1] = 0u;
    *(v78 + 25) = 0u;
    v79 = *(*v5 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v5 + v79) = sub_1E1AF5BEC();
    v80 = *(*v5 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v5 + v80) = sub_1E1AF5BEC();
    v81 = *(*v5 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v5 + v81) = sub_1E1AF5BEC();
    *(v5 + *(*v5 + 736)) = 0;
    v82 = (v5 + *(*v5 + 752));
    *v82 = 0;
    v82[1] = 0;
    v83 = v119;
    sub_1E134FD1C(v119, v5 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(v124, v5 + *(*v5 + 744), &qword_1ECEB24F8);
    v84 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v5 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v85);

    v61 = sub_1E13C59C4(v86, 0, 0, 0);
    v87 = *(*v61 + 1112);

    *(v61 + qword_1EE2169B8) = v87(v122);

    sub_1E13CCB74(0);

    sub_1E1308058(v124, &qword_1ECEB24F8);
    v63 = v83;
  }

  sub_1E1308058(v63, &unk_1ECEB4B60);
  type metadata accessor for FastImpressionsTracker();
  v88 = swift_dynamicCastClass();
  if (v88)
  {
    v89 = v88;
    swift_beginAccess();
    *(v89 + 24) = &protocol witness table for SearchFocusDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v90 = *(v61 + qword_1ECEBA1E8);
    if (v90)
    {
      v91 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v92 = *(v90 + 32);
      v93 = *(v90 + 40);
      *(v90 + 32) = sub_1E1835D98;
      *(v90 + 40) = v91;

      sub_1E1361B18(v92, v93);
    }
  }

  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_1E1AF416C();
  v94 = v124[0];
  v95 = sub_1E1361A80();
  v96 = sub_1E1AF68EC();
  v124[3] = v95;
  v124[4] = MEMORY[0x1E69AB720];
  v124[0] = v96;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C8);
  sub_1E1302CD4(&qword_1ECEBA1F0, &qword_1ECEB94C8);
  v97 = v118;
  sub_1E1AF3CFC();

  __swift_destroy_boxed_opaque_existential_1(v121);

  __swift_destroy_boxed_opaque_existential_1(v124);
  (v116)(v97, 0, 1, v117);
  v98 = qword_1ECEBA1D0;
  swift_beginAccess();
  sub_1E1835D28(v97, v61 + v98);
  swift_endAccess();
  return v61;
}

uint64_t sub_1E1835C2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    sub_1E183B7E0(v2);
  }

  return result;
}

uint64_t sub_1E1835CC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1835DA0();
  }

  return result;
}

uint64_t sub_1E1835D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1835DA0()
{
  if (qword_1EE1E35C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1EE1E35C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF38CC();
  v6[3] = MEMORY[0x1E69E6158];
  v6[0] = 0xD000000000000018;
  v6[1] = 0x80000001E1B78FC0;
  sub_1E1AF38BC();
  sub_1E1308058(v6, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  if (*(v0 + qword_1EE2169B8))
  {
    type metadata accessor for SearchFocusDiffablePageContentPresenter();
    result = swift_dynamicCastClass();
    if (result)
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E1B02CC0;
      v5 = qword_1ECEB1278;

      if (v5 != -1)
      {
        swift_once();
      }

      sub_1E134E724(&unk_1ECEBA1A0, v4 + 32);
      sub_1E1A16EB8(v4, sub_1E1801494, 0, v3);
    }
  }

  return result;
}

uint64_t SearchFocusDiffablePagePresenter.pageTitle.getter()
{
  v1 = (v0 + qword_1ECEF4B80);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SearchFocusDiffablePagePresenter.maxShelfRowCount.getter()
{
  v1 = v0 + qword_1ECEF4B88;
  swift_beginAccess();
  return *v1;
}

uint64_t SearchFocusDiffablePagePresenter.prefersSmallShelfTitles.getter()
{
  v1 = qword_1ECEF4B90;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E18360F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v12 = qword_1ECEBA1E0;
  v13 = *(v1 + qword_1ECEBA1E0);
  v14 = a1;
  if (!a1)
  {

    v14 = v13;
  }

  *(v1 + v12) = v14;

  v60 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, v11, &unk_1ECEB4B60);
  v15 = a1;
  v16 = v11;
  if (!a1)
  {
  }

  v63 = v15;
  swift_beginAccess();
  v17 = v1[3];
  swift_beginAccess();
  v18 = v1[4];
  type metadata accessor for SearchFocusDiffablePageContentPresenter();
  v19 = swift_allocObject();
  sub_1E134FD1C(v16, v8, &unk_1ECEB4B60);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v16;
  v56 = v16;
  v23 = swift_allocObject();
  sub_1E13E23F8(v8, v23 + v20);
  v24 = v60;
  *(v23 + v21) = v60;
  *(v23 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v18;
  sub_1E134FD1C(v22, v66, &unk_1ECEB4B60);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1E155B9C0;
  *(v26 + 24) = v24;
  v61 = v26;
  *(v19 + qword_1EE1E9D48) = 0;
  v27 = MEMORY[0x1E69E7CC0];
  *(v19 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v28 = qword_1EE2166A0;
  v65 = v17;

  swift_retain_n();
  v64 = v18;
  swift_retain_n();

  *(v19 + v28) = sub_1E159D6F0(v27);
  v29 = (v19 + qword_1EE1E9E00);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v19 + qword_1EE1E9EA0);
  *v30 = 0;
  v30[1] = 0;
  v59 = v30;
  v31 = (v19 + qword_1EE1E9E08);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v19 + qword_1EE1E9DF0);
  *v32 = 0;
  v32[1] = 0;
  v58 = v32;
  v33 = (v19 + qword_1EE1E9E98);
  *v33 = 0;
  v33[1] = 0;
  v57 = v33;
  v34 = (v19 + qword_1EE216698);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v19 + qword_1EE2166D0) = 0;
  *(v19 + qword_1EE1E9D50) = 0;
  *(v19 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v19 + qword_1EE2166C8) = 0;
  v35 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F8);
  swift_allocObject();
  *(v19 + v35) = sub_1E1AF5BEC();
  v36 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v19 + v36) = sub_1E1AF5BEC();
  v37 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3310);
  swift_allocObject();
  *(v19 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE2166B0;
  swift_allocObject();
  *(v19 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v19 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v41 = sub_1E1AF5BEC();

  v62 = v25;

  sub_1E1308058(v56, &unk_1ECEB4B60);
  *(v19 + v40) = v41;
  v42 = qword_1EE1E9DD8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v44 = *(*(v43 - 8) + 56);
  v44(v19 + v42, 1, 1, v43);
  v44(v19 + qword_1EE1E9DE0, 1, 1, v43);
  *(v19 + 16) = v24;
  sub_1E13E23F8(v66, v19 + qword_1EE216678);
  *v29 = sub_1E155BB1C;
  v29[1] = v23;
  v45 = v63;
  *v31 = 0;
  v31[1] = 0;
  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    v47 = sub_1E1445E6C;
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v49 = v58;
  v48 = v59;
  *v59 = v47;
  v48[1] = v46;
  v50 = v61;
  v51 = v62;
  *v49 = sub_1E155B86C;
  v49[1] = v51;
  v52 = v57;
  *v57 = sub_1E13E2490;
  v52[1] = v50;
  v53 = v64;
  *(v19 + qword_1EE1E9E90) = v65;
  *(v19 + qword_1EE216690) = v53;
  return v19;
}

uint64_t sub_1E1836788(uint64_t a1, char a2)
{
  v3 = a1;
  sub_1E1A8075C(a1, a2);
  v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_maxShelfRowCount);
  v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_maxShelfRowCount + 8);
  v6 = v2 + qword_1ECEF4B88;
  swift_beginAccess();
  *v6 = v4;
  *(v6 + 8) = v5;
  LOBYTE(v3) = *(v3 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_prefersSmallShelfTitles);
  v7 = qword_1ECEF4B90;
  result = swift_beginAccess();
  *(v2 + v7) = v3;
  return result;
}

Swift::Void __swiftcall SearchFocusDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_1ECEBA1E8);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_1E137A684;
      v9[5] = v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1E1367148;
      v9[3] = &block_descriptor_78;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1E1836A18()
{

  sub_1E1308058(v0 + qword_1ECEBA1D0, &qword_1ECEBA1C8);
}

uint64_t SearchFocusDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DB6D4();

  sub_1E1308058(v0 + qword_1ECEBA1D0, &qword_1ECEBA1C8);

  return v0;
}

uint64_t SearchFocusDiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_1E13DB6D4();

  sub_1E1308058(v0 + qword_1ECEBA1D0, &qword_1ECEBA1C8);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1836BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchFocusDiffablePagePresenter()
{
  result = qword_1ECEBA1F8;
  if (!qword_1ECEBA1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1836C6C()
{
  sub_1E1836D50();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1E1836D50()
{
  if (!qword_1ECEBA208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA1D8);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEBA208);
    }
  }
}

double sub_1E1836DC4(double a1)
{
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13BC65C(v1, v11);
  if (v12)
  {
    if (v12 == 1)
    {
      return *v11 * a1;
    }

    else
    {
      sub_1E1838D08(v11);
    }
  }

  else
  {
    sub_1E1308EC0(v11, v10);
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    a1 = v7;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return a1;
}

uint64_t BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E1837454(a1, a7, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v14 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_1E134FD1C(a4, a7 + v14[5], &qword_1ECEB2AD0);
  sub_1E134FD1C(a5, a7 + v14[6], &qword_1ECEB4E00);
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF14BC();
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);
  sub_1E1AF14BC();
  sub_1E1308058(a5, &qword_1ECEB4E00);
  sub_1E1308058(a4, &qword_1ECEB2AD0);
  sub_1E1838CA8(a1, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v15 = a7 + v14[9];
  v16 = *(a6 + 16);
  *v15 = *a6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a6 + 32);
  __swift_destroy_boxed_opaque_existential_1(a3);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior.init(lineCountThreshold:standardUseCase:compressedUseCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v8 = *(v7 + 20);
  v9 = sub_1E1AF12AC();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t BreakoutDetailsLayout.Metrics.init(titleSpace:titleBehavior:descriptionSpace:badgeTextSpace:badgeWordmarkSpace:callToActionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_1E1308EC0(a1, a7);
  v21 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_1E18379F8(a2, a7 + v21[5], type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  sub_1E1308EC0(a3, a7 + v21[6]);
  sub_1E1308EC0(a4, a7 + v21[7]);
  sub_1E1308EC0(a5, a7 + v21[8]);
  result = sub_1E1308EC0(a6, a7 + v21[9]);
  v23 = (a7 + v21[10]);
  *v23 = a8;
  v23[1] = a9;
  v23[2] = a10;
  v23[3] = a11;
  return result;
}

uint64_t BreakoutDetailsLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t sub_1E1837454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1837508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BreakoutDetailsLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeTextSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.callToActionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v10 = (v4 + *(result + 40));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_1E18379F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double BreakoutDetailsLayout.measurements(fitting:in:)(void *a1, double a2)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_1E1AF6B5C();
  v5 = v4;
  sub_1E1837B74(a1, v7);
  _VerticalFlowLayout.measurements(fitting:in:)(v5);

  return a2;
}

uint64_t sub_1E1837B74@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v104 = a2;
  v105 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v101 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v5 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = 1;
  v9 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_1E134FD1C(v2 + v9[6], &v123, &qword_1ECEB4E00);
  v103 = v5;
  v100 = a1;
  if (v124)
  {
    sub_1E1308EC0(&v123, &v107);
    v10 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
    v129 = 0;
    v128 = 0u;
    v127 = 0u;
    sub_1E1300B24(&v107, &v123);
    v11 = v2;
    sub_1E1300B24(v2 + v10, v126);
    v125 = 1;
    v130 = 11;
    sub_1E149BCE4(&v123, &v116);
    v12 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1E172D4E0((v13 > 1), v14 + 1, 1, v12);
    }

    v15 = v105;
    sub_1E149BD40(&v123);
    __swift_destroy_boxed_opaque_existential_1(&v107);
    *(v12 + 2) = v14 + 1;
    v16 = &v12[136 * v14];
    *(v16 + 2) = v116;
    v17 = v117;
    v18 = v118;
    v19 = v120;
    *(v16 + 5) = v119;
    *(v16 + 6) = v19;
    *(v16 + 3) = v17;
    *(v16 + 4) = v18;
    v20 = v121[0];
    v21 = v121[1];
    v22 = v121[2];
    *(v16 + 20) = v122;
    *(v16 + 8) = v21;
    *(v16 + 9) = v22;
    *(v16 + 7) = v20;
  }

  else
  {
    sub_1E1308058(&v123, &qword_1ECEB4E00);
    sub_1E134FD1C(v2 + v9[5], &v123, &qword_1ECEB2AD0);
    if (v124)
    {
      sub_1E1308EC0(&v123, &v107);
      v23 = *(&v108 + 1);
      v24 = v109;
      v25 = __swift_project_boxed_opaque_existential_1Tm(&v107, *(&v108 + 1));
      *(&v117 + 1) = v23;
      *&v118 = *(v24 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v116);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v25, v23);
      v27 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
      v129 = 0;
      v128 = 0u;
      v127 = 0u;
      sub_1E1300B24(&v116, &v123);
      v11 = v2;
      sub_1E1300B24(v2 + v27, v126);
      v125 = 1;
      v130 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v116);
      sub_1E149BCE4(&v123, &v116);
      v12 = sub_1E172D4E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v29 = *(v12 + 2);
      v28 = *(v12 + 3);
      if (v29 >= v28 >> 1)
      {
        v12 = sub_1E172D4E0((v28 > 1), v29 + 1, 1, v12);
      }

      v15 = v105;
      sub_1E149BD40(&v123);
      *(v12 + 2) = v29 + 1;
      v30 = &v12[136 * v29];
      v31 = v120;
      v33 = v117;
      v32 = v118;
      *(v30 + 5) = v119;
      *(v30 + 6) = v31;
      *(v30 + 3) = v33;
      *(v30 + 4) = v32;
      v35 = v121[1];
      v34 = v121[2];
      v36 = v121[0];
      *(v30 + 20) = v122;
      *(v30 + 8) = v35;
      *(v30 + 9) = v34;
      *(v30 + 7) = v36;
      *(v30 + 2) = v116;
      __swift_destroy_boxed_opaque_existential_1(&v107);
    }

    else
    {
      v11 = v2;
      sub_1E1308058(&v123, &qword_1ECEB2AD0);
      v12 = MEMORY[0x1E69E7CC0];
      v15 = v105;
    }
  }

  v102 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_1E1837454(v11 + *(v102 + 20), v8, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  if ((*(v101 + 6))(v8, 1, v15) == 1)
  {
    v37 = (v11 + v9[7]);
    v38 = v37[3];
    v39 = v37[4];
    v40 = __swift_project_boxed_opaque_existential_1Tm(v37, v38);
    *(&v117 + 1) = v38;
    *&v118 = *(v39 + 8);
    v41 = __swift_allocate_boxed_opaque_existential_0(&v116);
    (*(*(v38 - 8) + 16))(v41, v40, v38);
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    sub_1E1300B24(&v116, &v123);
    sub_1E1300B24(v11, v126);
    v125 = 1;
    v130 = 11;
    __swift_destroy_boxed_opaque_existential_1(&v116);
  }

  else
  {
    v42 = v8;
    v43 = v103;
    sub_1E18379F8(v42, v103, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
    v101 = v9;
    v44 = (v11 + v9[7]);
    v45 = v44[3];
    v98[2] = v44[4];
    v99 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v44, v45);
    v46 = sub_1E13E472C();
    v47 = *(v15 + 20);
    v48 = v100;
    v49 = [v100 traitCollection];
    v98[1] = v46;
    MEMORY[0x1E68FF8C0](v43 + v47, v49);

    sub_1E1AF149C();
    __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
    v50 = sub_1E1AF14AC();
    v51 = *v43;
    __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
    if (v50 >= v51)
    {
      v52 = *(v105 + 24);
      v53 = [v48 traitCollection];
      v54 = v103;
      MEMORY[0x1E68FF8C0](v103 + v52, v53);

      sub_1E1AF149C();
      v55 = v44[3];
      v56 = v44[4];
      v57 = __swift_project_boxed_opaque_existential_1Tm(v44, v55);
      *(&v117 + 1) = v55;
      *&v118 = *(v56 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_0(&v116);
      (*(*(v55 - 8) + 16))(v58, v57, v55);
      sub_1E1838CA8(v54, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v127 = 0u;
      v128 = 0u;
      v129 = 0;
      sub_1E1300B24(&v116, &v123);
      v11 = v99;
      sub_1E1300B24(v99, v126);
      v125 = 1;
      v130 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v116);
    }

    else
    {
      sub_1E1AF11BC();
      sub_1E1838CA8(v103, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v127 = 0u;
      v128 = 0u;
      v129 = 0;
      v11 = v99;
      sub_1E1300B24(v99, v126);
      v125 = 1;
      v130 = 11;
    }

    v9 = v101;
  }

  sub_1E149BCE4(&v123, &v116);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v102;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1E172D4E0(0, *(v12 + 2) + 1, 1, v12);
  }

  v62 = *(v12 + 2);
  v61 = *(v12 + 3);
  if (v62 >= v61 >> 1)
  {
    v12 = sub_1E172D4E0((v61 > 1), v62 + 1, 1, v12);
  }

  *(v12 + 2) = v62 + 1;
  v63 = &v12[136 * v62];
  *(v63 + 2) = v116;
  v64 = v117;
  v65 = v118;
  v66 = v120;
  *(v63 + 5) = v119;
  *(v63 + 6) = v66;
  *(v63 + 3) = v64;
  *(v63 + 4) = v65;
  v67 = v121[0];
  v68 = v121[1];
  v69 = v121[2];
  *(v63 + 20) = v122;
  *(v63 + 8) = v68;
  *(v63 + 9) = v69;
  *(v63 + 7) = v67;
  v70 = (v11 + v9[8]);
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1Tm(v70, v71);
  *(&v108 + 1) = v71;
  *&v109 = *(v72 + 8);
  v74 = __swift_allocate_boxed_opaque_existential_0(&v107);
  (*(*(v71 - 8) + 16))(v74, v73, v71);
  v75 = *(v60 + 24);
  *(&v121[2] + 1) = 0;
  *(v121 + 8) = 0u;
  *(&v121[1] + 8) = 0u;
  sub_1E1300B24(&v107, &v116);
  sub_1E1300B24(v11 + v75, &v119);
  WORD4(v118) = 1;
  v122 = 11;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  sub_1E149BCE4(&v116, &v107);
  v77 = *(v12 + 2);
  v76 = *(v12 + 3);
  v78 = v77 + 1;
  if (v77 >= v76 >> 1)
  {
    v12 = sub_1E172D4E0((v76 > 1), v77 + 1, 1, v12);
  }

  sub_1E149BD40(&v116);
  *(v12 + 2) = v78;
  v79 = &v12[136 * v77];
  v80 = v111;
  v81 = v109;
  v82 = v108;
  *(v79 + 5) = v110;
  *(v79 + 6) = v80;
  *(v79 + 3) = v82;
  *(v79 + 4) = v81;
  v83 = v113;
  v84 = v114;
  v85 = v112;
  *(v79 + 20) = v115;
  *(v79 + 8) = v83;
  *(v79 + 9) = v84;
  *(v79 + 7) = v85;
  *(v79 + 2) = v107;
  sub_1E134FD1C(v11 + v9[9], &v116, &qword_1ECEB4E00);
  if (*(&v117 + 1))
  {
    sub_1E1308EC0(&v116, v106);
    v86 = *(v60 + 36);
    *(&v121[2] + 1) = 0;
    *(v121 + 8) = 0u;
    *(&v121[1] + 8) = 0u;
    sub_1E1300B24(v106, &v116);
    sub_1E1300B24(v11 + v86, &v119);
    WORD4(v118) = 1;
    v122 = 11;
    sub_1E149BCE4(&v116, &v107);
    v87 = *(v12 + 3);
    v88 = v77 + 2;
    if (v88 > (v87 >> 1))
    {
      v12 = sub_1E172D4E0((v87 > 1), v88, 1, v12);
    }

    sub_1E149BD40(&v116);
    __swift_destroy_boxed_opaque_existential_1(v106);
    result = sub_1E149BD40(&v123);
    *(v12 + 2) = v88;
    v90 = &v12[136 * v78];
    *(v90 + 2) = v107;
    v91 = v111;
    v92 = v109;
    v93 = v108;
    *(v90 + 5) = v110;
    *(v90 + 6) = v91;
    *(v90 + 3) = v93;
    *(v90 + 4) = v92;
    v94 = v113;
    v95 = v114;
    v96 = v112;
    *(v90 + 20) = v115;
    *(v90 + 8) = v94;
    *(v90 + 9) = v95;
    *(v90 + 7) = v96;
  }

  else
  {
    sub_1E149BD40(&v123);
    result = sub_1E1308058(&v116, &qword_1ECEB4E00);
  }

  v97 = v104;
  *v104 = v131;
  *(v97 + 1) = v12;
  return result;
}

uint64_t BreakoutDetailsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v4 = [a1 traitCollection];
  [v4 layoutDirection];

  sub_1E1AF6B0C();
  sub_1E1AF6B1C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1E1837B74(a1, v14);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(a2, v6, v8, v10, v12);
}

double sub_1E18387FC(void *a1, double a2)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_1E1AF6B5C();
  v5 = v4;
  sub_1E1837B74(a1, v7);
  _VerticalFlowLayout.measurements(fitting:in:)(v5);

  return a2;
}

void sub_1E1838908()
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_1E1300690(319, &unk_1EE1D2AA0, &qword_1ECEB2AC8);
    if (v1 <= 0x3F)
    {
      sub_1E1300690(319, &qword_1EE1D2AD0, &qword_1ECEB2AC0);
      if (v2 <= 0x3F)
      {
        sub_1E138432C(319, &qword_1EE1D2AB0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E1838A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1838A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1E1838AC8()
{
  sub_1E138432C(319, &qword_1EE1D2AC0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E1838BAC()
{
  v0 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1E1838C2C()
{
  result = sub_1E1AF12AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1838CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AdvertRotationStrategy.init(areAdsPersonalized:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for AdvertRotationStrategy() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = a1;
  a2[1] = 0;
  return result;
}

uint64_t type metadata accessor for AdvertRotationStrategy()
{
  result = qword_1EE1EC8B8;
  if (!qword_1EE1EC8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall AdvertRotationStrategy.userDidInteractedWithAd()()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    *(v0 + 1) = 1;
  }
}

uint64_t AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(char a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4418);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - v15;
  if ((a1 & 1) == 0)
  {
    if (qword_1EE1D27B8 == -1)
    {
LABEL_6:
      v17 = sub_1E1AF591C();
      __swift_project_value_buffer(v17, qword_1EE215468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      v18 = type metadata accessor for AdvertRotationStrategy();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA210);
      v32[0] = v18;
      sub_1E1AF38BC();
      sub_1E1308058(v32, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      sub_1E1AF548C();
LABEL_7:

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  if (*v4 != (a2 & 1))
  {
    if (qword_1EE1D27B8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (v4[1])
  {
    if (qword_1EE1D27B8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v20 = v14;
  v21 = type metadata accessor for AdvertRotationStrategy();
  sub_1E1839ADC(&v4[*(v21 + 24)], v11);
  if ((*(v13 + 48))(v11, 1, v20) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB4418);
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    __swift_project_value_buffer(v22, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA210);
    v32[0] = v21;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();
    goto LABEL_7;
  }

  sub_1E1839B4C(v11, v16);
  sub_1E1AEFD9C();
  if (v23 <= a4)
  {
    v25 = v23;
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v26 = sub_1E1AF591C();
    v31[1] = __swift_project_value_buffer(v26, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B070F0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA210);
    v32[0] = v21;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF382C();
    v27 = MEMORY[0x1E69E63B0];
    v33 = MEMORY[0x1E69E63B0];
    *v32 = v25;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v33 = v27;
    *v32 = a4;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    goto LABEL_25;
  }

  sub_1E1AEFD9C();
  if (v24 <= a3)
  {
    v28 = v24;
    if (qword_1EE1D27B8 != -1)
    {
      swift_once();
    }

    v29 = sub_1E1AF591C();
    __swift_project_value_buffer(v29, qword_1EE215468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B070F0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA210);
    v32[0] = v21;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF382C();
    v30 = MEMORY[0x1E69E63B0];
    v33 = MEMORY[0x1E69E63B0];
    *v32 = v28;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v33 = v30;
    *v32 = a3;
    sub_1E1AF38BC();
    sub_1E1308058(v32, &qword_1ECEB2DF0);
LABEL_25:
    sub_1E1AF548C();

    sub_1E1308058(v16, &qword_1ECEB4400);
    return 0;
  }

  sub_1E1308058(v16, &qword_1ECEB4400);
  return 1;
}

uint64_t AdvertRotationStrategy.advertWasOnScreen(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AdvertRotationStrategy() + 24);
  sub_1E1308058(v5, &qword_1ECEB4418);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
  v7 = *(v6 + 48);
  v8 = sub_1E1AEFE6C();
  v9 = *(*(v8 - 8) + 16);
  v9(v5, a1, v8);
  v9(v5 + v7, a2, v8);
  v10 = *(*(v6 - 8) + 56);

  return v10(v5, 0, 1, v6);
}

uint64_t sub_1E1839ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1839B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E1839BE4()
{
  sub_1E1839C60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E1839C60()
{
  if (!qword_1EE1FADC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4400);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1FADC8);
    }
  }
}

JSValue __swiftcall MetricsFieldLintingIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v5 = [v2 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1839DF4()
{
  result = qword_1ECEBA218;
  if (!qword_1ECEBA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA218);
  }

  return result;
}

uint64_t sub_1E1839F74(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v106 = a8;
  v105 = a7;
  v119 = a6;
  v104 = a5;
  v118 = a4;
  v114 = a3;
  v113 = a2;
  v124 = a1;
  v111 = sub_1E1AF320C();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF324C();
  v108 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E1AF321C();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1E1AF436C();
  v123 = *(v125 - 8);
  v15 = MEMORY[0x1EEE9AC00](v125);
  v117 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v92 - v17;
  v18 = sub_1E1AF3C1C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v92 - v23;
  v25 = sub_1E1AF3C3C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v126 = v10;
  sub_1E134FD1C(v10 + 40, &aBlock, &qword_1ECEB2588);
  if (!v132)
  {
    return sub_1E1308058(&aBlock, &qword_1ECEB2588);
  }

  v93 = v12;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v132);
  sub_1E1AF5B8C();
  v98 = sub_1E1AF3B8C();
  v29 = *(v26 + 8);
  v95 = v28;
  v112 = v25;
  v120 = v26 + 8;
  v94 = v29;
  v29(v28, v25);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v30 = *(v19 + 16);
  v97 = v19 + 16;
  v96 = v30;
  v30(v24, v124, v18);
  sub_1E1AF3C0C();
  sub_1E1852EC0(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
  v31 = sub_1E1AF5DAC();
  v32 = *(v19 + 8);
  v32(v22, v18);
  if (v31)
  {
    v32(v24, v18);
    if (qword_1EE1F3430 != -1)
    {
      swift_once();
    }

    v33 = &unk_1EE1F3000;
    v34 = off_1EE1F3438;
    sub_1E134FD1C(v126 + 40, &aBlock, &qword_1ECEB2588);
    v35 = v112;
    if (v132)
    {
      __swift_project_boxed_opaque_existential_1Tm(&aBlock, v132);
      v33 = &unk_1EE1F3000;
      v36 = v95;
      sub_1E1AF5B8C();
      v37 = sub_1E1AF3AEC();
      v94(v36, v35);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_1E1308058(&aBlock, &qword_1ECEB2588);
      v37 = 0;
    }

    sub_1E16CEE88(v37);
    swift_beginAccess();
    v45 = v34[19];
    if (v45 != 2 && (v45 != 1 || v34[25] != 1))
    {
      v47 = sub_1E16CF2DC();
      if (*(v46 + 8) != 2)
      {
        *(v46 + 90) = 1;
      }

      (v47)(v127, 0);
    }
  }

  else
  {
    sub_1E1AF3BEC();
    v39 = sub_1E1AF5DAC();
    v32(v22, v18);
    if (v39)
    {
      v32(v24, v18);
      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      v33 = &unk_1EE1F3000;
      sub_1E16D0AB4();
      v35 = v112;
    }

    else
    {
      if (qword_1EE1D2A08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v18, qword_1EE1D2A10);
      v40 = sub_1E1AF5DAC();
      v32(v24, v18);
      v35 = v112;
      v33 = &unk_1EE1F3000;
      v41 = &unk_1EE1F3000;
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (!*(*(*(v126 + *a10) + 16) + 16))
      {
        goto LABEL_29;
      }

      v42 = sub_1E1AF4B9C();

      v41 = &unk_1EE1F3000;
      if ((v42 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (qword_1EE1F3430 != -1)
      {
        swift_once();
      }

      sub_1E134FD1C(v126 + 40, &aBlock, &qword_1ECEB2588);
      if (v132)
      {
        __swift_project_boxed_opaque_existential_1Tm(&aBlock, v132);
        v33 = &unk_1EE1F3000;
        v43 = v95;
        sub_1E1AF5B8C();
        v44 = sub_1E1AF3AEC();
        v94(v43, v35);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_1E1308058(&aBlock, &qword_1ECEB2588);
        v44 = 0;
      }

      sub_1E16CEE88(v44);
    }
  }

  v41 = &unk_1EE1F3000;
LABEL_29:
  v99 = v22;
  v100 = v19;
  if (v41[134] != -1)
  {
    swift_once();
  }

  v48 = v33[135];
  swift_beginAccess();
  v49 = *(v48 + 234);
  v50 = *(v48 + 152) != 2;
  v51 = v126;
  swift_beginAccess();
  v52 = v122;
  v113 = *(v123 + 16);
  v113();
  v53 = (v51 + *v114);
  v54 = *v53;
  swift_getObjectType();
  v55 = swift_conformsToProtocol2();
  v121 = v18;
  if (v55 && v54)
  {
    v56 = v55;
    v57 = v50;
    ObjectType = swift_getObjectType();
    v59 = v52;
    v60 = *(v56 + 16);
    swift_unknownObjectRetain();
    v61 = ObjectType;
    v50 = v57;
    v62 = v60(v61, v56);
    v52 = v59;
    v35 = v112;
    v54 = v62;
    v114 = v63;
    swift_unknownObjectRelease();
  }

  else
  {
    v114 = v53[1];
    swift_unknownObjectRetain();
  }

  v64 = v124;
  LODWORD(v124) = v50 & v49;
  sub_1E134FD1C(v126 + 40, &aBlock, &qword_1ECEB2588);
  v120 = v54;
  if (v132)
  {
    __swift_project_boxed_opaque_existential_1Tm(&aBlock, v132);
    swift_unknownObjectRetain();
    v65 = v35;
    v66 = v95;
    sub_1E1AF5B8C();
    v112 = sub_1E1AF3AEC();
    v94(v66, v65);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1E1308058(&aBlock, &qword_1ECEB2588);
    v112 = 0;
  }

  v67 = v99;
  v96(v99, v64, v121);
  v68 = v117;
  v69 = v125;
  (v113)(v117, v52, v125);
  v70 = v100;
  v71 = (*(v100 + 80) + 24) & ~*(v100 + 80);
  v72 = (v115 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 39) & 0xFFFFFFFFFFFFFFF8;
  v74 = v123;
  v75 = (*(v123 + 80) + v73 + 8) & ~*(v123 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = v98;
  (*(v70 + 32))(v76 + v71, v67, v121);
  *(v76 + v72) = v126;
  v77 = v76 + v115;
  v78 = v114;
  *v77 = v120;
  *(v77 + 8) = v78;
  *(v77 + 16) = v124;
  *(v76 + v73) = v112;
  v79 = v69;
  (*(v74 + 32))(v76 + v75, v68, v69);

  if (ASKBuildTypeIsUnitTesting())
  {
    sub_1E1361A80();
    v80 = v102;
    v81 = v101;
    v82 = v103;
    (*(v102 + 104))(v101, *MEMORY[0x1E69E7F98], v103);
    v126 = sub_1E1AF693C();
    (*(v80 + 8))(v81, v82);
    v83 = swift_allocObject();
    *(v83 + 16) = v119;
    *(v83 + 24) = v76;
    v133 = v105;
    v134 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v130 = 1107296256;
    v131 = sub_1E1302D64;
    v132 = v106;
    v84 = _Block_copy(&aBlock);

    v85 = v107;
    sub_1E1AF322C();
    v128 = MEMORY[0x1E69E7CC0];
    sub_1E1852EC0(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v86 = v109;
    v87 = v111;
    sub_1E1AF6EEC();
    v88 = v126;
    MEMORY[0x1E68FF640](0, v85, v86, v84);
    _Block_release(v84);

    swift_unknownObjectRelease();

    (*(v110 + 8))(v86, v87);
    (*(v108 + 8))(v85, v93);
    (*(v74 + 8))(v122, v125);
  }

  else
  {
    v89 = [objc_opt_self() processInfo];
    v90 = sub_1E1AF5DBC();
    v133 = v119;
    v134 = v76;
    aBlock = MEMORY[0x1E69E9820];
    v130 = 1107296256;
    v131 = sub_1E1623918;
    v132 = a9;
    v91 = _Block_copy(&aBlock);

    [v89 performExpiringActivityWithReason:v90 usingBlock:v91];
    swift_unknownObjectRelease();
    _Block_release(v91);

    return (*(v74 + 8))(v122, v79);
  }
}

unint64_t sub_1E183B9F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1E1AF607C() != a1 || v9 != a2)
  {
    v10 = sub_1E1AF74AC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1E1AF5F2C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1E183BAE0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_80;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = *(a1 + 16);
      if ((v2 & 0xC000000000000001) == 0)
      {
        break;
      }

      v6 = 0;
      while (1)
      {
        v7 = MEMORY[0x1E68FFD80](v6, v2);
        v8 = *(v7 + 16);
        v9 = 0x68736E6565726373;
        if (v8 != 2)
        {
          v9 = 0x666C656873;
        }

        v10 = 0xEB0000000073746FLL;
        if (v8 != 2)
        {
          v10 = 0xE500000000000000;
        }

        v11 = 0x7975426F546B7361;
        if (*(v7 + 16))
        {
          v11 = 0x756B636F4C706F74;
        }

        v12 = 0xEF74736575716552;
        if (*(v7 + 16))
        {
          v12 = 0xE900000000000070;
        }

        v13 = *(v7 + 16) <= 1u ? v11 : v9;
        v14 = *(v7 + 16) <= 1u ? v12 : v10;
        if (v5 > 1)
        {
          v15 = v5 == 2 ? 0x68736E6565726373 : 0x666C656873;
          v16 = v5 == 2 ? 0xEB0000000073746FLL : 0xE500000000000000;
        }

        else
        {
          v15 = 0x7975426F546B7361;
          v16 = 0xEF74736575716552;
          if (v5)
          {
            v15 = 0x756B636F4C706F74;
            v16 = 0xE900000000000070;
          }
        }

        if (v13 == v15 && v14 == v16)
        {
        }

        else
        {
          v17 = sub_1E1AF74AC();

          if ((v17 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v18 = *(v7 + 32);
        v19 = *(a1 + 32);
        if (v18)
        {
          if (!v19)
          {
LABEL_38:
            swift_unknownObjectRelease();
            goto LABEL_40;
          }

          if (*(v7 + 24) == *(a1 + 24) && v18 == v19)
          {
            swift_unknownObjectRelease();
            return v6;
          }

          v20 = sub_1E1AF74AC();
          swift_unknownObjectRelease();
          if (v20)
          {
            return v6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          if (!v19)
          {
            return v6;
          }
        }

LABEL_40:
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (++v6 == v4)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      v4 = sub_1E1AF71CC();
      if (!v4)
      {
        return 0;
      }
    }

    v6 = 0;
    v21 = v2 + 32;
    v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v22 == v6)
      {
        goto LABEL_79;
      }

      v2 = *(v21 + 8 * v6);
      if (*(v2 + 16) <= 1u)
      {
        break;
      }

      if (*(v2 + 16) == 2)
      {
        v23 = 0x68736E6565726373;
        v24 = 0xEB0000000073746FLL;
LABEL_53:
        if (v5 > 1)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v24 = 0xE500000000000000;
      v23 = 0x666C656873;
      if (v5 > 1)
      {
LABEL_57:
        if (v5 == 2)
        {
          v25 = 0x68736E6565726373;
        }

        else
        {
          v25 = 0x666C656873;
        }

        if (v5 == 2)
        {
          v26 = 0xEB0000000073746FLL;
        }

        else
        {
          v26 = 0xE500000000000000;
        }

        goto LABEL_63;
      }

LABEL_54:
      v25 = 0x7975426F546B7361;
      v26 = 0xEF74736575716552;
      if (v5)
      {
        v25 = 0x756B636F4C706F74;
        v26 = 0xE900000000000070;
      }

LABEL_63:
      if (v23 == v25 && v24 == v26)
      {
      }

      else
      {
        v27 = sub_1E1AF74AC();

        if ((v27 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v28 = *(v2 + 32);
      v29 = *(a1 + 32);
      if (v28)
      {
        if (!v29)
        {
LABEL_44:

          goto LABEL_45;
        }

        if (*(v2 + 24) == *(a1 + 24) && v28 == v29)
        {

          return v6;
        }

        v30 = sub_1E1AF74AC();

        if (v30)
        {
          return v6;
        }
      }

      else
      {

        if (!v29)
        {
          return v6;
        }
      }

LABEL_45:
      if (v4 == ++v6)
      {
        return 0;
      }
    }

    v23 = 0x7975426F546B7361;
    v24 = 0xEF74736575716552;
    if (*(v2 + 16))
    {
      v23 = 0x756B636F4C706F74;
      v24 = 0xE900000000000070;
      if (v5 > 1)
      {
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

  return 0;
}

void sub_1E183BF64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v101) = a7;
  v86 = a6;
  v95 = a5;
  v100 = a4;
  v104 = a3;
  v85 = sub_1E1AF320C();
  v14 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E1AF324C();
  v99 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E1AF436C();
  v87 = *(v81 - 8);
  v17 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF3C1C();
  v64 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF3B5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v94 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  if ((a1 & 1) == 0)
  {
    v93 = dispatch_group_create();
    v92 = *(a2 + 16);
    if (v92)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v78 = ~v30;
      v91 = a2 + ((v30 + 32) & ~v30);
      v103 = v64 + 16;
      v102 = (v64 + 8);
      v77 = a12;
      v76 = a11;
      v90 = (v28 - 8);
      v75 = v87 + 16;
      v79 = v30;
      v74 = v17 + v30;
      v73 = v23 + 7;
      v31 = v29;
      v72 = a10;
      v71 = a9;
      v70 = v101 & 1;
      v69 = v87 + 32;
      v68 = (v28 + 16);
      v67 = v106;
      v66 = (v14 + 8);
      v65 = (v99 + 8);
      v89 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v101 = v27;
        v31(v26, v91 + v89 * v27, v21);
        v32 = *(sub_1E1AF3AFC() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_1E1AF3AFC();
        if (*(v33 + 16))
        {
          sub_1E1852EC0(&qword_1EE1E3B28, MEMORY[0x1E69AAF70]);
          v34 = sub_1E1AF5D0C();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v90)(v99, v21);
LABEL_5:
        v27 = v101 + 1;
        v31 = v97;
        if (v101 + 1 == v92)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v64 + 72);
      v39 = *(v64 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_1E1852EC0(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
        v40 = sub_1E1AF5DAC();
        (*v102)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v93);
      v41 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_advertRotationData;
      v42 = v100;
      swift_beginAccess();
      sub_1E134FD1C(v42 + v41, v109, &unk_1ECEB7230);
      sub_1E1361A80();
      v88 = sub_1E1AF68EC();
      sub_1E134FD1C(v109, v107, &unk_1ECEB7230);
      v43 = v87;
      v44 = v80;
      v45 = v21;
      v46 = v81;
      (*(v87 + 16))(v80, v71, v81);
      v31(v94, v99, v45);
      v47 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v48 = (v74 + v47) & v78;
      v49 = (v73 + v48) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v51 = v86;
      *(v50 + 16) = v95;
      *(v50 + 24) = v51;
      *(v50 + 32) = v100;
      *(v50 + 40) = v70;
      *(v50 + 48) = v96;
      v52 = v107[1];
      *(v50 + 56) = v107[0];
      *(v50 + 72) = v52;
      *(v50 + 88) = v108;
      v53 = v44;
      v26 = v99;
      v54 = v46;
      v21 = v45;
      (*(v43 + 32))(v50 + v47, v53, v54);
      (*v68)(v50 + v48, v94, v45);
      v55 = v93;
      *(v50 + v49) = v93;
      v106[2] = v76;
      v106[3] = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v106[0] = sub_1E1302D64;
      v106[1] = v77;
      v56 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v57 = v55;

      v58 = v82;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1852EC0(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      v59 = v84;
      v60 = v85;
      sub_1E1AF6EEC();
      v61 = v88;
      MEMORY[0x1E68FF640](0, v58, v59, v56);
      _Block_release(v56);

      (*v66)(v59, v60);
      (*v65)(v58, v83);
      sub_1E1308058(v109, &unk_1ECEB7230);
      (*v90)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v62 = v93;
    sub_1E1AF687C();
  }
}

void sub_1E183C9F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v100) = a7;
  v85 = a6;
  v95 = a5;
  v84 = a4;
  v103 = a3;
  v83 = sub_1E1AF320C();
  v14 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E1AF324C();
  v99 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1E1AF436C();
  v86 = *(v79 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v94 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF3C1C();
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF3B5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  if ((a1 & 1) == 0)
  {
    v92 = dispatch_group_create();
    v91 = *(a2 + 16);
    if (v91)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v77 = ~v30;
      v90 = a2 + ((v30 + 32) & ~v30);
      v102 = v63 + 16;
      v101 = (v63 + 8);
      v76 = a12;
      v75 = a11;
      v89 = (v28 - 8);
      v74 = v86 + 16;
      v78 = v30;
      v73 = v17 + v30;
      v72 = v23 + 7;
      v31 = v29;
      v71 = a10;
      v70 = a9;
      v69 = v100 & 1;
      v68 = v86 + 32;
      v67 = (v28 + 16);
      v66 = v105;
      v65 = (v14 + 8);
      v64 = (v99 + 8);
      v88 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v100 = v27;
        v31(v26, v90 + v88 * v27, v21);
        v32 = *(sub_1E1AF3AFC() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_1E1AF3AFC();
        if (*(v33 + 16))
        {
          sub_1E1852EC0(&qword_1EE1E3B28, MEMORY[0x1E69AAF70]);
          v34 = sub_1E1AF5D0C();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v89)(v99, v21);
LABEL_5:
        v27 = v100 + 1;
        v31 = v97;
        if (v100 + 1 == v91)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v63 + 72);
      v39 = *(v63 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_1E1852EC0(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
        v40 = sub_1E1AF5DAC();
        (*v101)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v92);
      v41 = v84;
      v42 = *(*v84 + 192);
      swift_beginAccess();
      sub_1E134FD1C(v41 + v42, v108, &unk_1ECEB7230);
      sub_1E1361A80();
      v87 = sub_1E1AF68EC();
      sub_1E134FD1C(v108, v106, &unk_1ECEB7230);
      v43 = v86;
      v44 = v21;
      v45 = v79;
      (*(v86 + 16))(v94, v70, v79);
      v31(v93, v99, v44);
      v46 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v47 = (v73 + v46) & v77;
      v48 = (v72 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      v50 = v85;
      *(v49 + 16) = v95;
      *(v49 + 24) = v50;
      *(v49 + 32) = v41;
      *(v49 + 40) = v69;
      *(v49 + 48) = v96;
      v51 = v106[1];
      *(v49 + 56) = v106[0];
      *(v49 + 72) = v51;
      *(v49 + 88) = v107;
      v52 = *(v43 + 32);
      v26 = v99;
      v53 = v45;
      v21 = v44;
      v52(v49 + v46, v94, v53);
      (*v67)(v49 + v47, v93, v44);
      v54 = v92;
      *(v49 + v48) = v92;
      v105[2] = v75;
      v105[3] = v49;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v105[0] = sub_1E1302D64;
      v105[1] = v76;
      v55 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v56 = v54;

      v57 = v80;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1852EC0(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      v58 = v82;
      v59 = v83;
      sub_1E1AF6EEC();
      v60 = v87;
      MEMORY[0x1E68FF640](0, v57, v58, v55);
      _Block_release(v55);

      (*v65)(v58, v59);
      (*v64)(v57, v81);
      sub_1E1308058(v108, &unk_1ECEB7230);
      (*v89)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v61 = v92;
    sub_1E1AF687C();
  }
}

uint64_t sub_1E183D478(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_1E1AF3ABC();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v68 - v15;
  v16 = sub_1E1AF4A9C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v68 - v24;
  v25 = (a3 + qword_1EE216770);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + qword_1EE216748);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_1EE1F3430;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_1EE1F3438;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 80);
  sub_1E134FD1C(a6, &v95, &unk_1ECEB7230);
  if (v96)
  {
    sub_1E1308EC0(&v95, v97);
  }

  else
  {
    v31 = *(*a3 + 192);
    swift_beginAccess();
    sub_1E134FD1C(a3 + v31, v97, &unk_1ECEB7230);
    if (v96)
    {
      sub_1E1308058(&v95, &unk_1ECEB7230);
    }
  }

  v32 = *(*a3 + 200);
  swift_beginAccess();
  sub_1E134FD1C(a3 + v32, &v95, &qword_1ECEB2B70);
  swift_beginAccess();
  v33 = v30[17];
  v34 = (a3 + *(*a3 + 216));
  swift_beginAccess();
  v35 = *v34;
  v75 = v34[1];
  v36 = (a3 + *(*a3 + 208));
  swift_beginAccess();
  v37 = *v36;
  v74 = v36[1];
  v87 = v37;
  swift_unknownObjectRetain();

  v86 = v35;
  swift_unknownObjectRetain();
  sub_1E1AF4A8C();
  v38 = qword_1EE1E3948;
  v39 = v90;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v40, qword_1EE1E3950);
  v93 = v39;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4A3C();
  v41 = *(v17 + 8);
  v41(v23, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = (v17 + 32);
  v42 = v44;
  v44(v23, v20, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v45, qword_1EE1E39C0);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_1EE1E3970 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v46, qword_1EE1E3978);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v47, qword_1EE1E3930);
  sub_1E1AF4A3C();
  v41(v23, v16);
  v48 = v90;
  v90(v23, v20, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v33;
    v50 = v71;
    sub_1E1AF4A5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    sub_1E1AF4A3C();
    v51 = v50;
    v33 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v23, v16);
    v48(v23, v20, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_1EE1D2960);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  sub_1E134FD1C(v97, &v91, &unk_1ECEB7230);
  if (v92)
  {
    sub_1E1308EC0(&v91, &v93);
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v52, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  else
  {
    sub_1E1308058(&v91, &unk_1ECEB7230);
  }

  sub_1E134FD1C(&v95, &v91, &qword_1ECEB2B70);
  if (!v92)
  {
    sub_1E1308058(&v91, &qword_1ECEB2B70);
    if (!v33)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_1E1308EC0(&v91, &v93);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v53, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v23, v16);
  v90(v23, v20, v16);
  if (v33)
  {
LABEL_36:
    v93 = v33;
    v54 = qword_1ECEB0E78;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v55, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    v41(v23, v16);

    v90(v23, v20, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v33;
    v93 = v87;
    v94 = v74;
    v57 = qword_1EE1D28D0;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
    __swift_project_value_buffer(v58, qword_1EE1D28D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
    sub_1E1AF4A3C();
    v41(v23, v16);
    swift_unknownObjectRelease();
    v90(v23, v20, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
    __swift_project_value_buffer(v60, qword_1EE1D2920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
    sub_1E1AF4A3C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v23, v16);
    sub_1E1308058(&v95, &qword_1ECEB2B70);
    sub_1E1308058(v97, &unk_1ECEB7230);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v23, v20, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1E1308058(&v95, &qword_1ECEB2B70);
    sub_1E1308058(v97, &unk_1ECEB7230);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v23, v16);
  v63 = v81;
  sub_1E1AF3B3C();
  sub_1E1AF434C();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_1E1361A80();
  v65 = a9;
  v66 = sub_1E1AF68EC();
  v97[3] = v64;
  v97[4] = MEMORY[0x1E69AB720];
  v97[0] = v66;
  sub_1E1AF583C();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_1E183E308(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v83 = a8;
  v85 = a7;
  v79 = a5;
  LODWORD(v78) = a4;
  v76 = a2;
  v90 = a1;
  v84 = sub_1E1AF3ABC();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v68 - v15;
  v16 = sub_1E1AF4A9C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v68 - v24;
  v25 = (a3 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageContext);
  swift_beginAccess();
  v26 = v25[1];
  v69 = *v25;
  v27 = (a3 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_referrer);
  swift_beginAccess();
  v28 = v27[1];
  v70 = *v27;
  v29 = qword_1EE1F3430;
  v89 = v26;

  v88 = v28;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = off_1EE1F3438;
  swift_beginAccess();
  LODWORD(v77) = *(v30 + 80);
  sub_1E134FD1C(a6, &v95, &unk_1ECEB7230);
  if (v96)
  {
    sub_1E1308EC0(&v95, v97);
    v31 = v90;
  }

  else
  {
    v32 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_1E134FD1C(a3 + v32, v97, &unk_1ECEB7230);
    v31 = v90;
    if (v96)
    {
      sub_1E1308058(&v95, &unk_1ECEB7230);
    }
  }

  v33 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_searchGhostHintData;
  swift_beginAccess();
  sub_1E134FD1C(a3 + v33, &v95, &qword_1ECEB2B70);
  swift_beginAccess();
  v34 = v30[17];
  v35 = (a3 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_deviceWindowData);
  swift_beginAccess();
  v36 = *v35;
  v75 = v35[1];
  v37 = (a3 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
  swift_beginAccess();
  v38 = *v37;
  v74 = v37[1];
  v87 = v38;
  swift_unknownObjectRetain();

  v86 = v36;
  swift_unknownObjectRetain();
  sub_1E1AF4A8C();
  v39 = qword_1EE1E3948;
  swift_unknownObjectRetain();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
  __swift_project_value_buffer(v40, qword_1EE1E3950);
  v93 = v31;
  v94 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  sub_1E1AF4A3C();
  v41 = *(v17 + 8);
  v41(v23, v16);
  swift_unknownObjectRelease();
  v44 = *(v17 + 32);
  v43 = (v17 + 32);
  v42 = v44;
  v44(v23, v20, v16);
  if (v89)
  {
    v93 = v69;
    v94 = v89;
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v45, qword_1EE1E39C0);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  if (v88)
  {
    v93 = v70;
    v94 = v88;
    if (qword_1EE1E3970 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
    __swift_project_value_buffer(v46, qword_1EE1E3978);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v42(v23, v20, v16);
  }

  v90 = v42;
  LOBYTE(v93) = v78 & 1;
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
  __swift_project_value_buffer(v47, qword_1EE1E3930);
  sub_1E1AF4A3C();
  v41(v23, v16);
  v48 = v90;
  v90(v23, v20, v16);
  if (v79)
  {
    v93 = v79;
    v79 = v47;
    v49 = v34;
    v50 = v71;
    sub_1E1AF4A5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    sub_1E1AF4A3C();
    v51 = v50;
    v34 = v49;
    v47 = v79;
    (*(v72 + 8))(v51, v73);
    v41(v23, v16);
    v48(v23, v20, v16);
  }

  if (v77 != 2)
  {
    LOBYTE(v93) = v77 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v47, qword_1EE1D2960);
    sub_1E1AF4A3C();
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  sub_1E134FD1C(v97, &v91, &unk_1ECEB7230);
  if (v92)
  {
    sub_1E1308EC0(&v91, &v93);
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
    __swift_project_value_buffer(v52, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v93);
    v41(v23, v16);
    v90(v23, v20, v16);
  }

  else
  {
    sub_1E1308058(&v91, &unk_1ECEB7230);
  }

  sub_1E134FD1C(&v95, &v91, &qword_1ECEB2B70);
  if (!v92)
  {
    sub_1E1308058(&v91, &qword_1ECEB2B70);
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_1E1308EC0(&v91, &v93);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
  __swift_project_value_buffer(v53, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v41(v23, v16);
  v90(v23, v20, v16);
  if (v34)
  {
LABEL_36:
    v93 = v34;
    v54 = qword_1ECEB0E78;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v55, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    v41(v23, v16);

    v90(v23, v20, v16);
  }

LABEL_39:
  v79 = a11;
  v78 = a10;
  v56 = v86;
  if (v87)
  {
    v77 = v34;
    v93 = v87;
    v94 = v74;
    v57 = qword_1EE1D28D0;
    swift_unknownObjectRetain();
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
    __swift_project_value_buffer(v58, qword_1EE1D28D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
    sub_1E1AF4A3C();
    v41(v23, v16);
    swift_unknownObjectRelease();
    v90(v23, v20, v16);
    v56 = v86;
  }

  if (v56)
  {
    v86 = v43;
    v93 = v56;
    v94 = v75;
    v59 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v59 != -1)
    {
      swift_once();
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
    __swift_project_value_buffer(v60, qword_1EE1D2920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
    sub_1E1AF4A3C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41(v23, v16);
    sub_1E1308058(&v95, &qword_1ECEB2B70);
    sub_1E1308058(v97, &unk_1ECEB7230);
    swift_unknownObjectRelease();
    v61 = v90;
    v90(v23, v20, v16);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1E1308058(&v95, &qword_1ECEB2B70);
    sub_1E1308058(v97, &unk_1ECEB7230);
    v61 = v90;
  }

  v62 = v80;
  v61(v80, v23, v16);
  v63 = v81;
  sub_1E1AF3B3C();
  sub_1E1AF434C();
  (*(v82 + 8))(v63, v84);
  *(swift_allocObject() + 16) = a9;
  v64 = sub_1E1361A80();
  v65 = a9;
  v66 = sub_1E1AF68EC();
  v97[3] = v64;
  v97[4] = MEMORY[0x1E69AB720];
  v97[0] = v66;
  sub_1E1AF583C();

  v41(v62, v16);
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

unint64_t ProductNavigationBarMode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1E183F1A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1E183F1FC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E185136C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E183F230()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF4B98);
  __swift_project_value_buffer(v4, qword_1ECEF4B98);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E183F3D4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E183F440(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E183F544(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_pageRefreshPolicy) = a1;

  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v6 = *(v5 + 8);

    v6(v7, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E183F624(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    if (*(v1 + 32))
    {
      result = swift_beginAccess();
      v8 = *(v1 + 16);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        result = swift_beginAccess();
        v10 = *(v9 + 48);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v9 + 48) = v12;
        v13 = v12 == 0;
        swift_beginAccess();
        *(v9 + 40) = v13;
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {

          sub_1E149DEE8();
        }
      }
    }

    else
    {
      result = swift_beginAccess();
      if (*(v1 + 16))
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v15 = v14;
        (*(v4 + 8))(v6, v3);
        PendingPageRender.initialRequestEndTime.setter(v15, 0);

        if (*(v1 + 16))
        {

          sub_1E1729254();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E183F824(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v5 + 16) + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v4 + 8);
      v8 = swift_getObjectType();
      (*(*(*(v7 + 16) + 24) + 16))(v8);
      goto LABEL_6;
    }
  }

  return sub_1E183F624(v3);
}

void (*sub_1E183F930(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  swift_beginAccess();
  *(v4 + 128) = *(v1 + 32);
  return sub_1E183F9BC;
}

void sub_1E183F9BC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  v6 = v3 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  if (a2)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = (*(*(v7 + 16) + 24) + 8);
    goto LABEL_9;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v10 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(*(v10 + 16) + 24) + 16);
LABEL_9:
  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_10:
  sub_1E183F624(v5);

  free(v2);
}

uint64_t ProductPresenter.__allocating_init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9)
{
  v14 = swift_allocObject();
  v32 = *(a9 + 4);
  v31 = *(a9 + 40);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v15 = 0;
  v15[1] = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy) = 0;
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
  v35 = sub_1E1AEFCCC();
  v18 = *(v35 - 8);
  v28 = a9[1];
  v29 = *a9;
  (*(v18 + 16))(v14 + v17, a2, v35);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v19 = (v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController);
  *v19 = a4;
  v19[1] = a5;
  sub_1E1300B24(a6, v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v20 = swift_allocObject();
  v20[4] = 0;
  swift_unknownObjectWeakInit();
  v21 = MEMORY[0x1E69E7CD0];
  v20[5] = 0;
  v20[6] = v21;
  v20[2] = a1;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) = v20;
  sub_1E1300B24(a7, v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_restrictions);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v22 = v14 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData;
  *v22 = v29;
  *(v22 + 16) = v28;
  *(v22 + 32) = v32;
  *(v22 + 40) = v31;

  swift_unknownObjectRetain();
  v23 = sub_1E138C578(a1, 0, 0, 0);
  *(*(v23 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_1F5C50D08;
  swift_unknownObjectWeakAssign();
  v24 = objc_opt_self();
  swift_retain_n();
  v25 = [v24 defaultCenter];
  v26 = sub_1E1AF5DBC();
  __swift_project_boxed_opaque_existential_1Tm(a7, a7[3]);
  [v25 addObserver:v23 selector:sel_restrictionsDidChange_ name:v26 object:sub_1E1AF748C()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v18 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v23;
}

uint64_t ProductPresenter.init(objectGraph:productUrl:productPage:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9)
{
  v33 = *(a9 + 4);
  v32 = *(a9 + 40);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_pageRefreshPolicy) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isFetchingShelves) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_hasBeenPurchasedForReviewsContainer) = 2;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isLocalApplicationForAppEvents) = 2;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_shouldDisplayBetaBanner) = 0;
  v16 = (v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentBetaBundleVersion);
  *v16 = 0;
  v16[1] = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_didAskToBuy) = 0;
  v17 = (v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
  v35 = sub_1E1AEFCCC();
  v19 = *(v35 - 8);
  v29 = a9[1];
  v30 = *a9;
  (*(v19 + 16))(v9 + v18, a2, v35);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct) = a3;
  v20 = (v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController);
  *v20 = a4;
  v20[1] = a5;
  sub_1E1300B24(a6, v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_purchaseHistory);
  type metadata accessor for CompleteMyBundleController();
  v21 = swift_allocObject();
  v21[4] = 0;
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x1E69E7CD0];
  v21[5] = 0;
  v21[6] = v22;
  v21[2] = a1;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) = v21;
  sub_1E1300B24(a7, v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_restrictions);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProductFetchedAction) = a8;
  v23 = v9 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData;
  *v23 = v30;
  *(v23 + 16) = v29;
  *(v23 + 32) = v33;
  *(v23 + 40) = v32;

  swift_unknownObjectRetain();
  v24 = sub_1E138C578(a1, 0, 0, 0);
  *(*(v24 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController) + 32) = &off_1F5C50D08;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();
  swift_retain_n();
  v26 = [v25 defaultCenter];
  v27 = sub_1E1AF5DBC();
  __swift_project_boxed_opaque_existential_1Tm(a7, a7[3]);
  [v26 addObserver:v24 selector:sel_restrictionsDidChange_ name:v27 object:sub_1E1AF748C()];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  (*(v19 + 8))(a2, v35);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v24;
}

uint64_t sub_1E1840234()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_purchaseHistory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_restrictions);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 40));
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view);

  v1 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ProductPresenter.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_currentlyObservedAdamId + 8);
  if (v2)
  {
    v3 = *v1;
    v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
    ObjectType = swift_getObjectType();
    v16[0] = v3;
    v16[1] = v2;
    v6 = *(v4 + 56);

    swift_unknownObjectRetain();
    v6(v16, ObjectType, v4);
    v8 = v7;

    swift_unknownObjectRelease();
    v9 = swift_getObjectType();
    (*(v8 + 80))(v0, v9, v8);
    swift_unknownObjectRelease();
    *v1 = 0;
    v1[1] = 0;
  }

  v10 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);

  v11 = swift_unknownObjectRetain();
  sub_1E1520A44(v11, v10);

  swift_unknownObjectRelease();
  v12 = BasePresenter.deinit();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_purchaseHistory);
  __swift_destroy_boxed_opaque_existential_1(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_restrictions);

  sub_1E13DED78(*(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData), *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 8), *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 16), *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 24), *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 32), *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 40));
  sub_1E1337DEC(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view);

  v13 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
  v14 = sub_1E1AEFCCC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  return v12;
}

uint64_t ProductPresenter.__deallocating_deinit()
{
  ProductPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E184062C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14[-v3];
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = qword_1EE1EC290;

    if (v6 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_1EE1EC298;
    v8 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v9 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v10 = sub_1E1AF649C();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_1E154AF74(0, 0, v4, &unk_1E1B38DA0, v11);

  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v12)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      goto LABEL_12;
    }
  }

  *(&v16 + 1) = type metadata accessor for ProductPage();
  v17 = &off_1F5C36130;
  *&v15 = v12;

LABEL_12:
  sub_1E1520288(&v15, *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController), *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8));
  sub_1E1308058(&v15, &qword_1ECEB5110);
  return sub_1E18408F4(0);
}

uint64_t sub_1E18408F4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ProductPageIntent();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF504C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v2 + 32) & 1) == 0 && (!*(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct) || (a1))
  {
    v12 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (v12)
    {
      v36 = v8;
      v13 = swift_retain_n();
      sub_1E18426E4(v13);
      sub_1E184FA80(v12, *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController), *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8), *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController));
      v14 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        v35[1] = swift_getObjectType();
        sub_1E1475F1C();
        (*(*(v15 + 16) + 32))();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (*(v12 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete) == 1)
      {
        sub_1E1840F50(v12, v2);
        swift_beginAccess();
        if (!*(v2 + 16))
        {
        }

        v38 = type metadata accessor for ProductPage();
        v39 = &protocol witness table for ProductPage;
        v40 = sub_1E1852EC0(qword_1EE1F6D60, type metadata accessor for ProductPage);
        v37[0] = v12;

        PendingPageRender.use(pageRenderEventFrom:)(v37);

        return sub_1E1308058(v37, &qword_1ECEB2588);
      }

      LOBYTE(v12) = *(v2 + 32);
      v8 = v36;
    }

    *(v2 + 32) = 1;
    v16 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v17 + 16) + 24) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_1E183F624(v12);
    swift_beginAccess();
    if (*(v2 + 24))
    {
      *v10 = 1;
      (*(v8 + 104))(v10, *MEMORY[0x1E69AB450], v7);

      sub_1E1AF509C();

      (*(v8 + 8))(v10, v7);
    }

    v19 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
    v20 = v4[5];
    v21 = sub_1E1AEFCCC();
    (*(*(v21 - 8) + 16))(&v6[v20], v2 + v19, v21);
    v22 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData;
    v23 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData);
    v24 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 8);
    v25 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 16);
    v26 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 24);
    v27 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_referrerData + 32);
    *v6 = 0xD000000000000011;
    *(v6 + 1) = 0x80000001E1B79190;
    v6[v4[6]] = 0;
    v28 = &v6[v4[7]];
    *v28 = v23;
    *(v28 + 1) = v24;
    *(v28 + 2) = v25;
    *(v28 + 3) = v26;
    *(v28 + 4) = v27;
    v29 = *(v22 + 40);
    v28[40] = v29;
    type metadata accessor for JSIntentDispatcher();
    sub_1E13E2380(v23, v24, v25, v26, v27, v29);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1AF4C1C();

    sub_1E1AF422C();

    sub_1E1AF4BEC();

    v30 = sub_1E1AF4BFC();

    sub_1E1367B8C(v6, v30, "AppStoreKit/ProductPresenter.swift", 34, 2);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v2;
    v33 = sub_1E1361A80();
    swift_retain_n();
    v34 = sub_1E1AF68EC();
    v38 = v33;
    v39 = MEMORY[0x1E69AB720];
    v37[0] = v34;
    sub_1E1AF57FC();

    sub_1E1852F08(v6, type metadata accessor for ProductPageIntent);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_1E1840F50(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v89 - v9;
  v10 = sub_1E1AF00EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v89 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  v17 = *(a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (!v17)
  {

LABEL_19:

    sub_1E18511B4(v28);

    sub_1E18426E4(a1);
    sub_1E18431BC();
    sub_1E1842B50(a1);
    v29 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      swift_getObjectType();
      sub_1E1475F1C();
      (*(*(v30 + 16) + 32))();

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v31 + 16) + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    goto LABEL_62;
  }

  if ((sub_1E1850F28(v18, a1) & 1) == 0)
  {

    goto LABEL_19;
  }

  v93 = v7;
  v91 = v5;
  v92 = v4;
  v96 = v11;
  v98 = v17;
  sub_1E184AE94(v17, a1, v15);
  v19 = MEMORY[0x1E69E7CC0];
  v101[0] = MEMORY[0x1E69E7CC0];
  sub_1E1852EC0(&unk_1EE1E22F8, MEMORY[0x1E6969B50]);
  v20 = &unk_1E1B39170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3080);
  sub_1E13FF6F8(&qword_1EE1D2610, &qword_1ECEB3080);
  v97 = v10;
  sub_1E1AF6EEC();
  v21 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  swift_beginAccess();
  if (*(a2 + v21))
  {
    v22 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
  }

  else
  {
    v22 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
  }

  v23 = *v22;
  if (*(a1 + v23))
  {
    v24 = *(a1 + v23);
  }

  else
  {
    v24 = v19;
  }

  if (v24 >> 62)
  {
LABEL_72:
    v25 = sub_1E1AF71CC();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v100;
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((sub_1E1AF00CC() & 1) == 0)
      {
        sub_1E1AF00AC();
      }
    }
  }

  v34 = sub_1E184B108(v33, a1);
  v36 = v35;

  v37 = sub_1E1AF74AC();
  v95 = v34;
  if ((v37 & 1) == 0)
  {
    v89 = v36;
    v40 = sub_1E184ADBC();
    v20 = v40;
    v90 = v16;
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_27;
      }

      goto LABEL_37;
    }

LABEL_74:
    v41 = sub_1E1AF71CC();
    if (v41)
    {
LABEL_27:
      v42 = 0;
      v16 = v20 & 0xC000000000000001;
      v94 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v16)
        {
          v43 = MEMORY[0x1E68FFD80](v42, v20);
        }

        else
        {
          if (v42 >= *(v94 + 16))
          {
            goto LABEL_71;
          }

          v43 = *(v20 + 8 * v42 + 32);
        }

        if (*(v43 + 16) <= 1u && *(v43 + 16))
        {
          break;
        }

        v44 = sub_1E1AF74AC();

        if (v44)
        {
          goto LABEL_40;
        }

        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        ++v42;
        if (v45 == v41)
        {
          goto LABEL_37;
        }
      }

LABEL_40:

      v39 = v89;
      v46 = *(v89 + 16);
      v47 = (v89 + 32);
      v38 = MEMORY[0x1E69E7CC0];
      v16 = v90;
      v26 = v100;
      while (v46)
      {
        v48 = *v47++;
        --v46;
        if (v48 == v42)
        {
          goto LABEL_47;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1E1B02CD0;
      *(v49 + 32) = v42;
      *(v49 + 40) = 0;
      MEMORY[0x1E68F8E70]();
      v38 = sub_1E172D34C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v51 = *(v38 + 2);
      v50 = *(v38 + 3);
      if (v51 >= v50 >> 1)
      {
        v38 = sub_1E172D34C(v50 > 1, v51 + 1, 1, v38);
      }

      *(v38 + 2) = v51 + 1;
      (*(v91 + 32))(&v38[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51], v99, v92);
      goto LABEL_47;
    }

LABEL_37:

    v38 = MEMORY[0x1E69E7CC0];
    v16 = v90;
    v26 = v100;
    v39 = v89;
    goto LABEL_47;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v39 = v36;
LABEL_47:
  type metadata accessor for ProductPageSection();
  inited = swift_initStackObject();
  *(inited + 16) = 3;
  *(inited + 24) = 0xD000000000000011;
  *(inited + 32) = 0x80000001E1B580D0;
  v53 = sub_1E184ADBC();
  v54 = sub_1E183BAE0(inited, v53);
  LOBYTE(inited) = v55;

  if ((inited & 1) == 0)
  {
    v56 = *(v39 + 16);
    v57 = (v39 + 32);
    while (v56)
    {
      v58 = *v57++;
      --v56;
      if (v58 == v54)
      {
        goto LABEL_57;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1E1B02CD0;
    *(v59 + 32) = v54;
    *(v59 + 40) = 0;
    MEMORY[0x1E68F8E70]();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E172D34C(0, *(v38 + 2) + 1, 1, v38);
    }

    v61 = *(v38 + 2);
    v60 = *(v38 + 3);
    if (v61 >= v60 >> 1)
    {
      v38 = sub_1E172D34C(v60 > 1, v61 + 1, 1, v38);
    }

    *(v38 + 2) = v61 + 1;
    (*(v91 + 32))(&v38[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v61], v93, v92);
  }

LABEL_57:
  v62 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = v16;
    v64 = *(v62 + 8);
    swift_getObjectType();
    v99 = v38;
    sub_1E1475F1C();
    v65 = *(v64 + 16);
    v16 = v63;
    v26 = v100;
    v38 = v99;
    (*(v65 + 32))();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v66 = *(v62 + 8);
    v67 = swift_getObjectType();
    (*(v66 + 32))(v26, v38, v95, v39, sub_1E1852DBC, v16, v67, v66);
    v68 = v26;
    v17 = v98;

    swift_unknownObjectRelease();

    v69 = *(v96 + 8);
    v70 = v68;
    v71 = v97;
    v69(v70, v97);
    v69(v15, v71);
  }

  else
  {
    v72 = v26;
    v17 = v98;

    v73 = *(v96 + 8);
    v74 = v72;
    v75 = v97;
    v73(v74, v97);
    v73(v15, v75);
  }

LABEL_62:
  if (*(a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProductFetchedAction))
  {
    v76 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v77 = *(v76 + 8);
      v78 = swift_getObjectType();
      v102 = type metadata accessor for ProductPresenter();
      v101[0] = a2;
      v79 = *(*(v77 + 16) + 8);
      v80 = *(v79 + 8);

      v80(v81, v101, v78, v79);

      swift_unknownObjectRelease();
      sub_1E1308058(v101, &qword_1ECEB2DF0);
    }
  }

  if (v17)
  {
    if (*(v17 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_fullProductFetchedAction))
    {
      v82 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v83 = *(v82 + 8);
        v84 = swift_getObjectType();
        v102 = type metadata accessor for ProductPresenter();
        v101[0] = a2;
        v85 = *(*(v83 + 16) + 8);
        v86 = *(v85 + 8);

        v86(v87, v101, v84, v85);

        swift_unknownObjectRelease();
        sub_1E1308058(v101, &qword_1ECEB2DF0);
      }
    }
  }
}

void sub_1E1841BE8(uint64_t a1, void *a2)
{

  sub_1E18511B4(a2);

  sub_1E18426E4(a2);
  sub_1E18431BC();
  sub_1E1842B50(a2);
}

uint64_t sub_1E1841C38(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AEFE6C();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF503C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = *(v14 + 16);

    if (v15)
    {
      v39[3] = type metadata accessor for ProductPage();
      v39[4] = &protocol witness table for ProductPage;
      v39[5] = sub_1E1852EC0(qword_1EE1F6D60, type metadata accessor for ProductPage);
      v39[0] = v12;

      PendingPageRender.use(pageRenderEventFrom:)(v39);

      sub_1E1308058(v39, &qword_1ECEB2588);
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = *(v17 + 24);

    if (v18)
    {
      v19 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_pageMetrics;
      v20 = sub_1E1AF3C3C();
      (*(*(v20 - 8) + 16))(v11, &v12[v19], v20);
      (*(v9 + 104))(v11, *MEMORY[0x1E69AB440], v8);
      sub_1E1AF508C();

      (*(v9 + 8))(v11, v8);
    }
  }

  sub_1E1840F50(v12, a3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    v21 = sub_1E1852BD8(v12);

    if (v21)
    {
      swift_beginAccess();
      v22 = swift_weakLoadStrong();
      if (v22)
      {
        sub_1E184FA80(v12, *(v22 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController), *(v22 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8), *(v22 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_completeMyBundleController));
      }
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E183F544(v23);
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    swift_beginAccess();
    v26 = *(v25 + 16);

    if (v26)
    {
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v28 = v27;
      (*(v37 + 8))(v7, v38);
      v29 = v26 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v29 = v28;
      *(v29 + 8) = 0;
      v30 = *(v26 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
      swift_beginAccess();
      *(v30 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    swift_beginAccess();
    v33 = *(v32 + 32);
    *(v32 + 32) = 0;
    v34 = v32 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v34 + 8);
      ObjectType = swift_getObjectType();
      (*(*(*(v35 + 16) + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }

    sub_1E183F624(v33);
  }

  return result;
}

void sub_1E1842224(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E18511B4(0);
  swift_beginAccess();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v12 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E183F624(v10);
  v14 = *(v7 + 20);
  v15 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_productUrl;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v9[v14], a2 + v15, v16);
  (*(v17 + 56))(&v9[v14], 0, 1, v16);
  *v9 = a1;
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (v18)
  {
    sub_1E1852EC0(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v34[1] = v7;
    v34[0] = swift_allocError();
    sub_1E13614D0(v9, v19);
    v20 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v21 = *(v18 + v20);
    v22 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v18 + v20) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1E172D0E4(0, v21[2] + 1, 1, v21);
      *(v18 + v20) = v21;
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_1E172D0E4((v24 > 1), v25 + 1, 1, v21);
    }

    v21[2] = v25 + 1;
    v21[v25 + 4] = v34[0];
    *(v18 + v20) = v21;
    swift_endAccess();
  }

  else
  {
    v26 = a1;
  }

  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v6 = a1;
    v28 = v35;
    v27 = v36;
    (*(v35 + 104))(v6, *MEMORY[0x1E69AB430], v36);
    v29 = a1;

    sub_1E1AF508C();

    (*(v28 + 8))(v6, v27);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v11 + 8);
    v31 = swift_getObjectType();
    sub_1E1852EC0(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v32 = swift_allocError();
    sub_1E13614D0(v9, v33);
    (*(*(*(v30 + 16) + 24) + 24))(v32, v31);
    swift_unknownObjectRelease();
    sub_1E1852F08(v9, type metadata accessor for PresenterError);
  }

  else
  {
    sub_1E1852F08(v9, type metadata accessor for PresenterError);
  }
}

uint64_t sub_1E18426E4(void *a1)
{
  v18[3] = type metadata accessor for ProductPage();
  v18[4] = &protocol witness table for ProductPage;
  v18[5] = sub_1E1852EC0(qword_1EE1F6D60, type metadata accessor for ProductPage);
  v18[0] = a1;
  swift_beginAccess();

  sub_1E13891EC(v18, v1 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v18, &qword_1ECEB2588);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = a1[6];
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
  if (v7)
  {
    v8 = *(v7 + 48);

    if (v6)
    {
      if (v8)
      {
        v5 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v6, v8);

        goto LABEL_11;
      }

LABEL_5:
      v5 = 0;
      goto LABEL_11;
    }

    if (v8)
    {

      goto LABEL_5;
    }

    v5 = 1;
  }

  else
  {
    v5 = v6 == 0;
  }

LABEL_11:
  v9 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    v13 = a1[2];
    v12 = a1[3];
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = a1[6];
    }

    ObjectType = swift_getObjectType();
    v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_isComplete);
    v17 = *(v11 + 48);

    v17(v13, v12, v14, v16, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1842904(char a1)
{
  v2 = v1;
  v4 = sub_1E1AF3C1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (a1)
  {
    sub_1E1AF3BEC();
    sub_1E1839F74(v7, &OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline, &OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsTracker, &unk_1F5C51AA0, &unk_1F5C51AF0, sub_1E1852D4C, sub_1E18539D4, &block_descriptor_340, &block_descriptor_333, &OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsCalculator);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_getObjectType();
    sub_1E1AF477C();
  }

  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  sub_1E13891EC(v14, v2 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v14, &qword_1ECEB2588);
  swift_beginAccess();
  v8 = *(v2 + 32);
  *(v2 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  return sub_1E183F624(v8);
}

void sub_1E1842B50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  if ((*(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier + 8) & 1) == 0)
  {
    v6 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams + 8);
    if (v6)
    {
      v8 = a1[2];
      v7 = a1[3];
      v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_externalVersionIdentifier);
      v23 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ProductPage_updateBuyParams);
      v25 = v1;
      v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v24 = v8;
      v26[0] = v8;
      v26[1] = v7;
      v12 = *(v10 + 56);

      v12(v26, ObjectType, v10);
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 16))(v27, v15, v14);
      if (v27[6] >> 60 == 7)
      {
        v16 = [v27[1] integerValue];
        sub_1E139CEA8(v27);
        swift_unknownObjectRelease();
        if (v16 >= v9)
        {
        }

        else if (a1[5] && (v17 = sub_1E1AF5DBC(), v18 = [objc_opt_self() applicationProxyForSystemPlaceholder_], v17, v18))
        {
        }

        else
        {
          v19 = sub_1E1AF649C();
          (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v21 = v24;
          v20[4] = v25;
          v20[5] = v21;
          v20[6] = v7;
          v20[7] = v9;
          v20[8] = v23;
          v20[9] = v6;

          sub_1E154AF74(0, 0, v5, &unk_1E1B39188, v20);
        }
      }

      else
      {
        sub_1E139CEA8(v27);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1E1842E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E1842E44, 0, 0);
}

uint64_t sub_1E1842E44()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v0[4] + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_appStateController + 8);
  ObjectType = swift_getObjectType();
  v0[2] = v2;
  v0[3] = v1;
  v10 = (*(v3 + 80) + **(v3 + 80));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E1842FA0;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return v10(v0 + 2, v8, v6, v7, ObjectType, v3);
}

uint64_t sub_1E1842FA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E1843094(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isFetchingShelves) = result;
  if (v2 != (result & 1))
  {
    if ((result & 1) == 0)
    {
      result = swift_beginAccess();
      if (!*(v1 + 16))
      {
        return result;
      }

      sub_1E1729254();
    }

    result = swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return result;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_1E149DEE8();
      }
    }
  }

  return result;
}

void sub_1E18431BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v72[-v2];
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v72[-v9];
  v10 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
    swift_beginAccess();
    v12 = *(v0 + v11) ? &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering : &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
    v13 = *(v10 + *v12);
    if (v13)
    {
      v86 = v0;
      v98 = MEMORY[0x1E69E7CC8];
      v94 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        goto LABEL_70;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v15 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;

      v95 = v15;
      swift_beginAccess();
      v87 = v10;
      if (v14)
      {
        v78 = v11;
        v77 = v7;
        v90 = v3;
        v91 = v4;
        v11 = 0;
        v7 = (v13 & 0xC000000000000001);
        v89 = (v5 + 48);
        v85 = (v5 + 32);
        v83 = (v5 + 8);
        v82 = (v5 + 16);
        v76 = v5;
        v75 = v5 + 40;
        v81 = xmmword_1E1B02CC0;
        v3 = v94;
        v92 = v13 & 0xC000000000000001;
        v88 = v13;
        while (1)
        {
          if (v7)
          {
            v16 = MEMORY[0x1E68FFD80](v11, v13);
            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v11 >= *(v3 + 2))
            {
              goto LABEL_68;
            }

            v16 = *(v13 + 8 * v11 + 32);

            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              v14 = sub_1E1AF71CC();
              goto LABEL_8;
            }
          }

          if (*(v16 + 16) > 2u)
          {

            v5 = *(v16 + 32);
            if (!v5)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v5 = sub_1E1AF74AC();

            if ((v5 & 1) == 0 || (v5 = *(v16 + 32)) == 0)
            {
LABEL_10:

              goto LABEL_11;
            }
          }

          v17 = *(v10 + v95);
          if (!*(v17 + 16))
          {
            goto LABEL_10;
          }

          v18 = *(v16 + 24);

          v19 = sub_1E13018F8(v18, v5);
          v21 = v20;

          if ((v21 & 1) == 0)
          {

            goto LABEL_26;
          }

          v22 = v14;
          v23 = *(*(v17 + 56) + 8 * v19);

          v24 = v90;
          sub_1E134FD1C(v23 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, v90, &unk_1ECEB4B60);
          v5 = v91;
          if ((*v89)(v24, 1, v91) == 1)
          {

            sub_1E1308058(v24, &unk_1ECEB4B60);
          }

          else
          {
            v25 = *v85;
            (*v85)(v93, v24, v5);
            v26 = v23;
            if (*(v23 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) & 8) == 0 || (*(v86 + v78))
            {
              v97[0] = v11;
              v84 = sub_1E1AF742C();
              v5 = v27;
              v28 = (v23 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
              v14 = v22;
              if (v98[2] && (sub_1E13018F8(*v28, v28[1]), (v29 & 1) != 0))
              {
                v30 = sub_1E1A0C5CC(v97, *v28, v28[1]);
                v32 = v30;
                v13 = v88;
                if (*v31)
                {
                  v33 = v31;
                  v79 = v30;
                  (*v82)(v77, v93, v91);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v35 = v5;
                  v36 = isUniquelyReferenced_nonNull_native;
                  v96 = *v33;
                  v37 = v96;
                  v74 = v33;
                  *v33 = 0x8000000000000000;
                  v80 = v35;
                  v38 = sub_1E13018F8(v84, v35);
                  v40 = v37[2];
                  v41 = (v39 & 1) == 0;
                  v42 = __OFADD__(v40, v41);
                  v43 = v40 + v41;
                  v10 = v87;
                  if (v42)
                  {
                    goto LABEL_72;
                  }

                  if (v37[3] >= v43)
                  {
                    if ((v36 & 1) == 0)
                    {
                      v61 = v38;
                      v62 = v39;
                      sub_1E1415E54();
                      LOBYTE(v39) = v62;
                      v38 = v61;
                      v10 = v87;
                    }

                    v5 = v80;
                    if (v39)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    v73 = v39;
                    sub_1E1688F60(v43, v36);
                    v5 = v80;
                    v38 = sub_1E13018F8(v84, v80);
                    if ((v73 & 1) != (v44 & 1))
                    {
                      goto LABEL_74;
                    }

                    if (v73)
                    {
LABEL_37:
                      v45 = v38;

                      v46 = v96;
                      v47 = v96[7] + *(v76 + 72) * v45;
                      v48 = v91;
                      (*(v76 + 40))(v47, v77, v91);
                      goto LABEL_46;
                    }
                  }

                  v46 = v96;
                  v96[(v38 >> 6) + 8] |= 1 << v38;
                  v58 = (v46[6] + 16 * v38);
                  *v58 = v84;
                  v58[1] = v5;
                  v25(v46[7] + *(v76 + 72) * v38, v77, v91);
                  v59 = v46[2];
                  v42 = __OFADD__(v59, 1);
                  v60 = v59 + 1;
                  if (v42)
                  {
                    goto LABEL_73;
                  }

                  v46[2] = v60;
                  v48 = v91;
LABEL_46:
                  *v74 = v46;

                  v79(v97, 0);

                  (*v83)(v93, v48);
LABEL_26:
                }

                else
                {

                  (v32)(v97, 0);

                  (*v83)(v93, v91);

                  v10 = v87;
                }
              }

              else
              {
                v49 = v28[1];
                v79 = *v28;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E58);
                v80 = v26;
                v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D10) - 8);
                v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
                v52 = swift_allocObject();
                *(v52 + 16) = v81;
                v53 = (v52 + v51);
                v54 = v50[14];
                *v53 = v84;
                v53[1] = v5;
                v55 = v91;
                (*v82)(v53 + v54, v93, v91);

                v5 = sub_1E159E380(v52);
                swift_setDeallocating();
                sub_1E1308058(v53, &unk_1ECEB5D10);
                swift_deallocClassInstance();
                v56 = v98;
                v57 = swift_isUniquelyReferenced_nonNull_native();
                v97[0] = v56;
                sub_1E1598B80(v5, v79, v49, v57);

                v98 = v97[0];
                (*v83)(v93, v55);
                v10 = v87;
                v13 = v88;
              }

              v3 = v94;
              v7 = v92;
              goto LABEL_11;
            }

            (*v83)(v93, v91);
          }

          v3 = v94;
          v7 = v92;
          v14 = v22;
          v13 = v88;
LABEL_11:
          ++v11;
          if (v4 == v14)
          {
            v10 = v98;
            goto LABEL_52;
          }
        }
      }

      v10 = MEMORY[0x1E69E7CC8];
LABEL_52:

      v63 = v10[2];
      if (v63)
      {
        v64 = *(v86 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests);
        v42 = __OFADD__(v64, v63);
        v65 = v64 + v63;
        if (!v42)
        {
          *(v86 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests) = v65;
          sub_1E1843094(v65 > 0);
          v4 = (v10 + 8);
          v66 = 1 << *(v10 + 32);
          v67 = -1;
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          v68 = v67 & v10[8];
          v7 = ((v66 + 63) >> 6);

          v11 = 0;
          while (v68)
          {
            v69 = v11;
LABEL_62:
            v70 = __clz(__rbit64(v68));
            v68 &= v68 - 1;
            v3 = *(v10[7] + ((v69 << 9) | (8 * v70)));

            v5 = sub_1E14C5E10(v71);

            sub_1E1843CDC(v5);
          }

          while (1)
          {
            v69 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_69;
            }

            if (v69 >= v7)
            {

              goto LABEL_65;
            }

            v68 = *(v4 + 8 * v69);
            ++v11;
            if (v68)
            {
              v11 = v69;
              goto LABEL_62;
            }
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        sub_1E1AF757C();
        __break(1u);
      }

      else
      {
LABEL_65:
      }
    }
  }
}

uint64_t sub_1E1843CDC(uint64_t a1)
{
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    *v6 = 0;
    (*(v4 + 104))(v6, *MEMORY[0x1E69AB448], v3);

    sub_1E1AF509C();

    (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();

  sub_1E1AF4BEC();

  v7 = sub_1E1AF4C0C();

  sub_1E1367B40(a1, v7, "AppStoreKit/ProductPresenter.swift", 34, 2);
  v8 = sub_1E1361A80();
  swift_retain_n();
  v9 = sub_1E1AF68EC();
  v11[3] = v8;
  v11[4] = MEMORY[0x1E69AB720];
  v11[0] = v9;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1E1843F54(uint64_t *a1, uint64_t a2)
{
  v153 = sub_1E1AEFE6C();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v157 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v136 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v156 = v128 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v134 = v128 - v10;
  v143 = sub_1E1AF00EC();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v12 = v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF503C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x1E69AB438], v13);

    sub_1E1AF508C();

    (*(v14 + 8))(v16, v13);
  }

  v145 = v12;
  sub_1E1AF00DC();
  v17 = MEMORY[0x1E69E7CC0];
  v150 = sub_1E15A26E8(MEMORY[0x1E69E7CC0]);
  v18 = *(v146 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v140 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct;
  v135 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct;
  v23 = OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isPurchased;
  v147 = v18;

  v148 = a2;
  v137 = v23;
  swift_beginAccess();
  v24 = 0;
  v141 = 0;
  v25 = (v20 + 63) >> 6;
  v139 = "nded";
  v133 = "helfId for section";
  v132 = " product page at section";
  v131 = xmmword_1E1B07790;
  v149 = xmmword_1E1B02CD0;
  v144 = v17;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v147;
    sub_1E134E724(*(v147 + 48) + 40 * v27, &v163);
    v29 = *(*(v28 + 56) + 8 * v27);
    v151 = v163;
    v30 = v165;
    v155 = v164;
    v31 = *(&v164 + 1);

    if (!v31)
    {
LABEL_53:

      v16 = v148;
      swift_beginAccess();
      v66 = v145;
      v67 = v154;
      if (*(v16 + 16))
      {
        swift_beginAccess();

        sub_1E1727C98(v68);
        swift_endAccess();

        if (*(v16 + 16))
        {
          swift_beginAccess();

          sub_1E1727CD4(v69);
          swift_endAccess();
        }
      }

      v70 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
      if ((sub_1E1AF00BC() & 1) == 0)
      {
        v71 = v16 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v72 = *(v71 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v72 + 16) + 48))(v66, ObjectType);
          swift_unknownObjectRelease();
        }
      }

      *&v151 = *(v16 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_pageRefreshPolicy);
      if (v151)
      {
        v74 = v144[2];
        if (v74)
        {
          v75 = v144 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
          *&v155 = *(v136 + 72);
          v76 = (v152 + 48);
          v77 = (v152 + 32);

          v78 = MEMORY[0x1E69E7CC0];
          v79 = v153;
          do
          {
            v80 = v156;
            sub_1E134FD1C(v75, v156, &unk_1ECEBB780);
            sub_1E137F600(v80, v67, &unk_1ECEBB780);
            if ((*v76)(v67, 1, v79) == 1)
            {
              sub_1E1308058(v67, &unk_1ECEBB780);
            }

            else
            {
              v81 = *v77;
              (*v77)(v157, v67, v79);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v78 = sub_1E172D0BC(0, *(v78 + 2) + 1, 1, v78);
              }

              v83 = *(v78 + 2);
              v82 = *(v78 + 3);
              if (v83 >= v82 >> 1)
              {
                v78 = sub_1E172D0BC(v82 > 1, v83 + 1, 1, v78);
              }

              *(v78 + 2) = v83 + 1;
              v79 = v153;
              v81(&v78[((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v83], v157, v153);
              v67 = v154;
            }

            v75 += v155;
            --v74;
          }

          while (v74);

          v70 = &OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent;
        }

        else
        {

          v78 = MEMORY[0x1E69E7CC0];
        }

        v84 = sub_1E16F6E24(v78);

        v85 = v148;
        if (v84)
        {

          sub_1E183F544(v86);
        }

        v16 = v85;
      }

      else
      {
      }

      v87 = v150 + 64;
      v88 = 1 << *(v150 + 32);
      v89 = -1;
      if (v88 < 64)
      {
        v89 = ~(-1 << v88);
      }

      v90 = v89 & *(v150 + 64);
      v91 = (v16 + v70[430]);
      swift_beginAccess();
      v92 = 0;
      v157 = v91;
      while (v90)
      {
LABEL_84:
        v94 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v95 = (v92 << 9) | (8 * v94);
        v16 = *(*(v150 + 48) + v95);
        v96 = *(*(v150 + 56) + v95);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v97 = *(v91 + 1);
          v98 = swift_getObjectType();
          v99 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          v100 = v96;
          v16 = [v99 initWithInteger_];
          v101 = v98;
          v91 = v157;
          (*(*(v97 + 16) + 40))(v96, v16, v101);
          swift_unknownObjectRelease();
        }
      }

      while (1)
      {
        v93 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
          goto LABEL_104;
        }

        if (v93 >= ((v88 + 63) >> 6))
        {
          break;
        }

        v90 = *(v87 + 8 * v93);
        ++v92;
        if (v90)
        {
          v92 = v93;
          goto LABEL_84;
        }
      }

      v102 = *(v146 + 24);
      v16 = (v102 + 64);
      v103 = 1 << v102[32];
      v104 = -1;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      v105 = v104 & *(v102 + 8);

      swift_beginAccess();
      v106 = 0;
      v107 = (v103 + 63) >> 6;
      v154 = v102;
      while (v105)
      {
LABEL_94:
        v109 = __clz(__rbit64(v105));
        v105 &= v105 - 1;
        v110 = v109 | (v106 << 6);
        v111 = (*(v102 + 6) + 16 * v110);
        v113 = *v111;
        v112 = v111[1];
        v114 = *(*(v102 + 7) + 8 * v110);
        swift_bridgeObjectRetain_n();
        v115 = v114;
        v116 = sub_1E15B782C(v113, v112);
        if (v117)
        {
          if (qword_1ECEB1280 != -1)
          {
            swift_once();
          }

          v156 = sub_1E1AF591C();
          *&v155 = __swift_project_value_buffer(v156, qword_1ECEF4B98);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = v149;
          sub_1E1AF382C();
          *(&v164 + 1) = MEMORY[0x1E69E6158];
          *&v163 = v113;
          *(&v163 + 1) = v112;
          sub_1E1AF38DC();
          sub_1E1308058(&v163, &qword_1ECEB2DF0);
          sub_1E1AF54AC();

          v102 = v154;
        }

        else
        {
          v118 = v116;

          v119 = v157;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v120 = *(v119 + 1);
            v121 = swift_getObjectType();
            v122 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            (*(*(v120 + 16) + 40))(v114, v122, v121);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v108 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          break;
        }

        if (v108 >= v107)
        {

          v123 = *(v148 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests);
          v124 = __OFSUB__(v123, 1);
          v125 = v123 - 1;
          if (v124)
          {
            goto LABEL_106;
          }

          *(v148 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests) = v125;
          sub_1E1843094(v125 > 0);
          return (*(v142 + 8))(v145, v143);
        }

        v105 = *(v16 + 8 * v108);
        ++v106;
        if (v105)
        {
          v106 = v108;
          goto LABEL_94;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v22 &= v22 - 1;
    v163 = v151;
    v164 = v155;
    v165 = v30;
    sub_1E1AF6F4C();
    if (swift_dynamicCast() & 1) == 0 || (v32 = sub_1E15B782C(v161, v162), (v33))
    {
      if (qword_1ECEB1280 != -1)
      {
        swift_once();
      }

      v34 = sub_1E1AF591C();
      __swift_project_value_buffer(v34, qword_1ECEF4B98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      v35 = *(sub_1E1AF38EC() - 8);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v149;
      v16 = v37 + v36;
      sub_1E1AF382C();
      v160 = MEMORY[0x1E69E69B8];
      v158 = swift_allocObject();
      sub_1E134E724(&v163, v158 + 16);
      sub_1E1AF38DC();
      sub_1E1308058(&v158, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      goto LABEL_39;
    }

    v16 = v32;
    v38 = sub_1E184B3F8(v32);
    if (!v38)
    {
      goto LABEL_109;
    }

    v39 = v29[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched];
    *&v155 = v38;
    if (v39)
    {
      v40 = v141;
      v41 = Shelf.mergingWith(_:)(v29);
      v141 = v40;
      if (!v40)
      {
        v42 = v41;
        goto LABEL_22;
      }

      v49 = v40;
      v50 = v150;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v50;
      sub_1E159BF4C(v40, v16, isUniquelyReferenced_nonNull_native);
      v150 = v158;
      if (qword_1ECEB1280 != -1)
      {
        swift_once();
      }

      *&v151 = sub_1E1AF591C();
      v130 = __swift_project_value_buffer(v151, qword_1ECEF4B98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      v128[1] = 8 * *(*(sub_1E1AF38EC() - 8) + 72);
      v129 = swift_allocObject();
      *(v129 + 16) = v131;
      sub_1E1AF382C();
      v160 = MEMORY[0x1E69E6530];
      v158 = v16;
      sub_1E1AF38BC();
      sub_1E1308058(&v158, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      LOBYTE(v158) = *(v155 + 16);
      v52 = Shelf.ContentType.rawValue.getter();
      v160 = MEMORY[0x1E69E6158];
      v158 = v52;
      v159 = v53;
      sub_1E1AF38BC();
      sub_1E1308058(&v158, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      LOBYTE(v158) = v29[16];
      v54 = Shelf.ContentType.rawValue.getter();
      v160 = MEMORY[0x1E69E6158];
      v158 = v54;
      v159 = v55;
      sub_1E1AF38BC();
      sub_1E1308058(&v158, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      v16 = v141;
      swift_getErrorValue();
      v56 = sub_1E1AF75AC();
      v160 = MEMORY[0x1E69E6158];
      v158 = v56;
      v159 = v57;
      sub_1E1AF38DC();
      sub_1E1308058(&v158, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      sub_1E134B88C(&v163);
      v141 = 0;
    }

    else
    {

      v42 = v29;
LABEL_22:
      if (*(v148 + v140))
      {
        v43 = *(v148 + v140);
LABEL_26:
        v44 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_purchasedOrdering;
        if (!*(v148 + v137))
        {
          v44 = &OBJC_IVAR____TtC11AppStoreKit11ProductPage_notPurchasedOrdering;
        }

        v45 = *(v43 + *v44);

        if (v45)
        {
        }

        else
        {
          v45 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_32;
      }

      v43 = *(v148 + v135);
      if (v43)
      {

        goto LABEL_26;
      }

      v45 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v138 = v16;
      *&v151 = v42;
      if ((v45 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1E68FFD80](v16, v45);

        v16 = *(v58 + 24);
        v47 = *(v58 + 32);

        swift_unknownObjectRelease();
        if (v47)
        {
          goto LABEL_45;
        }

LABEL_36:
        if (qword_1ECEB1280 != -1)
        {
          swift_once();
        }

        v48 = sub_1E1AF591C();
        __swift_project_value_buffer(v48, qword_1ECEF4B98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        v16 = swift_allocObject();
        *(v16 + 16) = v149;
        sub_1E1AF382C();
        v160 = MEMORY[0x1E69E6530];
        v158 = v138;
        sub_1E1AF38BC();
        sub_1E1308058(&v158, &qword_1ECEB2DF0);
        sub_1E1AF54AC();

LABEL_39:

        sub_1E134B88C(&v163);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v16 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v46 = *(v45 + 8 * v16 + 32);

        v16 = *(v46 + 24);
        v47 = *(v46 + 32);

        if (!v47)
        {
          goto LABEL_36;
        }

LABEL_45:
        v59 = *(v148 + v140);
        v60 = v151;
        if (v59)
        {
          v61 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_shelfMapping;
          swift_beginAccess();

          v62 = swift_isUniquelyReferenced_nonNull_native();
          v161 = *(v59 + v61);
          *(v59 + v61) = 0x8000000000000000;
          sub_1E1599EB8(v60, v16, v47, v62);

          *(v59 + v61) = v161;
          swift_endAccess();
        }

        else
        {
        }

        sub_1E1AF00AC();
        sub_1E134FD1C(&v29[OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate], v134, &unk_1ECEBB780);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1E172EFC0(0, v144[2] + 1, 1, v144);
        }

        v64 = v144[2];
        v63 = v144[3];
        if (v64 >= v63 >> 1)
        {
          v144 = sub_1E172EFC0(v63 > 1, v64 + 1, 1, v144);
        }

        sub_1E134B88C(&v163);
        v65 = v144;
        v144[2] = v64 + 1;
        sub_1E137F600(v134, v65 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v64, &unk_1ECEBB780);
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      goto LABEL_53;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  v158 = 0;
  v159 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD00000000000001ALL, 0x80000001E1B791E0);
  v161 = v148;
  type metadata accessor for ProductPresenter();
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000020, 0x80000001E1B79200);
  v161 = v16;
  v127 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v127);

  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

uint64_t sub_1E18457F4(void *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8)
  {
    *v7 = a1;
    v7[8] = 0;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB428], v4);

    v9 = a1;
    sub_1E1AF508C();

    v10 = *(v5 + 8);
    v5 += 8;
    v10(v7, v4);
  }

  v11 = *(a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
LABEL_13:
    v4 = sub_1E172D0E4(0, v4[2] + 1, 1, v4);
    *(v8 + v5) = v4;
    goto LABEL_6;
  }

  *(a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_numberOfActiveRequests) = v13;
  sub_1E1843094(v13 > 0);
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  v4 = *(v8 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v5) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v16 = v4[2];
  v15 = v4[3];
  if (v16 >= v15 >> 1)
  {
    v4 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v4);
  }

  v4[2] = v16 + 1;
  v4[v16 + 4] = a1;
  *(v8 + v5) = v4;
  swift_endAccess();
  v17 = a1;

LABEL_9:
  v18 = a2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v20 + 16) + 24) + 24))(a1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

BOOL sub_1E1845A94()
{
  v0 = sub_1E184ADBC();
  if (v0 >> 62)
  {
    v1 = sub_1E1AF71CC();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_1E1AF019C() >= v1)
  {
    return 0;
  }

  v2 = sub_1E1AF019C();
  v3 = sub_1E184B3F8(v2);
  if (v3)
  {
    v4 = *(v3 + 24);

    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return sub_1E1AF018C() < v5;
}

BOOL sub_1E1845B64(unint64_t a1)
{
  v1 = sub_1E184B3F8(a1);
  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_1E1845B9C(unint64_t a1)
{
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001ALL, 0x80000001E1B791E0);
    type metadata accessor for ProductPresenter();
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](0xD000000000000020, 0x80000001E1B79200);
    v2 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v2);

    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1845CCC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_1E184B3F8(a1);
  if (v3)
  {
    v4 = *(v3 + 16);

    *a2 = v4;
  }

  else
  {
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001ALL, 0x80000001E1B791E0);
    type metadata accessor for ProductPresenter();
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](0xD000000000000020, 0x80000001E1B79200);
    v6 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v6);

    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1845E0C(unint64_t a1)
{
  v1 = sub_1E184B3F8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E1845E60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AF019C();
  v3 = sub_1E184B3F8(v2);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 24);

  v5 = sub_1E1AF018C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD00000000000001ALL, 0x80000001E1B791E0);
    type metadata accessor for ProductPresenter();
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](0xD000000000000022, 0x80000001E1B79230);
    sub_1E1AF01FC();
    sub_1E1852EC0(&qword_1ECEB8588, MEMORY[0x1E6969C28]);
    v7 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v7);

    result = sub_1E1AF71FC();
    __break(1u);
    return result;
  }

  sub_1E1300B24(v4 + 40 * v5 + 32, a1);
}

uint64_t sub_1E184603C(unint64_t a1)
{
  v2 = sub_1E184B3F8(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E184B3F8(a1);
    if (v4 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6 == 1))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);
    }

    return v7;
  }

  else
  {
    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1846110(unint64_t a1)
{
  v1 = sub_1E184B3F8(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal);

  return v2;
}

uint64_t sub_1E1846154(unint64_t a1)
{
  v1 = sub_1E184B3F8(a1);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden);

    return v2;
  }

  else
  {
    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E18461D4(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  v3 = MEMORY[0x1E68FFD80](a1, result);
LABEL_5:

  if (*(v3 + 16) == 3 && (v4 = sub_1E184B3F8(a1)) != 0 && (v5 = *(v4 + 24), , , v6 = *(v5 + 16), , v6) && sub_1E184B3F8(a1))
  {
    v7 = Shelf.seeAllAction.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1E18462D4(unint64_t a1)
{
  result = sub_1E184ADBC();
  if ((result & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v3 = *(result + 8 * a1 + 32);

      v4 = *(v3 + 16);

      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    }

    __break(1u);
    return result;
  }

  v9 = MEMORY[0x1E68FFD80](a1, result);

  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    return 0;
  }

LABEL_5:
  result = sub_1E184B3F8(a1);
  if (!result)
  {
    return result;
  }

  v5 = *(result + 24);

  v6 = *(v5 + 16);

  if (!v6)
  {
    return 0;
  }

  result = sub_1E184B3F8(a1);
  if (result)
  {
    v7 = *(result + 40);
    if (v7)
    {
      v8 = *(v7 + 112);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

uint64_t sub_1E1846408(unint64_t a1)
{
  v4 = sub_1E184ADBC();
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x1E68FFD80](a1, v4);
LABEL_5:

  v2 = *(v5 + 16);
  if (v2 != 3)
  {
    if (qword_1ECEB1280 == -1)
    {
LABEL_10:
      v12 = sub_1E1AF591C();
      __swift_project_value_buffer(v12, qword_1ECEF4B98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      if (v2)
      {
        if (v2 == 1)
        {
          v13 = 0xE900000000000070;
          v14 = 0x756B636F4C706F74;
        }

        else
        {
          v13 = 0xEB0000000073746FLL;
          v14 = 0x68736E6565726373;
        }
      }

      else
      {
        v13 = 0xEF74736575716552;
        v14 = 0x7975426F546B7361;
      }

      *(&v16 + 1) = MEMORY[0x1E69E6158];
      *&v15 = v14;
      *(&v15 + 1) = v13;
      sub_1E1AF38BC();
      sub_1E1308058(&v15, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      sub_1E1AF549C();
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v6 = sub_1E18461D4(a1);
  if (v6)
  {
    v7 = v6;
    v8 = v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v15 = 0u;
      v16 = 0u;
      (*(*(*(v9 + 16) + 8) + 8))(v7, &v15, ObjectType);

      swift_unknownObjectRelease();
      return sub_1E1308058(&v15, &qword_1ECEB2DF0);
    }
  }
}