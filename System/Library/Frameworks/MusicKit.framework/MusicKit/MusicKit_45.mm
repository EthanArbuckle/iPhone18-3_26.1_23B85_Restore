unint64_t sub_217596960()
{
  result = qword_280BE50D0;
  if (!qword_280BE50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50D0);
  }

  return result;
}

unint64_t sub_2175969B8()
{
  result = qword_280BE50D8;
  if (!qword_280BE50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50D8);
  }

  return result;
}

uint64_t CloudArtwork.TextGradient.convertToArtworkTextGradient()@<X0>(CGColorRef *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217758490;
  *(inited + 32) = v3;
  v14 = (inited + 32);
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = 0x3FF0000000000000;
  v15 = qword_280BE76A0;
  sub_217751DE8();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280C023C0;
  if (qword_280C023C0)
  {
    v17 = CGColorCreate(qword_280C023C0, v14);
  }

  else
  {

    v17 = 0;
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_217758490;
  *(v18 + 32) = v8;
  v19 = (v18 + 32);
  *(v18 + 40) = v9;
  *(v18 + 48) = v10;
  *(v18 + 56) = 0x3FF0000000000000;
  sub_217751DE8();
  if (v16)
  {
    v16 = CGColorCreate(v16, v19);
  }

  *a1 = v17;
  a1[1] = v16;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v7;
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v9;
  a1[9] = v10;
  a1[10] = v12;
  a1[11] = v11;
  sub_217751DE8();
  return sub_217751DE8();
}

BOOL static CloudArtwork.TextGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  result = 0;
  if (v13 || (v16 = *(a1 + 32), (sub_217753058() & 1) != 0))
  {
    v17 = v5 == v10 && v6 == v11;
    if (v17 && v7 == v12)
    {
      v19 = v8 == v14 && v9 == v15;
      if (v19 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CloudArtwork.TextGradient.hash(into:)()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v5 = *(v0 + 40);
  v6 = *v0;
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  Artwork.Color.hash(into:)();
  return Artwork.Color.hash(into:)();
}

uint64_t CloudArtwork.TextGradient.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v8 = *v0;
  v9 = *(v0 + 40);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  sub_2177531E8();
  Artwork.Color.hash(into:)();
  Artwork.Color.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217596DEC()
{
  sub_2177531E8();
  CloudArtwork.TextGradient.hash(into:)();
  return sub_217753238();
}

uint64_t CloudArtwork.TextGradient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F20, &qword_21777D1C8);
    sub_2175972A4(&qword_280BE2340, sub_2172A9B6C);
    sub_217753098();
    v6 = *(v17 + 16);
    if (v6 == 2)
    {
      v7 = *(v17 + 48);
      v9 = *(v17 + 56);
      v8 = *(v17 + 64);
      v15 = *(v17 + 72);
      v16 = *(v17 + 32);
      v10 = *(v17 + 88);
      v12 = *(v17 + 96);
      v11 = *(v17 + 104);
      sub_217751DE8();
      sub_217751DE8();

      __swift_destroy_boxed_opaque_existential_1(v18);
      *a2 = v16;
      *(a2 + 16) = v7;
      *(a2 + 24) = v9;
      *(a2 + 32) = v8;
      *(a2 + 40) = v15;
      *(a2 + 56) = v10;
      *(a2 + 64) = v12;
      *(a2 + 72) = v11;
    }

    else
    {

      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000059, 0x80000002177B1710);
      v18[8] = v6;
      v13 = sub_217752FC8();
      MEMORY[0x21CEA23B0](v13);

      MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B1770);
      sub_217752B48();
      swift_allocError();
      sub_217752AF8();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudArtwork.TextGradient.encode(to:)(void *a1)
{
  v3 = *(v1 + 2);
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v12 = *(v1 + 40);
  v13 = *v1;
  v6 = *(v1 + 7);
  v8 = *(v1 + 8);
  v7 = *(v1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F28, &qword_21777D1D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_217759200;
  *(v9 + 32) = v13;
  *(v9 + 48) = v3;
  *(v9 + 56) = v5;
  *(v9 + 64) = v4;
  *(v9 + 72) = v12;
  *(v9 + 88) = v6;
  *(v9 + 96) = v8;
  *(v9 + 104) = v7;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2177532E8();
  v14[8] = v9;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29F20, &qword_21777D1C8);
  sub_2175972A4(&qword_27CB29F30, sub_2172A9724);
  sub_2177530F8();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t Artwork._TextGradient.convertToCloudArtworkTextGradient()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t sub_2175972A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB29F20, &qword_21777D1C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217597320()
{
  result = qword_27CB29F38;
  if (!qword_27CB29F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F38);
  }

  return result;
}

uint64_t sub_21759737C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175973BC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_217597488@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  return sub_2175978D0(v4, boxed_opaque_existential_0, a3);
}

BOOL MusicVideoPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_0_102(v0);
  v2 = *&v1 & 0x100FFLL;
  return !v3 && v2 == 65539;
}

uint64_t MusicVideoPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  v0 = type metadata accessor for MusicVideoPropertyProvider();
  OUTLINED_FUNCTION_0_102(v0);
  v2 = (v1 >> 24) & 1;
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

BOOL MusicVideoPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for MusicVideoPropertyProvider();
  v2 = *(v0 + *(v1 + 164));
  v3 = v0 + *(v1 + 244);
  if (*(v3 + 80))
  {
    return 1;
  }

  result = *(v3 + 112) != 0;
  if (v2 == 2)
  {
    return 1;
  }

  return result;
}

BOOL MusicVideoPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicVideoPropertyProvider() + 92));
  result = 0;
  if (v1[1])
  {
    v2 = *v1;
    if (v2 & 0xFF00) == 0x200 && (v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2175978D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_217597944(uint64_t result, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  if (v6)
  {
    v38 = result;
    v47 = 0;
    v48 = 0xE000000000000000;
    v7 = (a5 + 72);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 1);
      v13 = *v7;
      OUTLINED_FUNCTION_107_10();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      if (v5)
      {
        v14 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v14);
      }

      v45 = &type metadata for MusicCatalogSearchSuggestionsResponse.Suggestion;
      if (a3)
      {
        v46 = sub_21759D6B8();
        v15 = swift_allocObject();
        v16 = OUTLINED_FUNCTION_92_14(v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        v41 = v16[2];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        OUTLINED_FUNCTION_95_15();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        MEMORY[0x21CEA23B0](v41, v19);
        v20 = 2689570;
        v21 = 0xE300000000000000;
      }

      else
      {
        v46 = sub_21759D664();
        v22 = swift_allocObject();
        v23 = OUTLINED_FUNCTION_92_14(v22);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        MEMORY[0x21CEA23B0](v24, v25);
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0](0xD000000000000010);
        MEMORY[0x21CEA23B0](v26, v27);
        v20 = 10530;
        v21 = 0xE200000000000000;
      }

      MEMORY[0x21CEA23B0](v20, v21);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      v43 = 10;
      v44 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](0, 0xE000000000000000);

      v5 = &v47;
      MEMORY[0x21CEA23B0](v43, v44);

      v7 += 6;
      --v6;
    }

    while (v6);
    v28 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v28 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = *a4;
      v30 = a4[1];
      OUTLINED_FUNCTION_4_6();
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v32);
      }

      OUTLINED_FUNCTION_20_35();
      v43 = v33;
      v44 = v34;
      MEMORY[0x21CEA23B0](v38, a2);
      OUTLINED_FUNCTION_45_29();
      OUTLINED_FUNCTION_50_23();
      OUTLINED_FUNCTION_8_57();
      sub_21733A5C8();
      OUTLINED_FUNCTION_57_19();
      v35 = OUTLINED_FUNCTION_14_0();
      v37 = v36;

      MEMORY[0x21CEA23B0](v35, v37);

      OUTLINED_FUNCTION_43_22();
      MEMORY[0x21CEA23B0](v43, v44);
    }
  }

  return result;
}

void sub_217597CE0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  OUTLINED_FUNCTION_52_23(v5, v185);
  OUTLINED_FUNCTION_51_20(v185);
  LOBYTE(v6) = v185[0];
  v7 = BYTE8(v185[0]);
  v8 = OUTLINED_FUNCTION_154();
  v10 = sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_66_16(v10, v11, v12, v13, v14, v15, v16, v17, v95, v100, v105, v110, v115, v120, v126, v132, v137, v142, v146, v151, v155, v160, v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175, v176, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185[0]);
  OUTLINED_FUNCTION_7_58();
  v18 = v189;
  v19 = &qword_27CB248B8;
  if (!v189)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v188, &qword_27CB29F60, &qword_21777D6B8);
    OUTLINED_FUNCTION_9_51();
    if (v90)
    {
      OUTLINED_FUNCTION_0_103(v82, v83, v84, v85, v86, v87, v88, v89, v96, v101, v106, v111, v116, v121, v127, v133);
      if (v91)
      {
        v92 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v92);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v125, v131);
      OUTLINED_FUNCTION_45_29();
      *&v185[0] = &qword_27CB248B8;
      *(&v185[0] + 1) = &qword_217771D80;
      OUTLINED_FUNCTION_2_90();
      v174 = v93;
      v175 = v94;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  v20 = sub_217294390();
  while (1)
  {
    OUTLINED_FUNCTION_19_30(v20, v21, v22, v23, v24, v25, v26, v27, v96, v101, v106, v111, v116, v121, v127, v133, v138, *(&v138 + 1), v147, *(&v147 + 1), v156, *(&v156 + 1), v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175, v176, v177, v178);
    v75 = OUTLINED_FUNCTION_71_17();
    if (v18)
    {
      sub_21725CF00(v75, 1);
      if (v3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_21725CF00(v75, 0);
      if (v3)
      {
        goto LABEL_33;
      }
    }

    v190 = v7;
    v185[0] = v156;
    v185[1] = v147;
    v185[2] = v138;
    v186 = v19;
    v187 = v6;
    OUTLINED_FUNCTION_4_6();
    if (v76)
    {
      v6 = &v191;
      v77 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v77);
    }

    v167 = &type metadata for MusicCatalogSearchResponse.TopResult;
    if (v1)
    {
      *v168 = sub_21759CD54();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283E1C(v78, v79);
      OUTLINED_FUNCTION_160(&v164, v167);
      MusicCatalogSearchResponse.TopResult.debugDescription.getter();
    }

    else
    {
      *v168 = sub_21759CD00();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283E1C(v80, v81);
      OUTLINED_FUNCTION_160(&v164, v167);
      MusicCatalogSearchResponse.TopResult.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v164);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217283E78(v185);
    OUTLINED_FUNCTION_68_19();
    v19 = &qword_27CB248B8;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v36)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_78_14(v28, v29, v30, v31, v32, v33, v34, v35, v96, v101, v106, v111, v116, v121, v127, v133, v138, *(&v138 + 1), v147, *(&v147 + 1), v156, *(&v156 + 1), v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175, v176, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185[0]);
    OUTLINED_FUNCTION_70_17();
    sub_2171F5110(v37, v38, v39, &qword_217771D80);
    if (v168[25])
    {
      v19 = v164;
      v6 = v164[2];
      v7 = v164[3];
      v3 = v164[4];
      OUTLINED_FUNCTION_38_26();
      v40 = OUTLINED_FUNCTION_55_21();
      sub_2172921E8(v42, v40, v41);

      v43 = sub_2171F0738(v185, &qword_27CB248B8, &qword_217771D80);
    }

    else
    {
      v51 = sub_217751DE8();
      v59 = OUTLINED_FUNCTION_66_16(v51, v52, v53, v54, v55, v56, v57, v58, v97, v102, v107, v112, v117, v122, v128, v134, v139, v143, v148, v152, v157, v161, v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173, *&v173[8], *&v173[16], *&v173[24], v174, v175, v176, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185[0]);
      OUTLINED_FUNCTION_18_43(v59, v60, v61, v62, v63, v64, v65, v66, v98, v103, v108, v113, v118, v123, v129, v135, v140, v144, v149, v153, v158, v162, v164, v165, v166, v167, *v168);
      *&v173[9] = *&v168[9];
    }

    OUTLINED_FUNCTION_28_38(v43, v44, v45, v46, v47, v48, v49, v50, v97, v102, v107, v112, v117, v122, v128, v134, v139, v143, v148, v152, v157, v161, v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173);
    OUTLINED_FUNCTION_89_16(v67, v68, v69, v70, v71, v72, v73, v74, v99, v104, v109, v114, v119, v124, v130, v136, v141, v145, v150, v154, v159, v163, v164, v165, v166, v167, *v168, *&v168[8], *&v168[16], *&v168[24], v169, v170, v171, v172, *v173, *&v173[8], *&v173[16], v173[24]);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_217597FF4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v79 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v75 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v78 = &v71 - v14;
  v82 = type metadata accessor for MusicPersonalRecommendation();
  v15 = OUTLINED_FUNCTION_43(v82);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v71 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v71 - v28;
  v30 = *v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v30 = *(v30 + 56);
  }

  if (!*(v30 + 16))
  {
    goto LABEL_35;
  }

  v72 = v7;
  v73 = v5;
  v74 = v2;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_2171F5110(v0, &v87, &qword_27CB28678, &qword_21776DEA0);
  sub_2171F5110(&v87, &v91, &qword_27CB28678, &qword_21776DEA0);
  v31 = v87;
  v32 = v88;
  sub_217283C5C(v87, v88);
  sub_2171F0738(&v87, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v31, v32);
  v33 = 0;
  v93 = 0;
  v34 = v91;
  v81 = v92;
  v35 = v75;
  for (i = v24; ; v24 = i)
  {
    if (v81)
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v33 == *(*(v34 + 56) + 16))
      {
        break;
      }

      sub_2172943A8(v33, v24);
      goto LABEL_15;
    }

    v36 = *(v34 + 16);
    if (v33 == v36)
    {
      break;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    if (v33 >= v36)
    {
      goto LABEL_39;
    }

    v37 = v78;
    sub_2171F5110(v34 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v33, v78, &qword_27CB24978, &qword_21776DBA0);
    sub_2171F5110(v37, v35, &qword_27CB24978, &qword_21776DBA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *(*v35 + 16);
      v38 = *(*v35 + 24);
      v40 = *(*v35 + 32);
      v41 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v41, v42);
      sub_217751DE8();

      v35 = v75;
      sub_217292370(i);

      v24 = i;
    }

    else
    {
      sub_21729C84C(v35, v24);
      v43 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v43, v44);
    }

    sub_2171F0738(v78, &qword_27CB24978, &qword_21776DBA0);
LABEL_15:
    sub_21729C84C(v24, v29);
    v45 = __OFADD__(v33, 1);
    if (v81)
    {
      sub_21725CF00(v34, 1);
      if (v45)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v46 = OUTLINED_FUNCTION_84_11();
      sub_21725CF00(v46, v47);
      if (v45)
      {
        goto LABEL_37;
      }
    }

    v93 = v33 + 1;
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v82);
    sub_21729C84C(v29, v20);
    OUTLINED_FUNCTION_4_6();
    if (v48)
    {
      v49 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v49);
    }

    v89 = v82;
    if (v79)
    {
      v90 = sub_21759D620(&qword_27CB2A068);
      v50 = __swift_allocate_boxed_opaque_existential_0(&v87);
      sub_21759D560(v20, v50);
      OUTLINED_FUNCTION_160(&v87, v89);
      v51 = 1;
    }

    else
    {
      v90 = sub_21759D620(&qword_27CB2A060);
      v52 = __swift_allocate_boxed_opaque_existential_0(&v87);
      sub_21759D560(v20, v52);
      OUTLINED_FUNCTION_160(&v87, v89);
      v51 = 0;
    }

    sub_21756F5BC(v51);
    v54 = v53;
    v56 = v55;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    v87 = 10;
    v88 = 0xE100000000000000;
    MEMORY[0x21CEA23B0](v54, v56);

    MEMORY[0x21CEA23B0](v87, v88);

    sub_21759D5C4(v20);
    ++v33;
  }

  sub_2171F0738(&v91, &qword_27CB29710, &qword_21777D6E0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v82);
  v58 = v94;
  v57 = v95;
  v59 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v59 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (v59)
  {
    v60 = *v74;
    v61 = v74[1];
    OUTLINED_FUNCTION_4_6();
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v63);
    }

    OUTLINED_FUNCTION_5_67();
    MEMORY[0x21CEA23B0](v72, v73);
    OUTLINED_FUNCTION_45_29();
    v87 = v58;
    v88 = v57;
    OUTLINED_FUNCTION_50_23();
    v85 = v64;
    v86 = v65;
    OUTLINED_FUNCTION_8_57();
    v83 = v66;
    v84 = v67;
    sub_21733A5C8();
    OUTLINED_FUNCTION_57_19();
    v68 = OUTLINED_FUNCTION_14_0();
    v70 = v69;

    MEMORY[0x21CEA23B0](v68, v70);

    OUTLINED_FUNCTION_43_22();
    MEMORY[0x21CEA23B0](v91, v92);
  }

LABEL_35:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217598628(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (v5)
  {
    v30 = result;
    v38 = 0;
    v39 = 0xE000000000000000;
    v6 = (a5 + 56);
    do
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v39) & 0xF;
      }

      else
      {
        v11 = v38 & 0xFFFFFFFFFFFFLL;
      }

      v12 = *v6;
      sub_217751DE8();
      if (v11)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      v36 = &type metadata for MusicItemTypeValue;
      if (a3)
      {
        v37 = sub_21759D464();
        v13 = swift_allocObject();
        v34 = v13;
        v13[2] = v8;
        v13[3] = v7;
        v13[4] = v9;
        v13[5] = v10;
        __swift_project_boxed_opaque_existential_1(&v34, &type metadata for MusicItemTypeValue);
        sub_217751DE8();
        v14 = MusicItemTypeValue.debugDescription.getter();
        v16 = v15;
      }

      else
      {
        v37 = sub_21759D410();
        v17 = swift_allocObject();
        v34 = v17;
        v17[2] = v8;
        v17[3] = v7;
        v17[4] = v9;
        v17[5] = v10;
        v18 = __swift_project_boxed_opaque_existential_1(&v34, &type metadata for MusicItemTypeValue);
        v19 = v18[2];
        v20 = v18[3];
        sub_217751DE8();
        sub_217751DE8();
        sub_217285954(1);
        v21 = sub_217752918();
        v23 = v22;

        MEMORY[0x21CEA23B0](v21, v23);

        sub_217751DE8();
        sub_2172857F8(1uLL);
        sub_217285A70();
        sub_217752048();

        v14 = 46;
        v16 = 0xE100000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v34);
      v34 = 10;
      v35 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v14, v16);

      MEMORY[0x21CEA23B0](v34, v35);

      v6 += 4;
      --v5;
    }

    while (v5);
    v24 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v24 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = a4[1];
      v26 = *a4 & 0xFFFFFFFFFFFFLL;
      if ((v25 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v25) & 0xF;
      }

      if (v26)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      v34 = 2105354;
      v35 = 0xE300000000000000;
      MEMORY[0x21CEA23B0](v30, a2);
      MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
      sub_21733A5C8();
      v27 = sub_217752998();
      v29 = v28;

      MEMORY[0x21CEA23B0](v27, v29);

      MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
      MEMORY[0x21CEA23B0](v34, v35);
    }
  }

  return result;
}

void sub_21759899C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB25388;
  OUTLINED_FUNCTION_52_23(v6, v119);
  OUTLINED_FUNCTION_51_20(v119);
  v7 = BYTE8(v119[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v119);
  OUTLINED_FUNCTION_7_58();
  v10 = v122;
  if (!v122)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v121, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_9_51();
    if (v68)
    {
      OUTLINED_FUNCTION_0_103(v60, v61, v62, v63, v64, v65, v66, v67, v73, v75, v77, v79, v81, v83, v86, v89);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v70);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v85, v88);
      OUTLINED_FUNCTION_45_29();
      *&v119[0] = v5;
      *(&v119[0] + 1) = &unk_282970F70;
      OUTLINED_FUNCTION_2_90();
      v114 = v71;
      v115 = v72;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  for (i = sub_217294574(); ; i = sub_2171F0738(v42, &unk_27CB276C0, &qword_217758A00))
  {
    OUTLINED_FUNCTION_19_30(i, v12, v13, v14, v15, v16, v17, v18, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117, v118);
    v43 = OUTLINED_FUNCTION_41_27();
    if (v10)
    {
      v44 = sub_21725CF00(v43, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v44 = sub_21725CF00(v43, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v52 = OUTLINED_FUNCTION_73_16(v44, v45, v46, v47, v48, v49, v50, v51, v74, v76, v78, v80, v82, v84, v87, v90, v92, v93, v95);
    v119[0] = v53;
    v119[1] = v52;
    v119[2] = v91;
    v120 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v55);
    }

    v102 = &type metadata for Album;
    if (v1)
    {
      sub_21759CDFC();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_21725CF0C(v56, v57);
      OUTLINED_FUNCTION_160(&v99, v102);
      Album.debugDescription.getter();
    }

    else
    {
      sub_21759CDA8();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_21725CF0C(v58, v59);
      OUTLINED_FUNCTION_160(&v99, v102);
      Album.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v99);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_21725CE44(v119);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v19)
    {
      goto LABEL_35;
    }

    v5 = &unk_27CB276C0;
    sub_2171F5110(v3, v119, &unk_27CB276C0, &qword_217758A00);
    OUTLINED_FUNCTION_70_17();
    v23 = sub_2171F5110(v20, v21, v22, &qword_217758A00);
    if (v106)
    {
      OUTLINED_FUNCTION_11_55(v23, v24, v25, v26, v27, v28, v29, v30, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99);

      v31 = OUTLINED_FUNCTION_6_66();
      sub_217292A88(v33, v31, v32);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      v34 = sub_217751DE8();
    }

    OUTLINED_FUNCTION_28_38(v34, v35, v36, v37, v38, v39, v40, v41, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    OUTLINED_FUNCTION_90_14();
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_217598C8C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &unk_27CB28230;
  OUTLINED_FUNCTION_52_23(v6, v76);
  OUTLINED_FUNCTION_51_20(v76);
  v7 = BYTE8(v76[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v76);
  OUTLINED_FUNCTION_7_58();
  v10 = v79;
  if (!v79)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v78, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_9_51();
    if (v52)
    {
      OUTLINED_FUNCTION_0_103(v44, v45, v46, v47, v48, v49, v50, v51, v57, v58, v59, v60, v61, v62, v64, v66);
      if (v53)
      {
        v54 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v54);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v63, v65);
      OUTLINED_FUNCTION_45_29();
      *&v76[0] = v5;
      *(&v76[0] + 1) = &unk_282971010;
      OUTLINED_FUNCTION_2_90();
      v74 = v55;
      v75 = v56;
      sub_21733A5C8();
      OUTLINED_FUNCTION_30_33();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_91_13();
  sub_2172944E4();
  while (1)
  {
    v27 = OUTLINED_FUNCTION_34_31();
    if (v10)
    {
      v28 = sub_21725CF00(v27, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v28 = sub_21725CF00(v27, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v36 = OUTLINED_FUNCTION_73_16(v28, v29, v30, v31, v32, v33, v34, v35, v57, v58, v59, v60, v61, v62, v64, v66, v67, *(&v67 + 1), v68);
    v76[0] = v37;
    v76[1] = v36;
    v76[2] = v67;
    v77 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v39);
    }

    v72 = &type metadata for Playlist;
    if (v1)
    {
      sub_21759D09C();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_2172757C0(v40, v41);
      OUTLINED_FUNCTION_160(v71, v72);
      Playlist.debugDescription.getter();
    }

    else
    {
      sub_21759D048();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_2172757C0(v42, v43);
      OUTLINED_FUNCTION_160(v71, v72);
      Playlist.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_21726B8C4(v76);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v11)
    {
      goto LABEL_35;
    }

    v5 = &qword_27CB24830;
    sub_2171F5110(v3, v76, &qword_27CB24830, &qword_217771D40);
    OUTLINED_FUNCTION_70_17();
    v15 = sub_2171F5110(v12, v13, v14, &qword_217771D40);
    if (v73)
    {
      OUTLINED_FUNCTION_11_55(v15, v16, v17, v18, v19, v20, v21, v22, v57, v58, v59, v60, v61, v62, v64, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, v70, v71[0]);

      v23 = OUTLINED_FUNCTION_6_66();
      sub_21729290C(v25, v23, v24);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_10_47();
      sub_217283C5C(v26, 0);
    }

    sub_2171F0738(v76, &qword_27CB24830, &qword_217771D40);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_217598F7C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_77_14();
  if (v6)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_106_10();
  OUTLINED_FUNCTION_52_23(v7, v166);
  OUTLINED_FUNCTION_51_20(v166);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v166);
  v10 = OUTLINED_FUNCTION_154();
  sub_21725CF00(v10, v11);
  OUTLINED_FUNCTION_104_12();
  v12 = v4 + 32;
  v13 = &qword_217758C50;
  HIDWORD(v116) = v1;
  while (1)
  {
    v140 = v12;
    if (v1)
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_88_14();
      if (v6)
      {
        break;
      }

      OUTLINED_FUNCTION_85_12();
      sub_2172944CC();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_108_12();
    if (v6)
    {
      break;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    if (v3 >= v22)
    {
      goto LABEL_40;
    }

    v23 = OUTLINED_FUNCTION_110_12(v14, v15, v16, v17, v18, v19, v20, v21, v95, v98, v101, v104, v107, v110, v113, v116, v119, *(&v119 + 1), v125, v129, v132, *(&v132 + 1), v137, v12, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166[0]);
    OUTLINED_FUNCTION_109_13(v23, v24, v25, v26, v27, v28, v29, v30, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v130, v133, v135, v138, v141, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166[0]);
    if (v149)
    {
      LOBYTE(v13) = v143;
      v31 = v143[2];
      v32 = v143[3];
      v33 = v143[4];
      v34 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v34, v35);
      sub_217751DE8();
      v36 = OUTLINED_FUNCTION_55_21();
      v5 = 0xE000000000000000;
      sub_217292790(v36);

      sub_2171F0738(v166, &qword_27CB28090, &qword_217758C50);
    }

    else
    {
      sub_217751DE8();
      v45 = sub_2171F0738(v166, &qword_27CB28090, &qword_217758C50);
      OUTLINED_FUNCTION_40_26(v45, v46, v47, v48, v49, v50, v51, v52, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v131, v134, v136, v139, v142, v143, v144, v145, v146, v147);
    }

    OUTLINED_FUNCTION_39_21(v37, v38, v39, v40, v41, v42, v43, v44, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v131, v134, v136, v139, v142, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154);
LABEL_16:
    v128 = v160;
    v132 = v159;
    v122 = v161;
    v53 = OUTLINED_FUNCTION_65_22();
    if (v1)
    {
      v54 = sub_21725CF00(v53, 1);
      if (v13)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v54 = sub_21725CF00(v53, 0);
      if (v13)
      {
        goto LABEL_38;
      }
    }

    v62 = OUTLINED_FUNCTION_73_16(v54, v55, v56, v57, v58, v59, v60, v61, v95, v98, v101, v104, v107, v110, v113, v116, v122, *(&v122 + 1), v128);
    v166[0] = v63;
    v166[1] = v62;
    v166[2] = v119;
    v167 = v12;
    OUTLINED_FUNCTION_4_6();
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v65);
    }

    if (v2)
    {
      v146 = &type metadata for Station;
      *&v147 = sub_21759D33C();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_217283D6C(v66, v67);
      OUTLINED_FUNCTION_160(&v143, v146);
      Station.debugDescription.getter();
      OUTLINED_FUNCTION_32_3();
      __swift_destroy_boxed_opaque_existential_1(&v143);
    }

    else
    {
      v146 = &type metadata for Station;
      *&v147 = sub_21759D2E8();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_217283D6C(v68, v69);
      v70 = __swift_project_boxed_opaque_existential_1(&v143, v146);
      *&v159 = 0;
      *(&v159 + 1) = v5;
      sub_217752AA8();

      v150 = 0x286E6F6974617453;
      OUTLINED_FUNCTION_100_14();
      OUTLINED_FUNCTION_53_22();
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      v72 = v70[5];
      v71 = v70[6];
      __swift_project_boxed_opaque_existential_1(v70 + 2, v72);
      OUTLINED_FUNCTION_72_15();
      v73(v72, v71);
      v74 = *(&v160 + 1);
      __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
      v75 = OUTLINED_FUNCTION_42_28();
      v76(v75, &type metadata for Station, MEMORY[0x277D837D0], v74);
      v77 = __swift_destroy_boxed_opaque_existential_1(&v159);
      v85 = OUTLINED_FUNCTION_87_17(v77, v78, v79, v80, v81, v82, v83, v84, v95, v98, v101, v104, v107, v110, v113, v116, v119, *(&v119 + 1), v125, v129, v132, *(&v132 + 1), v137, v140, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158);
      if (v6)
      {
        v87 = 0xE000000000000000;
      }

      else
      {
        v87 = v86;
      }

      MEMORY[0x21CEA23B0](v85, v87);

      OUTLINED_FUNCTION_99_15();
      __swift_destroy_boxed_opaque_existential_1(&v143);
      v5 = 0xE000000000000000;
      v1 = HIDWORD(v116);
    }

    OUTLINED_FUNCTION_49_26();

    OUTLINED_FUNCTION_98_16();

    sub_217283DC8(v166);
    ++v3;
    v12 = v140 + 64;
    v13 = &qword_217758C50;
  }

  sub_2171F0738(&v168, &qword_27CB28080, &qword_21776C060);
  OUTLINED_FUNCTION_56_18();
  if (v88)
  {
    OUTLINED_FUNCTION_3_83();
    if (v89)
    {
      v90 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v90);
    }

    OUTLINED_FUNCTION_5_67();
    MEMORY[0x21CEA23B0](v107, v110);
    OUTLINED_FUNCTION_45_29();
    *&v166[0] = &qword_217758C50;
    *(&v166[0] + 1) = v12;
    OUTLINED_FUNCTION_50_23();
    v143 = v91;
    v144 = v92;
    OUTLINED_FUNCTION_8_57();
    *&v159 = v93;
    *(&v159 + 1) = v94;
    sub_21733A5C8();
    OUTLINED_FUNCTION_44_23();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_32_3();

    OUTLINED_FUNCTION_95_15();

    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_97_12();
  }

LABEL_36:
  OUTLINED_FUNCTION_13();
}

void sub_2175993E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  OUTLINED_FUNCTION_52_23(v5, v183);
  OUTLINED_FUNCTION_51_20(v183);
  LOBYTE(v6) = v183[0];
  v7 = BYTE8(v183[0]);
  v8 = OUTLINED_FUNCTION_154();
  v10 = sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_66_16(v10, v11, v12, v13, v14, v15, v16, v17, v93, v98, v103, v108, v113, v118, v124, v130, v135, v140, v144, v149, v153, v158, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
  OUTLINED_FUNCTION_7_58();
  v18 = v187;
  v19 = &qword_27CB24898;
  if (!v187)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v186, &qword_27CB2A058, &unk_21777D6D0);
    OUTLINED_FUNCTION_9_51();
    if (v88)
    {
      OUTLINED_FUNCTION_0_103(v80, v81, v82, v83, v84, v85, v86, v87, v94, v99, v104, v109, v114, v119, v125, v131);
      if (v89)
      {
        v90 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v90);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v123, v129);
      OUTLINED_FUNCTION_45_29();
      *&v183[0] = &qword_27CB24898;
      *(&v183[0] + 1) = &unk_21775A270;
      OUTLINED_FUNCTION_2_90();
      v172 = v91;
      v173 = v92;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  v20 = sub_21729443C();
  while (1)
  {
    OUTLINED_FUNCTION_19_30(v20, v21, v22, v23, v24, v25, v26, v27, v94, v99, v104, v109, v114, v119, v125, v131, v136, *(&v136 + 1), v145, *(&v145 + 1), v154, *(&v154 + 1), v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176);
    v73 = OUTLINED_FUNCTION_71_17();
    if (v18)
    {
      sub_21725CF00(v73, 1);
      if (v3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_21725CF00(v73, 0);
      if (v3)
      {
        goto LABEL_33;
      }
    }

    v188 = v7;
    v183[0] = v154;
    v183[1] = v145;
    v183[2] = v136;
    v184 = v19;
    v185 = v6;
    OUTLINED_FUNCTION_4_6();
    if (v74)
    {
      v6 = &v189;
      v75 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v75);
    }

    v165 = &type metadata for MusicPersonalRecommendation.Item;
    if (v1)
    {
      *v166 = sub_21759D50C();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283ECC(v76, v77);
      OUTLINED_FUNCTION_160(&v162, v165);
      MusicPersonalRecommendation.Item.debugDescription.getter();
    }

    else
    {
      *v166 = sub_21759D4B8();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_217283ECC(v78, v79);
      OUTLINED_FUNCTION_160(&v162, v165);
      MusicPersonalRecommendation.Item.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v162);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217283F28(v183);
    OUTLINED_FUNCTION_68_19();
    v19 = &qword_27CB24898;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v36)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_78_14(v28, v29, v30, v31, v32, v33, v34, v35, v94, v99, v104, v109, v114, v119, v125, v131, v136, *(&v136 + 1), v145, *(&v145 + 1), v154, *(&v154 + 1), v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
    OUTLINED_FUNCTION_70_17();
    sub_2171F5110(v37, v38, v39, &unk_21775A270);
    if (v166[25])
    {
      v19 = v162;
      v6 = v162[2];
      v7 = v162[3];
      v3 = v162[4];
      OUTLINED_FUNCTION_38_26();
      v40 = OUTLINED_FUNCTION_55_21();
      sub_217292624(v40);

      v41 = sub_2171F0738(v183, &qword_27CB24898, &unk_21775A270);
    }

    else
    {
      v49 = sub_217751DE8();
      v57 = OUTLINED_FUNCTION_66_16(v49, v50, v51, v52, v53, v54, v55, v56, v95, v100, v105, v110, v115, v120, v126, v132, v137, v141, v146, v150, v155, v159, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
      OUTLINED_FUNCTION_18_43(v57, v58, v59, v60, v61, v62, v63, v64, v96, v101, v106, v111, v116, v121, v127, v133, v138, v142, v147, v151, v156, v160, v162, v163, v164, v165, *v166);
      *&v171[9] = *&v166[9];
    }

    OUTLINED_FUNCTION_28_38(v41, v42, v43, v44, v45, v46, v47, v48, v95, v100, v105, v110, v115, v120, v126, v132, v137, v141, v146, v150, v155, v159, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171);
    OUTLINED_FUNCTION_89_16(v65, v66, v67, v68, v69, v70, v71, v72, v97, v102, v107, v112, v117, v122, v128, v134, v139, v143, v148, v152, v157, v161, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], v171[24]);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_2175996FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_77_14();
  if (v6)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_106_10();
  OUTLINED_FUNCTION_52_23(v7, v166);
  OUTLINED_FUNCTION_51_20(v166);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v166);
  v10 = OUTLINED_FUNCTION_154();
  sub_21725CF00(v10, v11);
  OUTLINED_FUNCTION_104_12();
  v12 = v4 + 32;
  v13 = &qword_21776B8C0;
  HIDWORD(v116) = v1;
  while (1)
  {
    v140 = v12;
    if (v1)
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_88_14();
      if (v6)
      {
        break;
      }

      OUTLINED_FUNCTION_85_12();
      sub_2172945D4();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_108_12();
    if (v6)
    {
      break;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    if (v3 >= v22)
    {
      goto LABEL_40;
    }

    v23 = OUTLINED_FUNCTION_110_12(v14, v15, v16, v17, v18, v19, v20, v21, v95, v98, v101, v104, v107, v110, v113, v116, v119, *(&v119 + 1), v125, v129, v132, *(&v132 + 1), v137, v12, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166[0]);
    OUTLINED_FUNCTION_109_13(v23, v24, v25, v26, v27, v28, v29, v30, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v130, v133, v135, v138, v141, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, v163, v164, v165, v166[0]);
    if (v149)
    {
      LOBYTE(v13) = v143;
      v31 = v143[2];
      v32 = v143[3];
      v33 = v143[4];
      v34 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v34, v35);
      sub_217751DE8();
      v36 = OUTLINED_FUNCTION_55_21();
      v5 = 0xE000000000000000;
      sub_217293074(v36);

      sub_2171F0738(v166, &qword_27CB27BD0, &qword_21776B8C0);
    }

    else
    {
      sub_217751DE8();
      v45 = sub_2171F0738(v166, &qword_27CB27BD0, &qword_21776B8C0);
      OUTLINED_FUNCTION_40_26(v45, v46, v47, v48, v49, v50, v51, v52, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v131, v134, v136, v139, v142, v143, v144, v145, v146, v147);
    }

    OUTLINED_FUNCTION_39_21(v37, v38, v39, v40, v41, v42, v43, v44, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v131, v134, v136, v139, v142, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154);
LABEL_16:
    v128 = v160;
    v132 = v159;
    v122 = v161;
    v53 = OUTLINED_FUNCTION_65_22();
    if (v1)
    {
      v54 = sub_21725CF00(v53, 1);
      if (v13)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v54 = sub_21725CF00(v53, 0);
      if (v13)
      {
        goto LABEL_38;
      }
    }

    v62 = OUTLINED_FUNCTION_73_16(v54, v55, v56, v57, v58, v59, v60, v61, v95, v98, v101, v104, v107, v110, v113, v116, v122, *(&v122 + 1), v128);
    v166[0] = v63;
    v166[1] = v62;
    v166[2] = v119;
    v167 = v12;
    OUTLINED_FUNCTION_4_6();
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v65);
    }

    if (v2)
    {
      v146 = &type metadata for Artist;
      *&v147 = sub_21759CEA4();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_21725CF68(v66, v67);
      OUTLINED_FUNCTION_160(&v143, v146);
      Artist.debugDescription.getter();
      OUTLINED_FUNCTION_32_3();
      __swift_destroy_boxed_opaque_existential_1(&v143);
    }

    else
    {
      v146 = &type metadata for Artist;
      *&v147 = sub_21759CE50();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_21725CF68(v68, v69);
      v70 = __swift_project_boxed_opaque_existential_1(&v143, v146);
      *&v159 = 0;
      *(&v159 + 1) = v5;
      sub_217752AA8();

      v150 = 0x6928747369747241;
      OUTLINED_FUNCTION_100_14();
      OUTLINED_FUNCTION_53_22();
      if (qword_280BE6898 != -1)
      {
        swift_once();
      }

      v72 = v70[5];
      v71 = v70[6];
      __swift_project_boxed_opaque_existential_1(v70 + 2, v72);
      OUTLINED_FUNCTION_72_15();
      v73(v72, v71);
      v74 = *(&v160 + 1);
      __swift_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
      v75 = OUTLINED_FUNCTION_42_28();
      v76(v75, &type metadata for Artist, MEMORY[0x277D837D0], v74);
      v77 = __swift_destroy_boxed_opaque_existential_1(&v159);
      v85 = OUTLINED_FUNCTION_87_17(v77, v78, v79, v80, v81, v82, v83, v84, v95, v98, v101, v104, v107, v110, v113, v116, v119, *(&v119 + 1), v125, v129, v132, *(&v132 + 1), v137, v140, v143, v144, v145, v146, v147, *(&v147 + 1), v148, v149, v150, v151, v152, v153, v154, *(&v154 + 1), v155, v156, v157, v158);
      if (v6)
      {
        v87 = 0xE000000000000000;
      }

      else
      {
        v87 = v86;
      }

      MEMORY[0x21CEA23B0](v85, v87);

      OUTLINED_FUNCTION_99_15();
      __swift_destroy_boxed_opaque_existential_1(&v143);
      v5 = 0xE000000000000000;
      v1 = HIDWORD(v116);
    }

    OUTLINED_FUNCTION_49_26();

    OUTLINED_FUNCTION_98_16();

    sub_217284498(v166);
    ++v3;
    v12 = v140 + 64;
    v13 = &qword_21776B8C0;
  }

  sub_2171F0738(&v168, &qword_27CB27BC0, &qword_21776B8B0);
  OUTLINED_FUNCTION_56_18();
  if (v88)
  {
    OUTLINED_FUNCTION_3_83();
    if (v89)
    {
      v90 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v90);
    }

    OUTLINED_FUNCTION_5_67();
    MEMORY[0x21CEA23B0](v107, v110);
    OUTLINED_FUNCTION_45_29();
    *&v166[0] = &qword_21776B8C0;
    *(&v166[0] + 1) = v12;
    OUTLINED_FUNCTION_50_23();
    v143 = v91;
    v144 = v92;
    OUTLINED_FUNCTION_8_57();
    *&v159 = v93;
    *(&v159 + 1) = v94;
    sub_21733A5C8();
    OUTLINED_FUNCTION_44_23();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_32_3();

    OUTLINED_FUNCTION_95_15();

    OUTLINED_FUNCTION_43_22();
    OUTLINED_FUNCTION_97_12();
  }

LABEL_36:
  OUTLINED_FUNCTION_13();
}

void sub_217599B64()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB25380;
  OUTLINED_FUNCTION_52_23(v6, v119);
  OUTLINED_FUNCTION_51_20(v119);
  v7 = BYTE8(v119[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v119);
  OUTLINED_FUNCTION_7_58();
  v10 = v122;
  if (!v122)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v121, &qword_27CB278F0, &unk_217793B40);
    OUTLINED_FUNCTION_9_51();
    if (v68)
    {
      OUTLINED_FUNCTION_0_103(v60, v61, v62, v63, v64, v65, v66, v67, v73, v75, v77, v79, v81, v83, v86, v89);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v70);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v85, v88);
      OUTLINED_FUNCTION_45_29();
      *&v119[0] = v5;
      *(&v119[0] + 1) = &unk_282970FE8;
      OUTLINED_FUNCTION_2_90();
      v114 = v71;
      v115 = v72;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  for (i = sub_2172945BC(); ; i = sub_2171F0738(v42, &qword_27CB27900, &qword_217771CE0))
  {
    OUTLINED_FUNCTION_19_30(i, v12, v13, v14, v15, v16, v17, v18, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117, v118);
    v43 = OUTLINED_FUNCTION_41_27();
    if (v10)
    {
      v44 = sub_21725CF00(v43, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v44 = sub_21725CF00(v43, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v52 = OUTLINED_FUNCTION_73_16(v44, v45, v46, v47, v48, v49, v50, v51, v74, v76, v78, v80, v82, v84, v87, v90, v92, v93, v95);
    v119[0] = v53;
    v119[1] = v52;
    v119[2] = v91;
    v120 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v55);
    }

    v102 = &type metadata for MusicVideo;
    if (v1)
    {
      sub_21759CFF4();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_217283BAC(v56, v57);
      OUTLINED_FUNCTION_160(&v99, v102);
      MusicVideo.debugDescription.getter();
    }

    else
    {
      sub_21759CFA0();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_217283BAC(v58, v59);
      OUTLINED_FUNCTION_160(&v99, v102);
      MusicVideo.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v99);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217283C08(v119);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v19)
    {
      goto LABEL_35;
    }

    v5 = &qword_27CB27900;
    sub_2171F5110(v3, v119, &qword_27CB27900, &qword_217771CE0);
    OUTLINED_FUNCTION_70_17();
    v23 = sub_2171F5110(v20, v21, v22, &qword_217771CE0);
    if (v106)
    {
      OUTLINED_FUNCTION_11_55(v23, v24, v25, v26, v27, v28, v29, v30, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99);

      v31 = OUTLINED_FUNCTION_6_66();
      sub_217292EF4(v33, v31, v32);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      v34 = sub_217751DE8();
    }

    OUTLINED_FUNCTION_28_38(v34, v35, v36, v37, v38, v39, v40, v41, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    OUTLINED_FUNCTION_90_14();
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_217599E54()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB27820;
  OUTLINED_FUNCTION_52_23(v6, v119);
  OUTLINED_FUNCTION_51_20(v119);
  v7 = BYTE8(v119[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v119);
  OUTLINED_FUNCTION_7_58();
  v10 = v122;
  if (!v122)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v121, &qword_27CB27828, &qword_21776B2F0);
    OUTLINED_FUNCTION_9_51();
    if (v68)
    {
      OUTLINED_FUNCTION_0_103(v60, v61, v62, v63, v64, v65, v66, v67, v73, v75, v77, v79, v81, v83, v86, v89);
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v70);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v85, v88);
      OUTLINED_FUNCTION_45_29();
      *&v119[0] = v5;
      *(&v119[0] + 1) = &unk_282971088;
      OUTLINED_FUNCTION_2_90();
      v114 = v71;
      v115 = v72;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  for (i = sub_2172945A4(); ; i = sub_2171F0738(v42, &qword_27CB24540, &qword_21776B300))
  {
    OUTLINED_FUNCTION_19_30(i, v12, v13, v14, v15, v16, v17, v18, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, v115, v116, v117, v118);
    v43 = OUTLINED_FUNCTION_41_27();
    if (v10)
    {
      v44 = sub_21725CF00(v43, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v44 = sub_21725CF00(v43, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v52 = OUTLINED_FUNCTION_73_16(v44, v45, v46, v47, v48, v49, v50, v51, v74, v76, v78, v80, v82, v84, v87, v90, v92, v93, v95);
    v119[0] = v53;
    v119[1] = v52;
    v119[2] = v91;
    v120 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v55);
    }

    v102 = &type metadata for Song;
    if (v1)
    {
      sub_21759D294();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_217283AFC(v56, v57);
      OUTLINED_FUNCTION_160(&v99, v102);
      Song.debugDescription.getter();
    }

    else
    {
      sub_21759D240();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_25_42();
      sub_217283AFC(v58, v59);
      OUTLINED_FUNCTION_160(&v99, v102);
      Song.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v99);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217283B58(v119);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v19)
    {
      goto LABEL_35;
    }

    v5 = &qword_27CB24540;
    sub_2171F5110(v3, v119, &qword_27CB24540, &qword_21776B300);
    OUTLINED_FUNCTION_70_17();
    v23 = sub_2171F5110(v20, v21, v22, &qword_21776B300);
    if (v106)
    {
      OUTLINED_FUNCTION_11_55(v23, v24, v25, v26, v27, v28, v29, v30, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99);

      v31 = OUTLINED_FUNCTION_6_66();
      sub_217292D80(v33, v31, v32);
    }

    else
    {
      OUTLINED_FUNCTION_10_47();
      v34 = sub_217751DE8();
    }

    OUTLINED_FUNCTION_28_38(v34, v35, v36, v37, v38, v39, v40, v41, v73, v75, v77, v79, v81, v83, v86, v89, v91, *(&v91 + 1), v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    OUTLINED_FUNCTION_90_14();
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21759A144()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  OUTLINED_FUNCTION_52_23(v5, v183);
  OUTLINED_FUNCTION_51_20(v183);
  LOBYTE(v6) = v183[0];
  v7 = BYTE8(v183[0]);
  v8 = OUTLINED_FUNCTION_154();
  v10 = sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_66_16(v10, v11, v12, v13, v14, v15, v16, v17, v93, v98, v103, v108, v113, v118, v124, v130, v135, v140, v144, v149, v153, v158, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
  OUTLINED_FUNCTION_7_58();
  v18 = v187;
  v19 = &qword_27CB24878;
  if (!v187)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v186, &qword_27CB2A090, qword_21777D6E8);
    OUTLINED_FUNCTION_9_51();
    if (v88)
    {
      OUTLINED_FUNCTION_0_103(v80, v81, v82, v83, v84, v85, v86, v87, v94, v99, v104, v109, v114, v119, v125, v131);
      if (v89)
      {
        v90 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v90);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v123, v129);
      OUTLINED_FUNCTION_45_29();
      *&v183[0] = &qword_27CB24878;
      *(&v183[0] + 1) = &unk_217778870;
      OUTLINED_FUNCTION_2_90();
      v172 = v91;
      v173 = v92;
      sub_21733A5C8();
      OUTLINED_FUNCTION_27_38();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_37_28();
  v20 = sub_21729458C();
  while (1)
  {
    OUTLINED_FUNCTION_19_30(v20, v21, v22, v23, v24, v25, v26, v27, v94, v99, v104, v109, v114, v119, v125, v131, v136, *(&v136 + 1), v145, *(&v145 + 1), v154, *(&v154 + 1), v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176);
    v73 = OUTLINED_FUNCTION_71_17();
    if (v18)
    {
      sub_21725CF00(v73, 1);
      if (v3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_21725CF00(v73, 0);
      if (v3)
      {
        goto LABEL_33;
      }
    }

    v188 = v7;
    v183[0] = v154;
    v183[1] = v145;
    v183[2] = v136;
    v184 = v19;
    v185 = v6;
    OUTLINED_FUNCTION_4_6();
    if (v74)
    {
      v6 = &v189;
      v75 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v75);
    }

    v165 = &type metadata for MusicLibrarySearchResponse.TopResult;
    if (v1)
    {
      *v166 = sub_21759D760();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_2172843E8(v76, v77);
      OUTLINED_FUNCTION_160(&v162, v165);
      MusicLibrarySearchResponse.TopResult.debugDescription.getter();
    }

    else
    {
      *v166 = sub_21759D70C();
      OUTLINED_FUNCTION_203_0();
      swift_allocObject();
      OUTLINED_FUNCTION_26_32();
      sub_2172843E8(v78, v79);
      OUTLINED_FUNCTION_160(&v162, v165);
      MusicLibrarySearchResponse.TopResult.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(&v162);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217284444(v183);
    OUTLINED_FUNCTION_68_19();
    v19 = &qword_27CB24878;
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v36)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_78_14(v28, v29, v30, v31, v32, v33, v34, v35, v94, v99, v104, v109, v114, v119, v125, v131, v136, *(&v136 + 1), v145, *(&v145 + 1), v154, *(&v154 + 1), v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
    OUTLINED_FUNCTION_70_17();
    sub_2171F5110(v37, v38, v39, &unk_217778870);
    if (v166[25])
    {
      v19 = v162;
      v6 = v162[2];
      v7 = v162[3];
      v3 = v162[4];
      OUTLINED_FUNCTION_38_26();
      v40 = OUTLINED_FUNCTION_55_21();
      sub_217292BF8(v40);

      v41 = sub_2171F0738(v183, &qword_27CB24878, &unk_217778870);
    }

    else
    {
      v49 = sub_217751DE8();
      v57 = OUTLINED_FUNCTION_66_16(v49, v50, v51, v52, v53, v54, v55, v56, v95, v100, v105, v110, v115, v120, v126, v132, v137, v141, v146, v150, v155, v159, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], *&v171[24], v172, v173, v174, v175, v176, *(&v176 + 1), v177, v178, v179, v180, v181, v182, v183[0]);
      OUTLINED_FUNCTION_18_43(v57, v58, v59, v60, v61, v62, v63, v64, v96, v101, v106, v111, v116, v121, v127, v133, v138, v142, v147, v151, v156, v160, v162, v163, v164, v165, *v166);
      *&v171[9] = *&v166[9];
    }

    OUTLINED_FUNCTION_28_38(v41, v42, v43, v44, v45, v46, v47, v48, v95, v100, v105, v110, v115, v120, v126, v132, v137, v141, v146, v150, v155, v159, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171);
    OUTLINED_FUNCTION_89_16(v65, v66, v67, v68, v69, v70, v71, v72, v97, v102, v107, v112, v117, v122, v128, v134, v139, v143, v148, v152, v157, v161, v162, v163, v164, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, v169, v170, *v171, *&v171[8], *&v171[16], v171[24]);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21759A458()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB25638;
  OUTLINED_FUNCTION_52_23(v6, v75);
  OUTLINED_FUNCTION_51_20(v75);
  v7 = BYTE8(v75[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v75);
  OUTLINED_FUNCTION_7_58();
  v10 = v78;
  if (!v78)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v77, &qword_27CB28140, &qword_21776C190);
    OUTLINED_FUNCTION_9_51();
    if (v51)
    {
      OUTLINED_FUNCTION_0_103(v43, v44, v45, v46, v47, v48, v49, v50, v56, v57, v58, v59, v60, v61, v63, v65);
      if (v52)
      {
        v53 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v53);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v62, v64);
      OUTLINED_FUNCTION_45_29();
      *&v75[0] = v5;
      *(&v75[0] + 1) = &unk_282970FC0;
      OUTLINED_FUNCTION_2_90();
      v73 = v54;
      v74 = v55;
      sub_21733A5C8();
      OUTLINED_FUNCTION_30_33();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_91_13();
  sub_21729461C();
  while (1)
  {
    v25 = OUTLINED_FUNCTION_34_31();
    if (v10)
    {
      v26 = sub_21725CF00(v25, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = sub_21725CF00(v25, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v34 = OUTLINED_FUNCTION_73_16(v26, v27, v28, v29, v30, v31, v32, v33, v56, v57, v58, v59, v60, v61, v63, v65, v66, *(&v66 + 1), v67);
    v75[0] = v35;
    v75[1] = v34;
    v75[2] = v66;
    v76 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v37);
    }

    v71 = &type metadata for Curator;
    if (v1)
    {
      sub_21759CF4C();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_217284288(v38, v39);
      OUTLINED_FUNCTION_160(v70, v71);
      Curator.debugDescription.getter();
    }

    else
    {
      sub_21759CEF8();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_217284288(v40, v41);
      v42 = OUTLINED_FUNCTION_160(v70, v71);
      Curator.description.getter(v42);
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_2172842E4(v75);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v11)
    {
      goto LABEL_35;
    }

    v5 = &qword_27CB28150;
    sub_2171F5110(v3, v75, &qword_27CB28150, &qword_21776C1A0);
    OUTLINED_FUNCTION_70_17();
    v15 = sub_2171F5110(v12, v13, v14, &qword_21776C1A0);
    if (v72)
    {
      OUTLINED_FUNCTION_11_55(v15, v16, v17, v18, v19, v20, v21, v22, v56, v57, v58, v59, v60, v61, v63, v65, v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70[0]);

      v23 = OUTLINED_FUNCTION_6_66();
      sub_2172934F0(v23);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_10_47();
      sub_217283C5C(v24, 0);
    }

    sub_2171F0738(v75, &qword_27CB28150, &qword_21776C1A0);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21759A748()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v4)
  {
    OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_16_51();
  v5 = &qword_27CB25630;
  OUTLINED_FUNCTION_52_23(v6, v74);
  OUTLINED_FUNCTION_51_20(v74);
  v7 = BYTE8(v74[0]);
  v8 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v8, v9);
  OUTLINED_FUNCTION_79_17(v74);
  OUTLINED_FUNCTION_7_58();
  v10 = v77;
  if (!v77)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_29_34();
  if (v4)
  {
LABEL_26:
    sub_2171F0738(&v76, &qword_27CB27ED0, &qword_21776BDD0);
    OUTLINED_FUNCTION_9_51();
    if (v50)
    {
      OUTLINED_FUNCTION_0_103(v42, v43, v44, v45, v46, v47, v48, v49, v55, v56, v57, v58, v59, v60, v62, v64);
      if (v51)
      {
        v52 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v52);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v61, v63);
      OUTLINED_FUNCTION_45_29();
      *&v74[0] = v5;
      *(&v74[0] + 1) = &unk_282971038;
      OUTLINED_FUNCTION_2_90();
      v72 = v53;
      v73 = v54;
      sub_21733A5C8();
      OUTLINED_FUNCTION_30_33();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_46_25();

      OUTLINED_FUNCTION_59_18();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_58_19();
    }

LABEL_31:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_91_13();
  sub_217294604();
  while (1)
  {
    v25 = OUTLINED_FUNCTION_34_31();
    if (v10)
    {
      v26 = sub_21725CF00(v25, 1);
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = sub_21725CF00(v25, 0);
      if (v7)
      {
        goto LABEL_33;
      }
    }

    v34 = OUTLINED_FUNCTION_73_16(v26, v27, v28, v29, v30, v31, v32, v33, v55, v56, v57, v58, v59, v60, v62, v64, v65, *(&v65 + 1), v66);
    v74[0] = v35;
    v74[1] = v34;
    v74[2] = v65;
    v75 = v5;
    OUTLINED_FUNCTION_4_6();
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v37);
    }

    v70 = &type metadata for RadioShow;
    if (v1)
    {
      sub_21759D144();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_217284338(v38, v39);
      OUTLINED_FUNCTION_160(v69, v70);
      RadioShow.debugDescription.getter();
    }

    else
    {
      sub_21759D0F0();
      OUTLINED_FUNCTION_32_33();
      OUTLINED_FUNCTION_24_34();
      sub_217284338(v40, v41);
      OUTLINED_FUNCTION_160(v69, v70);
      RadioShow.description.getter();
    }

    OUTLINED_FUNCTION_46_25();
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_15_48();

    OUTLINED_FUNCTION_60_24();

    sub_217284394(v74);
    OUTLINED_FUNCTION_68_19();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_64_21();
    if (v4)
    {
      goto LABEL_26;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= v11)
    {
      goto LABEL_35;
    }

    v5 = &qword_27CB27EE0;
    sub_2171F5110(v3, v74, &qword_27CB27EE0, &qword_217758BF0);
    OUTLINED_FUNCTION_70_17();
    v15 = sub_2171F5110(v12, v13, v14, &qword_217758BF0);
    if (v71)
    {
      OUTLINED_FUNCTION_11_55(v15, v16, v17, v18, v19, v20, v21, v22, v55, v56, v57, v58, v59, v60, v62, v64, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, v68, v69[0]);

      v23 = OUTLINED_FUNCTION_6_66();
      sub_217293370(v23);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_10_47();
      sub_217283C5C(v24, 0);
    }

    sub_2171F0738(v74, &qword_27CB27EE0, &qword_217758BF0);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21759AA38()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_92();
  if (v6)
  {
    v5 = OUTLINED_FUNCTION_31_32();
    v0 = *(v0 + 56);
  }

  if (!*(v0 + 16))
  {
    goto LABEL_36;
  }

  v85 = v4;
  v87 = v2;
  v89 = v1;
  v119[0] = 0;
  v119[1] = 0xE000000000000000;
  v7 = &qword_217771CA0;
  OUTLINED_FUNCTION_52_23(v5, v114);
  OUTLINED_FUNCTION_51_20(v114);
  v8 = *&v114[0];
  v9 = OUTLINED_FUNCTION_154();
  sub_217283C5C(v9, v10);
  OUTLINED_FUNCTION_79_17(v114);
  v11 = OUTLINED_FUNCTION_154();
  sub_21725CF00(v11, v12);
  v13 = 0;
  v14 = v116 + 32;
  v118 = 0;
  v15 = v117;
  v91 = 0x80000002177AC100;
  LODWORD(v90) = v3;
  HIDWORD(v90) = v117;
  if (!v117)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_88_14();
  if (v6)
  {
LABEL_31:
    sub_2171F0738(&v116, &qword_27CB27FC0, &qword_21776BF30);
    OUTLINED_FUNCTION_56_18();
    if (v73)
    {
      OUTLINED_FUNCTION_0_103(v65, v66, v67, v68, v69, v70, v71, v72, v80, v81, v82, v83, v84, v85, v87, v89);
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_181_0();
        MEMORY[0x21CEA23B0](v75);
      }

      OUTLINED_FUNCTION_5_67();
      MEMORY[0x21CEA23B0](v86, v88);
      OUTLINED_FUNCTION_45_29();
      *&v114[0] = v7;
      *(&v114[0] + 1) = &qword_27CB27FD0;
      OUTLINED_FUNCTION_50_23();
      v95 = v76;
      v96 = v77;
      OUTLINED_FUNCTION_8_57();
      *&v111 = v78;
      *(&v111 + 1) = v79;
      sub_21733A5C8();
      OUTLINED_FUNCTION_44_23();
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_32_3();

      OUTLINED_FUNCTION_95_15();

      OUTLINED_FUNCTION_43_22();
      OUTLINED_FUNCTION_97_12();
    }

LABEL_36:
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_85_12();
  sub_2172945EC();
  while (1)
  {
    v93 = v112;
    v94 = v111;
    v92 = v113;
    v39 = OUTLINED_FUNCTION_65_22();
    if (v15)
    {
      sub_21725CF00(v39, 1);
      if (v7)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_21725CF00(v39, 0);
      if (v7)
      {
        goto LABEL_38;
      }
    }

    v118 = v8;
    v114[0] = v94;
    v114[1] = v93;
    v114[2] = v92;
    v115 = &qword_27CB27FD0;
    OUTLINED_FUNCTION_4_6();
    if (v40)
    {
      v8 = v119;
      v41 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v41);
    }

    if (v3)
    {
      v98 = &type metadata for RecordLabel;
      *&v99 = sub_21759D1EC();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_217283C68(v42, v43);
      v44 = OUTLINED_FUNCTION_160(&v95, v98);
      RecordLabel.debugDescription.getter(v44);
      OUTLINED_FUNCTION_32_3();
      __swift_destroy_boxed_opaque_existential_1(&v95);
    }

    else
    {
      v98 = &type metadata for RecordLabel;
      *&v99 = sub_21759D198();
      OUTLINED_FUNCTION_197();
      swift_allocObject();
      OUTLINED_FUNCTION_23_43();
      sub_217283C68(v45, v46);
      v47 = __swift_project_boxed_opaque_existential_1(&v95, v98);
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_217752AA8();

      v102 = 0xD000000000000011;
      OUTLINED_FUNCTION_100_14();
      OUTLINED_FUNCTION_53_22();
      if (qword_27CB23B30 != -1)
      {
        swift_once();
      }

      v49 = v47[5];
      v48 = v47[6];
      __swift_project_boxed_opaque_existential_1(v47 + 2, v49);
      OUTLINED_FUNCTION_72_15();
      v50(v49, v48);
      v51 = *(&v112 + 1);
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v52 = OUTLINED_FUNCTION_42_28();
      v53(v52, &type metadata for RecordLabel, MEMORY[0x277D837D0], v51);
      v54 = __swift_destroy_boxed_opaque_existential_1(&v111);
      v62 = OUTLINED_FUNCTION_87_17(v54, v55, v56, v57, v58, v59, v60, v61, v80, v81, v82, v83, v84, v85, v87, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v14, *(&v94 + 1), v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106, *(&v106 + 1), v107, v108, v109, v110);
      if (v6)
      {
        v64 = 0xE000000000000000;
      }

      else
      {
        v64 = v63;
      }

      v8 = &v102;
      MEMORY[0x21CEA23B0](v62, v64);

      OUTLINED_FUNCTION_99_15();
      v7 = v102;
      __swift_destroy_boxed_opaque_existential_1(&v95);
      v15 = HIDWORD(v90);
      v14 = v94;
    }

    OUTLINED_FUNCTION_49_26();

    OUTLINED_FUNCTION_98_16();

    sub_217283CC4(v114);
    ++v13;
    v14 += 64;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_108_12();
    if (v6)
    {
      goto LABEL_31;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= v16)
    {
      goto LABEL_40;
    }

    sub_2171F5110(v14, v114, &qword_27CB27FD0, &qword_217758C20);
    sub_2171F5110(v114, &v95, &qword_27CB27FD0, &qword_217758C20);
    if (v101)
    {
      v7 = v95;
      v17 = v95[2];
      v18 = v95[3];
      v19 = v95[4];
      v20 = OUTLINED_FUNCTION_84_11();
      sub_217283C5C(v20, v21);
      sub_217751DE8();
      v22 = v17;
      v8 = v19;
      sub_2172931EC(v22);

      sub_2171F0738(v114, &qword_27CB27FD0, &qword_217758C20);
    }

    else
    {
      sub_217751DE8();
      v31 = sub_2171F0738(v114, &qword_27CB27FD0, &qword_217758C20);
      OUTLINED_FUNCTION_40_26(v31, v32, v33, v34, v35, v36, v37, v38, v80, v81, v82, v83, v84, v85, v87, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, v96, v97, v98, v99);
    }

    OUTLINED_FUNCTION_39_21(v23, v24, v25, v26, v27, v28, v29, v30, v80, v81, v82, v83, v84, v85, v87, v89, v90, v91, v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95, v96, v97, v98, v99, *(&v99 + 1), v100, v101, v102, v103, v104, v105, v106);
    LOBYTE(v3) = v90;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_21759B624()
{
  strcpy(v7, "\n  id: ");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  MEMORY[0x21CEA23B0](*v0, *(v0 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v8 = v7[0];
  v9 = v7[1];
  strcpy(v7, ",\n  kind: ");
  HIDWORD(v7[1]) = -369098752;
  v1 = 0x706F54797469632ELL;
  v2 = 0xEF706F546C61626FLL;
  if (*(v0 + 16) == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*(v0 + 16))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x616C5074736F6D2ELL;
  }

  if (*(v0 + 16))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  strcpy(v7, ",\n  title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  sub_217599E54();
  sub_2171F5110(v0 + 56, v7, &qword_27CB24188, &dword_217758930);
  v5 = v7[3];
  sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
  if (v5)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v7[0] = 0xD000000000000018;
  v7[1] = 0x80000002177B1810;
  MEMORY[0x21CEA23B0](v8, v9);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v7[0];
}

uint64_t sub_21759B868()
{
  strcpy(v7, "\n  id: ");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  MEMORY[0x21CEA23B0](*v0, *(v0 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v8 = v7[0];
  v9 = v7[1];
  strcpy(v7, ",\n  kind: ");
  HIDWORD(v7[1]) = -369098752;
  v1 = 0x706F54797469632ELL;
  v2 = 0xEF706F546C61626FLL;
  if (*(v0 + 16) == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*(v0 + 16))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x616C5074736F6D2ELL;
  }

  if (*(v0 + 16))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  strcpy(v7, ",\n  title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  sub_217598C8C();
  sub_2171F5110(v0 + 56, v7, &qword_27CB24188, &dword_217758930);
  v5 = v7[3];
  sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
  if (v5)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v7[0] = 0xD00000000000001CLL;
  v7[1] = 0x80000002177B17F0;
  MEMORY[0x21CEA23B0](v8, v9);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v7[0];
}

uint64_t sub_21759BAAC()
{
  strcpy(v7, "\n  id: ");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  MEMORY[0x21CEA23B0](*v0, *(v0 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v8 = v7[0];
  v9 = v7[1];
  strcpy(v7, ",\n  kind: ");
  HIDWORD(v7[1]) = -369098752;
  v1 = 0x706F54797469632ELL;
  v2 = 0xEF706F546C61626FLL;
  if (*(v0 + 16) == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*(v0 + 16))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x616C5074736F6D2ELL;
  }

  if (*(v0 + 16))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  strcpy(v7, ",\n  title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  sub_217599B64();
  sub_2171F5110(v0 + 56, v7, &qword_27CB24188, &dword_217758930);
  v5 = v7[3];
  sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
  if (v5)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v7[0] = 0xD00000000000001ELL;
  v7[1] = 0x80000002177B17D0;
  MEMORY[0x21CEA23B0](v8, v9);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v7[0];
}

uint64_t sub_21759BCF0()
{
  strcpy(v7, "\n  id: ");
  BYTE1(v7[1]) = 0;
  WORD1(v7[1]) = 0;
  HIDWORD(v7[1]) = -402653184;
  MEMORY[0x21CEA23B0](*v0, *(v0 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v8 = v7[0];
  v9 = v7[1];
  strcpy(v7, ",\n  kind: ");
  HIDWORD(v7[1]) = -369098752;
  v1 = 0x706F54797469632ELL;
  v2 = 0xEF706F546C61626FLL;
  if (*(v0 + 16) == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*(v0 + 16))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x616C5074736F6D2ELL;
  }

  if (*(v0 + 16))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  strcpy(v7, ",\n  title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v7[0], v7[1]);

  sub_21759899C();
  sub_2171F5110(v0 + 56, v7, &qword_27CB24188, &dword_217758930);
  v5 = v7[3];
  sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
  if (v5)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v7[0] = 0xD000000000000019;
  v7[1] = 0x80000002177B17B0;
  MEMORY[0x21CEA23B0](v8, v9);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v7[0];
}

__n128 MusicItemTypeValueCollection.append(_:)(__n128 *a1)
{
  v4 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_217751DE8();
  sub_21770B7BC();
  v5 = *(*v1 + 16);
  sub_21770BAEC(v5);
  v6 = *v1;
  *(v6 + 16) = v5 + 1;
  v7 = (v6 + 32 * v5);
  result = *a1;
  v7[2] = *a1;
  v7[3].n128_u64[0] = v4;
  v7[3].n128_u64[1] = v3;
  *v1 = v6;
  return result;
}

uint64_t MusicItemTypeValueCollection.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x21CEA3550](v2);
  if (v2)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_217751DE8();
      sub_217751FF8();

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t MusicItemTypeValueCollection.hashValue.getter()
{
  v2 = *v0;
  sub_2177531E8();
  MusicItemTypeValueCollection.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21759C090()
{
  sub_2177531E8();
  MusicItemTypeValueCollection.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21759C0CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
}

uint64_t MusicItemTypeValueCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_21759C0CC(a2, a3);
  sub_2171FF30C(a1, v9);
  sub_21759C8F8();
  v7 = sub_217752458();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t MusicItemTypeValueCollection.encode(to:)()
{
  v1 = *v0;
  sub_21759C94C();
  return sub_217752428();
}

Swift::Int __swiftcall MusicItemTypeValueCollection.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall MusicItemTypeValueCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t MusicItemTypeValueCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 32 * result;
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    *a2 = *(v3 + 32);
    *(a2 + 16) = v5;
    *(a2 + 24) = v4;
    return sub_217751DE8();
  }

  __break(1u);
  return result;
}

Swift::Int sub_21759C2A4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemTypeValueCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21759C2D0(Swift::Int *a1)
{
  result = MusicItemTypeValueCollection.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21759C2FC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemTypeValueCollection.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_21759C324(void *a1, unint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_21759C3E0(v4, *a2);
  return sub_21759C398;
}

void sub_21759C398(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21759C434()
{
  swift_getWitnessTable();

  return sub_217752658();
}

Swift::Int sub_21759C4B4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemTypeValueCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21759C4E0(Swift::Int *a1)
{
  result = MusicItemTypeValueCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21759C518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21759C56C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

void MusicItemTypeValueCollection.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v3 = *(v2 + 16);
  for (i = (v2 + 56); ; i += 4)
  {
    if (v3 == v1)
    {
      MEMORY[0x21CEA23B0](v11, v12);

      MEMORY[0x21CEA23B0](93, 0xE100000000000000);
      return;
    }

    OUTLINED_FUNCTION_108_12();
    if (v5)
    {
      break;
    }

    v7 = *(i - 1);
    v6 = *i;
    OUTLINED_FUNCTION_107_10();
    sub_217751DE8();
    if (v0)
    {
      MEMORY[0x21CEA23B0](8236, 0xE200000000000000);
    }

    sub_217751DE8();
    sub_217285954(1);
    v8 = sub_217752918();
    v10 = v9;

    MEMORY[0x21CEA23B0](v8, v10);

    sub_217751DE8();
    sub_2172857F8(1uLL);
    sub_217285A70();
    sub_217752048();

    v0 = &v11;
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);

    ++v1;
  }

  __break(1u);
}

unint64_t MusicItemTypeValueCollection.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  sub_217752AA8();

  v9 = 0xD00000000000001DLL;
  v10 = 0x80000002177B1790;
  v4 = *(a1 + 16);
  v5 = sub_217753348();
  MEMORY[0x21CEA23B0](v5);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_217598628(0x756C615665707974, 0xEA00000000007365, 1, &v7, v3);
  MEMORY[0x21CEA23B0](v7, v8);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v9;
}

void static MusicItemTypeValueCollection.+ infix(_:_:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v6 = *a1;
  sub_217751DE8();
  v5 = sub_217751DE8();
  sub_217543D94(v5);
  *a3 = v6;
}

unint64_t sub_21759C8F8()
{
  result = qword_280BE7FD8;
  if (!qword_280BE7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7FD8);
  }

  return result;
}

unint64_t sub_21759C94C()
{
  result = qword_280BE7FE0;
  if (!qword_280BE7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7FE0);
  }

  return result;
}

unint64_t sub_21759CA0C()
{
  result = qword_27CB29F40;
  if (!qword_27CB29F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F40);
  }

  return result;
}

uint64_t sub_21759CBD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB2E3E0, &qword_2177A2FE0);
    sub_21759CA0C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21759CCAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_21759CD00()
{
  result = qword_27CB29F50;
  if (!qword_27CB29F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F50);
  }

  return result;
}

unint64_t sub_21759CD54()
{
  result = qword_27CB29F58;
  if (!qword_27CB29F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F58);
  }

  return result;
}

unint64_t sub_21759CDA8()
{
  result = qword_27CB29F68;
  if (!qword_27CB29F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F68);
  }

  return result;
}

unint64_t sub_21759CDFC()
{
  result = qword_27CB29F70;
  if (!qword_27CB29F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F70);
  }

  return result;
}

unint64_t sub_21759CE50()
{
  result = qword_27CB29F78;
  if (!qword_27CB29F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F78);
  }

  return result;
}

unint64_t sub_21759CEA4()
{
  result = qword_27CB29F80;
  if (!qword_27CB29F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F80);
  }

  return result;
}

unint64_t sub_21759CEF8()
{
  result = qword_27CB29F88;
  if (!qword_27CB29F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F88);
  }

  return result;
}

unint64_t sub_21759CF4C()
{
  result = qword_27CB29F90;
  if (!qword_27CB29F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F90);
  }

  return result;
}

unint64_t sub_21759CFA0()
{
  result = qword_27CB29F98;
  if (!qword_27CB29F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29F98);
  }

  return result;
}

unint64_t sub_21759CFF4()
{
  result = qword_27CB29FA0;
  if (!qword_27CB29FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FA0);
  }

  return result;
}

unint64_t sub_21759D048()
{
  result = qword_27CB29FA8;
  if (!qword_27CB29FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FA8);
  }

  return result;
}

unint64_t sub_21759D09C()
{
  result = qword_27CB29FB0;
  if (!qword_27CB29FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FB0);
  }

  return result;
}

unint64_t sub_21759D0F0()
{
  result = qword_27CB29FB8;
  if (!qword_27CB29FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FB8);
  }

  return result;
}

unint64_t sub_21759D144()
{
  result = qword_27CB29FC0;
  if (!qword_27CB29FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FC0);
  }

  return result;
}

unint64_t sub_21759D198()
{
  result = qword_27CB29FC8;
  if (!qword_27CB29FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FC8);
  }

  return result;
}

unint64_t sub_21759D1EC()
{
  result = qword_27CB29FD0;
  if (!qword_27CB29FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FD0);
  }

  return result;
}

unint64_t sub_21759D240()
{
  result = qword_27CB29FD8;
  if (!qword_27CB29FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FD8);
  }

  return result;
}

unint64_t sub_21759D294()
{
  result = qword_27CB29FE0;
  if (!qword_27CB29FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FE0);
  }

  return result;
}

unint64_t sub_21759D2E8()
{
  result = qword_27CB29FE8;
  if (!qword_27CB29FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FE8);
  }

  return result;
}

unint64_t sub_21759D33C()
{
  result = qword_27CB29FF0;
  if (!qword_27CB29FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29FF0);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_21725CF00(*(v0 + 56), *(v0 + 64));
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  v3 = *(v0 + 120);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  v7 = *(v0 + 168);

  OUTLINED_FUNCTION_67_16();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

unint64_t sub_21759D410()
{
  result = qword_27CB2A038;
  if (!qword_27CB2A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A038);
  }

  return result;
}

unint64_t sub_21759D464()
{
  result = qword_27CB2A040;
  if (!qword_27CB2A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A040);
  }

  return result;
}

unint64_t sub_21759D4B8()
{
  result = qword_27CB2A048;
  if (!qword_27CB2A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A048);
  }

  return result;
}

unint64_t sub_21759D50C()
{
  result = qword_27CB2A050;
  if (!qword_27CB2A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A050);
  }

  return result;
}

uint64_t sub_21759D560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPersonalRecommendation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21759D5C4(uint64_t a1)
{
  v2 = type metadata accessor for MusicPersonalRecommendation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21759D620(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicPersonalRecommendation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21759D664()
{
  result = qword_27CB2A070;
  if (!qword_27CB2A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A070);
  }

  return result;
}

unint64_t sub_21759D6B8()
{
  result = qword_27CB2A078;
  if (!qword_27CB2A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A078);
  }

  return result;
}

unint64_t sub_21759D70C()
{
  result = qword_27CB2A080;
  if (!qword_27CB2A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A080);
  }

  return result;
}

unint64_t sub_21759D760()
{
  result = qword_27CB2A088;
  if (!qword_27CB2A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A088);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v25 = a23[2];
  v24 = a23[3];
  v26 = a23[4];
  sub_217283C5C(v23, 0);

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_15_48()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_21_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_2171F5110(&a26, a1 + 16, v26, v27);
}

void OUTLINED_FUNCTION_43_22()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_45_29()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_49_26()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_51_20(uint64_t a1)
{

  return sub_2171F5110(a1, v3 - 240, v1, v2);
}

uint64_t OUTLINED_FUNCTION_52_23(uint64_t a1, uint64_t a2)
{

  return sub_2171F5110(v3, a2, v2, v4);
}

void OUTLINED_FUNCTION_53_22()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_58_19()
{
  v2 = *(v0 - 240);
  v3 = *(v0 - 232);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_59_18()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_60_24()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_62_19()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_63_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return sub_2171F5110(v26, &a26, v27, v28);
}

void OUTLINED_FUNCTION_76_14()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_78_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_2171F5110(v53, &a51, v51, v52);
}

uint64_t OUTLINED_FUNCTION_79_17(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

void OUTLINED_FUNCTION_82_11()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_83_16()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_87_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a42)
  {
    return a41;
  }

  else
  {
    return 0;
  }
}

void *OUTLINED_FUNCTION_92_14(void *a1)
{
  *(v8 - 144) = a1;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v3;
  a1[5] = v6;
  a1[6] = v1;
  a1[7] = v7;

  return __swift_project_boxed_opaque_existential_1((v8 - 144), v2);
}

double OUTLINED_FUNCTION_96_14@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_97_12()
{
  v2 = *(v0 - 240);
  v3 = *(v0 - 232);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_98_16()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_99_15()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_100_14()
{
  v2 = *v0;
  v3 = v0[1];

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_104_12()
{
  *(v0 - 136) = 0;
  v1 = *(v0 - 240);
  v2 = *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_109_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return sub_2171F5110(&a53, &a25, v53, v54);
}

uint64_t OUTLINED_FUNCTION_110_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{

  return sub_2171F5110(v53, &a53, v54, v55);
}

uint64_t _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()@<X0>(void *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (qword_280BE6270 != -1)
      {
        OUTLINED_FUNCTION_2_91();
      }

      v10 = &xmmword_280BE6278;
      goto LABEL_20;
    case 2:
    case 5:
    case 7:
    case 8:
    case 9:
      v14 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A098, &qword_21777D730);
      if (swift_dynamicCast())
      {
        sub_2171F3F0C(&v11, v15);
        v3 = v16;
        v4 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        (*(v4 + 16))(&v11, v3, v4);
        v6 = *(&v11 + 1);
        v5 = v11;
        v7 = *(&v12 + 1);
        v8 = v12;
        result = __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_21759E03C(&v11);
        v5 = 0;
        v6 = 0;
        v8 = 0;
        v7 = 0;
      }

      goto LABEL_21;
    case 3:
      if (qword_280BE6378 != -1)
      {
        OUTLINED_FUNCTION_15_0();
      }

      v10 = &xmmword_280BE6380;
      goto LABEL_20;
    case 4:
      if (qword_280BE6220 != -1)
      {
        OUTLINED_FUNCTION_473();
      }

      v10 = &xmmword_280BE6228;
      goto LABEL_20;
    case 6:
      if (qword_280BEB138 != -1)
      {
        OUTLINED_FUNCTION_14_1();
      }

      v10 = &xmmword_280BEB140;
      goto LABEL_20;
    default:
      if (qword_280BE62F0 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v10 = &xmmword_280BE62F8;
LABEL_20:
      v5 = *v10;
      v6 = *(v10 + 1);
      v8 = *(v10 + 2);
      v7 = *(v10 + 3);
      result = sub_217751DE8();
LABEL_21:
      *a1 = v5;
      a1[1] = v6;
      a1[2] = v8;
      a1[3] = v7;
      return result;
  }
}

uint64_t sub_21759E03C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A0A0, &qword_21777D738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _MusicLibraryMapping.ItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_21759E154()
{
  v2 = *v0;
  sub_2177531E8();
  _MusicLibraryMapping.ItemKind.hash(into:)();
  return sub_217753238();
}

uint64_t _MusicLibraryMapping.ItemKind.init(_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = sub_21759E240();
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_217632574();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:

    v11 = 10;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + v8);

LABEL_6:
  *a2 = v11;
  return result;
}

uint64_t sub_21759E240()
{
  if (qword_280BE71C0 != -1)
  {
    swift_once();
  }

  v0 = off_280BE71C8;
  v1 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v2 + 8);
    sub_217751DE8();
    v6 = v5(v3, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0;
    sub_21755F7E4(v6, sub_21755FAA0, 0, isUniquelyReferenced_nonNull_native, &v9);
    return v9;
  }

  else
  {
    sub_217751DE8();
  }

  return v0;
}

void *sub_21759E344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A0C0, &qword_21777D850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21777D720;
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  *(inited + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 64) = 0;
  v3 = qword_280BE6270;
  sub_217751DE8();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_2_91();
  }

  *(inited + 72) = OUTLINED_FUNCTION_1449(&xmmword_280BE6278);
  *(inited + 88) = v5;
  *(inited + 96) = v4;
  *(inited + 104) = 1;
  v6 = qword_280BE6378;
  sub_217751DE8();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_15_0();
  }

  *(inited + 112) = OUTLINED_FUNCTION_1449(&xmmword_280BE6380);
  *(inited + 128) = v8;
  *(inited + 136) = v7;
  *(inited + 144) = 3;
  v9 = qword_280BE6220;
  sub_217751DE8();
  if (v9 != -1)
  {
    OUTLINED_FUNCTION_473();
  }

  *(inited + 152) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(inited + 168) = v11;
  *(inited + 176) = v10;
  *(inited + 184) = 4;
  v12 = qword_280BE90D0;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  *(inited + 192) = OUTLINED_FUNCTION_1449(&xmmword_280BE90D8);
  *(inited + 208) = v14;
  *(inited + 216) = v13;
  *(inited + 224) = 7;
  v15 = qword_280BEB138;
  sub_217751DE8();
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_14_1();
  }

  *(inited + 232) = OUTLINED_FUNCTION_1449(&xmmword_280BEB140);
  *(inited + 248) = v17;
  *(inited + 256) = v16;
  *(inited + 264) = 6;
  v18 = qword_280BE62A0;
  sub_217751DE8();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280BE62B8;
  v20 = unk_280BE62C0;
  *(inited + 272) = xmmword_280BE62A8;
  *(inited + 288) = v19;
  *(inited + 296) = v20;
  *(inited + 304) = 7;
  sub_21759E770();
  sub_217751DE8();
  result = sub_217751DC8();
  off_280BE71C8 = result;
  return result;
}

unint64_t sub_21759E5B0()
{
  result = qword_27CB2A0A8;
  if (!qword_27CB2A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A0B0, &qword_21777D740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0A8);
  }

  return result;
}

unint64_t sub_21759E618()
{
  result = qword_27CB2A0B8;
  if (!qword_27CB2A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0B8);
  }

  return result;
}

_BYTE *_s8ItemKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21759E770()
{
  result = qword_280BE61F0;
  if (!qword_280BE61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE61F0);
  }

  return result;
}

MusicKit::MusicCatalogID __swiftcall MusicCatalogID.init(value:type:)(MusicKit::MusicItemID value, MusicKit::ResourceType_optional type)
{
  object = value.rawValue._object;
  countAndFlagsBits = value.rawValue._countAndFlagsBits;
  v5 = v2;
  v6 = *(type.value.rawValue._countAndFlagsBits + 8);
  if (v6)
  {
    v7 = *type.value.rawValue._countAndFlagsBits;
    if (qword_280BE4BD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE4BD8);
    v9 = v9 && v6 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
    {
      goto LABEL_9;
    }

    if (qword_280BE4AB0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE4AB8);
    v15 = v9 && v6 == v14;
    if (v15 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
    {

      v13 = 4;
      goto LABEL_53;
    }

    if (qword_280BE8A38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE8A40);
    v18 = v9 && v6 == v17;
    if (v18 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
    {
      goto LABEL_11;
    }

    if (qword_280BE4AD0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE4AD8);
    v20 = v9 && v6 == v19;
    if (v20 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
    {
LABEL_11:

      v13 = 2;
      goto LABEL_53;
    }

    if (qword_280BE8A60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE8A68);
    v32 = v9 && v6 == v31;
    if (v32 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
    {
LABEL_13:

      v13 = 3;
      goto LABEL_53;
    }

    if (qword_280BE4B60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_3_84(&qword_280BE4B68);
    v34 = v9 && v6 == v33;
    if (!v34 && (OUTLINED_FUNCTION_0_104() & 1) == 0)
    {
      if (qword_280BE4C10 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_3_84(&qword_280BE4C18);
      v36 = v9 && v6 == v35;
      if (v36 || (OUTLINED_FUNCTION_0_104() & 1) != 0)
      {
        goto LABEL_28;
      }

      if (qword_280BE5918 != -1)
      {
        OUTLINED_FUNCTION_2_92();
      }

      v37 = qword_280BE5920;
      sub_217751DE8();
      OUTLINED_FUNCTION_212_0();
      v38 = sub_217751F18();

      v23 = [v37 numberFromString_];

      if (!v23)
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v39 = sub_217751AF8();
        __swift_project_value_buffer(v39, qword_280C02570);
        OUTLINED_FUNCTION_44_1();
        sub_217751DE8();
        sub_217751DE8();
        v40 = sub_217751AD8();
        v41 = sub_217752808();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v42 = 136446466;
          sub_217751DE8();
          v43 = OUTLINED_FUNCTION_212_0();
          sub_21729C0E8(v43, v44, v45);
          OUTLINED_FUNCTION_44_1();

          *(v42 + 4) = 0;
          *(v42 + 12) = 2082;
          MEMORY[0x21CEA23B0](v7, v6);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          v46 = sub_21729C0E8(34, 0xE100000000000000, &v48);

          *(v42 + 14) = v46;
          _os_log_impl(&dword_2171EE000, v40, v41, "Initialized a MusicCatalogID with a value of %{public}s of type %{public}s, without clear prefix or pattern. Assuming this is an adam ID. This may produce unexpected results. Please file a radar.", v42, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_28_4();
        }

        else
        {
        }

        goto LABEL_52;
      }

LABEL_51:

LABEL_52:
      v13 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    sub_217751DE8();
    if (OUTLINED_FUNCTION_5_68())
    {
      goto LABEL_11;
    }

    if (OUTLINED_FUNCTION_5_68())
    {
      goto LABEL_13;
    }

    if ((OUTLINED_FUNCTION_5_68() & 1) == 0)
    {
      v16 = countAndFlagsBits == 25965 && object == 0xE200000000000000;
      if (v16 || (OUTLINED_FUNCTION_212_0(), (sub_217753058() & 1) != 0))
      {
LABEL_28:

        v13 = 7;
        goto LABEL_53;
      }

      if (qword_280BE5918 != -1)
      {
        OUTLINED_FUNCTION_2_92();
      }

      v21 = qword_280BE5920;
      OUTLINED_FUNCTION_212_0();
      v22 = sub_217751F18();

      v23 = [v21 numberFromString_];

      if (!v23)
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v24 = sub_217751AF8();
        __swift_project_value_buffer(v24, qword_280C02570);
        OUTLINED_FUNCTION_44_1();
        sub_217751DE8();
        v23 = sub_217751AD8();
        v25 = sub_217752808();

        if (os_log_type_enabled(v23, v25))
        {
          v26 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v26 = 136315138;
          sub_217751DE8();
          v27 = OUTLINED_FUNCTION_212_0();
          v30 = sub_21729C0E8(v27, v28, v29);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_2171EE000, v23, v25, "Initialized a MusicCatalogID with a value of %s and no type information, without clear prefix or pattern. Assuming this is an adam ID. This may produce unexpected results. Please file a radar.", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_28_4();
        }
      }

      goto LABEL_51;
    }
  }

LABEL_9:

  v13 = 5;
LABEL_53:
  *v5 = countAndFlagsBits;
  *(v5 + 8) = object;
  *(v5 + 16) = v13;
  result.value.rawValue._object = v11;
  result.value.rawValue._countAndFlagsBits = v10;
  result.kind = v12;
  return result;
}

uint64_t MusicCatalogID.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t MusicCatalogID.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_21759EF48()
{
  v2 = *v0;
  sub_2177531E8();
  MusicCatalogID.Kind.hash(into:)();
  return sub_217753238();
}

BOOL static MusicCatalogID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_217753058();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t MusicCatalogID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_217751FF8();
  return MEMORY[0x21CEA3550](v3);
}

uint64_t MusicCatalogID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2177531E8();
  sub_217751FF8();
  MEMORY[0x21CEA3550](v3);
  return sub_217753238();
}

uint64_t sub_21759F08C()
{
  sub_217752DC8();
  OUTLINED_FUNCTION_44_1();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21759F0F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_2177531E8();
  MusicCatalogID.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21759F168@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21759F08C();
  *a2 = result;
  return result;
}

uint64_t sub_21759F198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2171FEFF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21759F1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21759F08C();
  *a1 = result;
  return result;
}

void *sub_21759F1F4@<X0>(void *a1@<X8>)
{
  result = sub_21759F0DC();
  *a1 = result;
  return result;
}

uint64_t sub_21759F21C(uint64_t a1)
{
  v2 = sub_21759F710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21759F258(uint64_t a1)
{
  v2 = sub_21759F710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCatalogID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A0C8, &qword_21777D870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v20 - v9;
  sub_2171FF30C(a1, &v22);
  v11 = sub_2177139B4(&v22.rawValue._countAndFlagsBits);
  if (v2)
  {
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21759F710();
    sub_2177532C8();
    LOBYTE(v20[0]) = 0;
    sub_2172E1C68();
    sub_217752EA8();
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    v24.value.rawValue._countAndFlagsBits = v20;
    MusicCatalogID.init(value:type:)(v22, v24);

    (*(v6 + 8))(v10, v5);
    countAndFlagsBits = v22.rawValue._countAndFlagsBits;
    object = v22.rawValue._object;
    v19 = v23;
  }

  else
  {
    countAndFlagsBits = v11;
    object = v12;
    sub_217713E24(v13, v14, &v22);
    v19 = v22.rawValue._countAndFlagsBits;
  }

  *a2 = countAndFlagsBits;
  *(a2 + 8) = object;
  *(a2 + 16) = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogID.encode(to:)(void *a1)
{
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v3 = sub_217713B68();
  sub_217713CB8(a1, v3, v4, v5, v6);
}

uint64_t MusicCatalogID.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2171FF30C(a1, v6);
  sub_21759F764();
  sub_21759F7B8();
  sub_217752258();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217713E24(v7, v8, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6[0];
  return result;
}

uint64_t MusicCatalogID.Kind.encode(to:)()
{
  v2 = *v0;
  sub_21771402C();
  sub_21759F80C();
  sub_21759F7B8();
  sub_217752208();
}

id sub_21759F6DC()
{
  result = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  qword_280BE5920 = result;
  return result;
}

unint64_t sub_21759F710()
{
  result = qword_27CB2A0D0;
  if (!qword_27CB2A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0D0);
  }

  return result;
}

unint64_t sub_21759F764()
{
  result = qword_27CB2A0D8;
  if (!qword_27CB2A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0D8);
  }

  return result;
}

unint64_t sub_21759F7B8()
{
  result = qword_27CB2A0E0;
  if (!qword_27CB2A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0E0);
  }

  return result;
}

unint64_t sub_21759F80C()
{
  result = qword_27CB2A0E8;
  if (!qword_27CB2A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0E8);
  }

  return result;
}

unint64_t sub_21759F864()
{
  result = qword_27CB2A0F0;
  if (!qword_27CB2A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0F0);
  }

  return result;
}

unint64_t sub_21759F8BC()
{
  result = qword_27CB2A0F8;
  if (!qword_27CB2A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A0F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogID.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21759FADC()
{
  result = qword_27CB2A100;
  if (!qword_27CB2A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A108, qword_21777DAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A100);
  }

  return result;
}

unint64_t sub_21759FB44()
{
  result = qword_27CB2A110;
  if (!qword_27CB2A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A110);
  }

  return result;
}

unint64_t sub_21759FB9C()
{
  result = qword_27CB2A118;
  if (!qword_27CB2A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A118);
  }

  return result;
}

unint64_t sub_21759FBF4()
{
  result = qword_27CB2A120;
  if (!qword_27CB2A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A120);
  }

  return result;
}

uint64_t sub_21759FC48()
{
  v0 = sub_217752DC8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21759FC9C(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x75632D656C707061;
      break;
    case 3:
      result = 0x73726F7461727563;
      break;
    case 4:
      result = 0x69762D636973756DLL;
      break;
    case 5:
      result = 0x7473696C79616C70;
      break;
    case 6:
      result = 0x6C2D64726F636572;
      break;
    case 7:
      result = 0x73676E6F73;
      break;
    case 8:
      result = 0x736E6F6974617473;
      break;
    case 9:
      result = 0x6C75736552706F74;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_21759FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_67(a1, a2, a3, a4, a5, a6, a7, a8, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v10 = sub_217202078(a2, &v504, &qword_27CB24270, &unk_21775D640);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v106 = &qword_27CB25070;
    v107 = &unk_21777EF10;
    goto LABEL_82;
  }

  v16 = OUTLINED_FUNCTION_20_36(v10, v11, &qword_27CB24270, &unk_21775D640, v12, v13, v14, v15, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v24 = OUTLINED_FUNCTION_75(v16, v17, v18, v19, v20, v21, v22, v23, v470);
  v32 = OUTLINED_FUNCTION_87_1(v24, v25, v26, v27, v28, v29, v30, v31, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v34 = sub_2172DDD44(v32, v33);
  v35 = v34;
  v43 = OUTLINED_FUNCTION_9_52(v34, v36, v37, v38, v39, v40, v41, v42, v470);
  OUTLINED_FUNCTION_8_58(v43, v44, v45, v46, v47, v48, v49, v50, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB24270, &unk_21775D640);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_6_67(a1 + 128, v51, v52, v53, v54, v55, v56, v57, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v58 = OUTLINED_FUNCTION_10_48(a2 + 128);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB24280, &unk_21775D680);
      goto LABEL_15;
    }

LABEL_20:
    v106 = &qword_27CB25068;
    v107 = &qword_21775B528;
    goto LABEL_82;
  }

  v64 = OUTLINED_FUNCTION_20_36(v58, v59, &qword_27CB24280, &unk_21775D680, v60, v61, v62, v63, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB24288, &qword_217758F80);
    goto LABEL_20;
  }

  v72 = OUTLINED_FUNCTION_75(v64, v65, v66, v67, v68, v69, v70, v71, v470);
  v80 = OUTLINED_FUNCTION_87_1(v72, v73, v74, v75, v76, v77, v78, v79, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v82 = sub_2172DE010(v80, v81);
  v83 = v82;
  v91 = OUTLINED_FUNCTION_9_52(v82, v84, v85, v86, v87, v88, v89, v90, v470);
  OUTLINED_FUNCTION_8_58(v91, v92, v93, v94, v95, v96, v97, v98, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB24280, &unk_21775D680);
  if ((v83 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_6_67(a1 + 256, v99, v100, v101, v102, v103, v104, v105, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v108 = OUTLINED_FUNCTION_10_48(a2 + 256);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB24290, &unk_21775D550);
      goto LABEL_23;
    }

LABEL_28:
    v106 = &qword_27CB26208;
    v107 = &qword_21777EF20;
    goto LABEL_82;
  }

  v114 = OUTLINED_FUNCTION_20_36(v108, v109, &qword_27CB24290, &unk_21775D550, v110, v111, v112, v113, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB24298, &qword_21777CD60);
    goto LABEL_28;
  }

  v122 = OUTLINED_FUNCTION_75(v114, v115, v116, v117, v118, v119, v120, v121, v470);
  v130 = OUTLINED_FUNCTION_87_1(v122, v123, v124, v125, v126, v127, v128, v129, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v132 = sub_2172DE0E8(v130, v131);
  v133 = v132;
  v141 = OUTLINED_FUNCTION_9_52(v132, v134, v135, v136, v137, v138, v139, v140, v470);
  OUTLINED_FUNCTION_8_58(v141, v142, v143, v144, v145, v146, v147, v148, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB24290, &unk_21775D550);
  if ((v133 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_6_67(a1 + 384, v149, v150, v151, v152, v153, v154, v155, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v156 = OUTLINED_FUNCTION_10_48(a2 + 384);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB242A0, &unk_21777EEF0);
      goto LABEL_31;
    }

LABEL_36:
    v106 = &unk_27CB2A288;
    v107 = &unk_21777EF28;
    goto LABEL_82;
  }

  v162 = OUTLINED_FUNCTION_20_36(v156, v157, &qword_27CB242A0, &unk_21777EEF0, v158, v159, v160, v161, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB242A8, &unk_21775D570);
    goto LABEL_36;
  }

  v170 = OUTLINED_FUNCTION_75(v162, v163, v164, v165, v166, v167, v168, v169, v470);
  v178 = OUTLINED_FUNCTION_87_1(v170, v171, v172, v173, v174, v175, v176, v177, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v180 = sub_2172DE100(v178, v179);
  v181 = v180;
  v189 = OUTLINED_FUNCTION_9_52(v180, v182, v183, v184, v185, v186, v187, v188, v470);
  OUTLINED_FUNCTION_8_58(v189, v190, v191, v192, v193, v194, v195, v196, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB242A0, &unk_21777EEF0);
  if ((v181 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_6_67(a1 + 512, v197, v198, v199, v200, v201, v202, v203, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v204 = OUTLINED_FUNCTION_10_48(a2 + 512);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_39;
    }

LABEL_44:
    v106 = &qword_27CB251A0;
    v107 = &unk_21777EF30;
    goto LABEL_82;
  }

  v210 = OUTLINED_FUNCTION_20_36(v204, v205, &qword_27CB242B0, &unk_21775D630, v206, v207, v208, v209, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB242B8, &unk_21777EEA0);
    goto LABEL_44;
  }

  v218 = OUTLINED_FUNCTION_75(v210, v211, v212, v213, v214, v215, v216, v217, v470);
  v226 = OUTLINED_FUNCTION_87_1(v218, v219, v220, v221, v222, v223, v224, v225, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v228 = sub_2172DE088(v226, v227);
  v229 = v228;
  v237 = OUTLINED_FUNCTION_9_52(v228, v230, v231, v232, v233, v234, v235, v236, v470);
  OUTLINED_FUNCTION_8_58(v237, v238, v239, v240, v241, v242, v243, v244, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB242B0, &unk_21775D630);
  if ((v229 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  OUTLINED_FUNCTION_6_67(a1 + 640, v245, v246, v247, v248, v249, v250, v251, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v252 = OUTLINED_FUNCTION_10_48(a2 + 640);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB242C0, &unk_21775D650);
      goto LABEL_47;
    }

LABEL_52:
    v106 = &qword_27CB25198;
    v107 = &qword_21775B550;
    goto LABEL_82;
  }

  v258 = OUTLINED_FUNCTION_20_36(v252, v253, &qword_27CB242C0, &unk_21775D650, v254, v255, v256, v257, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB242C8, &unk_217758970);
    goto LABEL_52;
  }

  v266 = OUTLINED_FUNCTION_75(v258, v259, v260, v261, v262, v263, v264, v265, v470);
  v274 = OUTLINED_FUNCTION_87_1(v266, v267, v268, v269, v270, v271, v272, v273, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v276 = sub_2172DE118(v274, v275);
  v277 = v276;
  v285 = OUTLINED_FUNCTION_9_52(v276, v278, v279, v280, v281, v282, v283, v284, v470);
  OUTLINED_FUNCTION_8_58(v285, v286, v287, v288, v289, v290, v291, v292, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB242C0, &unk_21775D650);
  if ((v277 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  OUTLINED_FUNCTION_6_67(a1 + 768, v293, v294, v295, v296, v297, v298, v299, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v300 = OUTLINED_FUNCTION_10_48(a2 + 768);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB242D0, &unk_21775D660);
      goto LABEL_55;
    }

LABEL_60:
    v106 = &unk_27CB25088;
    v107 = &unk_21777EF40;
    goto LABEL_82;
  }

  v306 = OUTLINED_FUNCTION_20_36(v300, v301, &qword_27CB242D0, &unk_21775D660, v302, v303, v304, v305, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB242D8, &unk_21777EEB0);
    goto LABEL_60;
  }

  v314 = OUTLINED_FUNCTION_75(v306, v307, v308, v309, v310, v311, v312, v313, v470);
  v322 = OUTLINED_FUNCTION_87_1(v314, v315, v316, v317, v318, v319, v320, v321, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v324 = sub_2172DE130(v322, v323);
  v325 = v324;
  v333 = OUTLINED_FUNCTION_9_52(v324, v326, v327, v328, v329, v330, v331, v332, v470);
  OUTLINED_FUNCTION_8_58(v333, v334, v335, v336, v337, v338, v339, v340, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB242D0, &unk_21775D660);
  if ((v325 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  OUTLINED_FUNCTION_6_67(a1 + 896, v341, v342, v343, v344, v345, v346, v347, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v348 = OUTLINED_FUNCTION_10_48(a2 + 896);
  if (!v503)
  {
    if (!v505)
    {
      sub_2171F06D8(v502, &qword_27CB242E0, &unk_21777EEE0);
      goto LABEL_63;
    }

LABEL_68:
    v106 = &unk_27CB25D00;
    v107 = &unk_21775F668;
    goto LABEL_82;
  }

  v354 = OUTLINED_FUNCTION_20_36(v348, v349, &qword_27CB242E0, &unk_21777EEE0, v350, v351, v352, v353, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  if (!v505)
  {
    sub_2171F06D8(&v486, &qword_27CB242E8, &unk_21775D6B0);
    goto LABEL_68;
  }

  v362 = OUTLINED_FUNCTION_75(v354, v355, v356, v357, v358, v359, v360, v361, v470);
  v370 = OUTLINED_FUNCTION_87_1(v362, v363, v364, v365, v366, v367, v368, v369, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
  v372 = sub_2172DE040(v370, v371);
  v373 = v372;
  v381 = OUTLINED_FUNCTION_9_52(v372, v374, v375, v376, v377, v378, v379, v380, v470);
  OUTLINED_FUNCTION_8_58(v381, v382, v383, v384, v385, v386, v387, v388, v470, v471, v472, v473, v474, v475, v476, v477);
  sub_2171F06D8(v502, &qword_27CB242E0, &unk_21777EEE0);
  if ((v373 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  OUTLINED_FUNCTION_6_67(a1 + 1024, v389, v390, v391, v392, v393, v394, v395, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v396 = OUTLINED_FUNCTION_10_48(a2 + 1024);
  if (v503)
  {
    v402 = OUTLINED_FUNCTION_20_36(v396, v397, &qword_27CB242F0, &unk_217797B80, v398, v399, v400, v401, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
    if (v505)
    {
      v410 = OUTLINED_FUNCTION_75(v402, v403, v404, v405, v406, v407, v408, v409, v470);
      v418 = OUTLINED_FUNCTION_87_1(v410, v411, v412, v413, v414, v415, v416, v417, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
      v420 = sub_2172DE0A0(v418, v419);
      v421 = v420;
      v429 = OUTLINED_FUNCTION_9_52(v420, v422, v423, v424, v425, v426, v427, v428, v470);
      OUTLINED_FUNCTION_8_58(v429, v430, v431, v432, v433, v434, v435, v436, v470, v471, v472, v473, v474, v475, v476, v477);
      sub_2171F06D8(v502, &qword_27CB242F0, &unk_217797B80);
      if ((v421 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_71;
    }

    sub_2171F06D8(&v486, &qword_27CB242F8, &qword_21775D6C0);
LABEL_76:
    v106 = &unk_27CB29080;
    v107 = &unk_21777EF50;
    goto LABEL_82;
  }

  if (v505)
  {
    goto LABEL_76;
  }

  sub_2171F06D8(v502, &qword_27CB242F0, &unk_217797B80);
LABEL_71:
  OUTLINED_FUNCTION_6_67(a1 + 1152, v437, v438, v439, v440, v441, v442, v443, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
  v444 = OUTLINED_FUNCTION_10_48(a2 + 1152);
  if (v503)
  {
    v450 = OUTLINED_FUNCTION_20_36(v444, v445, &qword_27CB24300, &qword_217771D70, v446, v447, v448, v449, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492, v493, v494, v495, v496, v497, v498, v499, v500, v501, v502[0]);
    if (v505)
    {
      v458 = OUTLINED_FUNCTION_75(v450, v451, v452, v453, v454, v455, v456, v457, v470);
      v466 = OUTLINED_FUNCTION_87_1(v458, v459, v460, v461, v462, v463, v464, v465, v470, v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482, v483, v484, v485, v486);
      v468 = sub_2172DE148(v466, v467);
      sub_2171F06D8(&v470, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(&v486, &qword_27CB24308, &unk_217767A90);
      sub_2171F06D8(v502, &qword_27CB24300, &qword_217771D70);
      return (v468 & 1) != 0;
    }

    sub_2171F06D8(&v486, &qword_27CB24308, &unk_217767A90);
  }

  else if (!v505)
  {
    sub_2171F06D8(v502, &qword_27CB24300, &qword_217771D70);
    return 1;
  }

  v106 = &unk_27CB2A290;
  v107 = &unk_21777EF58;
LABEL_82:
  sub_2171F06D8(v502, v106, v107);
  return 0;
}

uint64_t sub_2175A06D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A1E8, &qword_21777EE98);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175A339C();
  OUTLINED_FUNCTION_105();
  v14[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_2_93();
  if (!v1)
  {
    v14[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_2_93();
    v14[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24298, &qword_21777CD60);
    sub_21737B2F0();
    OUTLINED_FUNCTION_2_93();
    v14[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242A8, &unk_21775D570);
    sub_2175A3DB4();
    OUTLINED_FUNCTION_2_93();
    v14[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_2_93();
    v14[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0A8C();
    OUTLINED_FUNCTION_2_93();
    v14[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E0178();
    OUTLINED_FUNCTION_2_93();
    v14[8] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217361F8C();
    OUTLINED_FUNCTION_2_93();
    v14[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    sub_21752BDEC();
    OUTLINED_FUNCTION_2_93();
    v14[6] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24308, &unk_217767A90);
    sub_2175A3F20();
    OUTLINED_FUNCTION_2_93();
  }

  return (*(v5 + 8))(v11, v3);
}

uint64_t sub_2175A0A20()
{
  v1 = sub_217202078(v0, v108, &qword_27CB24270, &unk_21775D640);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v9 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v9);
    sub_2171F06D8(&v92, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v10 = sub_217202078(v0 + 128, v108, &qword_27CB24280, &unk_21775D680);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v18);
    sub_2171F06D8(&v92, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v19 = sub_217202078(v0 + 256, v108, &qword_27CB24290, &unk_21775D550);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v19, v20, v21, v22, v23, v24, v25, v26, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v27 = OUTLINED_FUNCTION_11_7();
    sub_2172DE7FC(v27);
    sub_2171F06D8(&v92, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v28 = sub_217202078(v0 + 384, v108, &qword_27CB242A0, &unk_21777EEF0);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v28, v29, v30, v31, v32, v33, v34, v35, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v36 = OUTLINED_FUNCTION_11_7();
    sub_2172DE814(v36);
    sub_2171F06D8(&v92, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v37 = sub_217202078(v0 + 512, v108, &qword_27CB242B0, &unk_21775D630);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v37, v38, v39, v40, v41, v42, v43, v44, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v45 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v45);
    sub_2171F06D8(&v92, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v46 = sub_217202078(v0 + 640, v108, &qword_27CB242C0, &unk_21775D650);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v46, v47, v48, v49, v50, v51, v52, v53, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v54 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v54);
    sub_2171F06D8(&v92, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v55 = sub_217202078(v0 + 768, v108, &qword_27CB242D0, &unk_21775D660);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v55, v56, v57, v58, v59, v60, v61, v62, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v63 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6C4(v63);
    sub_2171F06D8(&v92, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v64 = sub_217202078(v0 + 896, v108, &qword_27CB242E0, &unk_21777EEE0);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v64, v65, v66, v67, v68, v69, v70, v71, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v72 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6AC(v72);
    sub_2171F06D8(&v92, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v73 = sub_217202078(v0 + 1024, v108, &qword_27CB242F0, &unk_217797B80);
  if (v109)
  {
    OUTLINED_FUNCTION_10_1(v73, v74, v75, v76, v77, v78, v79, v80, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
    OUTLINED_FUNCTION_24();
    v81 = OUTLINED_FUNCTION_11_7();
    sub_2172DE664(v81);
    sub_2171F06D8(&v92, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v82 = sub_217202078(v0 + 1152, v108, &qword_27CB24300, &qword_217771D70);
  if (!v109)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v82, v83, v84, v85, v86, v87, v88, v89, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108[0]);
  OUTLINED_FUNCTION_24();
  v90 = OUTLINED_FUNCTION_11_7();
  sub_2172DE4CC(v90);
  return sub_2171F06D8(&v92, &qword_27CB24308, &unk_217767A90);
}

uint64_t sub_2175A0D9C()
{
  sub_2177531E8();
  v1 = sub_217202078(v0, v109, &qword_27CB24270, &unk_21775D640);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v1, v2, v3, v4, v5, v6, v7, v8, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v9 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6DC(v9);
    sub_2171F06D8(v93, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v10 = sub_217202078(v0 + 128, v109, &qword_27CB24280, &unk_21775D680);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v10, v11, v12, v13, v14, v15, v16, v17, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v18 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v18);
    sub_2171F06D8(v93, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v19 = sub_217202078(v0 + 256, v109, &qword_27CB24290, &unk_21775D550);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v19, v20, v21, v22, v23, v24, v25, v26, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v27 = OUTLINED_FUNCTION_89_0();
    sub_2172DE7FC(v27);
    sub_2171F06D8(v93, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v28 = sub_217202078(v0 + 384, v109, &qword_27CB242A0, &unk_21777EEF0);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v28, v29, v30, v31, v32, v33, v34, v35, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v36 = OUTLINED_FUNCTION_89_0();
    sub_2172DE814(v36);
    sub_2171F06D8(v93, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v37 = sub_217202078(v0 + 512, v109, &qword_27CB242B0, &unk_21775D630);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v37, v38, v39, v40, v41, v42, v43, v44, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v45 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v45);
    sub_2171F06D8(v93, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v46 = sub_217202078(v0 + 640, v109, &qword_27CB242C0, &unk_21775D650);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v46, v47, v48, v49, v50, v51, v52, v53, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v54 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v54);
    sub_2171F06D8(v93, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v55 = sub_217202078(v0 + 768, v109, &qword_27CB242D0, &unk_21775D660);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v55, v56, v57, v58, v59, v60, v61, v62, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v63 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6C4(v63);
    sub_2171F06D8(v93, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v64 = sub_217202078(v0 + 896, v109, &qword_27CB242E0, &unk_21777EEE0);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v64, v65, v66, v67, v68, v69, v70, v71, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v72 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6AC(v72);
    sub_2171F06D8(v93, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v73 = sub_217202078(v0 + 1024, v109, &qword_27CB242F0, &unk_217797B80);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v73, v74, v75, v76, v77, v78, v79, v80, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v81 = OUTLINED_FUNCTION_89_0();
    sub_2172DE664(v81);
    sub_2171F06D8(v93, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v82 = sub_217202078(v0 + 1152, v109, &qword_27CB24300, &qword_217771D70);
  if (v110)
  {
    OUTLINED_FUNCTION_180(v82, v83, v84, v85, v86, v87, v88, v89, v92, v93[0], v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109[0]);
    OUTLINED_FUNCTION_157_0();
    v90 = OUTLINED_FUNCTION_89_0();
    sub_2172DE4CC(v90);
    sub_2171F06D8(v93, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void sub_2175A1128()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A250, &unk_21777EED0);
  OUTLINED_FUNCTION_0_0(v17);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  sub_2175A339C();
  sub_2177532C8();
  if (v0)
  {
    OUTLINED_FUNCTION_27_39();
    __swift_destroy_boxed_opaque_existential_1(v2);
    if (v13)
    {
      sub_2171F06D8(v19, &qword_27CB24280, &unk_21775D680);
      if (v14)
      {
        goto LABEL_10;
      }
    }

    else if (v14)
    {
LABEL_10:
      sub_2171F06D8(v20, &qword_27CB24290, &unk_21775D550);
      if ((v4 & 1) == 0)
      {
LABEL_11:
        if (!v12)
        {
          goto LABEL_13;
        }

LABEL_12:
        sub_2171F06D8(v22, &qword_27CB242B0, &unk_21775D630);
        goto LABEL_13;
      }

LABEL_6:
      sub_2171F06D8(v21, &qword_27CB242A0, &unk_21777EEF0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172E0450();
  sub_217752E58();
  OUTLINED_FUNCTION_168_2(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
  sub_2172E02E4();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24298, &qword_21777CD60);
  sub_21737BA58();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242A8, &unk_21775D570);
  sub_2175A4128();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
  sub_2172E0ED0();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2172E0D64();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(&v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242D8, &unk_21777EEB0);
  sub_2172E0894();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(&v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
  sub_2173620F8();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(&v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
  sub_21752C0C4();
  OUTLINED_FUNCTION_0_105();
  OUTLINED_FUNCTION_168_2(&v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24308, &unk_217767A90);
  sub_2175A4294();
  OUTLINED_FUNCTION_0_105();
  (*(v6 + 8))(v12, v17);
  OUTLINED_FUNCTION_168_2(&v27);
  sub_2175A4400(v18, v16);
  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_217269E58(v18);
LABEL_13:
  OUTLINED_FUNCTION_170();
}

BOOL sub_2175A176C()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

BOOL sub_2175A17B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    return v3 && (sub_217270BE0(v2, v3) & 1) != 0;
  }

  if (v3)
  {
    return 0;
  }

  return 1;
}

void sub_2175A17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A230, &qword_21777EEC0);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &a9 - v32;
  v34 = *v20;
  v35 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2175A40D4();
  sub_217751DE8();
  sub_2177532F8();
  a10 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A240, &qword_21777EEC8);
  sub_217283840(&qword_27CB2A248, &qword_27CB2A240, &qword_21777EEC8);
  sub_217752F38();

  (*(v27 + 8))(v33, v25);
  OUTLINED_FUNCTION_170();
}

void sub_2175A197C(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    sub_217753208();

    sub_21727D7C8(a1, v3);
  }

  else
  {
    sub_217753208();
  }
}

uint64_t sub_2175A19EC()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_21727D7C8(v3, v1);
  }

  return sub_217753238();
}

void sub_2175A1A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A278, &unk_21777EF00);
  OUTLINED_FUNCTION_0_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &a9 - v34;
  v36 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_2175A40D4();
  sub_2177532C8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A240, &qword_21777EEC8);
    sub_217283840(&qword_27CB2A280, &qword_27CB2A240, &qword_21777EEC8);
    sub_217752E58();
    (*(v29 + 8))(v35, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175A1BDC()
{
  v0 = sub_217752DC8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175A1C30(char a1)
{
  if (a1)
  {
    return 1635018093;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_2175A1C60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_21770672C();
}

uint64_t sub_2175A1C84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21759FC48();
  *a2 = result;
  return result;
}

uint64_t sub_2175A1CB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21759FC9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2175A1CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21759FC94();
  *a1 = result;
  return result;
}

uint64_t sub_2175A1D40(uint64_t a1)
{
  v2 = sub_2175A339C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175A1D7C(uint64_t a1)
{
  v2 = sub_2175A339C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2175A1DF4()
{
  sub_2177531E8();
  sub_217202078(v0, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F06D8(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 128, __src, &qword_27CB24280, &unk_21775D680);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v4);
    sub_2171F06D8(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 256, __src, &qword_27CB24290, &unk_21775D550);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v4);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 384, __src, &qword_27CB242A0, &unk_21777EEF0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE814(v4);
    sub_2171F06D8(__dst, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 512, __src, &qword_27CB242B0, &unk_21775D630);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v4);
    sub_2171F06D8(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 640, __src, &qword_27CB242C0, &unk_21775D650);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F06D8(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 768, __src, &qword_27CB242D0, &unk_21775D660);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6C4(v4);
    sub_2171F06D8(__dst, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 896, __src, &qword_27CB242E0, &unk_21777EEE0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6AC(v4);
    sub_2171F06D8(__dst, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 1024, __src, &qword_27CB242F0, &unk_217797B80);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE664(v4);
    sub_2171F06D8(__dst, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v0 + 1152, __src, &qword_27CB24300, &qword_217771D70);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4CC(v4);
    sub_2171F06D8(__dst, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

BOOL sub_2175A22C8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2175A176C();
  *a2 = result;
  return result;
}

BOOL sub_2175A2338@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2175A176C();
  *a1 = result;
  return result;
}

uint64_t sub_2175A2370(uint64_t a1)
{
  v2 = sub_2175A40D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175A23AC(uint64_t a1)
{
  v2 = sub_2175A40D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2175A2424()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_21727D7C8(v3, v1);
  }

  return sub_217753238();
}

uint64_t sub_2175A24A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2175A1BDC();
  *a2 = result;
  return result;
}

uint64_t sub_2175A24D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2175A1C30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2175A250C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2175A1BDC();
  *a1 = result;
  return result;
}

uint64_t sub_2175A2544(uint64_t a1)
{
  v2 = sub_2175A2964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175A2580(uint64_t a1)
{
  v2 = sub_2175A2964();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CatalogSearchRawResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  sub_217202078(v4, v19, &qword_27CB24268, &qword_21777DBE0);
  sub_217202078(v3, v20, &qword_27CB24268, &qword_21777DBE0);
  if (v19[2] == 1)
  {
    if (v20[2] == 1)
    {
      sub_2171F06D8(v19, &qword_27CB24268, &qword_21777DBE0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_217202078(v19, v18, &qword_27CB24268, &qword_21777DBE0);
  if (v20[2] == 1)
  {
    sub_217269E58(v18);
LABEL_6:
    sub_2171F06D8(v19, &qword_27CB2A128, &qword_21777DBE8);
    return 0;
  }

  memcpy(v17, v20, sizeof(v17));
  v12 = sub_21759FDD0(v18, v17, v6, v7, v8, v9, v10, v11);
  sub_217269E58(v17);
  sub_217269E58(v18);
  sub_2171F06D8(v19, &qword_27CB24268, &qword_21777DBE0);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v13 = *(v5 + 1280);
  v14 = *(v3 + 1280);
  if (v13 != 1)
  {
    v19[0] = v13;
    if (v14 != 1)
    {
      v18[0] = v14;
      sub_217221020(v13);
      sub_217221020(v14);
      sub_217221020(v13);
      v16 = sub_2175A17B4(v19, v18);

      sub_217221010(v13);
      return v16;
    }

    sub_217221020(v13);
    sub_217221020(1);
    sub_217221020(v13);

    goto LABEL_14;
  }

  sub_217221020(1);
  if (v14 != 1)
  {
    sub_217221020(v14);
LABEL_14:
    sub_217221010(v13);
    sub_217221010(v14);
    return 0;
  }

  sub_217221020(1);
  sub_217221010(1);
  return v14;
}

uint64_t CatalogSearchRawResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A130, &qword_21777DBF0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v16[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175A2964();
  OUTLINED_FUNCTION_105();
  v18 = 0;
  sub_2175A29B8();
  sub_217752F38();
  if (!v2)
  {
    v17 = *(v3 + 1280);
    v16[15] = 1;
    sub_217221020(v17);
    sub_2175A2A0C();
    sub_217752F38();
    sub_217221010(v17);
  }

  return (*(v7 + 8))(v13, v5);
}

unint64_t sub_2175A2964()
{
  result = qword_27CB2A138;
  if (!qword_27CB2A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A138);
  }

  return result;
}

unint64_t sub_2175A29B8()
{
  result = qword_27CB2A140;
  if (!qword_27CB2A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A140);
  }

  return result;
}

unint64_t sub_2175A2A0C()
{
  result = qword_27CB2A148;
  if (!qword_27CB2A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A148);
  }

  return result;
}

void CatalogSearchRawResponse.hash(into:)(uint64_t a1)
{
  sub_217263A08();
  v3 = *(v1 + 1280);
  if (v3 == 1 || (OUTLINED_FUNCTION_24(), !v3))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    sub_21727D7C8(a1, v3);
  }
}

uint64_t CatalogSearchRawResponse.hashValue.getter()
{
  sub_2177531E8();
  sub_217263A08();
  v1 = *(v0 + 1280);
  if (v1 == 1 || (sub_217753208(), !v1))
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_21727D7C8(v3, v1);
  }

  return sub_217753238();
}

void CatalogSearchRawResponse.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v16 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A150, &unk_21777DBF8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2175A2964();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v14 = v16;
    sub_2175A328C();
    OUTLINED_FUNCTION_26_33();
    memcpy(v18, v17, sizeof(v18));
    sub_2175A32E0();
    OUTLINED_FUNCTION_26_33();
    (*(v6 + 8))(v12, v4);
    v19 = v17[0];
    sub_2175A3334(v18, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2175A336C(v18);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175A2D68()
{
  sub_2177531E8();
  sub_217263A08();
  v1 = *(v0 + 1280);
  if (v1 == 1 || (sub_217753208(), !v1))
  {
    sub_217753208();
  }

  else
  {
    sub_217753208();
    sub_21727D7C8(v3, v1);
  }

  return sub_217753238();
}

uint64_t sub_2175A2DE8()
{
  v1 = 0;
  v2 = &qword_27CB24270;
  do
  {
    switch(byte_28295BB40[v1 + 32])
    {
      case 1:
        v2 = &qword_27CB24280;
        v3 = &unk_21775D680;
        sub_217202078(v0 + 128, v11, &qword_27CB24280, &unk_21775D680);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB24288;
        v5 = &qword_217758F80;
        break;
      case 2:
        v2 = &qword_27CB24290;
        v3 = &unk_21775D550;
        sub_217202078(v0 + 256, v11, &qword_27CB24290, &unk_21775D550);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB24298;
        v5 = &qword_21777CD60;
        break;
      case 3:
        v2 = &qword_27CB242A0;
        v3 = &unk_21777EEF0;
        sub_217202078(v0 + 384, v11, &qword_27CB242A0, &unk_21777EEF0);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242A8;
        v5 = &unk_21775D570;
        break;
      case 4:
        v2 = &qword_27CB242B0;
        v3 = &unk_21775D630;
        sub_217202078(v0 + 512, v11, &qword_27CB242B0, &unk_21775D630);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242B8;
        v5 = &unk_21777EEA0;
        break;
      case 5:
        v2 = &qword_27CB242C0;
        v3 = &unk_21775D650;
        sub_217202078(v0 + 640, v11, &qword_27CB242C0, &unk_21775D650);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242C8;
        v5 = &unk_217758970;
        break;
      case 6:
        v2 = &qword_27CB242D0;
        v3 = &unk_21775D660;
        sub_217202078(v0 + 768, v11, &qword_27CB242D0, &unk_21775D660);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242D8;
        v5 = &unk_21777EEB0;
        break;
      case 7:
        v2 = &qword_27CB242E0;
        v3 = &unk_21777EEE0;
        sub_217202078(v0 + 896, v11, &qword_27CB242E0, &unk_21777EEE0);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242E8;
        v5 = &unk_21775D6B0;
        break;
      case 8:
        v2 = &qword_27CB242F0;
        v3 = &unk_217797B80;
        sub_217202078(v0 + 1024, v11, &qword_27CB242F0, &unk_217797B80);
        if (!v12)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_22_42();
        v4 = &qword_27CB242F8;
        v5 = &qword_21775D6C0;
        break;
      case 9:
        sub_217202078(v0 + 1152, v11, &qword_27CB24300, &qword_217771D70);
        if (v12)
        {
          OUTLINED_FUNCTION_22_42();
          v4 = &qword_27CB24308;
          v5 = &unk_217767A90;
        }

        else
        {
          v4 = &qword_27CB24300;
          v5 = &qword_217771D70;
        }

        break;
      default:
        v3 = &unk_21775D640;
        sub_217202078(v0, v11, &qword_27CB24270, &unk_21775D640);
        if (v12)
        {
          OUTLINED_FUNCTION_22_42();
          v4 = &qword_27CB24278;
          v5 = &unk_217759070;
        }

        else
        {
LABEL_23:
          v4 = v2;
          v5 = v3;
        }

        break;
    }

    sub_2171F06D8(v11, v4, v5);
    static URL.valueForQueryItem(named:extractedFrom:)();
    v7 = v6;
    v9 = v8;

    if (v1 == 9)
    {
      break;
    }

    v2 = &qword_27CB24270;
    ++v1;
  }

  while (!v9);
  return v7;
}

uint64_t static MusicCatalogSearchResponse.relativeCodingPathForRawResponseAppleCuratorResultsIncrementalLoader.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  *(v0 + 56) = &unk_282971648;
  *(v0 + 64) = sub_2175A2964();
  *(v0 + 32) = 0;
  *(v0 + 96) = &unk_282971538;
  *(v0 + 104) = sub_2175A339C();
  *(v0 + 72) = 2;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A170, &qword_21777DC08);
  *(v0 + 144) = sub_217283840(&qword_27CB2A178, &qword_27CB2A170, &qword_21777DC08);
  *(v0 + 112) = 5;
  return v0;
}

unint64_t sub_2175A328C()
{
  result = qword_27CB2A158;
  if (!qword_27CB2A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A158);
  }

  return result;
}

unint64_t sub_2175A32E0()
{
  result = qword_27CB2A160;
  if (!qword_27CB2A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A160);
  }

  return result;
}

unint64_t sub_2175A339C()
{
  result = qword_27CB2A168;
  if (!qword_27CB2A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A168);
  }

  return result;
}

unint64_t sub_2175A33F4()
{
  result = qword_27CB2A180;
  if (!qword_27CB2A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A180);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit24CatalogSearchRawResponseV7ResultsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit24CatalogSearchRawResponseV8MetadataVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175A3498(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 1288))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175A34F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
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
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1272) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 1288) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 1288) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_2175A36A4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2175A3788(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2175A3868(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 1280))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175A38BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1272) = 0;
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
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1280) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2175A3A70()
{
  result = qword_27CB2A188;
  if (!qword_27CB2A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A188);
  }

  return result;
}

unint64_t sub_2175A3B0C()
{
  result = qword_27CB2A1A0;
  if (!qword_27CB2A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1A0);
  }

  return result;
}

unint64_t sub_2175A3B64()
{
  result = qword_27CB2A1A8;
  if (!qword_27CB2A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1A8);
  }

  return result;
}

unint64_t sub_2175A3C00()
{
  result = qword_27CB2A1C0;
  if (!qword_27CB2A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1C0);
  }

  return result;
}

unint64_t sub_2175A3C58()
{
  result = qword_27CB2A1C8;
  if (!qword_27CB2A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1C8);
  }

  return result;
}

unint64_t sub_2175A3CB0()
{
  result = qword_27CB2A1D0;
  if (!qword_27CB2A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1D0);
  }

  return result;
}

unint64_t sub_2175A3D08()
{
  result = qword_27CB2A1D8;
  if (!qword_27CB2A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1D8);
  }

  return result;
}

unint64_t sub_2175A3D60()
{
  result = qword_27CB2A1E0;
  if (!qword_27CB2A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1E0);
  }

  return result;
}

unint64_t sub_2175A3DB4()
{
  result = qword_27CB2A1F0;
  if (!qword_27CB2A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242A8, &unk_21775D570);
    sub_2175A3E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1F0);
  }

  return result;
}

unint64_t sub_2175A3E38()
{
  result = qword_27CB2A1F8;
  if (!qword_27CB2A1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24490, &qword_21775A250);
    sub_2175A408C(&qword_27CB2A200, type metadata accessor for CloudCurator);
    sub_2175A408C(&qword_27CB2A208, type metadata accessor for CloudCurator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A1F8);
  }

  return result;
}

unint64_t sub_2175A3F20()
{
  result = qword_27CB2A210;
  if (!qword_27CB2A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24308, &unk_217767A90);
    sub_2175A3FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A210);
  }

  return result;
}

unint64_t sub_2175A3FA4()
{
  result = qword_27CB2A218;
  if (!qword_27CB2A218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    sub_2175A408C(&qword_27CB2A220, type metadata accessor for CatalogSearchRawResponse.TopResult);
    sub_2175A408C(&qword_27CB2A228, type metadata accessor for CatalogSearchRawResponse.TopResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A218);
  }

  return result;
}

uint64_t sub_2175A408C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2175A40D4()
{
  result = qword_27CB2A238;
  if (!qword_27CB2A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A238);
  }

  return result;
}

unint64_t sub_2175A4128()
{
  result = qword_27CB2A258;
  if (!qword_27CB2A258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242A8, &unk_21775D570);
    sub_2175A41AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A258);
  }

  return result;
}

unint64_t sub_2175A41AC()
{
  result = qword_27CB2A260;
  if (!qword_27CB2A260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24490, &qword_21775A250);
    sub_2175A408C(&qword_27CB2A200, type metadata accessor for CloudCurator);
    sub_2175A408C(&qword_27CB2A208, type metadata accessor for CloudCurator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A260);
  }

  return result;
}

unint64_t sub_2175A4294()
{
  result = qword_27CB2A268;
  if (!qword_27CB2A268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24308, &unk_217767A90);
    sub_2175A4318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A268);
  }

  return result;
}

unint64_t sub_2175A4318()
{
  result = qword_27CB2A270;
  if (!qword_27CB2A270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    sub_2175A408C(&qword_27CB2A220, type metadata accessor for CatalogSearchRawResponse.TopResult);
    sub_2175A408C(&qword_27CB2A228, type metadata accessor for CatalogSearchRawResponse.TopResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A270);
  }

  return result;
}

_BYTE *sub_2175A4438(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2175A44E4()
{
  result = qword_27CB2A298;
  if (!qword_27CB2A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A298);
  }

  return result;
}

unint64_t sub_2175A453C()
{
  result = qword_27CB2A2A0;
  if (!qword_27CB2A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2A0);
  }

  return result;
}

unint64_t sub_2175A4594()
{
  result = qword_27CB2A2A8;
  if (!qword_27CB2A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_36(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return sub_217202078(&a41, &a25, a3, a4);
}

uint64_t OUTLINED_FUNCTION_22_42()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return sub_217752E58();
}

uint64_t Sequence<>.uniqueValues.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v41 - v13;
  v15 = sub_2177528F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v41 - v18;
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v42 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v41 - v34;
  v48 = sub_217752338();
  (*(v21 + 16))(v27, v44, a1);
  sub_217752128();
  v36 = v35;
  swift_getAssociatedConformanceWitness();
  v37 = v43;
  v38 = (v43 + 32);
  v39 = (v43 + 8);
  v43 += 8;
  v44 = (v37 + 16);
  while (1)
  {
    sub_217752968();
    if (__swift_getEnumTagSinglePayload(v19, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v38)(v14, v19, AssociatedTypeWitness);
    v47 = v48;
    sub_217752418();
    swift_getWitnessTable();
    if ((sub_2177521D8() & 1) == 0)
    {
      (*v44)(v45, v14, AssociatedTypeWitness);
      v39 = v43;
      sub_2177523C8();
    }

    (*v39)(v14, AssociatedTypeWitness);
  }

  (*(v42 + 8))(v36, v28);
  return v48;
}

uint64_t MusicItemTypeValue.catalogDetailedIdentifierKinds.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0))
  {
    return (*(v1 + 8))();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void PropertyProvider.mergeProperty<A, B>(for:from:key:preferring:retroactiveNullable:)()
{
  OUTLINED_FUNCTION_12();
  v72 = v0;
  v73 = v1;
  v3 = v2;
  v74 = v4;
  v6 = v5;
  v76 = v7;
  v9 = *v8;
  v10 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v70 - v17;
  v79 = v3;
  v78 = *(v3 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_81();
  v77 = v22;
  v23 = *(v9 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_31();
  v70 = v30;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_99();
  v71 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v70 - v36;
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_99();
  v75 = v40;
  OUTLINED_FUNCTION_79_2();
  v43.n128_f64[0] = MEMORY[0x28223BE20](v41, v42);
  v45 = &v70 - v44;
  if ((*v6 & 1) != 0 || (swift_getAtKeyPath(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, *(v23 + 16)), (*(v25 + 8))(v45, v23), EnumTagSinglePayload == 1))
  {
    (*(v12 + 16))(v18, v76, v10, v43);
    v47 = OUTLINED_FUNCTION_93_10();
    v48 = v79;
    OUTLINED_FUNCTION_133(v47, v49, v79);
    if (!v50)
    {
      (*(v78 + 32))(v77, v18, v48);
      v51 = v23;
      v52 = *(v23 + 16);
      v53 = v75;
      sub_2175FB398(v52, v73, v75);
      v54 = v25;
      if (v74)
      {
        v55 = *(v25 + 16);
        v55(v37, v53, v51);
        v56 = OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_133(v56, v57, v52);
        if (v50)
        {
          (*(v25 + 8))(v37, v51);
          v58 = v71;
        }

        else
        {
          v59 = swift_dynamicCast();
          v58 = v71;
          if ((v59 & 1) != 0 && !v80)
          {
            v67 = OUTLINED_FUNCTION_22_43();
            v69 = v79;
            goto LABEL_24;
          }
        }

        v55(v58, v53, v51);
        OUTLINED_FUNCTION_133(v58, 1, v52);
        if (v50)
        {
          (*(v54 + 8))(v58, v51);
        }

        else
        {
          v60 = swift_dynamicCast();
          if (v60)
          {
            v61 = v80;
            v62 = v81;

            v63 = HIBYTE(v62) & 0xF;
            if ((v62 & 0x2000000000000000) == 0)
            {
              v63 = v61 & 0xFFFFFFFFFFFFLL;
            }

            v48 = v79;
            if (!v63)
            {
              goto LABEL_23;
            }

            goto LABEL_21;
          }
        }

        v48 = v79;
      }

LABEL_21:
      OUTLINED_FUNCTION_133(v53, 1, v52);
      if (!v50)
      {
        v64 = *(v54 + 16);
        v65 = OUTLINED_FUNCTION_56_0();
        v66(v65);
        swift_setAtWritableKeyPath();
      }

LABEL_23:
      v67 = OUTLINED_FUNCTION_22_43();
      v69 = v48;
LABEL_24:
      v68(v67, v69);
      (*(v54 + 8))(v53, v51);
      goto LABEL_25;
    }

    (*(v12 + 8))(v18, v10);
  }

LABEL_25:
  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeProperty<A>(for:with:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_7_59(v24);
  v26 = *(v25 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_174_2();
  if (*v37 == 1)
  {
    v38 = *(v26 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();
    swift_getAtKeyPath();
    v38 = *(v26 + 16);
    v39 = OUTLINED_FUNCTION_188_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v38);
    v42 = OUTLINED_FUNCTION_14_46(v28);
    v43(v42);
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_133(v23, 1, v38);
  if (!v44)
  {
    (*(v28 + 16))(v34, v23, v26);
    OUTLINED_FUNCTION_56_0();
    swift_setAtWritableKeyPath();
  }

LABEL_6:
  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeProperty<A, B, C>(for:from:key:ofType:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12();
  v129 = v22;
  v24 = v23;
  v26 = v25;
  v131 = v27;
  v126 = v28;
  v30 = *(*v29 + *MEMORY[0x277D84308] + 8);
  v31 = *(v30 + 16);
  OUTLINED_FUNCTION_0();
  v118 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_150();
  v119 = v37;
  OUTLINED_FUNCTION_206();
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v122 = v39;
  v123 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42, v43);
  OUTLINED_FUNCTION_150();
  v125 = v44;
  OUTLINED_FUNCTION_0();
  v124 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v48, v49);
  OUTLINED_FUNCTION_31();
  v121 = v50;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v116 - v53;
  v130 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v116 - v59;
  OUTLINED_FUNCTION_0();
  v128 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v64, v65);
  OUTLINED_FUNCTION_81();
  v127 = v66;
  OUTLINED_FUNCTION_0();
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v71, v72);
  OUTLINED_FUNCTION_31();
  v117 = v73;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v74, v75);
  OUTLINED_FUNCTION_99();
  v120 = v76;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v77, v78);
  OUTLINED_FUNCTION_174_2();
  if (*v131)
  {
    goto LABEL_3;
  }

  v116 = v79;
  swift_getAtKeyPath();
  v80 = OUTLINED_FUNCTION_188_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, v81, v31);
  v131 = v54;
  v83 = EnumTagSinglePayload;
  v84 = OUTLINED_FUNCTION_14_46(v68);
  v85(v84);
  v79 = v116;
  v54 = v131;
  if (v83 == 1)
  {
LABEL_3:
    v116 = v68;
    v86 = *(v79 + 16);
    v87 = OUTLINED_FUNCTION_150_0();
    v88 = v130;
    v90 = v89;
    v91(v87);
    OUTLINED_FUNCTION_133(v60, 1, v26);
    if (v95)
    {
      (*(v90 + 8))(v60, v88);
    }

    else
    {
      v92 = v54;
      v93 = v128;
      (*(v128 + 32))();
      v94 = v125;
      sub_2175FB398(v24, a22, v125);
      OUTLINED_FUNCTION_133(v94, 1, v24);
      if (v95)
      {
        v96 = *(v93 + 8);
        v97 = OUTLINED_FUNCTION_56_0();
        v98(v97);
        (*(v122 + 8))(v94, v123);
      }

      else
      {
        v99 = v124;
        (*(v124 + 32))(v92, v94, v24);
        v100 = *(v99 + 16);
        v101 = v121;
        v131 = v92;
        v100(v121, v92, v24);
        v102 = v120;
        (*(a21 + 16))(v101, v31, a21);
        v103 = OUTLINED_FUNCTION_93_10();
        OUTLINED_FUNCTION_133(v103, v104, v31);
        if (v105)
        {
          (*(v99 + 8))(v131, v24);
          v106 = OUTLINED_FUNCTION_22_43();
          v107(v106, v26);
          (*(v116 + 8))(v102, v30);
        }

        else
        {
          v109 = v118;
          v108 = v119;
          v110 = *(v118 + 32);
          v111 = OUTLINED_FUNCTION_150_0();
          v112(v111);
          v113 = v117;
          (*(v109 + 16))(v117, v108, v31);
          __swift_storeEnumTagSinglePayload(v113, 0, 1, v31);
          swift_setAtWritableKeyPath();
          (*(v109 + 8))(v108, v31);
          (*(v99 + 8))(v131, v24);
          v114 = OUTLINED_FUNCTION_22_43();
          v115(v114, v26);
        }
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeProperty<A, B, C>(for:from:relationship:ofType:property:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12();
  v55 = v25;
  v56 = v24;
  v57 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_7_59(v29);
  v31 = *(v30 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_31();
  v54 = v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39, v40);
  v42 = v53 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = v53 - v45;
  if (*v47 == 1)
  {
    v48 = *(v31 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();
    swift_getAtKeyPath();
    v48 = *(v31 + 16);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v48);
    (*(v33 + 8))(v46, v31);
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_7;
    }
  }

  v53[0] = v22;
  v53[1] = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2175FB154(v56, v57, v48, v28, v55, v48, AssociatedTypeWitness, a22, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_133(v42, 1, v48);
  if (!v52)
  {
    (*(v33 + 16))(v54, v42, v31);
    swift_setAtWritableKeyPath();
  }

  (*(v33 + 8))(v42, v31);
LABEL_7:
  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeProperty(for:from:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = *(*v5 + *MEMORY[0x277D84308]);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_131_0();
  memcpy(v33, v13, 0x161uLL);
  (*(v4 + 48))(v34, v6, v4);
  v32[0] = v34[0];
  v32[1] = v34[1];
  LOBYTE(v32[2]) = v34[2];
  PlayParameters.Kind.init(_:)(v32, v31);
  v32[0] = *v31;
  v32[1] = *&v31[8];
  MusicIdentifierSet.playParameters(for:)(v32, v34);

  v14 = swift_readAtKeyPath();
  memcpy(v33, v15, 0x78uLL);
  sub_217202078(v33, v32, &qword_27CB244D0, &unk_21775D620);
  v14(v31, 0);
  if (!v33[1])
  {
    (*(v8 + 16))(v1, v2, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C(v31, v32);
      OUTLINED_FUNCTION_12_41();
      v16 = v1[12];
      v17 = OUTLINED_FUNCTION_393();
      v18(v17);
      if (v31[0] || (OUTLINED_FUNCTION_12_41(), v19 = v1[6], v20 = OUTLINED_FUNCTION_393(), (v21(v20) & 1) != 0) || (OUTLINED_FUNCTION_12_41(), v22 = v1[8], v23 = OUTLINED_FUNCTION_393(), (v24(v23) & 1) != 0))
      {
        __swift_destroy_boxed_opaque_existential_1(v32);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_12_41();
      v25 = v1[9];
      v26 = OUTLINED_FUNCTION_393();
      v28 = v27(v26);
      __swift_destroy_boxed_opaque_existential_1(v32);
      if (v28)
      {
        goto LABEL_8;
      }
    }

    else
    {
      memset(v31, 0, 40);
      sub_2171F06D8(v31, &qword_27CB24B48, &qword_21777F0F0);
    }

    memcpy(v32, v34, sizeof(v32));
    sub_2172848C0(v32);
    goto LABEL_9;
  }

  memcpy(v31, v34, sizeof(v31));
  v29[0] = v33[0];
  v29[1] = v33[1];
  memcpy(v30, &v33[2], sizeof(v30));
  sub_21774B5EC(v29, v34);
  memcpy(v32, v31, sizeof(v32));
  sub_2172848C0(v32);
  sub_2171F06D8(v33, &qword_27CB244D0, &unk_21775D620);
LABEL_8:
  memcpy(v32, v34, sizeof(v32));
  swift_setAtWritableKeyPath();
LABEL_9:
  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeRelationship<A, B>(for:from:relationship:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = *(*(*(*v5 + *MEMORY[0x277D84308] + 8) + 16) + 16);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_131_0();
  v17 = static LegacyModel.sanitizedLegacyModelObject<A>(for:relationship:)(v13, v14, v15, v16);
  if (v17)
  {
    v18 = v17;
    (*(v4 + 8))(&v32, v6, v4);
    v19 = v33;
    v20 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    v38[0] = v32;
    v38[1] = v19;
    v37 = &unk_28295F6F0;
    v36 = 4;
    sub_2172B6904(v20, v38, &v37, &v36, v35);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v21 = *(v2 + 16);
    swift_unknownObjectRetain();
    v21(v35, v18, &v32, MEMORY[0x277D84F90], v6, v2);
    v22 = sub_217275A34(v6, v6);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = *(v8 + 72);
    v26 = *(v8 + 80);
    OUTLINED_FUNCTION_24_35();
    v27 = sub_2177522C8();
    (*(v8 + 16))(v28, v0, v6);
    sub_21726B91C();
    *&v32 = v27;
    v29 = sub_217752418();
    v30 = *(v2 + 8);
    v31 = OUTLINED_FUNCTION_4_82();
    MusicItemCollection.init<A>(_:)(&v32, v6, v29, v30, v31, v35);
    swift_setAtWritableKeyPath();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeRelationship<A, B, C>(for:from:relationship:itemType:property:requestedRelationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_12();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = *(*(*(*v31 + *MEMORY[0x277D84308] + 8) + 16) + 16);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37, v38);
  OUTLINED_FUNCTION_131_0();
  v60[0] = v39;
  v56[2] = v60;
  if (sub_2173DDC78(sub_2174A5E68, v56, v40))
  {
    v41 = static LegacyModel.sanitizedLegacyModelObject<A>(for:relationship:)(v30, v28, v26, a24);
    if (v41)
    {
      v42 = v41;
      (*(a22 + 8))(&v57, v32);
      v43 = v58;
      v44 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v63[0] = v57;
      v63[1] = v43;
      v62 = &unk_28295F730;
      v61 = 4;
      sub_2172B6904(v44, v63, &v62, &v61, v60);
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v45 = *(a23 + 16);
      swift_unknownObjectRetain();
      v45(v60, v42, &v57, MEMORY[0x277D84F90], v32, a23);
      v46 = sub_217275A34(v32, v32);
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v49 = *(v34 + 72);
      v50 = *(v34 + 80);
      OUTLINED_FUNCTION_24_35();
      v51 = sub_2177522C8();
      (*(v34 + 16))(v52, v24, v32);
      sub_21726B91C();
      *&v57 = v51;
      v53 = sub_217752418();
      v54 = *(a23 + 8);
      v55 = OUTLINED_FUNCTION_4_82();
      MusicItemCollection.init<A>(_:)(&v57, v32, v53, v54, v55, v60);
      swift_setAtWritableKeyPath();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v24, v32);
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t PropertyProvider.mergeProperty<A, B>(for:from:relationship:ofType:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a9 + 8);
  sub_217751E68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = *v18;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      (*(a10 + 8))(v18, a7);
      v14 = *&v18[16];
      v15 = *&v18[24];
      v16 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v21 = *v18;
      v22 = v14;
      v23 = v15;
      v20 = &unk_28295F7D0;
      v19 = 4;
      sub_2172B6904(v16, &v21, &v20, &v19, __src);
      nullsub_1(__src, v17);
      memcpy(v18, __src, sizeof(v18));
      swift_setAtWritableKeyPath();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void PropertyProvider.mergeProperty<A, B>(for:from:key:preferring:)()
{
  OUTLINED_FUNCTION_12();
  v46 = v0;
  OUTLINED_FUNCTION_7_59(v1);
  v3 = *(v2 + *MEMORY[0x277D84308] + 8);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_0();
  v45 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_150();
  v44 = v10;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_31();
  v43 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  v21 = v41 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v27 = v41 - v26;
  if (*v28)
  {
    goto LABEL_14;
  }

  v41[1] = v24;
  v42 = v21;
  v29 = v25;
  swift_getAtKeyPath();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v4);
  v12[1](v27, v3);
  v25 = v29;
  v21 = v42;
  if (EnumTagSinglePayload == 1)
  {
LABEL_14:
    v42 = v12;
    v31 = *(v25 + 8);
    sub_217751E68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
    if (swift_dynamicCast())
    {
      v32 = v47;
      if (([v47 respondsToSelector_] & 1) != 0 && (v33 = objc_msgSend(v32, sel_musicKit_modelObjectStorageDictionary)) != 0)
      {
        v34 = v33;
        v35 = sub_217751D98();
      }

      else
      {
        v35 = sub_217751DC8();
      }

      v36 = v42;
      (*(v46 + 8))(v35, v4);
      OUTLINED_FUNCTION_133(v21, 1, v4);
      if (v37)
      {
        swift_unknownObjectRelease();
        (*(v36 + 1))(v21, v3);
      }

      else
      {
        v39 = v44;
        v38 = v45;
        (*(v45 + 32))(v44, v21, v4);
        v40 = v43;
        (*(v38 + 16))(v43, v39, v4);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v4);
        swift_setAtWritableKeyPath();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v39, v4);
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t PropertyMergePreferredValue.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void PropertyProvider.mergeProperty<A, B, C, D, E>(for:from:key:ofBaseType:toType:preferring:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_12();
  v164 = v26;
  v28 = v27;
  v30 = v29;
  v161 = v31;
  v162 = v32;
  v157 = v33;
  v35 = v34;
  v36 = *(*v34 + *MEMORY[0x277D84308] + 8);
  v163 = *(v36 + 16);
  OUTLINED_FUNCTION_0();
  v143 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_150();
  v142 = v42;
  OUTLINED_FUNCTION_206();
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v146 = v44;
  v147 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47, v48);
  OUTLINED_FUNCTION_150();
  v153 = v49;
  v154 = v30;
  v149 = *(v30 - 8);
  v50 = *(v149 + 64);
  MEMORY[0x28223BE20](v51, v52);
  OUTLINED_FUNCTION_31();
  v145 = v53;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v54, v55);
  v148 = &v140 - v56;
  OUTLINED_FUNCTION_206();
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v151 = v58;
  v152 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v140 - v63;
  v158 = a21;
  v156 = *(a21 - 8);
  v65 = *(v156 + 64);
  MEMORY[0x28223BE20](v66, v67);
  OUTLINED_FUNCTION_31();
  v150 = v68;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v69, v70);
  v155 = &v140 - v71;
  OUTLINED_FUNCTION_206();
  v72 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v74 = v73;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v77, v78);
  v80 = &v140 - v79;
  v81 = v28;
  v160 = *(v28 - 8);
  v82 = *(v160 + 64);
  MEMORY[0x28223BE20](v83, v84);
  OUTLINED_FUNCTION_81();
  v159 = v85;
  OUTLINED_FUNCTION_0();
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v90, v91);
  OUTLINED_FUNCTION_31();
  v141 = v92;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v93, v94);
  OUTLINED_FUNCTION_99();
  v144 = v95;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v96, v97);
  OUTLINED_FUNCTION_174_2();
  if ((*v162 & 1) != 0 || (swift_getAtKeyPath(), v98 = OUTLINED_FUNCTION_188_1(), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98, v99, v163), v101 = OUTLINED_FUNCTION_14_46(v87), v102(v101), EnumTagSinglePayload == 1))
  {
    v103 = v87;
    v140 = v36;
    v162 = v35;
    v104 = v163;
    (*(v74 + 16))(v80, v161, v72);
    OUTLINED_FUNCTION_133(v80, 1, v81);
    if (v110)
    {
      (*(v74 + 8))(v80, v72);
    }

    else
    {
      v106 = v159;
      v105 = v160;
      (*(v160 + 32))(v159, v80, v81);
      v107 = v158;
      sub_2175FB398(v158, a26, v64);
      v108 = OUTLINED_FUNCTION_93_10();
      OUTLINED_FUNCTION_133(v108, v109, v107);
      if (v110)
      {
        (*(v105 + 8))(v106, v81);
        (*(v151 + 8))(v64, v152);
      }

      else
      {
        v161 = v81;
        v111 = v156;
        v112 = v155;
        (*(v156 + 32))();
        v113 = *(v111 + 16);
        v114 = v150;
        v115 = OUTLINED_FUNCTION_150_0();
        v116(v115);
        v118 = v153;
        v117 = v154;
        (*(a24 + 16))(v114, v154, a24);
        OUTLINED_FUNCTION_133(v118, 1, v117);
        if (v119)
        {
          (*(v111 + 8))(v112, v107);
          v120 = OUTLINED_FUNCTION_15_49();
          v121(v120);
          (*(v146 + 8))(v118, v147);
        }

        else
        {
          v123 = v148;
          v122 = v149;
          (*(v149 + 32))(v148, v118, v117);
          v124 = *(v122 + 16);
          v125 = v145;
          v126 = OUTLINED_FUNCTION_150_0();
          v127(v126);
          v128 = v144;
          v129 = v125;
          v130 = v104;
          (*(a25 + 16))(v129, v104, a25);
          OUTLINED_FUNCTION_133(v128, 1, v104);
          if (v131)
          {
            (*(v122 + 8))(v123, v117);
            (*(v156 + 8))(v155, v107);
            v132 = OUTLINED_FUNCTION_15_49();
            v133(v132);
            (*(v103 + 8))(v128, v140);
          }

          else
          {
            v134 = v143;
            v135 = v142;
            (*(v143 + 32))(v142, v128, v130);
            v136 = v141;
            (*(v134 + 16))(v141, v135, v130);
            __swift_storeEnumTagSinglePayload(v136, 0, 1, v130);
            swift_setAtWritableKeyPath();
            (*(v134 + 8))(v135, v130);
            (*(v122 + 8))(v123, v117);
            (*(v156 + 8))(v155, v107);
            v137 = OUTLINED_FUNCTION_15_49();
            v139(v137, v138);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

void PropertyProvider.mergeProperty<A, B>(for:from:relationship:internalProperty:preferring:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_7_59(v3);
  v5 = *(v4 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v25 = &v39 - v24;
  v27 = *v26;
  v42 = v0;
  if (v27 == 1)
  {
    v28 = *(v5 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();
    v40 = v2;
    v41 = v29;
    v39 = v30;
    v32 = v31;
    v34 = v33;
    swift_getAtKeyPath();
    v28 = *(v5 + 16);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v28);
    (*(v7 + 8))(v25, v5);
    v20 = v34;
    v21 = v32;
    v22 = v39;
    v2 = v40;
    v23 = v41;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_7;
    }
  }

  sub_2175FB154(v20, v21, v28, v2, v22, v28, v22, v23, v23);
  v36 = OUTLINED_FUNCTION_93_10();
  OUTLINED_FUNCTION_133(v36, v37, v28);
  if (!v38)
  {
    (*(v7 + 16))(v13, v17, v5);
    swift_setAtWritableKeyPath();
  }

  (*(v7 + 8))(v17, v5);
LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t PropertyProvider.mergeRelationship<A, B>(for:itemType:from:property:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  sub_217202078(a3, __dst, &qword_27CB24BA8, &unk_217772FF0);
  v6 = MEMORY[0x277D84308];
  if (__dst[3])
  {
    v7 = *(*(v5 + *MEMORY[0x277D84308] + 8) + 16);
    v8 = sub_217351198();
    PropertyProviderExtendedStorage.subscript.getter(a4, &type metadata for AnyPropertyProviderExtendedStorage, v7, v8, __src);
    sub_217350E74(__dst);
    if (*&__src[88])
    {
      memcpy(__dst, __src, sizeof(__dst));
      return swift_setAtWritableKeyPath();
    }
  }

  else
  {
    sub_2171F06D8(__dst, &qword_27CB24BA8, &unk_217772FF0);
    memset(__src, 0, sizeof(__src));
  }

  v9 = swift_readAtKeyPath();
  v10 = *(v5 + *v6 + 8);
  v11 = *(v10 - 8);
  (*(v11 + 16))(__dst);
  v9(&v13, 0);
  if (*&__src[88])
  {
    (*(v11 + 8))(__src, v10);
  }

  return swift_setAtWritableKeyPath();
}

unint64_t sub_2175A72C4()
{
  result = qword_27CB2A2B0;
  if (!qword_27CB2A2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A2B8, &qword_21777F0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2B0);
  }

  return result;
}

unint64_t sub_2175A732C()
{
  result = qword_27CB2A2C0;
  if (!qword_27CB2A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A2C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyMergePreferredValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_49()
{
  result = *(v0 - 136);
  v2 = *(*(v0 - 128) + 8);
  v3 = *(v0 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_43()
{
  result = *(v0 - 120);
  v2 = *(*(v0 - 112) + 8);
  return result;
}

uint64_t sub_2175A7488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v24 - v12;
  sub_2172B6210(a1, v24 - v12);
  v14 = sub_217752538();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2171F06D8(v13, &qword_27CB24D78, &qword_217759EA0);
  }

  else
  {
    sub_217752528();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a3 + 16))
  {
    v15 = *(a3 + 24);
    v16 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_217752498();
    v19 = v18;
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *v5;
  v21 = *(a4 + 16);
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t sub_2175A7648(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 272) = a2;
  *(v8 + 280) = a4;
  *(v8 + 376) = a3;
  *(v8 + 264) = a1;
  return MEMORY[0x2822009F8](sub_2175A7678, 0, 0);
}

uint64_t sub_2175A7678(uint64_t a1, uint64_t a2)
{
  v3 = sub_2175A7D38(a1, a2, *(v2 + 296));
  v4 = v3;
  *(v2 + 320) = v3;
  if (*(v3 + 16) == 1)
  {
    v5 = *(v2 + 376);
    sub_2172830F8(v3 + 32, v2 + 224);

    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v2 + 328) = v6;
    *v6 = v7;
    v6[1] = sub_2175A7880;
    v8 = *(v2 + 304);
    v9 = *(v2 + 312);
    v10 = *(v2 + 272);

    return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(v2 + 120, v10, v5 & 1, v8, v9);
  }

  else
  {
    v13 = *(v2 + 304);
    v12 = *(v2 + 312);
    v14 = *(v2 + 376);
    v15 = *(v2 + 272);
    v16 = sub_217752338();
    MusicItemCollection.init(arrayLiteral:)(v16, v13, v12, v2 + 16);
    v17 = type metadata accessor for MusicItemCollection();
    *(v2 + 344) = v17;
    v18 = swift_task_alloc();
    *(v2 + 352) = v18;
    *(v18 + 16) = v13;
    *(v18 + 24) = v12;
    *(v18 + 32) = v4;
    *(v18 + 40) = v15;
    *(v18 + 48) = v14 & 1;
    *(v18 + 56) = v2 + 16;
    v19 = *(MEMORY[0x277D859B8] + 4);
    v20 = swift_task_alloc();
    *(v2 + 360) = v20;
    *v20 = v2;
    v20[1] = sub_2175A7A64;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v20, v17, v21, 0, 0, &unk_21777F360, v18, v17);
  }
}

uint64_t sub_2175A7880()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 328);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 336) = v0;

  if (v0)
  {
    v7 = sub_2175A7C44;
  }

  else
  {
    v7 = sub_2175A7984;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175A7984()
{
  sub_217283154((v0 + 28));
  memcpy(v0 + 2, v0 + 15, 0x68uLL);
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[33];
  v4 = type metadata accessor for MusicItemCollection();
  v5 = *(v4 - 8);
  v6 = OUTLINED_FUNCTION_11_56(v5);
  v7(v6);
  (*(v5 + 8))(v0 + 2, v4);
  OUTLINED_FUNCTION_20_0();

  return v8();
}

uint64_t sub_2175A7A64()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = v2[45];
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v3[46] = v0;

  if (v0)
  {
    v7 = sub_2175A7CA0;
  }

  else
  {
    v8 = v3[44];
    v9 = v3[40];

    v7 = sub_2175A7B7C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175A7B7C()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[33];
  v4 = type metadata accessor for MusicItemCollection();
  v5 = *(v4 - 8);
  v6 = OUTLINED_FUNCTION_11_56(v5);
  v7(v6);
  (*(v5 + 8))(v0 + 2, v4);
  OUTLINED_FUNCTION_20_0();

  return v8();
}

uint64_t sub_2175A7C44()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 224);
  v1 = *(v0 + 336);
  OUTLINED_FUNCTION_20_0();

  return v2();
}