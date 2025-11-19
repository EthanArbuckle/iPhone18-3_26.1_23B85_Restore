Swift::Void __swiftcall StoreProductManager.removeObserver(subscriptionGroupID:origin:)(Swift::String subscriptionGroupID, StoreKit::StoreKitViewOrigin origin)
{
  OUTLINED_FUNCTION_67();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v137 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v136 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  OUTLINED_FUNCTION_2_2(v15);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v120 - v17;
  v18 = *v5;
  v19 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v20 = sub_1B24D3E10();
  v22 = v21;
  OUTLINED_FUNCTION_278_0();
  sub_1B247A6B4(v9, v7, *(v3 + 120), &v142);
  if (v142 == 1)
  {
    v133 = v20;
    sub_1B256615C(&v142, &unk_1EB7D2CD0);
    swift_endAccess();
    OUTLINED_FUNCTION_338();
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592950);
    *&v142 = v9;
    *(&v142 + 1) = v7;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](0xD000000000000022, 0x80000001B2592970);
    v23 = sub_1B256E09C();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      OUTLINED_FUNCTION_21_3();
      *&v142 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_51_6(4.8752e-34);
      OUTLINED_FUNCTION_480(v25);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v140, v141, &v142);
      OUTLINED_FUNCTION_120();

      *(v3 + 4) = &v19[v3];
      OUTLINED_FUNCTION_135_2();
      v26 = OUTLINED_FUNCTION_376();
      v29 = sub_1B2519814(v26, v27, v28);

      *(v3 + 14) = v29;
      OUTLINED_FUNCTION_277_0(&dword_1B23EF000, v24, v23, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    else
    {
    }

    goto LABEL_103;
  }

  v138 = v9;
  v134 = v7;
  sub_1B244ADF4(&v142, v143);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {

LABEL_102:
    LOBYTE(v140) = v18;
    sub_1B25415D4(1, v20, v22, &v140);

    sub_1B25629C4(v143);
LABEL_103:
    OUTLINED_FUNCTION_45();
    return;
  }

  v121 = v11;
  v122 = v18;
  OUTLINED_FUNCTION_50_5();
  sub_1B256ED3C();
  v133 = v20;
  MEMORY[0x1B274AFC0](1);
  v30 = v134;

  v31 = v138;
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_351();
  v132 = v3;
  if (v32)
  {
    while (1)
    {
      OUTLINED_FUNCTION_205_0();
      if (v35)
      {
        OUTLINED_FUNCTION_280_0(v33);
        v35 = v35 && v34 == v30;
        if (v35)
        {
          break;
        }

        OUTLINED_FUNCTION_456();
        if (sub_1B256EB5C())
        {
          break;
        }
      }

      OUTLINED_FUNCTION_293_0();
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    swift_endAccess();
    v41 = v137;
    if (!v143[0])
    {
      goto LABEL_99;
    }
  }

  else
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *(v3 + 128);
    v38 = v139;
    *(v3 + 128) = 0x8000000000000000;
    v39 = v38[2];
    v40 = v38[3];

    if (v40 <= v39)
    {
      v31 = v138;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1B2560C10();
      }

      else
      {
        sub_1B2562770();
      }

      v38 = v139;
      sub_1B256ED3C();
      MEMORY[0x1B274AFC0](1);
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_131_2();
      OUTLINED_FUNCTION_351();
      if (v42)
      {
        v3 = 24;
        do
        {
          OUTLINED_FUNCTION_205_0();
          if (v35)
          {
            OUTLINED_FUNCTION_280_0(v43);
            if (v35 && v44 == v30)
            {
              goto LABEL_108;
            }

            OUTLINED_FUNCTION_456();
            if (sub_1B256EB5C())
            {
              goto LABEL_108;
            }
          }

          OUTLINED_FUNCTION_293_0();
        }

        while ((v46 & 1) != 0);
        OUTLINED_FUNCTION_283_0();
      }
    }

    else
    {
      v31 = v138;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B2561E44();
        v38 = v139;
      }
    }

    *(v38 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
    v47 = v38[6] + 24 * v7;
    *v47 = v31;
    *(v47 + 8) = v30;
    *(v47 + 16) = 1;
    v48 = v38[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    v41 = v137;
    if (v49)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v38[2] = v50;
    *(v3 + 128) = v38;
    swift_endAccess();

    if (!v143[0])
    {
      goto LABEL_99;
    }
  }

  v53 = 0;
  v54 = v51 + 56;
  v55 = 1 << *(v51 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v51 + 56);
  v58 = (v55 + 63) >> 6;
  v124 = "thing to clean up.";
  v123 = "Product with ID ";
  *&v52 = 136446466;
  v120 = v52;
  v129 = v22;
  v126 = v51 + 56;
  v125 = v58;
  v128 = v19;
  v127 = v51;
  if (v57)
  {
    goto LABEL_46;
  }

  do
  {
LABEL_42:
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v59 >= v58)
    {

LABEL_99:
      OUTLINED_FUNCTION_338();
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B25929F0);
      *&v142 = v31;
      *(&v142 + 1) = v30;
      sub_1B256E78C();
      OUTLINED_FUNCTION_75_0();
      MEMORY[0x1B2749D50](0xD00000000000002CLL);

      v109 = sub_1B256E08C();

      v110 = &v19[v3];
      v111 = sub_1B256D5CC();

      if (os_log_type_enabled(v111, v109))
      {
        v112 = OUTLINED_FUNCTION_21_3();
        *&v142 = OUTLINED_FUNCTION_20_4();
        *v112 = 136446466;
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_480(v113);
        OUTLINED_FUNCTION_94_0();
        sub_1B2519814(v140, v141, &v142);
        OUTLINED_FUNCTION_120();

        *(v112 + 4) = v110;
        OUTLINED_FUNCTION_439();
        v114 = OUTLINED_FUNCTION_50_0();
        v117 = sub_1B2519814(v114, v115, v116);

        *(v112 + 14) = v117;
        OUTLINED_FUNCTION_486(&dword_1B23EF000, v118, v119, "%{public}s%{public}s");
        OUTLINED_FUNCTION_95_0();
        v20 = v133;
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_63_0();

        OUTLINED_FUNCTION_283_0();
        LOBYTE(v18) = v122;
      }

      else
      {

        OUTLINED_FUNCTION_283_0();
        LOBYTE(v18) = v122;
        v20 = v133;
      }

      goto LABEL_102;
    }

    v57 = *(v54 + 8 * v59);
    ++v53;
  }

  while (!v57);
  v53 = v59;
  while (1)
  {
LABEL_46:
    v60 = (*(v51 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v57)))));
    v62 = *v60;
    v61 = v60[1];
    OUTLINED_FUNCTION_278_0();
    if (*(*(v3 + 112) + 16))
    {

      sub_1B2458898(v62, v61);
      if (v63)
      {
        OUTLINED_FUNCTION_3_38();
        v64 = v135;
        sub_1B255FE0C();
        v65 = v64;
        v66 = 0;
      }

      else
      {
        v64 = v135;
        v65 = OUTLINED_FUNCTION_59_1();
      }

      __swift_storeEnumTagSinglePayload(v65, v66, 1, v41);
    }

    else
    {
      v64 = v135;
      v67 = OUTLINED_FUNCTION_60_6();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v41);
    }

    v57 &= v57 - 1;
    v70 = OUTLINED_FUNCTION_59_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70, v71, v41);
    v22 = v136;
    if (EnumTagSinglePayload)
    {
      sub_1B256615C(v64, &qword_1EB7CFEA0);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_3_38();
      OUTLINED_FUNCTION_379();
      sub_1B255FE0C();
      sub_1B256615C(v64, &qword_1EB7CFEA0);
      swift_endAccess();
      if (swift_weakLoadStrong())
      {

        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_380();
LABEL_68:

        v19 = v128;
        goto LABEL_95;
      }

      v85 = *(v22 + *(v41 + 24));
      v86 = *(v85 + 16);
      v130 = v85;
      v87 = v85 + 32;
      v131 = -v86;
      v22 = -1;
      do
      {
        v88 = v131 + v22;
        if (v131 + v22 == -1)
        {
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          OUTLINED_FUNCTION_283_0();
          goto LABEL_54;
        }

        if (++v22 >= *(v130 + 16))
        {
          goto LABEL_105;
        }

        v89 = v87 + 8;
        v3 = v62;
        sub_1B24C5C14();
        Strong = swift_weakLoadStrong();
        sub_1B256615C(&v140, &qword_1EB7D0460);
        v87 = v89;
        v31 = v138;
      }

      while (!Strong);

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      v22 = v129;
      v3 = v132;
      v30 = v134;
      v41 = v137;
      if (v88 != -1)
      {
        goto LABEL_68;
      }
    }

LABEL_54:
    OUTLINED_FUNCTION_50_5();
    v73 = *(v3 + 128);
    sub_1B256ED3C();
    MEMORY[0x1B274AFC0](0);
    sub_1B256DA7C();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_341();
    if (((*(v73 + 56 + v75) >> v3) & 1) == 0)
    {
      break;
    }

    v76 = ~v74;
    v22 = *(v73 + 48);
    while (1)
    {
      v77 = v22 + 24 * v3;
      if ((*(v77 + 16) & 1) == 0)
      {
        v78 = *v77 == v62 && *(v77 + 8) == v61;
        if (v78 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v3 = (v3 + 1) & v76;
      OUTLINED_FUNCTION_155_1();
      if (((v79 >> v3) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    sub_1B24D0BE0();
    OUTLINED_FUNCTION_380();
    OUTLINED_FUNCTION_283_0();
    v31 = v138;
LABEL_91:
    swift_endAccess();
    sub_1B24D0BE8();
    OUTLINED_FUNCTION_338();
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000010, v124 | 0x8000000000000000);
    *&v142 = v31;
    *(&v142 + 1) = v134;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](0xD00000000000002CLL, v123 | 0x8000000000000000);
    v101 = v140;
    v102 = v141;

    v103 = sub_1B256E08C();

    v104 = sub_1B256D5CC();

    if (os_log_type_enabled(v104, v103))
    {
      v22 = OUTLINED_FUNCTION_21_3();
      v105 = OUTLINED_FUNCTION_20_4();
      v131 = v101;
      *&v142 = v105;
      *v22 = v120;
      v140 = 91;
      v141 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v133, v129);
      OUTLINED_FUNCTION_94_0();
      v106 = v141;
      sub_1B2519814(v140, v141, &v142);
      OUTLINED_FUNCTION_28_12();
      *(v22 + 4) = v3;
      OUTLINED_FUNCTION_283_0();
      OUTLINED_FUNCTION_368();
      v107 = OUTLINED_FUNCTION_459();
      sub_1B2519814(v107, v102, v108);
      OUTLINED_FUNCTION_269_0();

      *(v22 + 14) = v106;
      v31 = v138;
      OUTLINED_FUNCTION_404(&dword_1B23EF000, v104, v103, "%{public}s%{public}s");
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_380();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v19 = v128;
    v30 = v134;
    v41 = v137;
LABEL_95:
    v51 = v127;
    v54 = v126;
    v58 = v125;
    if (!v57)
    {
      goto LABEL_42;
    }
  }

LABEL_63:
  v80 = v132;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *(v80 + 128);
  v82 = v139;
  *(v80 + 128) = 0x8000000000000000;
  v83 = v82[2];
  v84 = v82[3];

  if (v84 > v83)
  {
    OUTLINED_FUNCTION_380();
    v31 = v138;
    if ((v81 & 1) == 0)
    {
      sub_1B2561E44();
      v82 = v139;
    }

    goto LABEL_89;
  }

  v31 = v138;
  if (v81)
  {
    sub_1B2560C10();
  }

  else
  {
    sub_1B2562770();
  }

  v82 = v139;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_341();
  if (((*(v82 + v92 + 56) >> v3) & 1) == 0)
  {
LABEL_88:
    OUTLINED_FUNCTION_380();
LABEL_89:
    OUTLINED_FUNCTION_378();
    OUTLINED_FUNCTION_336_0(v82 + v97);
    v98 = v82[6] + 24 * v3;
    *v98 = v62;
    *(v98 + 8) = v61;
    *(v98 + 16) = 0;
    v99 = v82[2];
    v49 = __OFADD__(v99, 1);
    v100 = v99 + 1;
    if (v49)
    {
      goto LABEL_106;
    }

    v82[2] = v100;
    OUTLINED_FUNCTION_283_0();
    *(v3 + 128) = v82;
    goto LABEL_91;
  }

  v93 = ~v91;
  v22 = v82[6];
  while (1)
  {
    v94 = v22 + 24 * v3;
    if ((*(v94 + 16) & 1) == 0)
    {
      v95 = *v94 == v62 && *(v94 + 8) == v61;
      if (v95 || (sub_1B256EB5C() & 1) != 0)
      {
        break;
      }
    }

    v3 = (v3 + 1) & v93;
    OUTLINED_FUNCTION_378();
    if (((*(v82 + v96 + 56) >> v3) & 1) == 0)
    {
      goto LABEL_88;
    }
  }

LABEL_108:
  sub_1B256EC8C();
  __break(1u);
}

void StoreProductManager.observer(for:origin:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_105_2();
  v121 = type metadata accessor for StoreProductManager.SingleObserver.Storage(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_5(v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  OUTLINED_FUNCTION_2_2(v11);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v129 = v119 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_5(v119 - v15);
  v125 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v130 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_313();
  v123 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8_5(v119 - v20);
  v21 = type metadata accessor for Product();
  v22 = OUTLINED_FUNCTION_2_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_5(v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  v26 = OUTLINED_FUNCTION_2_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_313();
  v128 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v119 - v29;
  v133 = type metadata accessor for StoreProductManager.CachedProduct(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v131 = v33 - v32;
  v134 = *v4;
  v132 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v135 = sub_1B24D3E10();
  v35 = v34;
  OUTLINED_FUNCTION_50_5();
  v36 = *(v2 + 128);
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  v37 = v0;
  v136 = v6;
  sub_1B256DA7C();
  sub_1B256ED7C();
  v38 = v36 + 56;
  OUTLINED_FUNCTION_25_15();
  if ((*(v36 + 56 + v40) >> v6))
  {
    v41 = ~v39;
    v42 = *(v36 + 48);
    while (1)
    {
      v43 = v42 + 24 * v6;
      if ((*(v43 + 16) & 1) == 0)
      {
        v44 = *v43 == v37 && *(v43 + 8) == v136;
        if (v44 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v41;
      OUTLINED_FUNCTION_220_0();
      if (((*(v38 + v45) >> v6) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = *(v2 + 128);
    *(v2 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B2561E44();
    }

    sub_1B25637A0(v6);
    *(v2 + 128) = v137;
    OUTLINED_FUNCTION_326_0();
    sub_1B24D0BE8();
  }

LABEL_14:
  swift_endAccess();
  LOBYTE(v137) = v134;
  v47 = v135;
  v48 = OUTLINED_FUNCTION_136();
  sub_1B25456E0(v48, v49, v50);
  OUTLINED_FUNCTION_278_0();
  v51 = v37;
  v52 = v136;
  sub_1B247A5F8(v37, v136, *(v2 + 112), v30);
  v53 = v133;
  OUTLINED_FUNCTION_268_0(v30, 1, v133);
  if (!v44)
  {
    OUTLINED_FUNCTION_2_40();
    v63 = v131;
    sub_1B25636F8();
    swift_endAccess();
    v119[1] = *(v53 + 20);
    Strong = swift_weakLoadStrong();
    v127 = v2;
    v120 = v35;
    if (Strong)
    {
      v128 = Strong;
      OUTLINED_FUNCTION_142_1();
      sub_1B256E4FC();
      OUTLINED_FUNCTION_297_0();
      MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B2592A50);
      v139 = v37;
      v140 = v52;
      OUTLINED_FUNCTION_384();
      v65 = v137;
      v66 = v138;

      v67 = sub_1B256E08C();

      v68 = sub_1B256D5CC();

      if (os_log_type_enabled(v68, v67))
      {
        OUTLINED_FUNCTION_21_3();
        v139 = OUTLINED_FUNCTION_35_6();
        *v52 = 136446466;
        OUTLINED_FUNCTION_98_4();
        MEMORY[0x1B2749D50](v135, v35);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_28_12();
        *(v52 + 4) = v63;
        OUTLINED_FUNCTION_233_0();
        v70 = sub_1B2519814(v65, v66, v69);

        *(v52 + 14) = v70;
        OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v71, v67, "%{public}s%{public}s");
        OUTLINED_FUNCTION_23_11();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_7_12();

        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for StoreProductManager.SingleObserver(0);
      OUTLINED_FUNCTION_512();
      v83 = sub_1B255E500();
      OUTLINED_FUNCTION_50_5();
      v84 = sub_1B253EBAC(&v137);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v53);
      v128 = v83;
      if (!EnumTagSinglePayload)
      {
        swift_weakAssign();
      }

      (v84)(&v137, 0);
      swift_endAccess();
      OUTLINED_FUNCTION_142_1();
      sub_1B256E4FC();
      OUTLINED_FUNCTION_297_0();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_515();
      v139 = v37;
      v140 = v136;
      OUTLINED_FUNCTION_384();
      MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592A30);

      v87 = sub_1B256E08C();

      v88 = &v132[v127];
      v68 = sub_1B256D5CC();

      if (os_log_type_enabled(v68, v87))
      {
        OUTLINED_FUNCTION_21_3();
        v139 = OUTLINED_FUNCTION_35_6();
        *v83 = 136446466;
        OUTLINED_FUNCTION_98_4();
        MEMORY[0x1B2749D50](v135, v35);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_228_0();
        OUTLINED_FUNCTION_28_12();
        *(v83 + 4) = v63;
        OUTLINED_FUNCTION_233_0();
        v89 = OUTLINED_FUNCTION_320_0();
        sub_1B2519814(v89, v90, v91);
        OUTLINED_FUNCTION_269_0();

        *(v83 + 14) = v88;
        OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v92, v87, "%{public}s%{public}s");
        OUTLINED_FUNCTION_23_11();
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_7_12();

        goto LABEL_28;
      }
    }

LABEL_28:

    v93 = v129;
    sub_1B24C5C14();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    OUTLINED_FUNCTION_268_0(v93, 1, v94);
    if (v44)
    {
      sub_1B256615C(v93, &qword_1EB7D2CD8);
    }

    else
    {
      v95 = *(v94 + 48);
      v96 = v124;
      v97 = *(v124 + 48);
      v98 = v122;
      sub_1B25636F8();
      v99 = v130;
      v100 = *(v130 + 32);
      v101 = v98 + v97;
      v102 = v125;
      v100(v101, v93 + v95, v125);
      v103 = *(v96 + 48);
      sub_1B25636F8();
      v100(v126, v98 + v103, v102);
      sub_1B256D34C();
      v104 = sub_1B256D2BC();
      v105 = v99 + 8;
      v106 = *(v99 + 8);
      v107 = OUTLINED_FUNCTION_28_1();
      v106(v107);
      if (v104)
      {
        v130 = v105;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          OUTLINED_FUNCTION_5_32();
          OUTLINED_FUNCTION_459();
          sub_1B255FE0C();
          swift_storeEnumTagMultiPayload();
          sub_1B2545740();
        }

        OUTLINED_FUNCTION_142_1();
        sub_1B256E4FC();
        OUTLINED_FUNCTION_297_0();
        v111 = OUTLINED_FUNCTION_262_0();
        MEMORY[0x1B2749D50](v111);
        v139 = v37;
        v140 = v136;
        OUTLINED_FUNCTION_384();
        v112 = sub_1B256E08C();
        v113 = v120;

        v114 = &v132[v127];
        v115 = sub_1B256D5CC();

        if (os_log_type_enabled(v115, v112))
        {
          OUTLINED_FUNCTION_21_3();
          v139 = OUTLINED_FUNCTION_35_6();
          *v102 = 136446466;
          OUTLINED_FUNCTION_98_4();
          MEMORY[0x1B2749D50](v135, v113);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_228_0();
          OUTLINED_FUNCTION_371();

          *(v102 + 4) = v113;
          OUTLINED_FUNCTION_233_0();
          v116 = OUTLINED_FUNCTION_35_0();
          sub_1B2519814(v116, v117, v118);
          OUTLINED_FUNCTION_200_1();

          *(v102 + 14) = v114;
          _os_log_impl(&dword_1B23EF000, v115, v112, "%{public}s%{public}s", v102, 0x16u);
          OUTLINED_FUNCTION_100_2();
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_7_12();

          (v106)(v126, v125);
        }

        else
        {

          (v106)(v126, v102);
        }

        OUTLINED_FUNCTION_1_44();
        OUTLINED_FUNCTION_459();
        sub_1B2563750();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        goto LABEL_41;
      }

      v108 = OUTLINED_FUNCTION_157_0();
      v106(v108);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
    }

    OUTLINED_FUNCTION_210_0();
    sub_1B254BC5C(v37, v136, v109, 0, v110, v120, v134);

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    goto LABEL_41;
  }

  sub_1B256615C(v30, &qword_1EB7CFEA0);
  swift_endAccess();
  OUTLINED_FUNCTION_142_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_515();
  v139 = v37;
  v140 = v52;
  OUTLINED_FUNCTION_384();
  v54 = v137;
  v55 = v138;

  v56 = sub_1B256E08C();

  v57 = &v132[v2];
  v58 = sub_1B256D5CC();

  if (os_log_type_enabled(v58, v56))
  {
    OUTLINED_FUNCTION_21_3();
    LODWORD(v132) = v56;
    v139 = OUTLINED_FUNCTION_35_6();
    *v56 = 136446466;
    OUTLINED_FUNCTION_98_4();
    v59 = OUTLINED_FUNCTION_136();
    MEMORY[0x1B2749D50](v59);
    OUTLINED_FUNCTION_94_0();
    v60 = OUTLINED_FUNCTION_228_0();

    *(v56 + 4) = v60;
    v47 = v135;
    OUTLINED_FUNCTION_233_0();
    sub_1B2519814(v54, v55, v61);
    OUTLINED_FUNCTION_399();
    *(v56 + 14) = v57;
    OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v62, v132, "%{public}s%{public}s");
    OUTLINED_FUNCTION_23_11();
    v51 = v37;
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_7_12();
  }

  else
  {
  }

  type metadata accessor for StoreProductManager.SingleObserver(0);
  OUTLINED_FUNCTION_512();
  sub_1B255E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
  v72 = v128;
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  v77 = v133;
  swift_weakInit();
  *(v72 + *(v77 + 24)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_188_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  OUTLINED_FUNCTION_50_5();
  v81 = v136;

  sub_1B253F7E4(v72, v51, v81);
  swift_endAccess();
  OUTLINED_FUNCTION_210_0();
  sub_1B254BC5C(v51, v81, v82, 0, v47, v35, v134);

LABEL_41:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B25456E0(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = *a3;
  v5 = v8;
  sub_1B2559E70(&v8);
  sub_1B255A0C8();
  v7 = v5;
  return sub_1B25415D4(2, a1, a2, &v7);
}

uint64_t sub_1B2545740()
{
  v0 = OUTLINED_FUNCTION_105_2();
  v1 = type metadata accessor for StoreProductManager.SingleObserver.Storage(v0);
  v2 = OUTLINED_FUNCTION_2_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_41_1();
  sub_1B255FE0C();

  OUTLINED_FUNCTION_117_0();
  sub_1B256D65C();
  return sub_1B2563750();
}

uint64_t StoreProductManager.observer(subscriptionGroupID:origin:)()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  *(v1 + 448) = v4;
  *(v1 + 456) = v0;
  *(v1 + 440) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  OUTLINED_FUNCTION_2_2(v6);
  *(v1 + 464) = OUTLINED_FUNCTION_250();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  OUTLINED_FUNCTION_2_2(v7);
  *(v1 + 472) = OUTLINED_FUNCTION_250();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE0);
  *(v1 + 480) = v8;
  OUTLINED_FUNCTION_2_2(v8);
  *(v1 + 488) = OUTLINED_FUNCTION_250();
  v9 = sub_1B256D36C();
  *(v1 + 496) = v9;
  OUTLINED_FUNCTION_26_7(v9);
  *(v1 + 504) = v10;
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  v11 = type metadata accessor for Product();
  OUTLINED_FUNCTION_26_7(v11);
  *(v1 + 528) = v12;
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = *v3;
  v13 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B25459CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10, __int128 a11, unint64_t a12, uint64_t a13, Class a14, void (**a15)(char *, char *, uint64_t), Class a16, uint64_t a17, uint64_t a18, uint64_t a19, Class a20, uint64_t a21, unint64_t a22, uint64_t a23, Class a24, Class a25, Class a26, void (**a27)(Class, uint64_t), uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, NSObject *a33, objc_class *a34, objc_class *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void (**a43)(void, void), uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, NSObject *a53, uint64_t a54, uint64_t a55)
{
  OUTLINED_FUNCTION_478();
  a54 = v57;
  a55 = v58;
  a53 = v55;
  isa = v55[56].isa;
  v59 = v55[57].isa;
  v61 = v55[55].isa;
  v202 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v62 = sub_1B24D3E10();
  v204 = v63;
  OUTLINED_FUNCTION_50_5();
  v203 = v59;
  sub_1B256ED3C();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_69();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_18_16();
  if (v65)
  {
    v66 = ~v64;
    while (1)
    {
      OUTLINED_FUNCTION_205_0();
      if (v68)
      {
        v68 = *v67 == v55[55].isa && v67[1] == isa;
        if (v68 || (sub_1B256EB5C() & 1) != 0)
        {
          break;
        }
      }

      v61 = (v61 + 1) & v66;
      OUTLINED_FUNCTION_97_6();
      if ((v69 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v56 = v203;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a34 = *(v203 + 128);
    *(v203 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_78:
      sub_1B2561E44();
    }

    sub_1B25637A0(v61);
    *(v56 + 128) = a34;
    OUTLINED_FUNCTION_13_5();
    sub_1B24D0BE8();
  }

LABEL_14:
  v201 = isa;
  OUTLINED_FUNCTION_365();
  v71 = v55[69].isa;
  swift_endAccess();
  LOBYTE(a34) = v71;
  v72 = v204;
  sub_1B25456E0(v62, v204, &a34);
  OUTLINED_FUNCTION_278_0();
  v73 = OUTLINED_FUNCTION_28_1();
  sub_1B247A6B4(v73, v74, v75, v76);
  if (v55[26].isa == 1)
  {
    v77 = v62;
    v78 = v55;
    v79 = v55[56].isa;
    v80 = v78[55].isa;
    sub_1B256615C(&v78[26], &unk_1EB7D2CD0);
    swift_endAccess();
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v81 = a35;
    v78[28].isa = a34;
    v78[29].isa = v81;
    v82 = v78 + 28;
    OUTLINED_FUNCTION_515();
    v78[30].isa = v80;
    v78[31].isa = v79;
    v83 = v78;
    sub_1B256E78C();
    v84 = v78[28].isa;
    v85 = v83[29].isa;

    sub_1B256E08C();
    OUTLINED_FUNCTION_514();

    v86 = v204;
    v87 = OUTLINED_FUNCTION_406();

    if (os_log_type_enabled(v87, v80))
    {
      v88 = OUTLINED_FUNCTION_21_3();
      v203 = v84;
      a43 = OUTLINED_FUNCTION_20_4();
      *v88 = 136446466;
      OUTLINED_FUNCTION_15_22();
      v89 = v77;
      MEMORY[0x1B2749D50](v77, v204);
      OUTLINED_FUNCTION_94_0();
      v90 = OUTLINED_FUNCTION_127_1();

      *(v88 + 4) = v90;
      OUTLINED_FUNCTION_368();
      sub_1B2519814(v84, v85, &a43);
      OUTLINED_FUNCTION_269_0();

      *(v88 + 14) = v82;
      OUTLINED_FUNCTION_404(&dword_1B23EF000, v87, v80, "%{public}s%{public}s");
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      v86 = v204;
      OUTLINED_FUNCTION_11_4();
    }

    else
    {

      v89 = v77;
    }

    v98 = v83[56].isa;
    v99 = v83[55].isa;
    v100 = v83[69].isa;
    type metadata accessor for StoreProductManager.SubscriptionGroupObserver(0);
    OUTLINED_FUNCTION_512();
    sub_1B255F36C();
    v83[32].isa = 0;
    swift_weakInit();
    OUTLINED_FUNCTION_50_5();

    sub_1B253F70C(&v83[32].isa, v99, v98);
    swift_endAccess();
    sub_1B254BF28(v99, v201, 1, v89, v86, v100);

    goto LABEL_74;
  }

  sub_1B244ADF4(&v55[26], &v55[24]);
  swift_endAccess();
  Strong = swift_weakLoadStrong();
  v93 = v55[55].isa;
  v92 = v55[56].isa;
  a21 = Strong;
  a19 = v62;
  if (!Strong)
  {
    type metadata accessor for StoreProductManager.SubscriptionGroupObserver(0);
    OUTLINED_FUNCTION_512();
    v101 = sub_1B255F36C();
    OUTLINED_FUNCTION_50_5();
    v102 = OUTLINED_FUNCTION_35_0();
    v104 = sub_1B253EC24(v102, v103, v92);
    if (*v105 != 1)
    {
      swift_weakAssign();
    }

    a21 = v101;
    (v104)(&v55[2], 0);
    v107 = v55[55].isa;
    v106 = v55[56].isa;
    swift_endAccess();
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v108 = a35;
    v55[34].isa = a34;
    v55[35].isa = v108;
    OUTLINED_FUNCTION_515();
    v55[36].isa = v107;
    v55[37].isa = v106;
    sub_1B256E78C();
    MEMORY[0x1B2749D50](v56 - 5, 0x80000001B2592A30);
    v72 = v204;

    v96 = sub_1B256E08C();

    v95 = &v202[v203];
    v97 = sub_1B256D5CC();

    if (os_log_type_enabled(v97, v96))
    {
      goto LABEL_25;
    }

LABEL_26:

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_103_3();
  sub_1B256E4FC();
  v94 = a35;
  v55[50].isa = a34;
  v55[51].isa = v94;
  v95 = &v55[50];
  MEMORY[0x1B2749D50](v56 + 4, 0x80000001B2592A50);
  v55[52].isa = v93;
  v55[53].isa = v92;
  sub_1B256E78C();

  v96 = sub_1B256E08C();

  v97 = OUTLINED_FUNCTION_406();

  if (!os_log_type_enabled(v97, v96))
  {
    goto LABEL_26;
  }

LABEL_25:
  OUTLINED_FUNCTION_21_3();
  v56 = OUTLINED_FUNCTION_3_23();
  a43 = v56;
  *v72 = 136446466;
  OUTLINED_FUNCTION_15_22();
  MEMORY[0x1B2749D50](a19, v204);
  OUTLINED_FUNCTION_94_0();
  v109 = OUTLINED_FUNCTION_127_1();

  *(v72 + 4) = v109;
  OUTLINED_FUNCTION_207_0();
  v110 = OUTLINED_FUNCTION_265_0();
  sub_1B2519814(v110, v111, v112);
  OUTLINED_FUNCTION_269_0();

  *(v72 + 14) = v95;
  OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v97, v96, "%{public}s%{public}s");
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_11_4();
  v72 = v204;
  OUTLINED_FUNCTION_11_4();
LABEL_27:

  v113 = v201;
  v114 = v55[24].isa;
  if (v114)
  {
    a20 = v55[68].isa;
    a14 = v55[66].isa;
    v61 = v55[63].isa;
    a16 = v55[60].isa;
    a17 = v55[57].isa;
    OUTLINED_FUNCTION_50_5();
    swift_bridgeObjectRetain_n();
    sub_1B25639BC(v114, sub_1B25661E4, 0);
    swift_endAccess();

    sub_1B2448D30();
    a29 = v115;
    v62 = 0;
    isa = v114 + 56;
    OUTLINED_FUNCTION_73_2();
    v118 = v117 & v116;
    OUTLINED_FUNCTION_231_0();
    v120 = v119 >> 6;
    a15 = (v61 + 32);
    a27 = (v61 + 8);
    a22 = 0x80000001B258FD90;
    a10 = " cached product(s) for ";
    *&v121 = 136446466;
    a11 = v121;
    a12 = v119 >> 6;
    a33 = v55;
    a18 = v114;
    a13 = v114 + 56;
    if (v118)
    {
      goto LABEL_33;
    }

    do
    {
LABEL_29:
      v122 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
        goto LABEL_78;
      }

      if (v122 >= v120)
      {

        goto LABEL_60;
      }

      v118 = *(isa + 8 * v122);
      ++v62;
    }

    while (!v118);
    v62 = v122;
    while (1)
    {
LABEL_33:
      OUTLINED_FUNCTION_182_1();
      v56 = *(v123 + 8);
      v124 = a17;
      OUTLINED_FUNCTION_278_0();
      OUTLINED_FUNCTION_361();
      if (v125)
      {

        v126 = OUTLINED_FUNCTION_458();
        sub_1B2458898(v126, v127);
        if (v128)
        {
          v124 = type metadata accessor for StoreProductManager.CachedProduct(0);
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_3_38();
          sub_1B255FE0C();
        }

        else
        {
          type metadata accessor for StoreProductManager.CachedProduct(0);
          OUTLINED_FUNCTION_154();
        }

        OUTLINED_FUNCTION_121_2();
        __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
      }

      else
      {
        type metadata accessor for StoreProductManager.CachedProduct(0);
        OUTLINED_FUNCTION_154();
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v129, v130, v131, a17);
      }

      v136 = v55[58].isa;
      type metadata accessor for StoreProductManager.CachedProduct(0);
      v137 = OUTLINED_FUNCTION_164_1();
      if (__swift_getEnumTagSinglePayload(v137, v138, v124))
      {
        sub_1B256615C(v136, &qword_1EB7CFEA0);
        swift_endAccess();

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_14_3();
      sub_1B24C5C14();
      sub_1B256615C(v136, &qword_1EB7CFEA0);
      swift_endAccess();

      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
      v140 = OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_268_0(v140, v141, v139);
      if (v68)
      {
        v166 = v55[59].isa;

        sub_1B256615C(v166, &qword_1EB7D2CD8);
        goto LABEL_59;
      }

      a24 = v55[68].isa;
      a25 = v55[65].isa;
      a26 = v55[64].isa;
      v142 = v55[61].isa;
      v56 = v55[62].isa;
      v143 = v55[59].isa;
      a23 = *(v139 + 48);
      v144 = *(a16 + 12);
      sub_1B25636F8();
      v145 = *a15;
      (*a15)(v142 + v144, v143 + a23, v56);
      v146 = *(a16 + 12);
      sub_1B25636F8();
      v145(a25, v142 + v146, v56);
      sub_1B256D34C();
      OUTLINED_FUNCTION_41_0();
      v147 = sub_1B256D2BC();
      v148 = *a27;
      (*a27)(a26, v56);
      if ((v147 & 1) == 0)
      {
        break;
      }

      v149 = *(a20 + 8);
      v150 = *(a20 + 9);
      OUTLINED_FUNCTION_365();
      v151 = v149 == v56 + 1 && 0x80000001B258FD90 == v150;
      v55 = a33;
      v114 = a18;
      if (!v151)
      {
        OUTLINED_FUNCTION_14_3();
        if ((sub_1B256EB5C() & 1) == 0)
        {
          v152 = a33[56].isa;
          v153 = a33[55].isa;
          OUTLINED_FUNCTION_103_3();
          sub_1B256E4FC();
          v154 = a35;
          a33[46].isa = a34;
          a33[47].isa = v154;
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50]();
          OUTLINED_FUNCTION_359();
          v155 = OUTLINED_FUNCTION_14_3();
          MEMORY[0x1B2749D50](v155);
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50](0x203A64692820, 0xE600000000000000);
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50]();
          OUTLINED_FUNCTION_359();
          MEMORY[0x1B2749D50](0x746365707865202CLL, 0xEC000000203A6465);
          a33[48].isa = v153;
          a33[49].isa = v152;
          v55 = a33;
          sub_1B256E78C();
          MEMORY[0x1B2749D50](41, 0xE100000000000000);
          v156 = sub_1B256E0BC();

          OUTLINED_FUNCTION_406();
          OUTLINED_FUNCTION_154();

          if (os_log_type_enabled(a33 + 46, v156))
          {
            v56 = OUTLINED_FUNCTION_21_3();
            v157 = OUTLINED_FUNCTION_20_4();
            a34 = v157;
            *v56 = a11;
            *(v56 + 4) = OUTLINED_FUNCTION_75_2(v157, v158, &a34);
            OUTLINED_FUNCTION_368();
            v159 = OUTLINED_FUNCTION_157_0();
            v162 = sub_1B2519814(v159, v160, v161);

            *(v56 + 14) = v162;
            OUTLINED_FUNCTION_404(&dword_1B23EF000, a33 + 46, v156, "%{public}s%{public}s");
            OUTLINED_FUNCTION_100_2();
            v114 = a18;
            OUTLINED_FUNCTION_11_4();
            OUTLINED_FUNCTION_365();
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }
        }
      }

      OUTLINED_FUNCTION_5_32();
      sub_1B255FE0C();
      v164 = *(a29 + 16);
      v163 = *(a29 + 24);
      if (v164 >= v163 >> 1)
      {
        OUTLINED_FUNCTION_109_4(v163);
        sub_1B2448D30();
        a29 = v165;
      }

      v118 &= v118 - 1;
      v61 = v55[68].isa;
      v148(v55[65].isa, v55[62].isa);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      *(a29 + 16) = v164 + 1;
      OUTLINED_FUNCTION_4_27();
      sub_1B25636F8();
      v120 = a12;
      isa = a13;
      if (!v118)
      {
        goto LABEL_29;
      }
    }

    v55 = a33;
    v148(a33[65].isa, a33[62].isa);
    v114 = a18;

    OUTLINED_FUNCTION_1_44();
    sub_1B2563750();
LABEL_59:
    OUTLINED_FUNCTION_365();
LABEL_60:
    v168 = v55[55].isa;
    v167 = v55[56].isa;
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v169 = a35;
    v55[38].isa = a34;
    v55[39].isa = v169;
    MEMORY[0x1B2749D50](0x20646E756F46, 0xE600000000000000);
    v170 = *(a29 + 16);
    v55[54].isa = v170;
    v171 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v171);

    MEMORY[0x1B2749D50](v56 - 3, 0x80000001B2592A70);
    v55[40].isa = v168;
    v55[41].isa = v167;
    sub_1B256E78C();
    v172 = v55[38].isa;
    v173 = v55[39].isa;

    v174 = sub_1B256E08C();

    v175 = OUTLINED_FUNCTION_406();

    if (os_log_type_enabled(v175, v174))
    {
      OUTLINED_FUNCTION_21_3();
      a27 = OUTLINED_FUNCTION_3_23();
      a43 = a27;
      *v168 = a11;
      OUTLINED_FUNCTION_15_22();
      MEMORY[0x1B2749D50](a19, v204);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_127_1();
      LODWORD(a26) = v174;
      OUTLINED_FUNCTION_28_12();
      *(v168 + 4) = v114;
      OUTLINED_FUNCTION_207_0();
      v176 = sub_1B2519814(v172, v173, &a43);

      *(v168 + 14) = v176;
      OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v175, v174, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_10_7();
    }

    else
    {
    }

    v177 = *(v114 + 16);

    v68 = v170 == v177;
    v72 = v204;
    v113 = v201;
    if (!v68)
    {

      goto LABEL_67;
    }

    if (swift_weakLoadStrong())
    {
    }

    else
    {
      a34 = a29;
      LOBYTE(a35) = 1;
      sub_1B2546BD4();
    }

    v178 = v55;
    v179 = v55[56].isa;
    v180 = v178[55].isa;
    OUTLINED_FUNCTION_103_3();
    sub_1B256E4FC();
    v181 = a35;
    v178[42].isa = a34;
    v178[43].isa = v181;
    v182 = OUTLINED_FUNCTION_262_0();
    v183 = v178 + 42;
    MEMORY[0x1B2749D50](v182);
    v178[44].isa = v180;
    v178[45].isa = v179;
    v55 = v178;
    sub_1B256E78C();
    v184 = sub_1B256E08C();

    v185 = OUTLINED_FUNCTION_406();

    if (os_log_type_enabled(v185, v184))
    {
      v186 = OUTLINED_FUNCTION_21_3();
      v187 = OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_369(v187);
      *v186 = a11;
      OUTLINED_FUNCTION_15_22();
      MEMORY[0x1B2749D50](a19, v204);
      OUTLINED_FUNCTION_94_0();
      v188 = OUTLINED_FUNCTION_127_1();

      *(v186 + 4) = v188;
      OUTLINED_FUNCTION_439();
      v189 = OUTLINED_FUNCTION_29_1();
      sub_1B2519814(v189, v190, v191);
      OUTLINED_FUNCTION_399();
      *(v186 + 14) = v183;
      _os_log_impl(&dword_1B23EF000, v185, v184, "%{public}s%{public}s", v186, 0x16u);
      OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }
  }

  else
  {
LABEL_67:
    sub_1B254BF28(v55[55].isa, v113, 1, a19, v72, v55[69].isa);
  }

  sub_1B25629C4(&v55[24]);
LABEL_74:

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_472();

  return v194(v192, v193, v194, v195, v196, v197, v198, v199, a9, a10, a11, *(&a11 + 1), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v201, a29, v202, v203, v204, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1B2546B48(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    for (i = (result + 48); v2; --v2)
    {
      v4 = *i;
      v6 = *(i - 2);
      v5 = *(i - 1);
      sub_1B24D0BE0();
      v7 = sub_1B256353C(v6, v5, v4);
      sub_1B2565C58(v7, v8, v9);
      result = sub_1B24D0BE8();
      i += 24;
    }
  }

  return result;
}

uint64_t sub_1B2546BD4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B256D65C();
}

uint64_t StoreProductManager.observer<A>(for:origin:)()
{
  OUTLINED_FUNCTION_24_5();
  v3 = v2;
  v5 = v4;
  *(v1 + 328) = v2;
  *(v1 + 336) = v0;
  *(v1 + 312) = v6;
  *(v1 + 320) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330);
  OUTLINED_FUNCTION_2_2(v8);
  *(v1 + 344) = OUTLINED_FUNCTION_250();
  v9 = type metadata accessor for Product();
  *(v1 + 352) = v9;
  OUTLINED_FUNCTION_26_7(v9);
  *(v1 + 360) = v10;
  *(v1 + 368) = OUTLINED_FUNCTION_504();
  *(v1 + 376) = swift_task_alloc();
  v11 = sub_1B256D36C();
  *(v1 + 384) = v11;
  OUTLINED_FUNCTION_26_7(v11);
  *(v1 + 392) = v12;
  *(v1 + 400) = OUTLINED_FUNCTION_504();
  *(v1 + 408) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CD8);
  OUTLINED_FUNCTION_2_2(v13);
  *(v1 + 416) = OUTLINED_FUNCTION_504();
  *(v1 + 424) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_2_2(v14);
  *(v1 + 432) = OUTLINED_FUNCTION_504();
  *(v1 + 440) = swift_task_alloc();
  *(v1 + 448) = *(v3 + 8);
  v15 = sub_1B256E70C();
  *(v1 + 456) = v15;
  OUTLINED_FUNCTION_26_7(v15);
  *(v1 + 464) = v16;
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v17);
  *(v1 + 488) = OUTLINED_FUNCTION_250();
  v18 = sub_1B256E71C();
  *(v1 + 496) = v18;
  OUTLINED_FUNCTION_2_2(v18);
  *(v1 + 504) = OUTLINED_FUNCTION_250();
  v19 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v1 + 512) = v19;
  OUTLINED_FUNCTION_26_7(v19);
  *(v1 + 520) = v20;
  *(v1 + 528) = swift_task_alloc();
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  v21 = sub_1B256E71C();
  *(v1 + 576) = v21;
  OUTLINED_FUNCTION_82_4();
  *(v1 + 584) = swift_getWitnessTable();
  OUTLINED_FUNCTION_34_1();
  v22 = sub_1B256E89C();
  *(v1 + 592) = v22;
  OUTLINED_FUNCTION_2_2(v22);
  *(v1 + 600) = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_34_1();
  v23 = sub_1B256E88C();
  *(v1 + 608) = v23;
  OUTLINED_FUNCTION_26_7(v23);
  *(v1 + 616) = v24;
  *(v1 + 624) = OUTLINED_FUNCTION_250();
  v25 = sub_1B256E71C();
  *(v1 + 632) = v25;
  OUTLINED_FUNCTION_26_7(v25);
  *(v1 + 640) = v26;
  *(v1 + 648) = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_146_2();
  v27 = sub_1B256E51C();
  *(v1 + 656) = v27;
  OUTLINED_FUNCTION_26_7(v27);
  *(v1 + 664) = v28;
  *(v1 + 672) = OUTLINED_FUNCTION_250();
  *(v1 + 680) = *(v21 - 8);
  *(v1 + 688) = swift_task_alloc();
  *(v1 + 696) = swift_task_alloc();
  *(v1 + 233) = *v5;
  v29 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1B254713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_291_0();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_353();
  a38 = v40;
  v254 = *(v40 + 233);
  v237 = *(v40 + 696);
  v43 = *(v40 + 672);
  v44 = *(v40 + 664);
  v45 = *(v40 + 656);
  v243 = *(v40 + 640);
  v244 = *(v40 + 600);
  v247 = *(v40 + 592);
  v245 = *(v40 + 584);
  v239 = *(v40 + 576);
  v240 = *(v40 + 648);
  v250 = *(v40 + 512);
  v238 = *(v40 + 328);
  *(v40 + 704) = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v46 = sub_1B24D3E10();
  v241 = v47;
  v242 = v46;
  *(v40 + 712) = v46;
  *(v40 + 720) = v47;
  v48 = OUTLINED_FUNCTION_265_0();
  MEMORY[0x1B2749E40](v48);
  OUTLINED_FUNCTION_203_1();
  swift_getWitnessTable();
  sub_1B256E8FC();
  (*(v44 + 8))(v43, v45);
  sub_1B256E72C();
  OUTLINED_FUNCTION_50_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CE8);
  OUTLINED_FUNCTION_82_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_28_1();
  sub_1B256DFFC();
  swift_endAccess();
  v49 = OUTLINED_FUNCTION_13_5();
  v50(v49);
  LOBYTE(a28) = v254;
  sub_1B25456E0(v242, v241, &a28);
  v51 = MEMORY[0x1E69E7CD0];
  *(v40 + 256) = MEMORY[0x1E69E7CD0];
  MEMORY[0x1B2749E30](v239, v245);
  sub_1B256E86C();
  do
  {
    sub_1B256E87C();
    v52 = *(v40 + 112);
    if (!v52)
    {
      break;
    }

    v53 = v51;
    v54 = *(v40 + 96);
    v55 = *(v40 + 104);
    OUTLINED_FUNCTION_278_0();
    OUTLINED_FUNCTION_361();
    if (!v56 || (sub_1B2458898(v55, v52), (v57 & 1) == 0))
    {
      swift_endAccess();

      v51 = v53;
      break;
    }

    v58 = *(v40 + 568);
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_2_40();
    OUTLINED_FUNCTION_326_0();
    sub_1B25636F8();
    swift_endAccess();

    v59 = *(v58 + *(v250 + 24));
    if (v54)
    {
      v60 = swift_allocObject();
      v60[2] = sub_1B23FB6F4;
      v60[3] = 0;
      v60[4] = v59;
      v60[5] = sub_1B2549494;
      v60[6] = 0;
      v60[7] = sub_1B2564624;
      v60[8] = 0;
      v60[9] = sub_1B256462C;
      v60[10] = 0;
      *(v40 + 16) = v59;
      *(v40 + 24) = sub_1B2549494;
      *(v40 + 32) = 0;
      *(v40 + 40) = sub_1B2564624;
      *(v40 + 48) = 0;
      *(v40 + 56) = sub_1B25647EC;
      *(v40 + 64) = v60;
      swift_bridgeObjectRetain_n();
      v51 = sub_1B2563C84(v40 + 16, v53);

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      *(v40 + 256) = v51;
      continue;
    }

LABEL_8:
    v64 = *(v59 + 16);
    v65 = v54;
    while (1)
    {
      if (v65 == v64)
      {
        *(v40 + 224) = 0;
        v54 = v64;
      }

      else
      {
        if ((v65 & 0x8000000000000000) != 0)
        {
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
          return MEMORY[0x1EEE6DA40](v61, v62, v63);
        }

        if (v65 >= *(v59 + 16))
        {
          goto LABEL_100;
        }

        sub_1B24C5C14();
        v54 = v65 + 1;
      }

      *(v40 + 232) = v65 == v64;
      sub_1B24C42F0();
      if (*(v40 + 248))
      {
        break;
      }

      sub_1B24C42F0();
      Strong = swift_weakLoadStrong();
      v61 = sub_1B256615C(v40 + 304, &qword_1EB7D0460);
      v65 = v54;
      if (Strong)
      {
        sub_1B25603E8(&a28, Strong);

        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    v51 = *(v40 + 256);
  }

  while (*(v51 + 16));
  (*(*(v40 + 616) + 8))(*(v40 + 624), *(v40 + 608));
  v67 = *(v51 + 16);
  v68 = MEMORY[0x1E69E7CC0];
  if (v67)
  {
    v248 = v40;
    a28 = MEMORY[0x1E69E7CC0];
    sub_1B256E64C();
    v61 = sub_1B2564214();
    v69 = v61;
    v70 = v62;
    v71 = 0;
    v72 = v51 + 56;
    v73 = 1;
    if ((v61 & 0x8000000000000000) == 0)
    {
      while (v69 < v73 << *(v51 + 32))
      {
        v74 = v69 >> 6;
        v75 = v73 << v69;
        if ((*(v72 + 8 * (v69 >> 6)) & (v73 << v69)) == 0)
        {
          goto LABEL_101;
        }

        if (*(v51 + 36) != v70)
        {
          goto LABEL_102;
        }

        v252 = v71;
        v255 = v63;

        sub_1B256E61C();
        sub_1B256E65C();
        OUTLINED_FUNCTION_320_0();
        sub_1B256E66C();
        v61 = sub_1B256E62C();
        if (v255)
        {
          goto LABEL_108;
        }

        v76 = 1 << *(v51 + 32);
        if (v69 >= v76)
        {
          goto LABEL_103;
        }

        if ((*(v72 + 8 * v74) & v75) == 0)
        {
          goto LABEL_104;
        }

        if (*(v51 + 36) != v70)
        {
          goto LABEL_105;
        }

        OUTLINED_FUNCTION_411();
        if (v77)
        {
          v78 = v74 << 6;
          v79 = (v51 + 64 + 8 * v74);
          v80 = v74 + 1;
          while (v80 < (v76 + 63) >> 6)
          {
            v82 = *v79++;
            v81 = v82;
            v78 += 64;
            ++v80;
            if (v82)
            {
              v83 = OUTLINED_FUNCTION_376();
              v61 = sub_1B25647E0(v83, v84, 0);
              v73 = 1;
              v76 = __clz(__rbit64(v81)) + v78;
              goto LABEL_37;
            }
          }

          v85 = OUTLINED_FUNCTION_376();
          v61 = sub_1B25647E0(v85, v86, 0);
          v73 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_410();
        }

LABEL_37:
        v71 = v252 + 1;
        if (v252 + 1 == v67)
        {
          goto LABEL_40;
        }

        v63 = 0;
        v70 = *(v51 + 36);
        v69 = v76;
        if (v76 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_40:
    v87 = v248[61];

    v88 = a28;
    sub_1B256E72C();
    OUTLINED_FUNCTION_82_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_157_0();
    v89 = sub_1B256DCCC();
    v248[91] = v89;
    v90 = sub_1B256DDAC();
    v248[92] = v90;
    OUTLINED_FUNCTION_102_3(v87, v91, v92, v90);
    OUTLINED_FUNCTION_154();

    v93 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v94 = swift_allocObject();
    v95 = MEMORY[0x1E69E85E0];
    v94[2] = v93;
    v94[3] = v95;
    v94[4] = v88;
    v94[5] = v89;
    OUTLINED_FUNCTION_107_0();
    sub_1B247E0D8();
    v248[93] = v96;
    v97 = swift_task_alloc();
    v248[94] = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E90);
    OUTLINED_FUNCTION_455();
    *v97 = v98;
    v97[1] = sub_1B25484FC;
    OUTLINED_FUNCTION_310_0();
    OUTLINED_FUNCTION_216();

    return MEMORY[0x1EEE6DA40](v61, v62, v63);
  }

  OUTLINED_FUNCTION_175_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_466();
  MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B2592AC0);
  OUTLINED_FUNCTION_41_1();
  sub_1B256EB0C();
  v100 = a29;
  v256 = a28;

  v101 = sub_1B256E08C();

  v102 = sub_1B256D5CC();

  if (os_log_type_enabled(v102, v101))
  {
    v103 = *(v40 + 720);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    *"ype" = 136446466;
    OUTLINED_FUNCTION_39_2();
    a27 = v104;
    a28 = v105;
    a29 = v106;
    v107 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v107);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_328_0();
    *algn_1B2577004 = v103;
    OUTLINED_FUNCTION_74_0();
    sub_1B2519814(v256, v100, &a27);
    OUTLINED_FUNCTION_154();

    unk_1B257700E = &a28;
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v108, v101, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_44_1();
  }

  else
  {
  }

  v109 = *(v40 + 696);
  v110 = *(v40 + 680);
  v111 = *(v40 + 576);
  v253 = *(v40 + 480);
  type metadata accessor for StoreProductManager.CollectionObserver(0);
  v112 = *(v110 + 16);
  v113 = OUTLINED_FUNCTION_24();
  (v112)(v113);
  OUTLINED_FUNCTION_202_1();
  v114 = OUTLINED_FUNCTION_14_3();
  v257 = sub_1B254A19C(v114, v115, v116);
  v117 = OUTLINED_FUNCTION_24();
  v249 = v112;
  v251 = v110 + 16;
  (v112)(v117);
  sub_1B256E6EC();
  while (1)
  {
    v118 = *(v40 + 480);
    sub_1B256E6FC();
    v119 = *(v40 + 200);
    if (!v119)
    {
      break;
    }

    OUTLINED_FUNCTION_377();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    v120 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
    swift_weakInit();
    *(v118 + *(v111 + 24)) = v68;
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_18_1();
    sub_1B255FE0C();
    swift_isUniquelyReferenced_nonNull_native();
    a28 = *(v112 + 112);
    *(v112 + 112) = 0x8000000000000000;
    v124 = OUTLINED_FUNCTION_285_0();
    sub_1B2458898(v124, v125);
    OUTLINED_FUNCTION_25_11();
    v112 = v126 + v127;
    if (__OFADD__(v126, v127))
    {
      goto LABEL_106;
    }

    v128 = v61;
    v129 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
    v130 = OUTLINED_FUNCTION_493();
    v131 = a28;
    if (v130)
    {
      v132 = OUTLINED_FUNCTION_285_0();
      v134 = sub_1B2458898(v132, v133);
      if ((v129 & 1) != (v135 & 1))
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_216();

        return sub_1B256EC9C();
      }

      v128 = v134;
    }

    OUTLINED_FUNCTION_360();
    if ((v129 & 1) == 0)
    {
      OUTLINED_FUNCTION_433();
      *(v136 + 64) |= v137;
      v138 = (*(v131 + 48) + 16 * v128);
      *v138 = v109;
      v138[1] = v119;
      OUTLINED_FUNCTION_3_38();
      v61 = sub_1B255FE0C();
      v139 = *(v131 + 16);
      v140 = __OFADD__(v139, 1);
      v141 = v139 + 1;
      if (v140)
      {
        goto LABEL_107;
      }

      *(v131 + 16) = v141;
    }

    OUTLINED_FUNCTION_396();
    swift_weakAssign();
    v111 = *(v109 + 24);
    v142 = *(v128 + v111);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v128 + v111) = v142;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v146);
    }

    v145 = *(v142 + 16);
    v144 = *(v142 + 24);
    v109 = v145 + 1;
    if (v145 >= v144 >> 1)
    {
      OUTLINED_FUNCTION_69_0(v144);
      OUTLINED_FUNCTION_121_2();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v147);
    }

    OUTLINED_FUNCTION_314_0();
    sub_1B24C42F0();
    OUTLINED_FUNCTION_204_0();
    sub_1B2563750();
    swift_endAccess();

    OUTLINED_FUNCTION_117_0();
    sub_1B2563750();
  }

  v148 = OUTLINED_FUNCTION_217_0();
  v149(v148);
  v258 = MEMORY[0x1E69E7CD0];
  v150 = OUTLINED_FUNCTION_22_1();
  v249(v150);
  sub_1B256E6EC();
  OUTLINED_FUNCTION_454();
  v246 = MEMORY[0x1E69E7CC0];
  v151 = &unk_1EB7D22C8;
  while (1)
  {
    sub_1B256E6FC();
    if (!*(v40 + 216))
    {
      break;
    }

    v152 = *(v40 + 336);
    OUTLINED_FUNCTION_278_0();
    if (!*(*(v152 + 112) + 16) || (v153 = OUTLINED_FUNCTION_458(), sub_1B2458898(v153, v154), (v155 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_78;
    }

    v156 = v151;
    v157 = *(v40 + 528);
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    swift_endAccess();
    OUTLINED_FUNCTION_326_0();
    sub_1B24C5C14();
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    v159 = OUTLINED_FUNCTION_208_0();
    __swift_getEnumTagSinglePayload(v159, v160, v158);
    OUTLINED_FUNCTION_448();
    v253 = v158;
    if (v77)
    {
      v161 = OUTLINED_FUNCTION_22_1();
      sub_1B256615C(v161, v162);
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v157);
    }

    else
    {
      v166 = OUTLINED_FUNCTION_312();
      v167(v166);
      OUTLINED_FUNCTION_188_1();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v157);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
    }

    v171 = *(v40 + 384);
    sub_1B24C5C14();
    v172 = OUTLINED_FUNCTION_184();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v172, v173, v171);
    v175 = *(v40 + 440);
    if (EnumTagSinglePayload == 1)
    {
      v151 = v156;
      v176 = OUTLINED_FUNCTION_326_0();
      sub_1B256615C(v176, v177);
      v178 = v253;
    }

    else
    {
      v179 = OUTLINED_FUNCTION_282_0();
      v180(v179);
      sub_1B256D34C();
      OUTLINED_FUNCTION_138_0();
      sub_1B256D2BC();
      v181 = OUTLINED_FUNCTION_372();
      (unk_1B257DD30)(v181);
      v182 = v158;
      v151 = &unk_1EB7D22C8;
      (unk_1B257DD30)(v171, v182);
      sub_1B256615C(v175, &qword_1EB7D0088);
      v178 = v253;
      if (v249)
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        goto LABEL_78;
      }
    }

    OUTLINED_FUNCTION_446();
    sub_1B24C5C14();
    v183 = OUTLINED_FUNCTION_184();
    v185 = __swift_getEnumTagSinglePayload(v183, v184, v178);
    v187 = *(v40 + 344);
    v186 = *(v40 + 352);
    if (v185 == 1)
    {
      v188 = *(v40 + 416);
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      sub_1B256615C(v188, &qword_1EB7D2CD8);
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v189, v190, v191, v186);
LABEL_77:
      sub_1B256615C(*(v40 + 344), &qword_1EB7D2330);
LABEL_78:
      OUTLINED_FUNCTION_294_0();
      OUTLINED_FUNCTION_398();
    }

    else
    {
      OUTLINED_FUNCTION_4_27();
      OUTLINED_FUNCTION_320_0();
      sub_1B25636F8();
      OUTLINED_FUNCTION_188_1();
      __swift_storeEnumTagSinglePayload(v192, v193, v194, v186);
      v195 = OUTLINED_FUNCTION_445();
      v196(v195);
      OUTLINED_FUNCTION_268_0(v187, 1, v186);
      if (v77)
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v151 = &unk_1EB7D22C8;
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_4_27();
      OUTLINED_FUNCTION_117_0();
      sub_1B25636F8();
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_38_7();
      sub_1B255FE0C();
      v197 = v246;
      v198 = swift_isUniquelyReferenced_nonNull_native();
      if ((v198 & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        sub_1B2448D30();
        v197 = v201;
      }

      v200 = *(v197 + 16);
      v199 = *(v197 + 24);
      if (v200 >= v199 >> 1)
      {
        OUTLINED_FUNCTION_109_4(v199);
        sub_1B2448D30();
        v197 = v202;
      }

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      *(v197 + 16) = v200 + 1;
      OUTLINED_FUNCTION_114_2();
      v246 = v197;
      OUTLINED_FUNCTION_4_27();
      sub_1B25636F8();
      v151 = &unk_1EB7D22C8;
    }
  }

  v243(*(v40 + 472), *(v40 + 456));
  if (*(v246 + 16))
  {
    sub_1B254A1F0(v246, MEMORY[0x1E69E7CD0], v258);
    if (!*(v258 + 16))
    {
      sub_1B254B9CC();
    }
  }

  v203 = *(v40 + 720);
  if (*(v258 + 16))
  {
    v204 = *(v40 + 704);
    v205 = *(v40 + 336);
    OUTLINED_FUNCTION_175_1();
    sub_1B256E4FC();
    OUTLINED_FUNCTION_466();
    OUTLINED_FUNCTION_391();
    v206 = *(v246 + 16);

    *(v40 + 280) = v206;
    v207 = MEMORY[0x1E69E6590];
    OUTLINED_FUNCTION_201_0();
    v208 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v208);

    MEMORY[0x1B2749D50](&type metadata for StoreProductManager.ProductID.Kind + 1, 0x80000001B2592B20);
    *(v40 + 288) = *(v258 + 16);

    OUTLINED_FUNCTION_201_0();
    v209 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v209);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000017);
    v210 = a29;
    v253 = a28;
    v211 = sub_1B256E08C();

    v212 = v205 + v204;
    sub_1B256D5CC();
    OUTLINED_FUNCTION_21_7();

    v213 = os_log_type_enabled(v207, v211);
    v214 = *(v40 + 720);
    if (v213)
    {
      v215 = *(v40 + 712);
      OUTLINED_FUNCTION_21_3();
      v216 = OUTLINED_FUNCTION_3_23();
      *v203 = 136446466;
      OUTLINED_FUNCTION_10_23(v216);
      MEMORY[0x1B2749D50](v215, v214);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_328_0();
      *(v203 + 4) = v215;
      OUTLINED_FUNCTION_207_0();
      sub_1B2519814(v253, v210, &a27);
      OUTLINED_FUNCTION_399();
      *(v203 + 14) = v212;
      OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v207, v211, "%{public}s%{public}s");
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_10_7();
    }

    else
    {
    }

    v221 = *(v40 + 720);
    OUTLINED_FUNCTION_86_2();
    v222 = OUTLINED_FUNCTION_457();
    sub_1B254C1C0(v222, v223, v224, v225, v221, v226);

    v227 = OUTLINED_FUNCTION_13_5();
    v228(v227);
  }

  else
  {
    OUTLINED_FUNCTION_383();
    v219 = OUTLINED_FUNCTION_38_7();
    v220(v219);
  }

  OUTLINED_FUNCTION_154_0();

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_216();

  return v231(v229, v230, v231, v232, v233, v234, v235, v236, a9, a10, a11, v237, v238, v239, v240, v241, v242, v243, v244, v246, v247, v249, v251, v253, v257, v258, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1B25484FC()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 336);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2548618, v2, 0);
}

void sub_1B2548618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(void, void), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(uint64_t), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_291_0();
  a39 = v41;
  a40 = v42;
  OUTLINED_FUNCTION_353();
  a38 = v40;
  v43 = *(v40 + 264);
  if (v43)
  {
    v44 = StoreProductManager.CollectionObserver.error.getter();
    if (v44)
    {
      v45 = *(v40 + 736);
      v46 = *(v40 + 720);
      v47 = *(v40 + 712);
      v48 = *(v40 + 233);
      v49 = *(v40 + 336);

      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v45);
      OUTLINED_FUNCTION_9_25();
      v55 = sub_1B2565104(v53, v54);
      v56 = swift_allocObject();
      *(v56 + 16) = v49;
      *(v56 + 24) = v55;
      *(v56 + 32) = v49;
      *(v56 + 40) = v43;
      *(v56 + 48) = v47;
      *(v56 + 56) = v46;
      *(v56 + 64) = v48;
      swift_retain_n();

      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();
    }

    v215 = v43;
    v57 = *(v40 + 728);
    v58 = *(v40 + 704);
    v59 = *(v40 + 336);
    OUTLINED_FUNCTION_175_1();
    sub_1B256E4FC();

    a28 = 0xD000000000000029;
    a29 = 0x80000001B2592B60;
    MEMORY[0x1B2749EE0](v57, MEMORY[0x1E69E6158]);

    v60 = OUTLINED_FUNCTION_13_5();
    MEMORY[0x1B2749D50](v60);

    v61 = a29;
    v214 = a28;
    v62 = sub_1B256E0CC();

    v63 = v59 + v58;
    v64 = sub_1B256D5CC();

    if (!os_log_type_enabled(v64, v62))
    {

      v83 = OUTLINED_FUNCTION_38_7();
      goto LABEL_60;
    }

    v65 = *(v40 + 712);
    v66 = *(v40 + 680);
    a22 = *(v40 + 576);
    a23 = *(v40 + 696);
    v67 = OUTLINED_FUNCTION_21_3();
    v68 = OUTLINED_FUNCTION_20_4();
    *v67 = 136446466;
    OUTLINED_FUNCTION_10_23(v68);
    v69 = OUTLINED_FUNCTION_50_0();
    MEMORY[0x1B2749D50](v69);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_28_12();
    *(v67 + 4) = v65;
    OUTLINED_FUNCTION_368();
    sub_1B2519814(v214, v61, &a27);
    OUTLINED_FUNCTION_67_2();

    *(v67 + 14) = v63;
    OUTLINED_FUNCTION_404(&dword_1B23EF000, v64, v62, "%{public}s%{public}s");
    OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();

    (*(v66 + 8))(a23, a22);
LABEL_61:
    OUTLINED_FUNCTION_154_0();

    OUTLINED_FUNCTION_141();
    OUTLINED_FUNCTION_216();

    v208(v206, v207, v208, v209, v210, v211, v212, v213, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v214, v215, a26, a27, a28, a29, a30, a31, a32);
    return;
  }

  v70 = *(v40 + 720);
  v71 = *(v40 + 704);
  v72 = *(v40 + 336);
  OUTLINED_FUNCTION_175_1();
  sub_1B256E4FC();
  OUTLINED_FUNCTION_466();
  MEMORY[0x1B2749D50](0xD000000000000025, 0x80000001B2592AC0);
  OUTLINED_FUNCTION_41_1();
  sub_1B256EB0C();

  v73 = sub_1B256E08C();

  v74 = v72 + v71;
  v75 = sub_1B256D5CC();

  if (os_log_type_enabled(v75, v73))
  {
    v76 = *(v40 + 720);
    OUTLINED_FUNCTION_21_3();
    v77 = OUTLINED_FUNCTION_126_1();
    *v70 = 136446466;
    OUTLINED_FUNCTION_10_23(v77);
    v78 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v78);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_328_0();
    *(v70 + 4) = v76;
    OUTLINED_FUNCTION_135_2();
    v79 = OUTLINED_FUNCTION_157_0();
    sub_1B2519814(v79, v80, v81);
    OUTLINED_FUNCTION_154();

    *(v70 + 14) = v74;
    OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v82, v73, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  v85 = *(v40 + 696);
  v86 = *(v40 + 680);
  v87 = *(v40 + 576);
  type metadata accessor for StoreProductManager.CollectionObserver(0);
  v89 = *(v86 + 16);
  v88 = v86 + 16;
  v90 = OUTLINED_FUNCTION_24();
  v89(v90);
  OUTLINED_FUNCTION_202_1();
  v91 = OUTLINED_FUNCTION_14_3();
  v215 = sub_1B254A19C(v91, v92, v93);
  v94 = OUTLINED_FUNCTION_24();
  a23 = v89;
  v214 = v88;
  v89(v94);
  sub_1B256E6EC();
  while (1)
  {
    v95 = *(v40 + 480);
    sub_1B256E6FC();
    v96 = *(v40 + 200);
    if (!v96)
    {
      v127 = OUTLINED_FUNCTION_217_0();
      v128(v127);
      a26 = MEMORY[0x1E69E7CD0];
      v129 = OUTLINED_FUNCTION_22_1();
      a23(v129);
      sub_1B256E6EC();
      OUTLINED_FUNCTION_454();
      a20 = MEMORY[0x1E69E7CC0];
      for (i = &unk_1EB7D22C8; ; i = &unk_1EB7D22C8)
      {
        while (1)
        {
          sub_1B256E6FC();
          if (!*(v40 + 216))
          {
            a18(*(v40 + 472), *(v40 + 456));
            if (*(a20 + 16))
            {
              sub_1B254A1F0(a20, MEMORY[0x1E69E7CD0], a26);
              if (!*(a26 + 16))
              {
                sub_1B254B9CC();
              }
            }

            v183 = *(v40 + 720);
            if (*(a26 + 16))
            {
              v184 = *(v40 + 704);
              v185 = *(v40 + 336);
              OUTLINED_FUNCTION_175_1();
              sub_1B256E4FC();
              OUTLINED_FUNCTION_466();
              OUTLINED_FUNCTION_391();
              v186 = *(a20 + 16);

              *(v40 + 280) = v186;
              v187 = MEMORY[0x1E69E6590];
              OUTLINED_FUNCTION_201_0();
              v188 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v188);

              MEMORY[0x1B2749D50](&type metadata for StoreProductManager.ProductID.Kind + 1, 0x80000001B2592B20);
              *(v40 + 288) = *(a26 + 16);

              OUTLINED_FUNCTION_201_0();
              v189 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v189);

              OUTLINED_FUNCTION_75_0();
              MEMORY[0x1B2749D50](0xD000000000000017);
              v190 = a29;
              v214 = a28;
              v191 = sub_1B256E08C();

              v192 = v185 + v184;
              sub_1B256D5CC();
              OUTLINED_FUNCTION_21_7();

              v193 = os_log_type_enabled(v187, v191);
              v194 = *(v40 + 720);
              if (v193)
              {
                v195 = *(v40 + 712);
                OUTLINED_FUNCTION_21_3();
                v196 = OUTLINED_FUNCTION_3_23();
                *v183 = 136446466;
                OUTLINED_FUNCTION_10_23(v196);
                MEMORY[0x1B2749D50](v195, v194);
                OUTLINED_FUNCTION_94_0();
                OUTLINED_FUNCTION_156_1();
                OUTLINED_FUNCTION_328_0();
                *(v183 + 4) = v195;
                OUTLINED_FUNCTION_207_0();
                sub_1B2519814(v214, v190, &a27);
                OUTLINED_FUNCTION_399();
                *(v183 + 14) = v192;
                OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v187, v191, "%{public}s%{public}s");
                OUTLINED_FUNCTION_96_0();
                OUTLINED_FUNCTION_11_4();
                OUTLINED_FUNCTION_10_7();
              }

              else
              {
              }

              v200 = *(v40 + 720);
              OUTLINED_FUNCTION_86_2();
              v201 = OUTLINED_FUNCTION_457();
              sub_1B254C1C0(v201, v202, v203, v204, v200, v205);

              v83 = OUTLINED_FUNCTION_13_5();
LABEL_60:
              v84(v83);
            }

            else
            {
              OUTLINED_FUNCTION_383();
              v198 = OUTLINED_FUNCTION_38_7();
              v199(v198);
            }

            goto LABEL_61;
          }

          v131 = *(v40 + 336);
          OUTLINED_FUNCTION_278_0();
          if (!*(*(v131 + 112) + 16) || (v132 = OUTLINED_FUNCTION_458(), sub_1B2458898(v132, v133), (v134 & 1) == 0))
          {
            swift_endAccess();
            goto LABEL_42;
          }

          v135 = i;
          v136 = *(v40 + 528);
          OUTLINED_FUNCTION_3_38();
          sub_1B255FE0C();
          OUTLINED_FUNCTION_2_40();
          sub_1B25636F8();
          swift_endAccess();
          OUTLINED_FUNCTION_326_0();
          sub_1B24C5C14();
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
          v138 = OUTLINED_FUNCTION_208_0();
          __swift_getEnumTagSinglePayload(v138, v139, v137);
          OUTLINED_FUNCTION_448();
          v214 = v137;
          if (v140)
          {
            v141 = OUTLINED_FUNCTION_22_1();
            sub_1B256615C(v141, v142);
            OUTLINED_FUNCTION_16_2();
            __swift_storeEnumTagSinglePayload(v143, v144, v145, v136);
          }

          else
          {
            v146 = OUTLINED_FUNCTION_312();
            v147(v146);
            OUTLINED_FUNCTION_188_1();
            __swift_storeEnumTagSinglePayload(v148, v149, v150, v136);
            OUTLINED_FUNCTION_1_44();
            sub_1B2563750();
          }

          v151 = *(v40 + 384);
          sub_1B24C5C14();
          v152 = OUTLINED_FUNCTION_184();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v152, v153, v151);
          v155 = *(v40 + 440);
          if (EnumTagSinglePayload == 1)
          {
            i = v135;
            v156 = OUTLINED_FUNCTION_326_0();
            sub_1B256615C(v156, v157);
            v158 = v214;
          }

          else
          {
            v159 = OUTLINED_FUNCTION_282_0();
            v160(v159);
            sub_1B256D34C();
            OUTLINED_FUNCTION_138_0();
            sub_1B256D2BC();
            v161 = OUTLINED_FUNCTION_372();
            (unk_1B257DD30)(v161);
            v162 = v137;
            i = &unk_1EB7D22C8;
            (unk_1B257DD30)(v151, v162);
            sub_1B256615C(v155, &qword_1EB7D0088);
            v158 = v214;
            if (a22)
            {
              OUTLINED_FUNCTION_0_47();
              sub_1B2563750();
              goto LABEL_42;
            }
          }

          OUTLINED_FUNCTION_446();
          sub_1B24C5C14();
          v163 = OUTLINED_FUNCTION_184();
          v165 = __swift_getEnumTagSinglePayload(v163, v164, v158);
          v167 = *(v40 + 344);
          v166 = *(v40 + 352);
          if (v165 != 1)
          {
            break;
          }

          v168 = *(v40 + 416);
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          sub_1B256615C(v168, &qword_1EB7D2CD8);
          OUTLINED_FUNCTION_16_2();
          __swift_storeEnumTagSinglePayload(v169, v170, v171, v166);
LABEL_41:
          sub_1B256615C(*(v40 + 344), &qword_1EB7D2330);
LABEL_42:
          OUTLINED_FUNCTION_294_0();
          OUTLINED_FUNCTION_398();
        }

        OUTLINED_FUNCTION_4_27();
        OUTLINED_FUNCTION_320_0();
        sub_1B25636F8();
        OUTLINED_FUNCTION_188_1();
        __swift_storeEnumTagSinglePayload(v172, v173, v174, v166);
        v175 = OUTLINED_FUNCTION_445();
        v176(v175);
        OUTLINED_FUNCTION_268_0(v167, 1, v166);
        if (v140)
        {
          OUTLINED_FUNCTION_0_47();
          sub_1B2563750();
          i = &unk_1EB7D22C8;
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_4_27();
        OUTLINED_FUNCTION_117_0();
        sub_1B25636F8();
        OUTLINED_FUNCTION_5_32();
        OUTLINED_FUNCTION_38_7();
        sub_1B255FE0C();
        v177 = a20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          sub_1B2448D30();
          v177 = v181;
        }

        v180 = *(v177 + 16);
        v179 = *(v177 + 24);
        if (v180 >= v179 >> 1)
        {
          OUTLINED_FUNCTION_109_4(v179);
          sub_1B2448D30();
          v177 = v182;
        }

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        *(v177 + 16) = v180 + 1;
        OUTLINED_FUNCTION_114_2();
        a20 = v177;
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
      }
    }

    OUTLINED_FUNCTION_377();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    v97 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
    swift_weakInit();
    *(v95 + *(v87 + 24)) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_3_38();
    OUTLINED_FUNCTION_18_1();
    sub_1B255FE0C();
    swift_isUniquelyReferenced_nonNull_native();
    a28 = *(v88 + 112);
    *(v88 + 112) = 0x8000000000000000;
    v101 = OUTLINED_FUNCTION_285_0();
    sub_1B2458898(v101, v102);
    OUTLINED_FUNCTION_25_11();
    v88 = v105 + v106;
    if (__OFADD__(v105, v106))
    {
      break;
    }

    v107 = v103;
    v108 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
    v109 = OUTLINED_FUNCTION_493();
    v110 = a28;
    if (v109)
    {
      v111 = OUTLINED_FUNCTION_285_0();
      v113 = sub_1B2458898(v111, v112);
      if ((v108 & 1) != (v114 & 1))
      {
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        OUTLINED_FUNCTION_216();

        sub_1B256EC9C();
        return;
      }

      v107 = v113;
    }

    OUTLINED_FUNCTION_360();
    if ((v108 & 1) == 0)
    {
      OUTLINED_FUNCTION_433();
      *(v115 + 64) |= v116;
      v117 = (*(v110 + 48) + 16 * v107);
      *v117 = v85;
      v117[1] = v96;
      OUTLINED_FUNCTION_3_38();
      sub_1B255FE0C();
      v118 = *(v110 + 16);
      v119 = __OFADD__(v118, 1);
      v120 = v118 + 1;
      if (v119)
      {
        goto LABEL_65;
      }

      *(v110 + 16) = v120;
    }

    OUTLINED_FUNCTION_396();
    swift_weakAssign();
    v87 = *(v85 + 24);
    v121 = *(v107 + v87);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    *(v107 + v87) = v121;
    if ((v122 & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v125);
    }

    v124 = *(v121 + 16);
    v123 = *(v121 + 24);
    v85 = v124 + 1;
    if (v124 >= v123 >> 1)
    {
      OUTLINED_FUNCTION_69_0(v123);
      OUTLINED_FUNCTION_121_2();
      sub_1B24495A0();
      OUTLINED_FUNCTION_468(v126);
    }

    OUTLINED_FUNCTION_314_0();
    sub_1B24C42F0();
    OUTLINED_FUNCTION_204_0();
    sub_1B2563750();
    swift_endAccess();

    OUTLINED_FUNCTION_117_0();
    sub_1B2563750();
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1B2549494@<X0>(uint64_t *a1@<X8>)
{
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1B25494BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1B25494C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for Product();
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E88);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_1B256DD6C();
  v5[13] = sub_1B256DD5C();
  v8 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2549640, v8, v7);
}

uint64_t sub_1B2549640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_291_0();
  OUTLINED_FUNCTION_353();
  v33 = v32[11];
  v77 = v32[10];
  v78 = v32[7];
  v34 = v32[4];
  v74 = v32[5];
  v75 = v32[8];
  v79 = v32;
  v35 = v32[3];

  result = sub_1B24D0D24(v35);
  v37 = result;
  v38 = 0;
  v72 = v35 & 0xFFFFFFFFFFFFFF8;
  v73 = v35 & 0xC000000000000001;
  v71 = v35 + 32;
  v76 = v33 + 8;
  v70 = (v34 + 40);
  v39 = &unk_1EB7D2E88;
  v40 = &unk_1B2587BB0;
  v68 = result;
  v69 = v34;
  while (v38 != v37)
  {
    if (v73)
    {
      result = MEMORY[0x1B274A7A0](v38, v79[3]);
      v41 = result;
    }

    else
    {
      if (v38 >= *(v72 + 16))
      {
        goto LABEL_34;
      }

      v41 = *(v71 + 8 * v38);
    }

    if (__OFADD__(v38++, 1))
    {
      goto LABEL_33;
    }

    v43 = *(StoreProductManager.CollectionObserver.storage.getter() + 16);

    a26 = v43;
    if (v43 == *(v34 + 16))
    {
      a12 = v38;
      v44 = v79;
      a14 = v41;
      v45 = StoreProductManager.CollectionObserver.storage.getter();
      a24 = *(v45 + 16);

      v46 = 0;
      v47 = v70;
      a22 = v45;
      while (1)
      {
        if (a24 == v46)
        {

LABEL_27:
          v59 = a14;
          goto LABEL_28;
        }

        if (v46 >= *(v45 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_114_2();
        OUTLINED_FUNCTION_8_31();
        sub_1B255FE0C();
        if (a26 == v46)
        {

          OUTLINED_FUNCTION_14_22();
          sub_1B2563750();
          goto LABEL_27;
        }

        a27 = v47;
        a28 = v46;
        v48 = v44[12];
        v49 = *(v47 - 1);
        v50 = *v47;
        v51 = v40;
        v52 = v39;
        v53 = (v48 + *(v77 + 48));
        OUTLINED_FUNCTION_206_1();
        sub_1B25636F8();
        a29 = v49;
        *v53 = v49;
        v53[1] = v50;
        v39 = v52;
        v40 = v51;
        v44 = v79;
        OUTLINED_FUNCTION_38_7();
        sub_1B24C5C14();

        OUTLINED_FUNCTION_8_31();
        OUTLINED_FUNCTION_285_0();
        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          OUTLINED_FUNCTION_4_27();
          sub_1B25636F8();
          v54 = *(v74 + 48);
          v55 = *(v74 + 56);

          OUTLINED_FUNCTION_1_44();
          sub_1B2563750();
        }

        else
        {
          v54 = *v79[8];
          v55 = *(v75 + 8);
        }

        v45 = a22;
        OUTLINED_FUNCTION_14_22();
        sub_1B2563750();
        v56 = v79[12];
        if (v54 == a29 && v55 == v50)
        {

          result = sub_1B256615C(v56, v39);
        }

        else
        {
          OUTLINED_FUNCTION_285_0();
          v58 = sub_1B256EB5C();

          result = sub_1B256615C(v56, v39);
          if ((v58 & 1) == 0)
          {

            v37 = v68;
            v34 = v69;
            v38 = a12;
            goto LABEL_23;
          }
        }

        v47 = a27 + 2;
        v46 = a28 + 1;
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

LABEL_23:
  }

  v59 = 0;
  v44 = v79;
LABEL_28:
  *v44[2] = v59;

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_216();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, v68, v69, a12, v70, a14, v71, v72, v73, v74, v75, v76, v77, a22, v78, a24, v79, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t StoreProductManager.CollectionObserver.storage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_7();
  sub_1B256D64C();

  return v1;
}

uint64_t StoreProductManager.CollectionObserver.Storage.id.getter()
{
  v0 = type metadata accessor for Product();
  v1 = OUTLINED_FUNCTION_2_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_31();
  OUTLINED_FUNCTION_117_0();
  sub_1B255FE0C();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1B25636F8();

    OUTLINED_FUNCTION_1_44();
    sub_1B2563750();
  }

  return OUTLINED_FUNCTION_117_0();
}

uint64_t StoreProductManager.CollectionObserver.error.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_7();
  sub_1B256D64C();

  return v1;
}

uint64_t sub_1B2549BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 24) = a8;
  v12 = swift_task_alloc();
  *(v8 + 16) = v12;
  *v12 = v8;
  v12[1] = sub_1B24741E0;

  return sub_1B2549CB4(a5, a6, a7, (v8 + 24));
}

uint64_t sub_1B2549CB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 88) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B2549D60, v4, 0);
}

uint64_t sub_1B2549D60()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[8];
  v2 = v0[4];
  v3 = sub_1B256DDAC();
  OUTLINED_FUNCTION_102_3(v1, v4, v5, v3);
  OUTLINED_FUNCTION_154();

  v6 = sub_1B256DD5C();
  v7 = OUTLINED_FUNCTION_405();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  OUTLINED_FUNCTION_107_0();
  sub_1B247E2D0();
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E88);
  OUTLINED_FUNCTION_455();
  *v10 = v11;
  v10[1] = sub_1B2549E80;
  OUTLINED_FUNCTION_310_0();

  return MEMORY[0x1EEE6DA40](v12, v13, v14);
}

uint64_t sub_1B2549E80()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2549F9C, v2, 0);
}

uint64_t sub_1B2549F9C()
{
  OUTLINED_FUNCTION_126();
  v20 = v0;
  v1 = v0[7];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD000000000000015, 0x80000001B2592D00);
  v0[3] = *(v2 + 16);
  v4 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v4);

  MEMORY[0x1B2749D50](0xD000000000000033, 0x80000001B2592D20);
  v5 = sub_1B256E08C();

  v6 = &v3[v1];
  sub_1B256D5CC();
  OUTLINED_FUNCTION_200_1();

  if (os_log_type_enabled(&v3[v1], v5))
  {
    OUTLINED_FUNCTION_21_3();
    v7 = OUTLINED_FUNCTION_3_23();
    v19[0] = v7;
    *v1 = 136446466;
    *(v1 + 4) = OUTLINED_FUNCTION_75_2(v7, v8, v19);
    OUTLINED_FUNCTION_207_0();
    v9 = OUTLINED_FUNCTION_50_0();
    v12 = sub_1B2519814(v9, v10, v11);

    *(v1 + 14) = v12;
    OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v6, v5, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_10_7();
  }

  else
  {
  }

  if (*(v2 + 16))
  {
    OUTLINED_FUNCTION_86_2();
    sub_1B254C560(v2, v13, 0, v14, v15, v16);
  }

  OUTLINED_FUNCTION_7_2();

  return v17();
}

void sub_1B254A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v112 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v101 - v6;
  v104 = type metadata accessor for Product();
  v101 = *(v104 - 8);
  v7 = MEMORY[0x1EEE9AC00](v104);
  v103 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v101 - v9;
  v10 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v126 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = &v101 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v108 = (&v101 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v114 = (&v101 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v113 = (&v101 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v125 = (&v101 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v118 = (&v101 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v117 = (&v101 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v101 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78);
  MEMORY[0x1EEE9AC00](v32);
  v110 = (&v101 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v101 - v38;
  v119 = v3;
  v39 = StoreProductManager.CollectionObserver.storage.getter();
  v40 = 0;
  v109 = 0;
  v111 = v39;
  v41 = *(v39 + 16);
  v124 = v10;
  v121 = v32;
  v122 = v29;
  v127 = v37;
  for (i = v41; ; v41 = i)
  {
    if (v40 == v41)
    {
      v42 = 1;
      v40 = v41;
      goto LABEL_7;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v40 >= *(v111 + 16))
    {
      goto LABEL_69;
    }

    *v110 = v40;
    sub_1B255FE0C();
    v37 = v127;
    sub_1B24C42F0();
    v42 = 0;
    ++v40;
LABEL_7:
    v43 = v123;
    __swift_storeEnumTagSinglePayload(v37, v42, 1, v32);
    sub_1B24C42F0();
    if (__swift_getEnumTagSinglePayload(v43, 1, v32) == 1)
    {
      goto LABEL_67;
    }

    v44 = *v43;
    sub_1B25636F8();
    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v47 = v116;
      sub_1B25636F8();
      v46 = *(v47 + 6);
      v45 = *(v47 + 7);

      sub_1B2563750();
    }

    else
    {
      v46 = *v29;
      v45 = v29[1];
    }

    if (*(a2 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v48 = sub_1B256ED7C();
      v49 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v50 = v48 & v49;
        if (((*(a2 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
        {
          break;
        }

        v51 = (*(a2 + 48) + 16 * v50);
        if (*v51 != v46 || v51[1] != v45)
        {
          v53 = sub_1B256EB5C();
          v48 = v50 + 1;
          if ((v53 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v67 = v116;
          sub_1B25636F8();
          v55 = *(v67 + 6);
          v54 = *(v67 + 7);

          sub_1B2563750();
        }

        else
        {
          v55 = *v118;
          v54 = v118[1];
        }

        v68 = v117;
        *v117 = v55;
        v68[1] = v54;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = sub_1B256D63C();
        v71 = v70;
        v72 = *v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v72;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          sub_1B2456E98();
          v72 = v97;
          *v71 = v97;
          if ((v44 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }
        }

        if (v44 >= *(v72 + 16))
        {
          goto LABEL_71;
        }

        v74 = v72 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
        v75 = v117;
        goto LABEL_59;
      }
    }

    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v58 = v116;
      sub_1B25636F8();
      v57 = *(v58 + 6);
      v56 = *(v58 + 7);

      sub_1B2563750();
    }

    else
    {
      v57 = *v125;
      v56 = v125[1];
    }

    v59 = sub_1B24705F4(v57, v56, v115);

    if (v59)
    {
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v76 = v116;
        sub_1B25636F8();
        v62 = *(v76 + 6);
        v61 = *(v76 + 7);

        sub_1B2563750();
      }

      else
      {
        v62 = *v114;
        v61 = v114[1];
      }

      v77 = v113;
      *v113 = v62;
      v77[1] = v61;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v69 = sub_1B256D63C();
      v79 = v78;
      v80 = *v78;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *v79 = v80;
      if (v81)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        sub_1B2456E98();
        v80 = v98;
        *v79 = v98;
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }
      }

      if (v44 >= *(v80 + 16))
      {
        goto LABEL_73;
      }

      v74 = v80 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
      v82 = &v130;
      goto LABEL_58;
    }

    if ((v44 & 0x8000000000000000) == 0 && v44 < *(v112 + 16))
    {
      v63 = v112 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v44;
      v64 = *(v63 + 56);
      v107 = *(v63 + 48);
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v83 = v116;
        sub_1B25636F8();
        v66 = *(v83 + 6);
        v65 = *(v83 + 7);

        sub_1B2563750();
      }

      else
      {
        v66 = *v108;
        v65 = v108[1];
      }

      if (v107 == v66 && v64 == v65)
      {

LABEL_54:
        sub_1B255FE0C();
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = sub_1B256D63C();
        v94 = v93;
        v95 = *v93;
        v96 = swift_isUniquelyReferenced_nonNull_native();
        *v94 = v95;
        if ((v96 & 1) == 0)
        {
          sub_1B2456E98();
          v95 = v99;
          *v94 = v99;
        }

        if (v44 >= *(v95 + 16))
        {
          goto LABEL_74;
        }

        v74 = v95 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44;
        v82 = &v129;
LABEL_58:
        v75 = *(v82 - 32);
LABEL_59:
        sub_1B2565BF4(v75, v74);
        v69(v128, 0);

        goto LABEL_60;
      }

      v85 = sub_1B256EB5C();

      if (v85)
      {
        goto LABEL_54;
      }
    }

    MEMORY[0x1EEE9AC00](v60);
    *(&v101 - 2) = v31;
    v86 = v105;
    v87 = v109;
    sub_1B24AB17C();
    v109 = v87;
    if (__swift_getEnumTagSinglePayload(v86, 1, v104) == 1)
    {
      sub_1B256615C(v86, &qword_1EB7D2330);
    }

    else
    {
      sub_1B25636F8();
      sub_1B255FE0C();
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v88 = sub_1B256D63C();
      v90 = v89;
      v91 = *v89;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v90 = v91;
      if (v92)
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        sub_1B2456E98();
        v91 = v100;
        *v90 = v100;
        if ((v44 & 0x8000000000000000) != 0)
        {
LABEL_66:
          __break(1u);
LABEL_67:

          return;
        }
      }

      if (v44 >= *(v91 + 16))
      {
        goto LABEL_75;
      }

      sub_1B2565BF4(v102, v91 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v44);
      v88(v128, 0);

      sub_1B2563750();
    }

LABEL_60:
    sub_1B2563750();
    v32 = v121;
    v29 = v122;
    v37 = v127;
  }

  __break(1u);
LABEL_69:
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
  __break(1u);
}

void sub_1B254B048(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v85 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v73 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = (&v72 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v86 = (&v72 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v80 = (&v72 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = (&v72 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v72 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78);
  MEMORY[0x1EEE9AC00](v22);
  v74 = (&v72 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v72 - v28;
  v77 = v2;
  v29 = 0;
  v75 = StoreProductManager.CollectionObserver.storage.getter();
  v30 = *(v75 + 16);
  v76 = v7;
  v82 = v22;
  v83 = v20;
  v87 = v27;
  for (i = v30; ; v30 = i)
  {
    if (v29 == v30)
    {
      v31 = 1;
      v29 = v30;
      goto LABEL_7;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(v75 + 16))
    {
      goto LABEL_51;
    }

    *v74 = v29;
    sub_1B255FE0C();
    v27 = v87;
    sub_1B24C42F0();
    v31 = 0;
    ++v29;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v27, v31, 1, v22);
    v32 = v84;
    sub_1B24C42F0();
    if (__swift_getEnumTagSinglePayload(v32, 1, v22) == 1)
    {

      return;
    }

    v88 = *v32;
    sub_1B25636F8();
    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v35 = v78;
      sub_1B25636F8();
      v34 = *(v35 + 6);
      v33 = *(v35 + 7);

      sub_1B2563750();
    }

    else
    {
      v34 = *v20;
      v33 = v20[1];
    }

    if (*(a1 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v36 = sub_1B256ED7C();
      v37 = ~(-1 << *(a1 + 32));
      while (1)
      {
        v38 = v36 & v37;
        if (((*(a1 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {
          break;
        }

        v39 = (*(a1 + 48) + 16 * v38);
        if (*v39 != v34 || v39[1] != v33)
        {
          v41 = sub_1B256EB5C();
          v36 = v38 + 1;
          if ((v41 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v55 = v78;
          sub_1B25636F8();
          v43 = *(v55 + 6);
          v42 = *(v55 + 7);

          sub_1B2563750();
        }

        else
        {
          v43 = *v80;
          v42 = v80[1];
        }

        v56 = v79;
        *v79 = v43;
        v56[1] = v42;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v57 = sub_1B256D63C();
        v59 = v58;
        v60 = *v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v59 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2456E98();
          v60 = v70;
          *v59 = v70;
        }

        v27 = v87;
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (v88 >= *(v60 + 16))
        {
          goto LABEL_53;
        }

        v62 = v60 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88;
        v63 = v79;
LABEL_47:
        sub_1B2565BF4(v63, v62);
        v57(v90, 0);

        goto LABEL_48;
      }
    }

    sub_1B255FE0C();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v46 = v78;
      sub_1B25636F8();
      v45 = *(v46 + 6);
      v44 = *(v46 + 7);

      sub_1B2563750();
    }

    else
    {
      v45 = *v86;
      v44 = v86[1];
    }

    if (*(a2 + 16))
    {
      sub_1B256ED3C();
      sub_1B256DA7C();
      v47 = sub_1B256ED7C();
      v48 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v49 = v47 & v48;
        if (((*(a2 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
        {
          break;
        }

        v50 = (*(a2 + 48) + 16 * v49);
        if (*v50 != v45 || v50[1] != v44)
        {
          v52 = sub_1B256EB5C();
          v47 = v49 + 1;
          if ((v52 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B255FE0C();
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v64 = v78;
          sub_1B25636F8();
          v54 = *(v64 + 6);
          v53 = *(v64 + 7);

          sub_1B2563750();
        }

        else
        {
          v54 = *v73;
          v53 = v73[1];
        }

        v65 = v72;
        *v72 = v54;
        v65[1] = v53;
        swift_storeEnumTagMultiPayload();
        swift_getKeyPath();
        swift_getKeyPath();
        v57 = sub_1B256D63C();
        v67 = v66;
        v68 = *v66;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *v67 = v68;
        if ((v69 & 1) == 0)
        {
          sub_1B2456E98();
          v68 = v71;
          *v67 = v71;
        }

        v27 = v87;
        if ((v88 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v88 >= *(v68 + 16))
        {
          goto LABEL_55;
        }

        v62 = v68 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88;
        v63 = v72;
        goto LABEL_47;
      }
    }

    v27 = v87;
LABEL_48:
    sub_1B2563750();
    v22 = v82;
    v20 = v83;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1B254B9CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_496();
}

uint64_t sub_1B254BA2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
}

void sub_1B254BA3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();

  sub_1B253F984(v8, sub_1B2566154, v4);
  swift_endAccess();
  if (*(*(v4 + 136) + 16) && !*(v4 + 168))
  {
    LOBYTE(v16[0]) = a4;
    sub_1B254C8E0(a2, a3, v16);
    *(v4 + 168) = v14;
  }

  else
  {
    v9 = sub_1B256E09C();

    v10 = sub_1B256D5CC();

    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v15 = v12;
      v16[0] = 91;
      v16[1] = 0xE100000000000000;
      MEMORY[0x1B2749D50](a2, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v13 = sub_1B2519814(91, 0xE100000000000000, &v15);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, &v15);
      _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v12, -1, -1);
      MEMORY[0x1B274BFF0](v11, -1, -1);
    }
  }
}

void sub_1B254BC5C(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  swift_beginAccess();
  v26[0] = a1;
  v26[1] = a2;

  a3(v27, v26);

  v15 = v27[0];
  v16 = v27[1];
  v17 = v28;
  swift_beginAccess();
  v18 = v8[18];

  v19 = sub_1B24706E0(v15, v16, v17, v18);

  if ((v19 & 1) == 0)
  {
    sub_1B2560258(v26, v15, v16, v17);
  }

  sub_1B24D0BE8();

  swift_endAccess();
  if (*(v8[17] + 16) && !v8[21])
  {
    LOBYTE(v29) = a7;
    sub_1B254C8E0(a5, a6, &v29);
    v8[21] = v25;
  }

  else
  {
    v20 = sub_1B256E09C();

    v21 = sub_1B256D5CC();

    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136446466;
      v29 = 91;
      v30 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a5, a6);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v24 = sub_1B2519814(v29, v30, v26);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v26);
      _os_log_impl(&dword_1B23EF000, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v23, -1, -1);
      MEMORY[0x1B274BFF0](v22, -1, -1);
    }
  }
}

void sub_1B254BF28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  swift_beginAccess();
  v14 = v7[18];

  sub_1B24D0BE0();

  v15 = sub_1B24706E0(a1, a2, a3 & 1, v14);

  if ((v15 & 1) == 0)
  {
    sub_1B2560258(&v22, a1, a2, a3 & 1);
  }

  sub_1B24D0BE8();

  swift_endAccess();
  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v23) = a6;
    sub_1B254C8E0(a4, a5, &v23);
    v7[21] = v21;
  }

  else
  {
    v16 = sub_1B256E09C();

    v17 = sub_1B256D5CC();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446466;
      v23 = 91;
      v24 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v20 = sub_1B2519814(v23, v24, &v22);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, &v22);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }
  }
}

void sub_1B254C1C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 56);
  swift_retain_n();
  v33 = a1;

  swift_beginAccess();
  v13 = 0;
  v14 = (63 - v10) >> 6;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
    v15 = v13;
LABEL_9:
    v16 = (*(v33 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = v16[1];
    v12 &= v12 - 1;
    v36[0] = *v16;
    v36[1] = v17;

    a2(v34, v36);

    v19 = v34[0];
    v18 = v34[1];
    v20 = v35;
    v21 = v7[18];

    v22 = sub_1B24706E0(v19, v18, v20, v21);

    if ((v22 & 1) == 0)
    {
      sub_1B2560258(v34, v19, v18, v20);
    }

    sub_1B24D0BE8();
    v13 = v15;
  }

  while (v12);
  while (1)
  {
LABEL_6:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v13;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  sub_1B23FB6C4();

  swift_endAccess();
  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v37) = a6;
    sub_1B254C8E0(a4, a5, &v37);
    v7[21] = v28;
  }

  else
  {
    v23 = sub_1B256E09C();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136446466;
      v37 = 91;
      v38 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v27 = sub_1B2519814(v37, v38, v34);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v34);
      _os_log_impl(&dword_1B23EF000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v26, -1, -1);
      MEMORY[0x1B274BFF0](v25, -1, -1);
    }
  }
}

void sub_1B254C560(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  swift_beginAccess();
  v10 = *(a1 + 16);

  swift_beginAccess();
  for (i = (a1 + 40); v10; --v10)
  {
    v12 = *i;
    v29[0] = *(i - 1);
    v29[1] = v12;

    a2(v27, v29);

    v13 = v27[0];
    v14 = v27[1];
    v15 = v28;
    v16 = v7[18];

    v17 = sub_1B24706E0(v13, v14, v15, v16);

    if ((v17 & 1) == 0)
    {
      sub_1B2560258(v27, v13, v14, v15);
    }

    sub_1B24D0BE8();
    i += 2;
  }

  swift_endAccess();

  if (*(v7[17] + 16) && !v7[21])
  {
    LOBYTE(v30) = a6;
    sub_1B254C8E0(a4, a5, &v30);
    v7[21] = v23;
  }

  else
  {
    v18 = sub_1B256E09C();

    v19 = sub_1B256D5CC();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136446466;
      v30 = 91;
      v31 = 0xE100000000000000;
      MEMORY[0x1B2749D50](a4, a5);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v22 = sub_1B2519814(v30, v31, v27);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1B2519814(0xD000000000000028, 0x80000001B2592D60, v27);
      _os_log_impl(&dword_1B23EF000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v21, -1, -1);
      MEMORY[0x1B274BFF0](v20, -1, -1);
    }
  }
}

BOOL sub_1B254C860(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 144);

  LOBYTE(v3) = sub_1B24706E0(v3, v4, v5, v6);

  return (v3 & 1) == 0;
}

void sub_1B254C8E0(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *a3;
  v12 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v13;
  *(v14 + 32) = v3;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  *(v14 + 56) = v11;
  *(v14 + 64) = v7;
  swift_retain_n();

  sub_1B247DAA8();
}

uint64_t sub_1B254CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 105) = a7;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 128) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_1B256D3CC();
  *(v7 + 160) = v9;
  v10 = *(v9 - 8);
  *(v7 + 168) = v10;
  *(v7 + 176) = *(v10 + 64);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v11 = sub_1B256E77C();
  *(v7 + 200) = v11;
  *(v7 + 208) = *(v11 - 8);
  *(v7 + 216) = swift_task_alloc();
  v12 = sub_1B256E75C();
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 - 8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B254CC34, a4, 0);
}

uint64_t sub_1B254CC34()
{
  v19 = v0;
  v1 = *(v0 + 144);
  *(v0 + 256) = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v2 = sub_1B256E08C();

  v3 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    v4 = *(v0 + 144);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_46_1();
    *v1 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v8 = OUTLINED_FUNCTION_132_0();
    MEMORY[0x1B2749D50](v8);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(v17, v18, &v16);
    OUTLINED_FUNCTION_28_12();
    *(v1 + 4) = v4;
    OUTLINED_FUNCTION_74_0();
    *(v1 + 14) = sub_1B2519814(0xD000000000000020, 0x80000001B2592D90, &v16);
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v9, v2, "%{public}s%{public}s");
    OUTLINED_FUNCTION_305_0();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_44_1();
  }

  v10 = *(v0 + 232);
  sub_1B256E74C();
  sub_1B256E73C();
  *(v0 + 264) = *(v10 + 8);
  *(v0 + 272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = OUTLINED_FUNCTION_41_1();
  v12(v11);
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  *(v0 + 104) = 1;
  sub_1B256E76C();
  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  sub_1B2565104(&qword_1EB7D2E40, MEMORY[0x1E69E8848]);
  OUTLINED_FUNCTION_455();
  *v13 = v14;
  v13[1] = sub_1B254CE80;
  OUTLINED_FUNCTION_310_0();

  return MEMORY[0x1EEE6DA68]();
}

uint64_t sub_1B254CE80()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v3 + 288) = v0;

  v9 = OUTLINED_FUNCTION_153();
  v10(v9);
  v11 = OUTLINED_FUNCTION_13_5();
  v6(v11);
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B254D048()
{
  v45 = v0;
  v1 = *(v0 + 128);
  v1[21] = 0;

  OUTLINED_FUNCTION_402();
  v2 = v1[17];
  v1[17] = MEMORY[0x1E69E7CD0];
  sub_1B256D3BC();
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0x6F74207964616552, 0xEE002064616F6C20);
  v41 = v2;
  *(v0 + 112) = *(v2 + 16);
  OUTLINED_FUNCTION_29_1();
  v3 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v3);

  MEMORY[0x1B2749D50](0xD000000000000034, 0x80000001B2592DC0);
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v4, v5);
  v6 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v6);

  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000017);
  OUTLINED_FUNCTION_516();
  *(v0 + 120) = *(v1[22] + 16) + 1;
  OUTLINED_FUNCTION_29_1();
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  v8 = v44;
  v9 = sub_1B256E08C();

  v40 = v1;
  v10 = sub_1B256D5CC();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = v43;
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = OUTLINED_FUNCTION_21_3();
    v15 = OUTLINED_FUNCTION_20_4();
    *v14 = 136446466;
    v42 = v15;
    v43 = 91;
    v44 = 0xE100000000000000;
    MEMORY[0x1B2749D50](v12, v13);
    OUTLINED_FUNCTION_94_0();
    sub_1B2519814(91, 0xE100000000000000, &v42);
    OUTLINED_FUNCTION_328_0();
    *(v14 + 4) = v13;
    *(v14 + 12) = 2082;
    sub_1B2519814(v11, v8, &v42);
    OUTLINED_FUNCTION_67_2();

    *(v14 + 14) = 0xE100000000000000;
    _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v14, 0x16u);
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  v39 = v17;
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v38 = *(v0 + 105);
  v20 = *(v0 + 144);
  v37 = *(v0 + 136);
  v21 = *(v0 + 128);
  sub_1B256DDAC();
  v22 = OUTLINED_FUNCTION_150_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  (*(v18 + 16))(v16, v17, v19);
  OUTLINED_FUNCTION_9_25();
  v28 = sub_1B2565104(v26, v27);
  v29 = (*(v18 + 80) + 65) & ~*(v18 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v21;
  *(v30 + 24) = v28;
  *(v30 + 32) = v21;
  *(v30 + 40) = v41;
  *(v30 + 48) = v37;
  *(v30 + 56) = v20;
  *(v30 + 64) = v38;
  (*(v18 + 32))(v30 + v29, v16, v19);
  swift_retain_n();

  OUTLINED_FUNCTION_107_0();
  sub_1B247DAA8();
  v32 = v31;
  OUTLINED_FUNCTION_50_5();
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v40[22];
  sub_1B244AC6C(v32, v39);
  v40[22] = v43;
  swift_endAccess();
  v33 = OUTLINED_FUNCTION_458();
  v34(v33);
  OUTLINED_FUNCTION_483();

  OUTLINED_FUNCTION_7_2();

  return v35();
}

uint64_t sub_1B254D510()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 128);

  *(v1 + 168) = 0;

  OUTLINED_FUNCTION_483();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_42_4();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B254D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[7] = a7;
  v8[8] = v16;
  v8[5] = a4;
  v8[6] = a6;
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_1B254D680;

  return sub_1B254D99C(a5, a6, a7, a8);
}

uint64_t sub_1B254D680()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31_10();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B254D778()
{
  v22 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_50_5();
  sub_1B2563374(v1);
  swift_endAccess();

  sub_1B256E4FC();

  v20 = 0xD000000000000018;
  v21 = 0x80000001B2592E20;
  v3 = sub_1B256D3CC();
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v4, v5);
  v6 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v6);

  sub_1B256E09C();
  OUTLINED_FUNCTION_514();

  v7 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    v8 = *(v0 + 56);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_3_23();
    *v2 = 136446466;
    OUTLINED_FUNCTION_39_2();
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v12 = OUTLINED_FUNCTION_12_11();
    MEMORY[0x1B2749D50](v12);
    OUTLINED_FUNCTION_94_0();
    v13 = v21;
    sub_1B2519814(v20, v21, &v19);
    OUTLINED_FUNCTION_328_0();
    *(v2 + 4) = v8;
    OUTLINED_FUNCTION_207_0();
    v14 = OUTLINED_FUNCTION_50_0();
    sub_1B2519814(v14, v15, v16);
    OUTLINED_FUNCTION_200_1();

    *(v2 + 14) = v13;
    OUTLINED_FUNCTION_327_0(&dword_1B23EF000, v7, v3, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_10_7();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v17();
}

uint64_t sub_1B254D99C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 2400) = v4;
  *(v5 + 2257) = a4;
  *(v5 + 2392) = a3;
  *(v5 + 2384) = a2;
  *(v5 + 2376) = a1;
  *(v5 + 2408) = *v4;
  v6 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v5 + 2416) = v6;
  *(v5 + 2424) = *(v6 - 8);
  *(v5 + 2432) = swift_task_alloc();
  *(v5 + 2440) = swift_task_alloc();
  *(v5 + 2448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  *(v5 + 2456) = swift_task_alloc();
  *(v5 + 2464) = *(type metadata accessor for Product() - 8);
  *(v5 + 2472) = swift_task_alloc();
  *(v5 + 2480) = swift_task_alloc();
  *(v5 + 2488) = swift_task_alloc();
  *(v5 + 2496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  *(v5 + 2504) = swift_task_alloc();
  *(v5 + 2512) = swift_task_alloc();
  *(v5 + 2520) = swift_task_alloc();
  v7 = sub_1B256D36C();
  *(v5 + 2528) = v7;
  *(v5 + 2536) = *(v7 - 8);
  *(v5 + 2544) = swift_task_alloc();
  *(v5 + 2552) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B254DC18, v4, 0);
}

uint64_t sub_1B254DC18()
{
  v194 = v0;
  v1 = v0[300];
  v2 = v0[297];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1 << *(v0[297] + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v3;
  v188 = v0[297];

  v185 = v1;
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_516();
  v13 = 0;
  v14 = (63 - v6) >> 6;
  v15 = MEMORY[0x1E69E7CC0];
  v184 = v0;
LABEL_5:
  v0[320] = v15;
  v16 = v13;
  v17 = v15;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    v13 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(v188 + 48) + 24 * (v18 | (v13 << 6));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v185 + 144);
    OUTLINED_FUNCTION_14_3();
    sub_1B24D0BE0();

    v24 = OUTLINED_FUNCTION_14_3();
    v26 = sub_1B24706E0(v24, v25, v22, v23);

    if ((v26 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1B2455EB8(0, *(v17 + 16) + 1, 1);
        v17 = v192;
      }

      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v31 = OUTLINED_FUNCTION_69_0(v27);
        v33 = v32;
        isUniquelyReferenced_nonNull_native = sub_1B2455EB8(v31, v32, 1);
        v29 = v33;
        v17 = v192;
      }

      *(v17 + 16) = v29;
      v30 = v17 + 24 * v28;
      *(v30 + 32) = v20;
      *(v30 + 40) = v21;
      *(v30 + 48) = v22;
      v15 = v17;
      v0 = v184;
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_14_3();
    isUniquelyReferenced_nonNull_native = sub_1B24D0BE8();
    v16 = v13;
  }

  while (v8);
  while (1)
  {
LABEL_7:
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v10, v11, v12);
    }

    if (v13 >= v14)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v16;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v34 = v184;
  v35 = v184[297];

  v36 = *(v35 + 16);
  v183 = v17;
  v37 = *(v17 + 16);
  v38 = v36 - v37;
  if (v36 != v37)
  {
    v181 = *(v17 + 16);
    v175 = v184[300];
    v39 = v184[299];
    v40 = v184[298];
    v41 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    v192 = sub_1B251954C(85);
    v193 = v42;
    MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B2592E40);
    v184[286] = v38;
    OUTLINED_FUNCTION_29_1();
    v43 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v43);

    MEMORY[0x1B2749D50](543584032, 0xE400000000000000);
    v184[288] = *(v35 + 16);
    OUTLINED_FUNCTION_29_1();
    v44 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v44);

    MEMORY[0x1B2749D50](0xD000000000000032, 0x80000001B2592E60);
    v45 = v192;
    v46 = v193;
    v179 = sub_1B256E08C();
    OUTLINED_FUNCTION_43_0();
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    *(v47 + 24) = v39;
    OUTLINED_FUNCTION_43_0();
    v48 = swift_allocObject();
    v173 = v45;
    *(v48 + 16) = v45;
    *(v48 + 24) = v46;

    v49 = &v41[v175];
    v176 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_342(v50);
    OUTLINED_FUNCTION_119_2();
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1B25653D0;
    *(v52 + 24) = v47;
    OUTLINED_FUNCTION_43_0();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1B25653E8;
    *(v53 + 24) = v52;
    OUTLINED_FUNCTION_119_2();
    v54 = swift_allocObject();
    *(v54 + 16) = v184;
    OUTLINED_FUNCTION_119_2();
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1B25653D8;
    *(v56 + 24) = v48;
    OUTLINED_FUNCTION_43_0();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B25661CC;
    *(v57 + 24) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50);
    v58 = OUTLINED_FUNCTION_272();
    *(v58 + 16) = xmmword_1B2587210;
    *(v58 + 32) = sub_1B25653E0;
    *(v58 + 40) = v49;
    *(v58 + 48) = sub_1B25661DC;
    *(v58 + 56) = v51;
    *(v58 + 64) = sub_1B25653F0;
    *(v58 + 72) = v53;
    *(v58 + 80) = sub_1B25661DC;
    *(v58 + 88) = v54;
    *(v58 + 96) = sub_1B25661DC;
    *(v58 + 104) = v55;
    *(v58 + 112) = sub_1B25661B0;
    *(v58 + 120) = v57;
    swift_setDeallocating();
    v59 = v58;
    sub_1B24C3DB8();
    if (os_log_type_enabled(v176, v179))
    {
      v34 = v184;
      v60 = v184[299];
      v61 = v184[298];
      v62 = OUTLINED_FUNCTION_21_3();
      v63 = OUTLINED_FUNCTION_20_4();
      *v62 = 136446466;
      OUTLINED_FUNCTION_10_23(v63);
      MEMORY[0x1B2749D50](v61, v60);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_374();

      *(v62 + 4) = v60;
      *(v62 + 12) = 2082;
      sub_1B2519814(v173, v46, &v191);
      OUTLINED_FUNCTION_399();
      *(v62 + 14) = v59;
      _os_log_impl(&dword_1B23EF000, v176, v179, "%{public}s%{public}s", v62, 0x16u);
      OUTLINED_FUNCTION_304_0();
      OUTLINED_FUNCTION_7_12();
      OUTLINED_FUNCTION_236();
    }

    else
    {

      v34 = v184;
    }

    v37 = v181;
    v36 = *(v183 + 16);
  }

  v34[321] = v36;
  v64 = v34[300];
  v65 = v34[299];
  v66 = v34[298];
  if (!v36)
  {

    v95 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    OUTLINED_FUNCTION_14_2();
    v189 = sub_1B256E08C();
    OUTLINED_FUNCTION_43_0();
    v96 = swift_allocObject();
    *(v96 + 16) = v66;
    *(v96 + 24) = v65;
    OUTLINED_FUNCTION_43_0();
    v97 = swift_allocObject();
    *(v97 + 16) = 0xD000000000000041;
    *(v97 + 24) = v4;
    v187 = v4;

    v98 = &v95[v64];
    v99 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v100 = swift_allocObject();
    OUTLINED_FUNCTION_342(v100);
    OUTLINED_FUNCTION_119_2();
    v101 = swift_allocObject();
    *(v101 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1B25661D0;
    *(v102 + 24) = v96;
    OUTLINED_FUNCTION_43_0();
    v103 = swift_allocObject();
    *(v103 + 16) = sub_1B25661CC;
    *(v103 + 24) = v102;
    OUTLINED_FUNCTION_119_2();
    v104 = swift_allocObject();
    *(v104 + 16) = v65;
    OUTLINED_FUNCTION_119_2();
    v105 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v105);
    OUTLINED_FUNCTION_43_0();
    v106 = swift_allocObject();
    *(v106 + 16) = sub_1B25661D4;
    *(v106 + 24) = v97;
    OUTLINED_FUNCTION_43_0();
    v107 = swift_allocObject();
    *(v107 + 16) = sub_1B25661CC;
    *(v107 + 24) = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50);
    v108 = OUTLINED_FUNCTION_272();
    *(v108 + 16) = xmmword_1B2587210;
    *(v108 + 32) = sub_1B25661DC;
    *(v108 + 40) = v98;
    *(v108 + 48) = sub_1B25661DC;
    *(v108 + 56) = v101;
    *(v108 + 64) = sub_1B25661B0;
    *(v108 + 72) = v103;
    *(v108 + 80) = sub_1B25661DC;
    *(v108 + 88) = v104;
    *(v108 + 96) = sub_1B25661DC;
    *(v108 + 104) = v96;
    *(v108 + 112) = sub_1B25661B0;
    *(v108 + 120) = v107;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (os_log_type_enabled(v99, v189))
    {
      OUTLINED_FUNCTION_152_1();
      v109 = OUTLINED_FUNCTION_46_1();
      *v101 = 136446466;
      OUTLINED_FUNCTION_10_23(v109);
      v110 = OUTLINED_FUNCTION_157_0();
      MEMORY[0x1B2749D50](v110);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      *(v101 + 4) = v96;
      OUTLINED_FUNCTION_74_0();
      *(v101 + 14) = sub_1B2519814(0xD000000000000041, v187, &v191);
      OUTLINED_FUNCTION_247(&dword_1B23EF000, v111, v189, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_44_1();
    }

LABEL_65:
    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_479();

    __asm { BRAA            X1, X16 }
  }

  v177 = v34[298];
  OUTLINED_FUNCTION_50_5();

  sub_1B253FAE4(v67);
  swift_endAccess();
  OUTLINED_FUNCTION_50_5();
  v182 = v64;
  sub_1B2546B48(v183);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v34[322] = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v192 = sub_1B251954C(97);
  v193 = v69;
  MEMORY[0x1B2749D50](0xD000000000000017, 0x80000001B2592EA0);
  v34[292] = v37;
  v70 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v70);

  MEMORY[0x1B2749D50](0xD000000000000023, 0x80000001B2592EC0);
  v71 = OUTLINED_FUNCTION_28_1();
  v72 = MEMORY[0x1B2749EE0](v71);
  MEMORY[0x1B2749D50](v72);

  MEMORY[0x1B2749D50](0xD000000000000021, 0x80000001B2592EF0);
  sub_1B24D0B8C();

  OUTLINED_FUNCTION_146_2();
  sub_1B256DFCC();

  v73 = OUTLINED_FUNCTION_14_3();
  MEMORY[0x1B2749D50](v73);

  v74 = v192;
  v75 = v193;
  v180 = sub_1B256E0CC();
  OUTLINED_FUNCTION_43_0();
  v76 = swift_allocObject();
  *(v76 + 16) = v177;
  *(v76 + 24) = v65;
  OUTLINED_FUNCTION_43_0();
  v77 = swift_allocObject();
  v171 = v74;
  *(v77 + 16) = v74;
  *(v77 + 24) = v75;
  v174 = v65;

  v186 = v75;

  v172 = v68;
  v78 = &v68[v182];
  v178 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v79 = swift_allocObject();
  OUTLINED_FUNCTION_342(v79);
  OUTLINED_FUNCTION_119_2();
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  OUTLINED_FUNCTION_43_0();
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1B25661D0;
  *(v81 + 24) = v76;
  OUTLINED_FUNCTION_43_0();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1B25661CC;
  *(v82 + 24) = v81;
  OUTLINED_FUNCTION_119_2();
  v83 = swift_allocObject();
  *(v83 + 16) = v65;
  OUTLINED_FUNCTION_119_2();
  v84 = swift_allocObject();
  OUTLINED_FUNCTION_183_1(v84);
  OUTLINED_FUNCTION_43_0();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1B25661D4;
  *(v85 + 24) = v77;
  OUTLINED_FUNCTION_43_0();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1B25661CC;
  *(v86 + 24) = v85;
  v34[323] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E50);
  v87 = OUTLINED_FUNCTION_272();
  *(v87 + 16) = xmmword_1B2587210;
  *(v87 + 32) = sub_1B25661DC;
  *(v87 + 40) = v78;
  *(v87 + 48) = sub_1B25661DC;
  *(v87 + 56) = v80;
  *(v87 + 64) = sub_1B25661B0;
  *(v87 + 72) = v82;
  *(v87 + 80) = sub_1B25661DC;
  *(v87 + 88) = v83;
  *(v87 + 96) = sub_1B25661DC;
  *(v87 + 104) = v76;
  *(v87 + 112) = sub_1B25661B0;
  *(v87 + 120) = v86;
  swift_setDeallocating();
  sub_1B24C3DB8();
  if (os_log_type_enabled(v178, v180))
  {
    v88 = v34[299];
    v89 = v34[298];
    OUTLINED_FUNCTION_21_3();
    v90 = OUTLINED_FUNCTION_35_6();
    *v80 = 136446466;
    OUTLINED_FUNCTION_10_23(v90);
    MEMORY[0x1B2749D50](v89, v88);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_374();

    OUTLINED_FUNCTION_413();
    v92 = sub_1B2519814(v171, v186, v91);

    *(v80 + 14) = v92;
    OUTLINED_FUNCTION_319_0(&dword_1B23EF000, v93, v180, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_7_12();
  }

  else
  {
  }

  v94 = v34;
  if (sub_1B256DE9C())
  {
    v112 = v34[298];
    v190 = OUTLINED_FUNCTION_511();
    OUTLINED_FUNCTION_43_0();
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v174;
    OUTLINED_FUNCTION_43_0();
    v114 = swift_allocObject();
    *(v114 + 16) = 0xD00000000000002FLL;
    *(v114 + 24) = v180;

    v115 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v116 = swift_allocObject();
    OUTLINED_FUNCTION_144_1(v116);
    OUTLINED_FUNCTION_119_2();
    v117 = swift_allocObject();
    *(v117 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v118 = swift_allocObject();
    *(v118 + 16) = sub_1B25661D0;
    *(v118 + 24) = v113;
    OUTLINED_FUNCTION_43_0();
    v119 = swift_allocObject();
    *(v119 + 16) = sub_1B25661CC;
    *(v119 + 24) = v118;
    OUTLINED_FUNCTION_119_2();
    v120 = swift_allocObject();
    *(v120 + 16) = v180;
    OUTLINED_FUNCTION_119_2();
    v121 = swift_allocObject();
    *(v121 + 16) = 8;
    OUTLINED_FUNCTION_43_0();
    v122 = swift_allocObject();
    *(v122 + 16) = sub_1B25661D4;
    *(v122 + 24) = v114;
    OUTLINED_FUNCTION_43_0();
    v123 = swift_allocObject();
    *(v123 + 16) = sub_1B25661CC;
    *(v123 + 24) = v122;
    v124 = OUTLINED_FUNCTION_272();
    *(v124 + 16) = xmmword_1B2587210;
    *(v124 + 32) = sub_1B25661DC;
    *(v124 + 40) = &v172[v182];
    *(v124 + 48) = sub_1B25661DC;
    *(v124 + 56) = v117;
    *(v124 + 64) = sub_1B25661B0;
    *(v124 + 72) = v119;
    *(v124 + 80) = sub_1B25661DC;
    *(v124 + 88) = v120;
    *(v124 + 96) = sub_1B25661DC;
    *(v124 + 104) = v121;
    *(v124 + 112) = sub_1B25661B0;
    *(v124 + 120) = v123;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (os_log_type_enabled(v115, v190))
    {
      OUTLINED_FUNCTION_21_3();
      v125 = OUTLINED_FUNCTION_35_6();
      *v123 = 136446466;
      OUTLINED_FUNCTION_10_23(v125);
      v126 = OUTLINED_FUNCTION_376();
      MEMORY[0x1B2749D50](v126);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_374();

      OUTLINED_FUNCTION_413();
      *(v123 + 14) = sub_1B2519814(0xD00000000000002FLL, v180, v127);
      _os_log_impl(&dword_1B23EF000, v115, v190, "%{public}s%{public}s", v123, 0x16u);
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_7_12();
    }

    sub_1B25579B4(v34[300], v183, v34[298], v34[299]);

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_352();
  v130 = v128 & v129;
  v132 = (63 - v131) >> 6;

  v133 = 0;
  v134 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v94[324] = v134;
  while (v130)
  {
LABEL_40:
    OUTLINED_FUNCTION_412();
    v137 = *(v188 + 48) + 24 * (v136 | (v133 << 6));
    if ((*(v137 + 16) & 1) == 0)
    {
      v139 = *v137;
      v138 = *(v137 + 8);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        sub_1B2448D00();
        v134 = isUniquelyReferenced_nonNull_native;
      }

      v141 = *(v134 + 16);
      v140 = *(v134 + 24);
      if (v141 >= v140 >> 1)
      {
        OUTLINED_FUNCTION_69_0(v140);
        OUTLINED_FUNCTION_121_2();
        sub_1B2448D00();
        v134 = isUniquelyReferenced_nonNull_native;
      }

      *(v134 + 16) = v141 + 1;
      v142 = v134 + 16 * v141;
      *(v142 + 32) = v139;
      *(v142 + 40) = v138;
      v94 = v184;
      goto LABEL_34;
    }
  }

  while (1)
  {
    v135 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      goto LABEL_77;
    }

    if (v135 >= v132)
    {
      break;
    }

    v130 = *(v4 + 8 * v135);
    ++v133;
    if (v130)
    {
      v133 = v135;
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_352();
  v145 = v143 & v144;
  v147 = (63 - v146) >> 6;

  v148 = 0;
  v149 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v94[325] = v149;
  while (v145)
  {
LABEL_53:
    OUTLINED_FUNCTION_409();
    OUTLINED_FUNCTION_205_0();
    if (v152)
    {
      v154 = *v151;
      v153 = v151[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_38();
        sub_1B2448D00();
        v149 = isUniquelyReferenced_nonNull_native;
      }

      v156 = *(v149 + 16);
      v155 = *(v149 + 24);
      if (v156 >= v155 >> 1)
      {
        OUTLINED_FUNCTION_69_0(v155);
        sub_1B2448D00();
        v149 = isUniquelyReferenced_nonNull_native;
      }

      *(v149 + 16) = v156 + 1;
      v157 = v149 + 16 * v156;
      *(v157 + 32) = v154;
      *(v157 + 40) = v153;
      v94 = v184;
      goto LABEL_47;
    }
  }

  while (1)
  {
    v150 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      goto LABEL_78;
    }

    if (v150 >= v147)
    {
      break;
    }

    v145 = *(v4 + 8 * v150);
    ++v148;
    if (v145)
    {
      v148 = v150;
      goto LABEL_53;
    }
  }

  v158 = *(v134 + 16);
  v94[326] = v158;
  v159 = *(v149 + 16);
  if (v158)
  {
    if (!v159)
    {
      v160 = OUTLINED_FUNCTION_499();
      v94[327] = v160;
      *v160 = v94;
      v160[1] = sub_1B254F060;
      OUTLINED_FUNCTION_374();
      goto LABEL_70;
    }
  }

  else if (v159)
  {

    v163 = OUTLINED_FUNCTION_499();
    v94[330] = v163;
    *v163 = v94;
    v163[1] = sub_1B2551640;
LABEL_70:
    OUTLINED_FUNCTION_479();

    __asm { BR              X2 }
  }

  v166 = *(v94 + 2257);
  v167 = swift_allocObject();
  v94[333] = v167;
  *(v167 + 16) = v134;
  *(v167 + 24) = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E58);
  swift_asyncLet_begin();
  v168 = swift_allocObject();
  v94[334] = v168;
  *(v168 + 16) = v149;
  *(v168 + 24) = v166;

  swift_asyncLet_begin();
  OUTLINED_FUNCTION_479();

  return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v10, v11, v12);
}

uint64_t sub_1B254F060()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  v5[328] = v0;

  if (v0)
  {
    v9 = v5[300];

    v10 = sub_1B2550A0C;
    v11 = v9;
  }

  else
  {

    v5[329] = v3;
    OUTLINED_FUNCTION_310_0();
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t sub_1B2551640()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  v5[331] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_310_0();
  }

  else
  {
    v10 = v5[300];
    v5[332] = v3;
    v9 = sub_1B2551764;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1B2553C08()
{
  OUTLINED_FUNCTION_4_0();
  v1[335] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEB0](v2, v3, v4, v1 + 244);
  }

  else
  {
    v1[336] = v1[293];

    v5 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEC0](v5, v6, v7, v1 + 228);
  }
}

uint64_t sub_1B2553CB0()
{
  OUTLINED_FUNCTION_4_0();
  *(v1 + 2696) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_240_0();

    return MEMORY[0x1EEE6DEB0](v2, v3, v4, v1 + 1760);
  }

  else
  {
    v5 = *(v1 + 2400);

    return MEMORY[0x1EEE6DFA0](sub_1B25549F4, v5, 0);
  }
}

uint64_t sub_1B2553DA4()
{
  v208 = v1;
  OUTLINED_FUNCTION_425();
  v5 = v1[335];
  v195 = v1[333];
  v196 = v1[334];
  v6 = OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_424(v6, v7);
  OUTLINED_FUNCTION_221_0();
  v199 = v5;
  v1[296] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  OUTLINED_FUNCTION_507();
  v205 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_43_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_243_0(v8);
  OUTLINED_FUNCTION_43_0();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_403(v9);

  v204 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v10);
  OUTLINED_FUNCTION_119_2();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_234_0(v11);
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_38_9(v12);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_31_11(v13);
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_450(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_467(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_36_7(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_45_6(v17);
  v19 = OUTLINED_FUNCTION_23_12(v18, xmmword_1B2587210);
  v19[3].n128_u64[0] = sub_1B25661DC;
  v19[3].n128_u64[1] = v4;
  v20 = v204;
  v21 = OUTLINED_FUNCTION_42_6(v19);
  v22 = v205;
  v23 = OUTLINED_FUNCTION_41_10(v21);
  v23[12] = sub_1B25661DC;
  v23[13] = v3;
  v23[14] = sub_1B25661B0;
  v23[15] = v9;
  swift_setDeallocating();
  sub_1B24C3DB8();
  v24 = OUTLINED_FUNCTION_513();
  Strong = MEMORY[0x1E69E7CA0];
  if (v24)
  {
    OUTLINED_FUNCTION_152_1();
    v9 = OUTLINED_FUNCTION_126_1();
    *v18 = 136446466;
    OUTLINED_FUNCTION_10_23(v9);
    v26 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v26);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_172_0();

    OUTLINED_FUNCTION_54_8();
    sub_1B2519814(v0, v2, v207);
    OUTLINED_FUNCTION_200_1();

    *(v18 + 14) = "ype";
    OUTLINED_FUNCTION_224_0(&dword_1B23EF000, v27, v28, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    OUTLINED_FUNCTION_464();
    OUTLINED_FUNCTION_120_1();
    v29 = v1[298];
    OUTLINED_FUNCTION_510();
    OUTLINED_FUNCTION_43_0();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_452(v30);
    OUTLINED_FUNCTION_43_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_148_0(v31);

    v32 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v33 = swift_allocObject();
    OUTLINED_FUNCTION_181_0(v33);
    OUTLINED_FUNCTION_119_2();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_239_0(v34);
    OUTLINED_FUNCTION_43_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_32_9(v35);
    OUTLINED_FUNCTION_43_0();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_33_9(v36);
    OUTLINED_FUNCTION_119_2();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_430(v37);
    OUTLINED_FUNCTION_119_2();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v38);
    OUTLINED_FUNCTION_43_0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_27_12(v39);
    OUTLINED_FUNCTION_43_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_37_7(v40);
    v41 = OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_20_17(v41, v42, v43, v44, v45, v46, v47, v48, v184, v186, v188, v191, v49);
    *(v50 + 48) = sub_1B25661DC;
    *(v50 + 56) = v9;
    v51 = OUTLINED_FUNCTION_29_12(v50);
    v51[10] = sub_1B25661DC;
    v51[11] = v205;
    v51[12] = sub_1B25661DC;
    v51[13] = v5;
    v51[14] = sub_1B25661B0;
    v51[15] = v29;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (OUTLINED_FUNCTION_508())
    {
      OUTLINED_FUNCTION_93_3();
      v52 = OUTLINED_FUNCTION_3_23();
      *v3 = 136446466;
      OUTLINED_FUNCTION_10_23(v52);
      v53 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v53);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      v54 = OUTLINED_FUNCTION_95_5();
      *(v3 + 14) = sub_1B2519814(v54, v3, v55);
      OUTLINED_FUNCTION_219_0(&dword_1B23EF000, v56, v57, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_416();
  v202 = v1[302];
  v206 = v58;
  v197 = v2;
  while (1)
  {
    OUTLINED_FUNCTION_415();
    if ((v59 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_222_0();
    OUTLINED_FUNCTION_434();
    if (!v69)
    {
      OUTLINED_FUNCTION_245_0(v60, v61, v62, v63, v64, v65, v66, v67, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v68);

LABEL_32:
      v133 = OUTLINED_FUNCTION_157_0();
      sub_1B256615C(v133, v134);
      swift_endAccess();
LABEL_33:
      OUTLINED_FUNCTION_465();
      goto LABEL_34;
    }

    v70 = OUTLINED_FUNCTION_266_0();
    v72 = sub_1B2458898(v70, v71);
    if ((v73 & 1) == 0)
    {
      OUTLINED_FUNCTION_245_0(v72, v73, v74, v75, v76, v77, v78, v79, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v80);
      v22 = 24;
      goto LABEL_32;
    }

    v81 = OUTLINED_FUNCTION_284_0(v72);
    sub_1B247D7E0(v81, v3);
    v22 = 24;
    if (*v3 == 1)
    {
      goto LABEL_32;
    }

    Strong = swift_weakLoadStrong();
    v82 = OUTLINED_FUNCTION_157_0();
    sub_1B256615C(v82, v83);
    swift_endAccess();
    if (!Strong)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_230();
    v201 = v84;
    v85 = Strong;
    v189 = sub_1B256DDAC();
    v86 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    v90 = sub_1B256DD6C();
    OUTLINED_FUNCTION_325_0(v90, v91, v92, v93, v94, v95, v96, v97, v184, v186, v189, v191, v193, v194, v195, v196, v197, v198, v199);

    v98 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v99 = swift_allocObject();
    v99[2] = v98;
    v99[3] = MEMORY[0x1E69E85E0];
    v99[4] = Strong;
    v200 = Strong;
    v99[5] = Strong;
    Strong = &qword_1EB7D1910;
    OUTLINED_FUNCTION_414(v99, v100, v101, v102, v103, v104, v105, v106, v185, v187, v190, v192);
    sub_1B24C5C14();
    OUTLINED_FUNCTION_429();
    v107 = v1[313];
    if (v98 == 1)
    {
      v108 = OUTLINED_FUNCTION_38_7();
      sub_1B256615C(v108, v109);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v135 = OUTLINED_FUNCTION_18_1();
      v136(v135);
    }

    OUTLINED_FUNCTION_482();

    v22 = 24;
    if (v107)
    {
      swift_getObjectType();
      sub_1B256DCEC();
      OUTLINED_FUNCTION_172_0();
      v107 = v137;
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0;
    }

    sub_1B256615C(v1[314], &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_43_7();
    *(v138 + 16) = v146;
    *(v138 + 24) = v201;
    if (v107 | v85)
    {
      OUTLINED_FUNCTION_417(v138, v139, v140, v141, v142, v143, v144, v145, v184, v186);
      v1[195] = v85;
      v1[196] = v107;
    }

    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_509();

    OUTLINED_FUNCTION_266_0();
LABEL_34:
    sub_1B24D0BE8();
LABEL_35:
    if (++v20 == v1[321])
    {
      v147 = sub_1B256DE9C();
      if (v147)
      {
        OUTLINED_FUNCTION_464();
        OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_14_2();
        sub_1B256E0CC();
        OUTLINED_FUNCTION_43_0();
        v148 = swift_allocObject();
        OUTLINED_FUNCTION_451(v148);
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        OUTLINED_FUNCTION_145_1();
        v203 = v149;
        OUTLINED_FUNCTION_505(v150, v149);
        v32 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v151 = swift_allocObject();
        OUTLINED_FUNCTION_62_5(v151);
        OUTLINED_FUNCTION_119_2();
        v152 = swift_allocObject();
        OUTLINED_FUNCTION_61_3(v152);
        OUTLINED_FUNCTION_43_0();
        v153 = swift_allocObject();
        OUTLINED_FUNCTION_28_13(v153);
        OUTLINED_FUNCTION_43_0();
        v154 = swift_allocObject();
        OUTLINED_FUNCTION_30_10(v154);
        OUTLINED_FUNCTION_119_2();
        v155 = swift_allocObject();
        OUTLINED_FUNCTION_161_2(v155);
        OUTLINED_FUNCTION_119_2();
        v156 = swift_allocObject();
        OUTLINED_FUNCTION_183_1(v156);
        OUTLINED_FUNCTION_43_0();
        v157 = swift_allocObject();
        OUTLINED_FUNCTION_39_9(v157);
        OUTLINED_FUNCTION_43_0();
        v158 = swift_allocObject();
        OUTLINED_FUNCTION_34_9(v158);
        v159 = OUTLINED_FUNCTION_272();
        OUTLINED_FUNCTION_22_12(v159, v160, v161, v162, v163, v164, v165, v166, v184, v186, v188, v191, v167);
        v168[6] = sub_1B25661DC;
        v168[7] = v20;
        v168[8] = sub_1B25661B0;
        v168[9] = v22;
        v168[10] = sub_1B25661DC;
        v168[11] = &unk_1EB7D2CD0;
        v168[12] = sub_1B25661DC;
        v168[13] = v2;
        v168[14] = sub_1B25661B0;
        v168[15] = v9;
        swift_setDeallocating();
        OUTLINED_FUNCTION_502();
        if (OUTLINED_FUNCTION_292_0())
        {
          OUTLINED_FUNCTION_93_3();
          v169 = OUTLINED_FUNCTION_126_1();
          *v18 = 136446466;
          OUTLINED_FUNCTION_10_23(v169);
          v170 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x1B2749D50](v170);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_156_1();
          OUTLINED_FUNCTION_172_0();

          OUTLINED_FUNCTION_54_8();
          *(v18 + 14) = sub_1B2519814(v203, v206, v207);
          OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v171, v172, "%{public}s%{public}s");
          OUTLINED_FUNCTION_101_2();
          OUTLINED_FUNCTION_63_0();
LABEL_48:
          OUTLINED_FUNCTION_11_4();
        }

LABEL_49:
      }

      else if (*(v206 + 16))
      {
        v180 = OUTLINED_FUNCTION_296_0();
        OUTLINED_FUNCTION_81_4(v180);
        OUTLINED_FUNCTION_154();

        v181 = v199;
        sub_1B256DD5C();
        OUTLINED_FUNCTION_355();
        v182 = swift_allocObject();
        v183 = OUTLINED_FUNCTION_185_1(v182);
        OUTLINED_FUNCTION_44_8(v183, MEMORY[0x1E69E85E0]);
      }

      else
      {
      }

      v173 = OUTLINED_FUNCTION_26_14();
      sub_1B25579B4(v173, v174, v175, v176);

      v177 = OUTLINED_FUNCTION_91_4();
      sub_1B24E313C(v177);
      v178 = OUTLINED_FUNCTION_90_5();
      sub_1B24E313C(v178);
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_400();

      OUTLINED_FUNCTION_7_2();

      return v179();
    }
  }

  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_423();

  if (!Strong || (v110 = OUTLINED_FUNCTION_266_0(), sub_1B2458898(v110, v111), (v112 & 1) == 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_266_0();
    goto LABEL_34;
  }

  v200 = v9;
  v201 = v20;
  v113 = v1[305];
  v114 = v1[304];
  OUTLINED_FUNCTION_3_38();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_2_40();
  sub_1B25636F8();
  swift_endAccess();
  v115 = swift_weakLoadStrong();
  if (v115)
  {
    v113 = v115;
    v114 = v1[315];
    v116 = sub_1B256DDAC();
    v119 = OUTLINED_FUNCTION_102_3(v114, v117, v118, v116);
    OUTLINED_FUNCTION_325_0(v119, v120, v121, v122, v123, v124, v125, v126, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199);

    sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v127 = swift_allocObject();
    v128 = OUTLINED_FUNCTION_185_1(v127);
    *(v128 + 24) = MEMORY[0x1E69E85E0];
    *(v128 + 32) = v113;
    OUTLINED_FUNCTION_21_18(v128);
    sub_1B247DAA8();
    OUTLINED_FUNCTION_154();
  }

  result = OUTLINED_FUNCTION_343();
  v130 = 0;
  while (2)
  {
    v131 = *(v113 + 16);
    Strong = v130;
LABEL_21:
    if (Strong == v131)
    {
      *v18 = 0;
      v130 = v131;
LABEL_26:
      OUTLINED_FUNCTION_356();
      sub_1B24C42F0();
      if (*(v3 + 120))
      {

        sub_1B24D0BE8();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v2 = v197;
        v22 = 24;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_418();
      sub_1B24C42F0();
      swift_weakLoadStrong();
      result = OUTLINED_FUNCTION_484();
      Strong = v130;
      if (v114)
      {
        v132 = OUTLINED_FUNCTION_294_0();
        sub_1B25603E8(v132, v114);

        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  if ((Strong & 0x8000000000000000) == 0)
  {
    if (Strong >= *(v113 + 16))
    {
      goto LABEL_57;
    }

    sub_1B24C5C14();
    v130 = Strong + 1;
    goto LABEL_26;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1B25549F4()
{
  OUTLINED_FUNCTION_4_0();
  v6 = *(v0 + 2688);

  sub_1B2564100(v1);
  *(v0 + 2704) = v6;

  v2 = OUTLINED_FUNCTION_240_0();

  return MEMORY[0x1EEE6DEB0](v2, v3, v4, v0 + 1632);
}

void sub_1B2554AB8()
{
  v307 = v0;
  v1 = v0[338];
  v2 = v0[326];
  v3 = v0[325];
  v4 = v0[299];
  v5 = v0[298];
  v304 = sub_1B251954C(104);
  v305 = v6;
  OUTLINED_FUNCTION_290_0();
  v0[291] = v2;
  OUTLINED_FUNCTION_14_3();
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  OUTLINED_FUNCTION_390();
  v288 = v3;
  OUTLINED_FUNCTION_335_0();
  OUTLINED_FUNCTION_14_3();
  v8 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v8);

  OUTLINED_FUNCTION_392();
  v9 = *(v1 + 16);
  v297 = v1;

  v0[285] = v9;
  OUTLINED_FUNCTION_14_3();
  sub_1B256EAAC();
  OUTLINED_FUNCTION_329_0();

  MEMORY[0x1B2749D50](46, 0xE100000000000000);
  v10 = v304;
  v11 = v305;
  v291 = sub_1B256E08C();
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_403(v13);

  v294 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_334_0(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_89_2(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B25661CC;
  *(v17 + 24) = v16;
  OUTLINED_FUNCTION_119_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  OUTLINED_FUNCTION_119_2();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  OUTLINED_FUNCTION_43_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_88_1(v20);
  OUTLINED_FUNCTION_43_0();
  swift_allocObject();
  OUTLINED_FUNCTION_83_5();
  *(v21 + 16) = v22;
  *(v21 + 24) = v20;
  v23 = OUTLINED_FUNCTION_272();
  v24 = OUTLINED_FUNCTION_66_4(v23, xmmword_1B2587210);
  v24[3].n128_u64[0] = sub_1B25661DC;
  v24[3].n128_u64[1] = 0xD00000000000001CLL;
  v25 = v291;
  v24[4].n128_u64[0] = sub_1B25661B0;
  v24[4].n128_u64[1] = v17;
  v24[5].n128_u64[0] = sub_1B25661DC;
  v24[5].n128_u64[1] = v18;
  v24[6].n128_u64[0] = sub_1B25661DC;
  v24[6].n128_u64[1] = v19;
  v24[7].n128_u64[0] = sub_1B25661B0;
  v24[7].n128_u64[1] = v13;
  swift_setDeallocating();
  sub_1B24C3DB8();
  v300 = v0;
  if (os_log_type_enabled(v294, v291))
  {
    v26 = OUTLINED_FUNCTION_152_1();
    v27 = OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_369(v27);
    *v26 = 136446466;
    OUTLINED_FUNCTION_53_1();
    v28 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v28);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_172_0();

    *(v26 + 4) = v19;
    OUTLINED_FUNCTION_439();
    sub_1B2519814(v10, v11, v306);
    OUTLINED_FUNCTION_200_1();

    *(v26 + 14) = "ype";
    _os_log_impl(&dword_1B23EF000, v294, v291, "%{public}s%{public}s", v26, 0x16u);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_236();
    OUTLINED_FUNCTION_63_0();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    v29 = v0[322];
    v30 = v0[298];

    sub_1B256E0CC();
    OUTLINED_FUNCTION_43_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_243_0(v31);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_105_3();
    v292 = v32 + 13;
    *(v33 + 16) = v32 + 13;
    *(v33 + 24) = 0x80000001B2593170;

    v34 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_62_5(v35);
    OUTLINED_FUNCTION_119_2();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_61_3(v36);
    OUTLINED_FUNCTION_43_0();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_28_13(v37);
    OUTLINED_FUNCTION_43_0();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_30_10(v38);
    OUTLINED_FUNCTION_119_2();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v39);
    OUTLINED_FUNCTION_119_2();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_183_1(v40);
    OUTLINED_FUNCTION_43_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_39_9(v41);
    OUTLINED_FUNCTION_43_0();
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_99_5(v42);
    v44 = OUTLINED_FUNCTION_66_4(v43, xmmword_1B2587210);
    v44[3].n128_u64[0] = sub_1B25661DC;
    v44[3].n128_u64[1] = v13;
    v44[4].n128_u64[0] = sub_1B25661B0;
    v44[4].n128_u64[1] = v25;
    v44[5].n128_u64[0] = sub_1B25661DC;
    v44[5].n128_u64[1] = v19;
    v44[6].n128_u64[0] = sub_1B25661DC;
    v44[6].n128_u64[1] = v29;
    v44[7].n128_u64[0] = sub_1B25661B0;
    v44[7].n128_u64[1] = v30;
    swift_setDeallocating();
    OUTLINED_FUNCTION_348();
    if (OUTLINED_FUNCTION_292_0())
    {
      OUTLINED_FUNCTION_93_3();
      v45 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_194_1(v45);
      OUTLINED_FUNCTION_13_19(4.8752e-34);
      v46 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v46);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_127_1();
      OUTLINED_FUNCTION_172_0();

      OUTLINED_FUNCTION_35_8();
      *(v294 + 14) = sub_1B2519814(v292, 0x80000001B2593170, v47);
      OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v48, v49, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    v50 = OUTLINED_FUNCTION_26_14();
LABEL_76:
    sub_1B25579B4(v50, v51, v52, v53);
LABEL_77:

    v184 = OUTLINED_FUNCTION_91_4();
    sub_1B24E313C(v184);
    v185 = OUTLINED_FUNCTION_90_5();
    sub_1B24E313C(v185);
    OUTLINED_FUNCTION_6_30();

    OUTLINED_FUNCTION_7_2();

    v186();
    return;
  }

  v54 = v0;
  v295 = (v0 + 287);
  v55 = *(v288 + 16);
  if (v55)
  {
    v56 = (v0[325] + 40);
    do
    {
      v57 = *v56;
      OUTLINED_FUNCTION_50_5();

      v58 = OUTLINED_FUNCTION_201_0();
      sub_1B253EC24(v58, v59, v57);
      OUTLINED_FUNCTION_340();
      if (v84)
      {
        v61 = OUTLINED_FUNCTION_212_0();
        v62(v61);
        swift_endAccess();
      }

      else
      {
        *v60 = 0;
        v63 = OUTLINED_FUNCTION_212_0();
        v64(v63);
        swift_endAccess();
      }

      v56 += 2;
      --v55;
    }

    while (v55);
  }

  v65 = v0[325];
  v66 = v0[320];
  v67 = v0[317];
  sub_1B256D34C();
  sub_1B256D29C();
  v68 = (v67 + 8);
  v69 = OUTLINED_FUNCTION_13_5();
  v280 = v70;
  v70(v69);

  v72 = sub_1B24CF3D4(v71);
  v0[287] = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_87_4();
  v303 = sub_1B24CF4AC(v65);
  if (*(v297 + 16))
  {
    v68 = 0;
    v73 = v0[309];
    v283 = v300[302];
    v289 = v300[310];
    v74 = *(v297 + 16);
    v293 = v74;
    while (v68 < v74)
    {
      v75 = v54[309];
      sub_1B255FE0C();
      OUTLINED_FUNCTION_18_1();
      sub_1B255FE0C();
      v77 = *(v73 + 48);
      v76 = *(v73 + 56);

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      sub_1B256ED3C();
      OUTLINED_FUNCTION_78();
      sub_1B256DA7C();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_18_16();
      if (v79)
      {
        v80 = ~v78;
        v81 = v72;
        v82 = *(v72 + 48);
        while (1)
        {
          v83 = v82 + 24 * v75;
          if ((*(v83 + 16) & 1) == 0)
          {
            v84 = *v83 == v77 && *(v83 + 8) == v76;
            if (v84 || (sub_1B256EB5C() & 1) != 0)
            {
              break;
            }
          }

          v75 = (v75 + 1) & v80;
          OUTLINED_FUNCTION_97_6();
          if ((v85 & 1) == 0)
          {

            v72 = v81;
            goto LABEL_31;
          }
        }

        v304 = v81;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1B2561E44();
        }

        OUTLINED_FUNCTION_117_2();
        sub_1B25637A0(v75);

        v72 = v304;
LABEL_31:
        v54 = v300;
      }

      else
      {
      }

      v86 = v54[319];
      v87 = v54[310];
      v88 = v54[306];
      OUTLINED_FUNCTION_5_32();
      OUTLINED_FUNCTION_379();
      sub_1B255FE0C();
      v66 = *(v73 + 56);

      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
      v89 = OUTLINED_FUNCTION_11_16();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      swift_weakInit();
      *(v88 + *(v283 + 24)) = MEMORY[0x1E69E7CC0];
      v25 = swift_task_alloc();
      *(v25 + 16) = v87;
      *(v25 + 24) = v86;
      *(v25 + 32) = v295;
      OUTLINED_FUNCTION_50_5();
      OUTLINED_FUNCTION_77_6();
      v93 = OUTLINED_FUNCTION_157_0();
      sub_1B253ECE0(v93, v94, v88, v95, v25);
      swift_endAccess();

      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      memmove(v54 + 167, (v289 + 160), 0xD0uLL);
      if (sub_1B2447BD4((v54 + 167)) == 1)
      {
        v96 = v293;
      }

      else
      {
        v97 = v54[183];
        v25 = v54[184];
        sub_1B256ED3C();
        OUTLINED_FUNCTION_74();
        swift_bridgeObjectRetain_n();
        sub_1B256DA7C();
        sub_1B256ED7C();
        OUTLINED_FUNCTION_18_16();
        if (v99)
        {
          v100 = ~v98;
          while (1)
          {
            OUTLINED_FUNCTION_205_0();
            if (v84)
            {
              v102 = *v101 == v97 && v101[1] == v25;
              if (v102 || (sub_1B256EB5C() & 1) != 0)
              {
                break;
              }
            }

            v66 = (v66 + 1) & v100;
            OUTLINED_FUNCTION_97_6();
            if ((v103 & 1) == 0)
            {

              v54 = v300;
              goto LABEL_46;
            }
          }

          v304 = v72;
          v96 = v293;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1B2561E44();
          }

          OUTLINED_FUNCTION_117_2();
          sub_1B25637A0(v66);

          v72 = v304;
          v54 = v300;
        }

        else
        {

LABEL_46:
          v96 = v293;
        }

        v104 = v54[310];

        sub_1B2560518();

        v66 = swift_task_alloc();
        *(v66 + 16) = v104;
        OUTLINED_FUNCTION_50_5();
        OUTLINED_FUNCTION_76_5();
        v105 = OUTLINED_FUNCTION_285_0();
        sub_1B253E9A8(v105, v106, v107);
        swift_endAccess();
      }

      v68 = (v68 + 1);
      OUTLINED_FUNCTION_1_44();
      sub_1B2563750();
      if (v68 == v96)
      {
        goto LABEL_53;
      }

      v74 = *(v297 + 16);
    }

    __break(1u);
  }

  else
  {
LABEL_53:
    if (sub_1B256DE9C())
    {
      v108 = v54[300];

      sub_1B256E0CC();
      OUTLINED_FUNCTION_43_0();
      v109 = swift_allocObject();
      OUTLINED_FUNCTION_313_0(v109);
      OUTLINED_FUNCTION_43_0();
      swift_allocObject();
      OUTLINED_FUNCTION_105_3();
      v296 = v110 + 21;
      v298 = 0x80000001B2593130;
      *(v111 + 16) = v110 + 21;
      *(v111 + 24) = 0x80000001B2593130;

      v112 = sub_1B256D5CC();
      OUTLINED_FUNCTION_119_2();
      v113 = swift_allocObject();
      OUTLINED_FUNCTION_62_5(v113);
      OUTLINED_FUNCTION_119_2();
      v114 = swift_allocObject();
      OUTLINED_FUNCTION_61_3(v114);
      OUTLINED_FUNCTION_43_0();
      v115 = swift_allocObject();
      OUTLINED_FUNCTION_28_13(v115);
      OUTLINED_FUNCTION_43_0();
      v116 = swift_allocObject();
      OUTLINED_FUNCTION_30_10(v116);
      OUTLINED_FUNCTION_119_2();
      v117 = swift_allocObject();
      OUTLINED_FUNCTION_161_2(v117);
      OUTLINED_FUNCTION_119_2();
      v118 = swift_allocObject();
      OUTLINED_FUNCTION_183_1(v118);
      OUTLINED_FUNCTION_43_0();
      v119 = swift_allocObject();
      OUTLINED_FUNCTION_39_9(v119);
      OUTLINED_FUNCTION_43_0();
      v120 = swift_allocObject();
      OUTLINED_FUNCTION_34_9(v120);
      v121 = OUTLINED_FUNCTION_272();
      v122 = OUTLINED_FUNCTION_66_4(v121, xmmword_1B2587210);
      v122[3].n128_u64[0] = sub_1B25661DC;
      v122[3].n128_u64[1] = v54;
      v122[4].n128_u64[0] = sub_1B25661B0;
      v122[4].n128_u64[1] = v25;
      v122[5].n128_u64[0] = sub_1B25661DC;
      v122[5].n128_u64[1] = v66;
      v122[6].n128_u64[0] = sub_1B25661DC;
      v122[6].n128_u64[1] = v108;
LABEL_73:
      v122[7].n128_u64[0] = sub_1B25661B0;
      v122[7].n128_u64[1] = v72;
      swift_setDeallocating();
      OUTLINED_FUNCTION_348();
      if (OUTLINED_FUNCTION_292_0())
      {
        OUTLINED_FUNCTION_93_3();
        v178 = OUTLINED_FUNCTION_126_1();
        OUTLINED_FUNCTION_194_1(v178);
        OUTLINED_FUNCTION_13_19(4.8752e-34);
        v179 = OUTLINED_FUNCTION_28_1();
        MEMORY[0x1B2749D50](v179);
        OUTLINED_FUNCTION_94_0();
        OUTLINED_FUNCTION_127_1();
        OUTLINED_FUNCTION_172_0();

        OUTLINED_FUNCTION_35_8();
        *(v68 + 14) = sub_1B2519814(v296, v298, v180);
        OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v181, v182, "%{public}s%{public}s");
        OUTLINED_FUNCTION_101_2();
        OUTLINED_FUNCTION_63_0();
        OUTLINED_FUNCTION_22_8();
      }

      OUTLINED_FUNCTION_162_2();
      v183 = OUTLINED_FUNCTION_41_1();
      v280(v183);
      v50 = OUTLINED_FUNCTION_249_0();
      goto LABEL_76;
    }

    v279 = v54 + 279;
    v123 = v72 + 56;
    OUTLINED_FUNCTION_140_1();
    v124 = v72;
    v127 = v126 & v125;
    v129 = (63 - v128) >> 6;
    v301 = v124;

    v130 = 0;
    while (v127)
    {
      v131 = v130;
LABEL_61:
      v132 = *(v301 + 48) + 24 * (__clz(__rbit64(v127)) | (v131 << 6));
      v133 = *v132;
      v134 = *(v132 + 8);
      v135 = *(v132 + 16);
      OUTLINED_FUNCTION_29_1();
      sub_1B24D0BE0();
      if (v135)
      {
        v136 = 0;
        v137 = 0;
      }

      else
      {

        v136 = v133;
        v137 = v134;
      }

      v127 &= v127 - 1;
      OUTLINED_FUNCTION_29_1();
      sub_1B24D0BE8();
      v304 = v136;
      v305 = v137;
      if (sub_1B25653C4(&v304))
      {
        v54 = v300;
        if (!v137)
        {
          goto LABEL_127;
        }

        OUTLINED_FUNCTION_50_5();
        v138 = OUTLINED_FUNCTION_24();
        sub_1B2438BF0(v138, v139, v140, v295);
        swift_endAccess();

        v130 = v131;
      }

      else
      {

        v130 = v131;
        v54 = v300;
      }
    }

    while (1)
    {
      v131 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        break;
      }

      if (v131 >= v129)
      {
        v141 = v54[322];
        v142 = v54[299];
        v143 = v54[298];
        OUTLINED_FUNCTION_117_0();
        sub_1B23FB6C4();
        v304 = sub_1B251954C(60);
        v305 = v144;
        OUTLINED_FUNCTION_189_0();
        v54[289] = *(v301 + 16);
        sub_1B256EAAC();
        OUTLINED_FUNCTION_329_0();

        OUTLINED_FUNCTION_75_0();
        MEMORY[0x1B2749D50](0xD00000000000001CLL);
        v146 = v304;
        v145 = v305;
        v284 = sub_1B256E08C();
        OUTLINED_FUNCTION_43_0();
        v147 = swift_allocObject();
        *(v147 + 16) = v143;
        *(v147 + 24) = v142;
        OUTLINED_FUNCTION_43_0();
        v148 = swift_allocObject();
        v281 = v146;
        *(v148 + 16) = v146;
        *(v148 + 24) = v145;

        v290 = v145;

        v149 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v150 = swift_allocObject();
        OUTLINED_FUNCTION_181_0(v150);
        OUTLINED_FUNCTION_119_2();
        v151 = swift_allocObject();
        *(v151 + 16) = 8;
        OUTLINED_FUNCTION_43_0();
        v152 = swift_allocObject();
        *(v152 + 16) = sub_1B25661D0;
        *(v152 + 24) = v147;
        OUTLINED_FUNCTION_43_0();
        v68 = swift_allocObject();
        v68[2] = sub_1B25661CC;
        v68[3] = v152;
        OUTLINED_FUNCTION_119_2();
        v153 = swift_allocObject();
        *(v153 + 16) = v141;
        v154 = v149;
        OUTLINED_FUNCTION_119_2();
        v155 = swift_allocObject();
        *(v155 + 16) = 8;
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        v156 = v54;
        OUTLINED_FUNCTION_84_5();
        *(v157 + 16) = v158;
        *(v157 + 24) = v148;
        OUTLINED_FUNCTION_43_0();
        v159 = swift_allocObject();
        OUTLINED_FUNCTION_85_1(v159);
        v160 = OUTLINED_FUNCTION_272();
        v161 = OUTLINED_FUNCTION_66_4(v160, xmmword_1B2587210);
        v161[3].n128_u64[0] = sub_1B25661DC;
        v161[3].n128_u64[1] = v151;
        v161[4].n128_u64[0] = sub_1B25661B0;
        v161[4].n128_u64[1] = v68;
        v161[5].n128_u64[0] = sub_1B25661DC;
        v161[5].n128_u64[1] = v153;
        v161[6].n128_u64[0] = sub_1B25661DC;
        v161[6].n128_u64[1] = v155;
        v161[7].n128_u64[0] = sub_1B25661B0;
        v161[7].n128_u64[1] = v159;
        swift_setDeallocating();
        sub_1B24C3DB8();
        if (os_log_type_enabled(v154, v284))
        {
          v162 = v156[299];
          v163 = v156[298];
          OUTLINED_FUNCTION_21_3();
          v159 = OUTLINED_FUNCTION_126_1();
          v306[0] = v159;
          OUTLINED_FUNCTION_13_19(4.8752e-34);
          MEMORY[0x1B2749D50](v163, v162);
          OUTLINED_FUNCTION_94_0();
          v164 = OUTLINED_FUNCTION_127_1();

          *(v68 + 4) = v164;
          OUTLINED_FUNCTION_58_4();
          sub_1B2519814(v281, v145, v165);
          OUTLINED_FUNCTION_120();

          *(v68 + 14) = v160;
          OUTLINED_FUNCTION_277_0(&dword_1B23EF000, v154, v284, "%{public}s%{public}s");
          OUTLINED_FUNCTION_304_0();
          OUTLINED_FUNCTION_7_12();
          OUTLINED_FUNCTION_22_8();
        }

        else
        {
        }

        v72 = v301;
        if (sub_1B256DE9C())
        {
          OUTLINED_FUNCTION_120_1();

          OUTLINED_FUNCTION_511();
          OUTLINED_FUNCTION_43_0();
          v166 = swift_allocObject();
          OUTLINED_FUNCTION_313_0(v166);
          OUTLINED_FUNCTION_43_0();
          swift_allocObject();
          OUTLINED_FUNCTION_105_3();
          v296 = v167 + 38;
          v298 = v68;
          *(v168 + 16) = v167 + 38;
          *(v168 + 24) = v68;

          v112 = sub_1B256D5CC();
          OUTLINED_FUNCTION_119_2();
          v169 = swift_allocObject();
          OUTLINED_FUNCTION_62_5(v169);
          OUTLINED_FUNCTION_119_2();
          v170 = swift_allocObject();
          OUTLINED_FUNCTION_61_3(v170);
          OUTLINED_FUNCTION_43_0();
          v171 = swift_allocObject();
          OUTLINED_FUNCTION_28_13(v171);
          OUTLINED_FUNCTION_43_0();
          v172 = swift_allocObject();
          OUTLINED_FUNCTION_30_10(v172);
          OUTLINED_FUNCTION_119_2();
          v173 = swift_allocObject();
          OUTLINED_FUNCTION_161_2(v173);
          OUTLINED_FUNCTION_119_2();
          v174 = swift_allocObject();
          OUTLINED_FUNCTION_183_1(v174);
          OUTLINED_FUNCTION_43_0();
          v175 = swift_allocObject();
          OUTLINED_FUNCTION_39_9(v175);
          OUTLINED_FUNCTION_43_0();
          v176 = swift_allocObject();
          OUTLINED_FUNCTION_34_9(v176);
          v177 = OUTLINED_FUNCTION_272();
          v122 = OUTLINED_FUNCTION_66_4(v177, xmmword_1B2587210);
          v122[3].n128_u64[0] = sub_1B25661DC;
          v122[3].n128_u64[1] = v160;
          v122[4].n128_u64[0] = sub_1B25661B0;
          v122[4].n128_u64[1] = v151;
          v122[5].n128_u64[0] = sub_1B25661DC;
          v122[5].n128_u64[1] = v159;
          v122[6].n128_u64[0] = sub_1B25661DC;
          v122[6].n128_u64[1] = v154;
          goto LABEL_73;
        }

        v187 = *v295;
        v188 = MEMORY[0x1E69E85E0];
        if (*(*v295 + 16))
        {
          v189 = v156[315];
          v190 = v156[300];
          v191 = v156[299];
          v192 = v156[298];
          v193 = sub_1B256DDAC();
          OUTLINED_FUNCTION_102_3(v189, v194, v195, v193);
          OUTLINED_FUNCTION_154();

          v196 = sub_1B256DD5C();
          OUTLINED_FUNCTION_438();
          v197 = swift_allocObject();
          v197[2] = v196;
          v197[3] = v188;
          v197[4] = v187;
          v197[5] = v297;
          v197[6] = v301;
          v197[7] = v190;
          v197[8] = v192;
          v197[9] = v191;
          OUTLINED_FUNCTION_107_0();
          sub_1B247DAA8();
        }

        else
        {
        }

        v198 = v303 + 56;
        OUTLINED_FUNCTION_111_2();
        v287 = v200;
LABEL_84:
        while (v151)
        {
          v201 = v199;
LABEL_89:
          OUTLINED_FUNCTION_110_3();
          v203 = (*(v303 + 48) + ((v201 << 10) | (16 * v202)));
          v205 = *v203;
          v204 = v203[1];
          OUTLINED_FUNCTION_278_0();
          v206 = *(*(v290 + 120) + 16);

          if (v206 && (v207 = sub_1B2458898(v205, v204), (v208 & 1) != 0))
          {
            v209 = OUTLINED_FUNCTION_284_0(v207);
            sub_1B247D7E0(v209, (v156 + 277));
            sub_1B244ADF4((v156 + 277), v279);
            swift_endAccess();
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v277 = Strong;

              if (*v279)
              {
                v211 = *v279;
              }

              else
              {
                v211 = MEMORY[0x1E69E7CD0];
              }

              v285 = v211 + 56;
              OUTLINED_FUNCTION_52_4();
              v214 = v213 & v212;
              OUTLINED_FUNCTION_231_0();
              v216 = v215 >> 6;

              v282 = v211;

              v217 = 0;
              v278 = MEMORY[0x1E69E7CC0];
              while (v214)
              {
LABEL_101:
                v219 = (*(v282 + 48) + ((v217 << 10) | (16 * __clz(__rbit64(v214)))));
                v221 = *v219;
                v220 = v219[1];
                OUTLINED_FUNCTION_278_0();
                OUTLINED_FUNCTION_361();
                if (v222)
                {

                  sub_1B2458898(v221, v220);
                  v223 = v156[307];
                  v224 = v156[302];
                  if (v225)
                  {
                    OUTLINED_FUNCTION_3_38();
                    sub_1B255FE0C();
                    v226 = v223;
                    v227 = 0;
                  }

                  else
                  {
                    v226 = OUTLINED_FUNCTION_208_0();
                  }

                  __swift_storeEnumTagSinglePayload(v226, v227, 1, v224);
                  v156 = v300;
                  v198 = v303 + 56;
                }

                else
                {
                  OUTLINED_FUNCTION_16_2();
                  __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
                }

                v214 &= v214 - 1;
                v232 = v156[307];
                v233 = OUTLINED_FUNCTION_59_1();
                if (__swift_getEnumTagSinglePayload(v233, v234, v235) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0), v236 = OUTLINED_FUNCTION_59_1(), __swift_getEnumTagSinglePayload(v236, v237, v238)))
                {
                  sub_1B256615C(v232, &qword_1EB7CFEA0);
                  swift_endAccess();
                }

                else
                {
                  OUTLINED_FUNCTION_5_32();
                  sub_1B255FE0C();
                  sub_1B256615C(v232, &qword_1EB7CFEA0);
                  swift_endAccess();

                  OUTLINED_FUNCTION_4_27();
                  OUTLINED_FUNCTION_138_0();
                  sub_1B25636F8();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    sub_1B2448D30();
                    v278 = v241;
                  }

                  v240 = *(v278 + 16);
                  v239 = *(v278 + 24);
                  v156 = v300;
                  v198 = v303 + 56;
                  if (v240 >= v239 >> 1)
                  {
                    OUTLINED_FUNCTION_69_0(v239);
                    sub_1B2448D30();
                    v278 = v242;
                  }

                  *(v278 + 16) = v240 + 1;
                  OUTLINED_FUNCTION_114_2();
                  OUTLINED_FUNCTION_4_27();
                  sub_1B25636F8();
                }
              }

              while (1)
              {
                v218 = v217 + 1;
                if (__OFADD__(v217, 1))
                {
                  goto LABEL_126;
                }

                if (v218 >= v216)
                {
                  v255 = v156[315];

                  v256 = sub_1B256DDAC();
                  OUTLINED_FUNCTION_102_3(v255, v257, v258, v256);

                  sub_1B256DD5C();
                  OUTLINED_FUNCTION_187_1();
                  v259 = swift_allocObject();
                  v260 = OUTLINED_FUNCTION_185_1(v259);
                  v260[3] = MEMORY[0x1E69E85E0];
                  v260[4] = v277;
                  v260[5] = v278;
                  OUTLINED_FUNCTION_107_0();
                  sub_1B247DAA8();

                  sub_1B25629C4(v279);
                  v199 = v201;
                  v200 = v287;
                  goto LABEL_84;
                }

                v214 = *(v285 + 8 * v218);
                ++v217;
                if (v214)
                {
                  v217 = v218;
                  goto LABEL_101;
                }
              }
            }

            sub_1B25629C4(v279);
          }

          else
          {
            swift_endAccess();
          }

          v243 = v156[322];
          v244 = v156[300];
          OUTLINED_FUNCTION_103_3();
          sub_1B256E4FC();
          v245 = OUTLINED_FUNCTION_141_1();
          MEMORY[0x1B2749D50](v245, 0x80000001B2593090);
          v156[273] = v205;
          v156[274] = v204;
          sub_1B256E78C();

          OUTLINED_FUNCTION_289_0();
          v299 = v156[275];
          v246 = v156[276];
          v247 = sub_1B256E0CC();

          v248 = v244 + v243;
          v249 = v247;
          v250 = sub_1B256D5CC();

          if (os_log_type_enabled(v250, v249))
          {
            v286 = v156[299];
            v251 = v156[298];
            v252 = OUTLINED_FUNCTION_21_3();
            v253 = OUTLINED_FUNCTION_20_4();
            OUTLINED_FUNCTION_194_1(v253);
            *v252 = 136446466;
            OUTLINED_FUNCTION_53_1();
            MEMORY[0x1B2749D50](v251, v286);
            OUTLINED_FUNCTION_94_0();
            v254 = OUTLINED_FUNCTION_127_1();

            *(v252 + 4) = v254;
            *(v252 + 12) = 2082;
            sub_1B2519814(v299, v246, v306);
            OUTLINED_FUNCTION_154();

            *(v252 + 14) = v248;
            _os_log_impl(&dword_1B23EF000, v250, v249, "%{public}s%{public}s", v252, 0x16u);
            OUTLINED_FUNCTION_101_2();
            OUTLINED_FUNCTION_63_0();
            v198 = v303 + 56;
            v156 = v300;
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }

          v199 = v201;
          v200 = v287;
        }

        while (1)
        {
          v201 = v199 + 1;
          if (__OFADD__(v199, 1))
          {
            goto LABEL_125;
          }

          if (v201 >= v200)
          {
            v302 = v156[319];
            v261 = v156[316];
            v262 = v156[300];
            v263 = v156[299];
            v264 = v156[298];

            sub_1B256DD7C();
            sub_1B256DDAC();
            OUTLINED_FUNCTION_315_0();
            OUTLINED_FUNCTION_188_1();
            __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
            OUTLINED_FUNCTION_9_25();
            v271 = sub_1B2565104(v269, v270);
            OUTLINED_FUNCTION_15_21();
            v272 = swift_allocObject();
            v272[2] = v262;
            v272[3] = v271;
            v272[4] = v262;
            v272[5] = v264;
            v272[6] = v263;
            OUTLINED_FUNCTION_288_0(v272);

            OUTLINED_FUNCTION_107_0();
            sub_1B2484230();

            (v280)(v302, v261);
            v273 = OUTLINED_FUNCTION_26_14();
            sub_1B25579B4(v273, v274, v275, v276);
            goto LABEL_77;
          }

          v151 = *(v198 + 8 * v201);
          ++v199;
          if (v151)
          {
            goto LABEL_89;
          }
        }
      }

      v127 = *(v123 + 8 * v131);
      ++v130;
      if (v127)
      {
        goto LABEL_61;
      }
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1B2556714()
{
  v208 = v1;
  OUTLINED_FUNCTION_425();
  v5 = v1[337];
  v195 = v1[333];
  v196 = v1[334];
  v6 = OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_424(v6, v7);
  OUTLINED_FUNCTION_221_0();
  v199 = v5;
  v1[296] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  OUTLINED_FUNCTION_507();
  v205 = OUTLINED_FUNCTION_506();
  OUTLINED_FUNCTION_43_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_243_0(v8);
  OUTLINED_FUNCTION_43_0();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_403(v9);

  v204 = sub_1B256D5CC();
  OUTLINED_FUNCTION_119_2();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_144_1(v10);
  OUTLINED_FUNCTION_119_2();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_234_0(v11);
  OUTLINED_FUNCTION_43_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_38_9(v12);
  OUTLINED_FUNCTION_43_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_31_11(v13);
  OUTLINED_FUNCTION_119_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_450(v14);
  OUTLINED_FUNCTION_119_2();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_467(v15);
  OUTLINED_FUNCTION_43_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_36_7(v16);
  OUTLINED_FUNCTION_43_0();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_45_6(v17);
  v19 = OUTLINED_FUNCTION_23_12(v18, xmmword_1B2587210);
  v19[3].n128_u64[0] = sub_1B25661DC;
  v19[3].n128_u64[1] = v4;
  v20 = v204;
  v21 = OUTLINED_FUNCTION_42_6(v19);
  v22 = v205;
  v23 = OUTLINED_FUNCTION_41_10(v21);
  v23[12] = sub_1B25661DC;
  v23[13] = v3;
  v23[14] = sub_1B25661B0;
  v23[15] = v9;
  swift_setDeallocating();
  sub_1B24C3DB8();
  v24 = OUTLINED_FUNCTION_513();
  Strong = MEMORY[0x1E69E7CA0];
  if (v24)
  {
    OUTLINED_FUNCTION_152_1();
    v9 = OUTLINED_FUNCTION_126_1();
    *v18 = 136446466;
    OUTLINED_FUNCTION_10_23(v9);
    v26 = OUTLINED_FUNCTION_157_0();
    MEMORY[0x1B2749D50](v26);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_172_0();

    OUTLINED_FUNCTION_54_8();
    sub_1B2519814(v0, v2, v207);
    OUTLINED_FUNCTION_200_1();

    *(v18 + 14) = "ype";
    OUTLINED_FUNCTION_224_0(&dword_1B23EF000, v27, v28, "%{public}s%{public}s");
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  if (sub_1B256DE9C())
  {
    OUTLINED_FUNCTION_464();
    OUTLINED_FUNCTION_120_1();
    v29 = v1[298];
    OUTLINED_FUNCTION_510();
    OUTLINED_FUNCTION_43_0();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_452(v30);
    OUTLINED_FUNCTION_43_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_148_0(v31);

    v32 = sub_1B256D5CC();
    OUTLINED_FUNCTION_119_2();
    v33 = swift_allocObject();
    OUTLINED_FUNCTION_181_0(v33);
    OUTLINED_FUNCTION_119_2();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_239_0(v34);
    OUTLINED_FUNCTION_43_0();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_32_9(v35);
    OUTLINED_FUNCTION_43_0();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_33_9(v36);
    OUTLINED_FUNCTION_119_2();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_430(v37);
    OUTLINED_FUNCTION_119_2();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_161_2(v38);
    OUTLINED_FUNCTION_43_0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_27_12(v39);
    OUTLINED_FUNCTION_43_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_37_7(v40);
    v41 = OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_20_17(v41, v42, v43, v44, v45, v46, v47, v48, v184, v186, v188, v191, v49);
    *(v50 + 48) = sub_1B25661DC;
    *(v50 + 56) = v9;
    v51 = OUTLINED_FUNCTION_29_12(v50);
    v51[10] = sub_1B25661DC;
    v51[11] = v205;
    v51[12] = sub_1B25661DC;
    v51[13] = v5;
    v51[14] = sub_1B25661B0;
    v51[15] = v29;
    swift_setDeallocating();
    sub_1B24C3DB8();
    if (OUTLINED_FUNCTION_508())
    {
      OUTLINED_FUNCTION_93_3();
      v52 = OUTLINED_FUNCTION_3_23();
      *v3 = 136446466;
      OUTLINED_FUNCTION_10_23(v52);
      v53 = OUTLINED_FUNCTION_28_1();
      MEMORY[0x1B2749D50](v53);
      OUTLINED_FUNCTION_94_0();
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_172_0();

      v54 = OUTLINED_FUNCTION_95_5();
      *(v3 + 14) = sub_1B2519814(v54, v3, v55);
      OUTLINED_FUNCTION_219_0(&dword_1B23EF000, v56, v57, "%{public}s%{public}s");
      OUTLINED_FUNCTION_100_2();
      OUTLINED_FUNCTION_22_8();
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_416();
  v202 = v1[302];
  v206 = v58;
  v197 = v2;
  while (1)
  {
    OUTLINED_FUNCTION_415();
    if ((v59 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_222_0();
    OUTLINED_FUNCTION_434();
    if (!v69)
    {
      OUTLINED_FUNCTION_245_0(v60, v61, v62, v63, v64, v65, v66, v67, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v68);

LABEL_32:
      v133 = OUTLINED_FUNCTION_157_0();
      sub_1B256615C(v133, v134);
      swift_endAccess();
LABEL_33:
      OUTLINED_FUNCTION_465();
      goto LABEL_34;
    }

    v70 = OUTLINED_FUNCTION_266_0();
    v72 = sub_1B2458898(v70, v71);
    if ((v73 & 1) == 0)
    {
      OUTLINED_FUNCTION_245_0(v72, v73, v74, v75, v76, v77, v78, v79, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v80);
      v22 = 24;
      goto LABEL_32;
    }

    v81 = OUTLINED_FUNCTION_284_0(v72);
    sub_1B247D7E0(v81, v3);
    v22 = 24;
    if (*v3 == 1)
    {
      goto LABEL_32;
    }

    Strong = swift_weakLoadStrong();
    v82 = OUTLINED_FUNCTION_157_0();
    sub_1B256615C(v82, v83);
    swift_endAccess();
    if (!Strong)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_230();
    v201 = v84;
    v85 = Strong;
    v189 = sub_1B256DDAC();
    v86 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    v90 = sub_1B256DD6C();
    OUTLINED_FUNCTION_325_0(v90, v91, v92, v93, v94, v95, v96, v97, v184, v186, v189, v191, v193, v194, v195, v196, v197, v198, v199);

    v98 = sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v99 = swift_allocObject();
    v99[2] = v98;
    v99[3] = MEMORY[0x1E69E85E0];
    v99[4] = Strong;
    v200 = Strong;
    v99[5] = Strong;
    Strong = &qword_1EB7D1910;
    OUTLINED_FUNCTION_414(v99, v100, v101, v102, v103, v104, v105, v106, v185, v187, v190, v192);
    sub_1B24C5C14();
    OUTLINED_FUNCTION_429();
    v107 = v1[313];
    if (v98 == 1)
    {
      v108 = OUTLINED_FUNCTION_38_7();
      sub_1B256615C(v108, v109);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v135 = OUTLINED_FUNCTION_18_1();
      v136(v135);
    }

    OUTLINED_FUNCTION_482();

    v22 = 24;
    if (v107)
    {
      swift_getObjectType();
      sub_1B256DCEC();
      OUTLINED_FUNCTION_172_0();
      v107 = v137;
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0;
    }

    sub_1B256615C(v1[314], &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    swift_allocObject();
    OUTLINED_FUNCTION_43_7();
    *(v138 + 16) = v146;
    *(v138 + 24) = v201;
    if (v107 | v85)
    {
      OUTLINED_FUNCTION_417(v138, v139, v140, v141, v142, v143, v144, v145, v184, v186);
      v1[195] = v85;
      v1[196] = v107;
    }

    OUTLINED_FUNCTION_40_9();
    OUTLINED_FUNCTION_509();

    OUTLINED_FUNCTION_266_0();
LABEL_34:
    sub_1B24D0BE8();
LABEL_35:
    if (++v20 == v1[321])
    {
      v147 = sub_1B256DE9C();
      if (v147)
      {
        OUTLINED_FUNCTION_464();
        OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_14_2();
        sub_1B256E0CC();
        OUTLINED_FUNCTION_43_0();
        v148 = swift_allocObject();
        OUTLINED_FUNCTION_451(v148);
        OUTLINED_FUNCTION_43_0();
        swift_allocObject();
        OUTLINED_FUNCTION_145_1();
        v203 = v149;
        OUTLINED_FUNCTION_505(v150, v149);
        v32 = sub_1B256D5CC();
        OUTLINED_FUNCTION_119_2();
        v151 = swift_allocObject();
        OUTLINED_FUNCTION_62_5(v151);
        OUTLINED_FUNCTION_119_2();
        v152 = swift_allocObject();
        OUTLINED_FUNCTION_61_3(v152);
        OUTLINED_FUNCTION_43_0();
        v153 = swift_allocObject();
        OUTLINED_FUNCTION_28_13(v153);
        OUTLINED_FUNCTION_43_0();
        v154 = swift_allocObject();
        OUTLINED_FUNCTION_30_10(v154);
        OUTLINED_FUNCTION_119_2();
        v155 = swift_allocObject();
        OUTLINED_FUNCTION_161_2(v155);
        OUTLINED_FUNCTION_119_2();
        v156 = swift_allocObject();
        OUTLINED_FUNCTION_183_1(v156);
        OUTLINED_FUNCTION_43_0();
        v157 = swift_allocObject();
        OUTLINED_FUNCTION_39_9(v157);
        OUTLINED_FUNCTION_43_0();
        v158 = swift_allocObject();
        OUTLINED_FUNCTION_34_9(v158);
        v159 = OUTLINED_FUNCTION_272();
        OUTLINED_FUNCTION_22_12(v159, v160, v161, v162, v163, v164, v165, v166, v184, v186, v188, v191, v167);
        v168[6] = sub_1B25661DC;
        v168[7] = v20;
        v168[8] = sub_1B25661B0;
        v168[9] = v22;
        v168[10] = sub_1B25661DC;
        v168[11] = &unk_1EB7D2CD0;
        v168[12] = sub_1B25661DC;
        v168[13] = v2;
        v168[14] = sub_1B25661B0;
        v168[15] = v9;
        swift_setDeallocating();
        OUTLINED_FUNCTION_502();
        if (OUTLINED_FUNCTION_292_0())
        {
          OUTLINED_FUNCTION_93_3();
          v169 = OUTLINED_FUNCTION_126_1();
          *v18 = 136446466;
          OUTLINED_FUNCTION_10_23(v169);
          v170 = OUTLINED_FUNCTION_28_1();
          MEMORY[0x1B2749D50](v170);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_156_1();
          OUTLINED_FUNCTION_172_0();

          OUTLINED_FUNCTION_54_8();
          *(v18 + 14) = sub_1B2519814(v203, v206, v207);
          OUTLINED_FUNCTION_113_3(&dword_1B23EF000, v171, v172, "%{public}s%{public}s");
          OUTLINED_FUNCTION_101_2();
          OUTLINED_FUNCTION_63_0();
LABEL_48:
          OUTLINED_FUNCTION_11_4();
        }

LABEL_49:
      }

      else if (*(v206 + 16))
      {
        v180 = OUTLINED_FUNCTION_296_0();
        OUTLINED_FUNCTION_81_4(v180);
        OUTLINED_FUNCTION_154();

        v181 = v199;
        sub_1B256DD5C();
        OUTLINED_FUNCTION_355();
        v182 = swift_allocObject();
        v183 = OUTLINED_FUNCTION_185_1(v182);
        OUTLINED_FUNCTION_44_8(v183, MEMORY[0x1E69E85E0]);
      }

      else
      {
      }

      v173 = OUTLINED_FUNCTION_26_14();
      sub_1B25579B4(v173, v174, v175, v176);

      v177 = OUTLINED_FUNCTION_91_4();
      sub_1B24E313C(v177);
      v178 = OUTLINED_FUNCTION_90_5();
      sub_1B24E313C(v178);
      OUTLINED_FUNCTION_6_30();
      OUTLINED_FUNCTION_400();

      OUTLINED_FUNCTION_7_2();

      return v179();
    }
  }

  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_423();

  if (!Strong || (v110 = OUTLINED_FUNCTION_266_0(), sub_1B2458898(v110, v111), (v112 & 1) == 0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_266_0();
    goto LABEL_34;
  }

  v200 = v9;
  v201 = v20;
  v113 = v1[305];
  v114 = v1[304];
  OUTLINED_FUNCTION_3_38();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_2_40();
  sub_1B25636F8();
  swift_endAccess();
  v115 = swift_weakLoadStrong();
  if (v115)
  {
    v113 = v115;
    v114 = v1[315];
    v116 = sub_1B256DDAC();
    v119 = OUTLINED_FUNCTION_102_3(v114, v117, v118, v116);
    OUTLINED_FUNCTION_325_0(v119, v120, v121, v122, v123, v124, v125, v126, v184, v186, v188, v191, v193, v194, v195, v196, v197, v198, v199);

    sub_1B256DD5C();
    OUTLINED_FUNCTION_187_1();
    v127 = swift_allocObject();
    v128 = OUTLINED_FUNCTION_185_1(v127);
    *(v128 + 24) = MEMORY[0x1E69E85E0];
    *(v128 + 32) = v113;
    OUTLINED_FUNCTION_21_18(v128);
    sub_1B247DAA8();
    OUTLINED_FUNCTION_154();
  }

  result = OUTLINED_FUNCTION_343();
  v130 = 0;
  while (2)
  {
    v131 = *(v113 + 16);
    Strong = v130;
LABEL_21:
    if (Strong == v131)
    {
      *v18 = 0;
      v130 = v131;
LABEL_26:
      OUTLINED_FUNCTION_356();
      sub_1B24C42F0();
      if (*(v3 + 120))
      {

        sub_1B24D0BE8();
        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v2 = v197;
        v22 = 24;
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_418();
      sub_1B24C42F0();
      swift_weakLoadStrong();
      result = OUTLINED_FUNCTION_484();
      Strong = v130;
      if (v114)
      {
        v132 = OUTLINED_FUNCTION_294_0();
        sub_1B25603E8(v132, v114);

        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  if ((Strong & 0x8000000000000000) == 0)
  {
    if (Strong >= *(v113 + 16))
    {
      goto LABEL_57;
    }

    sub_1B24C5C14();
    v130 = Strong + 1;
    goto LABEL_26;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1B2557364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  type metadata accessor for Product();
  v4[8] = swift_task_alloc();
  v5 = type metadata accessor for StoreProductManager.CollectionObserver.Storage(0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E78);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E80);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1B256DD6C();
  v4[20] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2557534, v7, v6);
}

void sub_1B2557534()
{
  v35 = *(v0 + 96);
  v33 = *(v0 + 88);
  v34 = *(v0 + 104);
  v32 = *(v0 + 64);

  StoreProductManager.CollectionObserver.storage.getter();

  sub_1B2449738();
  v37 = v1;
  sub_1B254B9CC();
  v2 = StoreProductManager.CollectionObserver.storage.getter();
  v3 = 0;
  v4 = *(v2 + 16);
  for (i = v2; ; v2 = i)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v3 = v4;
      goto LABEL_6;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v0 + 136);
    OUTLINED_FUNCTION_114_2();
    *v6 = v3;
    OUTLINED_FUNCTION_8_31();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_50_0();
    sub_1B24C42F0();
    v5 = 0;
    ++v3;
LABEL_6:
    v7 = *(v0 + 128);
    __swift_storeEnumTagSinglePayload(*(v0 + 144), v5, 1, v7);
    OUTLINED_FUNCTION_50_0();
    sub_1B24C42F0();
    v8 = OUTLINED_FUNCTION_199_0();
    if (__swift_getEnumTagSinglePayload(v8, v9, v7) == 1)
    {
      goto LABEL_24;
    }

    v10 = **(v0 + 152);
    OUTLINED_FUNCTION_206_1();
    sub_1B25636F8();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_320_0();
    sub_1B255FE0C();
    OUTLINED_FUNCTION_138_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_14_22();
      sub_1B2563750();
      OUTLINED_FUNCTION_8_31();
      OUTLINED_FUNCTION_50_0();
      sub_1B255FE0C();
      OUTLINED_FUNCTION_320_0();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
        v11 = *(v32 + 48);
        v12 = *(v32 + 56);

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
      }

      else
      {
        v11 = **(v0 + 104);
        v12 = *(v34 + 8);
      }

      v13 = v37;
      v15 = *(v37 + 16);
      v14 = *(v37 + 24);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_69_0(v14);
        sub_1B2449738();
        v13 = v27;
      }

      *(v13 + 16) = v15 + 1;
      v37 = v13;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      OUTLINED_FUNCTION_8_31();
      sub_1B255FE0C();
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        OUTLINED_FUNCTION_4_27();
        sub_1B25636F8();
        v17 = *(v32 + 48);
        v18 = *(v32 + 56);

        OUTLINED_FUNCTION_1_44();
        sub_1B2563750();
      }

      else
      {
        v17 = **(v0 + 88);
        v18 = *(v33 + 8);
      }

      **(v0 + 96) = v17;
      *(v35 + 8) = v18;
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      v19 = sub_1B256D63C();
      v21 = v20;
      v22 = *v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v21 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1B2456E98();
        v22 = v28;
        *v21 = v28;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v29 = *(v0 + 48);

          *v29 = v37;

          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_112();

          __asm { BRAA            X1, X16 }
        }
      }

      if (v10 >= *(v22 + 16))
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_114_2();
      sub_1B2565BF4(v26, v22 + v24 + *(v25 + 72) * v10);
      v19();
    }

    else
    {
      OUTLINED_FUNCTION_14_22();
      sub_1B2563750();
    }

    OUTLINED_FUNCTION_14_22();
    sub_1B2563750();
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1B25579B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B2546B48(a2);
  swift_endAccess();
  sub_1B256E4FC();

  v15 = 0xD00000000000001ELL;
  v16 = 0x80000001B2592FD0;
  v14 = *(a2 + 16);
  v7 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v7);

  MEMORY[0x1B2749D50](0x2E73444920, 0xE500000000000000);
  v8 = sub_1B256E08C();

  v9 = sub_1B256D5CC();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v14 = v11;
    v15 = 91;
    v16 = 0xE100000000000000;
    MEMORY[0x1B2749D50](a3, a4);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v12 = sub_1B2519814(91, 0xE100000000000000, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2082;
    v13 = sub_1B2519814(0xD00000000000001ELL, 0x80000001B2592FD0, &v14);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v11, -1, -1);
    MEMORY[0x1B274BFF0](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B2557C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B2557CD0;

  return sub_1B253FC04(a2, a3);
}

uint64_t sub_1B2557CD0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_447();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B2557DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B2557EB0;

  return sub_1B253FF78(a2, a3);
}

uint64_t sub_1B2557EB0()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_447();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1B2557FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v50 - v7;
  v8 = type metadata accessor for Product();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v9;
  v55 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E70);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2330);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v50 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v50 - v19;
  v21 = type metadata accessor for StoreProductManager.CachedProduct(0);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B255FE0C();
  v22 = sub_1B25405D0();
  sub_1B2563750();
  if (v22)
  {
    v50[1] = a2;
    sub_1B255FE0C();
    v23 = 1;
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    if (!__swift_getEnumTagSinglePayload(a1, 1, v24))
    {
      sub_1B255FE0C();
      v23 = 0;
    }

    __swift_storeEnumTagSinglePayload(v18, v23, 1, v8);
    v25 = *(v10 + 48);
    sub_1B24C5C14();
    sub_1B24C5C14();
    if (__swift_getEnumTagSinglePayload(v12, 1, v8) == 1)
    {
      sub_1B256615C(v18, &qword_1EB7D2330);
      sub_1B256615C(v20, &qword_1EB7D2330);
      if (__swift_getEnumTagSinglePayload(&v12[v25], 1, v8) == 1)
      {
        v50[0] = v24;
        sub_1B256615C(v12, &qword_1EB7D2330);
        goto LABEL_25;
      }
    }

    else
    {
      v50[0] = v24;
      v26 = v51;
      sub_1B24C5C14();
      if (__swift_getEnumTagSinglePayload(&v12[v25], 1, v8) != 1)
      {
        v42 = v55;
        sub_1B25636F8();
        v43 = *(v26 + 3);
        v61 = *(v26 + 2);
        v62 = v43;
        v63 = v26[32];
        v45 = *(v42 + 3);
        v58 = *(v42 + 2);
        v44 = v58;
        v59 = v45;
        v60 = v42[32];
        v46 = v60;
        sub_1B24472B8(v61, v43, v63);
        sub_1B24472B8(v44, v45, v46);
        LOBYTE(v44) = static BackingValue.== infix(_:_:)(&v61, &v58);
        sub_1B24472E0(v58, v59, v60);
        sub_1B24472E0(v61, v62, v63);
        sub_1B2563750();
        sub_1B256615C(v18, &qword_1EB7D2330);
        sub_1B256615C(v20, &qword_1EB7D2330);
        sub_1B2563750();
        sub_1B256615C(v12, &qword_1EB7D2330);
        if (v44)
        {
LABEL_25:
          v47 = v50[0];
          result = __swift_getEnumTagSinglePayload(a1, 1, v50[0]);
          if (!result)
          {
            v48 = *(v47 + 48);
            v49 = sub_1B256D36C();
            return (*(*(v49 - 8) + 24))(a1 + v48, v57, v49);
          }

          return result;
        }

        goto LABEL_10;
      }

      sub_1B256615C(v18, &qword_1EB7D2330);
      sub_1B256615C(v20, &qword_1EB7D2330);
      sub_1B2563750();
    }

    sub_1B256615C(v12, &qword_1EB7D2E70);
  }

LABEL_10:
  sub_1B256615C(a1, &qword_1EB7D2CD8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
  v28 = *(v27 + 48);
  sub_1B255FE0C();
  v29 = sub_1B256D36C();
  (*(*(v29 - 8) + 16))(a1 + v28, v57, v29);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v27);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v32);
    sub_1B255FE0C();
    sub_1B256DD6C();

    v33 = sub_1B256DD5C();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v31;
    sub_1B25636F8();
    sub_1B247DAA8();
  }

  v36 = *(a1 + *(v21 + 24));

  v38 = 0;
LABEL_13:
  v39 = *(v36 + 16);
  v40 = v38;
  while (1)
  {
    if (v40 == v39)
    {
      v61 = 0;
      v38 = v39;
      goto LABEL_19;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v40 >= *(v36 + 16))
    {
      goto LABEL_28;
    }

    sub_1B24C5C14();
    v38 = v40 + 1;
LABEL_19:
    LOBYTE(v62) = v40 == v39;
    sub_1B24C42F0();
    if (v59)
    {
    }

    sub_1B24C42F0();
    v41 = swift_weakLoadStrong();
    result = sub_1B256615C(v64, &qword_1EB7D0460);
    v40 = v38;
    if (v41)
    {
      sub_1B25603E8(&v61, v41);

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B255885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v5[5] = swift_task_alloc();
  sub_1B256DD6C();
  v5[6] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558924, v7, v6);
}

uint64_t sub_1B2558924()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_24();
  sub_1B255FE0C();
  OUTLINED_FUNCTION_201_0();
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B25589B4(void *a1)
{
  v2 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B24C5C14();
  v5 = v12;
  result = sub_1B256615C(&v12, &unk_1EB7D2CD0);
  if (v5 != 1)
  {
    if (*a1 > 1uLL)
    {
      sub_1B255FE0C();

      sub_1B2563750();
      sub_1B2560518();
    }

    else
    {
      if (*a1 == 1)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B2578530;
      sub_1B255FE0C();
      v9 = *(v4 + 6);
      v8 = *(v4 + 7);

      sub_1B2563750();
      *(inited + 32) = v9;
      *(inited + 40) = v8;
      sub_1B250498C();
      *a1 = v10;
    }
  }

  return result;
}

void sub_1B2558B8C()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_469();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for StoreProductManager.CachedProduct(0);
  v4 = OUTLINED_FUNCTION_164_1();
  if (!__swift_getEnumTagSinglePayload(v4, v5, v3))
  {
    sub_1B256615C(v0, &qword_1EB7D2CD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  v10 = OUTLINED_FUNCTION_164_1();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v3))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = sub_1B256DDAC();
      OUTLINED_FUNCTION_81_4(v14);
      OUTLINED_FUNCTION_67_2();

      v15 = sub_1B256DD5C();
      v16 = OUTLINED_FUNCTION_405();
      v17 = MEMORY[0x1E69E85E0];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v13;
      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();
    }
  }

  v18 = OUTLINED_FUNCTION_164_1();
  if (__swift_getEnumTagSinglePayload(v18, v19, v3))
  {
LABEL_17:
    OUTLINED_FUNCTION_45();
    return;
  }

  v20 = *(v0 + *(v3 + 24));
  swift_bridgeObjectRetain_n();
  v21 = 0;
LABEL_8:
  v22 = *(v20 + 16);
  v23 = v21;
  while (1)
  {
    if (v23 == v22)
    {
      v28 = 0;
      v21 = v22;
      goto LABEL_13;
    }

    if (v23 >= *(v20 + 16))
    {
      break;
    }

    sub_1B24C5C14();
    v21 = v23 + 1;
LABEL_13:
    v29 = v23 == v22;
    sub_1B24C42F0();
    if (v27)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_17;
    }

    sub_1B24C42F0();
    v24 = swift_weakLoadStrong();
    OUTLINED_FUNCTION_34_1();
    sub_1B256615C(v25, v26);
    v23 = v21;
    if (v24)
    {
      sub_1B25603E8(&v28, v24);

      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1B2558DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v4[4] = swift_task_alloc();
  sub_1B256DD6C();
  v4[5] = sub_1B256DD5C();
  v6 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558EBC, v6, v5);
}

uint64_t sub_1B2558EBC()
{
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_41_1();
  swift_storeEnumTagMultiPayload();
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2558F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  sub_1B256DD6C();
  v8[16] = sub_1B256DD5C();
  v10 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2558FE4, v10, v9);
}

void sub_1B2558FE4()
{
  v32 = v0;
  v1 = v0[12];
  v2 = v0[10];

  sub_1B2564554(sub_1B25661C0, 0, v0 + 2, v2);
  OUTLINED_FUNCTION_309_0();
  v28 = v1;
  v3 = v1 + 56;

  v27 = v0;
LABEL_2:
  if (sub_1B25430F8())
  {
    v4 = sub_1B243A2E0();

    MEMORY[0x1B274A250](0, &type metadata for StoreProductManager.ProductID, v4);
    v5 = 0;
    v6 = -1 << *(v28 + 32);
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v28 + 56);
    while (v8)
    {
LABEL_12:
      OUTLINED_FUNCTION_409();
      if ((*(*(v28 + 48) + 24 * (v10 | (v5 << 6)) + 16) & 1) == 0)
      {

        OUTLINED_FUNCTION_437();
        sub_1B2560518();
      }
    }

    while (1)
    {
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v9 >= ((63 - v6) >> 6))
      {
        v0 = v27;
        sub_1B23FB6C4();
        v11 = OUTLINED_FUNCTION_379();
        sub_1B254A1F0(v11, v12, MEMORY[0x1E69E7CD0]);

        goto LABEL_2;
      }

      v8 = *(v3 + 8 * v9);
      ++v5;
      if (v8)
      {
        v5 = v9;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[10];
    OUTLINED_FUNCTION_517();
    sub_1B256E4FC();

    v0[9] = *(v14 + 16);
    v15 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v15);

    OUTLINED_FUNCTION_75_0();
    MEMORY[0x1B2749D50](0xD000000000000016);
    v16 = sub_1B256E08C();

    v17 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v18 = v0[15];
      OUTLINED_FUNCTION_21_3();
      v31 = OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_51_6(4.8752e-34);
      v29 = v19;
      v30 = v20;
      v21 = OUTLINED_FUNCTION_12_11();
      MEMORY[0x1B2749D50](v21);
      OUTLINED_FUNCTION_94_0();
      sub_1B2519814(v29, v30, &v31);
      OUTLINED_FUNCTION_328_0();
      *(v13 + 4) = v18;
      OUTLINED_FUNCTION_135_2();
      v22 = OUTLINED_FUNCTION_35_0();
      sub_1B2519814(v22, v23, v24);
      OUTLINED_FUNCTION_200_1();

      *(v13 + 14) = v30;
      OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v25, v16, "%{public}s%{public}s");
      OUTLINED_FUNCTION_101_2();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_22_8();
    }

    else
    {
    }

    OUTLINED_FUNCTION_7_2();

    v26();
  }
}

uint64_t sub_1B2559370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1B256DD6C();
  v5[4] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559408, v7, v6);
}

uint64_t sub_1B2559408()
{
  OUTLINED_FUNCTION_21_5();

  sub_1B2546BD4();
  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2559488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  v9 = sub_1B256E6DC();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  v10 = sub_1B256E6CC();
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B25595BC, a4, 0);
}

uint64_t sub_1B25595BC()
{
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 96);
  sub_1B256E6AC();
  sub_1B256EE0C();
  sub_1B256E6BC();
  *(v0 + 120) = *(v1 + 8);
  *(v0 + 128) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_41_1();
  v3(v2);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_1B256ECAC();
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  sub_1B2565104(&qword_1EB7D2E68, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_455();
  *v4 = v5;
  v4[1] = sub_1B25596FC;
  OUTLINED_FUNCTION_310_0();
  OUTLINED_FUNCTION_42_4();

  return MEMORY[0x1EEE6DA68](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B25596FC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v8 = v7;
  *(v3 + 144) = v0;

  v9 = OUTLINED_FUNCTION_153();
  v10(v9);
  v11 = OUTLINED_FUNCTION_13_5();
  v6(v11);
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B25598C4()
{
  OUTLINED_FUNCTION_24_5();
  v6 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 33);
  sub_1B25415D4(0, v1, v2, &v5);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2559964()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B25599D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for StoreProductManager.SingleObserver.Storage(0);
  v5[5] = swift_task_alloc();
  sub_1B256DD6C();
  v5[6] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559A9C, v7, v6);
}

uint64_t sub_1B2559A9C()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  *v1 = v2;
  OUTLINED_FUNCTION_201_0();
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  sub_1B2545740();

  OUTLINED_FUNCTION_7_2();

  return v4();
}

uint64_t sub_1B2559B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1B256DD6C();
  v5[4] = sub_1B256DD5C();
  v7 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559BC4, v7, v6);
}

uint64_t sub_1B2559BC4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1B2546BD4();
  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2559C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1B256DD6C();
  v6[12] = sub_1B256DD5C();
  v8 = sub_1B256DCEC();

  return MEMORY[0x1EEE6DFA0](sub_1B2559CDC, v8, v7);
}

uint64_t sub_1B2559CDC()
{
  v2 = *(v1 + 72);

  sub_1B243A2E0();
  OUTLINED_FUNCTION_172_0();

  MEMORY[0x1B274A250](0, &type metadata for StoreProductManager.ProductID, v0);
  v3 = *(v2 + 16);
  for (i = (v2 + 48); v3; --v3)
  {
    if (*i != 1)
    {

      OUTLINED_FUNCTION_437();
      sub_1B2560518();
    }

    i += 24;
  }

  v5 = *(v1 + 80);

  sub_1B2564554(sub_1B25661C0, 0, (v1 + 16), v5);
  OUTLINED_FUNCTION_309_0();

  while (sub_1B25430F8())
  {
    v6 = *(v1 + 88);
    sub_1B254B9CC();
    v7 = OUTLINED_FUNCTION_201_0();
    sub_1B254B048(v7, v8);
  }

  OUTLINED_FUNCTION_517();

  OUTLINED_FUNCTION_7_2();

  return v9();
}

uint64_t sub_1B2559E70(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  if (!*(v2 + 152))
  {
    v8 = *a1;
    v9 = sub_1B256E09C();
    v10 = sub_1B256D5CC();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B2519814(0, 0xE000000000000000, &v18);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_1B2519814(0xD00000000000001BLL, 0x80000001B25932D0, &v18);
      _os_log_impl(&dword_1B23EF000, v10, v9, "%{public}s%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v12, -1, -1);
      MEMORY[0x1B274BFF0](v11, -1, -1);
    }

    sub_1B256DD7C();
    v13 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
    v14 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager);
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v14;
    *(v15 + 32) = v2;
    *(v15 + 40) = v8;
    swift_retain_n();
    sub_1B247DAA8();
    *(v2 + 152) = v16;
  }

  return result;
}

uint64_t sub_1B255A0C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  if (!*(v0 + 160))
  {
    v6 = sub_1B256E09C();
    v7 = sub_1B256D5CC();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1B2519814(0, 0xE000000000000000, &v15);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B2593240, &v15);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v9, -1, -1);
      MEMORY[0x1B274BFF0](v8, -1, -1);
    }

    sub_1B256DD7C();
    v10 = sub_1B256DDAC();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    v11 = sub_1B2565104(&qword_1EB7D2CF0, type metadata accessor for StoreProductManager);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    swift_retain_n();
    sub_1B247DAA8();
    *(v1 + 160) = v13;
  }

  return result;
}

uint64_t sub_1B255A314(char a1)
{
  if (!a1)
  {
    return 0x7078652061746164;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x726576726573626FLL;
}

uint64_t sub_1B255A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 192) = a5;
  *(v5 + 80) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = type metadata accessor for StorefrontInternal();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E38);
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for Storefront.Storefronts.AsyncIterator(0);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B255A500, a4, 0);
}

uint64_t sub_1B255A500()
{
  OUTLINED_FUNCTION_4_0();
  _s8StoreKit10StorefrontV11StorefrontsV17makeAsyncIteratorAE0fG0VyF_0(*(v0 + 136));
  OUTLINED_FUNCTION_9_25();
  *(v0 + 144) = sub_1B2565104(v1, v2);
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B255A584()
{
  OUTLINED_FUNCTION_21_5();
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E40);
  v0[20] = sub_1B256E7AC();
  v1 = OUTLINED_FUNCTION_41_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v3 = sub_1B2565E00(&qword_1EB7CD958, &qword_1EB7D0C10);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  v0[21] = v4;
  *v4 = v5;
  v4[1] = sub_1B255A69C;
  v6 = v0[13];

  return MEMORY[0x1EEE6D8C8](v6, v2, v3);
}

uint64_t sub_1B255A69C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_1B255A940;
  }

  else
  {
    (*(v3 + 160))();
    v7 = sub_1B255A7B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B255A7B4()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[13];
  v2 = OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_268_0(v2, v3, v4);
  if (v5)
  {
    sub_1B256615C(v1, &qword_1EB7D0C30);
    type metadata accessor for Storefront(0);
    v6 = OUTLINED_FUNCTION_150_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_186_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1B25636F8();
    v13 = sub_1B256E7BC();
    v0[22] = v14;
    v20 = (v13 + *v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[23] = v15;
    *v15 = v16;
    v15[1] = sub_1B255A958;
    v18 = v0[15];
    v17 = v0[16];

    return v20(v17, v18);
  }
}

uint64_t sub_1B255A958()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  sub_1B2563750();
  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B255AA88()
{
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for Storefront(0);
  OUTLINED_FUNCTION_188_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_186_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B255AAF0()
{
  OUTLINED_FUNCTION_155();
  v35 = v0;
  type metadata accessor for Storefront(0);
  v1 = OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_268_0(v1, v2, v3);
  if (v4)
  {
    sub_1B2563750();
    v5 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
    v6 = sub_1B256E09C();
    v7 = sub_1B256D5CC();
    if (os_log_type_enabled(v7, v6))
    {
      OUTLINED_FUNCTION_21_3();
      v8 = OUTLINED_FUNCTION_35_6();
      v34 = v8;
      *v5 = 136446466;
      *(v5 + 4) = OUTLINED_FUNCTION_75_2(v8, v9, &v34);
      *(v5 + 6) = 2082;
      *(v5 + 14) = sub_1B2519814(0xD000000000000023, 0x80000001B25932F0, &v34);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v5, 0x16u);
      OUTLINED_FUNCTION_54_4();
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_7_12();
    }

    OUTLINED_FUNCTION_7_2();

    return v10();
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 192);
    v14 = *(v0 + 80);
    v15 = sub_1B256DDAC();
    v16 = OUTLINED_FUNCTION_60_6();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v12;
    *(v19 + 32) = v14;
    *(v19 + 40) = v13;
    sub_1B24C5C14();
    v20 = OUTLINED_FUNCTION_199_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, v15);
    swift_retain_n();

    if (EnumTagSinglePayload == 1)
    {
      sub_1B256615C(*(v0 + 88), &qword_1EB7D1910);
    }

    else
    {
      sub_1B256DD9C();
      OUTLINED_FUNCTION_57_1();
      v23 = OUTLINED_FUNCTION_18_1();
      v24(v23);
    }

    v25 = *(v19 + 16);
    swift_unknownObjectRetain();

    if (v25)
    {
      swift_getObjectType();
      v26 = sub_1B256DCEC();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_1B256615C(*(v0 + 96), &qword_1EB7D1910);
    OUTLINED_FUNCTION_43_0();
    v29 = swift_allocObject();
    *(v29 + 16) = &unk_1B2587C18;
    *(v29 + 24) = v19;
    if (v28 | v26)
    {
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v26;
      *(v0 + 72) = v28;
    }

    v30 = *(v0 + 128);
    swift_task_create();

    sub_1B256615C(v30, &qword_1EB7D0E38);
    v31 = OUTLINED_FUNCTION_16_7();

    return MEMORY[0x1EEE6DFA0](v31, v32, v33);
  }
}

uint64_t sub_1B255AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1B2445514;

  return sub_1B255AF3C((v5 + 24));
}

uint64_t sub_1B255AF3C(_BYTE *a1)
{
  *(v2 + 512) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA0);
  *(v2 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v4 = type metadata accessor for StoreProductManager.CachedProduct(0);
  *(v2 + 552) = v4;
  *(v2 + 560) = *(v4 - 8);
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB0);
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 449) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B255B0E8, v1, 0);
}

void sub_1B255B0E8()
{
  v276 = v0;
  v1 = *(v0 + 512);
  v2 = OBJC_IVAR____TtC8StoreKit19StoreProductManager_log;
  v3 = sub_1B24D3E10();
  v5 = v4;
  *(v0 + 600) = v4;

  v6 = sub_1B256E0CC();

  v253 = v2;
  v254 = v1;
  v7 = sub_1B256D5CC();

  v255 = v5;
  v252 = v3;
  if (OUTLINED_FUNCTION_29_11())
  {
    OUTLINED_FUNCTION_21_3();
    v275 = OUTLINED_FUNCTION_46_1();
    *v2 = 136446466;
    OUTLINED_FUNCTION_15_22();
    MEMORY[0x1B2749D50](v3, v5);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_28_12();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_74_0();
    *(v2 + 14) = sub_1B2519814(0xD00000000000002DLL, 0x80000001B2593320, &v275);
    OUTLINED_FUNCTION_247(&dword_1B23EF000, v8, v6, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_44_1();
  }

  v9 = *(v0 + 512);
  OUTLINED_FUNCTION_402();
  v10 = *(v9 + 176) + 64;
  OUTLINED_FUNCTION_73_2();
  v13 = v12 & v11;
  OUTLINED_FUNCTION_231_0();
  v15 = v14 >> 6;

  v16 = 0;
  if (v13)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_223;
    }

    if (v17 >= v15)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      do
      {
LABEL_9:
        v13 &= v13 - 1;

        sub_1B256DE7C();
      }

      while (v13);
      continue;
    }
  }

  OUTLINED_FUNCTION_103_3();
  sub_1B256E4FC();

  v273 = 0x656C6C65636E6143;
  v274 = 0xEA00000000002064;
  *(v0 + 496) = *(*(v9 + 176) + 16);
  v18 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v18);

  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1B2749D50](0xD000000000000018);
  v19 = sub_1B256E08C();

  v20 = sub_1B256D5CC();

  if (OUTLINED_FUNCTION_29_11())
  {
    OUTLINED_FUNCTION_21_3();
    v21 = OUTLINED_FUNCTION_126_1();
    OUTLINED_FUNCTION_194_1(v21);
    OUTLINED_FUNCTION_13_19(4.8752e-34);
    MEMORY[0x1B2749D50](v252, v255);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_127_1();
    OUTLINED_FUNCTION_328_0();
    *(v15 + 4) = v255;
    OUTLINED_FUNCTION_58_4();
    v22 = OUTLINED_FUNCTION_35_0();
    sub_1B2519814(v22, v23, v24);
    OUTLINED_FUNCTION_200_1();

    *(v15 + 14) = &v2[v254];
    OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v25, v19, "%{public}s%{public}s");
    OUTLINED_FUNCTION_101_2();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
  }

  v26 = (v0 + 48);
  v27 = *(v0 + 512);
  if (*(v27 + 168))
  {

    sub_1B256DE7C();
  }

  v28 = *(v0 + 512);
  v260 = *(v0 + 592);
  v257 = *(v0 + 584);
  v265 = *(v0 + 552);
  *(v27 + 168) = 0;

  sub_1B256D3CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2E48);
  OUTLINED_FUNCTION_7_30();
  sub_1B2565104(v29, v30);
  *(v9 + 176) = sub_1B256D8AC();

  OUTLINED_FUNCTION_402();
  v31 = MEMORY[0x1E69E7CD0];
  v28[18] = MEMORY[0x1E69E7CD0];

  OUTLINED_FUNCTION_402();
  v32 = v28[17];
  *(v0 + 472) = v31;
  OUTLINED_FUNCTION_516();
  v256 = v28;
  v33 = v28[14];
  v34 = v33 + 64;
  OUTLINED_FUNCTION_52_4();
  v267 = v32;
  v268 = v36 & v35;
  OUTLINED_FUNCTION_231_0();
  v261 = v37 >> 6;

  v258 = v33;

  v38 = 0;
  v39 = v31;
  v259 = v33 + 64;
LABEL_17:
  v271 = v39 + 56;
  v40 = v261;
  v41 = v268;
  v263 = v39;
  if (!v268)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = v38;
LABEL_23:
    v43 = *(v0 + 584);
    v268 = (v41 - 1) & v41;
    v44 = (*(v258 + 48) + 16 * (__clz(__rbit64(v41)) | (v42 << 6)));
    v46 = *v44;
    v45 = v44[1];
    OUTLINED_FUNCTION_3_38();
    sub_1B255FE0C();
    v47 = &unk_1B2587C38;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8);
    *v43 = v46;
    *(v257 + 8) = v45;
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    OUTLINED_FUNCTION_188_1();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);

    v26 = (v0 + 48);
LABEL_24:
    sub_1B24C42F0();
    v52 = OUTLINED_FUNCTION_132_0();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v52);
    v54 = OUTLINED_FUNCTION_184();
    OUTLINED_FUNCTION_268_0(v54, v55, v53);
    if (v80)
    {
      v142 = *(v0 + 544);
      v143 = *(v0 + 512);
      v264 = v143;

      v144 = sub_1B256DDAC();
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v144);
      v148 = *(v0 + 472);
      sub_1B256DD6C();
      sub_1B256DD5C();
      v149 = OUTLINED_FUNCTION_405();
      v150 = OUTLINED_FUNCTION_185_1(v149);
      *(v150 + 24) = MEMORY[0x1E69E85E0];
      *(v150 + 32) = v148;
      OUTLINED_FUNCTION_107_0();
      sub_1B247DAA8();

      OUTLINED_FUNCTION_516();
      v151 = v143[15];
      v152 = v144;
      v153 = v151 + 64;
      OUTLINED_FUNCTION_52_4();
      v156 = v155 & v154;
      OUTLINED_FUNCTION_231_0();
      v262 = v157 >> 6;
      v269 = v158;

      v159 = 0;
      v56 = v256;
      v270 = v144;
      v266 = v153;
      while (1)
      {
        *(v0 + 608) = v267;
        if (v156)
        {
          v160 = v159;
          goto LABEL_119;
        }

        do
        {
          v160 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_224;
          }

          if (v160 >= v262)
          {
            v156 = 0;
            *(v0 + 144) = 0u;
            *(v0 + 160) = 0u;
            goto LABEL_120;
          }

          v156 = *(v153 + 8 * v160);
          ++v159;
        }

        while (!v156);
        v159 = v160;
LABEL_119:
        v161 = __clz(__rbit64(v156));
        v156 &= v156 - 1;
        v162 = (v160 << 10) | (16 * v161);
        v163 = (*(v269 + 48) + v162);
        v142 = *v163;
        v164 = v163[1];
        sub_1B247D7E0(*(v269 + 56) + v162, v0 + 392);
        *(v0 + 144) = v142;
        *(v0 + 152) = v164;
        sub_1B244ADF4(v0 + 392, v0 + 160);

LABEL_120:
        sub_1B24C42F0();
        v47 = *(v0 + 24);
        if (!v47)
        {
          goto LABEL_198;
        }

        sub_1B244ADF4(v0 + 32, v0 + 424);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v166 = Strong;
          OUTLINED_FUNCTION_16_2();
          __swift_storeEnumTagSinglePayload(v167, v168, v169, v152);

          v170 = sub_1B256DD5C();
          v171 = OUTLINED_FUNCTION_405();
          v171[2] = v170;
          v171[3] = MEMORY[0x1E69E85E0];
          v171[4] = v166;
          OUTLINED_FUNCTION_201_0();
          sub_1B24C5C14();
          v172 = OUTLINED_FUNCTION_199_0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v172, v173, v152);

          if (EnumTagSinglePayload == 1)
          {
            sub_1B256615C(*(v0 + 528), &qword_1EB7D1910);
          }

          else
          {
            sub_1B256DD9C();
            v182 = OUTLINED_FUNCTION_18_1();
            v183(v182);
          }

          v184 = v171[2];
          swift_unknownObjectRetain();

          if (v184)
          {
            swift_getObjectType();
            v185 = sub_1B256DCEC();
            v187 = v186;
            swift_unknownObjectRelease();
          }

          else
          {
            v185 = 0;
            v187 = 0;
          }

          sub_1B256615C(*(v0 + 536), &qword_1EB7D1910);
          OUTLINED_FUNCTION_43_0();
          v188 = swift_allocObject();
          *(v188 + 16) = &unk_1B2587C60;
          *(v188 + 24) = v171;
          if (v187 | v185)
          {
            *(v0 + 112) = 0;
            *(v0 + 120) = 0;
            *(v0 + 128) = v185;
            *(v0 + 136) = v187;
          }

          v153 = v266;
          swift_task_create();

          OUTLINED_FUNCTION_50_5();
          v189 = OUTLINED_FUNCTION_41_1();
          v192 = sub_1B253EC24(v189, v190, v47);
          if (*v191 != 1)
          {
            *v191 = 0;
          }

          v193 = OUTLINED_FUNCTION_212_0();
          v192(v193);
          swift_endAccess();
          v142 = v267;
          sub_1B256ED3C();
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_69();
          sub_1B256DA7C();
          sub_1B256ED7C();
          OUTLINED_FUNCTION_59_7();
          if (v194)
          {
            while (1)
            {
              OUTLINED_FUNCTION_147_2();
              if (v80)
              {
                OUTLINED_FUNCTION_280_0(v195);
                v197 = v80 && v196 == v47;
                if (v197 || (OUTLINED_FUNCTION_316_0() & 1) != 0)
                {
                  break;
                }
              }

              OUTLINED_FUNCTION_94_4();
              if ((v198 & 1) == 0)
              {
                goto LABEL_153;
              }
            }

LABEL_159:

            v152 = v270;
            goto LABEL_192;
          }

LABEL_153:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v275 = v267;
          v200 = v267[2];
          v201 = v267[3];

          if (v201 <= v200)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_1B2560C10();
            }

            else
            {
              sub_1B2562770();
            }

            v142 = v275;
            sub_1B256ED3C();
            OUTLINED_FUNCTION_74();
            sub_1B256DA7C();
            sub_1B256ED7C();
            OUTLINED_FUNCTION_59_7();
            if (v203)
            {
              v204 = v202;
              do
              {
                OUTLINED_FUNCTION_147_2();
                if (v80)
                {
                  OUTLINED_FUNCTION_280_0(v205);
                  v207 = v80 && v206 == v47;
                  if (v207 || (OUTLINED_FUNCTION_316_0() & 1) != 0)
                  {
                    goto LABEL_194;
                  }
                }

                OUTLINED_FUNCTION_94_4();
              }

              while ((v208 & 1) != 0);
              v202 = v204;
              v152 = v270;
              v153 = v266;
            }

            else
            {
              v152 = v270;
            }
          }

          else
          {
            v152 = v270;
            if (isUniquelyReferenced_nonNull_native)
            {
              v202 = v267;
            }

            else
            {
              sub_1B2561E44();
              v202 = v275;
            }
          }

          OUTLINED_FUNCTION_173_1(v202 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8));
          OUTLINED_FUNCTION_354(v209);
          if (v116)
          {
            goto LABEL_228;
          }

          v267 = v211;
          v211[2] = v210;
        }

        else
        {
          OUTLINED_FUNCTION_393();
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_69();
          sub_1B256DA7C();
          sub_1B256ED7C();
          OUTLINED_FUNCTION_59_7();
          if (v175)
          {
            do
            {
              OUTLINED_FUNCTION_147_2();
              if (v80)
              {
                OUTLINED_FUNCTION_280_0(v176);
                v178 = v80 && v177 == v47;
                if (v178 || (OUTLINED_FUNCTION_316_0() & 1) != 0)
                {
                  goto LABEL_159;
                }
              }

              OUTLINED_FUNCTION_94_4();
            }

            while ((v179 & 1) != 0);
          }

          v180 = swift_isUniquelyReferenced_nonNull_native();
          v275 = v263;
          v181 = v263[2];
          if (v263[3] <= v181)
          {
            if (v180)
            {
              OUTLINED_FUNCTION_299_0(v181);
              sub_1B2560C10();
            }

            else
            {
              OUTLINED_FUNCTION_299_0(v181);
              sub_1B2562770();
            }

            v212 = v275;
            OUTLINED_FUNCTION_393();
            OUTLINED_FUNCTION_74();
            OUTLINED_FUNCTION_69();
            sub_1B256DA7C();
            sub_1B256ED7C();
            OUTLINED_FUNCTION_59_7();
            v263 = v212;
            if (v213)
            {
              do
              {
                OUTLINED_FUNCTION_147_2();
                if (v80)
                {
                  OUTLINED_FUNCTION_280_0(v214);
                  v216 = v80 && v215 == v47;
                  if (v216 || (OUTLINED_FUNCTION_316_0() & 1) != 0)
                  {
LABEL_194:

                    sub_1B256EC8C();
                    return;
                  }
                }

                OUTLINED_FUNCTION_94_4();
              }

              while ((v217 & 1) != 0);
              v152 = v270;
              v153 = v266;
            }

            else
            {
              v152 = v270;
            }
          }

          else
          {
            v152 = v270;
            if ((v180 & 1) == 0)
            {
              sub_1B2561E44();
              v263 = v275;
            }
          }

          OUTLINED_FUNCTION_173_1(v263 + ((v142 >> 3) & 0xFFFFFFFFFFFFFF8));
          OUTLINED_FUNCTION_354(v218);
          if (v116)
          {
            goto LABEL_229;
          }

          *(v220 + 16) = v219;
        }

LABEL_192:
        sub_1B25629C4(v0 + 424);
        v56 = v256;
      }
    }

    v56 = *(v0 + 568);
    v272 = **(v0 + 592);
    v57 = *(v260 + 8);
    OUTLINED_FUNCTION_2_40();
    sub_1B25636F8();
    v264 = v56;
    if (swift_weakLoadStrong())
    {
      break;
    }

    v58 = *(*(v0 + 568) + *(v265 + 24));
    v59 = v58 + 32;
    v60 = -*(v58 + 16);
    v61 = -1;
    while (v60 + v61 != -1)
    {
      if (++v61 >= *(v58 + 16))
      {
        __break(1u);
LABEL_198:

        v56[17] = MEMORY[0x1E69E7CD0];

        OUTLINED_FUNCTION_73_2();
        v223 = v222 & v221;
        OUTLINED_FUNCTION_231_0();
        v225 = v224 >> 6;

        v226 = 0;
        if (v223)
        {
          goto LABEL_203;
        }

        while (1)
        {
          do
          {
            v227 = v226 + 1;
            if (__OFADD__(v226, 1))
            {
              goto LABEL_226;
            }

            if (v227 >= v225)
            {

              v273 = sub_1B251954C(88);
              v274 = v238;
              MEMORY[0x1B2749D50](0x206465766F6D6552, 0xE800000000000000);
              v239 = v263[2];

              *(v0 + 480) = v239;
              v240 = sub_1B256EAAC();
              MEMORY[0x1B2749D50](v240);

              MEMORY[0x1B2749D50](0xD00000000000004ELL, 0x80000001B2593370);
              v241 = sub_1B256E08C();
              v242 = v255;

              v243 = sub_1B256D5CC();

              if (os_log_type_enabled(v243, v241))
              {
                OUTLINED_FUNCTION_21_3();
                v244 = OUTLINED_FUNCTION_126_1();
                OUTLINED_FUNCTION_369(v244);
                OUTLINED_FUNCTION_13_19(4.8752e-34);
                v245 = v252;
                MEMORY[0x1B2749D50](v252, v255);
                OUTLINED_FUNCTION_94_0();
                OUTLINED_FUNCTION_127_1();
                OUTLINED_FUNCTION_371();

                *(v47 + 4) = v255;
                OUTLINED_FUNCTION_58_4();
                v246 = OUTLINED_FUNCTION_157_0();
                sub_1B2519814(v246, v247, v248);
                OUTLINED_FUNCTION_154();

                *(v47 + 14) = &v253[v254];
                OUTLINED_FUNCTION_153_1(&dword_1B23EF000, v249, v241, "%{public}s%{public}s");
                OUTLINED_FUNCTION_95_0();
                v242 = v255;
                OUTLINED_FUNCTION_11_4();
                OUTLINED_FUNCTION_22_8();
              }

              else
              {

                v245 = v252;
              }

              v250 = swift_task_alloc();
              *(v0 + 616) = v250;
              *v250 = v0;
              v250[1] = sub_1B255CA44;
              v251 = *(v0 + 449);

              sub_1B254D99C(v267, v245, v242, v251);
              return;
            }

            v223 = v263[v227 + 7];
            ++v226;
          }

          while (!v223);
          v226 = v227;
          do
          {
LABEL_203:
            v228 = v263[6] + 24 * (__clz(__rbit64(v223)) | (v226 << 6));
            v47 = *v228;
            v229 = *(v228 + 8);
            if (*(v228 + 16))
            {
              OUTLINED_FUNCTION_50_5();

              v230 = sub_1B2458898(v47, v229);
              if (v231)
              {
                v47 = v230;
                swift_isUniquelyReferenced_nonNull_native();
                v273 = v264[15];
                v264[15] = 0x8000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
                sub_1B256E80C();
                v232 = v273;
                OUTLINED_FUNCTION_397();
                sub_1B244ADF4(*(v232 + 56) + 16 * v47, v0 + 408);
                sub_1B24D0B38();
                OUTLINED_FUNCTION_333();
                sub_1B256E82C();
                v264[15] = v232;
              }

              else
              {
                *(v0 + 408) = 1;
                *(v0 + 416) = 0;
              }

              sub_1B256615C(v0 + 408, &unk_1EB7D2CD0);
            }

            else
            {
              OUTLINED_FUNCTION_50_5();

              v233 = sub_1B2458898(v47, v229);
              if (v234)
              {
                v47 = v233;
                swift_isUniquelyReferenced_nonNull_native();
                v273 = v256[14];
                v256[14] = 0x8000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
                sub_1B256E80C();
                v235 = v273;
                OUTLINED_FUNCTION_397();
                OUTLINED_FUNCTION_2_40();
                sub_1B25636F8();
                sub_1B243A2E0();
                OUTLINED_FUNCTION_333();
                sub_1B256E82C();
                v256[14] = v235;

                v236 = 0;
              }

              else
              {
                v236 = 1;
              }

              v237 = *(v0 + 520);
              __swift_storeEnumTagSinglePayload(v237, v236, 1, *(v0 + 552));
              sub_1B256615C(v237, &qword_1EB7CFEA0);
            }

            v223 &= v223 - 1;
            swift_endAccess();
            OUTLINED_FUNCTION_38_7();
            sub_1B24D0BE8();
          }

          while (v223);
        }
      }

      v47 = v59 + 8;
      v56 = &qword_1EB7D0460;
      sub_1B24C5C14();
      v62 = swift_weakLoadStrong();
      OUTLINED_FUNCTION_146_2();
      sub_1B256615C(v63, v64);
      v59 = v47;
      if (v62)
      {

        v26 = (v0 + 48);
        goto LABEL_31;
      }
    }

    v39 = v263;
    sub_1B256ED3C();
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_387();
    sub_1B256ED7C();
    OUTLINED_FUNCTION_112_3();
    if (((*(v271 + v83) >> v58) & 1) == 0)
    {
      v34 = v259;
LABEL_92:
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v275 = v263;
      v129 = v263[2];
      if (v263[3] <= v129)
      {
        v26 = (v0 + 48);
        if (v128)
        {
          OUTLINED_FUNCTION_299_0(v129);
          sub_1B2560C10();
        }

        else
        {
          OUTLINED_FUNCTION_299_0(v129);
          sub_1B2562770();
        }

        v39 = v275;
        sub_1B256ED3C();
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_387();
        sub_1B256ED7C();
        OUTLINED_FUNCTION_112_3();
        if (((*(v39 + 56 + v133) >> v58) & 1) == 0)
        {
          v130 = v272;
          goto LABEL_109;
        }

        v134 = ~v132;
        v135 = *(v39 + 48);
        v130 = v272;
        v131 = v57;
        do
        {
          v136 = v135 + 24 * v58;
          if ((*(v136 + 16) & 1) == 0)
          {
            v137 = *v136 == v130 && *(v136 + 8) == v131;
            if (v137 || (OUTLINED_FUNCTION_301_0() & 1) != 0)
            {
              goto LABEL_194;
            }
          }

          v58 = (v58 + 1) & v134;
          OUTLINED_FUNCTION_155_1();
        }

        while (((v138 >> v58) & 1) != 0);
        v26 = (v0 + 48);
        v34 = v259;
      }

      else
      {
        v26 = (v0 + 48);
        v130 = v272;
        if ((v128 & 1) == 0)
        {
          sub_1B2561E44();
          v131 = v57;
          v130 = v272;
          v39 = v275;
          goto LABEL_110;
        }

LABEL_109:
        v131 = v57;
      }

LABEL_110:
      *(v39 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v58;
      v139 = *(v39 + 48) + 24 * v58;
      *v139 = v130;
      *(v139 + 8) = v131;
      *(v139 + 16) = 0;
      v140 = *(v39 + 16);
      v116 = __OFADD__(v140, 1);
      v141 = v140 + 1;
      if (v116)
      {
        goto LABEL_227;
      }

      *(v39 + 16) = v141;
      OUTLINED_FUNCTION_0_47();
      sub_1B2563750();
      goto LABEL_17;
    }

    v84 = ~v82;
    v85 = v263[6];
    v34 = v259;
    v86 = v272;
    v87 = v57;
    while (1)
    {
      v88 = v85 + 24 * v58;
      if ((*(v88 + 16) & 1) == 0)
      {
        if (*v88 == v86 && *(v88 + 8) == v87)
        {
          break;
        }

        v90 = OUTLINED_FUNCTION_301_0();
        v87 = v57;
        v86 = v272;
        if (v90)
        {
          break;
        }
      }

      v58 = (v58 + 1) & v84;
      if (((*(v271 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    OUTLINED_FUNCTION_0_47();
    sub_1B2563750();
    v26 = (v0 + 48);
LABEL_87:
    v40 = v261;
    v41 = v268;
    if (!v268)
    {
LABEL_19:
      while (1)
      {
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_222;
        }

        if (v42 >= v40)
        {
          v47 = &unk_1B2587C38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2EB8);
          v91 = OUTLINED_FUNCTION_150_0();
          __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
          v268 = 0;
          goto LABEL_24;
        }

        v41 = *(v34 + 8 * v42);
        ++v38;
        if (v41)
        {
          v38 = v42;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_31:
  v65 = *(v0 + 552);
  OUTLINED_FUNCTION_50_5();
  v66 = sub_1B253EBAC(v26);
  v68 = v67;
  if (!__swift_getEnumTagSinglePayload(v67, 1, v65))
  {
    sub_1B256615C(v68, &qword_1EB7D2CD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2CC0);
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  }

  (v66)(v26, 0);
  swift_endAccess();
  sub_1B256ED3C();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_146_2();
  sub_1B256DA7C();
  sub_1B256ED7C();
  OUTLINED_FUNCTION_112_3();
  if ((*(v267 + v74 + 56) >> v68))
  {
    v75 = ~v73;
    v76 = v267[6];
    v77 = v272;
    v78 = v57;
    while (1)
    {
      v79 = v76 + 24 * v68;
      if ((*(v79 + 16) & 1) == 0)
      {
        v80 = *v79 == v77 && *(v79 + 8) == v78;
        if (v80 || (OUTLINED_FUNCTION_301_0() & 1) != 0)
        {
          break;
        }
      }

      v68 = (v68 + 1) & v75;
      OUTLINED_FUNCTION_155_1();
      if (((v81 >> v68) & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v275 = v267;
    v96 = v267[2];
    if (v267[3] <= v96)
    {
      if (v95)
      {
        OUTLINED_FUNCTION_299_0(v96);
        sub_1B2560C10();
      }

      else
      {
        OUTLINED_FUNCTION_299_0(v96);
        sub_1B2562770();
      }

      v98 = v275;
      sub_1B256ED3C();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_387();
      sub_1B256ED7C();
      OUTLINED_FUNCTION_112_3();
      if ((*(v98 + 56 + v100) >> v68))
      {
        v101 = ~v99;
        v102 = v97;
        v103 = *(v97 + 48);
        v104 = v272;
        v105 = v57;
        do
        {
          v106 = v103 + 24 * v68;
          if ((*(v106 + 16) & 1) == 0)
          {
            v107 = *v106 == v104 && *(v106 + 8) == v105;
            if (v107 || (OUTLINED_FUNCTION_301_0() & 1) != 0)
            {
              goto LABEL_194;
            }
          }

          v68 = (v68 + 1) & v101;
          OUTLINED_FUNCTION_155_1();
        }

        while (((v108 >> v68) & 1) != 0);
        v97 = v102;
      }
    }

    else if (v95)
    {
      v97 = v267;
    }

    else
    {
      sub_1B2561E44();
      v97 = v275;
    }

    OUTLINED_FUNCTION_173_1(v97 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8));
    v112 = v110 + v68 * v111;
    *v112 = v113;
    *(v112 + 8) = v114;
    *(v112 + 16) = 0;
    v115 = v109[2];
    v116 = __OFADD__(v115, 1);
    v117 = v115 + 1;
    if (v116)
    {
      goto LABEL_225;
    }

    v267 = v109;
    v109[2] = v117;
  }

  v118 = swift_weakLoadStrong();
  if (v118)
  {
    v119 = v118;
    v120 = sub_1B256DDAC();
    OUTLINED_FUNCTION_81_4(v120);
    OUTLINED_FUNCTION_120();

    sub_1B256DD5C();
    v121 = OUTLINED_FUNCTION_405();
    v122 = OUTLINED_FUNCTION_185_1(v121);
    *(v122 + 24) = MEMORY[0x1E69E85E0];
    *(v122 + 32) = v119;
    OUTLINED_FUNCTION_107_0();
    sub_1B247DAA8();
    OUTLINED_FUNCTION_120();
  }

  v123 = *(*(v0 + 568) + *(v265 + 24));

  v124 = 0;
  while (2)
  {
    v125 = *(v123 + 16);
    v126 = v124;
LABEL_78:
    if (v126 == v125)
    {
      *(v0 + 440) = 0;
      v124 = v125;
LABEL_83:
      *(v0 + 448) = v126 == v125;
      sub_1B24C42F0();
      if (*(v0 + 464))
      {

        OUTLINED_FUNCTION_0_47();
        sub_1B2563750();
        v26 = (v0 + 48);
        v34 = v259;
        goto LABEL_87;
      }

      sub_1B24C42F0();
      v127 = swift_weakLoadStrong();
      sub_1B256615C(v0 + 504, &qword_1EB7D0460);
      v126 = v124;
      if (v127)
      {
        sub_1B25603E8(&v273, v127);

        continue;
      }

      goto LABEL_78;
    }

    break;
  }

  if ((v126 & 0x8000000000000000) == 0)
  {
    if (v126 >= *(v123 + 16))
    {
      goto LABEL_221;
    }

    sub_1B24C5C14();
    v124 = v126 + 1;
    goto LABEL_83;
  }

  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
}