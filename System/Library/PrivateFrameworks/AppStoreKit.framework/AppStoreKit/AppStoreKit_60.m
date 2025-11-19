uint64_t LinkLoader.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for UnboundedCache();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LinkLoader.__deallocating_deinit()
{
  LinkLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18D32C8(uint64_t a1)
{
  (*(*(*(*v1 + 80) - 8) + 16))(v1 + *(*v1 + 96), a1, *(*v1 + 80));
  v9 = 1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  UnboundedCache.init(removeConditions:)(&v9, AssociatedTypeWitness, v3, AssociatedConformanceWitness, v10);
  v5 = v1 + *(*v1 + 104);
  v6 = v10[3];
  *(v5 + 32) = v10[2];
  *(v5 + 48) = v6;
  *(v5 + 64) = v11;
  v7 = v10[1];
  *v5 = v10[0];
  *(v5 + 16) = v7;
  return v1;
}

uint64_t sub_1E18D3430(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = *(sub_1E1AF6D9C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1E18D268C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1E18D3514()
{
  result = swift_checkMetadataState();
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

AppStoreKit::PurchasesDecorationIntent __swiftcall PurchasesDecorationIntent.init(purchaseIntents:)(Swift::OpaquePointer purchaseIntents)
{
  v1->_rawValue = 0xD000000000000019;
  v1[1]._rawValue = 0x80000001E1B3F5B0;
  v1[2]._rawValue = purchaseIntents._rawValue;
  result.kind._countAndFlagsBits = purchaseIntents._rawValue;
  return result;
}

uint64_t PurchasesDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PurchasesDecorationIntent.makeValue(in:)(JSContext in)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v7 = *(v3 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1E135C048(0, v7, 0);
      v8 = v15;
      v9 = v3 + 32;
      do
      {
        sub_1E16190EC(v9, v14);
        v10 = sub_1E1626328();
        sub_1E16194D4(v14);
        v15 = v8;
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1E135C048((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v9 += 160;
        --v7;
      }

      while (v7);
    }

    v14[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738);
    v13 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v13)
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

unint64_t sub_1E18D385C()
{
  result = qword_1ECEBB018;
  if (!qword_1ECEBB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB018);
  }

  return result;
}

unint64_t sub_1E18D38B8()
{
  result = qword_1ECEBB020;
  if (!qword_1ECEBB020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB6D50);
    sub_1E162F220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB020);
  }

  return result;
}

uint64_t UpdateGranularNotificationSettingsAction.__allocating_init(settingIDs:)(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = a1;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1E1AF3DFC();
  v7 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v8 = sub_1E1AF46DC();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v20, &v17);
  if (*(&v18 + 1))
  {
    v11 = v18;
    *v10 = v17;
    *(v10 + 16) = v11;
    *(v10 + 32) = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v16[1] = v12;
    v16[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(&v17, &unk_1ECEB5670);
  }

  sub_1E1308058(v20, &unk_1ECEB5670);
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  return v6;
}

uint64_t UpdateGranularNotificationSettingsAction.init(settingIDs:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = a1;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_1E1AF3DFC();
  v15 = sub_1E1AF46DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v16 = 0u;
  v16[1] = 0u;
  sub_1E138853C(v30, &v24);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v23[1] = v17;
    v23[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670);
  }

  sub_1E1308058(v30, &unk_1ECEB5670);
  v20 = v2 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v20 + 32) = v29;
  v21 = v28;
  *v20 = v27;
  *(v20 + 16) = v21;
  sub_1E134B7C8(v10, v2 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  return v2;
}

char *UpdateGranularNotificationSettingsAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v30 = a2;
  v29 = sub_1E1AF39DC();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v31 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v25 = *(v5 + 8);
  v25(v10, v4);
  v14 = sub_1E1AF5A6C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB1F90);
    v16 = 0;
  }

  else
  {
    v16 = sub_1E1AF5A0C();
    (*(v15 + 8))(v13, v14);
  }

  *(v28 + OBJC_IVAR____TtC11AppStoreKit40UpdateGranularNotificationSettingsAction_settingIDs) = v16;
  v17 = v31;
  (*(v5 + 16))(v7, v31, v4);
  v18 = v26;
  v19 = v27;
  v21 = v29;
  v20 = v30;
  (*(v27 + 16))(v26, v30, v29);
  v22 = Action.init(deserializing:using:)(v7, v18);
  (*(v19 + 8))(v20, v21);
  v25(v17, v4);
  return v22;
}

uint64_t UpdateGranularNotificationSettingsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t UpdateGranularNotificationSettingsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpdateGranularNotificationSettingsAction()
{
  result = qword_1EE1E66D0;
  if (!qword_1EE1E66D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18D45A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E1AF3C1C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E1AF3BFC();
}

uint64_t sub_1E18D462C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF3C1C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::Void __swiftcall PageGridCaching.invalidateCache()()
{
  v1 = (*(v0 + 8))();
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v131 = a7;
  v138 = a5;
  v108 = a4;
  v135 = a14;
  v136 = a15;
  v134 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v110 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v106 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v113 = *(v34 - 8);
  v114 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v137 = &v106 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = &v106 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v106 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v123 = &v106 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v115 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v139 = &v106 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v106 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v106 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v106 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v106 - v58;
  sub_1E134FD1C(a2, &v106 - v58, &qword_1ECEB75A0);
  sub_1E134FD1C(a3, &v59[*(v36 + 48)], &qword_1ECEB75A0);
  v60 = a6;
  v61 = *(a6 + 8);
  v62 = v130;
  v63 = v138;
  v126 = v61(v138, v60);
  v128 = v59;
  sub_1E134FD1C(v59, v56, &unk_1ECEB7E70);
  v64 = *(v36 + 48);
  v106 = sub_1E18D545C(v62, v63, v60);
  v125 = v65;
  sub_1E134FD1C(v56, v53, &qword_1ECEB75A0);
  v66 = *(v36 + 48);
  v130 = v56;
  v127 = v64;
  v67 = &v56[v64];
  v68 = v36;
  v69 = v113;
  sub_1E134FD1C(v67, &v53[v66], &qword_1ECEB75A0);
  v70 = v114;
  (*(v69 + 16))(v137, v134, v114);
  v129 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70);
  v71 = *(v68 + 48);
  v72 = v139;
  sub_1E16EFA40(v50, v139);
  sub_1E16EFA40(&v50[v71], v72 + *(v68 + 48));
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v124 = v141[0];
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v122 = v141[0];
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v121 = v141[0];
  swift_getKeyPath();
  v73 = v132;
  sub_1E1AF3DAC();

  v120 = *&v141[16];
  v116 = *v141;
  v118 = *&v141[40];
  v119 = *&v141[32];
  v117 = *&v141[48];
  v74 = v72;
  v75 = v70;
  v76 = v115;
  sub_1E134FD1C(v74, v115, &unk_1ECEB7E70);
  v138 = v68;
  v77 = *(v68 + 48);
  v78 = v76;
  sub_1E16EFA40(v76, v73);
  v79 = *(v69 + 48);
  if (v79(v73, 1, v75) == 1)
  {
    sub_1E1308058(v76 + v77, &qword_1ECEB75A0);
    sub_1E1308058(v73, &qword_1ECEB75A0);
    v80 = v133;
    v81 = v139;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v82 = v141[0];
    (*(v69 + 8))(v73, v75);
    sub_1E1308058(v78 + v77, &qword_1ECEB75A0);
    LODWORD(v132) = v82;
    v80 = v133;
    v81 = v139;
    if (v82 != 100)
    {
      goto LABEL_8;
    }
  }

  v83 = v109;
  sub_1E134FD1C(v81, v109, &unk_1ECEB7E70);
  v84 = v83 + *(v138 + 48);
  v85 = v83;
  v86 = v110;
  sub_1E16EFA40(v85, v110);
  if (v79(v86, 1, v75) == 1)
  {
    sub_1E1308058(v84, &qword_1ECEB75A0);
    LODWORD(v132) = 100;
    v84 = v86;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();
    v81 = v139;
    v80 = v133;

    LODWORD(v132) = v141[0];
    (*(v69 + 8))(v86, v75);
  }

  sub_1E1308058(v84, &qword_1ECEB75A0);
LABEL_8:
  v87 = v81;
  v88 = v123;
  sub_1E134FD1C(v87, v123, &unk_1ECEB7E70);
  sub_1E16EFA40(v88 + *(v138 + 48), v80);
  if (v79(v80, 1, v75) == 1)
  {
    sub_1E1308058(v88, &qword_1ECEB75A0);
    sub_1E1308058(v80, &qword_1ECEB75A0);
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v89 = v141[0];
    v90 = v80;
    v91 = *(v69 + 8);
    v91(v90, v75);
    sub_1E1308058(v88, &qword_1ECEB75A0);
    if (v89 != 100)
    {
      sub_1E1308058(v139, &unk_1ECEB7E70);
      v91(v137, v75);
      goto LABEL_15;
    }
  }

  v92 = v139;
  v93 = v111;
  sub_1E134FD1C(v139, v111, &unk_1ECEB7E70);
  v94 = v112;
  sub_1E16EFA40(v93 + *(v138 + 48), v112);
  if (v79(v94, 1, v75) == 1)
  {
    sub_1E1308058(v92, &unk_1ECEB7E70);
    (*(v69 + 8))(v137, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0);
    sub_1E1308058(v94, &qword_1ECEB75A0);
    LOBYTE(v89) = 100;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    sub_1E1308058(v92, &unk_1ECEB7E70);
    v95 = *(v69 + 8);
    v95(v137, v75);
    LOBYTE(v89) = v141[0];
    v95(v94, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0);
  }

LABEL_15:
  v142[0] = v124;
  v142[1] = v122;
  v142[2] = v121;
  v143 = v140[0];
  v144 = BYTE4(v140[0]);
  v145 = v116;
  v146 = v120;
  v147 = v119;
  v148 = v118;
  v149 = v117;
  v150 = v132;
  v151 = v89;
  v152 = *v141;
  v153 = *&v141[4];
  v154 = a8;
  v155 = a9;
  v156 = a10;
  v157 = a11;
  v158 = a12;
  v159 = a13;
  v160 = v135;
  v161 = v136;
  v162 = a16;
  v163 = a17;
  v96 = v126;
  swift_beginAccess();
  v97 = *(v96 + 16);
  if (!*(v97 + 16))
  {
LABEL_19:
    v100 = v129;
    v101 = v107;
    sub_1E134FD1C(v129, v107, &unk_1ECEB7E70);
    v102 = *(v138 + 48);
    (v106)(v140, v134, v101, v101 + v102, v108, a8, a9, a10, a11, a12, a13, v135, v136, a16, a17);
    sub_1E1308058(v101 + v102, &qword_1ECEB75A0);
    sub_1E1308058(v101, &qword_1ECEB75A0);
    memcpy(v141, v140, sizeof(v141));
    swift_beginAccess();
    sub_1E141D08C(v141, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = *(v96 + 16);
    *(v96 + 16) = 0x8000000000000000;
    sub_1E159C2C8(v141, v142, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v142);
    *(v96 + 16) = v140[0];
    swift_endAccess();

    sub_1E1308058(v100, &unk_1ECEB7E70);
    sub_1E1308058(v128, &unk_1ECEB7E70);
    goto LABEL_20;
  }

  v98 = sub_1E1595EB8(v142);
  if ((v99 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v141, (*(v97 + 56) + 392 * v98), sizeof(v141));
  sub_1E141D08C(v141, v140);
  sub_1E15A43AC(v142);

  sub_1E1308058(v129, &unk_1ECEB7E70);
  sub_1E1308058(v128, &unk_1ECEB7E70);

LABEL_20:
  memcpy(v131, v141, 0x188uLL);
  v104 = v130;
  sub_1E1308058(&v130[v127], &qword_1ECEB75A0);
  return sub_1E1308058(v104, &qword_1ECEB75A0);
}

uint64_t (*sub_1E18D545C(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1E18D6808;
}

uint64_t sub_1E18D557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a14;
  v38 = a15;
  v36 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v36 - v32;
  sub_1E134FD1C(a2, &v36 - v32, &qword_1ECEB75A0);
  sub_1E134FD1C(a3, &v33[*(v28 + 56)], &qword_1ECEB75A0);
  sub_1E134FD1C(v33, v30, &unk_1ECEB7E70);
  v34 = *(v28 + 56);
  (*(a7 + 24))(v36, v30, &v30[v34], v39, v41, a7, a8, a9, a10, a11, a12, a13, v37, v38, a16, a17);
  sub_1E1308058(v33, &unk_1ECEB7E70);
  sub_1E1308058(&v30[v34], &qword_1ECEB75A0);
  return sub_1E1308058(v30, &qword_1ECEB75A0);
}

uint64_t PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v131 = a7;
  v138 = a5;
  v108 = a4;
  v135 = a14;
  v136 = a15;
  v134 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v110 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v106 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v106 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v113 = *(v34 - 8);
  v114 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v137 = &v106 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = &v106 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v106 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v123 = &v106 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v115 = &v106 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v139 = &v106 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v106 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v106 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v106 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v106 - v58;
  sub_1E134FD1C(a2, &v106 - v58, &qword_1ECEB75A0);
  sub_1E134FD1C(a3, &v59[*(v36 + 48)], &qword_1ECEB75A0);
  v60 = a6;
  v61 = *(a6 + 8);
  v62 = v130;
  v63 = v138;
  v126 = v61(v138, v60);
  v128 = v59;
  sub_1E134FD1C(v59, v56, &unk_1ECEB7E70);
  v64 = *(v36 + 48);
  v106 = sub_1E18D6470(v62, v63, v60);
  v125 = v65;
  sub_1E134FD1C(v56, v53, &qword_1ECEB75A0);
  v66 = *(v36 + 48);
  v130 = v56;
  v127 = v64;
  v67 = &v56[v64];
  v68 = v36;
  v69 = v113;
  sub_1E134FD1C(v67, &v53[v66], &qword_1ECEB75A0);
  v70 = v114;
  (*(v69 + 16))(v137, v134, v114);
  v129 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70);
  v71 = *(v68 + 48);
  v72 = v139;
  sub_1E16EFA40(v50, v139);
  sub_1E16EFA40(&v50[v71], v72 + *(v68 + 48));
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v124 = v141[0];
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v122 = v141[0];
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v121 = v141[0];
  swift_getKeyPath();
  v73 = v132;
  sub_1E1AF3DAC();

  v120 = *&v141[16];
  v116 = *v141;
  v118 = *&v141[40];
  v119 = *&v141[32];
  v117 = *&v141[48];
  v74 = v72;
  v75 = v70;
  v76 = v115;
  sub_1E134FD1C(v74, v115, &unk_1ECEB7E70);
  v138 = v68;
  v77 = *(v68 + 48);
  v78 = v76;
  sub_1E16EFA40(v76, v73);
  v79 = *(v69 + 48);
  if (v79(v73, 1, v75) == 1)
  {
    sub_1E1308058(v76 + v77, &qword_1ECEB75A0);
    sub_1E1308058(v73, &qword_1ECEB75A0);
    v80 = v133;
    v81 = v139;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v82 = v141[0];
    (*(v69 + 8))(v73, v75);
    sub_1E1308058(v78 + v77, &qword_1ECEB75A0);
    LODWORD(v132) = v82;
    v80 = v133;
    v81 = v139;
    if (v82 != 100)
    {
      goto LABEL_8;
    }
  }

  v83 = v109;
  sub_1E134FD1C(v81, v109, &unk_1ECEB7E70);
  v84 = v83 + *(v138 + 48);
  v85 = v83;
  v86 = v110;
  sub_1E16EFA40(v85, v110);
  if (v79(v86, 1, v75) == 1)
  {
    sub_1E1308058(v84, &qword_1ECEB75A0);
    LODWORD(v132) = 100;
    v84 = v86;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();
    v81 = v139;
    v80 = v133;

    LODWORD(v132) = v141[0];
    (*(v69 + 8))(v86, v75);
  }

  sub_1E1308058(v84, &qword_1ECEB75A0);
LABEL_8:
  v87 = v81;
  v88 = v123;
  sub_1E134FD1C(v87, v123, &unk_1ECEB7E70);
  sub_1E16EFA40(v88 + *(v138 + 48), v80);
  if (v79(v80, 1, v75) == 1)
  {
    sub_1E1308058(v88, &qword_1ECEB75A0);
    sub_1E1308058(v80, &qword_1ECEB75A0);
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v89 = v141[0];
    v90 = v80;
    v91 = *(v69 + 8);
    v91(v90, v75);
    sub_1E1308058(v88, &qword_1ECEB75A0);
    if (v89 != 100)
    {
      sub_1E1308058(v139, &unk_1ECEB7E70);
      v91(v137, v75);
      goto LABEL_15;
    }
  }

  v92 = v139;
  v93 = v111;
  sub_1E134FD1C(v139, v111, &unk_1ECEB7E70);
  v94 = v112;
  sub_1E16EFA40(v93 + *(v138 + 48), v112);
  if (v79(v94, 1, v75) == 1)
  {
    sub_1E1308058(v92, &unk_1ECEB7E70);
    (*(v69 + 8))(v137, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0);
    sub_1E1308058(v94, &qword_1ECEB75A0);
    LOBYTE(v89) = 100;
  }

  else
  {
    swift_getKeyPath();
    sub_1E1AF3DAC();

    sub_1E1308058(v92, &unk_1ECEB7E70);
    v95 = *(v69 + 8);
    v95(v137, v75);
    LOBYTE(v89) = v141[0];
    v95(v94, v75);
    sub_1E1308058(v93, &qword_1ECEB75A0);
  }

LABEL_15:
  v142[0] = v124;
  v142[1] = v122;
  v142[2] = v121;
  v143 = v140[0];
  v144 = BYTE4(v140[0]);
  v145 = v116;
  v146 = v120;
  v147 = v119;
  v148 = v118;
  v149 = v117;
  v150 = v132;
  v151 = v89;
  v152 = *v141;
  v153 = *&v141[4];
  v154 = a8;
  v155 = a9;
  v156 = a10;
  v157 = a11;
  v158 = a12;
  v159 = a13;
  v160 = v135;
  v161 = v136;
  v162 = a16;
  v163 = a17;
  v96 = v126;
  swift_beginAccess();
  v97 = *(v96 + 24);
  if (!*(v97 + 16))
  {
LABEL_19:
    v100 = v129;
    v101 = v107;
    sub_1E134FD1C(v129, v107, &unk_1ECEB7E70);
    v102 = *(v138 + 48);
    (v106)(v140, v134, v101, v101 + v102, v108, a8, a9, a10, a11, a12, a13, v135, v136, a16, a17);
    sub_1E1308058(v101 + v102, &qword_1ECEB75A0);
    sub_1E1308058(v101, &qword_1ECEB75A0);
    memcpy(v141, v140, sizeof(v141));
    swift_beginAccess();
    sub_1E141D08C(v141, v140);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = *(v96 + 24);
    *(v96 + 24) = 0x8000000000000000;
    sub_1E159C2C8(v141, v142, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v142);
    *(v96 + 24) = v140[0];
    swift_endAccess();

    sub_1E1308058(v100, &unk_1ECEB7E70);
    sub_1E1308058(v128, &unk_1ECEB7E70);
    goto LABEL_20;
  }

  v98 = sub_1E1595EB8(v142);
  if ((v99 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v141, (*(v97 + 56) + 392 * v98), sizeof(v141));
  sub_1E141D08C(v141, v140);
  sub_1E15A43AC(v142);

  sub_1E1308058(v129, &unk_1ECEB7E70);
  sub_1E1308058(v128, &unk_1ECEB7E70);

LABEL_20:
  memcpy(v131, v141, 0x188uLL);
  v104 = v130;
  sub_1E1308058(&v130[v127], &qword_1ECEB75A0);
  return sub_1E1308058(v104, &qword_1ECEB75A0);
}

uint64_t (*sub_1E18D6470(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1E18D67E8;
}

uint64_t sub_1E18D6590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v37 = a14;
  v38 = a15;
  v36 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v36 - v32;
  sub_1E134FD1C(a2, &v36 - v32, &qword_1ECEB75A0);
  sub_1E134FD1C(a3, &v33[*(v28 + 56)], &qword_1ECEB75A0);
  sub_1E134FD1C(v33, v30, &unk_1ECEB7E70);
  v34 = *(v28 + 56);
  (*(a7 + 32))(v36, v30, &v30[v34], v39, v41, a7, a8, a9, a10, a11, a12, a13, v37, v38, a16, a17);
  sub_1E1308058(v33, &unk_1ECEB7E70);
  sub_1E1308058(&v30[v34], &qword_1ECEB75A0);
  return sub_1E1308058(v30, &qword_1ECEB75A0);
}

uint64_t InAppPurchaseAction.productIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productIdentifier);

  return v1;
}

uint64_t InAppPurchaseAction.appAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId);
  a1[1] = v2;
}

uint64_t InAppPurchaseAction.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appBundleId);

  return v1;
}

uint64_t InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow);

  return v1;
}

uint64_t InAppPurchaseAction.appTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appTitle);

  return v1;
}

uint64_t InAppPurchaseAction.productTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productTitle);

  return v1;
}

uint64_t InAppPurchaseAction.additionalBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_additionalBuyParams);

  return v1;
}

char *InAppPurchaseAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v79 = a2;
  v77 = v4;
  v6 = *v4;
  v75 = v3;
  v76 = v6;
  v78 = sub_1E1AF39DC();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v71 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v71 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v71 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  v83 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v72 = v9;
  v81 = *(v9 + 8);
  v82 = v9 + 8;
  v81(v22, v8);
  if (!v25)
  {
    v65 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v66 = 0xD000000000000011;
    v66[1] = 0x80000001E1B63FB0;
    v66[2] = v76;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x1E69AB690], v65);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v83, v8);
    v27 = v77;
LABEL_12:
    swift_deallocPartialClassInstance();
    return v27;
  }

  v26 = 0x496D616441707061;
  v27 = v77;
  v28 = &v77[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productIdentifier];
  *v28 = v23;
  v28[1] = v25;
  v71 = v28;
  v29 = 0xE900000000000064;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v81(v20, v8);
  if (!v32)
  {
    v67 = v83;
    v37 = v8;
    goto LABEL_10;
  }

  v26 = 0x6C646E7542707061;
  v33 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appAdamId];
  *v33 = v30;
  v33[1] = v32;
  v29 = 0xEB00000000644965;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v36 = v35;
  v81(v17, v8);
  v37 = v8;
  if (!v36)
  {
    v67 = v83;
LABEL_10:
    v68 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v69 = v26;
    v69[1] = v29;
    v69[2] = v76;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x1E69AB690], v68);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v67, v37);

    if (v32)
    {
    }

    goto LABEL_12;
  }

  v38 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appBundleId];
  *v38 = v34;
  v38[1] = v36;
  type metadata accessor for Action();
  v39 = v83;
  sub_1E1AF381C();
  v40 = v79;
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v79);
  v42 = v81;
  v81(v14, v37);
  *&v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_installRequiredAction] = v41;
  sub_1E1AF381C();
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v14, v40);
  v42(v14, v37);
  *&v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_streamlineBuyAction] = v43;
  sub_1E1AF381C();
  v44 = sub_1E1AF37CC();
  v46 = v45;
  v42(v14, v37);
  v47 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow];
  *v47 = v44;
  v47[1] = v46;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v50 = v49;
  v42(v14, v37);
  v51 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_appTitle];
  *v51 = v48;
  v51[1] = v50;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v54 = v53;
  v42(v14, v37);
  v55 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_productTitle];
  *v55 = v52;
  v55[1] = v54;
  sub_1E1AF381C();
  v56 = sub_1E1AF37CC();
  v58 = v57;
  v42(v14, v37);
  v59 = &v27[OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseAction_additionalBuyParams];
  *v59 = v56;
  v59[1] = v58;
  v60 = v73;
  (*(v72 + 16))(v73, v39, v37);
  v61 = v74;
  v62 = v78;
  (*(v80 + 16))(v74, v40, v78);
  v63 = v75;
  v64 = Action.init(deserializing:using:)(v60, v61);
  if (!v63)
  {
    v27 = v64;
  }

  (*(v80 + 8))(v40, v62);
  v42(v39, v37);
  return v27;
}

uint64_t sub_1E18D72C0()
{
}

uint64_t InAppPurchaseAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t InAppPurchaseAction.__deallocating_deinit()
{
  InAppPurchaseAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InAppPurchaseAction()
{
  result = qword_1EE1FAC60;
  if (!qword_1EE1FAC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkableText.asMarkdownAttributedString()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 32) == 1)
  {
    v4 = objc_opt_self();

    v5 = [v4 systemFontOfSize_];
    v6 = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
    v7 = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v8 = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v28 = 10;
    *(&v28 + 1) = 0xE100000000000000;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    *&v30 = 161644770;
    *(&v30 + 1) = 0xA400000000000000;
    *&v31 = v7;
    *(&v31 + 1) = 606245;
    *&v32 = 0xE300000000000000;
    *(&v32 + 1) = v8;
    v9 = type metadata accessor for MarkdownStringGenerator();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_accumulator];
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_didParseEverything] = 1;
    v12 = objc_allocWithZone(ASKNQMLParser);
    sub_1E13E3AC8(&v28, v27);
    v13 = sub_1E1AF5DBC();

    v14 = [v12 initWithString_];

    *&v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser] = v14;
    v15 = &v10[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_configuration];
    *v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v32;
    v15[3] = v31;
    v15[4] = v18;
    v15[1] = v16;
    v15[2] = v17;
    v26.receiver = v10;
    v26.super_class = v9;
    v19 = objc_msgSendSuper2(&v26, sel_init);
    [*&v19[OBJC_IVAR____TtC11AppStoreKitP33_0487697D446A3FDD4BC6C6CDB5065BBF23MarkdownStringGenerator_parser] setDelegate_];
    v20 = sub_1E161E058();
    v22 = v21;

    sub_1E14A7E28(&v28);
    sub_1E18D7884(v20, v22, a1);
  }

  else
  {
    v24 = *(v3 + 16);
    v25 = *(v3 + 24);

    sub_1E18D7884(v24, v25, a1);
  }
}

uint64_t sub_1E18D7884@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a1;
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB028);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v126 = &v94 - v6;
  v125 = sub_1E1AEF7EC();
  v103 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0);
  MEMORY[0x1EEE9AC00](v117);
  v123 = &v94 - v8;
  v106 = sub_1E1AEFCCC();
  v102 = *(v106 - 8);
  v118 = v102;
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1E1AEF88C();
  v101 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1E1AEF86C();
  v100 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v140 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v94 - v13;
  v136 = sub_1E1AEF89C();
  v99 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB46C0);
  MEMORY[0x1EEE9AC00](v97);
  v16 = &v94 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v116 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v129 = (&v94 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v130 = (&v94 - v26);
  v111 = sub_1E1AEF91C();
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1E1AEF81C();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = (&v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = sub_1E1AEF82C();
  v105 = *(v119 - 1);
  MEMORY[0x1EEE9AC00](v119);
  v113 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E1AEF84C();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v114 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v108 = &v94 - v33;
  v147 = MEMORY[0x1E69E7CD0];
  v34 = *(v3 + 24);
  v37 = *(v34 + 64);
  v36 = v34 + 64;
  v35 = v37;
  v38 = 1 << *(*(v3 + 24) + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v41 = (v38 + 63) >> 6;
  v131 = *(v3 + 24);

  v42 = a2;

  v44 = 0;
  v139 = v16;
  v128 = v28;
  if (v40)
  {
    while (1)
    {
      v45 = v42;
      v46 = v44;
LABEL_9:
      v47 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v48 = v47 | (v46 << 6);
      v49 = (*(v131 + 48) + 16 * v48);
      v50 = *v49;
      v51 = v49[1];
      v132 = *(*(v131 + 56) + 8 * v48);
      v141 = 0x2F3A6E6F69746361;
      v142 = 0xE90000000000002FLL;

      v52 = sub_1E1AF6F1C();
      MEMORY[0x1E68FECA0](v52);

      v54 = v141;
      v53 = v142;
      v141 = v50;
      v142 = v51;

      MEMORY[0x1E68FECA0](45, 0xE100000000000000);
      MEMORY[0x1E68FECA0](v54, v53);
      sub_1E189496C(&v141, v141, v142);

      v141 = v133;
      v142 = v45;
      v145 = v50;
      v146 = v51;
      v143 = 91;
      v144 = 0xE100000000000000;
      MEMORY[0x1E68FECA0](v50, v51);
      MEMORY[0x1E68FECA0](10333, 0xE200000000000000);
      MEMORY[0x1E68FECA0](v54, v53);

      MEMORY[0x1E68FECA0](41, 0xE100000000000000);
      sub_1E13B8AA4();
      v133 = sub_1E1AF6E2C();
      v42 = v55;

      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      return result;
    }

    if (v46 >= v41)
    {
      break;
    }

    v40 = *(v36 + 8 * v46);
    ++v44;
    if (v40)
    {
      v45 = v42;
      v44 = v46;
      goto LABEL_9;
    }
  }

  (*(v105 + 104))(v113, *MEMORY[0x1E6968748], v119);
  v121[13](v120, *MEMORY[0x1E6968728], v122);
  v56 = v108;
  sub_1E1AEF83C();
  (*(v109 + 16))(v114, v56, v110);
  v57 = v118 + 56;
  v58 = *(v118 + 56);
  v59 = v106;
  v58(v129, 1, 1, v106);
  v60 = v130;
  sub_1E1AEF8EC();
  v114 = v58;
  v118 = v57;
  v61 = v112;
  v62 = *(v112 + 56);
  v63 = v111;
  v105 = v112 + 56;
  v96 = v62;
  v62(v60, 0, 1, v111);
  v64 = *(v61 + 32);
  v112 = v61 + 32;
  v95 = v64;
  v64(v128, v60, v63);
  v65 = v98;
  sub_1E1AEF8AC();
  v66 = v99;
  v67 = v136;
  (*(v99 + 16))(v139, v65, v136);
  v68 = *(v97 + 36);
  v69 = sub_1E18D8AE8(&qword_1ECEB46C8, MEMORY[0x1E69687C8]);
  sub_1E1AF665C();
  (*(v66 + 8))(v65, v67);
  v133 = (v101 + 8);
  v131 = v100 + 32;
  v132 = (v100 + 16);
  v130 = (v102 + 48);
  v121 = (v102 + 32);
  v120 = (v103 + 8);
  v119 = (v102 + 8);
  v129 = (v100 + 8);
  v70 = v104;
  v71 = v127;
  v122 = v68;
  v113 = v69;
  while (1)
  {
    v72 = v137;
    v73 = v139;
    sub_1E1AF668C();
    sub_1E18D8AE8(&qword_1ECEB46D0, MEMORY[0x1E69687B0]);
    v74 = v138;
    v75 = sub_1E1AF5DAC();
    (*v133)(v72, v74);
    if (v75)
    {
      break;
    }

    v76 = sub_1E1AF66FC();
    v77 = v135;
    (*v132)(v135);
    v76(&v141, 0);
    sub_1E1AF669C();
    v78 = v140;
    (*v131)(v140, v77, v71);
    sub_1E148D370();
    v79 = v134;
    sub_1E1AEF87C();
    if ((*v130)(v79, 1, v59) == 1)
    {
      (*v129)(v78, v71);
      sub_1E1308058(v79, &unk_1ECEB4B60);
    }

    else
    {
      (*v121)(v70, v79, v59);
      v80 = v123;
      sub_1E1AEF85C();
      v81 = v124;
      sub_1E1AEF7CC();
      sub_1E1AEF7FC();
      (*v120)(v81, v125);
      sub_1E1308058(v80, &qword_1ECEB62E0);
      v82 = sub_1E1AF5E7C();
      v83 = v147;
      v141 = v82;
      v142 = v84;
      MEMORY[0x1E68FECA0](45, 0xE100000000000000);
      sub_1E18D8AE8(&qword_1ECEB7B88, MEMORY[0x1E6968FB0]);
      v85 = sub_1E1AF742C();
      MEMORY[0x1E68FECA0](v85);

      LOBYTE(v83) = sub_1E14AACA8(v141, v142, v83);

      if (v83)
      {
        (*v119)(v70, v59);
        v86 = *v129;
        v87 = v140;
      }

      else
      {
        v88 = v140;
        sub_1E1AEF85C();
        v89 = v115;
        (v114)(v115, 1, 1, v59);
        sub_1E148D3C4();
        v90 = sub_1E1AEF94C();
        sub_1E1307FE8(v89, v116);
        sub_1E1AEF9CC();
        sub_1E1308058(v89, &unk_1ECEB4B60);
        v90(&v141, 0);
        sub_1E1308058(v80, &qword_1ECEB62E0);
        (*v119)(v70, v59);
        v86 = *v129;
        v87 = v88;
      }

      v91 = v127;
      v86(v87, v127);
      v71 = v91;
    }
  }

  sub_1E1308058(v73, &qword_1ECEB46C0);
  (*(v109 + 8))(v108, v110);

  v92 = v107;
  v93 = v111;
  v95(v107, v128, v111);
  return v96(v92, 0, 1, v93);
}

uint64_t sub_1E18D8AE8(unint64_t *a1, void (*a2)(uint64_t))
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

id AppStoreOnDeviceRecommendationsManager.__allocating_init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v5[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1E18D8BD0(_OWORD *a1)
{
  v2 = sub_1E1AF0F7C();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_1E18E018C(a1, &v40);
  sub_1E1AF38BC();
  sub_1E1308058(v42, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790);
  v39 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v9 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_1E158778C();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_1E1AF470C();
  *&v41[16] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v40);
  v14 = v13;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050);
  sub_1E18E02C4();
  v36 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E18E018C(v10, &v40);

  sub_1E18E018C(v10, &v40);

  v30 = sub_1E1AF68EC();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x1E69AB720];
  *&v40 = v30;
  sub_1E1AF57FC();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

uint64_t sub_1E18D9194(_OWORD *a1)
{
  v2 = sub_1E1AF0F7C();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_1E18E018C(a1, &v40);
  sub_1E1AF38BC();
  sub_1E1308058(v42, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6790);
  v39 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v9 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_1E158778C();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_1E1AF470C();
  *&v41[16] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v40);
  v14 = v13;
  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050);
  sub_1E18E02C4();
  v36 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_1E13006E4(0, &qword_1EE1E3430);
  sub_1E18E018C(v10, &v40);

  sub_1E18E018C(v10, &v40);

  v30 = sub_1E1AF68EC();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x1E69AB720];
  *&v40 = v30;
  sub_1E1AF57FC();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

void sub_1E18D9758(void *a1, _OWORD *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_1E1AF5C7C(), v6, v8 = sub_1E14AD4CC(v7), , v8))
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v22 = &type metadata for AppStoreAMSEngagementRequest;
    v9 = swift_allocObject();
    v21[0] = v9;
    v10 = a2[1];
    v9[1] = *a2;
    v9[2] = v10;
    *(v9 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v18);
    sub_1E1AF38BC();
    sub_1E1308058(v21, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v18[0] = v8;

    sub_1E1AF38BC();
    sub_1E1308058(v18, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v18[0] = v8;
    sub_1E1AF586C();
  }

  else
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    sub_1E1300B24(qword_1EE215EE0, v21);
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v20[3] = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v20[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v18);
    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v13 = [a1 data];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E1AF5C7C();

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    }

    else
    {
      v15 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v15;
    v19 = v13;
    sub_1E1AF38BC();
    sub_1E1308058(v18, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1E18E0358();
    v16 = swift_allocError();
    *v17 = 1;
    sub_1E1AF584C();
  }
}

void sub_1E18D9D30(void *a1, _OWORD *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_1E1AF5C7C(), v6, v8 = sub_1E14AD4CC(v7), , v8))
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v22 = &type metadata for AppStoreAMSEngagementRequest;
    v9 = swift_allocObject();
    v21[0] = v9;
    v10 = a2[1];
    v9[1] = *a2;
    v9[2] = v10;
    *(v9 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v18);
    sub_1E1AF38BC();
    sub_1E1308058(v21, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v18[0] = v8;

    sub_1E1AF38BC();
    sub_1E1308058(v18, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v18[0] = v8;
    sub_1E1AF586C();
  }

  else
  {
    if (qword_1EE1E7420 != -1)
    {
      swift_once();
    }

    sub_1E1300B24(qword_1EE216538, v21);
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v20[3] = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v20[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_1E18E018C(a2, v18);
    sub_1E1AF38BC();
    sub_1E1308058(v20, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v13 = [a1 data];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E1AF5C7C();

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    }

    else
    {
      v15 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v15;
    v19 = v13;
    sub_1E1AF38BC();
    sub_1E1308058(v18, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1E18E0358();
    v16 = swift_allocError();
    *v17 = 1;
    sub_1E1AF584C();
  }
}

void sub_1E18DA308(void *a1, _OWORD *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_1E18E018C(a2, v12);
  sub_1E1AF38BC();
  sub_1E1308058(v13, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v12, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E18E0358();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_1E1AF584C();
}

void sub_1E18DA65C(void *a1, _OWORD *a2)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E7420 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216538, qword_1EE216550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_1E18E018C(a2, v12);
  sub_1E1AF38BC();
  sub_1E1308058(v13, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v12, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E18E0358();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_1E1AF584C();
}

uint64_t sub_1E18DA9B0()
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
  qword_1EE215EF8 = sub_1E1AF591C();
  unk_1EE215F00 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE215EE0);
  return sub_1E1AF590C();
}

id AppStoreOnDeviceRecommendationsManager.init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC11AppStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1E18DABB0(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF0F7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = *a1;
  if (v15 <= 3)
  {
    if (*a1 > 1u)
    {
      v61 = v3;
      v62 = v4;
    }

    else
    {
      if (!*a1)
      {
LABEL_13:
      }

      v61 = v3;
      v62 = v4;
    }
  }

  else
  {
    v61 = v3;
    v62 = v4;
  }

  v16 = 0x7265666E69;
  v17 = sub_1E1AF74AC();

  if (v17)
  {
    return result;
  }

  if (v15 == 1)
  {
    goto LABEL_13;
  }

  v19 = sub_1E1AF74AC();

  if (v19)
  {
    return result;
  }

  if (v15 >= 8)
  {
    goto LABEL_13;
  }

  v20 = sub_1E1AF74AC();

  if (v20)
  {
    return result;
  }

  v60 = v1;
  if (qword_1EE1E2EE8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  (*(v12 + 8))(v14, v11);
  if (v70 != 1)
  {
    if (qword_1EE1E0ED0 == -1)
    {
LABEL_24:
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v21 = sub_1E1AF594C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_1E1308058(v10, &qword_1ECEBBA70);
    if (qword_1EE1E0ED0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v23 = sub_1E1AF593C();
  (*(v22 + 8))(v10, v21);
  if ([v23 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v24 = v62;
  v70 = v66;
  v71 = v67;
  if (!*(&v67 + 1))
  {
    sub_1E1308058(&v70, &qword_1ECEB2DF0);
LABEL_36:
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0 || v69 != 1)
  {
    goto LABEL_36;
  }

  v25 = [v23 ams_DSID];
  if (!v25)
  {
    if (qword_1EE1E0ED0 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 == 6)
        {
          v35 = 0xE700000000000000;
          v16 = 0x73657461647075;
        }

        else
        {
          v35 = 0xE600000000000000;
          v16 = 0x656461637261;
        }
      }

      else if (v15 == 4)
      {
        v35 = 0xE500000000000000;
        v16 = 0x73656D6167;
      }

      else
      {
        v35 = 0xE600000000000000;
        v16 = 0x686372616573;
      }
    }

    else if (v15 > 1)
    {
      if (v15 == 2)
      {
        v35 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v35 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    *(&v71 + 1) = MEMORY[0x1E69E6158];
    *&v70 = v16;
    *(&v70 + 1) = v35;
    sub_1E1AF38BC();
    sub_1E1308058(&v70, &qword_1ECEB2DF0);
    sub_1E1AF382C();
LABEL_39:
    sub_1E1AF548C();
  }

  v26 = v25;
  v27 = [v25 stringValue];

  v28 = sub_1E1AF5DFC();
  v30 = v29;

  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v31 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v58 = v23;
  if (v15 > 3)
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v34 = 0xE700000000000000;
        v16 = 0x73657461647075;
      }

      else
      {
        v34 = 0xE600000000000000;
        v16 = 0x656461637261;
      }
    }

    else if (v15 == 4)
    {
      v34 = 0xE500000000000000;
      v16 = 0x73656D6167;
    }

    else
    {
      v34 = 0xE600000000000000;
      v16 = 0x686372616573;
    }
  }

  else
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v34 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v34 = 0xE500000000000000;
    }
  }

  *&v70 = v16;
  *(&v70 + 1) = v34;
  *&v71 = v28;
  *(&v71 + 1) = v33;
  v72 = 0;
  v73 = 0;
  v56 = v33;

  v57 = sub_1E18D8BD0(&v70);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = *(v24 + 16);
  v36 = v63;
  v54(v63, v65, v32);
  v37 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v59 = v37 + v5;
  v52 = v28;
  v53 = (v37 + v5) & 0xFFFFFFFFFFFFFFF8;
  v60 = v53 + 8;
  v62 = v24;
  v38 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v51 = *(v24 + 32);
  v51(v40 + v37, v36);
  v41 = v60;
  *(v40 + v59) = v15;
  *(v40 + v41) = v55;
  v42 = (v40 + v38);
  v43 = v56;
  *v42 = v52;
  v42[1] = v43;
  v45 = ObjectType;
  v44 = v65;
  *(v40 + v39) = ObjectType;
  v54(v36, v44, v32);
  v46 = swift_allocObject();
  (v51)(v46 + v37, v36, v32);
  v47 = v60;
  *(v46 + v59) = v15;
  *(v46 + v47) = v45;
  v48 = sub_1E13006E4(0, &qword_1EE1E3430);
  v49 = sub_1E1AF68EC();
  *(&v67 + 1) = v48;
  v68 = MEMORY[0x1E69AB720];
  *&v66 = v49;
  sub_1E1AF57FC();

  (*(v62 + 8))(v65, v32);
  return __swift_destroy_boxed_opaque_existential_1(&v66);
}

void sub_1E18DBC0C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (*(v7 + 16))
  {
    v9 = sub_1E13018F8(0x7365736143657375, 0xE800000000000000);
    if (v10)
    {
      sub_1E137A5C4(*(v7 + 56) + 32 * v9, &v24);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
      if (swift_dynamicCast())
      {
        v12 = v23[0];
        if (qword_1EE1E0ED0 != -1)
        {
          swift_once();
        }

        __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B05090;
        sub_1E1AF382C();
        if (a3 <= 3u)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              v13 = 0xE500000000000000;
              v14 = 0x7961646F74;
            }

            else
            {
              v13 = 0xE400000000000000;
              v14 = 1936748641;
            }
          }

          else if (a3)
          {
            v13 = 0xE800000000000000;
            v14 = 0x64657463656C6573;
          }

          else
          {
            v13 = 0xE500000000000000;
            v14 = 0x7265666E69;
          }
        }

        else if (a3 <= 5u)
        {
          if (a3 == 4)
          {
            v13 = 0xE500000000000000;
            v14 = 0x73656D6167;
          }

          else
          {
            v13 = 0xE600000000000000;
            v14 = 0x686372616573;
          }
        }

        else if (a3 == 6)
        {
          v13 = 0xE700000000000000;
          v14 = 0x73657461647075;
        }

        else if (a3 == 7)
        {
          v13 = 0xE600000000000000;
          v14 = 0x656461637261;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x676E6964616F6CLL;
        }

        v26 = MEMORY[0x1E69E6158];
        *&v24 = v14;
        *(&v24 + 1) = v13;
        sub_1E1AF38BC();
        sub_1E1308058(&v24, &qword_1ECEB2DF0);
        sub_1E1AF382C();
        v26 = v11;
        *&v24 = v12;

        sub_1E1AF38BC();
        sub_1E1308058(&v24, &qword_1ECEB2DF0);
        sub_1E1AF548C();

        v15 = *(v12 + 16);
        if (v15)
        {
          swift_beginAccess();
          v16 = (v12 + 40);
          do
          {
            v18 = *(v16 - 1);
            v19 = *v16;
            __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
            *(swift_allocObject() + 16) = xmmword_1E1B02CD0;

            sub_1E1AF382C();
            v23[3] = MEMORY[0x1E69E6158];
            v23[0] = v18;
            v23[1] = v19;

            sub_1E1AF38BC();
            sub_1E1308058(v23, &qword_1ECEB2DF0);
            sub_1E1AF548C();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v17 = Strong;
              *&v24 = v18;
              *(&v24 + 1) = v19;
              v25 = a5;
              v26 = a6;
              v27 = 0;
              v28 = 32;

              sub_1E18D8BD0(&v24);
            }

            else
            {
            }

            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }
    }
  }
}

void sub_1E18DC158(uint64_t *a1)
{
  v3 = *(sub_1E1AF0F7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v5);

  sub_1E18DBC0C(a1, v1 + v4, v10, v7, v8, v9);
}

uint64_t sub_1E18DC214(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v4 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (qword_1EE1E0ED0 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 0xE500000000000000;
        v6 = 0x7961646F74;
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1936748641;
      }
    }

    else if (a3)
    {
      v5 = 0xE800000000000000;
      v6 = 0x64657463656C6573;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x7265666E69;
    }
  }

  else if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      v5 = 0xE500000000000000;
      v6 = 0x73656D6167;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x686372616573;
    }
  }

  else if (a3 == 6)
  {
    v5 = 0xE700000000000000;
    v6 = 0x73657461647075;
  }

  else if (a3 == 7)
  {
    v5 = 0xE600000000000000;
    v6 = 0x656461637261;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E6964616F6CLL;
  }

  v11 = MEMORY[0x1E69E6158];
  v10[0] = v6;
  v10[1] = v5;
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E1308058(v10, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

uint64_t sub_1E18DC580(uint64_t a1)
{
  v3 = *(sub_1E1AF0F7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_1E18DC214(a1, v1 + v4, v5);
}

uint64_t sub_1E18DC620(uint64_t a1)
{
  v36 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v11, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v12 = sub_1E1AF0F8C();
  v13 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v12, v13, v16, "RecommendationPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x1E6901640](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_1E1AF0FEC();
  swift_allocObject();
  v33 = sub_1E1AF0FDC();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v34 = v19;
  v20(v10, v1);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v21 = sub_1E1AF0F8C();
  v22 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v23 = swift_slowAlloc();
    v32 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v21, v22, v25, "Recommendation", "", v24, 2u);
    v26 = v24;
    v1 = v32;
    MEMORY[0x1E6901640](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_1E1AF0FDC();
  v20(v4, v1);
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v28 = sub_1E1AF6D4C();
  MEMORY[0x1EEE9AC00](v28);
  *(&v32 - 6) = v33;
  *(&v32 - 5) = v27;
  v29 = v37;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v29;
  *(&v32 - 2) = ObjectType;
  v30 = sub_1E1AF6D5C();

  return v30;
}

void *sub_1E18DC9F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v62 = a6;
  v55 = a5;
  v63 = a4;
  v67 = a3;
  v68 = a2;
  v66 = a1;
  v60 = sub_1E1AF0FBC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF0F7C();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E1AF5AAC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v54 - v13;
  v14 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  sub_1E1AF490C();
  v65 = MEMORY[0x1E68FD610]();
  if (v65)
  {
    v24 = v64;
    sub_1E1AF6C0C();
    v25 = v24;
    if (v24)
    {
      v64 = 0;
      if (qword_1EE1E0ED0 != -1)
      {
        swift_once();
      }

      v63 = unk_1EE215F00;
      v60 = __swift_project_boxed_opaque_existential_1Tm(qword_1EE215EE0, qword_1EE215EF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      *&v70[8] = MEMORY[0x1E69E6158];
      *&v69 = 0xD000000000000043;
      *(&v69 + 1) = 0x80000001E1B7CF80;
      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0);
      swift_getErrorValue();
      v26 = v71;
      v27 = v72;
      *&v70[8] = v72;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v69);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_0, v26, v27);
      sub_1E1AF38BC();
      sub_1E1308058(&v69, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      v53 = swift_allocObject();
      v29 = v67;
      v53[2] = v65;
      v53[3] = v29;
      v30 = v62;
      v53[4] = v24;
      v53[5] = v30;
      v31 = v66;

      v32 = v24;
      v33 = v61;
      v34 = v64;
      sub_1E1AF5A8C();
      if (v34)
      {
      }

      else
      {
        v53 = sub_1E1AF5A9C();

        (*(v56 + 8))(v33, v57);
      }
    }

    else
    {
      (*(v18 + 16))(v20, v23, v17);
      sub_1E1AF39CC();
      AppStoreAMSEngagementRequest.init(deserializing:using:)(v20, v16, &v69);
      (*(v18 + 8))(v23, v17);
      v73 = v69;
      v74[0] = *v70;
      *(v74 + 9) = *&v70[9];
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v47 = swift_allocObject();
      v48 = v74[0];
      *(v47 + 16) = v73;
      *(v47 + 32) = v48;
      *(v47 + 41) = *(v74 + 9);
      *(v47 + 64) = v65;
      *(v47 + 72) = v46;
      v49 = v55;
      *(v47 + 80) = v67;
      *(v47 + 88) = v49;
      v50 = v66;

      v51 = v49;
      v52 = v54;
      sub_1E1AF5A8C();
      v53 = sub_1E1AF5A9C();

      (*(v56 + 8))(v52, v57);
    }
  }

  else
  {
    v66 = v10;
    v35 = v59;
    v36 = v60;
    v37 = v58;
    v38 = v8;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v39 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v39, qword_1EE1F7BE8);
    v40 = sub_1E1AF0F8C();
    v41 = v66;
    sub_1E1AF0FCC();
    LODWORD(v65) = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v35 + 88))(v7, v36) == *MEMORY[0x1E69E93E8])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v7, v36);
        v42 = "";
      }

      v41 = v66;
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v40, v65, v44, "Recommendation", v42, v43, 2u);
      MEMORY[0x1E6901640](v43, -1, -1);
    }

    (*(v37 + 8))(v41, v38);
    v53 = sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  sub_1E18DD378();
  return v53;
}

uint64_t sub_1E18DD378()
{
  v0 = sub_1E1AF0FBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v8, qword_1EE1F7BE8);
  v9 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v10 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v9, v10, v13, "RecommendationPromise", v11, v12, 2u);
    MEMORY[0x1E6901640](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E18DD604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v20[0] = a7;
  v20[1] = a4;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a6;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20[0];

  v18 = a6;
  sub_1E1AF48FC();
}

void sub_1E18DD794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v3 = sub_1E1AF0FBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF0F7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v11, qword_1EE1F7BE8);
  v12 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v13 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "success=false";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v12, v13, v16, "Recommendation", v14, v15, 2u);
    MEMORY[0x1E6901640](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;
  v19[6] = 0;
  v19[7] = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000012, 0x80000001E1B7D0D0);
  MEMORY[0x1E68FECA0](0xD000000000000035, 0x80000001E1B7D0F0);
  v19[11] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](46, 0xE100000000000000);
  *(v17 + 56) = sub_1E1AF56FC();
  __swift_allocate_boxed_opaque_existential_0((v17 + 32));
  sub_1E1AF569C();
  v18 = sub_1E1AF363C();
}

uint64_t sub_1E18DDCF8(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t))
{
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v51 = a3;
  v52 = a1;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v13;
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF48CC();
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a4 + 40) & 0xE0) == 0x40 && (*(a4 + 40) & 1) == 0)
  {
    v21 = *(v12 + 16);
    v45 = v17;
    v46 = v16;
    v21(v14, v51, v11, v18);
    v22 = *(v12 + 80);
    v47 = a8;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v48 = a2;
    v49 = v12;
    v25 = v54;
    *(v24 + 16) = v53;
    *(v24 + 24) = v25;
    (*(v49 + 32))(v24 + v23, v14, v11);
    a2 = v48;

    sub_1E1AF48DC();
    v12 = v49;

    (*(v45 + 8))(v20, v46);
  }

  v26 = sub_1E18D8BD0(a4);
  v48 = *(v12 + 16);
  v49 = v26;
  v27 = v14;
  v48(v14, a2, v11);
  v28 = *(v12 + 80);
  v29 = v50;
  v30 = swift_allocObject();
  v32 = v52;
  v31 = v53;
  *(v30 + 2) = v55;
  *(v30 + 3) = v31;
  v33 = v54;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  v47 = *(v12 + 32);
  v47(&v30[(v28 + 48) & ~v28], v27, v11);
  v48(v27, v51, v11);
  v34 = (v28 + 40) & ~v28;
  v35 = (v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v54;
  v38 = v53;
  *(v36 + 2) = v55;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  v47(&v36[v34], v27, v11);
  v39 = v52;
  *&v36[v35] = v52;
  v40 = sub_1E13006E4(0, &qword_1EE1E3430);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v41 = v39;
  v42 = sub_1E1AF68EC();
  v56[3] = v40;
  v56[4] = MEMORY[0x1E69AB720];
  v56[0] = v42;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

void sub_1E18DE110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF0FBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v14, qword_1EE1F7BE8);
    v15 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    v16 = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v16, v19, "Recommendation", v17, v18, 2u);
      MEMORY[0x1E6901640](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E1B02CC0;
    *(v20 + 56) = sub_1E1AF56FC();
    __swift_allocate_boxed_opaque_existential_0((v20 + 32));
    sub_1E1AF569C();
    v21 = sub_1E1AF363C();
  }
}

uint64_t sub_1E18DE744(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  v11 = sub_1E1AF364C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = *a1;
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11, v14);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = v15;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v18 = a4;

  sub_1E1AF48FC();
}

void sub_1E18DE8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_1E1AF0FBC();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = sub_1E1AF0F7C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    __swift_project_value_buffer(v21, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v39 = v17;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v44 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v22 = sub_1E1AF755C();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:a3];
    swift_unknownObjectRelease();
    if (v23)
    {
      v40 = v9;
      if (qword_1EE1F7BE0 != -1)
      {
        swift_once();
      }

      v24 = sub_1E1AF0FAC();
      v37[1] = __swift_project_value_buffer(v24, qword_1EE1F7BE8);
      v25 = sub_1E1AF0F8C();
      sub_1E1AF0FCC();
      v26 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        sub_1E1AF0FFC();
        v38 = a4;

        v27 = v42;
        v28 = v40;
        v29 = v14;
        if ((*(v42 + 88))(v13, v40) == *MEMORY[0x1E69E93E8])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v27 + 8))(v13, v28);
          v30 = "success=true";
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v25, v26, v32, "Recommendation", v30, v31, 2u);
        MEMORY[0x1E6901640](v31, -1, -1);
        v14 = v29;
      }

      v33 = *(v15 + 8);
      v38 = v15 + 8;
      v33(v20, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1E1B02CC0;
      *(v34 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
      *(v34 + 32) = v23;
      v35 = v23;
      v36 = sub_1E1AF363C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E18DF10C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v22[1] = a2;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a5, v10, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a1;
  v18 = v22[0];
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22[0];

  v19 = a1;
  v20 = v18;
  sub_1E1AF48FC();
}

void sub_1E18DF2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_1E1AF0FBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF0F7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_1EE1F7BE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF0FAC();
    __swift_project_value_buffer(v17, qword_1EE1F7BE8);
    v18 = sub_1E1AF0F8C();
    sub_1E1AF0FCC();
    v19 = sub_1E1AF6A0C();
    if (sub_1E1AF6D6C())
    {

      sub_1E1AF0FFC();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x1E69E93E8])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v18, v19, v22, "Recommendation", v20, v21, 2u);
      MEMORY[0x1E6901640](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E1B02CC0;
    v24 = sub_1E13006E4(0, &qword_1EE1E32A8);
    v25 = MEMORY[0x1E68FF960](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_1E1AF363C();
  }
}

void sub_1E18DF920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v3 = sub_1E1AF594C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &qword_1ECEBBA70);
  }

  else
  {
    v5 = sub_1E1AF593C();
    (*(v4 + 8))(v2, v3);
    v6 = [v5 ams_DSID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];

      v9 = sub_1E1AF5DFC();
      v11 = v10;

      *&v12 = v9;
      *(&v12 + 1) = v11;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0x80;
      sub_1E18D8BD0(&v12);
    }
  }
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreOnDeviceRecommendationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E18DFCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = a2;
  v8 = a6 >> 5;
  v9 = v8 >= 3;
  v10 = v8 - 3;
  if (!v9)
  {
  }

  if (v10 < 2)
  {
  }

  return result;
}

uint64_t sub_1E18DFD80(uint64_t *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1E18DE744(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E18DFDF8(void *a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E18DF10C(a1, v5, v6, v7, v1 + v4, v8);
}

void sub_1E18DFE9C()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1E18DE110(v2, v3, v4);
}

void sub_1E18DFF00()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_1E18DF2A4(v6, v7, v0 + v2, v4, v5);
}

uint64_t objectdestroy_24Tm_0(void (*a1)(void))
{
  v3 = sub_1E1AF364C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);

  a1(*(v1 + 24));

  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

void sub_1E18E0088()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1E18DE8C8(v2, v3, v4, v5, v6);
}

void sub_1E18E00F0()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E18DD794(v3, v0 + v2, v4);
}

uint64_t sub_1E18E01E8(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB050);
  v6 = *(v5 + *a3);
  sub_1E14C65A8(v4);
  v7 = sub_1E1AF5C6C();

  v8 = [v6 enqueueData_];

  return sub_1E1AF587C();
}

unint64_t sub_1E18E02C4()
{
  result = qword_1EE1E35F8;
  if (!qword_1EE1E35F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E35F8);
  }

  return result;
}

unint64_t sub_1E18E0358()
{
  result = qword_1EE1D43D0;
  if (!qword_1EE1D43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D43D0);
  }

  return result;
}

uint64_t sub_1E18E03E8(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E1AF0F7C() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return a2(v7, v2 + 16, v2 + v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_1E1AF0F7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  sub_1E18DFCF8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E18E0598(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E1AF0F7C() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + 16, v2 + v5, v6);
}

uint64_t LinkableText.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LinkableText.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t LinkableText.__allocating_init(id:text:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E134FD1C(a1, v14, &unk_1ECEB5670);
  type metadata accessor for StyledText();
  v8 = swift_allocObject();
  *(v8 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
  v9 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
  v10 = sub_1E1AEF91C();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = (v8 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
  *v11 = 0;
  v11[1] = 0;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = 0;
  v12 = swift_allocObject();
  LinkableText.init(id:styledText:linkedSubstrings:)(v14, v8, a4);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v12;
}

uint64_t LinkableText.__allocating_init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E134FD1C(a1, &v17, &unk_1ECEB5670);
  if (*(&v18 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v17, &unk_1ECEB5670);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t LinkableText.init(id:styledText:linkedSubstrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v18, &unk_1ECEB5670);
  if (*(&v19 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670);
    sub_1E1308058(&v18, &unk_1ECEB5670);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t LinkableText.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = v2;
  v67 = a2;
  v57 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v7 = sub_1E1AF40DC();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E1AF39DC();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEFEAC();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v58 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v64 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v63 = v15;
  if (v22)
  {
    v68 = v21;
    v69 = v22;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v11;
    v28 = v14;
    v29 = v7;
    v30 = v9;
    v32 = v31;
    v65[1](v13, v27);
    v68 = v26;
    v69 = v32;
    v9 = v30;
    v7 = v29;
    v14 = v28;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v65 = v23;
  (v23)(v24, v25);
  v33 = v71;
  v34 = v66;
  *(v66 + 2) = v70;
  *(v34 + 3) = v33;
  v34[8] = v72;
  type metadata accessor for StyledText();
  v35 = v64;
  sub_1E1AF381C();
  v36 = v67;
  (*(v9 + 2))(v62, v67, v73);
  sub_1E18E16D0(&qword_1EE1F7BC0, 255, type metadata accessor for StyledText);
  sub_1E1AF464C();
  v37 = v70;
  if (!v70)
  {
    v45 = sub_1E1AF5A7C();
    sub_1E18E16D0(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 0x655464656C797473;
    v47 = v57;
    v46[1] = 0xEA00000000007478;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    (v65)(v35, v14);
    sub_1E134B88C((v34 + 4));
    swift_deallocPartialClassInstance();
    (*(v9 + 1))(v36, v73);
    return v34;
  }

  v62 = v9;
  v38 = v58;
  sub_1E1AF381C();
  v39 = v59;
  sub_1E1AF368C();
  v40 = v38;
  v41 = v65;
  (v65)(v40, v14);
  v42 = v60;
  if ((*(v60 + 48))(v39, 1, v7) == 1)
  {
    sub_1E1308058(v39, &qword_1ECEB2B28);
    v43 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
    (v41)(v35, v14);
    v44 = v67;
LABEL_10:
    v34[2] = v37;
    v34[3] = v43;
    (*(v62 + 1))(v44, v73);
    return v34;
  }

  v63 = v14;
  v48 = v39;
  v49 = v56;
  v50 = (*(v42 + 32))(v56, v48, v7);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v42;
  v59 = v7;
  v44 = v67;
  *(&v55 - 2) = v67;
  type metadata accessor for Action();
  v52 = v61;
  v53 = sub_1E1AF40AC();
  if (!v52)
  {
    v43 = v53;
    (v65)(v35, v63);
    (*(v51 + 8))(v49, v59);
    v34 = v66;
    goto LABEL_10;
  }

  sub_1E134B88C((v66 + 4));
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E18E136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  type metadata accessor for Action();
  v15 = static Action.makeInstance(byDeserializing:using:)(a3, a4);
  if (v5)
  {
    sub_1E1AF397C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
    sub_1E1AF39FC();
    (*(v12 + 8))(v14, v11);
    sub_1E134FD1C(v19, v17, &qword_1ECEB43C8);
    if (v18)
    {
      __swift_project_boxed_opaque_existential_1Tm(v17, v18);
      type metadata accessor for LinkableText();
      sub_1E1AF4EBC();

      sub_1E1308058(v19, &qword_1ECEB43C8);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_1E1308058(v19, &qword_1ECEB43C8);

      result = sub_1E1308058(v17, &qword_1ECEB43C8);
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    *a5 = a1;
    a5[1] = a2;
    a5[2] = v15;
  }

  return result;
}

uint64_t LinkableText.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t LinkableText.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18E1604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = LinkableText.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18E16D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.init(text:hyphenationFactor:)(Swift::String text, Swift::Float hyphenationFactor)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  *&v4 = hyphenationFactor;
  [v3 setHyphenationFactor_];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_1E1AF5DBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  *(inited + 64) = sub_1E18E1908();
  *(inited + 40) = v3;
  v9 = v8;
  v10 = v3;
  sub_1E159D27C(inited);
  swift_setDeallocating();
  sub_1E16FAC1C(inited + 32);
  type metadata accessor for Key(0);
  sub_1E16FAC84();
  v11 = sub_1E1AF5C6C();

  v12 = [v5 initWithString:v6 attributes:v11];

  return v12;
}

unint64_t sub_1E18E1908()
{
  result = qword_1EE1E3380;
  if (!qword_1EE1E3380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3380);
  }

  return result;
}

uint64_t LockupMediaLayout.DisplayType.numberOfViews.getter()
{
  v1 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E18E21A8(v0, v3, type metadata accessor for LockupMediaLayout.DisplayType);
  v4 = sub_1E1AF127C();
  LODWORD(result) = (*(*(v4 - 8) + 48))(v3, 6, v4);
  if (result <= 2)
  {
    if (!result)
    {
      sub_1E18E1A94(v3);
      return 1;
    }

    if (result != 1)
    {
      return 2;
    }

    return 1;
  }

  if (result > 4)
  {
    return result == 5;
  }

  if (result == 3)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1E18E1A94(uint64_t a1)
{
  v2 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockupMediaLayout.init(metrics:mediaViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LockupMediaLayout(0);
  result = sub_1E18E1CB8(a1, a3 + *(v6 + 20), type metadata accessor for LockupMediaLayout.Metrics);
  *a3 = a2;
  return result;
}

uint64_t LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v11 = v10[7];
  v12 = sub_1E1AF127C();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a5 + v11, 1, 1, v12);
  sub_1E1308EC0(a1, a5);
  sub_1E18E1CB8(a2, a5 + v10[5], type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v13 + 32))(a5 + v10[6], a3, v12);

  return sub_1E144E7D4(a4, a5 + v11);
}

uint64_t sub_1E18E1CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.interItemSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t LockupMediaLayout.Metrics.displayType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);

  return sub_1E18E1E10(a1, v3);
}

uint64_t sub_1E18E1E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_1E17789F0(v3, a1);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_1E144E7D4(a1, v3);
}

uint64_t sub_1E18E21A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.measurements(fitting:in:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LockupMediaLayout(0) + 20));

  return _s11AppStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v3, a1);
}

void LockupMediaLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v71 = a1;
  v57[3] = a2;
  v12 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E1AF745C();
  v14 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v57 - v17;
  v19 = sub_1E1AF127C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v57 - v24;
  v26 = (v7 + *(type metadata accessor for LockupMediaLayout(0) + 20));
  v63 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_1E17789F0(v26 + *(v63 + 28), v18);
  v27 = *(v20 + 48);
  v62 = v20 + 48;
  v61 = v27;
  if (v27(v18, 1, v19) == 1)
  {
    sub_1E18E2FA8(v18);
    v28 = a5;
    v29 = a6;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v31 = v30;
    sub_1E1AF121C();
    if (v32 >= v31)
    {
      sub_1E1AF123C();
      v29 = v34;
      v28 = a5;
    }

    else
    {
      sub_1E1AF122C();
      v28 = v33;
      v29 = a6;
    }

    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
  }

  v36 = [v71 traitCollection];
  *&v57[2] = v28;
  *&v57[1] = v29;
  v37 = _s11AppStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(v26, v36, v28, v29);
  v69 = v38;

  v39 = 0;
  v40 = *v7;
  v66 = *(*v7 + 16);
  v59 = v40;
  v58 = v40 + 32;
  v60 = (v14 + 8);
  *&v57[7] = v37 * 4.0;
  *&v57[6] = v37 * 3.0;
  *&v57[5] = v37 + v37;
  *&v57[4] = v37 * 0.5;
  while (1)
  {
    v41 = 0uLL;
    v42 = v66;
    v43 = 0uLL;
    v44 = 0uLL;
    if (v39 == v66)
    {
      goto LABEL_13;
    }

    if (v39 >= *(v59 + 16))
    {
      break;
    }

    v42 = v39 + 1;
    *&v72 = v39;
    sub_1E1300B24(v58 + 40 * v39, &v72 + 8);
    v41 = v72;
    v43 = v73;
    v44 = v74;
LABEL_13:
    v75[0] = v41;
    v75[1] = v43;
    v75[2] = v44;
    if (!v44)
    {
      sub_1E1AF106C();
      return;
    }

    v39 = v42;
    v68 = v41;
    v45 = v19;
    sub_1E1308EC0((v75 + 8), &v72);
    v70 = __swift_project_boxed_opaque_existential_1Tm(&v72, *(&v73 + 1));
    __swift_project_boxed_opaque_existential_1Tm(v26, v26[3]);
    v46 = v64;
    sub_1E13BC274();
    v47 = v71;
    sub_1E1AF12DC();
    (*v60)(v46, v65);
    v48 = [v47 traitCollection];
    v49 = [v48 horizontalSizeClass];

    if (v49 == 1)
    {
      v76.origin.x = a3;
      v76.origin.y = a4;
      v76.size.width = a5;
      v76.size.height = a6;
      v50 = v69 < CGRectGetHeight(v76);
    }

    else
    {
      v50 = 0;
    }

    v19 = v45;
    v51 = v67;
    sub_1E18E21A8(v26 + *(v63 + 20), v67, type metadata accessor for LockupMediaLayout.DisplayType);
    v52 = v61(v51, 6, v45);
    if (v52 <= 2)
    {
      v53 = a3;
      v54 = a4;
      v55 = a5;
      v56 = a6;
      if (!v52)
      {
        CGRectGetWidth(*&v53);
        sub_1E18E1A94(v67);
        goto LABEL_9;
      }

      if (v52 == 1)
      {
        CGRectGetMidX(*&v53);
        if (!v50)
        {
          goto LABEL_9;
        }

LABEL_27:
        v78.origin.x = a3;
        v78.origin.y = a4;
        v78.size.width = a5;
        v78.size.height = a6;
        CGRectGetHeight(v78);
        goto LABEL_9;
      }

LABEL_26:
      CGRectGetWidth(*&v53);
      if (!v50)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (v52 <= 4)
    {
      v53 = a3;
      v54 = a4;
      v55 = a5;
      v56 = a6;
      goto LABEL_26;
    }

    if (v52 == 5)
    {
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = a6;
      CGRectGetWidth(v77);
    }

LABEL_9:
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v72);
  }

  __break(1u);
}

uint64_t _s11AppStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2)
{
  v41 = a2;
  v42 = sub_1E1AF745C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_1E1AF127C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_1E17789F0(a1 + *(v23 + 28), v11);
  v24 = *(v13 + 48);
  if (v24(v11, 1, v12) == 1)
  {
    sub_1E18E2FA8(v11);
    v25 = *(v23 + 20);
    sub_1E18E21A8(a1 + v25, v8, type metadata accessor for LockupMediaLayout.DisplayType);
    result = v24(v8, 6, v12);
    if (result > 4)
    {
      if (result != 5)
      {
        return result;
      }

      return sub_1E1AF123C();
    }

    if ((result - 1) < 4)
    {
      v27 = a1 + v25;
      v28 = v38;
      sub_1E18E21A8(v27, v38, type metadata accessor for LockupMediaLayout.DisplayType);
      v29 = v24(v28, 6, v12);
      if (v29 <= 2 && !v29)
      {
        sub_1E18E1A94(v28);
      }

      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      v34 = v39;
      sub_1E13BC274();
      sub_1E1AF12DC();
      (*(v40 + 8))(v34, v42);
      return sub_1E1AF123C();
    }

    v22 = v36;
    (*(v13 + 32))(v36, v8, v12);
    v19 = v37;
  }

  else
  {
    (*(v13 + 32))(v22, v11, v12);
  }

  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_1E1AF121C();
  v31 = v30;
  sub_1E1AF121C();
  if (v32 >= v31)
  {
    sub_1E1AF123C();
  }

  else
  {
    sub_1E1AF122C();
  }

  v33 = *(v13 + 8);
  v33(v19, v12);
  return (v33)(v22, v12);
}

uint64_t sub_1E18E2FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s11AppStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v47 = a2;
  v7 = sub_1E1AF127C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);
  sub_1E18E21A8(a1 + v22, v21, type metadata accessor for LockupMediaLayout.DisplayType);
  v46 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v21, 6, v7);
  if (v24 > 4)
  {
    v27 = 0.0;
    if (v24 != 5)
    {
      return v27;
    }

    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v29 = v28;
    sub_1E1AF121C();
    if (v30 >= v29)
    {
      sub_1E1AF123C();
    }

    else
    {
      sub_1E1AF122C();
      a3 = v31;
    }

    (*(v46 + 8))(v15, v7);
    return a3;
  }

  if ((v24 - 1) >= 4)
  {
    v32 = v46;
    (*(v46 + 32))(v12, v21, v7);
    v33 = v45;
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v35 = v34;
    sub_1E1AF121C();
    if (v36 >= v35)
    {
      sub_1E1AF123C();
    }

    else
    {
      sub_1E1AF122C();
      a3 = v37;
    }

    v42 = *(v32 + 8);
    v42(v33, v7);
    v42(v12, v7);
    return a3;
  }

  sub_1E18E21A8(a1 + v22, v18, type metadata accessor for LockupMediaLayout.DisplayType);
  v25 = v23(v18, 6, v7);
  if (v25 > 2)
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 4.0;
      if (v25 == 3)
      {
        v26 = 3.0;
      }
    }

    goto LABEL_20;
  }

  if (!v25)
  {
    sub_1E18E1A94(v18);
    goto LABEL_18;
  }

  if (v25 == 1)
  {
LABEL_18:
    v26 = 1.0;
    goto LABEL_20;
  }

  v26 = 2.0;
LABEL_20:
  if (v26 + -1.0 > 0.0)
  {
    v38 = v26 + -1.0;
  }

  else
  {
    v38 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF12EC();
  v27 = (a3 - v38 * v39) / v26;
  sub_1E1AF123C();
  if (v40 > a4)
  {
    sub_1E1AF122C();
    return v41;
  }

  return v27;
}

unint64_t sub_1E18E3448()
{
  result = qword_1EE1DE8D8[0];
  if (!qword_1EE1DE8D8[0])
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DE8D8);
  }

  return result;
}

void sub_1E18E34C8()
{
  sub_1E15025D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.Metrics(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E18E3574()
{
  v0 = sub_1E1AF127C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1E18E35F4()
{
  sub_1E16DBBF0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.DisplayType(319);
    if (v1 <= 0x3F)
    {
      sub_1E1AF127C();
      if (v2 <= 0x3F)
      {
        sub_1E17796C8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E18E370C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20JSLegacyPackageIndex_scriptURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18E37F0()
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

uint64_t sub_1E18E38E0(unint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_1E1AF40DC();
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v57 = a1;
  sub_1E1AF381C();
  v52 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v11 + 8);
  v22(v19, v10);
  v51 = v21;
  if (!v21)
  {
    v27 = sub_1E1AF5A7C();
    sub_1E18E433C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v28 = 0x79654B6568636163;
    v29 = v54;
    v28[1] = 0xE800000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v30 = sub_1E1AEFCCC();
    (*(*(v30 - 8) + 8))(v55, v30);
    return (v22)(v57, v10);
  }

  v56 = v22;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v47 = v10;
  v56(v16, v10);
  v23 = v53;
  v24 = *(v53 + 48);
  v25 = v24(v9, 1, v3);
  v48 = v3;
  if (v25 == 1)
  {
    sub_1E146F8C4(v9);
    v26 = v50;
LABEL_6:
    v34 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }

  v32 = sub_1E1AF40BC();
  v33 = v9;
  v34 = v32;
  (*(v23 + 8))(v33, v3);
  v26 = v50;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v57;
  v36 = v47;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v37 = v56;
  v56(v13, v36);
  v38 = v48;
  if (v24(v26, 1, v48) == 1)
  {
    sub_1E146F8C4(v26);
    v39 = sub_1E15A28EC(MEMORY[0x1E69E7CC0]);
    v37(v35, v36);
  }

  else
  {
    v57 = v34;
    v40 = v53;
    v41 = v49;
    (*(v53 + 32))(v49, v26, v38);
    type metadata accessor for AMSBagKey(0);
    sub_1E1AF52CC();
    sub_1E18E433C(&qword_1ECEB1EB0, type metadata accessor for AMSBagKey);
    v39 = sub_1E1AF40AC();
    v56(v35, v36);
    (*(v40 + 8))(v41, v38);
    v34 = v57;
  }

  v42 = swift_allocObject();
  v43 = v51;
  *(v42 + 16) = v52;
  *(v42 + 24) = v43;
  v44 = OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_scriptURL;
  v45 = sub_1E1AEFCCC();
  (*(*(v45 - 8) + 32))(v42 + v44, v55, v45);
  result = v42;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_properties) = v34;
  *(v42 + OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_bagOverrides) = v39;
  return result;
}

uint64_t sub_1E18E3F34@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v14 = a1;
  v3 = sub_1E1AF39DC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5CF8);
  v9 = sub_1E1AF5DBC();
  *a2 = v9;
  (*(v5 + 16))(v7, v14, v4);
  sub_1E1AF39CC();
  v10 = v15;
  sub_1E1AF52BC();
  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return (*(*(v8 - 8) + 56))(a2, v11, 1, v8);
}

uint64_t sub_1E18E410C()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit14JSJetpackIndex_scriptURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18E41F8()
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

uint64_t sub_1E18E42B0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1E1AEFCCC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1E18E433C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadeSubscriptionDecorator.decorate()()
{
  v18 = sub_1E1AF4C2C();
  v1 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v17 = v20[0];
  sub_1E137A5C4((v0 + 1), v21);
  v4 = v0[6];
  v16 = v0[5];
  v5 = v0[7];
  v6 = v0[8];
  v7 = qword_1EE1F3430;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1E16D0204();
  MetricsSystemInfo.init()(&v22);
  v19 = v22;
  v9 = MetricsSystemInfo.dictionaryRepresentation.getter();
  sub_1E1626978(&v22);
  v10 = sub_1E14C6330(v9);

  v20[0] = 0xD000000000000022;
  v20[1] = 0x80000001E1B7D630;
  v21[4] = v16;
  v21[5] = v4;
  v21[6] = v5;
  v21[7] = v6;
  v21[8] = v8;
  v21[9] = v10;
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  v11 = v18;
  (*(v1 + 104))(v3, *MEMORY[0x1E69AB2E0], v18);
  v12 = sub_1E1AF4BCC();

  (*(v1 + 8))(v3, v11);
  v13 = sub_1E1369F08(v20, v12, "AppStoreKit/ArcadeSubscriptionDecorator.swift", 45, 2);

  sub_1E18E461C(v20);
  return v13;
}

_OWORD *ArcadeSubscriptionDecorator.init(objectGraph:product:appAdamId:subscriptionToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = a4[1];
  *a6 = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v6;
  *(a6 + 64) = v7;
  return sub_1E1301CF0(a5, (a6 + 8));
}

uint64_t ProductNoRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v20);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v30, &unk_1ECEB5670);
  return v25;
}

uint64_t ProductNoRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v21);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v30, &unk_1ECEB5670);
  return v25;
}

uint64_t ProductNoRatings.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t ProductNoRatings.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductNoRatings()
{
  result = qword_1ECEBB068;
  if (!qword_1ECEBB068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18E4C00@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v43 = v16;
  sub_1E134FD1C(v16, v12, &qword_1ECEB24A0);
  v44 = v10;
  if (a1 < 0 || (v17 = *&v12[*(v10 + 36)], *(v17 + 16) <= a1))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  else
  {
    sub_1E141CF00(v17 + 40 * a1 + 32, &v49);
    v18 = *&v12[*(v10 + 40)];
    if (*(v18 + 16) && (v19 = sub_1E15952E8(&v49), (v20 & 1) != 0))
    {
      v48 = *(*(v18 + 56) + 8 * v19);
      type metadata accessor for Shelf();

      sub_1E1AF3DDC();
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    (*(*(v23 - 8) + 56))(v15, v21, 1, v23);
    sub_1E138867C(&v49);
  }

  sub_1E1308058(v12, &qword_1ECEB24A0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v15, 1, v24) == 1)
  {
    v37 = v7;
    v38 = v3;
    v41 = v5;
    v42 = a1;
    sub_1E1308058(v15, &qword_1ECEB75A0);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v40 = sub_1E1AF591C();
    v39 = __swift_project_value_buffer(v40, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v26 = MEMORY[0x1E69E6158];
    v51 = MEMORY[0x1E69E6158];
    v49 = 0xD00000000000002ELL;
    v50 = 0x80000001E1B60720;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0);
    v51 = MEMORY[0x1E69E6530];
    v49 = v42;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0);
    v51 = v26;
    v49 = 0xD000000000000033;
    v50 = 0x80000001E1B60750;
    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0);
    v27 = (v43 + *(v44 + 52));
    v29 = *v27;
    v28 = v27[1];
    v51 = v26;
    v49 = v29;
    v50 = v28;

    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0);
    sub_1E1AF54BC();

    v30 = v38;
    v31 = *((*MEMORY[0x1E69E7D40] & *v38) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v32 = v45;
    sub_1E134FD1C(v30 + v31, v45, &qword_1ECEBB088);
    if ((*(v46 + 48))(v32, 1, v41))
    {
      sub_1E1308058(v32, &qword_1ECEBB088);
      return (*(v25 + 56))(v47, 1, 1, v24);
    }

    else
    {
      v35 = v37;
      sub_1E134FD1C(v32, v37, &qword_1ECEBB080);
      sub_1E1308058(v32, &qword_1ECEBB088);
      sub_1E18E5378(v42, v47);
      return sub_1E1308058(v35, &qword_1ECEBB080);
    }
  }

  else
  {
    v34 = v47;
    (*(v25 + 32))(v47, v15, v24);
    return (*(v25 + 56))(v34, 0, 1, v24);
  }
}

uint64_t sub_1E18E5378@<X0>(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v9 = v8;
  if (a1 < 0 || (v10 = *(v2 + *(v8 + 36)), *(v10 + 16) <= a1))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  else
  {
    sub_1E141CF00(v10 + 40 * a1 + 32, &v24);
    sub_1E19949E0(&v24, v7);
    sub_1E138867C(&v24);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) != 1)
    {
      (*(v12 + 32))(a2, v7, v11);
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  v22 = v9;
  v23 = a2;
  sub_1E1308058(v7, &qword_1ECEB75A0);
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v21 = sub_1E1AF591C();
  v20[1] = __swift_project_value_buffer(v21, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B04930;
  v15 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v24 = 0xD000000000000019;
  v25 = 0x80000001E1B60970;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  v16 = (v2 + *(v22 + 52));
  v18 = *v16;
  v17 = v16[1];
  v26 = v15;
  v24 = v18;
  v25 = v17;

  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  v26 = v15;
  v24 = 0xD00000000000002FLL;
  v25 = 0x80000001E1B60A80;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  v26 = MEMORY[0x1E69E6530];
  v24 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  v26 = v15;
  v24 = 0xD00000000000001CLL;
  v25 = 0x80000001E1B60A60;
  sub_1E1AF38BC();
  sub_1E1308058(&v24, &qword_1ECEB2DF0);
  sub_1E1AF54BC();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  return (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
}

uint64_t sub_1E18E57F8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v56 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  sub_1E134FD1C(v21, v20, &qword_1ECEB24A0);
  v68 = v15;
  if (a3 < 0)
  {
    sub_1E1308058(v20, &qword_1ECEB24A0);
  }

  else
  {
    v22 = *(*&v20[*(v15 + 36)] + 16);
    sub_1E1308058(v20, &qword_1ECEB24A0);
    if (v22 > a3)
    {
      sub_1E134FD1C(v21, v17, &qword_1ECEB24A0);
      v23 = v68;
      v24 = *&v17[*(v68 + 36)];
      if (a3 && *(v24 + 16) >= a3)
      {
        sub_1E141CF00(v24 + 40 * a3 - 8, &v71);
        v25 = *&v17[*(v23 + 40)];
        if (*(v25 + 16) && (v26 = sub_1E15952E8(&v71), (v27 & 1) != 0))
        {
          v70 = *(*(v25 + 56) + 8 * v26);
          type metadata accessor for Shelf();

          sub_1E1AF3DDC();
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
        (*(*(v48 - 8) + 56))(a1, v28, 1, v48);
        sub_1E138867C(&v71);
      }

      else
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
        (*(*(v47 - 8) + 56))(a1, 1, 1, v47);
      }

      if (a3 + 1 >= *(v24 + 16))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
        (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
      }

      else
      {
        sub_1E141CF00(v24 + 40 * (a3 + 1) + 32, &v71);
        v49 = *&v17[*(v23 + 40)];
        if (*(v49 + 16))
        {
          v50 = sub_1E15952E8(&v71);
          v51 = v69;
          if (v52)
          {
            v70 = *(*(v49 + 56) + 8 * v50);
            type metadata accessor for Shelf();

            sub_1E1AF3DDC();
            v53 = 0;
          }

          else
          {
            v53 = 1;
          }
        }

        else
        {
          v53 = 1;
          v51 = v69;
        }

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
        (*(*(v55 - 8) + 56))(v51, v53, 1, v55);
        sub_1E138867C(&v71);
      }

      return sub_1E1308058(v17, &qword_1ECEB24A0);
    }
  }

  v58 = v9;
  v62 = a1;
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v61 = sub_1E1AF591C();
  v60 = __swift_project_value_buffer(v61, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  v29 = MEMORY[0x1E69E6158];
  v73 = MEMORY[0x1E69E6158];
  v71 = 0xD000000000000033;
  v72 = 0x80000001E1B7D720;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0);
  v73 = MEMORY[0x1E69E6530];
  v57 = a3;
  v71 = a3;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0);
  v73 = v29;
  v71 = 0xD00000000000003DLL;
  v72 = 0x80000001E1B7D760;
  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0);
  v30 = (v21 + *(v68 + 52));
  v32 = *v30;
  v31 = v30[1];
  v73 = v29;
  v71 = v32;
  v72 = v31;

  sub_1E1AF38BC();
  sub_1E1308058(&v71, &qword_1ECEB2DF0);
  sub_1E1AF54BC();

  v33 = *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  v34 = v63;
  sub_1E134FD1C(v4 + v33, v63, &qword_1ECEBB088);
  if ((*(v64 + 48))(v34, 1, v65))
  {
    sub_1E1308058(v34, &qword_1ECEBB088);
    v35 = v67;
    v36 = *(v67 + 48);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    v38 = *(*(v37 - 8) + 56);
    v39 = v66;
    v38(v66, 1, 1, v37);
    v38(v39 + v36, 1, 1, v37);
  }

  else
  {
    v35 = v67;
    v40 = *(v67 + 48);
    v41 = v58;
    sub_1E134FD1C(v34, v58, &qword_1ECEBB080);
    sub_1E1308058(v34, &qword_1ECEBB088);
    v42 = v59;
    sub_1E18E6170(v59, v59 + v40, v57);
    sub_1E1308058(v41, &qword_1ECEBB080);
    v43 = v42;
    v39 = v66;
    sub_1E137F600(v43, v66, &unk_1ECEB7E70);
  }

  v44 = v69;
  v45 = *(v35 + 48);
  sub_1E137F600(v39, v62, &qword_1ECEB75A0);
  return sub_1E137F600(v39 + v45, v44, &qword_1ECEB75A0);
}

uint64_t sub_1E18E6170(uint64_t a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v9 = *(v4 + *(v8 + 36));
  if ((a3 & 0x8000000000000000) == 0 && *(v9 + 16) > a3)
  {
    goto LABEL_5;
  }

  v19 = a1;
  v20 = *(v4 + *(v8 + 36));
  v21 = v4;
  v22 = a2;
  if (qword_1EE1E35E8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v18 = sub_1E1AF591C();
    __swift_project_value_buffer(v18, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B070F0;
    v10 = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69E6158];
    v23 = 0xD000000000000019;
    v24 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    v11 = (v21 + *(v8 + 52));
    v8 = v11[1];
    v17 = *v11;
    v25 = v10;
    v23 = v17;
    v24 = v8;
    swift_bridgeObjectRetain_n();
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    v25 = v10;
    v23 = 0xD000000000000035;
    v24 = 0x80000001E1B7D7A0;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    v25 = MEMORY[0x1E69E6530];
    v23 = a3;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    v25 = v10;
    v23 = 0xD000000000000026;
    v24 = 0x80000001E1B7D7E0;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    v25 = v10;
    v23 = v17;
    v24 = v8;
    sub_1E1AF38BC();
    sub_1E1308058(&v23, &qword_1ECEB2DF0);
    sub_1E1AF54BC();

    a2 = v22;
    a1 = v19;
    v9 = v20;
LABEL_5:
    v12 = a3 - 1;
    if (!__OFSUB__(a3, 1))
    {
      break;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  if (v12 < 0 || v12 >= *(v9 + 16))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1E141CF00(v9 + 40 * v12 + 32, &v23);
    sub_1E19949E0(&v23, a1);
    sub_1E138867C(&v23);
  }

  v14 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_16;
  }

  if (v14 < 0 || v14 >= *(v9 + 16))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_1E141CF00(v9 + 40 * v14 + 32, &v23);
    sub_1E19949E0(&v23, a2);
    return sub_1E138867C(&v23);
  }
}

uint64_t sub_1E18E65B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - v16;
  sub_1E1AF1FAC();
  if (*(&v44 + 1))
  {
    v38 = a1;
    v39 = v12;
    v40 = v7;
    v41 = v6;
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    v18 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for ModelMappedDiffableDataSource + 16);
    swift_beginAccess();
    sub_1E134FD1C(v18, v14, &qword_1ECEB24A0);
    sub_1E199454C(v46, v17);
    sub_1E1308058(v14, &qword_1ECEB24A0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v17, 1, v19) == 1)
    {
      v34 = v19;
      v33 = v9;
      v37 = a2;
      sub_1E1308058(v17, &qword_1ECEB4718);
      if (qword_1EE1E35E8 != -1)
      {
        swift_once();
      }

      v36 = sub_1E1AF591C();
      v35 = __swift_project_value_buffer(v36, qword_1EE216188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B070F0;
      *(&v44 + 1) = MEMORY[0x1E69E6158];
      v21 = MEMORY[0x1E69E6158];
      *&v43 = 0xD000000000000034;
      *(&v43 + 1) = 0x80000001E1B60800;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      *(&v44 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v43 = swift_allocObject();
      sub_1E141CF00(v46, v43 + 16);
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      *(&v44 + 1) = v21;
      strcpy(&v43, "at indexPath:");
      HIWORD(v43) = -4864;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      v22 = sub_1E1AF01FC();
      *(&v44 + 1) = v22;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v43);
      (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v38, v22);
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      v24 = MEMORY[0x1E69E6158];
      *(&v44 + 1) = MEMORY[0x1E69E6158];
      *&v43 = 0xD00000000000002BLL;
      *(&v43 + 1) = 0x80000001E1B60840;
      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      v25 = (v18 + *(v42 + 52));
      v27 = *v25;
      v26 = v25[1];
      *(&v44 + 1) = v24;
      *&v43 = v27;
      *(&v43 + 1) = v26;

      sub_1E1AF38BC();
      sub_1E1308058(&v43, &qword_1ECEB2DF0);
      sub_1E1AF54BC();

      v28 = *((*MEMORY[0x1E69E7D40] & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
      swift_beginAccess();
      v29 = v39;
      sub_1E134FD1C(v3 + v28, v39, &qword_1ECEBB088);
      if ((*(v40 + 48))(v29, 1, v41))
      {
        sub_1E138867C(v46);
        sub_1E1308058(v29, &qword_1ECEBB088);
        return (*(v20 + 56))(v37, 1, 1, v34);
      }

      else
      {
        v32 = v33;
        sub_1E134FD1C(v29, v33, &qword_1ECEBB080);
        sub_1E1308058(v29, &qword_1ECEBB088);
        sub_1E18E6DB0(v46, v37);
        sub_1E1308058(v32, &qword_1ECEBB080);
        return sub_1E138867C(v46);
      }
    }

    else
    {
      sub_1E138867C(v46);
      (*(v20 + 32))(a2, v17, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }

  else
  {
    sub_1E1308058(&v43, &qword_1ECEB4720);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

uint64_t sub_1E18E6DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  sub_1E199454C(a1, v16 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v18 = a2;
    sub_1E1308058(v7, &qword_1ECEB4718);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF591C();
    v16[1] = __swift_project_value_buffer(v17, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v16[0] = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v10 = MEMORY[0x1E69E6158];
    v21 = MEMORY[0x1E69E6158];
    v19 = 0xD000000000000019;
    v20 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0);
    v11 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 52));
    v13 = *v11;
    v12 = v11[1];
    v21 = v10;
    v19 = v13;
    v20 = v12;

    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0);
    v21 = v10;
    v19 = 0xD000000000000031;
    v20 = 0x80000001E1B609C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0);
    v21 = &type metadata for DiffablePageContentIdentifier;
    v19 = swift_allocObject();
    sub_1E141CF00(a1, v19 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0);
    v21 = v10;
    v19 = 0xD000000000000019;
    v20 = 0x80000001E1B60A00;
    sub_1E1AF38BC();
    sub_1E1308058(&v19, &qword_1ECEB2DF0);
    sub_1E1AF54BC();

    v14 = 1;
    a2 = v18;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

char *sub_1E18E7198(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB080);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB088);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v44 = v1;
  v18 = v1 + v17;
  swift_beginAccess();
  v49 = v18;
  sub_1E134FD1C(v18, v16, &qword_1ECEB24A0);
  v19 = *(v8 + 16);
  v50 = a1;
  v42 = v19;
  v19(v10, a1, v7);
  v20 = type metadata accessor for Shelf();
  v51 = v20;
  v43 = sub_1E18E99D0(&qword_1EE1E5478, type metadata accessor for Shelf);
  v52 = v43;
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v21 = *(v8 + 8);
  v21(v10, v7);
  v45 = v11;
  if (*(*&v16[*(v11 + 36) + 8] + 16) && (sub_1E15952E8(&v53), (v22 & 1) != 0))
  {
    sub_1E138867C(&v53);
    sub_1E1308058(v16, &qword_1ECEB24A0);
    sub_1E134FD1C(v49, v13, &qword_1ECEB24A0);
    v23 = sub_1E19946F4(v50);
    v24 = v13;
    v25 = &qword_1ECEB24A0;
  }

  else
  {
    v39 = v21;
    sub_1E138867C(&v53);
    sub_1E1308058(v16, &qword_1ECEB24A0);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v41 = sub_1E1AF591C();
    v40 = __swift_project_value_buffer(v41, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v55 = MEMORY[0x1E69E6158];
    v53 = 0xD00000000000003BLL;
    v54 = 0x80000001E1B608C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    v42(v10, v50, v7);
    v55 = &type metadata for DiffablePageContentIdentifier;
    v53 = swift_allocObject();
    MEMORY[0x1EEE9AC00](v53);
    v26 = v43;
    *(&v37 - 2) = v20;
    *(&v37 - 1) = v26;
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v39(v10, v7);
    sub_1E1AF38BC();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    v27 = MEMORY[0x1E69E6158];
    v55 = MEMORY[0x1E69E6158];
    v53 = 0xD000000000000044;
    v54 = 0x80000001E1B60900;
    sub_1E1AF38BC();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    v28 = (v49 + *(v45 + 52));
    v30 = *v28;
    v29 = v28[1];
    v55 = v27;
    v53 = v30;
    v54 = v29;

    sub_1E1AF38BC();
    sub_1E1308058(&v53, &qword_1ECEB2DF0);
    sub_1E1AF54BC();

    v31 = v44;
    v32 = *((*MEMORY[0x1E69E7D40] & *v44) + class metadata base offset for ModelMappedDiffableDataSource + 24);
    swift_beginAccess();
    v33 = v31 + v32;
    v34 = v46;
    sub_1E134FD1C(v33, v46, &qword_1ECEBB088);
    if ((*(v47 + 48))(v34, 1, v48))
    {
      sub_1E1308058(v34, &qword_1ECEBB088);
      return 0;
    }

    v36 = v38;
    sub_1E134FD1C(v34, v38, &qword_1ECEBB080);
    sub_1E1308058(v34, &qword_1ECEBB088);
    v23 = sub_1E18E7978(v50);
    v24 = v36;
    v25 = &qword_1ECEBB080;
  }

  sub_1E1308058(v24, v25);
  return v23;
}

char *sub_1E18E7978(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  v30 = *(v4 + 16);
  v28 = v4 + 16;
  v30(&v20 - v6, a1, v3, v5);
  v8 = type metadata accessor for Shelf();
  v32 = v8;
  v9 = sub_1E18E99D0(&qword_1EE1E5478, type metadata accessor for Shelf);
  v33 = v9;
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v10 = *(v4 + 8);
  v29 = v4 + 8;
  v10(v7, v3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v12 = *(v11 + 36);
  v31 = v1;
  if (*(*(v1 + v12 + 8) + 16) && (sub_1E15952E8(&v34), (v13 & 1) != 0))
  {
    sub_1E138867C(&v34);
    return sub_1E19946F4(a1);
  }

  else
  {
    v24 = v10;
    v25 = v9;
    v26 = v8;
    v27 = a1;
    sub_1E138867C(&v34);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v21 = sub_1E1AF591C();
    v23 = __swift_project_value_buffer(v21, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v22 = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v36 = MEMORY[0x1E69E6158];
    v15 = MEMORY[0x1E69E6158];
    v34 = 0xD000000000000019;
    v35 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    v16 = (v31 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v36 = v15;
    v34 = v18;
    v35 = v17;

    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    v36 = v15;
    v34 = 0xD00000000000003BLL;
    v35 = 0x80000001E1B608C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    (v30)(v7, v27, v3);
    v36 = &type metadata for DiffablePageContentIdentifier;
    v34 = swift_allocObject();
    MEMORY[0x1EEE9AC00](v34);
    v19 = v25;
    *(&v20 - 2) = v26;
    *(&v20 - 1) = v19;
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v24(v7, v3);
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    v36 = MEMORY[0x1E69E6158];
    v34 = 0xD00000000000002DLL;
    v35 = 0x80000001E1B60990;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    sub_1E1AF54BC();

    return 0;
  }
}

id ShelfBasedCollectionViewController.shelfLayoutContext(containing:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  if (sub_1E1AF01AC() < 1)
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1E1AF6FEC();
    v9 = sub_1E1AF772C();
    MEMORY[0x1E68FECA0](v9);

    MEMORY[0x1E68FECA0](0xD00000000000003CLL, 0x80000001E1B7D6C0);
    sub_1E1AF01FC();
    sub_1E18E99D0(&qword_1ECEB8588, MEMORY[0x1E6969C28]);
    v10 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v10);

    MEMORY[0x1E68FECA0](0xD000000000000013, 0x80000001E1B7D700);
    v12[3] = MEMORY[0x1E69E6158];
    sub_1E1AF38BC();
    sub_1E1308058(v12, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v11 = type metadata accessor for ShelfLayoutContext();
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v6 = sub_1E1AF020C();

    return ShelfBasedCollectionViewController.shelfLayoutContext(for:)(v6, a1, a2, a3);
  }
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContext(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ShelfLayoutContext();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)(a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v20 = &qword_1ECEB35C0;
    v21 = v15;
  }

  else
  {
    sub_1E18E9968(v15, v19, type metadata accessor for ShelfLayoutContext);
    v22 = (*(a3 + 56))(a2, a3);
    if (v22)
    {
      v23 = v22;
      sub_1E18E65B0(a1, v9);

      v25 = v35;
      v24 = v36;
      if ((*(v36 + 48))(v9, 1, v35) != 1)
      {
        v30 = v34;
        (*(v24 + 32))(v34, v9, v25);
        v31 = sub_1E159EAEC(MEMORY[0x1E69E7CC0]);
        v32 = sub_1E1AF018C();
        v38 = v31;
        v27 = v37;
        ShelfLayoutContext.itemLayoutContext(for:at:metadata:)(v30, v32, &v38, v37);
        (*(v24 + 8))(v30, v25);
        sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);

        v26 = 0;
        goto LABEL_9;
      }

      sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);
    }

    else
    {
      sub_1E18E9908(v19, type metadata accessor for ShelfLayoutContext);
      (*(v36 + 56))(v9, 1, 1, v35);
    }

    v20 = &qword_1ECEB4718;
    v21 = v9;
  }

  sub_1E1308058(v21, v20);
  v26 = 1;
  v27 = v37;
LABEL_9:
  v28 = type metadata accessor for ItemLayoutContext();
  return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
}

id ShelfBasedCollectionViewController.shelfLayoutContext(for:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v138 = a1;
  v8 = type metadata accessor for PageEnvironment();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = (&v116 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v116 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24);
  *&MinY = &v116 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v116 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v116 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v139 = *(v31 - 8);
  v140 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v135 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v137 = &v116 - v35;
  v36 = (*(a3 + 32))(a2, a3, v34);
  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v36;
  v124 = v17;
  v134 = a4;
  v38 = *(a3 + 56);
  v126 = a2;
  v127 = v4;
  v39 = v38(a2, a3);
  if (!v39)
  {

    (*(v139 + 56))(v30, 1, 1, v140);
    goto LABEL_6;
  }

  v40 = v39;
  v123 = v14;
  v125 = v12;
  sub_1E18E4C00(v138, v30);

  v42 = v139;
  v41 = v140;
  if ((*(v139 + 48))(v30, 1, v140) == 1)
  {

LABEL_6:
    a4 = v134;
    sub_1E1308058(v30, &qword_1ECEB75A0);
LABEL_7:
    v43 = type metadata accessor for ShelfLayoutContext();
    return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
  }

  v45 = v137;
  (*(v42 + 32))(v137, v30, v41);
  v46 = v126;
  v47 = v38(v126, a3);
  if (!v47)
  {

    (*(v42 + 8))(v45, v41);
    a4 = v134;
    goto LABEL_7;
  }

  v48 = v47;
  v49 = v125;
  v50 = *&MinY;
  sub_1E18E57F8(*&MinY, *&MinY + *(v125 + 48), v138);

  v51 = v136;
  sub_1E137F600(v50, v136, &unk_1ECEB7E70);
  v52 = v37;
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v57 = [v52 readableContentGuide];
  v117 = v52;

  [v57 layoutFrame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v150.origin.x = v59;
  v150.origin.y = v61;
  v150.size.width = v63;
  v150.size.height = v65;
  MinY = CGRectGetMinY(v150);
  v151.origin.x = v59;
  v151.origin.y = v61;
  v151.size.width = v63;
  v151.size.height = v65;
  MinX = CGRectGetMinX(v151);
  v152.origin.x = v59;
  v152.origin.y = v61;
  v152.size.width = v63;
  v152.size.height = v65;
  MaxY = CGRectGetMaxY(v152);
  v153.origin.x = v59;
  v153.origin.y = v61;
  v153.size.width = v63;
  v153.size.height = v65;
  MaxX = CGRectGetMaxX(v153);
  v68 = v127;
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v147);
  v119 = v149;
  v120 = v148;
  v118 = __swift_project_boxed_opaque_existential_1Tm(v147, v148);
  v69 = v133;
  sub_1E134FD1C(v51, v133, &unk_1ECEB7E70);
  v121 = *(a3 + 104);
  v70 = v121(v46, a3);
  v72 = v71;
  v74 = v73;
  v76 = v75;
  result = [v68 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v77 = result;
  v78 = v56 - MaxY;
  v79 = v54 - MaxX;
  v80 = *(v49 + 48);
  v81 = [result traitCollection];

  v82 = v130;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v81, 1, v130);
  (*(v119 + 8))(v146, v137, v69, v69 + v80, v82, v120, v54, v56, MinY, MinX, v78, v79, v70, v72, v74, v76);
  sub_1E18E9908(v82, type metadata accessor for PageEnvironment);
  sub_1E1308058(v69 + v80, &qword_1ECEB75A0);
  sub_1E1308058(v69, &qword_1ECEB75A0);
  __swift_destroy_boxed_opaque_existential_1(v147);
  ShelfBasedCollectionViewController.pageGridProvider.getter(a3, v143);
  v83 = v144;
  v84 = v145;
  v130 = __swift_project_boxed_opaque_existential_1Tm(v143, v144);
  v85 = a3;
  v86 = v131;
  sub_1E134FD1C(v136, v131, &unk_1ECEB7E70);
  v133 = v85;
  v87 = v121(v46, v85);
  v89 = v88;
  v91 = v90;
  v93 = v92;
  result = [v68 view];
  v94 = v139;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v95 = result;
  v96 = *(v125 + 48);
  v97 = [result traitCollection];

  v98 = v128;
  PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)(v97, 1, v128);
  v99 = v137;
  (*(v84 + 16))(v142, v137, v86, v86 + v96, v98, v83, v84, v54, v56, MinY, MinX, v78, v79, v87, v89, v91, v93);
  sub_1E18E9908(v98, type metadata accessor for PageEnvironment);
  sub_1E1308058(v86 + v96, &qword_1ECEB75A0);
  sub_1E1308058(v86, &qword_1ECEB75A0);
  __swift_destroy_boxed_opaque_existential_1(v143);
  v100 = *(v94 + 16);
  v100(v135, v99, v140);
  v101 = v129;
  sub_1E134FD1C(v136, v129, &unk_1ECEB7E70);
  v133 = ShelfBasedCollectionViewController.stateStore.getter(v126, v133);
  result = [v68 view];
  if (result)
  {
    v102 = result;
    v103 = v125;
    v104 = *(v125 + 48);
    MinY = COERCE_DOUBLE([result traitCollection]);

    v105 = v124;
    sub_1E137F600(v101, v124, &qword_1ECEB75A0);
    sub_1E137F600(v101 + v104, v105 + *(v103 + 48), &qword_1ECEB75A0);
    v106 = v134;
    v100(v134, v135, v140);
    v107 = type metadata accessor for ShelfLayoutContext();
    *&v106[v107[5]] = v138;
    v108 = v123;
    sub_1E134FD1C(v105, v123, &unk_1ECEB7E70);
    v109 = *(v103 + 48);
    v110 = &v106[v107[6]];
    sub_1E137F600(v108, v110, &qword_1ECEB75A0);
    sub_1E137F600(v108 + v109, v110 + *(v103 + 48), &qword_1ECEB75A0);
    memcpy(&v106[v107[7]], v146, 0x188uLL);
    memcpy(&v106[v107[8]], v142, 0x188uLL);
    *&v106[v107[9]] = v133;
    v111 = type metadata accessor for LayoutContextTraitEnvironment();
    v112 = objc_allocWithZone(v111);
    *&v112[OBJC_IVAR____TtC11AppStoreKit29LayoutContextTraitEnvironment_traitCollection] = MinY;
    v141.receiver = v112;
    v141.super_class = v111;
    v113 = objc_msgSendSuper2(&v141, sel_init);

    sub_1E1308058(v105, &unk_1ECEB7E70);
    v114 = v140;
    v115 = *(v139 + 8);
    v115(v135, v140);
    sub_1E1308058(v136, &unk_1ECEB7E70);
    v115(v137, v114);
    *&v106[v107[10]] = v113;
    return (*(*(v107 - 1) + 56))(v106, 0, 1, v107);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t ShelfBasedCollectionViewController.itemLayoutContexts(for:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB078);
  MEMORY[0x1EEE9AC00](v62);
  v67 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v50 - v9;
  v60 = type metadata accessor for ItemLayoutContext();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - v13;
  v15 = type metadata accessor for ShelfLayoutContext();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)(a1, a2, a3, v14);
  v19 = *(v16 + 48);
  v50 = v15;
  if (v19(v14, 1, v15) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB35C0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E18E9968(v14, v18, type metadata accessor for ShelfLayoutContext);
  v20 = (*(a3 + 56))(a2, a3);
  if (!v20 || (v21 = v20, v22 = sub_1E18E7198(v18), v21, !v22))
  {
    sub_1E18E9908(v18, type metadata accessor for ShelfLayoutContext);
    return MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 2);
  if (!v23)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_29:
    sub_1E18E9908(v18, type metadata accessor for ShelfLayoutContext);
    return v27;
  }

  v74 = MEMORY[0x1E69E7CC0];
  sub_1E135C7EC(0, v23, 0);
  v58 = *(v22 + 2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v25 = 0;
  v66 = result;
  v26 = *(result - 8);
  v54 = &v22[(*(v26 + 80) + 32) & ~*(v26 + 80)];
  v27 = v74;
  v55 = v26;
  v52 = v26 + 32;
  v51 = *(v50 + 24);
  v57 = v22;
  v56 = v23;
  v53 = v26 + 16;
  while (v58 != v25)
  {
    if (v25 >= *(v22 + 2))
    {
      goto LABEL_31;
    }

    v28 = v62;
    v29 = *(v62 + 48);
    v30 = v18;
    v31 = v55;
    v32 = &v54[*(v55 + 72) * v25];
    v33 = v61;
    v34 = v66;
    v65 = *(v55 + 16);
    v65(&v61[v29], v32, v66);
    v35 = v67;
    *v67 = v25;
    v36 = *(v28 + 48);
    v37 = *(v31 + 32);
    v18 = v30;
    v37(v35 + v36, &v33[v29], v34);
    v38 = v63;
    sub_1E134FD1C(v30 + v51, v63, &unk_1ECEB7E70);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    LODWORD(v28) = (*(*(v39 - 8) + 48))(v38, 1, v39);
    sub_1E1308058(v38 + *(v64 + 48), &qword_1ECEB75A0);
    sub_1E1308058(v38, &qword_1ECEB75A0);
    if (v28 == 1)
    {
      v40 = 10;
    }

    else
    {
      v40 = 2;
    }

    swift_getKeyPath();
    sub_1E1AF3DAC();

    v41 = v40 & 0xFFFFFFFFFFFFFFDFLL | (32 * ((*v71 >> 1) & 1));
    swift_getKeyPath();
    sub_1E1AF3DAC();

    if (v71[0] == 1)
    {
      v41 |= 1uLL;
    }

    else
    {
      v42 = [*(v30 + *(v50 + 40)) traitCollection];
      v43 = sub_1E1AF695C();

      if (v43)
      {
        v41 |= 0x10uLL;
      }
    }

    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E90);
    if (swift_dynamicCast())
    {
      sub_1E1308EC0(v68, v71);
      v44 = v72;
      v45 = v73;
      __swift_project_boxed_opaque_existential_1Tm(v71, v72);
      (*(v45 + 8))(v70, v44, v45);
      if (LOBYTE(v70[0]) != 4)
      {
        v41 |= 0x40uLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      sub_1E1308058(v68, &unk_1ECEB7E98);
    }

    v46 = v60;
    v47 = v67;
    v65(v11 + *(v60 + 20), v67 + v36, v66);
    sub_1E13926F0(v30, v11 + v46[8]);
    *v11 = v25;
    *(v11 + v46[6]) = MEMORY[0x1E69E7CC8];
    *(v11 + v46[7]) = v41;
    sub_1E1308058(v47, &qword_1ECEBB078);
    v74 = v27;
    v49 = *(v27 + 16);
    v48 = *(v27 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1E135C7EC(v48 > 1, v49 + 1, 1);
      v27 = v74;
    }

    ++v25;
    *(v27 + 16) = v49 + 1;
    result = sub_1E18E9968(v11, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v49, type metadata accessor for ItemLayoutContext);
    v22 = v57;
    if (v56 == v25)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E18E9908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E18E9968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E18E99D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18E9A54(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v6 = a2;
    v7 = sub_1E1AF1E8C();
    if (sub_1E1AF6AEC())
    {
      v6;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E1AF1E9C();
  }

  if (a3)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v9 = a3;
    v8 = sub_1E1AF1E8C();
    if (sub_1E1AF6ADC())
    {
      v9;
    }

    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E1AF1E9C();
  }
}

BOOL CornerStyle.apply(withRadius:to:)(void *a1, double a2)
{
  v5 = *v2;
  v6 = sel__setCornerRadius_;
  if (v5)
  {
    v6 = sel__setContinuousCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setContinuousCornerRadius_];
  }

  else
  {
    [a1 v6];
  }

  v7 = sel__setContinuousCornerRadius_;
  if (v5)
  {
    v7 = sel__setCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setCornerRadius_];
  }

  else
  {
    [a1 v7];
  }

  v9 = [a1 layer];
  [v9 setAllowsEdgeAntialiasing_];

  return a2 >= COERCE_DOUBLE(1);
}

double sub_1E18E9D84(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v4);

  return MaxY;
}

double UIView.firstBaselineFromTop.getter()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double sub_1E18E9E10(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v6);
  [v1 lastBaselineFromBottom];
  v4 = v3;

  return MaxY - v4;
}

double UIView.lastBaselineMaxY.getter()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double sub_1E18E9EEC(void *a1)
{
  v1 = a1;
  v2 = UIButton.lastBaselineFromBottom.getter();

  return v2;
}

double UIButton.lastBaselineFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

double sub_1E18EA044(void *a1)
{
  v1 = a1;
  v2 = UIImageView.lastBaselineFromBottom.getter();

  return v2;
}

double UIImageView.lastBaselineFromBottom.getter()
{
  v1 = [v0 image];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 preferredSymbolConfiguration];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 traitCollection];
      v7 = [v5 configurationWithTraitCollection_];

      v8 = [v3 imageByApplyingSymbolConfiguration_];
      if (!v8)
      {

        return v2;
      }

      v9 = v8;
      v10 = sub_1E1AF6CCC();
      v12 = v11;

      if (v12)
      {
        return v2;
      }

      return *&v10;
    }

    v10 = sub_1E1AF6CCC();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return *&v10;
    }
  }

  return v2;
}

uint64_t sub_1E18EA1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  result = swift_allocObject();
  *(result + 16) = sub_1E18EA20C;
  *(result + 24) = 0;
  qword_1ECEBB090 = result;
  return result;
}

void sub_1E18EA20C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_1E1AF6ABC())
  {

    v5 = 4.0;
    goto LABEL_12;
  }

  v6 = sub_1E1AF5DFC();
  v8 = v7;
  if (v6 != sub_1E1AF5DFC() || v8 != v9)
  {
    v11 = sub_1E1AF74AC();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_1E1AF6AFC();

  v5 = 0.0;
  if (v12)
  {
    v5 = 1.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECEB1598 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECEBB090;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  result = sub_1E1308EC0(a3, a5 + 80);
  *(a5 + 120) = v8;
  return result;
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v30 = a2;
  v27 = sub_1E1AF745C();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
  sub_1E1AF11CC();
  v28 = v17;
  v29 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  v25[3] = a1;
  sub_1E1AF11CC();
  v26 = v18;
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMidY(v33);
  sub_1E1AF116C();
  v19 = v6[13];
  v25[2] = v6[14];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v19);
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1E1AF115C();
  CGRectGetMaxX(v34);
  v31 = v6[15];

  sub_1E1AF102C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  sub_1E140CE44();
  sub_1E1AF12DC();
  v20 = v13 + 8;
  v21 = *(v13 + 8);
  v25[1] = v20;
  v22 = v27;
  v21(v15, v27);

  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  CGRectGetMidY(v35);
  sub_1E1AF116C();
  v23 = v6[8];
  v26 = v6[9];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v23);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  sub_1E1AF115C();
  CGRectGetMaxX(v36);
  v31 = v6[15];

  sub_1E1AF102C();
  sub_1E1AF12DC();
  v21(v15, v22);

  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMidY(v37);
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

uint64_t MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_1E1AF745C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E1AF11CC();
  v9 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v1 + 10, v1[13]);
  sub_1E1AF11CC();
  v10 = v0[15];

  sub_1E1AF102C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  sub_1E140CE44();
  sub_1E1AF12DC();
  v7 = *(v3 + 8);
  v7(v5, v2);

  v10 = v0[15];

  sub_1E1AF102C();
  sub_1E1AF12DC();
  v7(v5, v2);
}

uint64_t sub_1E18EAA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E18EAAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E18EAB4C()
{
  result = qword_1ECEBA360;
  if (!qword_1ECEBA360)
  {
    type metadata accessor for CopyTextAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA360);
  }

  return result;
}

uint64_t sub_1E18EABB0()
{
  v0 = sub_1E1AF3E2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  v5 = sub_1E1AF5DBC();
  [v4 setString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  (*(v1 + 104))(v3, *MEMORY[0x1E69AB010], v0);
  return sub_1E1AF582C();
}

BOOL sub_1E18EAD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_1F5C3F2E8;
  type metadata accessor for Restrictions();
  if (v6())
  {
    if (off_1F5C3F2D8() >= a3)
    {
      return 0;
    }

    v7 = ASKDeviceTypeGetCurrent();
    v8 = sub_1E1AF5DFC();
    v10 = v9;
    if (v8 == sub_1E1AF5DFC() && v10 == v11)
    {

      return 0;
    }

    v13 = sub_1E1AF74AC();

    if (v13)
    {
      return 0;
    }

    if (a2)
    {
      v15 = off_1F5C3F2E0();
      if (*(v15 + 16))
      {
        v16 = sub_1E13018F8(a1, a2);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          return v18 < a3;
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1E18EAEB0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  type metadata accessor for Restrictions();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (off_1F5C3F2E8() & 1) != 0 && ((off_1F5C3F2F8() & 1) == 0 || (a4 & 0x100) != 0) && ((a4 & 1) != 0 || !sub_1E18EAD00(a1, a2, a3)) || (sub_1E1AF690C(), (v9))
  {

    return 0;
  }

  else
  {
    sub_1E1AF690C();

    if (v9)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t AppEventNotificationConfig.appEventId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AppEventNotificationConfig.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppEventNotificationConfig.detail.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E18EB19C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

char *AppEventNotificationConfig.__allocating_init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v23 = swift_allocObject();
  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  *(v23 + 5) = a5;
  *(v23 + 6) = a6;
  *(v23 + 7) = a7;
  sub_1E137F600(a8, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl], &unk_1ECEB4B60);
  v24 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v25 = sub_1E1AEFE6C();
  (*(*(v25 - 8) + 32))(&v23[v24], a9, v25);
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v26 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v27 = sub_1E1AEFCCC();
  (*(*(v27 - 8) + 32))(&v23[v26], a13, v27);
  sub_1E137F600(a14, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_1ECEB36B0);
  sub_1E137F600(a15, &v23[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_1ECEB36B0);
  return v23;
}

char *AppEventNotificationConfig.init(id:appEventId:title:detail:artworkUrl:displayTime:scheduledAction:notAuthorizedAction:failureAction:destinationUrl:scheduleClickEvent:cancelScheduleClickEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  *(v15 + 6) = a6;
  *(v15 + 7) = a7;
  sub_1E137F600(a8, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl], &unk_1ECEB4B60);
  v23 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v24 = sub_1E1AEFE6C();
  (*(*(v24 - 8) + 32))(&v15[v23], a9, v24);
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction] = a10;
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction] = a11;
  *&v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction] = a12;
  v25 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v26 = sub_1E1AEFCCC();
  (*(*(v26 - 8) + 32))(&v15[v25], a13, v26);
  sub_1E137F600(a14, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent], &qword_1ECEB36B0);
  sub_1E137F600(a15, &v15[OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent], &qword_1ECEB36B0);
  return v15;
}

uint64_t AppEventNotificationConfig.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v164 = a2;
  v134 = sub_1E1AEFEAC();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v159 = *(v4 - 8);
  v160 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v148 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v124 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v142 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v143 = (&v124 - v17);
  v18 = sub_1E1AEFCCC();
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = &v124 - v23;
  v24 = sub_1E1AEFE6C();
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v153 = &v124 - v27;
  v28 = sub_1E1AF380C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v124 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v124 - v45;
  v47 = a1;
  sub_1E1AF381C();
  v138 = sub_1E1AF37CC();
  v49 = v48;
  v52 = *(v29 + 8);
  v51 = v29 + 8;
  v50 = v52;
  v52(v46, v28);
  v156 = v49;
  if (!v49)
  {
    v62 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v64 = v63;
    *v63 = 0x746E657645707061;
    v65 = 0xEA00000000006449;
LABEL_7:
    v63[1] = v65;
    v63[2] = v158;
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69AB690], v62);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v28);
    return v50;
  }

  v157 = v50;
  sub_1E1AF381C();
  v53 = sub_1E1AF37CC();
  v50 = v157;
  v130 = v53;
  v55 = v54;
  v157(v43, v28);
  if (!v55)
  {

    v62 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v64 = v63;
    *v63 = 0x656C746974;
    v65 = 0xE500000000000000;
    goto LABEL_7;
  }

  sub_1E1AF381C();
  v56 = v152;
  sub_1E1AF371C();
  v50 = v157;
  v157(v40, v28);
  v131 = v28;
  v57 = v154;
  v58 = v155;
  v59 = (*(v154 + 48))(v56, 1, v155);
  v135 = v51;
  if (v59 == 1)
  {

    sub_1E1308058(v56, &unk_1ECEBB780);
    v60 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v61 = 0x5479616C70736964;
    v61[1] = 0xEB00000000656D69;
    v61[2] = v158;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x1E69AB690], v60);
    swift_willThrow();
    (*(v159 + 8))(v164, v160);
    (v50)(v47, v131);
  }

  else
  {
    v67 = *(v57 + 32);
    v129 = v57 + 32;
    v128 = v67;
    v67(v153, v56, v58);
    v68 = v50;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v70 = v69;
    v71 = v37;
    v72 = v131;
    v73 = v135;
    v68(v71, v131);
    if (v70)
    {
      v74 = v72;
      v152 = v47;
      v75 = v143;
      sub_1E1AEFCAC();

      v50 = v150;
      v76 = v151;
      v77 = *(v150 + 6);
      if (v77(v75, 1, v151) == 1)
      {

        sub_1E1308058(v75, &unk_1ECEB4B60);
        v78 = sub_1E1AF5A7C();
        sub_1E1380704();
        swift_allocError();
        v79 = MEMORY[0x1E69E7CC0];
        strcpy(v80, "destinationUrl");
        v80[15] = -18;
        *(v80 + 2) = v158;
        *(v80 + 3) = v79;
        (*(*(v78 - 8) + 104))(v80, *MEMORY[0x1E69AB6A0], v78);
        swift_willThrow();
        (*(v159 + 8))(v164, v160);
        v157(v152, v72);
        (*(v154 + 8))(v153, v155);
      }

      else
      {
        v127 = v55;
        v83 = *(v50 + 32);
        v154 = v50 + 32;
        v143 = v83;
        v83(v145, v75, v76);
        v84 = v144;
        v85 = v50;
        sub_1E1AF381C();
        v126 = sub_1E1AF37CC();
        v125 = v86;
        v87 = v76;
        v88 = v157;
        v157(v84, v72);
        v89 = *(v85 + 56);
        v150 = (v85 + 56);
        v89(v149, 1, 1, v87);
        v90 = v137;
        sub_1E1AF381C();
        sub_1E1AF37CC();
        v92 = v91;
        v88(v90, v74);
        v93 = v164;
        v94 = v159;
        if (v92)
        {
          v95 = v136;
          sub_1E1AEFCAC();

          v96 = v151;
          if (v77(v95, 1, v151) == 1)
          {
            sub_1E1308058(v95, &unk_1ECEB4B60);
          }

          else
          {
            v97 = v149;
            sub_1E1308058(v149, &unk_1ECEB4B60);
            v143(v97, v95, v96);
            v89(v97, 0, 1, v96);
          }
        }

        type metadata accessor for Action();
        v98 = v144;
        v99 = v152;
        sub_1E1AF381C();
        v150 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v93);
        v100 = v131;
        v101 = v157;
        v157(v98, v131);
        sub_1E1AF381C();
        v137 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_1E1AF381C();
        v136 = static Action.tryToMakeInstance(byDeserializing:using:)(v98, v164);
        v101(v98, v100);
        sub_1E1AF3ABC();
        sub_1E1AF381C();
        v102 = v94;
        v103 = *(v94 + 16);
        v104 = v140;
        v105 = v160;
        v103(v140, v164, v160);
        sub_1E1AF464C();
        sub_1E1AF381C();
        v103(v104, v164, v105);
        sub_1E1AF464C();
        v106 = v139;
        sub_1E1AF381C();
        v107 = sub_1E1AF37CC();
        if (v108)
        {
          v161 = v107;
          v162 = v108;
        }

        else
        {
          v109 = v132;
          sub_1E1AEFE9C();
          v110 = sub_1E1AEFE7C();
          v112 = v111;
          (*(v133 + 8))(v109, v134);
          v161 = v110;
          v162 = v112;
        }

        sub_1E1AF6F6C();
        (*(v102 + 8))(v164, v105);
        v113 = v131;
        v114 = v157;
        v157(v99, v131);
        v114(v106, v113);
        sub_1E134B88C(v163);
        v115 = v142;
        sub_1E137F600(v149, v142, &unk_1ECEB4B60);
        v116 = v141;
        v117 = v155;
        v118 = v128;
        v128(v141, v153, v155);
        v119 = v143;
        v143(v146, v145, v151);
        v50 = swift_allocObject();
        v120 = v156;
        *(v50 + 16) = v138;
        *(v50 + 24) = v120;
        v121 = v127;
        *(v50 + 32) = v130;
        *(v50 + 40) = v121;
        v122 = v125;
        *(v50 + 48) = v126;
        *(v50 + 56) = v122;
        sub_1E137F600(v115, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl, &unk_1ECEB4B60);
        v118(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime, v116, v117);
        v123 = v151;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduledAction) = v150;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_notAuthorizedAction) = v137;
        *(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_failureAction) = v136;
        v119(v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl, v146, v123);
        sub_1E137F600(v147, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_1ECEB36B0);
        sub_1E137F600(v148, v50 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_1ECEB36B0);
      }
    }

    else
    {

      v81 = sub_1E1AF5A7C();
      sub_1E1380704();
      v50 = v73;
      swift_allocError();
      strcpy(v82, "destinationUrl");
      v82[15] = -18;
      *(v82 + 2) = v158;
      (*(*(v81 - 8) + 104))(v82, *MEMORY[0x1E69AB690], v81);
      swift_willThrow();
      (*(v159 + 8))(v164, v160);
      v68(v47, v72);
      (*(v57 + 8))(v153, v155);
    }
  }

  return v50;
}

uint64_t AppEventNotificationConfig.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_artworkUrl, &unk_1ECEB4B60);
  v1 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_displayTime;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_destinationUrl;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_scheduleClickEvent, &qword_1ECEB36B0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26AppEventNotificationConfig_cancelScheduleClickEvent, &qword_1ECEB36B0);
  return v0;
}

uint64_t AppEventNotificationConfig.__deallocating_deinit()
{
  AppEventNotificationConfig.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18ECA54@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventNotificationConfig.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventNotificationConfig()
{
  result = qword_1EE1E1350;
  if (!qword_1EE1E1350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E18ECAD4()
{
  sub_1E18ECCEC(319, &qword_1EE1FADD0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1E1AEFE6C();
    if (v1 <= 0x3F)
    {
      sub_1E1AEFCCC();
      if (v2 <= 0x3F)
      {
        sub_1E18ECCEC(319, qword_1EE1E3B30, MEMORY[0x1E69AAF48]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E18ECCEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

AppStoreKit::HttpActionMethod_optional __swiftcall HttpActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 5522759;
  v3 = 0x534E4F4954504FLL;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x4554454C4544;
  if (v1 != 4)
  {
    v4 = 0x5443454E4E4F43;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145128264;
  if (v1 != 2)
  {
    v5 = 5526864;
  }

  if (*v0)
  {
    v2 = 1414745936;
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

void sub_1E18ECEF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE700000000000000;
  v6 = 0x534E4F4954504FLL;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (v2 != 4)
  {
    v8 = 0x5443454E4E4F43;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145128264;
  if (v2 != 2)
  {
    v10 = 5526864;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 1414745936;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t HttpAction.__allocating_init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HttpAction.init(url:presentationStyle:actionMetrics:)(a1, a2, a3);
  return v6;
}

void *HttpAction.init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_1E1AEFEAC();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_method) = 0;
  v16 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  *(v4 + v16) = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v17 = (v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction) = 0;
  v18 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  v21 = v4 + v18;
  v22 = v15;
  v23 = a1;
  (*(v20 + 16))(v21, a1, v19);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  (*(v13 + 16))(v22, a3, v12);
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v25 = 0u;
  v25[1] = 0u;
  sub_1E138853C(v51, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    v26 = v39;
    sub_1E1AEFE9C();
    v38 = v11;
    v37 = a3;
    v27 = v23;
    v28 = v22;
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v40 + 8))(v26, v41);
    v43 = v29;
    v44 = v31;
    v22 = v28;
    v23 = v27;
    a3 = v37;
    v11 = v38;
    sub_1E1AF6F6C();
    sub_1E1308058(&v45, &unk_1ECEB5670);
  }

  (*(v13 + 8))(a3, v12);
  (*(v20 + 8))(v23, v19);
  sub_1E1308058(v51, &unk_1ECEB5670);
  v32 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v32 + 4) = v50;
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  sub_1E134B7C8(v11, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v4[2] = 0;
  v4[3] = 0;
  v34 = v42;
  v4[4] = 0;
  v4[5] = v34;
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v22, v12);
  return v4;
}

uint64_t *HttpAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v108 = *v3;
  v125 = sub_1E1AF39DC();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v117 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v94 - v7;
  v107 = sub_1E1AF40DC();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v94 - v10;
  v128 = sub_1E1AF380C();
  v12 = *(v128 - 8);
  v13 = MEMORY[0x1EEE9AC00](v128);
  v116 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v94 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v113 = &v94 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v112 = &v94 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = &v94 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v105 = &v94 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v100 = &v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v119 = &v94 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v94 - v29;
  v31 = sub_1E1AEFCCC();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v122 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_method) = 0;
  v34 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  v35 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  v118 = v34;
  *(v3 + v34) = v35;
  v36 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  *v36 = 0;
  v36[1] = 0;
  v101 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest) = 0;
  v102 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication) = 0;
  v104 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken) = 0;
  v109 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount) = 0;
  v111 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache) = 0;
  v121 = (v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_successAction) = 0;
  v37 = v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_failureAction) = 0;
  v120 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v38 = v32;
  v115 = v12;
  v39 = (v12 + 8);
  v40 = *(v12 + 8);
  v40(v30, v128);
  if ((*(v38 + 48))(v11, 1, v31) == 1)
  {
    sub_1E1308058(v11, &unk_1ECEB4B60);
    v41 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v42 = 7107189;
    v43 = v108;
    v42[1] = 0xE300000000000000;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E69AB690], v41);
    swift_willThrow();
    (*(v124 + 8))(v126, v125);
    v40(v120, v128);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v95 = v36;
    v96 = v37;
    v44 = v122;
    (*(v38 + 32))(v122, v11, v31);
    v97 = v38;
    v45 = *(v38 + 16);
    v108 = v31;
    v45(v3 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_url, v44, v31);
    v46 = v119;
    v47 = v120;
    sub_1E1AF381C();
    sub_1E18EEFB0();
    sub_1E1AF36DC();
    v40(v46, v128);
    v48 = v127;
    v49 = v47;
    if (v127 != 8)
    {
      v50 = v98;
      swift_beginAccess();
      *(v3 + v50) = v48;
    }

    v51 = v100;
    v52 = v49;
    sub_1E1AF381C();
    v53 = v103;
    sub_1E1AF368C();
    v100 = v39;
    v40(v51, v128);
    v54 = v106;
    v55 = v107;
    v56 = (*(v106 + 48))(v53, 1, v107);
    v94 = v3;
    if (v56 == 1)
    {
      sub_1E1308058(v53, &qword_1ECEB2B28);
    }

    else
    {
      v57 = v99;
      (*(v54 + 32))(v99, v53, v55);
      v58 = v54;
      v59 = v123;
      v60 = sub_1E1AF40AC();
      v123 = v59;
      (*(v58 + 8))(v57, v55);
      v61 = v118;
      swift_beginAccess();
      *(v3 + v61) = v60;
    }

    v62 = v95;
    v63 = v119;
    sub_1E1AF381C();
    v64 = sub_1E1AF37CC();
    v66 = v65;
    v67 = v128;
    v68 = v40;
    v40(v63, v128);
    swift_beginAccess();
    *v62 = v64;
    v62[1] = v66;

    v69 = v105;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v69, v67);
    v70 = v101;
    swift_beginAccess();
    *v70 = v64 & 1;
    v71 = v110;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v71, v67);
    v72 = v102;
    swift_beginAccess();
    *v72 = v64 & 1;
    v73 = v112;
    sub_1E1AF381C();
    LOBYTE(v64) = sub_1E1AF370C();
    v40(v73, v67);
    v74 = v104;
    swift_beginAccess();
    *v74 = v64 & 1;
    v75 = v113;
    sub_1E1AF381C();
    v76 = sub_1E1AF36EC();
    LOBYTE(v66) = v77;
    v40(v75, v67);
    if (v66)
    {
      v76 = 0;
    }

    v78 = v109;
    swift_beginAccess();
    *v78 = v76;
    v79 = v114;
    sub_1E1AF381C();
    v80 = sub_1E1AF370C();
    v40(v79, v67);
    v81 = v111;
    swift_beginAccess();
    *v81 = v80 & 1;
    type metadata accessor for Action();
    v3 = v63;
    sub_1E1AF381C();
    v82 = v126;
    v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v63, v126);
    v68(v63, v67);
    v84 = v121;
    swift_beginAccess();
    *v84 = v83;

    sub_1E1AF381C();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v3, v82);
    v121 = v68;
    v68(v3, v67);
    v86 = v96;
    swift_beginAccess();
    *v86 = v85;

    v87 = v116;
    (*(v115 + 16))(v116, v52, v67);
    v88 = v124;
    v89 = v117;
    v90 = v125;
    (*(v124 + 16))(v117, v82, v125);
    v91 = v123;
    v92 = Action.init(deserializing:using:)(v87, v89);
    if (!v91)
    {
      v3 = v92;
    }

    (*(v88 + 8))(v126, v90);
    (v121)(v52, v67);
    (*(v97 + 8))(v122, v108);
  }

  return v3;
}

uint64_t sub_1E18EE36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1E1AF37CC();
  v8 = v7;
  if (v7)
  {
    v9 = result;
  }

  else
  {
    a1 = 0;
    a2 = 0;
    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v8;
  return result;
}

uint64_t HttpAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HttpAction.method.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t HttpAction.method.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_method;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t HttpAction.headers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_headers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.body.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HttpAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit10HttpAction_body);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t HttpAction.isStoreRequest.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.isStoreRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_isStoreRequest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.needsAuthentication.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.needsAuthentication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsAuthentication;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.needsMediaToken.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.needsMediaToken.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_needsMediaToken;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.retryCount.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.retryCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_retryCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.disableCache.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.disableCache.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_disableCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E18EED58()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t HttpAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  v3 = OBJC_IVAR____TtC11AppStoreKit10HttpAction_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpAction.__deallocating_deinit()
{
  HttpAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E18EEFB0()
{
  result = qword_1EE1F2B38[0];
  if (!qword_1EE1F2B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F2B38);
  }

  return result;
}

unint64_t sub_1E18EF008()
{
  result = qword_1ECEBB118;
  if (!qword_1ECEBB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB118);
  }

  return result;
}

uint64_t type metadata accessor for HttpAction()
{
  result = qword_1EE1F8208;
  if (!qword_1EE1F8208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18EF0C0()
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

uint64_t sub_1E18EF1EC()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE216078);
  __swift_project_value_buffer(v4, qword_1EE216078);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t RemotePersonalizationAppStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RemotePersonalizationAppStateDataSource.delegate.modify(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C3A20;
}

uint64_t RemotePersonalizationAppStateDataSource.expectedAppStates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)()
{
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3488);
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3470);
  sub_1E1AF55EC();
  v1 = objc_allocWithZone(v0);
  v2 = RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(v6, v5, v4);

  return v2;
}

id RemotePersonalizationAppStateDataSource.init(bag:urlSession:process:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_1E1AF68DC();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v9);
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_accessQueue;
  v10 = sub_1E13006E4(0, &qword_1EE1E3430);
  v27[1] = "ccessAction";
  v27[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v35 = v11;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v29);
  *&v3[v28] = sub_1E1AF692C();
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds] = MEMORY[0x1E69E7CD0];
  v12 = v32;
  *&v3[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_bag] = v33;
  v13 = v31;
  *&v4[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_urlSession] = v31;
  *&v4[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_process] = v12;
  v34.receiver = v4;
  v34.super_class = ObjectType;

  v14 = v13;
  v15 = v12;
  v16 = objc_msgSendSuper2(&v34, sel_init);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  if (qword_1EE1E6DB0 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v18 selector:? name:? object:?];

  v20 = [v17 defaultCenter];
  v21 = *MEMORY[0x1E69597D8];
  v22 = objc_opt_self();
  v23 = v18;
  v24 = [v22 ams_sharedAccountStore];
  [v20 addObserver:v23 selector:sel_storeAccountDidChange name:v21 object:v24];

  v25 = [v17 defaultCenter];
  if (qword_1EE1E66E0 != -1)
  {
    swift_once();
  }

  [v25 addObserver:v23 selector:? name:? object:?];

  return v23;
}

id RemotePersonalizationAppStateDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*RemotePersonalizationAppStateDataSource.refreshData(completion:)(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t RemotePersonalizationAppStateDataSource.refreshData(for:completion:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

Swift::String_optional __swiftcall RemotePersonalizationAppStateDataSource.betaAppBundleVersion(adamId:)(AppStoreKit::AdamId adamId)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1E18EFED8()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CC0;
  v7 = v0;
  sub_1E1AF31FC();
  v12 = v6;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v10 = sub_1E18F3C18;
  v11 = v5;
  sub_1E1AF68FC();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1E18F0124(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x1E69E7CD0];

  v3 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x1E69E7CC8];
}

void sub_1E18F01F4(uint64_t a1, void *a2)
{
  v3 = sub_1E1AEF54C();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  *&v27 = 0x6573616863727570;
  *(&v27 + 1) = 0xE800000000000000;
  sub_1E1AF6F6C();
  if (!*(v4 + 16) || (v5 = sub_1E135FCF4(v32), (v6 & 1) == 0))
  {

    sub_1E134B88C(v32);
LABEL_9:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v4 + 56) + 32 * v5, &v34);
  sub_1E134B88C(v32);

  if (!*(&v35 + 1))
  {
LABEL_10:
    sub_1E1308058(&v34, &qword_1ECEB2DF0);
    return;
  }

  sub_1E13006E4(0, &qword_1EE1D25C0);
  if (swift_dynamicCast())
  {
    v7 = v33;
    v8 = [v33 itemID];
    v9 = [v8 stringValue];
    v10 = sub_1E1AF5DFC();
    v12 = v11;

    swift_beginAccess();
    sub_1E154E570(v10, v12, &v31);
    swift_endAccess();

    swift_beginAccess();

    sub_1E1496C84(v10, v12, &v27);

    v32[0] = v27;
    v32[1] = v28;
    v32[2] = v29;
    v32[3] = v30;
    sub_1E1308058(v32, &unk_1ECEB7B50);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = v10;
    v14 = inited + 32;
    *(inited + 40) = v12;
    sub_1E1498818(inited);
    swift_setDeallocating();
    sub_1E16C8A2C(v14);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    v16 = a2;

    v18 = sub_1E18F3808(v17, v16);
    if (*(v18 + 16))
    {
      sub_1E18F10A8(v18);

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = sub_1E18F3BFC;
      v20[4] = v15;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1E18F3BFC;
      *(v21 + 24) = v15;
      v22 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();
      v23 = sub_1E1AF68EC();
      *(&v28 + 1) = v22;
      *&v29 = MEMORY[0x1E69AB720];
      *&v27 = v23;
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {

      v24 = &v16[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        (*(v25 + 16))(MEMORY[0x1E69E7CC0], ObjectType, v25);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1E18F06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1E1AF320C();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEF55C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v15 = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B02CC0;
  v17 = v4;
  sub_1E1AF31FC();
  v26 = v16;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  v18 = v21;
  sub_1E1AF6EEC();
  v24 = v22;
  v25 = v14;
  sub_1E1AF68FC();

  return (*(v15 + 8))(v8, v18);
}

uint64_t sub_1E18F09A8(uint64_t a1, char *a2)
{
  v3 = sub_1E1AEF54C();
  if (!v3)
  {
    goto LABEL_28;
  }

  v4 = v3;
  v39 = 0x7364496D616461;
  v40 = 0xE700000000000000;
  sub_1E1AF6F6C();
  if (!*(v4 + 16) || (v5 = sub_1E135FCF4(v38), (v6 & 1) == 0))
  {

    sub_1E134B88C(v38);
LABEL_28:
    v41 = 0u;
    v42 = 0u;
    return sub_1E1308058(&v41, &qword_1ECEB2DF0);
  }

  sub_1E137A5C4(*(v4 + 56) + 32 * v5, &v41);
  sub_1E134B88C(v38);

  if (!*(&v42 + 1))
  {
    return sub_1E1308058(&v41, &qword_1ECEB2DF0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6970);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = v38[0];
    v9 = *(v38[0] + 16);
    v37 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_registeredAdamIds;
    result = swift_beginAccess();
    if (v9)
    {
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = (v8 + 32 + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        ++v10;
        v15 = *&a2[v37];
        if (*(v15 + 16))
        {
          sub_1E1AF762C();

          sub_1E1AF5F0C();
          v16 = sub_1E1AF767C();
          v17 = -1 << *(v15 + 32);
          v18 = v16 & ~v17;
          if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            while (1)
            {
              v20 = (*(v15 + 48) + 16 * v18);
              v21 = *v20 == v14 && v20[1] == v13;
              if (v21 || (sub_1E1AF74AC() & 1) != 0)
              {
                break;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_9;
          }

LABEL_20:
        }

        else
        {
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v11;
        if ((result & 1) == 0)
        {
          result = sub_1E135C028(0, *(v11 + 16) + 1, 1);
          v11 = v39;
        }

        v23 = *(v11 + 16);
        v22 = *(v11 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1E135C028((v22 > 1), v23 + 1, 1);
          v11 = v39;
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = v14;
        *(v24 + 40) = v13;
LABEL_9:
        if (v10 == v9)
        {
          goto LABEL_32;
        }
      }
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_32:
    swift_beginAccess();
    sub_1E19B92CC(v8);
    swift_endAccess();

    sub_1E13C49CC(v11);

    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = a2;

    v28 = sub_1E18F3808(v27, v26);
    if (*(v28 + 16))
    {
      sub_1E18F10A8(v28);

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = sub_1E18F3C28;
      v30[4] = v25;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1E18F3C28;
      *(v31 + 24) = v25;
      v32 = sub_1E13006E4(0, &qword_1EE1E3430);
      swift_retain_n();
      v33 = sub_1E1AF68EC();
      v38[3] = v32;
      v38[4] = MEMORY[0x1E69AB720];
      v38[0] = v33;
      sub_1E1AF57FC();

      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {

      v34 = &v26[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = *(v34 + 1);
        ObjectType = swift_getObjectType();
        (*(v35 + 16))(MEMORY[0x1E69E7CC0], ObjectType, v35);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1E18F0ED4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v2, ObjectType, v4);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E18F0FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1E1AEF55C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  v14 = a1;
  sub_1E18F06A0(v13, a4, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E18F10A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  if (qword_1EE1D2218 != -1)
  {
    swift_once();
  }

  sub_1E1AF52EC();
  sub_1E1AF531C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(a1 + 16);
    if (v16)
    {
      v26 = v13;
      v17 = sub_1E1545BF4(v16, 0);
      v18 = sub_1E1546A64(&v28, v17 + 4, v16, a1);
      v25 = a1;

      result = sub_1E1337ECC();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v20 = v26;
      v19 = v27;
      sub_1E18F1EA8(v17, v26);

      v21 = *(v19 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_urlSession);
      *(swift_allocObject() + 16) = v21;
      v22 = sub_1E1AF470C();
      v29 = v22;
      v30 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(&v28);
      v23 = v21;
      sub_1E1AF46FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08);
      sub_1E1302CD4(&qword_1EE1D27E0, &qword_1ECEB3A08);
      sub_1E1AF585C();

      __swift_destroy_boxed_opaque_existential_1(&v28);
      *(swift_allocObject() + 16) = v25;
      v29 = v22;
      v30 = MEMORY[0x1E69AB218];
      __swift_allocate_boxed_opaque_existential_0(&v28);

      sub_1E1AF46FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B38);
      v24 = sub_1E1AF57DC();

      (*(v11 + 8))(v20, v10);
      __swift_destroy_boxed_opaque_existential_1(&v28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48);
      v28 = MEMORY[0x1E69E7CD0];
      v24 = sub_1E1AF582C();
      (*(v11 + 8))(v13, v10);
    }

    return v24;
  }

  sub_1E1308058(v9, &unk_1ECEB4B60);
  if (qword_1ECEB15A0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF591C();
  __swift_project_value_buffer(v14, qword_1EE216078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6D48);
  v28 = MEMORY[0x1E69E7CD0];
  return sub_1E1AF582C();
}

uint64_t sub_1E18F16DC(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v24 = a4;
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = a2;
    v22 = *&v13[OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_accessQueue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v23 = v13;
    v15 = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v25 = v16;
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
    a3 = v15;
    v17 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v17);
    *(&v22 - 2) = sub_1E18F3B00;
    *(&v22 - 1) = v14;
    sub_1E1AF68FC();

    (*(v8 + 8))(v10, v7);
  }

  v18 = *(v11 + 16);
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = sub_1E1545BF4(*(v11 + 16), 0);
  v20 = sub_1E1546A64(&v25, v19 + 4, v18, v11);

  sub_1E1337ECC();
  if (v20 != v18)
  {
    __break(1u);
LABEL_6:
    v19 = MEMORY[0x1E69E7CC0];
  }

  a3(v19);
}

uint64_t sub_1E18F1A20(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);

  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 63) >> 6;
  v41 = v1;
  while (v5)
  {
LABEL_11:
    v15 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v16 = (*(v1 + 48) + ((v6 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_expectedAppStates;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v17;
      v24 = isUniquelyReferenced_nonNull_native;
      v44 = *&v20[v21];
      v25 = v44;
      *&v20[v21] = 0x8000000000000000;
      v42 = v18;
      v26 = v23;
      v27 = sub_1E15A47D8(v18, v23);
      v29 = v25[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_24;
      }

      v33 = v28;
      if (v25[3] < v32)
      {
        sub_1E168C478(v32, v24);
        v27 = sub_1E15A47D8(v42, v26);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v33)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (v24)
      {
        goto LABEL_17;
      }

      v39 = v27;
      sub_1E1417D08();
      v27 = v39;
      if (v33)
      {
LABEL_4:
        v8 = v27;

        v9 = v44;
        v10 = (v44[7] + (v8 << 6));
        v11 = v10[3];
        v13 = *v10;
        v12 = v10[1];
        v43[2] = v10[2];
        v43[3] = v11;
        v43[0] = v13;
        v43[1] = v12;
        *v10 = 0;
        *(v10 + 6) = 0x1000000000000000;
        sub_1E139CEA8(v43);
        goto LABEL_5;
      }

LABEL_18:
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v9[6] + 16 * v27);
      *v35 = v42;
      v35[1] = v26;
      v36 = (v9[7] + (v27 << 6));
      *v36 = 0;
      v36[6] = 0x1000000000000000;
      v37 = v9[2];
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_25;
      }

      v9[2] = v38;
LABEL_5:
      *&v20[v21] = v9;
      swift_endAccess();

      v1 = v41;
    }
  }

  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
    }

    v5 = *(v2 + 8 * v14);
    ++v6;
    if (v5)
    {
      v6 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E18F1CB8(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1ECEB15A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF591C();
  __swift_project_value_buffer(v3, qword_1EE216078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v7[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v7, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  return a2(0);
}

uint64_t sub_1E18F1EA8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43[0] = a1;
  v2 = sub_1E1AF5E5C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - v6;
  v8 = sub_1E1AF3D0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AEF3AC();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v44, v12, v17);
  sub_1E1AEF34C();
  sub_1E1AEF2EC();
  sub_1E1AEF2FC();
  v20 = *(v50 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_bag);
  v21 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  if (qword_1EE1E3130 != -1)
  {
    swift_once();
  }

  (*(v9 + 104))(v11, *MEMORY[0x1E69AAFD0], v8);
  v43[1] = v21;
  v44 = v20;
  sub_1E1AF52AC();
  (*(v9 + 8))(v11, v8);
  sub_1E1AF532C();
  (*(v5 + 8))(v7, v4);
  sub_1E1AEF30C();
  sub_1E13017E4(&unk_1F5C2DC90);
  sub_1E1308058(&unk_1F5C2DCB0, &unk_1ECEB9500);
  sub_1E1AEF32C();
  v22 = *(v43[0] + 16);
  if (v22)
  {
    v23 = (v43[0] + 40);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1E130C06C(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_1E130C06C((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v51[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E1302CD4(&qword_1EE1E34E0, &unk_1ECEB2D10);
  v30 = sub_1E1AF5D6C();
  v32 = v31;

  v51[0] = 1030972521;
  v51[1] = 0xE400000000000000;
  MEMORY[0x1E68FECA0](v30, v32);

  v33 = v45;
  sub_1E1AF5E4C();
  sub_1E1AF5E0C();

  (*(v46 + 8))(v33, v47);
  sub_1E1AEF38C();
  v34 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  swift_unknownObjectRelease();
  [v34 setIncludeClientVersions_];
  v35 = [objc_opt_self() ams_sharedAccountStore];
  v36 = [v35 ams_activeiTunesAccount];

  [v34 setAccount_];
  [v34 setClientInfo_];
  v37 = [objc_allocWithZone(MEMORY[0x1E698CB90]) init];
  [v34 setResponseDecoder_];

  [v34 setAnisetteType_];
  [v34 setMescalType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A00);
  v38 = sub_1E1AEF31C();
  v39 = [v34 requestByEncodingRequest:v38 parameters:0];

  sub_1E1AF587C();
  v51[3] = sub_1E1AF470C();
  v51[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v51);
  sub_1E1AF46FC();
  v40 = v49;
  v41 = sub_1E1AF57DC();

  (*(v48 + 8))(v19, v40);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v41;
}

uint64_t sub_1E18F2668(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A08);
  v3 = sub_1E1AEF31C();
  v4 = [a2 dataTaskPromiseWithRequest_];

  return sub_1E1AF587C();
}

void sub_1E18F26E4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  sub_1E1AEFD3C();

  v13 = sub_1E1AF36CC();
  if (v3)
  {
    if (qword_1ECEB15A0 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1EE216078);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = v19[1];
    v16 = v20;
    v21[3] = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
    sub_1E1AF38DC();
    sub_1E1308058(v21, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v18 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v19[-2] = v11;

    v18 = sub_1E18F3258(sub_1E18F3B24, &v19[-4], a2);
    (*(v8 + 8))(v11, v7);
  }

  *a3 = v18;
}

id RemotePersonalizationAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E18F2B88(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E18F2BF4(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit39RemotePersonalizationAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C8D6C;
}

uint64_t sub_1E18F2CFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1E1AF5A6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;

  sub_1E1AF381C();

  sub_1E1AF381C();
  sub_1E1AF374C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &qword_1ECEB1F90);
    v14 = 0;
  }

  else
  {
    v15 = v18;
    (*(v4 + 32))(v18, v2, v3);
    v14 = sub_1E1AF5A5C();
    (*(v4 + 8))(v15, v3);
  }

  v13(v12, v6);
  return v14 & 1;
}

uint64_t sub_1E18F2FE0()
{
  v0 = sub_1E1AF380C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v4 = sub_1E1AF37CC();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    if (v4 == 0x6573616863727570 && v6 == 0xE900000000000064)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1E1AF74AC();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_1E18F3130(void *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    v9 = sub_1E18F3668(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_1E18F31C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_1E18F34FC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E18F3258(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v6;
    v26 = &v24;
    MEMORY[0x1EEE9AC00](a1);
    v25 = &v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v7);
    v27 = 0;
    v8 = 0;
    v6 = a3 + 56;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a3 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = v17[1];
      v29[0] = *v17;
      v29[1] = v18;

      v19 = v28(v29);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_1E19B812C(v25, v24, v27, a3);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1E19B812C(v25, v24, v27, a3);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_1E18F31C8(v22, v6, a3, v28);

  result = MEMORY[0x1E6901640](v22, -1, -1);
  if (!v3)
  {
    return v23;
  }

  return result;
}

uint64_t sub_1E18F34FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v24 = a4;
  v21 = result;
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;

    v18 = v24(v23);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1E19B812C(v21, a2, v22, a3);
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

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}