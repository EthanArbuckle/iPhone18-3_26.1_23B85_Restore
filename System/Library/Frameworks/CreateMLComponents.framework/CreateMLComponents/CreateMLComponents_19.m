uint64_t Classification<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a4;
  v13[0] = a2;
  type metadata accessor for Classification.CodingKeys();
  OUTLINED_FUNCTION_0_71();
  swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v15 = 0;
  v11 = v13[3];
  sub_237EF9A70();
  if (!v11)
  {
    v14 = 1;
    sub_237EF9A40();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Classification<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v29 = a4;
  OUTLINED_FUNCTION_1_1();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Classification.CodingKeys();
  OUTLINED_FUNCTION_0_71();
  swift_getWitnessTable();
  v32 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v30 = v9;
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for Classification();
  OUTLINED_FUNCTION_1_1();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v35;
  sub_237EFA190();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v11;
  v17 = v31;
  v37 = 0;
  sub_237EF9970();
  v18 = *(v17 + 32);
  v33 = v15;
  v18(v15, v34, a2);
  v36 = 1;
  sub_237EF9940();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_2_81();
  v22(v21);
  v23 = v35;
  v24 = v33;
  *&v33[*(v35 + 36)] = v20;
  v25 = v28;
  (*(v28 + 16))(v29, v24, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v24, v23);
}

uint64_t sub_237E062C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_237E06340(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFFC;
    if ((v6 & 0xFFFFFFFC) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return __swift_getEnumTagSinglePayload(result, v5, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload(result, v5, v4);
}

void sub_237E06444(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237E065DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237E06724()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  OUTLINED_FUNCTION_22_3();
  (*(v4 + 32))(v3);
  OUTLINED_FUNCTION_51_11();
  return (*(*(v0 - 8) + 32))(v3 + v5, v1, v0);
}

void sub_237E067D4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for TransformerToEstimatorAdaptor();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  OUTLINED_FUNCTION_22_3();
  (*(v16 + 32))(v9, v7, v5);
  Transformer.adaptedAsEstimator()(v3, v15);
  OUTLINED_FUNCTION_22_3();
  v17 = OUTLINED_FUNCTION_88_1();
  v18(v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_64();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v10;
  v26 = AssociatedTypeWitness;
  v27 = WitnessTable;
  v28 = AssociatedConformanceWitness;
  v22 = type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  v23 = swift_getWitnessTable();
  v25 = v5;
  v26 = v22;
  v27 = v1;
  v28 = v23;
  OUTLINED_FUNCTION_51_11();
  v24 = OUTLINED_FUNCTION_31_0();
  Estimator.adaptedAsSupervised<A>(annotationType:)(v24);
  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E069C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  EstimatorToSupervisedAdaptor.init(_:)(a1, a4, a5);
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_11();
  return (*(*(a3 - 8) + 32))(a5 + v10, a2, a3);
}

uint64_t sub_237E06AE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_20_3();
  type metadata accessor for EstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_0_72();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_51_11();
  return EstimatorToSupervisedAdaptor.init(_:)(a1, a2, a3 + v7);
}

uint64_t sub_237E06C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v8[15] = a5[4];
  v8[16] = a5[2];
  OUTLINED_FUNCTION_47_10();
  v8[17] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_237EF8A60();
  v8[18] = v10;
  v8[19] = OUTLINED_FUNCTION_47_10();
  v11 = sub_237EF9640();
  v8[20] = v11;
  v12 = OUTLINED_FUNCTION_10_20();
  v8[21] = v12;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  v8[22] = WitnessTable;
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v12;
  v8[5] = WitnessTable;
  v8[23] = sub_237EF9380();
  v8[24] = swift_getWitnessTable();
  OUTLINED_FUNCTION_56_3();
  v14 = sub_237EF9340();
  v8[25] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v8[26] = v15;
  v8[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v8[28] = v16;
  v8[29] = OUTLINED_FUNCTION_27_0();
  v8[30] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_56_3();
  v17 = sub_237EF9640();
  v8[31] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v8[32] = v18;
  v8[33] = OUTLINED_FUNCTION_27_0();
  v8[34] = a5[5];
  v8[35] = a5[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[36] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v8[37] = v20;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v8[41] = v21;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = *(v11 - 8);
  v8[45] = OUTLINED_FUNCTION_27_0();
  v22 = sub_237EF9340();
  v8[46] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v8[47] = v23;
  v8[48] = OUTLINED_FUNCTION_27_0();
  v8[49] = swift_getAssociatedTypeWitness();
  v24 = sub_237EF9640();
  v8[50] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v8[51] = v25;
  v8[52] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_237E070B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v58 = v22[52];
  v63 = v22[46];
  v64 = v22[47];
  v24 = v22[34];
  v23 = v22[35];
  v61 = v22[45];
  v62 = v22[19];
  v25 = v22[16];
  v66 = v22[15];
  v27 = v22[12];
  v26 = v22[13];
  v60 = v22[8];
  v28 = OUTLINED_FUNCTION_88_1();
  MEMORY[0x2383E08A0](v28);
  v29 = swift_task_alloc();
  *v29 = v25;
  v29[1] = v23;
  v56 = v23;
  v29[2] = v27;
  v29[3] = v66;
  v29[4] = v24;
  v30 = v24;
  v29[5] = v26;
  KeyPath = swift_getKeyPath();

  v32 = swift_allocObject();
  v32[2] = v25;
  v32[3] = v23;
  v32[4] = v27;
  v32[5] = v66;
  v32[6] = v30;
  v32[7] = v26;
  v32[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9860();

  v59 = *(v64 + 8);
  v33 = OUTLINED_FUNCTION_13_6();
  v34(v33);
  v35 = OUTLINED_FUNCTION_88_1();
  MEMORY[0x2383E08A0](v35);
  v36 = swift_task_alloc();
  v37 = v25;
  v38 = v23;
  *v36 = v25;
  v36[1] = v23;
  v36[2] = v27;
  v36[3] = v66;
  v36[4] = v30;
  v39 = v30;
  v36[5] = v26;
  v40 = swift_getKeyPath();

  v41 = swift_allocObject();
  v41[2] = v37;
  v41[3] = v38;
  v41[4] = v27;
  v41[5] = v66;
  v41[6] = v39;
  v41[7] = v26;
  v41[8] = v40;
  sub_237EF9860();

  v42 = OUTLINED_FUNCTION_13_6();
  v59(v42);
  v67 = v66 + 40;
  OUTLINED_FUNCTION_15_0();
  v65 = v43 + *v43;
  v44 = swift_task_alloc();
  v22[53] = v44;
  *v44 = v22;
  v44[1] = sub_237E073C0;
  OUTLINED_FUNCTION_30_24();

  return v53(v45, v46, v47, v48, v49, v50, v51, v52, a9, v56, WitnessTable, v58, v59, v60, v61, v62, v63, v65, v67, a20, a21, a22);
}

uint64_t sub_237E073C0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E074C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v18 = v16[54];
  sub_237EF8B90();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_30_28();
    v20(v19);
    OUTLINED_FUNCTION_25_28();
    v45 = v22;
    v46 = v21;
    v47 = v16[29];
    v48 = v16[27];
    (*(v23 + 8))(v17, v16[20]);
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v45, v46, v47, v48, a13, a14, a15, a16);
  }

  else
  {
    v35 = swift_task_alloc();
    v16[55] = v35;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_46_2();
    *v35 = v36;
    v35[1] = sub_237E0765C;
    OUTLINED_FUNCTION_49_0();

    return Transformer.applied<A>(to:eventHandler:)(v37, v38, v39, v40, v41, v42, v43);
  }
}

uint64_t sub_237E0765C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E07760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v24 = v22[57];
  sub_237EF8B90();
  if (v24)
  {

    v25 = OUTLINED_FUNCTION_31_0();
    v26(v25);
    OUTLINED_FUNCTION_25_28();
    v70 = v28;
    v72 = v27;
    v74 = v22[29];
    v76 = v22[27];
    (*(v29 + 8))(v23, v22[20]);
    v30 = OUTLINED_FUNCTION_31_0();
    v31(v30);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_30_24();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, v70, v72, v74, v76, a19, a20, a21, a22);
  }

  else
  {
    v77 = v22[34];
    v66 = v22[33];
    v67 = v22[30];
    v41 = v22[28];
    v42 = v22[29];
    v43 = v22[27];
    v68 = v22[26];
    v71 = v22[31];
    v44 = v22[24];
    v64 = v22[35];
    v65 = v22[25];
    v45 = v22[23];
    v47 = v22[15];
    v46 = v22[16];
    v63 = v22[13];
    v48 = v22[12];
    v73 = *(v22[11] + 52);
    v75 = v22[14];
    v22[6] = v22[56];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v45, v44);
    (*(v41 + 8))(v42, v45);
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = v64;
    v49[4] = v48;
    v49[5] = v47;
    v49[6] = v77;
    v49[7] = v63;
    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = v64;
    v50[4] = v48;
    v50[5] = v47;
    v50[6] = v77;
    v50[7] = v63;
    v50[8] = sub_237E0B8C8;
    v50[9] = v49;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v68 + 8))(v43, v65);
    v78 = v77 + 40;
    OUTLINED_FUNCTION_15_0();
    v69 = v51 + *v51;
    v52 = swift_task_alloc();
    v22[58] = v52;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v52 = v22;
    v52[1] = sub_237E07AFC;
    OUTLINED_FUNCTION_30_24();

    return v61(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64, v65, v66, v67, v69, v71, v73, v75, v78, a19, a20, a21, a22);
  }
}

uint64_t sub_237E07AFC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E07C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_155();
  v24 = v22[51];
  v23 = v22[52];
  v25 = v22[50];
  v47 = v22[45];
  v48 = v22[48];
  v26 = v22[41];
  v27 = v22[42];
  v28 = v22[40];
  v41 = v22[43];
  v42 = v22[39];
  v29 = v22[37];
  v30 = v22[38];
  v31 = v22[36];
  v43 = v22[34];
  v44 = v22[35];
  v49 = v22[33];
  v50 = v22[29];
  v51 = v22[27];
  v45 = v22[7];
  v46 = v22[17];
  (*(v22[44] + 8))();
  (*(v24 + 8))(v23, v25);
  (*(v26 + 32))(v27, v41, v28);
  (*(v29 + 32))(v30, v42, v31);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v27, v30, v28, v31, v45);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_30_24();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a20, a21, a22);
}

uint64_t sub_237E07E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_6_57();
  v17(v16);
  v18 = OUTLINED_FUNCTION_13_6();
  v19(v18);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E07ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_30_28();
  v17(v16);
  v18 = OUTLINED_FUNCTION_6_57();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E07FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_60();
  v16 = OUTLINED_FUNCTION_30_28();
  v17(v16);
  v18 = OUTLINED_FUNCTION_6_57();
  v19(v18);
  v20 = OUTLINED_FUNCTION_13_6();
  v21(v20);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_49_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_237E0809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1, v10, v11);
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness);
  return AnnotatedFeature.init(feature:annotation:)(v13, v9, v10, AssociatedTypeWitness, a3);
}

uint64_t sub_237E08294(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237E08394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v44;
  v9[22] = v8;
  v9[19] = a8;
  v9[20] = v43;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v9[23] = a6[4];
  v9[24] = a6[2];
  OUTLINED_FUNCTION_48_11();
  v9[25] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_237EF8A60();
  v9[26] = v10;
  v9[27] = OUTLINED_FUNCTION_48_11();
  v11 = sub_237EF9640();
  v9[28] = v11;
  v12 = OUTLINED_FUNCTION_10_20();
  v9[29] = v12;
  WitnessTable = swift_getWitnessTable();
  v9[30] = WitnessTable;
  v9[2] = v10;
  v9[3] = v11;
  v9[4] = v12;
  v9[5] = WitnessTable;
  v9[31] = sub_237EF9380();
  v9[32] = swift_getWitnessTable();
  v14 = sub_237EF9340();
  v9[33] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v9[34] = v15;
  v9[35] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[36] = v16;
  v9[37] = OUTLINED_FUNCTION_27_0();
  v9[38] = type metadata accessor for AnnotatedFeature();
  v17 = sub_237EF9640();
  v9[39] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v9[40] = v18;
  v9[41] = OUTLINED_FUNCTION_27_0();
  v19 = sub_237EF9640();
  v9[42] = v19;
  v20 = swift_getWitnessTable();
  v9[43] = v20;
  v9[6] = v10;
  v9[7] = v19;
  v9[8] = v12;
  v9[9] = v20;
  v9[44] = sub_237EF9380();
  v9[45] = swift_getWitnessTable();
  v21 = sub_237EF9340();
  v9[46] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v9[47] = v22;
  v9[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[49] = v23;
  v9[50] = OUTLINED_FUNCTION_27_0();
  v24 = sub_237EF9640();
  v9[51] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v9[52] = v25;
  v9[53] = OUTLINED_FUNCTION_27_0();
  v9[54] = a6[5];
  v9[55] = a6[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[56] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v9[57] = v27;
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v9[60] = swift_task_alloc();
  v9[61] = swift_checkMetadataState();
  OUTLINED_FUNCTION_1_1();
  v9[62] = v28;
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v9[65] = *(v11 - 8);
  v9[66] = OUTLINED_FUNCTION_27_0();
  v29 = sub_237EF9340();
  v9[67] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v9[68] = v30;
  v9[69] = OUTLINED_FUNCTION_27_0();
  v9[70] = swift_getAssociatedTypeWitness();
  v31 = sub_237EF9640();
  v9[71] = v31;
  OUTLINED_FUNCTION_6_1(v31);
  v9[72] = v32;
  v9[73] = OUTLINED_FUNCTION_27_0();
  v9[74] = *(v19 - 8);
  v9[75] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v33 = sub_237EF9340();
  v9[76] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v9[77] = v34;
  v9[78] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_56_3();
  v35 = sub_237EF9640();
  v9[79] = v35;
  OUTLINED_FUNCTION_6_1(v35);
  v9[80] = v36;
  v9[81] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

void sub_237E08ADC()
{
  v29 = v0[78];
  v34 = v0[77];
  v30 = v0[76];
  v35 = v0[69];
  v36 = v0[68];
  v31 = v0[67];
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[24];
  v33 = v3;
  v39 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v27 = v4;
  MEMORY[0x2383E08A0](v7, v4);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v2;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v39;
  v8[5] = v1;
  v9 = v1;
  v28 = v1;
  v8[6] = v4;
  v8[7] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v11 = swift_allocObject();
  v11[2] = v33;
  v11[3] = v2;
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v39;
  v11[7] = v9;
  v11[8] = v4;
  v11[9] = v5;
  v11[10] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v26 = *(v34 + 8);
  v26(v29, v30);
  v12 = v7;
  MEMORY[0x2383E08A0](v7, v4);
  v13 = swift_task_alloc();
  *v13 = v33;
  v13[1] = v2;
  v13[2] = v7;
  v13[3] = v6;
  v25 = v7;
  v13[4] = v39;
  v13[5] = v28;
  v13[6] = v4;
  v13[7] = v5;
  v14 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v15 = swift_allocObject();
  v15[2] = v33;
  v15[3] = v2;
  v15[4] = v12;
  v15[5] = v6;
  v15[6] = v39;
  v15[7] = v28;
  v15[8] = v4;
  v15[9] = v5;
  v15[10] = v14;
  sub_237EF9860();

  v26(v29, v30);
  MEMORY[0x2383E08A0](v6, v5);
  v16 = swift_task_alloc();
  *v16 = v33;
  v16[1] = v2;
  v16[2] = v25;
  v16[3] = v6;
  v16[4] = v39;
  v16[5] = v28;
  v16[6] = v4;
  v16[7] = v5;
  v17 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v18 = swift_allocObject();
  v18[2] = v33;
  v18[3] = v2;
  v18[4] = v25;
  v18[5] = v6;
  v18[6] = v39;
  v18[7] = v28;
  v18[8] = v27;
  v18[9] = v5;
  v18[10] = v17;
  swift_getWitnessTable();
  sub_237EF9860();

  v32 = *(v36 + 8);
  v32(v35, v31);
  MEMORY[0x2383E08A0](v6, v5);
  v19 = swift_task_alloc();
  *v19 = v33;
  v19[1] = v2;
  v19[2] = v25;
  v19[3] = v6;
  v19[4] = v39;
  v19[5] = v28;
  v19[6] = v27;
  v19[7] = v5;
  v20 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v21 = swift_allocObject();
  v21[2] = v33;
  v21[3] = v2;
  v21[4] = v25;
  v21[5] = v6;
  v21[6] = v39;
  v21[7] = v28;
  v21[8] = v27;
  v21[9] = v5;
  v21[10] = v20;
  sub_237EF9860();

  v22 = OUTLINED_FUNCTION_31_0();
  (v32)(v22);
  OUTLINED_FUNCTION_15_0();
  v37 = v23 + *v23;
  v24 = swift_task_alloc();
  v0[82] = v24;
  *v24 = v0;
  v24[1] = sub_237E09084;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237E09084()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  *(v6 + 664) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E09184()
{
  v5 = v1[83];
  sub_237EF8B90();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_19_36();
    v7(v6);
    OUTLINED_FUNCTION_17_39();
    v28 = v8;
    v9 = v1[75];
    v10 = v1[74];
    v11 = v1[73];
    v12 = v1[72];
    v13 = OUTLINED_FUNCTION_8_62();
    v14(v13);
    (*(v12 + 8))(v11, v2);
    (*(v10 + 8))(v9, v3);
    (*(v0 + 8))(v4, v28);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v17 = swift_task_alloc();
  v1[84] = v17;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v17 = v18;
  v17[1] = sub_237E0938C;
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_237E0938C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 680) = v4;
  *(v2 + 688) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E09494()
{
  v3 = v0[86];
  sub_237EF8B90();
  if (v3)
  {
    v4 = v0[64];
    v5 = v0[62];

    v6 = OUTLINED_FUNCTION_31_0();
    v7(v6);
    OUTLINED_FUNCTION_17_39();
    v28 = v8;
    v9 = v0[75];
    v10 = v0[74];
    v11 = v0[73];
    v12 = v0[72];
    v13 = OUTLINED_FUNCTION_8_62();
    v14(v13);
    (*(v12 + 8))(v11, v5 + 8);
    (*(v10 + 8))(v9, v1);
    (*(v4 + 8))(v2, v28);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    __asm { BRAA            X1, X16 }
  }

  v17 = swift_task_alloc();
  v0[87] = v17;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v17 = v18;
  v17[1] = sub_237E096B0;
  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_50_3();

  return Transformer.applied<A>(to:eventHandler:)(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_237E096B0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 704) = v5;
  *(v3 + 712) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237E097C0()
{
  v2 = v0[89];
  sub_237EF8B90();
  if (!v2)
  {
    v38 = v0[88];
    v43 = v0[55];
    v46 = v0[54];
    v16 = v0[50];
    v17 = v0[49];
    v30 = v0[48];
    v33 = v0[47];
    v32 = v0[46];
    v18 = v0[44];
    v31 = v0[45];
    v34 = v0[37];
    v39 = v0[36];
    v44 = v0[35];
    v41 = v0[34];
    v40 = v0[33];
    v35 = v0[31];
    v36 = v0[32];
    v19 = v0[18];
    v0[10] = v0[85];
    v20 = v0[24];
    v29 = v0[23];
    v42 = v0[21];
    v22 = v0[19];
    v21 = v0[20];
    sub_237EFA000();

    MEMORY[0x2383E08A0](v18, v31);
    (*(v17 + 8))(v16, v18);
    v23 = swift_allocObject();
    v23[2] = v20;
    v23[3] = v43;
    v23[4] = v19;
    v23[5] = v22;
    v23[6] = v29;
    v23[7] = v46;
    v23[8] = v21;
    v23[9] = v42;
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v43;
    v24[4] = v19;
    v24[5] = v22;
    v24[6] = v29;
    v24[7] = v46;
    v24[8] = v21;
    v24[9] = v42;
    v24[10] = sub_237E0B84C;
    v24[11] = v23;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v33 + 8))(v30, v32);
    v0[11] = v38;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v35, v36);
    (*(v39 + 8))(v34, v35);
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v43;
    v25[4] = v19;
    v25[5] = v22;
    v25[6] = v29;
    v25[7] = v46;
    v25[8] = v21;
    v25[9] = v42;
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v43;
    v26[4] = v19;
    v26[5] = v22;
    v26[6] = v29;
    v26[7] = v46;
    v26[8] = v21;
    v26[9] = v42;
    v26[10] = sub_237E0B90C;
    v26[11] = v25;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v41 + 8))(v44, v40);
    OUTLINED_FUNCTION_15_0();
    v45 = v27 + *v27;
    v28 = swift_task_alloc();
    v0[90] = v28;
    swift_getWitnessTable();
    swift_getWitnessTable();
    *v28 = v0;
    v28[1] = sub_237E09E54;

    __asm { BRAA            X8, X16 }
  }

  v3 = v0[88];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[62];

  (*(v6 + 8))(v4, v5);
  OUTLINED_FUNCTION_17_39();
  v37 = v7;
  v8 = v0[75];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[42];
  (*(v0[65] + 8))(v0[66], v0[28]);
  (*(v11 + 8))(v10, v12);
  (*(v9 + 8))(v8, v13);
  (*(v3 + 8))(v1, v37);

  OUTLINED_FUNCTION_3_0();

  return v14();
}

uint64_t sub_237E09E54()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  v5 = v2[53];
  v6 = v2[52];
  v7 = v2[51];
  (*(v2[40] + 8))(v2[41], v2[39]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237E0A010()
{
  v1 = v0[80];
  v15 = v0[79];
  v16 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v13 = v0[71];
  v21 = v0[64];
  v6 = v0[62];
  v17 = v0[61];
  v18 = v0[63];
  v14 = v0[60];
  v22 = v0[59];
  v7 = v0[57];
  v19 = v0[58];
  v8 = v0[56];
  v9 = v0[42];
  v20 = v0[12];
  (*(v0[65] + 8))();
  (*(v5 + 8))(v4, v13);
  (*(v3 + 8))(v2, v9);
  (*(v1 + 8))(v16, v15);
  v10 = *(v7 + 32);
  v10(v14, v22, v8);
  (*(v6 + 32))(v18, v21, v17);
  v10(v19, v14, v8);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v18, v19, v17, v8, v20);

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237E0A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_1_88(*(v26 + 664));
  v28(v27);
  v29 = OUTLINED_FUNCTION_24_6();
  v30(v29);
  v31 = OUTLINED_FUNCTION_11_16();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_8();
  v34(v33);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 688));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 712));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_53_2();
  v27 = OUTLINED_FUNCTION_19_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_1_88(*(v26 + 728));
  v30(v29);
  v31 = OUTLINED_FUNCTION_24_6();
  v32(v31);
  v33 = OUTLINED_FUNCTION_11_16();
  v34(v33);
  v35 = OUTLINED_FUNCTION_27_8();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_65_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_237E0A77C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void sub_237E0A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &a9 - v37;
  (*(v39 + 16))(&a9 - v37, v25, v34, v36);
  (*(v30 + 16))(v33, v23, AssociatedTypeWitness);
  AnnotatedFeature.init(feature:annotation:)(v38, v33, v34, AssociatedTypeWitness, v27);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E0AA54(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 56))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v8 + 56))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237E0ABBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = a2[3];
  v36 = a2[5];
  v38 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v31 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v29 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v34 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = *(v12 + 64);
  v35 = a1;
  v24 = v39;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v29 = v13;
    v30 = v18;
    v39 = v14;
    v26 = AssociatedTypeWitness;
    (*(v36 + 64))(v35, v38, v36);
    v27 = v30;
    v28 = v39;
    (*(v34 + 32))(v30, v22, v39);
    (*(v31 + 32))(v9, v37, v26);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v27, v9, v28, v26, v32);
  }

  return result;
}

uint64_t sub_237E0AEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237CEC074;

  return sub_237E06C04(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237E0AF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C92CC8;

  return sub_237E08394(a1, a2, a3, a4, a5, v18, a6, a7);
}

void sub_237E0B268()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E0B3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E0B5A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_88@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = *(v1 + 528);
  *(v2 - 88) = *(v1 + 280);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_77()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_62()
{
  v2 = *(v0 + 528);
  *(v1 - 96) = *(v0 + 280);
  return v2;
}

uint64_t OUTLINED_FUNCTION_47_10()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return swift_getAssociatedTypeWitness();
}

void sub_237E0BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v504 = a3;
  v435[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8);
  v8 = OUTLINED_FUNCTION_3_2(v7, &v478);
  v435[7] = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_3_2(v12, &v481);
  v439 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v15);
  v435[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  v19 = OUTLINED_FUNCTION_3_2(v18, v489);
  v437 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  v24 = OUTLINED_FUNCTION_18(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v27);
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1938);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8);
  v31 = OUTLINED_FUNCTION_3_2(v30, &v497);
  v442 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_3_2(v35, &v500);
  v448 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v38);
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  v42 = OUTLINED_FUNCTION_3_2(v41, v509);
  v445 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  v47 = OUTLINED_FUNCTION_18(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v50);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1918);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8);
  v54 = OUTLINED_FUNCTION_3_2(v53, &v486);
  v455 = v55;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58);
  OUTLINED_FUNCTION_3_2(v58, &v503);
  v466 = v59;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v61);
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v63);
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43B8);
  OUTLINED_FUNCTION_1();
  v465 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3970);
  v69 = OUTLINED_FUNCTION_18(v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_2_2();
  v490 = v70;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v73);
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43C0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43C8);
  v77 = OUTLINED_FUNCTION_3_2(v76, &v507);
  v475 = v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  OUTLINED_FUNCTION_3_2(v81, &v512);
  v486 = v82;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v84);
  v477[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v86);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  OUTLINED_FUNCTION_1();
  v485 = v87;
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  v92 = OUTLINED_FUNCTION_18(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_2_2();
  v499 = v93;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_8_16();
  v498 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v97);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8);
  v101 = OUTLINED_FUNCTION_3_2(v100, &v513);
  v493 = v102;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_26();
  v105 = v103 - v104;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_1();
  v492 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_19();
  v495 = v109;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43D8);
  OUTLINED_FUNCTION_1();
  v497 = v110;
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_26();
  v114 = v112 - v113;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_22_1();
  v496 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB18F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v117);
  v119 = v435 - v118;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8);
  OUTLINED_FUNCTION_1();
  v501 = v121;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_26();
  v125 = v123 - v124;
  MEMORY[0x28223BE20](v126);
  v128 = v435 - v127;
  v502 = sub_237EF6300();
  v503 = v129;
  v506 = a1;
  sub_237EF62F0();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  OUTLINED_FUNCTION_9_11();
  v435[1] = v131;
  if (swift_dynamicCastMetatype())
  {

    OUTLINED_FUNCTION_37_17();
    (v501)[2](v125, v128, v120);
    OUTLINED_FUNCTION_2_51();
    sub_237D5D274(v132, &qword_27DEAEAC8);
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    sub_237D5D274(v133, &qword_27DEAEAC8);
    v134 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      v136 = sub_237EF8F00();
      v138 = *v137;
      sub_237EF8260();
      v139 = OUTLINED_FUNCTION_29_15();
      v136(v139);
      sub_237EF8DF0();
      if (v138)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = OUTLINED_FUNCTION_8_63();
          sub_237D0C484(v143, v144, v145, v146);
          v134 = v147;
        }

        v141 = v134[2];
        v140 = v134[3];
        v142 = v141 + 1;
        if (v141 >= v140 >> 1)
        {
          v148 = OUTLINED_FUNCTION_17_0(v140);
          v504 = v149;
          sub_237D0C484(v148, v149, 1, v134);
          v142 = v504;
          v134 = v150;
        }

        v134[2] = v142;
        v134[v141 + 4] = v138;
      }
    }

    sub_237C9A114(v119, &qword_27DEB18F8);
    (v501[1])(v128, v120);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED98);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {

    v151 = v496;
    OUTLINED_FUNCTION_16_41();
    v152 = v494;
    (*(v497 + 16))(v114, v151, v494);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v153, v154);
    v155 = v495;
    sub_237EF86F0();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v156, v157);
    v134 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_55_7();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_44_14();
      OUTLINED_FUNCTION_35_14();
      v158 = OUTLINED_FUNCTION_29_15();
      v3(v158);
      sub_237EF8DF0();
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = OUTLINED_FUNCTION_8_63();
          sub_237D0C460(v161, v162, v163, v164);
          v134 = v165;
        }

        OUTLINED_FUNCTION_21_35();
        if (v160)
        {
          v166 = OUTLINED_FUNCTION_5_2(v159);
          sub_237D0C460(v166, v167, v168, v134);
          v134 = v169;
        }

        OUTLINED_FUNCTION_20_34();
      }
    }

    sub_237C9A114(v155, &qword_27DEB43D0);
    (*(v497 + 8))(v496, v152);
LABEL_29:
    if (v134[2])
    {
LABEL_30:
      sub_237EF8260();

      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v170 + 8))(v506);

      return;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {

    v171 = v492;
    OUTLINED_FUNCTION_16_41();
    v172 = v489[0];
    (*(v493 + 16))(v105, v171, v489[0]);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v173, v174);
    v175 = v489[1];
    sub_237EF86F0();
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v176, v177);
    v178 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_55_7();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_44_14();
      OUTLINED_FUNCTION_35_14();
      v179 = OUTLINED_FUNCTION_29_15();
      v3(v179);
      sub_237EF8DF0();
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = OUTLINED_FUNCTION_8_63();
          sub_237D0C43C(v181, v182, v183, v184);
          v178 = v185;
        }

        OUTLINED_FUNCTION_21_35();
        if (v160)
        {
          v186 = OUTLINED_FUNCTION_5_2(v180);
          sub_237D0C43C(v186, v187, v188, v178);
          v178 = v189;
        }

        OUTLINED_FUNCTION_20_34();
      }
    }

    sub_237C9A114(v175, &qword_27DEB18D8);
    (*(v493 + 8))(v492, v172);
    if (v178[2])
    {
      v190 = OUTLINED_FUNCTION_33_17();
      sub_237C85534(v190, v191, v192);
      goto LABEL_30;
    }

LABEL_7:
    sub_237EF6310();
    OUTLINED_FUNCTION_3_11();
    (*(v130 + 8))(v506);

    return;
  }

  v193 = v487;
  if (swift_dynamicCastMetatype())
  {

    OUTLINED_FUNCTION_29_18();
    sub_237EF62E0();
    OUTLINED_FUNCTION_63_3();
    v194 = OUTLINED_FUNCTION_31_0();
    v195(v194);
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v196, v197);
    v198 = v483;
    sub_237EF86F0();
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v199, v200);
    v504 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_20(&v511);
    while (1)
    {
      v201 = v500;
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      v202 = sub_237EF8F00();
      sub_237C9E294(v203, v498, &qword_27DEAEA78);
      v204 = OUTLINED_FUNCTION_29_15();
      v202(v204);
      OUTLINED_FUNCTION_33_12();
      sub_237EF8DF0();
      v205 = v499;
      OUTLINED_FUNCTION_22_31();
      sub_237CF9FF0(v206, v207, v208);
      OUTLINED_FUNCTION_38_12(v205);
      if (v135)
      {
        OUTLINED_FUNCTION_61_5(v205);
      }

      else
      {
        OUTLINED_FUNCTION_49_11();
        v198(v482, v205, v193);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v212 = OUTLINED_FUNCTION_8_1();
          sub_237D0C414(v212, v213, v214, v215);
          v504 = v216;
        }

        OUTLINED_FUNCTION_15_37();
        if (v160)
        {
          v217 = OUTLINED_FUNCTION_5_2(v210);
          sub_237D0C414(v217, v218, v219, v504);
          v504 = v220;
        }

        OUTLINED_FUNCTION_47_11();
        v211 = OUTLINED_FUNCTION_10_51(&v511);
        v193 = v487;
        v198(v211, v482, v487);
        v198 = v483;
      }
    }

    sub_237C9A114(v198, &qword_27DEB1960);
    OUTLINED_FUNCTION_18_25();
    v221(v484, v201);
    OUTLINED_FUNCTION_29_18();
    sub_237CA3640(v504);

    OUTLINED_FUNCTION_38_12(v201);
    if (v135)
    {
      sub_237C9A114(v201, &qword_27DEAEA78);
      v241 = MEMORY[0x277D84F90];
    }

    else
    {
      v241 = sub_237EF7E20();
      OUTLINED_FUNCTION_18_25();
      v242(v201, v193);
    }

    OUTLINED_FUNCTION_53_9();
    if (!v160)
    {
      if (!v243)
      {
        goto LABEL_7;
      }

      goto LABEL_165;
    }

    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0458);
  OUTLINED_FUNCTION_31_0();
  if (swift_dynamicCastMetatype())
  {

    OUTLINED_FUNCTION_16_41();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_36_17();
    v222();
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v223, v224);
    OUTLINED_FUNCTION_42_14();
    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_33_12();
    sub_237D5D274(v225, v226);
    v227 = MEMORY[0x277D84F90];
LABEL_59:
    v228 = v478;
    v229 = v477[2];
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_30_17();
      if (v135)
      {
        break;
      }

      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_35_14();
      v230 = OUTLINED_FUNCTION_29_15();
      v3(v230);
      OUTLINED_FUNCTION_43_15();
      if (v105)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = OUTLINED_FUNCTION_8_63();
          sub_237D0C3F0(v232, v233, v234, v235);
          v227 = v236;
        }

        OUTLINED_FUNCTION_21_35();
        if (v160)
        {
          v237 = OUTLINED_FUNCTION_5_2(v231);
          sub_237D0C3F0(v237, v238, v239, v227);
          v227 = v240;
        }

        OUTLINED_FUNCTION_20_34();
        goto LABEL_59;
      }
    }

    sub_237C9A114(v228, &qword_27DEB43C0);
    OUTLINED_FUNCTION_18_25();
    v247(v474, v229);
    if (!v227[2])
    {
      goto LABEL_7;
    }

    v248 = OUTLINED_FUNCTION_33_17();
    sub_237C85534(v248, v249, v250);
    sub_237EF8260();

    sub_237EF6310();
    OUTLINED_FUNCTION_3_11();
    (*(v251 + 8))(v506);

    return;
  }

  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_16_41();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v284();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v285, v286);
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_50_11();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v287, v288);
      v289 = MEMORY[0x277D84F90];
LABEL_95:
      v290 = v458;
      v291 = v457;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        OUTLINED_FUNCTION_57_8();
        OUTLINED_FUNCTION_35_14();
        v292 = OUTLINED_FUNCTION_29_15();
        v3(v292);
        OUTLINED_FUNCTION_43_15();
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v294 = OUTLINED_FUNCTION_8_63();
            sub_237D0C3A4(v294, v295, v296, v297);
            v289 = v298;
          }

          OUTLINED_FUNCTION_21_35();
          if (v160)
          {
            v299 = OUTLINED_FUNCTION_5_2(v293);
            sub_237D0C3A4(v299, v300, v301, v289);
            v289 = v302;
          }

          OUTLINED_FUNCTION_20_34();
          goto LABEL_95;
        }
      }

      sub_237C9A114(v290, &qword_27DEB1918);
      OUTLINED_FUNCTION_18_25();
      v308(v454, v291);
      if (!v289[2])
      {
        goto LABEL_7;
      }

LABEL_138:
      v361 = OUTLINED_FUNCTION_33_17();
      sub_237C85534(v361, v362, v363);
      sub_237EF8260();

      goto LABEL_7;
    }

    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_36_17();
      v309();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v310, v311);
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v312, v313);
      v504 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_32_20(v477);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v314 = v480;
        v315 = sub_237EF8F00();
        v316 = v472;
        OUTLINED_FUNCTION_22_31();
        sub_237C9E294(v317, v318, v319);
        v320 = OUTLINED_FUNCTION_29_15();
        v315(v320);
        OUTLINED_FUNCTION_45_13();
        OUTLINED_FUNCTION_54_7(v316, v508);
        v321 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_26_14(v321, v322, &v500);
        if (v135)
        {
          OUTLINED_FUNCTION_61_5(v479);
        }

        else
        {
          OUTLINED_FUNCTION_49_11();
          v314(v446, v479, v473);
          v323 = swift_isUniquelyReferenced_nonNull_native();
          if ((v323 & 1) == 0)
          {
            v326 = OUTLINED_FUNCTION_8_1();
            sub_237D0C37C(v326, v327, v328, v329);
            v504 = v330;
          }

          OUTLINED_FUNCTION_15_37();
          if (v160)
          {
            v331 = OUTLINED_FUNCTION_5_2(v324);
            sub_237D0C37C(v331, v332, v333, v504);
            v504 = v334;
          }

          OUTLINED_FUNCTION_47_11();
          v325 = OUTLINED_FUNCTION_10_51(v477);
          v314(v325, v446, v473);
        }
      }

      sub_237C9A114(v481, &qword_27DEB1990);
      OUTLINED_FUNCTION_18_25();
      v335(v444, v480);
      v336 = OUTLINED_FUNCTION_30_29();
      sub_237CA3668(v336);

      v337 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26_14(v337, v338, &v500);
      if (v135)
      {
        sub_237C9A114(v447, &qword_27DEAD600);
        v241 = MEMORY[0x277D84F90];
      }

      else
      {
        v356 = v473;
        v357 = v447;
        v241 = sub_237EF7E20();
        OUTLINED_FUNCTION_18_25();
        v358(v357, v356);
      }

      OUTLINED_FUNCTION_53_9();
      if (!v160)
      {
        if (!v359)
        {
          goto LABEL_7;
        }

        goto LABEL_165;
      }

      goto LABEL_69;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_16_41();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v339();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v340, v341);
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_50_11();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v342, v343);
      v344 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        sub_237EF8F00();
        OUTLINED_FUNCTION_35_14();
        v345 = OUTLINED_FUNCTION_29_15();
        v3(v345);
        OUTLINED_FUNCTION_43_15();
        if (v105)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v347 = OUTLINED_FUNCTION_8_63();
            sub_237D0BE9C(v347, v348, v349, v350);
            v344 = v351;
          }

          OUTLINED_FUNCTION_21_35();
          if (v160)
          {
            v352 = OUTLINED_FUNCTION_5_2(v346);
            sub_237D0BE9C(v352, v353, v354, v344);
            v344 = v355;
          }

          OUTLINED_FUNCTION_20_34();
        }
      }

      sub_237C9A114(v471, &qword_27DEB1938);
      OUTLINED_FUNCTION_18_25();
      v360(v441, v470);
      if (!v344[2])
      {
        goto LABEL_7;
      }

      goto LABEL_138;
    }

    if (swift_dynamicCastMetatype())
    {

      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_37_17();
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_36_17();
      v364();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v365, v366);
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v367, v368);
      v504 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_32_20(v467);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v369 = v460;
        v370 = sub_237EF8F00();
        v371 = v452;
        OUTLINED_FUNCTION_22_31();
        sub_237C9E294(v372, v373, v374);
        v375 = OUTLINED_FUNCTION_29_15();
        v370(v375);
        OUTLINED_FUNCTION_45_13();
        OUTLINED_FUNCTION_54_7(v371, &v488);
        v376 = OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_26_14(v376, v377, &v481);
        if (v135)
        {
          OUTLINED_FUNCTION_61_5(v459);
        }

        else
        {
          OUTLINED_FUNCTION_49_11();
          v369(v438, v459, v453);
          v378 = swift_isUniquelyReferenced_nonNull_native();
          if ((v378 & 1) == 0)
          {
            v381 = OUTLINED_FUNCTION_8_1();
            sub_237D0C25C(v381, v382, v383, v384);
            v504 = v385;
          }

          OUTLINED_FUNCTION_15_37();
          if (v160)
          {
            v386 = OUTLINED_FUNCTION_5_2(v379);
            sub_237D0C25C(v386, v387, v388, v504);
            v504 = v389;
          }

          OUTLINED_FUNCTION_47_11();
          v380 = OUTLINED_FUNCTION_10_51(v467);
          v369(v380, v438, v453);
        }
      }

      sub_237C9A114(v461, &qword_27DEB19B8);
      OUTLINED_FUNCTION_18_25();
      v390(v435[8], v460);
      v391 = OUTLINED_FUNCTION_30_29();
      sub_237CA367C(v391);

      v392 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26_14(v392, v393, &v481);
      if (v135)
      {
        sub_237C9A114(v436, &qword_27DEAEAA0);
        v241 = MEMORY[0x277D84F90];
      }

      else
      {
        v408 = v453;
        v409 = v436;
        v241 = sub_237EF7E20();
        OUTLINED_FUNCTION_18_25();
        v410(v409, v408);
      }

      OUTLINED_FUNCTION_53_9();
      if (!v160)
      {
        if (!v411)
        {
          goto LABEL_7;
        }

LABEL_165:
        sub_237C85534(0, 1, v241);

        sub_237EF6310();
        OUTLINED_FUNCTION_3_11();
        (*(v412 + 8))(v506);
        return;
      }

LABEL_69:

      sub_237C84150();
      v244 = swift_allocError();
      *v245 = v241;
LABEL_70:
      v245[1] = 0xD000000000000031;
      v245[2] = 0x8000000237F000C0;
      v245[3] = 0;
      OUTLINED_FUNCTION_59_9(v244, v245);
LABEL_71:
      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v246 + 8))(v506);
      return;
    }

    sub_237C75918(0, &qword_27DEAF160);
    OUTLINED_FUNCTION_31_0();
    if (swift_dynamicCastMetatype())
    {
      v394 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_16_41();
      v510 = v394;
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_31_19();
      OUTLINED_FUNCTION_36_17();
      v395();
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v396, v397);
      OUTLINED_FUNCTION_42_14();
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_33_12();
      sub_237D5D274(v398, v399);
      v400 = v394;
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_30_17();
        if (v135)
        {
          break;
        }

        v401 = sub_237EF8F00();
        v403 = *v402;
        v404 = *v402;
        v405 = OUTLINED_FUNCTION_29_15();
        v401(v405);
        v406 = sub_237EF8DF0();
        if (v403)
        {
          MEMORY[0x2383E09D0](v406);
          v407 = *((v510 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v510 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v407 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v407);
            sub_237EF8980();
          }

          sub_237EF89F0();
          v400 = v510;
        }
      }

      sub_237C9A114(v451, &qword_27DEB19D8);
      OUTLINED_FUNCTION_18_25();
      v413(v435[6], v450);
      if (sub_237D6DA5C(v400))
      {
        sub_237C85538(0, (v400 & 0xC000000000000001) == 0, v400);
        if ((v400 & 0xC000000000000001) != 0)
        {
          v414 = MEMORY[0x2383E1490](0, v400);
        }

        else
        {
          v414 = *(v400 + 32);
        }

        v501 = v414;

        v415 = [v501 shape];
        sub_237C75918(0, &qword_280C8CCF8);
        OUTLINED_FUNCTION_9_11();
        v416 = sub_237EF8910();

        v417 = sub_237D6DA5C(v416);
        if (v417)
        {
          v418 = v417;
          v507 = MEMORY[0x277D84F90];
          sub_237C62DB0();
          if (v418 < 0)
          {
            __break(1u);
LABEL_193:
            __break(1u);
            return;
          }

          v419 = 0;
          v420 = v507;
          do
          {
            if ((v416 & 0xC000000000000001) != 0)
            {
              v421 = MEMORY[0x2383E1490](v419, v416);
            }

            else
            {
              v421 = *(v416 + 8 * v419 + 32);
            }

            v422 = v421;
            v423 = [v421 integerValue];

            v507 = v420;
            v425 = *(v420 + 16);
            v424 = *(v420 + 24);
            if (v425 >= v424 >> 1)
            {
              OUTLINED_FUNCTION_17_0(v424);
              sub_237C62DB0();
              v420 = v507;
            }

            ++v419;
            *(v420 + 16) = v425 + 1;
            *(v420 + 8 * v425 + 32) = v423;
          }

          while (v418 != v419);
        }

        else
        {

          v420 = MEMORY[0x277D84F90];
        }

        OUTLINED_FUNCTION_53_9();
        if (v160)
        {

          sub_237C84150();
          v428 = swift_allocError();
          *v429 = v420;
          v429[1] = 0xD000000000000031;
          v429[2] = 0x8000000237F000C0;
          v429[3] = 0;
          OUTLINED_FUNCTION_59_9(v428, v429);

          goto LABEL_71;
        }

        v430 = v501;
        v431 = v505;
        sub_237E0E978(v430);
        v505 = v431;
        if (v431)
        {
          sub_237EF6310();
          OUTLINED_FUNCTION_3_11();
          (*(v433 + 8))(v506);

          return;
        }

        if (v432 != -1)
        {
          sub_237EF6310();
          OUTLINED_FUNCTION_3_11();
          (*(v434 + 8))(v506);

          return;
        }

        goto LABEL_193;
      }

      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v427 + 8))(v506);
    }

    else
    {
      sub_237EF6310();
      OUTLINED_FUNCTION_3_11();
      (*(v426 + 8))(v506);
    }

    return;
  }

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_37_17();
  OUTLINED_FUNCTION_63_3();
  v252 = OUTLINED_FUNCTION_31_0();
  v253(v252);
  OUTLINED_FUNCTION_2_51();
  OUTLINED_FUNCTION_33_12();
  sub_237D5D274(v254, v255);
  OUTLINED_FUNCTION_42_14();
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_1_52();
  OUTLINED_FUNCTION_33_12();
  sub_237D5D274(v256, v257);
  v504 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_32_20(&v493);
LABEL_78:
  v258 = v476;
  v259 = v469;
  v260 = v491;
  while (1)
  {
    sub_237EF8DE0();
    OUTLINED_FUNCTION_30_17();
    if (v135)
    {
      break;
    }

    v261 = sub_237EF8F00();
    OUTLINED_FUNCTION_22_31();
    sub_237C9E294(v262, v263, v264);
    v265 = OUTLINED_FUNCTION_29_15();
    v261(v265);
    v260 = v491;
    OUTLINED_FUNCTION_45_13();
    v266 = v490;
    OUTLINED_FUNCTION_22_31();
    sub_237CF9FF0(v267, v268, v269);
    OUTLINED_FUNCTION_38_12(v266);
    if (!v135)
    {
      OUTLINED_FUNCTION_49_11();
      v260(v462, v266, v258);
      v270 = swift_isUniquelyReferenced_nonNull_native();
      if ((v270 & 1) == 0)
      {
        v273 = OUTLINED_FUNCTION_8_1();
        sub_237D0C3C8(v273, v274, v275, v276);
        v504 = v277;
      }

      OUTLINED_FUNCTION_15_37();
      if (v160)
      {
        v278 = OUTLINED_FUNCTION_5_2(v271);
        sub_237D0C3C8(v278, v279, v280, v504);
        v504 = v281;
      }

      OUTLINED_FUNCTION_47_11();
      v272 = OUTLINED_FUNCTION_10_51(&v493);
      v260(v272, v462, v476);
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_61_5(v266);
  }

  sub_237C9A114(v259, &qword_27DEB43B0);
  OUTLINED_FUNCTION_18_25();
  v282(v463, v260);
  v283 = OUTLINED_FUNCTION_30_29();
  sub_237CA3654(v283);

  OUTLINED_FUNCTION_38_12(v259);
  if (v135)
  {
    sub_237C9A114(v464, &qword_27DEB3970);
    v303 = MEMORY[0x277D84F90];
  }

  else
  {
    v303 = sub_237EF7E20();
    OUTLINED_FUNCTION_18_25();
    v304 = OUTLINED_FUNCTION_31_0();
    v305(v304);
  }

  v306 = *(v303 + 16);
  if (v306 >= 2)
  {

    sub_237C84150();
    v244 = swift_allocError();
    *v245 = v303;
    goto LABEL_70;
  }

  if (!v306)
  {
    goto LABEL_7;
  }

  sub_237C85534(0, 1, v303);

  sub_237EF6310();
  OUTLINED_FUNCTION_3_11();
  (*(v307 + 8))(v506);
}

uint64_t sub_237E0E92C(uint64_t a1, char a2)
{
  result = 4;
  switch(a2)
  {
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E0E978(void *a1)
{
  v2 = a1;
  v3 = [a1 shape];
  sub_237C75918(0, &qword_280C8CCF8);
  OUTLINED_FUNCTION_9_11();
  v4 = sub_237EF8910();

  v5 = sub_237D6DA5C(v4);
  if (v5)
  {
    v6 = v5;
    v17 = MEMORY[0x277D84F90];
    sub_237C62DB0();
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v16 = v2;
    v7 = 0;
    v8 = v17;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383E1490](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v12);
        sub_237C62DB0();
      }

      ++v7;
      *(v17 + 16) = v13 + 1;
      *(v17 + 8 * v13 + 32) = v11;
    }

    while (v6 != v7);

    v2 = v16;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) > 1uLL)
  {

    return 0;
  }

  v1 = &_swift_FORCE_LOAD___swiftOSLog___LinearAlgebra;
  v14 = [v2 dataType];
  if (v14 == 65552)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

LABEL_22:
    OUTLINED_FUNCTION_60_8();

    return v4;
  }

  if (v14 == 65568)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v14 == 131104)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

LABEL_25:

    return 1;
  }

  if (v14 == 65600)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_28:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237F00130);
  [v2 v1[143]];
  type metadata accessor for MLMultiArrayDataType(0);
  sub_237EF9670();
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237E0ECD4@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 1:
      v18 = MEMORY[0x277D250F8];
      goto LABEL_8;
    case 2:
      v18 = MEMORY[0x277D25100];
      goto LABEL_8;
    case 3:
      v18 = MEMORY[0x277D250F0];
      goto LABEL_8;
    case 4:
      sub_237EF8260();
      if (a1)
      {
        sub_237EF6DA0();
        v19 = MEMORY[0x277D25128];
      }

      else
      {
        sub_237EF6D00();
        v19 = MEMORY[0x277D25118];
      }

      (*(v13 + 104))(v17, *v19, v11);
      goto LABEL_11;
    default:
      v18 = MEMORY[0x277D250E8];
LABEL_8:
      (*(v7 + 104))(v10, *v18, v5, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_237F03530;
      *(v20 + 32) = a1;
      sub_237EF8260();
      sub_237EF6CF0();

      (*(v7 + 8))(v10, v5);
LABEL_11:
      OUTLINED_FUNCTION_33_12();
      return sub_237EF7090();
  }
}

uint64_t sub_237E0EF50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373654465707974 && a2 == 0xEE00726F74706972)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E0F020(char a1)
{
  if (a1)
  {
    return 0x6373654465707974;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_237E0F05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB43A0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FDE0();
  sub_237EFA1B0();
  v20 = 0;
  sub_237EF9A10();
  if (!v5)
  {
    v16 = v15;
    v17 = v18;
    v19 = 1;
    sub_237E0FE88();
    sub_237EF9A70();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237E0F1E8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4388);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FDE0();
  OUTLINED_FUNCTION_46_14();
  if (!v1)
  {
    OUTLINED_FUNCTION_19_37();
    v4 = sub_237EF9910();
    sub_237E0FE34();
    OUTLINED_FUNCTION_56_12();
    v6 = OUTLINED_FUNCTION_13_38();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E0F394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E0EF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E0F3BC(uint64_t a1)
{
  v2 = sub_237E0FDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E0F3F8(uint64_t a1)
{
  v2 = sub_237E0FDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E0F434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237E0F1E8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_237E0F48C()
{
  v0 = sub_237EF9890();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_237E0F4D8(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E0F5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E0F48C();
  *a1 = result;
  return result;
}

unint64_t sub_237E0F614@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E0F4D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E0F6F0()
{
  v0 = sub_237EF9890();

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

uint64_t sub_237E0F744(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x54746E656D656C65;
  }
}

uint64_t sub_237E0F7A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E0F6F0();
  *a1 = result;
  return result;
}

uint64_t sub_237E0F7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E0F744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E0F804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E0F6F0();
  *a1 = result;
  return result;
}

uint64_t sub_237E0F82C(uint64_t a1)
{
  v2 = sub_237E0FCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E0F868(uint64_t a1)
{
  v2 = sub_237E0FCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E0F8A4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4360);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FCE4();
  OUTLINED_FUNCTION_46_14();
  if (!v1)
  {
    sub_237E0FD38();
    OUTLINED_FUNCTION_56_12();
    v4 = v10;
    switch(v10)
    {
      case 1u:
        v4 = 1;
        goto LABEL_8;
      case 2u:
        v4 = 2;
        goto LABEL_8;
      case 3u:
        v4 = 3;
        goto LABEL_8;
      case 4u:
      case 5u:
      case 6u:
      case 7u:
        OUTLINED_FUNCTION_19_37();
        v4 = sub_237EF9950();
        v8 = OUTLINED_FUNCTION_13_38();
        v9(v8);
        break;
      default:
LABEL_8:
        v6 = OUTLINED_FUNCTION_13_38();
        v7(v6);
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E0FB0C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4378);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E0FCE4();
  sub_237EFA1B0();
  v17 = sub_237E0E92C(a2, a3);
  v16 = 0;
  sub_237E0FD8C();
  sub_237EF9A70();
  if (!v3 && a3 < 4u)
  {
    v15 = 1;
    sub_237EF9A50();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_237E0FC94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237E0F8A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_237E0FCE4()
{
  result = qword_27DEB4368;
  if (!qword_27DEB4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4368);
  }

  return result;
}

unint64_t sub_237E0FD38()
{
  result = qword_27DEB4370;
  if (!qword_27DEB4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4370);
  }

  return result;
}

unint64_t sub_237E0FD8C()
{
  result = qword_27DEB4380;
  if (!qword_27DEB4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4380);
  }

  return result;
}

unint64_t sub_237E0FDE0()
{
  result = qword_27DEB4390;
  if (!qword_27DEB4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4390);
  }

  return result;
}

unint64_t sub_237E0FE34()
{
  result = qword_27DEB4398;
  if (!qword_27DEB4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4398);
  }

  return result;
}

unint64_t sub_237E0FE88()
{
  result = qword_27DEB43A8;
  if (!qword_27DEB43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB43A8);
  }

  return result;
}

void (*sub_237E0FEE8(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_237E0FEDC(a3);
  sub_237C85538(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x2383E1490](a2, a3);
  }

  *a1 = v7;
  return sub_237E0FF74;
}

_BYTE *storeEnumTagSinglePayload for FeatureDescriptor.FeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_237E10068(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeatureDescriptor.FeatureTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureDescriptor.FeatureTypeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237E101C8(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_237E101E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_237E1020C()
{
  result = qword_27DEB4410;
  if (!qword_27DEB4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4410);
  }

  return result;
}

unint64_t sub_237E10264()
{
  result = qword_27DEB4418;
  if (!qword_27DEB4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4418);
  }

  return result;
}

unint64_t sub_237E102BC()
{
  result = qword_27DEB4420;
  if (!qword_27DEB4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4420);
  }

  return result;
}

unint64_t sub_237E10314()
{
  result = qword_27DEB4428;
  if (!qword_27DEB4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4428);
  }

  return result;
}

unint64_t sub_237E1036C()
{
  result = qword_27DEB4430;
  if (!qword_27DEB4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4430);
  }

  return result;
}

unint64_t sub_237E103C4()
{
  result = qword_27DEB4438;
  if (!qword_27DEB4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4438);
  }

  return result;
}

unint64_t sub_237E1041C()
{
  result = qword_27DEB4440;
  if (!qword_27DEB4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4440);
  }

  return result;
}

unint64_t sub_237E10470()
{
  result = qword_27DEB4448;
  if (!qword_27DEB4448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4448);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_41()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return sub_237EF8260();
}

uint64_t OUTLINED_FUNCTION_37_17()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_42_14()
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_43_15()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_44_14()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_45_13()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_46_14()
{

  return sub_237EFA190();
}

uint64_t OUTLINED_FUNCTION_54_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_237CF9FF0(a1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return sub_237EF8DE0();
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 6;
  *(v2 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_60_8()
{
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1)
{

  return sub_237C9A114(a1, v1);
}

uint64_t ColumnConcatenator.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t ColumnConcatenator.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ColumnConcatenator.concatenatedColumnName.getter()
{
  v1 = *(v0 + 16);
  sub_237EF8260();
  return v1;
}

uint64_t ColumnConcatenator.concatenatedColumnName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ColumnConcatenator.init(columnSelection:concatenatedColumnName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void ColumnConcatenator.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v27 = v26;
  v94 = v28;
  v108 = v29;
  v99 = *(v29 + 16);
  sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v89 = v30;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  v115 = v33;
  v116 = v32;
  v102 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v93 = v34;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  v105 = v36;
  v117 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  v113 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  v112 = v42;
  v43 = sub_237EF61A0();
  OUTLINED_FUNCTION_1();
  v96 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  v106 = v47;
  v48 = *(v20 + 8);
  v103 = *(v20 + 24);
  v104 = *(v20 + 16);
  v118 = *v20;
  v119 = v48;
  v101 = v118;
  HIDWORD(v100) = v48;
  sub_237D520D4(v118, v48);
  v95 = sub_237CACD68(&v118);
  sub_237D52128(v118, v119);
  v97 = v27;
  v49 = sub_237EF6170();
  v50 = *(v49 + 16);
  v107 = v38;
  v98 = v43;
  if (v50)
  {
    v91 = v22;
    v92 = v21;
    v118 = MEMORY[0x277D84F90];
    sub_237C62D90(0, v50, 0);
    v51 = v118;
    v52 = v38 + 16;
    v111 = *(v38 + 16);
    v90 = v49;
    v53 = v49 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v109 = *(v52 + 56);
    v54 = (v52 - 8);
    do
    {
      v111(v112, v53, v117);
      v55 = sub_237EF6300();
      v57 = v56;
      (*v54)(v112, v117);
      v118 = v51;
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_237C62D90(v58 > 1, v59 + 1, 1);
        v51 = v118;
      }

      *(v51 + 16) = v59 + 1;
      v60 = v51 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v53 += v109;
      --v50;
    }

    while (v50);

    v25 = v21;
    v43 = v98;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  sub_237CADF98(v51);
  v61 = OUTLINED_FUNCTION_89_4(&a13);
  v118 = sub_237E15C00(v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3860);
  sub_237C96710(qword_27DEB4450, &qword_27DEB3860);
  sub_237EF6180();

  sub_237EF8A60();
  v123 = sub_237EF8110();
  v118 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237C96710(&qword_27DEAEC30, &qword_27DEAEBD0);
  sub_237EF6180();

  v63 = sub_237EF6170();
  v110 = *(v96 + 8);
  (v110)(v22, v43);
  v64 = 0;
  v65 = *(v63 + 16);
  v66 = v107;
  v67 = (v107 + 8);
  while (v65 != v64)
  {
    if (v64 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    (*(v66 + 16))(v113, v63 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v64, v117);
    sub_237E1128C(v113, v108, v68, v69, v70, v71, v72, v73, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
    if (v25)
    {

      (*v67)(v113, v117);
      v76 = OUTLINED_FUNCTION_97_3();
      v77(v76);

      goto LABEL_32;
    }

    if (v74)
    {
      v118 = v74;
      sub_237EF8A60();
      sub_237EF8A20();
    }

    else
    {
      sub_237EF6120();
    }

    (*v67)(v113, v117);
    ++v64;
    v66 = v107;
  }

  v118 = v123;
  v75 = sub_237EF8A60();
  OUTLINED_FUNCTION_73_4();
  swift_getWitnessTable();
  if (sub_237EF8EC0())
  {
    OUTLINED_FUNCTION_51_12();
    v110();

    (*(v96 + 16))(v94, v97, v75);
LABEL_32:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  sub_237EF8260();
  sub_237EF6100();
  sub_237EF6210();
  v78 = sub_237EF6100();
  if ((v78 & 0x8000000000000000) == 0)
  {
    if (v78)
    {
      v79 = 0;
      v114 = v78;
      while (1)
      {
        v122 = sub_237EF8110();
        sub_237EF8260();
        v80 = sub_237EF8920();
        v118 = v80;
        v81 = sub_237EF8A00();
        while (v80 != v81)
        {
          v82 = sub_237EF89D0();
          sub_237EF8960();
          if (v82)
          {
            sub_237EF8260();
          }

          else
          {
            sub_237EF93A0();
          }

          sub_237EF8A40();
          OUTLINED_FUNCTION_34_9();
          sub_237EF8AC0();

          sub_237EF8A20();
          v81 = sub_237EF8A00();
          v80 = v118;
        }

        v118 = v101;
        v119 = BYTE4(v100);
        v120 = v104;
        v121 = v103;
        v83 = v122;
        if ((sub_237E14CD0(v122) & 1) == 0)
        {
          break;
        }

        ++v79;
        v118 = v83;
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_39_15();
        swift_getWitnessTable();
        sub_237EF7DC0();
        sub_237EF6270();
        (*(v89 + 8))(v115, v116);
        if (v79 == v114)
        {
          goto LABEL_30;
        }
      }

      sub_237D4A59C();
      OUTLINED_FUNCTION_45_0();
      *v85 = 0;
      v85[1] = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_18_25();
      v86(v105, v102);
      v87 = OUTLINED_FUNCTION_97_3();
      v88(v87);
    }

    else
    {
LABEL_30:

      sub_237EF6200();
      sub_237EF6120();
      (*v67)(v112, v117);
      OUTLINED_FUNCTION_18_25();
      v84(v105, v102);
      (*(v96 + 32))(v94, v106, v98);
    }

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

void sub_237E1128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v614 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E8);
  OUTLINED_FUNCTION_3_2(v28, &v550);
  v538 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19D8);
  OUTLINED_FUNCTION_7_35(v32, &v553);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA8);
  v36 = OUTLINED_FUNCTION_3_2(v35, &v580);
  v541 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
  OUTLINED_FUNCTION_3_2(v40, &v587);
  v544 = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44F0);
  OUTLINED_FUNCTION_3_2(v44, &v549);
  v537 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB19B8);
  OUTLINED_FUNCTION_7_35(v48, &v561);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  v54 = OUTLINED_FUNCTION_7_35(v53, &v559);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  v59 = OUTLINED_FUNCTION_3_2(v58, v582);
  v545 = v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_3_2(v63, &v595);
  v547 = v64;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44F8);
  OUTLINED_FUNCTION_3_2(v67, v556);
  v540 = v68;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1990);
  OUTLINED_FUNCTION_7_35(v71, &v566);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17B8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v75);
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  v81 = OUTLINED_FUNCTION_3_2(v80, &v594);
  v548 = v82;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
  OUTLINED_FUNCTION_3_2(v85, &v604);
  v553 = v86;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4500);
  OUTLINED_FUNCTION_3_2(v89, &v558);
  v542 = v90;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB1960);
  OUTLINED_FUNCTION_7_35(v93, &v575);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  v99 = OUTLINED_FUNCTION_7_35(v98, &v573);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  v104 = OUTLINED_FUNCTION_3_2(v103, &v603);
  v564[1] = v105;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v107);
  v108 = *(v25 + 16);
  v109 = *(v25 + 24);
  v613 = v25;
  v110 = v108;
  v615 = v109;
  v111 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v564[0] = v112;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v114);
  v115 = sub_237EF6290();
  v557[1] = swift_getWitnessTable();
  v116 = sub_237EF61E0();
  v117 = OUTLINED_FUNCTION_3_2(v116, &v586);
  v559 = v118;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v120);
  v612 = v111;
  sub_237EF90F0();
  v121 = sub_237EF90F0();
  OUTLINED_FUNCTION_3_2(v121, v583);
  v556[1] = v122;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v124);
  OUTLINED_FUNCTION_99_2(v596);
  v562 = v125;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v127);
  v580 = v115;
  v566 = *(v115 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAE8);
  OUTLINED_FUNCTION_3_2(v130, v597);
  v577 = v131;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAD8);
  OUTLINED_FUNCTION_3_2(v134, &v607);
  v583[1] = v135;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAC8);
  OUTLINED_FUNCTION_3_2(v138, &v612);
  v586 = v139;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAB8);
  OUTLINED_FUNCTION_3_2(v142, &v616);
  v589[1] = v143;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v145);
  a10 = v110;
  v595 = sub_237EF8A60();
  sub_237EF6290();
  v589[3] = swift_getWitnessTable();
  v146 = sub_237EF61E0();
  OUTLINED_FUNCTION_3_2(v146, &a9);
  v590 = v147;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v149);
  OUTLINED_FUNCTION_99_2(&a16);
  v593 = v150;
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  OUTLINED_FUNCTION_3_2(v157, &a14);
  v596[2] = v158;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8);
  OUTLINED_FUNCTION_3_2(v161, &a18);
  v597[1] = v162;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_19();
  v607 = v164;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0);
  OUTLINED_FUNCTION_1();
  v600 = v165;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_19();
  v599 = v167;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D8);
  OUTLINED_FUNCTION_1();
  v601 = v169;
  v602 = v168;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_19();
  v605 = v171;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17E0);
  OUTLINED_FUNCTION_1();
  v603 = v173;
  v604 = v172;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v174);
  v176 = v535 - v175;
  sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v610 = v177;
  v611 = v178;
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v179);
  v181 = v535 - v180;
  MEMORY[0x28223BE20](v182);
  v184 = v535 - v183;
  MEMORY[0x28223BE20](v185);
  v187 = v535 - v186;
  MEMORY[0x28223BE20](v188);
  v190 = v535 - v189;
  MEMORY[0x28223BE20](v191);
  v193 = v535 - v192;
  v194 = v27;
  v609 = sub_237EF62F0();
  v195 = a10;
  if (swift_dynamicCastMetatype())
  {
    v196 = sub_237EF62E0();
    MEMORY[0x28223BE20](v196);
    v197 = v615;
    v535[-4] = v195;
    v535[-3] = v197;
    OUTLINED_FUNCTION_50_12();
    *(v198 - 16) = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    OUTLINED_FUNCTION_1_22();
    v200 = v610;
    swift_getWitnessTable();
    v201 = v614;
    sub_237C9339C();
    if (v201)
    {
      (*(v611 + 8))(v193, v200);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_17_40();
    v219 = v193;
    v220 = v200;
LABEL_155:
    v218(v219, v220);
    goto LABEL_17;
  }

  v535[4] = v190;
  v202 = v604;
  v535[3] = v184;
  v203 = v605;
  v535[2] = v181;
  v204 = v606;
  v535[1] = v21;
  v205 = v607;
  v206 = v608;
  v536 = v194;
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_43_16();
    OUTLINED_FUNCTION_37_18();
    MEMORY[0x28223BE20](v207);
    OUTLINED_FUNCTION_20_35();
    v208 = a10;
    v210 = v614;
    v209 = v615;
    *(v211 - 32) = a10;
    *(v211 - 24) = v209;
    v212 = *(v613 + 32);
    *(v211 - 16) = v212;
    OUTLINED_FUNCTION_44_10();
    sub_237EF6280();
    v213 = (*(v603 + 8))(v176, v202);
    MEMORY[0x28223BE20](v213);
    OUTLINED_FUNCTION_13_39();
    *(v214 - 32) = v208;
    *(v214 - 24) = v209;
    *(v214 - 16) = v212;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    OUTLINED_FUNCTION_1_22();
    v215 = v610;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_36_18();
    sub_237C9339C();
    if (v210)
    {
      v216 = OUTLINED_FUNCTION_29_24();
      v217(v216, v215);
    }

    else
    {
      OUTLINED_FUNCTION_17_40();
      v233(v203, v215);
    }

    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    v221 = v203;
    OUTLINED_FUNCTION_43_16();
    OUTLINED_FUNCTION_85_3();
    MEMORY[0x28223BE20](v222);
    OUTLINED_FUNCTION_20_35();
    v223 = a10;
    v224 = v614;
    v225 = v615;
    *(v226 - 32) = a10;
    *(v226 - 24) = v225;
    v227 = *(v613 + 32);
    *(v226 - 16) = v227;
    v228 = v602;
    sub_237EF6280();
    (*(v601 + 8))(v221, v228);
    OUTLINED_FUNCTION_85_3();
    MEMORY[0x28223BE20](v229);
    OUTLINED_FUNCTION_13_39();
    *(v230 - 32) = v223;
    *(v230 - 24) = v225;
    *(v230 - 16) = v227;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
    OUTLINED_FUNCTION_1_22();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_36_18();
    sub_237C9339C();
    if (!v224)
    {
      OUTLINED_FUNCTION_17_40();
    }

    v231 = OUTLINED_FUNCTION_34_9();
    goto LABEL_12;
  }

  v234 = swift_dynamicCastMetatype();
  v235 = v536;
  v236 = v615;
  if (!v234)
  {
    v249 = swift_dynamicCastMetatype();
    v250 = a10;
    if (v249)
    {
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v251);
      OUTLINED_FUNCTION_20_35();
      *(v252 - 32) = v250;
      *(v252 - 24) = v236;
      v253 = v614;
      v254 = v236;
      v255 = *(v613 + 32);
      *(v252 - 16) = v255;
      OUTLINED_FUNCTION_40_14();
      v256 = v598;
      sub_237EF6280();
      v257 = OUTLINED_FUNCTION_24_29();
      v258(v257, v256);
      OUTLINED_FUNCTION_85_3();
      MEMORY[0x28223BE20](v259);
      OUTLINED_FUNCTION_13_39();
      *(v260 - 32) = v250;
      *(v260 - 24) = v254;
      *(v260 - 16) = v255;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
      OUTLINED_FUNCTION_1_22();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_36_18();
      sub_237C9339C();
      if (v253)
      {
        v232 = *(v611 + 8);
      }

      else
      {
        OUTLINED_FUNCTION_17_40();
      }

      v231 = v206;
      goto LABEL_12;
    }

    if (swift_dynamicCastMetatype())
    {
      v262 = sub_237EF62E0();
      MEMORY[0x28223BE20](v262);
      OUTLINED_FUNCTION_20_35();
      *(v263 - 32) = v250;
      *(v263 - 24) = v236;
      v264 = v614;
      v265 = v236;
      v266 = *(v613 + 32);
      *(v263 - 16) = v266;
      OUTLINED_FUNCTION_44_10();
      v267 = v596[1];
      sub_237EF6280();
      v268 = OUTLINED_FUNCTION_24_29();
      v269(v268, v267);
      OUTLINED_FUNCTION_85_3();
      MEMORY[0x28223BE20](v270);
      OUTLINED_FUNCTION_13_39();
      *(v271 - 32) = v250;
      *(v271 - 24) = v265;
      *(v271 - 16) = v266;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
      OUTLINED_FUNCTION_1_22();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_36_18();
      sub_237C9339C();
      if (v264)
      {
        v231 = OUTLINED_FUNCTION_29_24();
      }

      else
      {
        OUTLINED_FUNCTION_17_40();
        v231 = v203;
      }

LABEL_12:
      v232(v231);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_51_12();
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      v272 = sub_237EF8E80();
      v273 = v616;
      if (v616 >= 2)
      {
        v275 = a10;
        v274 = sub_237EF8A00();
        v272 = sub_237C583C0(v273);
      }

      else
      {
        v274 = 0;
        v275 = a10;
      }

      MEMORY[0x28223BE20](v272);
      OUTLINED_FUNCTION_13_39();
      *(v288 - 32) = v275;
      *(v288 - 24) = v236;
      v290 = *(v289 + 32);
      *(v288 - 16) = v290;
      *(v288 - 8) = v274;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      v291 = v594;
      if (sub_237EF8750())
      {
        v292 = sub_237EF89A0();
        OUTLINED_FUNCTION_23_32(v292);
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v293);
        OUTLINED_FUNCTION_13_39();
        *(v294 - 32) = v275;
        *(v294 - 24) = v236;
        *(v294 - 16) = v290;
        OUTLINED_FUNCTION_4_71();
        v295 = v592;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C();
        OUTLINED_FUNCTION_12_43();
        v296(v291, v295);
        OUTLINED_FUNCTION_18_32();
        v219 = v235;
      }

      else
      {
        v297 = sub_237EF6300();
        v299 = v298;
        sub_237D4A59C();
        OUTLINED_FUNCTION_45_0();
        *v300 = v297;
        v300[1] = v299;
        swift_willThrow();
        OUTLINED_FUNCTION_18_32();
        v219 = v291;
      }

      v220 = v274;
      goto LABEL_155;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
    v276 = OUTLINED_FUNCTION_60_9();
    v277 = v614;
    if (v276)
    {
      v278 = v589[0];
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v279);
      OUTLINED_FUNCTION_20_35();
      v280 = a10;
      *(v281 - 32) = a10;
      *(v281 - 24) = v236;
      OUTLINED_FUNCTION_50_12();
      v283 = v282;
      *(v284 - 16) = v282;
      OUTLINED_FUNCTION_40_14();
      v285 = v589[2];
      OUTLINED_FUNCTION_100_3();
      v614 = v20;
      OUTLINED_FUNCTION_18_25();
      v286(v278, v285);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v287 = v206;
      sub_237EF8E80();
      if (v616 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v287 = 0;
      }

      v309 = v592;
      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v310);
      OUTLINED_FUNCTION_42_15();
      v311 = v615;
      *(v312 - 32) = v280;
      *(v312 - 24) = v311;
      v313 = v283;
      *(v312 - 16) = v283;
      *(v312 - 8) = v287;
      OUTLINED_FUNCTION_2_82();
      v314 = v597[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v315 = v591;
      if (sub_237EF8750())
      {
        v316 = sub_237EF89A0();
        OUTLINED_FUNCTION_23_32(v316);
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v317);
        OUTLINED_FUNCTION_13_39();
        *(v318 - 32) = v280;
        *(v318 - 24) = v311;
        *(v318 - 16) = v235;
        OUTLINED_FUNCTION_4_71();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C();
        OUTLINED_FUNCTION_12_43();
        v319(v313, v309);
        OUTLINED_FUNCTION_18_32();
        v219 = v591;
      }

      else
      {
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v320 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_38_13(v320, v321);
        OUTLINED_FUNCTION_18_32();
        v219 = v315;
      }

      v220 = v314;
      goto LABEL_155;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
    if (OUTLINED_FUNCTION_60_9())
    {
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v301);
      OUTLINED_FUNCTION_20_35();
      v302 = a10;
      *(v303 - 32) = a10;
      *(v303 - 24) = v236;
      OUTLINED_FUNCTION_50_12();
      v613 = v304;
      *(v305 - 16) = v304;
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_100_3();
      v614 = v20;
      OUTLINED_FUNCTION_18_25();
      v306 = OUTLINED_FUNCTION_34_9();
      v307(v306);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v308 = v206;
      sub_237EF8E80();
      if (v616 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v308 = 0;
      }

      v329 = v592;
      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v330);
      OUTLINED_FUNCTION_42_15();
      *(v331 - 32) = v302;
      *(v331 - 24) = v236;
      v332 = v613;
      *(v331 - 16) = v613;
      *(v331 - 8) = v308;
      OUTLINED_FUNCTION_2_82();
      v333 = v597[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v334 = v588;
      if ((sub_237EF8750() & 1) == 0)
      {
        sub_237EF6300();
        OUTLINED_FUNCTION_50_7();
        v339 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_38_13(v339, v340);
        OUTLINED_FUNCTION_18_32();
        v219 = v334;
        v220 = v333;
        goto LABEL_155;
      }

      v335 = sub_237EF89A0();
      OUTLINED_FUNCTION_23_32(v335);
      OUTLINED_FUNCTION_70_6();
      sub_237EF61F0();

      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v336);
      OUTLINED_FUNCTION_13_39();
      *(v337 - 32) = v302;
      *(v337 - 24) = v236;
      *(v337 - 16) = v235;
      OUTLINED_FUNCTION_4_71();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_49_12();
      sub_237C9339C();
      OUTLINED_FUNCTION_12_43();
      v338(v332, v329);
      OUTLINED_FUNCTION_18_32();
      v219 = v588;
      goto LABEL_53;
    }

    v322 = v277;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
    if (OUTLINED_FUNCTION_60_9())
    {
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v323);
      OUTLINED_FUNCTION_20_35();
      *(v324 - 32) = a10;
      *(v324 - 24) = v236;
      v325 = *(v613 + 32);
      *(v324 - 16) = v325;
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_69_7();
      sub_237EF6280();
      v326 = OUTLINED_FUNCTION_24_29();
      v327(v326, v205);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v328 = v250;
      sub_237EF8E80();
      if (v616 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v328 = 0;
      }

      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v350);
      OUTLINED_FUNCTION_42_15();
      v351 = a10;
      v352 = v615;
      *(v353 - 32) = a10;
      *(v353 - 24) = v352;
      *(v353 - 16) = v325;
      *(v353 - 8) = v328;
      OUTLINED_FUNCTION_2_82();
      v354 = v597[0];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      v355 = v585;
      v356 = sub_237EF8750();
      v614 = v322;
      if (v356)
      {
        v357 = sub_237EF89A0();
        OUTLINED_FUNCTION_81_4(v357);
        OUTLINED_FUNCTION_44_10();
        OUTLINED_FUNCTION_70_6();
        sub_237EF61F0();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v358);
        OUTLINED_FUNCTION_13_39();
        *(v359 - 32) = v351;
        *(v359 - 24) = v352;
        *(v359 - 16) = v325;
        OUTLINED_FUNCTION_4_71();
        OUTLINED_FUNCTION_55_8();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        sub_237C9339C();
        OUTLINED_FUNCTION_12_43();
        v360(v322, v325);
      }

      else
      {
        v361 = OUTLINED_FUNCTION_74_3();
        v363 = v362;
        sub_237D4A59C();
        OUTLINED_FUNCTION_45_0();
        *v364 = v361;
        v364[1] = v363;
        swift_willThrow();
      }

      OUTLINED_FUNCTION_18_32();
      v219 = v355;
      v220 = v354;
      goto LABEL_155;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
    if (OUTLINED_FUNCTION_60_9())
    {
      v341 = v575;
      OUTLINED_FUNCTION_61_6();
      v342 = sub_237EF62E0();
      MEMORY[0x28223BE20](v342);
      OUTLINED_FUNCTION_20_35();
      v343 = v615;
      *(v344 - 32) = a10;
      *(v344 - 24) = v343;
      v345 = *(v613 + 32);
      *(v344 - 16) = v345;
      v346 = v584;
      OUTLINED_FUNCTION_69_7();
      sub_237EF6280();
      v347 = OUTLINED_FUNCTION_24_29();
      v348(v347, v205);
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_44_15();
      v349 = v346;
      sub_237EF8E80();
      if (v616 >= 2)
      {
        sub_237EF8A00();
        OUTLINED_FUNCTION_106_2();
      }

      else
      {
        v349 = 0;
      }

      OUTLINED_FUNCTION_88_4();
      MEMORY[0x28223BE20](v368);
      OUTLINED_FUNCTION_42_15();
      v369 = v615;
      *(v370 - 32) = a10;
      *(v370 - 24) = v369;
      *(v370 - 16) = v345;
      *(v370 - 8) = v349;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_37_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_72_5();
      if (sub_237EF8750())
      {
        v371 = a10;
        v372 = sub_237EF89A0();
        OUTLINED_FUNCTION_81_4(v372);
        OUTLINED_FUNCTION_40_14();
        v333 = v597[0];
        OUTLINED_FUNCTION_70_6();
        OUTLINED_FUNCTION_78_2();

        OUTLINED_FUNCTION_37_18();
        MEMORY[0x28223BE20](v373);
        OUTLINED_FUNCTION_13_39();
        v374 = v615;
        *(v375 - 32) = v371;
        *(v375 - 24) = v374;
        *(v375 - 16) = v345;
        OUTLINED_FUNCTION_4_71();
        OUTLINED_FUNCTION_55_8();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_49_12();
        sub_237C9339C();
        OUTLINED_FUNCTION_12_43();
        v376(v535, v345);
        OUTLINED_FUNCTION_18_32();
        v219 = v341;
LABEL_53:
        v220 = v333;
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_50_7();
      v377 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_38_13(v377, v378);
      OUTLINED_FUNCTION_18_32();
      v219 = v584;
      v379 = &a16;
LABEL_154:
      v220 = *(v379 - 32);
      goto LABEL_155;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_43_16();
      OUTLINED_FUNCTION_1_22();
      OUTLINED_FUNCTION_51_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_32_12();
      sub_237EF8E80();
      OUTLINED_FUNCTION_26_14(v235, 1, v596);
      if (v414)
      {
        OUTLINED_FUNCTION_18_25();
        v366 = v574;
        v367 = v583;
      }

      else
      {
        (*(v562 + 32))(v565, v574, v573);
        v383 = OUTLINED_FUNCTION_95_0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v383, v384, v612);
        if (EnumTagSinglePayload != 1)
        {
          v387 = sub_237EF7E20();
          v388 = OUTLINED_FUNCTION_30_30();
          v386 = v389(v388);
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_18_25();
        v366 = v565;
        v367 = v596;
      }

      v386 = v365(v366, *(v367 - 32));
      v387 = MEMORY[0x277D84F90];
LABEL_79:
      MEMORY[0x28223BE20](v386);
      OUTLINED_FUNCTION_13_39();
      v390 = v615;
      *(v391 - 32) = a10;
      *(v391 - 24) = v390;
      OUTLINED_FUNCTION_50_12();
      *(v392 - 16) = v393;
      *(v392 - 8) = v387;
      OUTLINED_FUNCTION_2_82();
      OUTLINED_FUNCTION_55_8();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_53_10();
      v394 = sub_237EF8750();

      if (v394)
      {
        sub_237EF89A0();
        OUTLINED_FUNCTION_39_15();
        v395 = v612;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_32_12();
        sub_237EF7F40();
        OUTLINED_FUNCTION_40_14();
        v396 = v580;
        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_18_25();
        v397(v235, v395);
        v398 = v559;
        v399 = OUTLINED_FUNCTION_71_4();
        v400 = v560;
        v401(v399, v206, v560);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_13_8();
        sub_237EF8A90();
        (*(v398 + 8))(v206, v400);
        v402 = OUTLINED_FUNCTION_24_29();
        v403(v402, v396);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_50_7();
      v404 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_38_13(v404, v405);
      OUTLINED_FUNCTION_18_25();
      v219 = v579[1];
      v379 = &v601;
      goto LABEL_154;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_43_16();
      OUTLINED_FUNCTION_32_12();
      sub_237CA3018(v380);
      OUTLINED_FUNCTION_26_14(v235, 1, &v573);
      if (v414)
      {
        v381 = &qword_27DEB17C0;
        v382 = v589;
      }

      else
      {
        OUTLINED_FUNCTION_51_12();
        sub_237CF9FF0(v409, v410, v411);
        v412 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_26_14(v412, v413, &v604);
        if (!v414)
        {
          v415 = sub_237EF7E20();
          v416 = OUTLINED_FUNCTION_30_30();
          v417(v416);
          goto LABEL_89;
        }

        v381 = &qword_27DEAEA78;
        v382 = &v572;
      }

      sub_237C65484(*(v382 - 32), v381);
      v415 = MEMORY[0x277D84F90];
LABEL_89:
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v418();
      v419 = &unk_237F068D0;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v420, v421);
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v422, v423);
      OUTLINED_FUNCTION_62_5(v579);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_65_6();
        if (v414)
        {
          break;
        }

        v424 = v581;
        v425 = OUTLINED_FUNCTION_77_3();
        OUTLINED_FUNCTION_55_8();
        sub_237C9E294(v426, v427, &qword_27DEAEA78);
        v428 = OUTLINED_FUNCTION_46_15();
        v425(v428);
        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_37_8();
        sub_237C9E294(v429, v430, &qword_27DEAEA78);
        OUTLINED_FUNCTION_26_14(v424, 1, &v604);
        if (v414)
        {
          OUTLINED_FUNCTION_45_14(&v599);
          OUTLINED_FUNCTION_45_14(&v598);
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_89_4(&v604);
        v419 = v579[0];
        v431 = v579[0];
        sub_237EF7E20();
        v432 = OUTLINED_FUNCTION_34_13();
        v433(v432);
        OUTLINED_FUNCTION_64_7();
        if (!v414)
        {
          goto LABEL_100;
        }

        if (v434 && v431 != v415)
        {
          while (1)
          {
            OUTLINED_FUNCTION_63_7();
            if (!v414)
            {
              break;
            }

            if (v435 == 1)
            {
              goto LABEL_99;
            }
          }

LABEL_100:
          sub_237C65484(v578, &qword_27DEAEA78);

LABEL_101:

          sub_237C65484(v581, &qword_27DEB1960);
          OUTLINED_FUNCTION_74_3();
          OUTLINED_FUNCTION_50_7();
          v436 = OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_38_13(v436, v437);
          OUTLINED_FUNCTION_18_25();
          v219 = v569;
          v379 = &v603;
          goto LABEL_154;
        }

LABEL_99:
        sub_237C65484(v578, &qword_27DEAEA78);
      }

      sub_237C65484(v581, &qword_27DEB1960);

      OUTLINED_FUNCTION_6_36(&qword_27DEB1968, &qword_27DEAEA50);
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_9_50(&qword_27DEB4538, &qword_27DEAEA68);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      OUTLINED_FUNCTION_78_2();
      v446 = OUTLINED_FUNCTION_47_12();
      v447(v446);
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v448);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4540, &qword_27DEB4500);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21();
      OUTLINED_FUNCTION_35_15();
      v449 = OUTLINED_FUNCTION_21_36();
      v450(v449, v415);
LABEL_158:
      v219 = OUTLINED_FUNCTION_24_29();
      v220 = v419;
      goto LABEL_155;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_43_16();
      OUTLINED_FUNCTION_31_10();
      sub_237CA3104(v406);
      if (__swift_getEnumTagSinglePayload(v187, 1, v206) == 1)
      {
        v407 = &qword_27DEB17B8;
        v408 = &v571;
      }

      else
      {
        OUTLINED_FUNCTION_51_12();
        sub_237CF9FF0(v441, v442, v443);
        v444 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_26_14(v444, v445, &v595);
        if (!v414)
        {
          v451 = sub_237EF7E20();
          v452 = OUTLINED_FUNCTION_30_30();
          v453(v452);
          goto LABEL_112;
        }

        v407 = &qword_27DEAD600;
        v408 = &v567;
      }

      sub_237C65484(*(v408 - 32), v407);
      v451 = MEMORY[0x277D84F90];
LABEL_112:
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v454();
      v419 = &unk_237F068E0;
      OUTLINED_FUNCTION_2_51();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v455, v456);
      OUTLINED_FUNCTION_104_2();
      OUTLINED_FUNCTION_1_52();
      OUTLINED_FUNCTION_13_8();
      sub_237C96710(v457, v458);
      OUTLINED_FUNCTION_62_5(&v569);
      while (1)
      {
        sub_237EF8DE0();
        OUTLINED_FUNCTION_65_6();
        if (v414)
        {
          break;
        }

        v459 = v570;
        v460 = OUTLINED_FUNCTION_77_3();
        OUTLINED_FUNCTION_55_8();
        sub_237C9E294(v461, v462, &qword_27DEAD600);
        v463 = OUTLINED_FUNCTION_46_15();
        v460(v463);
        OUTLINED_FUNCTION_75_4();
        OUTLINED_FUNCTION_37_8();
        sub_237C9E294(v464, v465, &qword_27DEAD600);
        OUTLINED_FUNCTION_26_14(v459, 1, &v595);
        if (v414)
        {
          OUTLINED_FUNCTION_45_14(&v590);
          OUTLINED_FUNCTION_45_14(&v591);
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_89_4(&v595);
        v419 = v567;
        v466 = v567;
        sub_237EF7E20();
        v467 = OUTLINED_FUNCTION_34_13();
        v468(v467);
        OUTLINED_FUNCTION_64_7();
        if (!v414)
        {
          goto LABEL_123;
        }

        if (v469 && v466 != v451)
        {
          while (1)
          {
            OUTLINED_FUNCTION_63_7();
            if (!v414)
            {
              break;
            }

            if (v470 == 1)
            {
              goto LABEL_122;
            }
          }

LABEL_123:
          sub_237C65484(v568, &qword_27DEAD600);

LABEL_124:

          sub_237C65484(v570, &qword_27DEB1990);
          OUTLINED_FUNCTION_74_3();
          OUTLINED_FUNCTION_50_7();
          v471 = OUTLINED_FUNCTION_45_0();
          OUTLINED_FUNCTION_38_13(v471, v472);
          OUTLINED_FUNCTION_18_25();
          v219 = v552;
          v379 = &v594;
          goto LABEL_154;
        }

LABEL_122:
        sub_237C65484(v568, &qword_27DEAD600);
      }

      sub_237C65484(v570, &qword_27DEB1990);

      OUTLINED_FUNCTION_6_36(&qword_27DEAD2F8, &qword_27DEAD6A0);
      OUTLINED_FUNCTION_31_10();
      OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_9_50(&qword_27DEB4528, &qword_27DEAEA80);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      OUTLINED_FUNCTION_78_2();
      v481 = OUTLINED_FUNCTION_47_12();
      v482(v481);
      OUTLINED_FUNCTION_37_18();
      MEMORY[0x28223BE20](v483);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4530, &qword_27DEB44F8);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21();
      OUTLINED_FUNCTION_35_15();
      v484 = OUTLINED_FUNCTION_21_36();
      v485(v484, v451);
      goto LABEL_158;
    }

    if (!swift_dynamicCastMetatype())
    {
      sub_237C75918(0, &qword_27DEAF160);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_61_6();
      sub_237EF62E0();
      v473 = sub_237CA32DC();
      if (v473 >= 2)
      {
        v508 = v473;
        v509 = [v473 shape];
        sub_237D5CEDC(v508);
        sub_237C75918(0, &qword_280C8CCF8);
        v474 = sub_237EF8910();
      }

      else
      {
        v474 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_91_1();
      v510();
      OUTLINED_FUNCTION_2_51();
      sub_237C96710(v511, &qword_27DEAEAA8);
      OUTLINED_FUNCTION_104_2();
      v512 = *(v539 + 36);
      OUTLINED_FUNCTION_1_52();
      v514 = sub_237C96710(v513, &qword_27DEAEAA8);
      while (1)
      {
        v515 = v554;
        sub_237EF8DE0();
        if (*(v515 + v512) == v616)
        {
          break;
        }

        v516 = sub_237EF8F00();
        v518 = *v517;
        v519 = *v517;
        v520 = OUTLINED_FUNCTION_46_15();
        v516(v520);
        sub_237EF8DF0();
        if (v518)
        {
          v521 = [v519 shape];
          sub_237C75918(0, &qword_280C8CCF8);
          v522 = sub_237EF8910();

          sub_237EF8260();
          LOBYTE(v521) = sub_237C60FA4(v522, v474);

          if (v521)
          {
            continue;
          }
        }

        sub_237C65484(v554, &qword_27DEB19D8);
        OUTLINED_FUNCTION_74_3();
        OUTLINED_FUNCTION_50_7();
        v523 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_38_13(v523, v524);
        OUTLINED_FUNCTION_18_25();
        v219 = v543;
        v379 = &v580;
        goto LABEL_154;
      }

      sub_237C65484(v554, &qword_27DEB19D8);
      v525 = [objc_allocWithZone(MEMORY[0x277CBFF48]) init];
      v616 = v525;
      OUTLINED_FUNCTION_9_50(&qword_27DEB4508, &qword_27DEAEAA8);
      OUTLINED_FUNCTION_40_14();
      OUTLINED_FUNCTION_98_3();
      v526 = v543;
      sub_237EF61F0();

      MEMORY[0x28223BE20](v527);
      OUTLINED_FUNCTION_8_64();
      OUTLINED_FUNCTION_10_52(&qword_27DEB4510, &qword_27DEB44E8);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_32_21();
      OUTLINED_FUNCTION_35_15();
      v528 = OUTLINED_FUNCTION_21_36();
      v529(v528, v525);
      OUTLINED_FUNCTION_18_25();
      v219 = v526;
      v220 = v514;
      goto LABEL_155;
    }

    OUTLINED_FUNCTION_29_18();
    OUTLINED_FUNCTION_43_16();
    OUTLINED_FUNCTION_32_12();
    sub_237CA31F0(v438);
    OUTLINED_FUNCTION_26_14(v235, 1, &v559);
    if (v414)
    {
      v439 = &qword_27DEB17B0;
      v440 = v564;
    }

    else
    {
      OUTLINED_FUNCTION_51_12();
      sub_237CF9FF0(v475, v476, v477);
      v478 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_26_14(v478, v479, &v587);
      if (!v480)
      {
        v486 = sub_237EF7E20();
        v487 = OUTLINED_FUNCTION_30_30();
        v488(v487);
        goto LABEL_134;
      }

      v439 = &qword_27DEAEAA0;
      v440 = v557;
    }

    sub_237C65484(*(v440 - 32), v439);
    v486 = MEMORY[0x277D84F90];
LABEL_134:
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_71_4();
    OUTLINED_FUNCTION_91_1();
    v489();
    v419 = &unk_237F068F0;
    OUTLINED_FUNCTION_2_51();
    OUTLINED_FUNCTION_13_8();
    sub_237C96710(v490, v491);
    OUTLINED_FUNCTION_104_2();
    OUTLINED_FUNCTION_1_52();
    OUTLINED_FUNCTION_13_8();
    sub_237C96710(v492, v493);
    OUTLINED_FUNCTION_62_5(&v563);
    while (1)
    {
      sub_237EF8DE0();
      OUTLINED_FUNCTION_65_6();
      if (v414)
      {
        break;
      }

      v494 = v555;
      v495 = OUTLINED_FUNCTION_77_3();
      OUTLINED_FUNCTION_55_8();
      sub_237C9E294(v496, v497, &qword_27DEAEAA0);
      v498 = OUTLINED_FUNCTION_46_15();
      v495(v498);
      OUTLINED_FUNCTION_75_4();
      OUTLINED_FUNCTION_37_8();
      sub_237C9E294(v499, v500, &qword_27DEAEAA0);
      OUTLINED_FUNCTION_26_14(v494, 1, &v587);
      if (v414)
      {
        OUTLINED_FUNCTION_45_14(&v576);
        OUTLINED_FUNCTION_45_14(&v577);
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_89_4(&v587);
      v419 = v550;
      v501 = v550;
      sub_237EF7E20();
      v502 = OUTLINED_FUNCTION_34_13();
      v503(v502);
      OUTLINED_FUNCTION_64_7();
      if (!v414)
      {
        goto LABEL_145;
      }

      if (v504 && v501 != v486)
      {
        while (1)
        {
          OUTLINED_FUNCTION_63_7();
          if (!v414)
          {
            break;
          }

          if (v505 == 1)
          {
            goto LABEL_144;
          }
        }

LABEL_145:
        sub_237C65484(v551, &qword_27DEAEAA0);

LABEL_146:

        sub_237C65484(v555, &qword_27DEB19B8);
        OUTLINED_FUNCTION_74_3();
        OUTLINED_FUNCTION_50_7();
        v506 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_38_13(v506, v507);
        OUTLINED_FUNCTION_18_25();
        v219 = v546;
        v379 = v582;
        goto LABEL_154;
      }

LABEL_144:
      sub_237C65484(v551, &qword_27DEAEAA0);
    }

    sub_237C65484(v555, &qword_27DEB19B8);

    OUTLINED_FUNCTION_6_36(qword_280C8CD78, &qword_27DEAEA60);
    OUTLINED_FUNCTION_31_10();
    OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_9_50(&qword_27DEB4518, &qword_27DEAEA90);
    OUTLINED_FUNCTION_40_14();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_78_2();
    v530 = OUTLINED_FUNCTION_47_12();
    v531(v530);
    OUTLINED_FUNCTION_37_18();
    MEMORY[0x28223BE20](v532);
    OUTLINED_FUNCTION_8_64();
    OUTLINED_FUNCTION_10_52(&qword_27DEB4520, &qword_27DEB44F0);
    OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_32_21();
    OUTLINED_FUNCTION_35_15();
    v533 = OUTLINED_FUNCTION_21_36();
    v534(v533, v486);
    goto LABEL_158;
  }

  v237 = v599;
  v238 = sub_237EF62E0();
  MEMORY[0x28223BE20](v238);
  OUTLINED_FUNCTION_20_35();
  v239 = v236;
  v240 = a10;
  *(v241 - 32) = a10;
  *(v241 - 24) = v239;
  v242 = v614;
  v243 = *(v613 + 32);
  *(v241 - 16) = v243;
  OUTLINED_FUNCTION_44_10();
  sub_237EF6280();
  v244 = (*(v600 + 8))(v237, v204);
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_13_39();
  *(v245 - 32) = v240;
  *(v245 - 24) = v239;
  *(v245 - 16) = v243;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_22();
  v246 = v610;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_18();
  sub_237C9339C();
  if (v242)
  {
    v247 = OUTLINED_FUNCTION_29_24();
    v248(v247, v246);
  }

  else
  {
    OUTLINED_FUNCTION_17_40();
    v261(v203, v246);
  }

LABEL_17:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E14CD0(uint64_t a1)
{
  v2 = sub_237EF7E90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = sub_237EF90F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v28 = a1;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 1;
  }

  v12 = sub_237EF7E20();
  v25 = *(v3 + 8);
  v26 = v3 + 8;
  result = v25(v10, v2);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_25;
  }

  v23 = v4;
  v14 = v13 != 1;
  v15 = v13 - v14;
  v16 = (v13 - v14) / v13;
  v28 = sub_237EF8920();
  v24 = (v3 + 16);
  v17 = v16 * v13 - v15;
LABEL_6:
  v18 = sub_237EF8A00();
  v19 = v28;
  if (v28 == v18)
  {

    return 1;
  }

  v20 = sub_237EF89D0();
  sub_237EF8960();
  if (v20)
  {
    (*(v3 + 16))(v6, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v2);
  }

  else
  {
    result = sub_237EF93A0();
    if (v23 != 8)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v27 = result;
    (*v24)(v6, &v27, v2);
    swift_unknownObjectRelease();
  }

  sub_237EF8A40();
  v21 = sub_237EF7E20();
  result = v25(v6, v2);
  if (*(v21 + 16) == v13)
  {
    for (i = 4; ; ++i)
    {
      if (i - v13 == 4)
      {

        goto LABEL_6;
      }

      if (__OFADD__(i - 4, 1))
      {
        break;
      }

      if (v17 + i != 4)
      {
        if ((i - 4) >= *(v12 + 16))
        {
          goto LABEL_24;
        }

        if (*(v21 + 8 * i) != *(v12 + 8 * i))
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_20:

  return 0;
}

uint64_t sub_237E1508C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_237D5D1B8();
  sub_237EF83B0();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
}

uint64_t sub_237E1510C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_237D5D20C();
  sub_237EF83B0();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, a1);
}

void sub_237E15290()
{
  OUTLINED_FUNCTION_13_4();
  v23[2] = v1;
  v23[3] = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v23[1] = v8;
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = *(v5 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v7, v9, v17);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    (*(v11 + 8))(v14, v9);
    sub_237C84150();
    v20 = OUTLINED_FUNCTION_45_0();
    *v21 = 0xD000000000000012;
    *(v21 + 8) = 0x8000000237F179A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    swift_willThrow();
    *v3 = v20;
  }

  else
  {
    (*(v15 + 32))(v19, v14, v5);
    sub_237E2A0DC(v5, v5);
    swift_allocObject();
    sub_237EF8940();
    (*(v15 + 16))(v22, v19, v5);
    sub_237D3C4BC();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    sub_237EF7E40();
    (*(v15 + 8))(v19, v5);
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237E1559C(uint64_t *a1@<X4>, unint64_t *a2@<X6>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_237C96710(a2, a1);
  sub_237C9339C();
  *a3 = v6;
}

uint64_t sub_237E1566C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_237F03530;
  sub_237EF8260();
  *(v0 + 32) = sub_237EF8A00();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  return sub_237EF7E40();
}

uint64_t sub_237E1573C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EF7E90();
  v5 = sub_237EF90F0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  (*(v6 + 16))(v13 - v8, a1, v5, v7);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v10 = 0;
  }

  else
  {
    v11 = sub_237EF7E20();
    (*(*(v4 - 8) + 8))(v9, v4);
    v10 = sub_237C60C7C(v11, a2);
  }

  return v10 & 1;
}

void sub_237E158C4()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v13[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v13 - v11;
  sub_237EF7E90();
  (*(v9 + 16))(v12, v5, v7);
  swift_getWitnessTable();
  sub_237C96710(v1, v3);
  sub_237EF7F30();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E15A0C(void **a1)
{
  v1 = *a1;
  sub_237EF7E90();
  v2 = v1;
  swift_getWitnessTable();
  return sub_237EF7F20();
}

uint64_t ColumnConcatenator.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237F00150);
  sub_237EF9670();
  MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00180);
  MEMORY[0x2383E0710](v1, v2);
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237E15C00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49[0] = a1;
    v3 = *(a1 + 16);
    v47 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;
    v48 = sub_237EF8260();
    v46 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v47 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_237EFA120();
      sub_237EF8260();
      sub_237EF8610();
      v9 = sub_237EFA170();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v46;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_237EF9D40() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v49[1] = v5;

      OUTLINED_FUNCTION_68_6();
      v19 = v18 >> 6;
      v20 = 8 * (v18 >> 6);
      if (v21 > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v40 = swift_slowAlloc();
          v41 = sub_237E167E0(v40, v19, (v2 + 56), v19, v2, v11, v49);

          OUTLINED_FUNCTION_105_2();

          return v41;
        }
      }

      v42[0] = v19;
      v42[1] = v42;
      v22 = MEMORY[0x28223BE20](v17);
      v30 = OUTLINED_FUNCTION_56_13(v22, v23, v24, v25, v26, v27, v28, v29, v42[0]);
      memcpy(v30, (v2 + 56), v20);
      v31 = *(v11 + 8 * v12) & ~v13;
      v44 = v11;
      *(v11 + 8 * v12) = v31;
      v32 = *(v2 + 16) - 1;
      v11 = v48;
      v46 = *(v48 + 16);
      v19 = v16;
      while (1)
      {
        v43 = v32;
        v45 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v46)
          {
            v2 = sub_237E168F0(v44, v42[0], v43, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v33 = (v47 + 16 * v19);
          v13 = *v33;
          v12 = v33[1];
          ++v19;
          sub_237EFA120();
          sub_237EF8260();
          sub_237EF8610();
          v34 = sub_237EFA170();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v35 = v34 & v20;
            if (((1 << (v34 & v20)) & *(v4 + 8 * ((v34 & v20) >> 6))) == 0)
            {

              v11 = v48;
              v16 = v45;
              goto LABEL_16;
            }

            v36 = (*(v2 + 48) + 16 * v35);
            if (*v36 == v13 && v36[1] == v12)
            {
              break;
            }

            v38 = sub_237EF9D40();
            v34 = v35 + 1;
          }

          while ((v38 & 1) == 0);

          OUTLINED_FUNCTION_94_3();
          v11 = v48;
          v16 = v45;
          if (v15)
          {
            continue;
          }

          break;
        }

        v32 = v43 - 1;
        if (__OFSUB__(v43, 1))
        {
          break;
        }

        v16 = v19;
        if (v43 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_237E15FC8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v68 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v59 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_237EF8260();
    v15 = 0;
    v61 = v12;
    v62 = v7;
    v63 = v14;
    if (v11)
    {
LABEL_6:
      v16 = v15;
LABEL_11:
      OUTLINED_FUNCTION_83_5();
      v20 = (*(v18 + 48) + ((v16 << 10) | (16 * v19)));
      v22 = *v20;
      v21 = v20[1];
      sub_237EFA120();
      sub_237EF8260();
      sub_237EF8610();
      v23 = sub_237EFA170();
      v24 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v7 = v23 & v24;
        v4 = (v23 & v24) >> 6;
        v8 = 1 << (v23 & v24);
        if ((v8 & *(v13 + 8 * v4)) == 0)
        {

          v15 = v16;
          goto LABEL_6;
        }

        v25 = (*(v5 + 48) + 16 * v7);
        v26 = *v25 == v22 && v25[1] == v21;
        if (v26 || (sub_237EF9D40() & 1) != 0)
        {
          break;
        }

        v23 = v7 + 1;
      }

      v65 = v59;
      v66 = v16;
      v67 = v11;
      v3 = v62;
      v12 = v63;
      v64[0] = v63;
      v64[1] = v62;

      OUTLINED_FUNCTION_68_6();
      v56 = v28 >> 6;
      v2 = 8 * (v28 >> 6);
      if (v29 > 0xD)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v57 = &v55;
        MEMORY[0x28223BE20](v27);
        v38 = OUTLINED_FUNCTION_56_13(v30, v31, v32, v33, v34, v35, v36, v37, v55);
        memcpy(v38, (v5 + 56), v2);
        v39 = *(v7 + 8 * v4) & ~v8;
        v40 = *(v5 + 16);
        v60 = v7;
        *(v7 + 8 * v4) = v39;
        v41 = v40 - 1;
        v42 = v61;
        while (1)
        {
          v58 = v41;
LABEL_23:
          if (!v11)
          {
            break;
          }

LABEL_28:
          OUTLINED_FUNCTION_83_5();
          v45 = (*(v12 + 48) + ((v16 << 10) | (16 * v44)));
          v2 = *v45;
          v46 = v45[1];
          sub_237EFA120();
          sub_237EF8260();
          sub_237EF8610();
          v47 = sub_237EFA170();
          v48 = ~(-1 << *(v5 + 32));
          do
          {
            v4 = v47 & v48;
            v7 = (v47 & v48) >> 6;
            v8 = 1 << (v47 & v48);
            if ((v8 & *(v13 + 8 * v7)) == 0)
            {

              v3 = v62;
              v12 = v63;
              v42 = v61;
              goto LABEL_23;
            }

            v49 = (*(v5 + 48) + 16 * v4);
            if (*v49 == v2 && v49[1] == v46)
            {
              break;
            }

            v51 = sub_237EF9D40();
            v47 = v4 + 1;
          }

          while ((v51 & 1) == 0);

          OUTLINED_FUNCTION_94_3();
          v3 = v62;
          v12 = v63;
          v42 = v61;
          if (v26)
          {
            goto LABEL_23;
          }

          v41 = v58 - 1;
          if (__OFSUB__(v58, 1))
          {
            __break(1u);
          }

          if (v58 == 1)
          {

            v5 = MEMORY[0x277D84FA0];
            goto LABEL_43;
          }
        }

        while (1)
        {
          v43 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v43 >= v42)
          {
            v5 = sub_237E168F0(v60, v56, v58, v5);
            goto LABEL_43;
          }

          v11 = *(v3 + 8 * v43);
          ++v16;
          if (v11)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v53 = swift_slowAlloc();
      v54 = sub_237E16868(v53, v56, (v5 + 56), v56, v5, v7, v64);

      OUTLINED_FUNCTION_105_2();
      v59 = v65;
      v5 = v54;
    }

    else
    {
      v17 = 0;
      while (1)
      {
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_46;
        }

        if (v16 >= v12)
        {
          break;
        }

        v11 = *(v7 + 8 * v16);
        ++v17;
        if (v11)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_43:
    sub_237C9FE9C();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_237E16448(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_237E168F0(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    v14 = sub_237EFA170();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_237EF9D40();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_237E165F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    v16 = sub_237EFA170();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_237EF9D40();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_237E168F0(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_237E167E0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_237E16448(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_237E16868(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_237E165F4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_237E168F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8);
  result = sub_237EF9300();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    result = sub_237EFA170();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_237E16B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558);
      v8 = sub_237EF9300();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        OUTLINED_FUNCTION_93_3();
LABEL_16:
        v15 = *(*(a4 + 48) + (v13 | (v11 << 6)));
        sub_237EFA120();
        sub_237EFA140();
        v16 = sub_237EFA170() & ~(-1 << *(v9 + 32));
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_15_22();
          while (++v17 != v19 || (v18 & 1) == 0)
          {
            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
            if (*(v12 + 8 * v17) != -1)
            {
              OUTLINED_FUNCTION_14_24();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_8_32();
LABEL_25:
        OUTLINED_FUNCTION_12_24();
        *(v12 + v21) |= v22;
        *(*(v9 + 48) + v23) = v15;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_92_3();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_237E16CC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0);
      v8 = sub_237EF9300();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        OUTLINED_FUNCTION_93_3();
LABEL_16:
        v15 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v16 = sub_237EFA110() & ~(-1 << *(v9 + 32));
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_15_22();
          while (++v17 != v19 || (v18 & 1) == 0)
          {
            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
            if (*(v12 + 8 * v17) != -1)
            {
              OUTLINED_FUNCTION_14_24();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_8_32();
LABEL_25:
        OUTLINED_FUNCTION_12_24();
        *(v12 + v21) |= v22;
        *(*(v9 + 48) + 8 * v23) = v15;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_92_3();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_237E16E60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E170CC(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(v1 + 40);
    return sub_237EF8A00() == v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_50(unint64_t *a1, uint64_t *a2)
{

  return sub_237C96710(a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_52(unint64_t *a1, uint64_t *a2)
{

  return sub_237C96710(a1, a2);
}

void OUTLINED_FUNCTION_32_21()
{

  sub_237C9339C();
}

uint64_t OUTLINED_FUNCTION_38_13(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_16()
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_45_14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_237C65484(v3, v1);
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return sub_237EF6300();
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_76_6()
{

  return sub_237EF7F40();
}

uint64_t OUTLINED_FUNCTION_77_3()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return sub_237EF61F0();
}

uint64_t OUTLINED_FUNCTION_100_3()
{

  return sub_237EF6280();
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return sub_237EF86F0();
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x2383E2DF0);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return sub_237C583C0(v0);
}

uint64_t ColumnSelector.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t ColumnSelector.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ColumnSelector.init(_:estimator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v7;
  type metadata accessor for ColumnSelector();
  OUTLINED_FUNCTION_18_33();
  v10 = *(v9 + 32);

  return v10(a4 + v8, a2, a3);
}

uint64_t ColumnSelector.init<A>(_:transformer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  *a5 = *a1;
  *(a5 + 8) = v8;
  type metadata accessor for TransformerToEstimatorAdaptor();
  swift_getWitnessTable();
  type metadata accessor for ColumnSelector();
  return TransformerToEstimatorAdaptor.init(_:)(a2, a3, a4, v9);
}

uint64_t ColumnSelector.init(columns:estimator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0;
  type metadata accessor for ColumnSelector();
  OUTLINED_FUNCTION_18_33();
  v9 = *(v8 + 32);

  return v9(a4 + v7, a2, a3);
}

uint64_t ColumnSelector.fitted(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v4;
  v1[10] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[13] = *(v2 + 32);
  v1[14] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_34_0();
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v9);
  v1[16] = OUTLINED_FUNCTION_27_0();
  v1[17] = *(AssociatedTypeWitness - 8);
  v1[18] = OUTLINED_FUNCTION_27_0();
  v1[19] = *(v3 + 24);
  v10 = sub_237EF6290();
  v1[20] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_27_0();
  v12 = sub_237EF6310();
  v1[23] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF61A0();
  v1[26] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[27] = v15;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237E17D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_49_4();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 216);
  v27 = *(v24 + 224);
  v62 = *(v24 + 208);
  v29 = *(v24 + 96);
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  sub_237EF8230();
  swift_getAssociatedConformanceWitness();
  sub_237E17880();
  OUTLINED_FUNCTION_4_56();
  ColumnSelectorTransformer.init(transformers:columnMapping:)(v30, v31, v32);
  v33 = *(v29 + 8);
  a11 = *v29;
  LOBYTE(a12) = v33;
  *(v24 + 48) = sub_237CACD68(&a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237CAD454();
  sub_237EF6180();

  v34 = sub_237EF6170();
  *(v24 + 232) = v34;
  (*(v28 + 8))(v27, v62);
  v35 = *(v34 + 16);
  *(v24 + 240) = v35;
  *(v24 + 248) = 0;
  result = *(v24 + 232);
  if (v35)
  {
    if (*(result + 16))
    {
      v37 = OUTLINED_FUNCTION_13_40(*(v24 + 200));
      v38(v37);
      sub_237EF8B90();
      v63 = *(v24 + 104);
      sub_237EF62E0();
      v64 = v63 + 24;
      OUTLINED_FUNCTION_15_0();
      v61 = v48 + *v48;
      v49 = swift_task_alloc();
      *(v24 + 256) = v49;
      OUTLINED_FUNCTION_2_82();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_20_2();
      *v49 = v50;
      v49[1] = sub_237E18114;
      OUTLINED_FUNCTION_49_0();

      return v59(v51, v52, v53, v54, v55, v56, v57, v58, v61, v64, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_18();
    v39 = *(v24 + 56);

    *v39 = *(v24 + 16);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v62, a11, a12, a13, a14, a15, a16);
  }

  return result;
}

uint64_t sub_237E18114()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v2 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237E18234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  v17 = v16;
  v18 = v16[24];
  v60 = v16[22];
  v62 = v16[23];
  v19 = v16[21];
  v58 = v16[25];
  v59 = v16[20];
  v20 = v16[17];
  v21 = v16[18];
  v23 = v16[15];
  v22 = v16[16];
  v24 = sub_237EF6300();
  v26 = v25;
  (*(v20 + 16))(v22, v21, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  v16[4] = v24;
  v27 = v16 + 4;
  v27[1] = v26;
  sub_237EF82B0();
  sub_237EF8300();
  (*(v20 + 8))(v21, v23);
  (*(v19 + 8))(v60, v59);
  (*(v18 + 8))(v58, v62);
  v28 = v27[29];
  v29 = v27[26];
  v30 = v27[27] + 1;
  v27[27] = v30;
  result = v27[25];
  if (v30 == v29)
  {
    v32 = v17[7];

    *v32 = *(v17 + 1);

LABEL_6:
    OUTLINED_FUNCTION_49_0();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, v58, v59, v60, v62, a13, a14, a15, a16);
  }

  if (v30 >= *(result + 16))
  {
    __break(1u);
    return result;
  }

  v33 = OUTLINED_FUNCTION_11_47(v17[25]);
  v34(v33);
  sub_237EF8B90();
  if (v28)
  {
    v35 = v17[24];
    v36 = v17[25];
    v37 = v17[23];

    (*(v35 + 8))(v36, v37);

    goto LABEL_6;
  }

  v63 = v17[13];
  sub_237EF62E0();
  v64 = v63 + 24;
  OUTLINED_FUNCTION_15_0();
  v61 = v46 + *v46;
  v47 = swift_task_alloc();
  v17[32] = v47;
  OUTLINED_FUNCTION_2_82();
  swift_getWitnessTable();
  *v47 = v17;
  v47[1] = sub_237E18114;
  OUTLINED_FUNCTION_49_0();

  return v56(v48, v49, v50, v51, v52, v53, v54, v55, v58, v59, v61, v64, a13, a14, a15, a16);
}

uint64_t sub_237E185BC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_33_18();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

void ColumnSelector.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v29 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v26 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v23 = v12;
  v13 = *(v4 + 8);
  sub_237EF8260();
  sub_237EF8260();
  OUTLINED_FUNCTION_34_0();
  sub_237EF8250();
  OUTLINED_FUNCTION_4_72();
  swift_getWitnessTable();
  v14 = v2;
  v15 = sub_237EF8850();

  v30[0] = v15;
  v30[1] = v13;
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v17);
  v18 = *(v16 + 8);
  v19 = sub_237E1AA2C();
  sub_237EF8260();
  v18(v30, &type metadata for SelectHeader, v19, v17, v16);
  if (!v27)
  {
    v20 = 0;
    v28 = *(v15 + 16);
    OUTLINED_FUNCTION_21_37(v26);
    v24 = v15;
    while (v28 != v20)
    {
      if (v20 >= *(v15 + 16))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_37_19();
      sub_237EF82F0();
      if (__swift_getEnumTagSinglePayload(v31, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_9;
      }

      (*v25)(v23, v31, AssociatedTypeWitness);
      OUTLINED_FUNCTION_31_21();
      v21(v23, v14, v29);
      OUTLINED_FUNCTION_29_25();
      v22(v23, AssociatedTypeWitness);
      ++v20;
      v15 = v24;
    }
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_12_6();
}

void ColumnSelector.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v24 = v3;
  v5 = *(v4 + 16);
  v30 = *(v4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v29 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v25 = v12;
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v13);
  v15 = *(v14 + 8);
  v16 = sub_237E1AA80();
  v15(&v33, &type metadata for SelectHeader, &type metadata for SelectHeader, v16, v13, v14);
  if (v0)
  {
LABEL_7:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v27 = v2;
    v17 = *(&v33 + 1);
    v18 = v33;
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_31_2();
    sub_237EF89A0();
    v19 = sub_237EF8230();
    v26 = v5;
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v19, v17, &v33);
    v20 = 0;
    v28 = *(v18 + 16);
    v21 = v18 + 40;
    v22 = v30;
    v23 = v31;
    while (1)
    {
      if (v28 == v20)
      {

        *v24 = v33;
        goto LABEL_7;
      }

      if (v20 >= *(v18 + 16))
      {
        break;
      }

      v32 = *(v22 + 40);
      sub_237EF8260();
      v32(v27, v26, v22);
      ++v20;
      (*(v29 + 16))(v23, v25, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, AssociatedTypeWitness);
      sub_237EF82B0();
      sub_237EF8300();
      (*(v29 + 8))(v25, AssociatedTypeWitness);
      v21 += 16;
      v22 = v30;
    }

    __break(1u);
  }
}

uint64_t sub_237E18D38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return ColumnSelector.fitted(to:eventHandler:)();
}

uint64_t ColumnSelector<>.makeTransformer()@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  v2 = sub_237EF8230();
  OUTLINED_FUNCTION_4_56();
  swift_getAssociatedConformanceWitness();
  v3 = sub_237E17880();

  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v2, v3, a1);
}

uint64_t ColumnSelector<>.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v2;
  v1[7] = v6;
  v1[8] = v7;
  v1[6] = v8;
  v1[13] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_27_0();
  v11 = *(v3 - 8);
  v1[17] = v11;
  v1[18] = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_27_0();
  v1[20] = *(v3 + 24);
  v12 = sub_237EF6290();
  v1[21] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF6310();
  v1[24] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[25] = v15;
  v1[26] = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF61A0();
  v1[27] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[28] = v17;
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

unint64_t sub_237E19140()
{
  v38 = v0;
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 96);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v36 = v6;
  v37 = v5;
  *(v0 + 32) = sub_237CACD68(&v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237CAD454();
  sub_237EF6180();

  v7 = sub_237EF6170();
  *(v0 + 240) = v7;
  (*(v3 + 8))(v2, v4);
  v8 = *(v7 + 16);
  *(v0 + 248) = v8;
  *(v0 + 256) = 0;
  result = *(v0 + 240);
  if (!v8)
  {
    OUTLINED_FUNCTION_32_22();

    sub_237C5EE40(0);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  if (!*(result + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = OUTLINED_FUNCTION_13_40(*(v0 + 208));
  v11(v10);
  sub_237EF8B90();
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 96);
  OUTLINED_FUNCTION_28_25();
  sub_237EF62E0();
  v17 = sub_237EF6300();
  v19 = OUTLINED_FUNCTION_14_48(v17, v18);
  v20(v19, v16, v1);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v0 + 272) = v22;
  *(v22 + 16) = v35;
  *(v22 + 24) = v14;
  v23 = OUTLINED_FUNCTION_22_32(v22, v34);
  v24(v23);
  sub_237C5EE40(0);
  swift_isUniquelyReferenced_nonNull_native();
  result = OUTLINED_FUNCTION_38_14();
  if (__OFADD__(*(v21 + 16), (v25 & 1) == 0))
  {
    goto LABEL_19;
  }

  v26 = v25;
  sub_237EF96F0();
  if ((sub_237EF96B0() & 1) == 0 || (sub_237D2FC30(), (v26 & 1) == (v27 & 1)))
  {
    **(v0 + 48) = *(v0 + 40);
    if ((v26 & 1) == 0)
    {
      sub_237E1AAD4();
      *(v0 + 16) = v33;
      *(v0 + 24) = v4;
      sub_237EF8260();
      sub_237EF96E0();
    }

    OUTLINED_FUNCTION_30_31();
    OUTLINED_FUNCTION_15_0();
    v29 = swift_task_alloc();
    *(v0 + 280) = v29;
    OUTLINED_FUNCTION_2_82();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v29 = v30;
    OUTLINED_FUNCTION_3_78();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_58();

  return sub_237EFA020();
}

uint64_t sub_237E1959C()
{
  OUTLINED_FUNCTION_2_0();
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v7;
  *(v7 + 288) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

unint64_t sub_237E196B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  v20 = *(v16 + 200);
  v19 = *(v16 + 208);
  v21 = *(v16 + 192);
  (*(*(v16 + 176) + 8))(*(v16 + 184), *(v16 + 168));
  (*(v20 + 8))(v19, v21);
  v22 = *(v16 + 288);
  v23 = *(v16 + 248);
  v24 = *(v16 + 256) + 1;
  *(v16 + 256) = v24;
  result = *(v16 + 240);
  if (v24 == v23)
  {

    OUTLINED_FUNCTION_1_89();

    OUTLINED_FUNCTION_3_0();
LABEL_6:
    OUTLINED_FUNCTION_49_0();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (v24 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v26 = OUTLINED_FUNCTION_11_47(*(v16 + 208));
  v27(v26);
  sub_237EF8B90();
  if (v22)
  {
    v28 = OUTLINED_FUNCTION_34_14();
    v29(v28);

    OUTLINED_FUNCTION_1_89();
    OUTLINED_FUNCTION_23_33();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  v38 = *(v16 + 160);
  v39 = *(v16 + 136);
  v40 = *(v16 + 96);
  OUTLINED_FUNCTION_28_25();
  sub_237EF62E0();
  v41 = sub_237EF6300();
  v43 = OUTLINED_FUNCTION_14_48(v41, v42);
  v44(v43, v40, v18);
  v45 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v46 = swift_allocObject();
  *(v16 + 272) = v46;
  *(v46 + 16) = a12;
  *(v46 + 24) = v38;
  v47 = OUTLINED_FUNCTION_22_32(v46, a11);
  v48(v47);
  OUTLINED_FUNCTION_1_89();
  swift_isUniquelyReferenced_nonNull_native();
  result = OUTLINED_FUNCTION_38_14();
  if (__OFADD__(*(v45 + 16), (v49 & 1) == 0))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v50 = v49;
  sub_237EF96F0();
  if ((sub_237EF96B0() & 1) == 0 || (sub_237D2FC30(), (v50 & 1) == (v51 & 1)))
  {
    **(v16 + 48) = *(v16 + 40);
    if ((v50 & 1) == 0)
    {
      sub_237E1AAD4();
      *(v16 + 16) = a9;
      *(v16 + 24) = v17;
      sub_237EF8260();
      sub_237EF96E0();
    }

    v66 = OUTLINED_FUNCTION_30_31() + 24;
    OUTLINED_FUNCTION_15_0();
    v67 = v53 + *v53;
    v54 = swift_task_alloc();
    *(v16 + 280) = v54;
    OUTLINED_FUNCTION_2_82();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v54 = v55;
    OUTLINED_FUNCTION_3_78();
    OUTLINED_FUNCTION_49_0();

    return v64(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, v66, v67, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_49_0();

    return sub_237EFA020();
  }
}

uint64_t sub_237E19AA0()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_32_22();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

void ColumnSelector<>.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  v29 = v0;
  v2 = v1;
  v4 = v3;
  v31 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v33 = v9;
  OUTLINED_FUNCTION_1_1();
  v28 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v25 = v12;
  v13 = *(v4 + 8);
  sub_237EF8260();
  OUTLINED_FUNCTION_4_56();
  sub_237EF8260();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_4_56();
  sub_237EF8250();
  OUTLINED_FUNCTION_4_72();
  swift_getWitnessTable();
  v14 = sub_237EF8850();

  v32[0] = v14;
  v32[1] = v13;
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v16);
  v17 = *(v15 + 8);
  v18 = sub_237E1AA2C();
  sub_237EF8260();
  v17(v32, &type metadata for SelectHeader, v18, v16, v15);
  if (!v29)
  {
    v19 = 0;
    v30 = *(v14 + 16);
    OUTLINED_FUNCTION_21_37(v28);
    v20 = v13;
    v21 = AssociatedTypeWitness;
    v26 = v14;
    while (v30 != v19)
    {
      if (v19 >= *(v14 + 16))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }

      v22 = v20;
      OUTLINED_FUNCTION_37_19();
      sub_237EF82F0();
      if (__swift_getEnumTagSinglePayload(v33, 1, v21) == 1)
      {
        goto LABEL_9;
      }

      (*v27)(v25, v33, v21);
      OUTLINED_FUNCTION_31_21();
      v23(v25, v2, v31);
      OUTLINED_FUNCTION_29_25();
      v24(v25, v21);
      ++v19;
      v20 = v22;
      v14 = v26;
    }
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_12_6();
}

void ColumnSelector<>.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v23 = v3;
  v32 = v4;
  v30 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v25 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v24 = v12;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v14);
  v15 = *(v13 + 8);
  v16 = sub_237E1AA80();
  v15(&v34, &type metadata for SelectHeader, &type metadata for SelectHeader, v16, v14, v13);
  if (v0)
  {
LABEL_7:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v28 = v2;
    v17 = v34;
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_31_2();
    sub_237EF89A0();
    v18 = sub_237EF8230();
    v19 = v30;
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v18, *(&v17 + 1), &v34);
    v20 = 0;
    v29 = *(v17 + 16);
    v21 = v32;
    v27 = (v25 + 16);
    v26 = (v25 + 8);
    for (i = v17 + 40; ; i += 16)
    {
      if (v29 == v20)
      {

        *v23 = v34;
        goto LABEL_7;
      }

      if (v20 >= *(v17 + 16))
      {
        break;
      }

      v33 = *(v21 + 40);
      sub_237EF8260();
      v33(v28, v19, v21);
      ++v20;
      (*v27)(v31, v24, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, AssociatedTypeWitness);
      sub_237EF82B0();
      sub_237EF8300();
      (*v26)(v24, AssociatedTypeWitness);
      v19 = v30;
    }

    __break(1u);
  }
}

uint64_t sub_237E1A2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D6E6D756C6F63 && a2 == 0xED0000676E697070)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E1A370(char a1)
{
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x736E6D756C6F63;
  }
}

uint64_t sub_237E1A3B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4570);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1B014();
  sub_237EFA1B0();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237CAD3E8(&qword_27DEAEBD8);
  sub_237EF9A70();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0);
    sub_237DD8E28(&qword_27DEB37C8);
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_237E1A5BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4580);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1B014();
  sub_237EFA190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  HIBYTE(v8) = 0;
  sub_237CAD3E8(&qword_27DEAEC28);
  sub_237EF9970();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0);
  HIBYTE(v8) = 1;
  sub_237DD8E28(qword_27DEB37D0);
  sub_237EF9970();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237E1A830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237DF0088;

  return ColumnSelector<>.update(_:with:eventHandler:)();
}

uint64_t sub_237E1A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E1A96C(uint64_t a1)
{
  v2 = sub_237E1B014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1A9A8(uint64_t a1)
{
  v2 = sub_237E1B014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E1A9E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E1A5BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_237E1AA2C()
{
  result = qword_27DEB4560;
  if (!qword_27DEB4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4560);
  }

  return result;
}

unint64_t sub_237E1AA80()
{
  result = qword_27DEB4568;
  if (!qword_27DEB4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4568);
  }

  return result;
}

uint64_t sub_237E1AAD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for ColumnSelector();
  OUTLINED_FUNCTION_18(v4);
  v6 = v0 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_237E19B88(v6, v1, v2, v3);
}

uint64_t sub_237E1AB70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E1ABAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E1AC2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFD)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237E1ADAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFD)
  {
    v9 = 253;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFD)
          {
            v21 = &a1[v10 + 9] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if (a2 > 0xFD)
          {
            a1[8] = 0;
            *a1 = (a2 - 254);
          }

          else
          {
            a1[8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_237E1B014()
{
  result = qword_27DEB4578;
  if (!qword_27DEB4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E1B148()
{
  result = qword_27DEB4588;
  if (!qword_27DEB4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4588);
  }

  return result;
}

unint64_t sub_237E1B1A0()
{
  result = qword_27DEB4590;
  if (!qword_27DEB4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4590);
  }

  return result;
}

unint64_t sub_237E1B1F8()
{
  result = qword_27DEB4598;
  if (!qword_27DEB4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_89()
{

  return sub_237C5EE40(sub_237E1AAD4);
}

void OUTLINED_FUNCTION_21_37(uint64_t a1@<X8>)
{
  *(v3 - 168) = v2 + 32;
  *(v3 - 160) = v1;
  *(v3 - 152) = a1 + 8;
}

uint64_t OUTLINED_FUNCTION_23_33()
{
}

uint64_t OUTLINED_FUNCTION_37_19()
{
  v3 = *v0;
  *(v1 - 96) = *(v0 - 1);
  *(v1 - 88) = v3;

  return sub_237EF8260();
}

unint64_t OUTLINED_FUNCTION_38_14()
{
  *(v0 + 40) = *v1;

  return sub_237D2FC30();
}

void *sub_237E1B444()
{
  v3 = OUTLINED_FUNCTION_1_90();
  v4 = sub_237E1B8F0(v3, &selRef_predictedFeatureName);
  if (v5 && (v6 = v4, v7 = v5, v8 = [v1 (v2 + 1510)], v9 = objc_msgSend(v8, sel_outputDescriptionsByName), v8, sub_237E1B8AC(), v10 = sub_237EF8210(), v9, v0 = sub_237DD7100(v6, v7, v10), , , v0))
  {
    if (([v0 type] | 2) != 3)
    {
      sub_237CCD12C();
      v11 = OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_0_73(xmmword_237F17CC0, v11, v12);
    }
  }

  else
  {
    sub_237CCD12C();
    OUTLINED_FUNCTION_45_0();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 8;
    swift_willThrow();
  }

  return v0;
}

void *sub_237E1B598()
{
  v2 = OUTLINED_FUNCTION_1_90();
  sub_237E1B8F0(v2, &selRef_predictedProbabilitiesName);
  if (v3 && (v4 = OUTLINED_FUNCTION_3_79(), v5 = [v4 outputDescriptionsByName], v4, sub_237E1B8AC(), v6 = sub_237EF8210(), v5, v0 = sub_237DD7100(v0, v1, v6), , , v0))
  {
    if ([v0 type] == 6 && (v7 = objc_msgSend(v0, sel_dictionaryConstraint)) != 0)
    {
      v8 = v7;
      if (([v7 keyType] | 2) != 3)
      {
        sub_237CCD12C();
        v14 = OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_0_73(xmmword_237F17CC0, v14, v15);
      }
    }

    else
    {
      v11 = [v0 type];
      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v12 = 6;
      *(v12 + 8) = v11;
      *(v12 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_237CCD12C();
    v9 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_0_73(xmmword_237F08210, v9, v10);
  }

  return v0;
}

void *sub_237E1B75C()
{
  v2 = OUTLINED_FUNCTION_1_90();
  sub_237E1B8F0(v2, &selRef_predictedFeatureName);
  if (v3 && (v4 = OUTLINED_FUNCTION_3_79(), v5 = [v4 outputDescriptionsByName], v4, sub_237E1B8AC(), v6 = sub_237EF8210(), v5, v0 = sub_237DD7100(v0, v1, v6), , , v0))
  {
    if ([v0 type] != 2)
    {
      v7 = [v0 type];
      sub_237CCD12C();
      OUTLINED_FUNCTION_45_0();
      *v8 = 2;
      *(v8 + 8) = v7;
      *(v8 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_237CCD12C();
    v9 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_0_73(xmmword_237F17CD0, v9, v10);
  }

  return v0;
}

unint64_t sub_237E1B8AC()
{
  result = qword_27DEAF298[0];
  if (!qword_27DEAF298[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DEAF298);
  }

  return result;
}

uint64_t sub_237E1B8F0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_237EF8590();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_73(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 8;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_1_90()
{

  return [v0 modelDescription];
}

id OUTLINED_FUNCTION_3_79()
{

  return [v0 (v1 + 1510)];
}

uint64_t sub_237E1B9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E1BAA4(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_237E1BAD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45B8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1C348();
  sub_237EFA1B0();
  v12 = 0;
  sub_237EF9A50();
  if (!v1)
  {
    v11 = 1;
    sub_237EF9A50();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237E1BC2C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_237E1C348();
  OUTLINED_FUNCTION_2_83();
  if (!v1)
  {
    v4 = sub_237EF9950();
    sub_237EF9950();
    v5 = OUTLINED_FUNCTION_1_91();
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E1BDA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237E1BE28(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45A0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1C2F4();
  sub_237EFA1B0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
  sub_237E1C39C(&qword_27DEB45B0);
  sub_237EF9A70();
  return (*(v6 + 8))(v9, v4);
}

void *sub_237E1BF98(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1C2F4();
  OUTLINED_FUNCTION_2_83();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
    sub_237E1C39C(&qword_27DEB45D8);
    sub_237EF9970();
    v5 = OUTLINED_FUNCTION_1_91();
    v6(v5);
    v4 = v8;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v4;
}

uint64_t sub_237E1C11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1B9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E1C144(uint64_t a1)
{
  v2 = sub_237E1C348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1C180(uint64_t a1)
{
  v2 = sub_237E1C348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E1C1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E1BC2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_237E1C208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1BDA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237E1C234(uint64_t a1)
{
  v2 = sub_237E1C2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1C270(uint64_t a1)
{
  v2 = sub_237E1C2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_237E1C2AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_237E1BF98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_237E1C2F4()
{
  result = qword_27DEB45A8;
  if (!qword_27DEB45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45A8);
  }

  return result;
}

unint64_t sub_237E1C348()
{
  result = qword_27DEB45C0;
  if (!qword_27DEB45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45C0);
  }

  return result;
}

uint64_t sub_237E1C39C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for InlineData.CodingKeys(_BYTE *result, int a2, int a3)
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