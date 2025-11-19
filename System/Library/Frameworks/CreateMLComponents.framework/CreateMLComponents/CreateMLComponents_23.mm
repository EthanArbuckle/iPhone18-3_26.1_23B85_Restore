uint64_t sub_237E5B64C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_237E5B68C(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_101(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_93()
{

  return sub_237EF9AB0();
}

uint64_t sub_237E5B738()
{
  result = type metadata accessor for DenseVector();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DenseMatrix();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237E5B800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
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

  v10 = *(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 64) + v7 + ((*(*(v4 - 8) + 64) + v7 + ((v7 + 48) & ~v7)) & ~v7)) & ~v7) + 1;
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
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void sub_237E5B9A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 48) & ~v10)) & ~v10)) & ~v10) + 1;
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
LABEL_45:
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
          if ((v8 & 0x80000000) != 0)
          {
            v22 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
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
      if (*(*(v6 - 8) + 64) + ((*(*(v6 - 8) + 64) + v10 + ((*(*(v6 - 8) + 64) + v10 + ((v10 + 48) & ~v10)) & ~v10)) & ~v10) != -1)
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
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E5BC30@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v3 = type metadata accessor for OptimizerState();
  sub_237EF8350();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_30();
  OUTLINED_FUNCTION_21_44();
  OUTLINED_FUNCTION_29_30();
  OUTLINED_FUNCTION_21_44();
  *(a1 + *(v3 + 56)) = 0;
  sub_237EF89A0();
  *a1 = DenseVector.init(arrayLiteral:)();
  sub_237EF89A0();
  *(a1 + 8) = DenseVector.init(arrayLiteral:)();
  result = DenseMatrix.init(rowCount:columnCount:)(0, 0);
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_237E5BDC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v92 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v95 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v81 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v94 = v9;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v11);
  v80 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v93 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v99 = v15;
  v77 = a2;
  v16 = *(a2 + 24);
  v79 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v72 - v18);
  v19 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v87 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v96 = v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  *&v90 = &v72 - v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50B8);
  OUTLINED_FUNCTION_1();
  v84 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E5DA00();
  sub_237EFA1B0();
  v102 = *v86;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v33 = swift_allocObject();
  v89 = xmmword_237F03530;
  *(v33 + 16) = xmmword_237F03530;

  *(v33 + 32) = DenseVector.count.getter();
  v88 = v16;
  v34 = v85;
  type metadata accessor for DenseVector();
  swift_getWitnessTable();
  v98 = v6;
  sub_237EF7E40();
  LOBYTE(v102) = 0;
  v100 = v34;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_49();
  v36 = v91;
  sub_237EF9A70();
  if (v36)
  {
    (*(v87 + 8))(v27, v19);
LABEL_5:
    OUTLINED_FUNCTION_11_56();
    v44 = v32;
    v45 = v28;
    return v43(v44, v45);
  }

  v37 = *(v87 + 8);
  v87 += 8;
  v74 = v37;
  v37(v27, v19);
  v102 = v86[1];
  v38 = swift_allocObject();
  v75 = v28;
  v76 = 0;
  v39 = v38;
  *(v38 + 16) = v89;

  *(v39 + 32) = DenseVector.count.getter();
  v28 = v75;
  sub_237EF7E40();
  LOBYTE(v102) = 1;
  OUTLINED_FUNCTION_16_49();
  v40 = v76;
  sub_237EF9A70();
  v41 = v19;
  if (v40)
  {
    OUTLINED_FUNCTION_1_102();
    v42();
    goto LABEL_5;
  }

  v72 = WitnessTable;
  v76 = 0;
  v73 = v32;
  OUTLINED_FUNCTION_1_102();
  v47();
  v48 = v98;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v49 = swift_allocObject();
  v90 = xmmword_237F04760;
  *(v49 + 16) = xmmword_237F04760;
  v50 = v86;
  v51 = v86[2];
  v52 = v86[3];
  *(v49 + 32) = v51;
  *(v49 + 40) = v52;
  OUTLINED_FUNCTION_0_18();
  *&v89 = swift_getWitnessTable();
  sub_237EF7F80();
  v53 = DenseMatrix.indexed()(v51, v52, *(v50 + 32), v50[5], v48, v88);
  DenseMatrix.IndexedSequence.makeIterator()(v53, v55, v54 & 1, v56, v101);

  v92 = type metadata accessor for DenseMatrix.IndexedSequence.Iterator();
  v91 = (v81 + 32);
  v88 = (v80 + 32);
  v57 = (v80 + 16);
  v58 = (v80 + 8);
  v59 = TupleTypeMetadata3;
  v60 = v82;
  while (1)
  {
    v61 = v94;
    DenseMatrix.IndexedSequence.Iterator.next()(v92, v94);
    (*v91)(v60, v61, v95);
    if (__swift_getEnumTagSinglePayload(v60, 1, v59) == 1)
    {
      break;
    }

    v62 = v41;
    v64 = *v60;
    v63 = *(v60 + 1);
    v65 = v98;
    (*v88)(v99, &v60[*(v59 + 64)], v98);
    v66 = swift_allocObject();
    *(v66 + 16) = v90;
    *(v66 + 32) = v64;
    *(v66 + 40) = v63;
    v41 = v62;
    (*v57)(v93, v99, v65);
    sub_237EF7F70();
    (*v58)(v99, v65);
  }

  LOBYTE(v102) = 2;
  v67 = v75;
  v68 = v73;
  v69 = v76;
  sub_237EF9A70();
  if (!v69)
  {
    LOBYTE(v102) = 3;
    sub_237EF9A70();
    OUTLINED_FUNCTION_14_56();
    OUTLINED_FUNCTION_14_56();
    LOBYTE(v102) = 6;
    sub_237EF9A20();
    v71 = v84;
    v74(v96, v41);
    return (*(v71 + 8))(v68, v67);
  }

  OUTLINED_FUNCTION_1_102();
  v70();
  OUTLINED_FUNCTION_11_56();
  v44 = v68;
  v45 = v67;
  return v43(v44, v45);
}

void *sub_237E5C798@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v115 = a4;
  v125 = a1;
  v106 = a5;
  v122 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v9);
  v114 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v111 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v14);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50C8);
  OUTLINED_FUNCTION_1();
  v117 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v126 = &v100 - v17;
  v18 = *(*(*(*(a3 + 16) + 16) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v112 = a3;
  v20 = type metadata accessor for OptimizerState();
  OUTLINED_FUNCTION_1();
  v104 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = (&v100 - v23);
  v124 = *(v25 + 44);
  sub_237EF8350();
  v26 = *(v20 + 48);
  v120 = v18;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v119 = v26;
  OUTLINED_FUNCTION_23_37();
  sub_237EF9D20();
  v105 = v20;
  v27 = *(v20 + 52);
  v28 = v125;
  sub_237EF9FB0();
  v123 = v27;
  v127 = a2;
  v128 = v24;
  OUTLINED_FUNCTION_23_37();
  sub_237EF9D20();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_237E5DA00();
  v29 = v121;
  sub_237EFA190();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    v38 = v122;
    v31 = v119;
LABEL_4:
    v32 = *(v38 + 8);
    v33 = v127;
    v34 = v128;
    v32(v128 + v124, v127);
    v32(v34 + v31, v33);
    return (v32)(v34 + v123, v33);
  }

  LOBYTE(v129) = 0;
  v130 = v115;
  v30 = v114;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_40();
  sub_237EF9970();
  OUTLINED_FUNCTION_0_18();
  WitnessTable = swift_getWitnessTable();
  v129 = sub_237EF7F50();
  v36 = sub_237EF8A60();
  v37 = swift_getWitnessTable();
  v120 = v36;
  v103 = v37;
  v121 = DenseVector.init<A>(scalars:)();
  *v128 = v121;
  OUTLINED_FUNCTION_5_59(1);
  OUTLINED_FUNCTION_18_40();
  sub_237EF9970();
  v38 = v122;
  v129 = sub_237EF7F50();
  v128[1] = DenseVector.init<A>(scalars:)();
  OUTLINED_FUNCTION_5_59(2);
  OUTLINED_FUNCTION_18_40();
  v101 = 0;
  sub_237EF9970();
  OUTLINED_FUNCTION_8_77();
  v39 = *(sub_237EF7E20() + 16);

  if (v39 != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_25;
  }

  v40 = result[4];

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = result[5];

  if (v40 != v41)
  {
LABEL_14:
    v47 = sub_237EF93E0();
    swift_allocError();
    v120 = v48;
    v49 = sub_237EF98C0();
    OUTLINED_FUNCTION_24_34(v49, &v131);
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000041, 0x8000000237F00CB0);
    OUTLINED_FUNCTION_8_77();
    sub_237EF7E20();
    v50 = v30;
    v51 = MEMORY[0x2383E0A10]();
    v52 = v28;
    v54 = v53;

    MEMORY[0x2383E0710](v51, v54);
    v55 = v52;

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v56 = v120;
    sub_237EF93D0();
    (*(*(v47 - 8) + 104))(v56, *MEMORY[0x277D84168], v47);
    swift_willThrow();
    OUTLINED_FUNCTION_20_40();
    v57 = v52[1];
    v57(v110, v50);
    v58 = OUTLINED_FUNCTION_4_82();
    (v57)(v58);
    v59 = OUTLINED_FUNCTION_5_81();
    (v57)(v59);
    v60 = OUTLINED_FUNCTION_9_58();
    v61(v60);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_77();
  v42 = sub_237EF7E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  v100 = xmmword_237F04760;
  *(inited + 16) = xmmword_237F04760;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = result[4];

  *(inited + 32) = v44;
  *(inited + 40) = 1;
  LOBYTE(v44) = sub_237C60C7C(v42, inited);

  swift_setDeallocating();
  if (v44)
  {
    result = sub_237EF7E20();
    v45 = v125;
    if (result[2])
    {

      OUTLINED_FUNCTION_8_77();
      result = sub_237EF7E20();
      v46 = v119;
      if (result[2] >= 2uLL)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v63 = sub_237EF7E50();
  v64 = swift_initStackObject();
  *(v64 + 16) = v100;
  *(v64 + 32) = 1;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v65 = result[4];

  *(v64 + 40) = v65;
  LOBYTE(v65) = sub_237C60C7C(v63, v64);

  swift_setDeallocating();
  if ((v65 & 1) == 0)
  {
    v77 = sub_237EF93E0();
    swift_allocError();
    v79 = v78;
    v80 = sub_237EF98C0();
    OUTLINED_FUNCTION_24_34(v80, &v132);
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000004DLL, 0x8000000237F00D00);
    OUTLINED_FUNCTION_8_77();
    sub_237EF7E50();
    v81 = v30;
    v82 = MEMORY[0x2383E0A10]();
    v84 = v83;

    MEMORY[0x2383E0710](v82, v84);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D84168], v77);
    swift_willThrow();
    v85 = *(v111 + 8);
    v85(v110, v81);
    v86 = OUTLINED_FUNCTION_4_82();
    (v85)(v86);
    v87 = OUTLINED_FUNCTION_5_81();
    (v85)(v87);
    v88 = OUTLINED_FUNCTION_9_58();
    v89(v88);
    v55 = v125;
LABEL_15:
    v31 = v119;
    v62 = v101;
    __swift_destroy_boxed_opaque_existential_1(v55);

    if (!v62)
    {
    }

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_8_77();
  result = sub_237EF7E20();
  v45 = v125;
  v46 = v119;
  if (result[2] >= 2uLL)
  {
LABEL_22:

    v66 = OUTLINED_FUNCTION_30_36();
    OUTLINED_FUNCTION_25_33(v66);
    v67 = v127;
    DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)();
    v68 = v128;
    v128[2] = v69;
    v68[3] = v70;
    *(v68 + 32) = v71 & 1;
    v68[5] = v72;
    OUTLINED_FUNCTION_5_59(3);
    v73 = v109;
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    v74 = v73;
    v75 = *(v38 + 40);
    (v75)(v128 + v124, v74, v67);
    OUTLINED_FUNCTION_5_59(4);
    v76 = v108;
    OUTLINED_FUNCTION_22_36();
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    (v75)(v128 + v46, v76, v67);
    OUTLINED_FUNCTION_5_59(5);
    OUTLINED_FUNCTION_22_36();
    OUTLINED_FUNCTION_26_26();
    sub_237EF9970();
    (v75)(v128 + v123, v107, v127);
    LOBYTE(v129) = 6;
    v90 = v116;
    OUTLINED_FUNCTION_26_26();
    sub_237EF9920();
    OUTLINED_FUNCTION_20_40();
    LOBYTE(v67) = v91;
    v92 = v105;
    v93 = *(v105 + 56);
    v94 = v90;
    v95 = *(v75 + 8);
    v96 = v114;
    v95(v110, v114);
    v95(v113, v96);
    v95(v118, v96);
    OUTLINED_FUNCTION_12_50();
    v97(v126, v94);
    v98 = v128;
    *(v128 + v93) = v67 & 1;
    v99 = v104;
    (*(v104 + 16))(v106, v98, v92);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return (*(v99 + 8))(v98, v92);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_237E5D744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E616973736568 && a2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61756469736572 && a2 == 0xE800000000000000;
        if (v8 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657A695370657473 && a2 == 0xE800000000000000;
            if (v10 || (OUTLINED_FUNCTION_4_36() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x646570706F7473 && a2 == 0xE700000000000000)
            {

              return 6;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_4_36();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237E5D918(char a1)
{
  result = 0x746E696F70;
  switch(a1)
  {
    case 1:
      result = 0x746E656964617267;
      break;
    case 2:
      result = 0x6E616973736568;
      break;
    case 3:
      result = 0x6C61756469736572;
      break;
    case 4:
      result = 0x65756C6176;
      break;
    case 5:
      result = 0x657A695370657473;
      break;
    case 6:
      result = 0x646570706F7473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237E5DA00()
{
  result = qword_27DEB50C0;
  if (!qword_27DEB50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50C0);
  }

  return result;
}

uint64_t sub_237E5DA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E5D744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E5DA84(uint64_t a1)
{
  v2 = sub_237E5DA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E5DAC0(uint64_t a1)
{
  v2 = sub_237E5DA00();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E5DBDC()
{
  result = qword_27DEB50D0;
  if (!qword_27DEB50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50D0);
  }

  return result;
}

unint64_t sub_237E5DC34()
{
  result = qword_27DEB50D8;
  if (!qword_27DEB50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50D8);
  }

  return result;
}

unint64_t sub_237E5DC8C()
{
  result = qword_27DEB50E0;
  if (!qword_27DEB50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_56()
{
  *(v1 - 72) = v0;

  return sub_237EF9A70();
}

uint64_t OUTLINED_FUNCTION_21_44()
{

  return sub_237EF9D20();
}

uint64_t OUTLINED_FUNCTION_24_34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 104) = 0;
  *(v2 - 96) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_30()
{

  return sub_237EF9FB0();
}

uint64_t OUTLINED_FUNCTION_30_36()
{

  return sub_237EF7F50();
}

unint64_t OptimizationError.errorDescription.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000031;
  }
}

unint64_t OptimizationError.debugDescription.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000031;
  }
}

uint64_t OptimizationError.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237E5DFD8()
{
  result = qword_27DEB50E8;
  if (!qword_27DEB50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB50E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OptimizationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237E5E118()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E5E174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (sub_237E87068() <= a1)
  {
    v5 = 1;
  }

  else
  {
    sub_237E8701C();
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v5, 1, a2);
}

uint64_t sub_237E5E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_237EF8D00();
  v7 = sub_237E86E14();
  (*(v5 + 8))(a1, a3);
  return v7;
}

uint64_t sub_237E5E374(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1A0();
  v6 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237EF9DA0();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_237E5E480(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_237EF8A60();
    swift_getWitnessTable();
    sub_237EF9D60();
    swift_getWitnessTable();
    sub_237EF8D00();
    v3 = sub_237E86E14();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_237E5E600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E5E480(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_237E5E63C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  sub_237E5E9F0([a1 dataType], v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_237E5EB60(v9);
    v19 = 1;
LABEL_15:
    v30 = sub_237EF6E30();
    __swift_storeEnumTagSinglePayload(a2, v19, 1, v30);
    return;
  }

  v37 = v16;
  (*(v12 + 32))(v18, v9, v10);
  v20 = [a1 shape];
  sub_237C75918(0, &qword_280C8CCF8);
  v21 = sub_237EF8910();

  v22 = sub_237D6DA5C(v21);
  if (!v22)
  {

LABEL_14:
    (*(v12 + 16))(v37, v18, v10);
    sub_237EF6DD0();
    sub_237E5EBC8([a1 shapeConstraint], v6);
    sub_237EF6E00();

    (*(v12 + 8))(v18, v10);
    v19 = 0;
    goto LABEL_15;
  }

  v23 = v22;
  v38 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_4_83();
  sub_237C62DB0();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v32 = v18;
    v33 = v12;
    v34 = v6;
    v35 = a1;
    v36 = a2;
    v24 = 0;
    v25 = v38;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x2383E1490](v24, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 integerValue];

      v38 = v25;
      v29 = *(v25 + 16);
      if (v29 >= *(v25 + 24) >> 1)
      {
        sub_237C62DB0();
        v25 = v38;
      }

      ++v24;
      *(v25 + 16) = v29 + 1;
      *(v25 + 8 * v29 + 32) = v28;
    }

    while (v23 != v24);

    a1 = v35;
    a2 = v36;
    v12 = v33;
    v6 = v34;
    v18 = v32;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_237E5E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  switch(a1)
  {
    case 65568:
      v11 = MEMORY[0x277D25100];
      goto LABEL_7;
    case 65600:
      v11 = MEMORY[0x277D250F0];
      goto LABEL_7;
    case 131104:
      v11 = MEMORY[0x277D250E8];
LABEL_7:
      (*(v6 + 104))(v10, *v11, v4);
      (*(v6 + 32))(a2, v10, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t sub_237E5EB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237E5EBC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = sub_237EF7D30();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_237EF6DF0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = [a1 type];
  v85 = v10;
  v86 = v16;
  v87 = v12;
  if (v17 != 2)
  {
    if (v17 != 3)
    {

      __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
      return;
    }

    v77 = a1;
    v79 = a2;
    v18 = [a1 sizeRangeForDimension];
    sub_237C75918(0, qword_27DEB50F8);
    v19 = sub_237EF8910();

    v20 = sub_237D6DA5C(v19);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = v20;
      v83 = v5;
      v93 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_4_83();
      sub_237C6348C();
      if (v22 < 0)
      {
        goto LABEL_52;
      }

      v23 = 0;
      v24 = v93;
      v88 = v19 & 0xC000000000000001;
      v25 = v9;
      v26 = v19;
      v27 = v22;
      do
      {
        if (v88)
        {
          v28 = MEMORY[0x2383E1490](v23, v19);
        }

        else
        {
          v28 = *(v19 + 8 * v23 + 32);
        }

        v29 = v28;
        v30 = [v28 rangeValue];
        v32 = v31;

        v34 = *(v93 + 16);
        v33 = *(v93 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_16_16(v33);
          sub_237C6348C();
        }

        ++v23;
        *(v93 + 16) = v34 + 1;
        v35 = v93 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        v19 = v26;
      }

      while (v27 != v23);
      v9 = v25;

      v5 = v83;
      v10 = v85;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v64 = *(v24 + 16);
    if (v64)
    {
      v65 = OUTLINED_FUNCTION_2_94();
      sub_237C63434(v65, v66, v67);
      v68 = (v24 + 40);
      do
      {
        v69 = *(v68 - 1);
        if (__OFADD__(v69, *v68))
        {
          goto LABEL_49;
        }

        if (v69 + *v68 < v69)
        {
          goto LABEL_50;
        }

        sub_237EF7D40();
        v71 = *(v21 + 16);
        v70 = *(v21 + 24);
        if (v71 >= v70 >> 1)
        {
          v72 = OUTLINED_FUNCTION_16_16(v70);
          sub_237C63434(v72, v71 + 1, 1);
        }

        v68 += 2;
        *(v21 + 16) = v71 + 1;
        (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v71, v9, v90);
      }

      while (--v64);
    }

    v16 = v86;
    v12 = v87;
    *v86 = v21;
    v73 = OUTLINED_FUNCTION_5_82();
    v74(v73);
    a2 = v79;
LABEL_47:
    (*(v12 + 32))(a2, v16, v10);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    return;
  }

  v36 = a1;
  v37 = [a1 enumeratedShapes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB50F0);
  v38 = sub_237EF8910();

  v39 = *(v38 + 16);
  if (!v39)
  {

    v63 = MEMORY[0x277D84F90];
LABEL_46:
    *v16 = v63;
    v75 = OUTLINED_FUNCTION_5_82();
    v76(v75);
    goto LABEL_47;
  }

  v78 = v36;
  v80 = a2;
  v94 = MEMORY[0x277D84F90];
  v40 = OUTLINED_FUNCTION_2_94();
  sub_237C63414(v40, v41, v42);
  v43 = 0;
  v44 = v94;
  v82 = v39;
  v84 = v38 + 32;
  v45 = v39;
  v81 = v38;
  while (v43 < *(v38 + 16))
  {
    v46 = *(v84 + 8 * v43);
    if (v46 >> 62)
    {
      v54 = v44;
      v55 = v43;
      v56 = sub_237EF9710();
      v43 = v55;
      v44 = v54;
      v47 = v56;
      if (v56)
      {
LABEL_18:
        v89 = v43;
        v91 = v44;
        v92 = MEMORY[0x277D84F90];
        sub_237EF8260();
        OUTLINED_FUNCTION_2_94();
        sub_237C62DB0();
        if (v47 < 0)
        {
          goto LABEL_51;
        }

        v48 = 0;
        v49 = v92;
        do
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x2383E1490](v48, v46);
          }

          else
          {
            v50 = *(v46 + 8 * v48 + 32);
          }

          v51 = v50;
          v52 = [v50 integerValue];

          v53 = *(v92 + 16);
          if (v53 >= *(v92 + 24) >> 1)
          {
            sub_237C62DB0();
          }

          ++v48;
          *(v92 + 16) = v53 + 1;
          *(v92 + 8 * v53 + 32) = v52;
        }

        while (v47 != v48);

        v38 = v81;
        v45 = v82;
        v43 = v89;
        v44 = v91;
        goto LABEL_29;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_18;
      }
    }

    v49 = MEMORY[0x277D84F90];
LABEL_29:
    v95 = v44;
    v58 = *(v44 + 16);
    v57 = *(v44 + 24);
    v10 = v85;
    v16 = v86;
    v12 = v87;
    if (v58 >= v57 >> 1)
    {
      v59 = OUTLINED_FUNCTION_16_16(v57);
      v61 = v60;
      sub_237C63414(v59, v58 + 1, 1);
      v43 = v61;
      v45 = v82;
      v44 = v95;
    }

    ++v43;
    *(v44 + 16) = v58 + 1;
    *(v44 + 8 * v58 + 32) = v49;
    if (v43 == v45)
    {
      v62 = v44;

      v63 = v62;
      a2 = v80;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_237E5F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedTabularEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_237E5F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = a5[5];
  v6[9] = a5[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v6[11] = v12;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v13 = sub_237EF61A0();
  v6[14] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v6[15] = v14;
  v6[16] = swift_task_alloc();
  v15 = a5[4];
  v6[17] = v15;
  v16 = a5[2];
  v6[18] = v16;
  v17 = swift_getAssociatedTypeWitness();
  v6[19] = v17;
  OUTLINED_FUNCTION_6_1(v17);
  v6[20] = v18;
  v6[21] = swift_task_alloc();
  v19 = swift_task_alloc();
  v6[22] = v19;
  OUTLINED_FUNCTION_0_23(v15);
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  v6[23] = v21;
  *v21 = v6;
  v21[1] = sub_237E5F5D0;

  return v23(v19, a2, a3, a4, v16, v15);
}

uint64_t sub_237E5F5D0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_237D178B4;
  }

  else
  {
    v7 = sub_237E5F6CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5F6CC()
{
  v1 = v0[24];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[20] + 8))(v0[22], v0[19]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[25] = AssociatedConformanceWitness;
    v5 = *(AssociatedConformanceWitness + 8);
    OUTLINED_FUNCTION_0_23(v5);
    v13 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_237E5F89C;
    v8 = v0[19];
    v9 = v0[16];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return v13(v9, v12, v10, v11, v8, v5);
  }
}

uint64_t sub_237E5F89C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_237D17940;
  }

  else
  {
    v7 = sub_237E5F998;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5F998()
{
  v1 = v0[27];
  sub_237EF8B90();
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[19];
    v4 = v0[20];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v4 + 8))(v2, v3);

    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_0_23(v0[8]);
    v15 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[28] = v8;
    *v8 = v0;
    v8[1] = sub_237E5FB68;
    v9 = v0[16];
    v10 = v0[13];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[4];
    v14 = v0[5];

    return v15(v10, v9, v13, v14, v11, v12);
  }
}

uint64_t sub_237E5FB68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  if (v0)
  {
    v7 = sub_237D179E4;
  }

  else
  {
    v7 = sub_237E5FC64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_237E5FC64()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v11 = v0[2];
  (*(v0[15] + 8))();
  (*(v3 + 32))(v1, v2, v4);
  (*(v7 + 32))(v5, v6, v8);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v1, v5, v4, v8, v11);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237E5FDB8(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = a3[5];
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTabularTransformer();
    return (*(v8 + 32))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237E5FF20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
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
  v23 = *(v12 + 40);
  v35 = a1;
  v24 = v39;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v29 = v13;
    v30 = v18;
    v39 = v14;
    v26 = AssociatedTypeWitness;
    (*(v36 + 40))(v35, v38, v36);
    v27 = v30;
    v28 = v39;
    (*(v34 + 32))(v30, v22, v39);
    (*(v31 + 32))(v9, v37, v26);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v27, v9, v28, v26, v32);
  }

  return result;
}

uint64_t sub_237E60220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return sub_237E5F324(a1, a2, a3, a4, a5);
}

uint64_t TabularTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v30 = a6;
  v31 = a5;
  v29 = a1;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_1_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for TabularTransformerToEstimatorAdaptor();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v28 - v25;
  (*(v18 + 16))(v22, v7, a2, v24);
  TabularTransformerToEstimatorAdaptor.init(_:)(v22, a2, a4);
  (*(v12 + 16))(v16, v29, a3);
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  return sub_237E5F25C(v26, v16, v23, a3, v30);
}

uint64_t TabularEstimator.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v27[0] = a6;
  v27[1] = a4;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for TabularTransformerToEstimatorAdaptor();
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, v7, a2);
  (*(v13 + 16))(v17, a1, a3);
  TabularTransformerToEstimatorAdaptor.init(_:)(v17, a3, a5);
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  return sub_237E5F25C(v24, v20, a2, v18, v27[0]);
}

uint64_t TabularEstimator.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return sub_237E5F25C(v17, v13, a2, a3, a4);
}

uint64_t sub_237E60848(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237E60A10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_1_103()
{

  return swift_getWitnessTable();
}

uint64_t sub_237E60CDC()
{
  OUTLINED_FUNCTION_30_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_29_31();
  type metadata accessor for TensorDescription();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_8_78();
  if (__swift_getEnumTagSinglePayload(v5, v6, v7) == 1)
  {
    sub_237C65484(v1, &qword_27DEAFB20);
    OUTLINED_FUNCTION_25_34();
    sub_237E63E4C(v8);

    v9 = OUTLINED_FUNCTION_81_1();
    return sub_237C65484(v9, v10);
  }

  else
  {
    sub_237CF231C(v1, v2);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_7_67();
    sub_237C912CC();

    *v0 = v12;
  }

  return result;
}

uint64_t sub_237E60E08()
{
  OUTLINED_FUNCTION_30_37();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_29_31();
  v4 = sub_237EF7940();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_8_78();
  if (__swift_getEnumTagSinglePayload(v6, v7, v4) == 1)
  {
    sub_237C65484(v1, &qword_27DEAE938);
    OUTLINED_FUNCTION_25_34();
    sub_237E63F78(v8);

    v9 = OUTLINED_FUNCTION_81_1();
    return sub_237C65484(v9, v10);
  }

  else
  {
    (*(v5 + 32))(v2, v1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_7_67();
    sub_237C9141C(v12, v13, v14, v15);

    *v0 = v16;
  }

  return result;
}

uint64_t sub_237E60F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_237C91804(a1, &v17);
    v6 = v18;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v17, v18);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    sub_237E644F0(v10, a2, a3, v3, v6);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
    sub_237C65484(v13, v14);
    sub_237E640C0(a2, a3, &v17);

    OUTLINED_FUNCTION_13_8();
    return sub_237C65484(v15, v16);
  }
}

BOOL sub_237E610D0(uint64_t a1, double *a2, double a3)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    v6 = *v4++;
    --v3;
  }

  while (v6 <= *a2 + a3);
  return v5 == 0;
}

void sub_237E61104(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v18 = MEMORY[0x277D84F90];
  sub_237C62DB0();
  v15 = v5;
  v16 = v4;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = a1 + 32;
  v8 = a2 + 32;
  v9 = v6;
  do
  {
    if (!v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    if (!v5)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_26_27();
    v10();
    OUTLINED_FUNCTION_21_45();
    v11 = v17;
    v12 = *(v18 + 16);
    if (v12 >= *(v18 + 24) >> 1)
    {
      sub_237C62DB0();
      v11 = v17;
    }

    --v5;
    *(v18 + 16) = v12 + 1;
    *(v18 + 8 * v12 + 32) = v11;
    --v4;
    v8 += 8;
    v7 += 8;
    --v9;
  }

  while (v9);
LABEL_11:
  while (v16 != v6)
  {
    if (v6 >= v16)
    {
      goto LABEL_22;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_23;
    }

    if (v15 == v6)
    {
      break;
    }

    if (v6 >= v15)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_26_27();
    v13();
    OUTLINED_FUNCTION_21_45();
    v14 = *(v18 + 16);
    if (v14 >= *(v18 + 24) >> 1)
    {
      sub_237C62DB0();
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 8 * v14 + 32) = v17;
    ++v6;
  }
}

uint64_t sub_237E61300(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_237EF89B0();
      v4 = 0;
      v5 = (result + 44);
      *(result + 16) = v2;
      v6 = vdupq_n_s64(v2 - 1);
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_237F07A60)));
        if (vuzp1_s16(v8, *v6.i8).u8[0])
        {
          *(v5 - 3) = a2;
        }

        if (vuzp1_s16(v8, *&v6).i8[2])
        {
          *(v5 - 2) = a2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v7, xmmword_237F07A50)))).i32[1])
        {
          *(v5 - 1) = a2;
          *v5 = a2;
        }

        v4 += 4;
        v5 += 4;
      }

      while (((v2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_237E613EC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_237EF89B0();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_237F07A60)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_237E61498(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = *(a1 + 8);
  if (!__OFSUB__(v7, 1))
  {
    v12 = sub_237E613EC(v7, a6);
    v13 = *(a2 + 16);
    if (v13)
    {
      v14 = (a2 + 32);
      v15 = *(a2 + 16);
      while (1)
      {
        v16 = *v14++;
        v6 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v12 = v17;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *(v12 + 16))
        {
          goto LABEL_32;
        }

        *(v12 + 8 * v6 + 32) = 0;
        if (!--v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_9:
    switch(a3)
    {
      case 1:
        v18 = sub_237E613EC(v7, a5);
        if (!v13)
        {
          goto LABEL_26;
        }

        v23 = (a2 + 32);
        do
        {
          v25 = *v23++;
          v24 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC();
            v18 = v26;
          }

          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v24 >= *(v18 + 16))
          {
            goto LABEL_34;
          }

          *(v18 + 8 * v24 + 32) = 0;
          --v13;
        }

        while (v13);
        goto LABEL_26;
      case 2:
        goto LABEL_28;
      case 3:
        goto LABEL_29;
      default:
        if (a5 <= 0.0)
        {
          if (v7 - 1 <= 500)
          {
LABEL_29:
            *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5188);
            OUTLINED_FUNCTION_13_8();
            *(a4 + 32) = sub_237C96710(v49, v50);
            v51 = swift_allocObject();
            v59 = OUTLINED_FUNCTION_4_84(v51, v52, v53, v54, v55, v56, v57, v58, v61, a1);
            sub_237E61BC0(v59, v12, v60);
          }

          else
          {
LABEL_28:
            *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5198);
            OUTLINED_FUNCTION_13_8();
            *(a4 + 32) = sub_237C96710(v37, v38);
            v39 = swift_allocObject();
            v47 = OUTLINED_FUNCTION_4_84(v39, v40, v41, v42, v43, v44, v45, v46, v61, a1);
            sub_237EA20AC(v47, v12, v48);
          }
        }

        else
        {
          v18 = sub_237E613EC(v7, a5);
          if (v13)
          {
            v19 = (a2 + 32);
            while (1)
            {
              v21 = *v19++;
              v20 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_237E643FC();
                v18 = v22;
              }

              if ((v20 & 0x8000000000000000) != 0)
              {
                break;
              }

              if (v20 >= *(v18 + 16))
              {
                goto LABEL_36;
              }

              *(v18 + 8 * v20 + 32) = 0;
              if (!--v13)
              {
                goto LABEL_26;
              }
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }

LABEL_26:
          *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51A8);
          *(a4 + 32) = sub_237C96710(&qword_27DEB51B0, &qword_27DEB51A8);
          v27 = swift_allocObject();
          v35 = OUTLINED_FUNCTION_4_84(v27, v28, v29, v30, v31, v32, v33, v34, v61, a1);
          sub_237E61B18(v35, v18, v12, v36);
        }

        sub_237E64494(v6, v63);
        return;
    }
  }

  __break(1u);
}

void sub_237E617B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *(a1 + 40);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = *(a1 + 8);
  v10 = v9 * v7;
  if ((v9 * v7) >> 64 != (v9 * v7) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!__OFSUB__(v10, 1))
  {
    v14 = sub_237E613EC(v10, a6);
    v15 = *(a2 + 16);
    if (v15)
    {
      v16 = (a2 + 32);
      v17 = *(a2 + 16);
      while (1)
      {
        v19 = *v16++;
        v18 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v14 = v20;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        *(v14 + 8 * v18 + 32) = 0;
        if (!--v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_11:
    switch(a3)
    {
      case 1:
        v21 = sub_237E613EC(v10, a5);
        if (!v15)
        {
          goto LABEL_28;
        }

        v26 = (a2 + 32);
        do
        {
          v28 = *v26++;
          v27 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E643FC();
            v21 = v29;
          }

          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (v27 >= *(v21 + 16))
          {
            goto LABEL_36;
          }

          *(v21 + 8 * v27 + 32) = 0;
          --v15;
        }

        while (v15);
        goto LABEL_28;
      case 2:
        goto LABEL_30;
      case 3:
        goto LABEL_31;
      default:
        if (a5 <= 0.0)
        {
          if (v10 - 1 <= 500)
          {
LABEL_31:
            a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C8);
            a4[4] = sub_237C96710(&qword_27DEB51D0, &qword_27DEB51C8);
            v32 = swift_allocObject();
            *a4 = v32;
            sub_237E61C08(a1, v14, v32 + 16);
          }

          else
          {
LABEL_30:
            a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51D8);
            a4[4] = sub_237C96710(qword_280C8DC60, &qword_27DEB51D8);
            v31 = swift_allocObject();
            *a4 = v31;
            sub_237EA2120(a1, v14, v31 + 16);
          }
        }

        else
        {
          v21 = sub_237E613EC(v10, a5);
          if (v15)
          {
            v22 = (a2 + 32);
            while (1)
            {
              v24 = *v22++;
              v23 = v24;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_237E643FC();
                v21 = v25;
              }

              if ((v23 & 0x8000000000000000) != 0)
              {
                break;
              }

              if (v23 >= *(v21 + 16))
              {
                goto LABEL_38;
              }

              *(v21 + 8 * v23 + 32) = 0;
              if (!--v15)
              {
                goto LABEL_28;
              }
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_28:
          a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51E0);
          a4[4] = sub_237C96710(&qword_27DEB51E8, &qword_27DEB51E0);
          v30 = swift_allocObject();
          *a4 = v30;
          sub_237E61B68(a1, v21, v14, v30 + 16);
        }

        sub_237E64904(a1, v34);
        return;
    }
  }

LABEL_41:
  __break(1u);
}

__n128 sub_237E61B18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  v6 = MEMORY[0x277D84F90];
  *(a4 + 176) = MEMORY[0x277D84F90];
  *(a4 + 184) = 0x3FF0000000000000;
  *(a4 + 192) = v6;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 64) = v6;
  *(a4 + 72) = v6;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = v6;
  *(a4 + 112) = 0x7FF8000000000000;
  *(a4 + 160) = 0;
  *(a4 + 168) = v6;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  return result;
}

__n128 sub_237E61B68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *(a4 + 184) = MEMORY[0x277D84F90];
  *(a4 + 192) = 0x3FF0000000000000;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  v7 = *(a1 + 48);
  *(a4 + 200) = v4;
  *(a4 + 48) = v7;
  *(a4 + 56) = a2;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 64) = a3;
  *(a4 + 72) = v4;
  *(a4 + 80) = v4;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = v4;
  *(a4 + 120) = 0x7FF8000000000000;
  *(a4 + 168) = 0;
  *(a4 + 176) = v4;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  return result;
}

__n128 sub_237E61BC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = MEMORY[0x277D84F90];
  *(a3 + 32) = result;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 56) = v5;
  *(a3 + 64) = v5;
  *(a3 + 88) = 0;
  *(a3 + 96) = v5;
  *(a3 + 104) = 0x7FF8000000000000;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = v5;
  *(a3 + 168) = v5;
  *(a3 + 48) = a2;
  return result;
}

__n128 sub_237E61C08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  *(a3 + 104) = MEMORY[0x277D84F90];
  *(a3 + 112) = 0x7FF8000000000000;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  v6 = *(a1 + 48);
  *(a3 + 64) = v3;
  *(a3 + 72) = v3;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = v3;
  *(a3 + 176) = v3;
  *(a3 + 48) = v6;
  *(a3 + 56) = a2;
  return result;
}

unint64_t sub_237E61C54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 BaseLogisticRegressionClassifier.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void BaseLogisticRegressionClassifier.fitted(features:annotations:classCount:eventHandler:)()
{
  OUTLINED_FUNCTION_19_44();
  *&v110 = v1;
  v101 = v3;
  v106 = v4;
  v135 = v5;
  v7 = v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  *&v113 = *(v0 + 16);
  v13 = *(v0 + 24);
  LODWORD(v6) = *(v0 + 48);
  LODWORD(v111) = *(v0 + 49);
  v107 = v2;
  *&v115 = v9;
  LODWORD(v114) = v11;
  v99 = v7;
  *&v112 = v12;
  if (v6 == 1)
  {
    *&v119[0] = v10;
    *(&v119[0] + 1) = v9;
    LOBYTE(v119[1]) = v11;
    *(&v119[1] + 1) = v12;

    sub_237E6F56C(v119);
    if (v9 < 0)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v15 = v14;
    if (v9)
    {
      v16 = 0;
      v17 = v12;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v17 = v18;
        }

        v19 = v9;
        if (v114)
        {
          if ((v16 * v10) >> 64 != (v16 * v10) >> 63)
          {
            goto LABEL_66;
          }

          v19 = 1;
        }

        if (v16 >= *(v15 + 16))
        {
          goto LABEL_62;
        }

        if (v10 > 0x7FFFFFFF)
        {
          goto LABEL_63;
        }

        if (v10 < 0xFFFFFFFF80000000)
        {
          goto LABEL_64;
        }

        if (v19 > 0x7FFFFFFF)
        {
          goto LABEL_65;
        }

        cblas_dscal_NEWLAPACK();
        ++v16;
        v9 = v115;
        if (v115 == v16)
        {
          goto LABEL_18;
        }
      }
    }

    v17 = v12;
LABEL_18:
    v20 = v107;
    v12 = v112;
  }

  else
  {
    v20 = v2;

    v15 = 0;
    v17 = v12;
  }

  v125 = v10;
  v126 = v9;
  v127 = v114;
  v128 = v17;
  v129 = v135;
  v130 = v20;
  v131 = v15;
  v21 = v20 - 1;
  if (v20 < 1)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v20 != 1)
  {
    *&v119[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62DB0();
    v22 = v107;
    v23 = 1;
    v24 = *&v119[0];
    while (1)
    {
      v25 = v23 * v9;
      if ((v23 * v9) >> 64 != (v23 * v9) >> 63)
      {
        break;
      }

      v26 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_60;
      }

      *&v119[0] = v24;
      v27 = *(v24 + 16);
      if (v27 >= *(v24 + 24) >> 1)
      {
        sub_237C62DB0();
        v22 = v107;
        v24 = *&v119[0];
      }

      *(v24 + 16) = v27 + 1;
      *(v24 + 8 * v27 + 32) = v26;
      if (v22 == v23)
      {
        goto LABEL_61;
      }

      if (v22 == ++v23)
      {
        v12 = v112;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_237EF8260();
LABEL_30:
  v28 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v29, v30, v111, v31, v28, v32);

  if ((v126 * v21) >> 64 != (v126 * v21) >> 63)
  {
    goto LABEL_68;
  }

  v33 = sub_237E613EC(v126 * v21, 0.0);
  *&v119[0] = v13;
  v34 = v123;
  v35 = v124;
  __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
  (*(v35 + 40))(v33, v119, v34, v35);

  if (v110)
  {
    sub_237E63DF8(&v125);
    goto LABEL_58;
  }

  if (v114)
  {
    v36 = v10;
  }

  else
  {
    v36 = v9;
  }

  v103 = v12 + 32;
  v104 = v36;
  v102 = "ght must be at least 1.";
  v100 = 0x8000000237F00E10;
  v105 = v10;
  while ((OUTLINED_FUNCTION_10_60() & 1) == 0)
  {
    v37 = OUTLINED_FUNCTION_28_30();
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    v39 = OUTLINED_FUNCTION_13_48();
    v40(v39);
    v41 = OUTLINED_FUNCTION_28_30();
    OUTLINED_FUNCTION_9_59(v41, v42);
    v43 = OUTLINED_FUNCTION_6_69();
    v44(v43);
    memcpy(v121, v119, 0x49uLL);
    v45 = *&v121[0];

    sub_237C65484(v121, &qword_27DEB2A08);
    v120 = v45;
    if (v131)
    {
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v46);
      *(&v98 - 2) = &v125;
      *(&v98 - 1) = v47;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
      DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, (&v98 - 4), v48, MEMORY[0x277D84F78] + 8);
    }

    v49 = OUTLINED_FUNCTION_10_60();
    v50 = v49;
    if (v49)
    {
      LODWORD(v112) = v49;
      v51 = v120;
      v52 = v115;
LABEL_49:
      v58 = v123;
      v59 = v124;
      __swift_project_boxed_opaque_existential_1(v122, v123);
      (*(v59 + 24))(v119, v58, v59);
      v60 = *&v119[4];
      v61 = BYTE8(v119[4]);
      memset(v118, 0, 73);
      v110 = v119[2];
      v111 = v119[0];
      v108 = v119[3];
      v109 = v119[1];
      sub_237C65484(v118, qword_27DEB0300);
      *&v119[0] = v51;
      *(&v119[0] + 1) = v107;
      v119[2] = v109;
      v119[1] = v111;
      v119[4] = v108;
      v119[3] = v110;
      *&v119[5] = v60;
      BYTE8(v119[5]) = v61;
      v117 = MEMORY[0x277D84F98];
      v133[0] = v103;
      v133[1] = v10;
      v133[2] = v52;
      v133[3] = v104;
      v134 = v114;
      memcpy(v116, v119, 0x59uLL);
      v62 = sub_237D4DA98(v133);
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v63);
      *(&v98 - 4) = MEMORY[0x277D83B88];
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180);
      *(&v98 - 3) = v64;
      *(&v98 - 2) = MEMORY[0x277D83B98];
      OUTLINED_FUNCTION_0_84();
      v65 = sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180);
      *(&v98 - 1) = v65;
      swift_getKeyPath();
      sub_237EF8260();

      sub_237E61104(v62, v135);
      v67 = v66;

      v68 = sub_237CAE03C(v67);
      MEMORY[0x28223BE20](v68);
      OUTLINED_FUNCTION_27();
      *(v69 - 32) = MEMORY[0x277D83B88];
      *(v69 - 24) = v64;
      *(v69 - 16) = MEMORY[0x277D83B98];
      *(v69 - 8) = v65;
      swift_getKeyPath();

      v70 = OUTLINED_FUNCTION_1_104();
      sub_237E61104(v70, v71);

      OUTLINED_FUNCTION_81_1();
      sub_237CAE474();
      v72 = OUTLINED_FUNCTION_1_104();
      sub_237CB0CC4(v72, v73, v74, v75, v76);
      v132[0] = v116[0];
      v132[1] = v116[1];
      v132[2] = v116[2];
      sub_237CB0030();
      v78 = v77;
      sub_237C65484(v132, qword_27DEB2000);
      *(&v116[1] + 1) = MEMORY[0x277D839F8];
      *&v116[0] = v78;
      sub_237E60F7C(v116, 0xD000000000000011, v102 | 0x8000000000000000);
      sub_237CC9A9C(v119);
      v79 = v117;
      OUTLINED_FUNCTION_32_27();
      v80 = OUTLINED_FUNCTION_81_1();
      v82 = v81(v80);
      v83 = v106;
      if (v106)
      {
        *&v116[0] = 0xD00000000000001CLL;
        *(&v116[0] + 1) = v100;
        *&v116[1] = v82;
        *(&v116[1] + 1) = v113;
        LOBYTE(v116[2]) = 0;
        *(&v116[2] + 1) = v79;

        v83(v116);
        sub_237C5EE40(v83);
      }

      v10 = v105;
      if (v112)
      {
        break;
      }
    }

    else
    {
      v53 = v123;
      v54 = v124;
      __swift_project_boxed_opaque_existential_1(v122, v123);
      v55 = (*(v54 + 32))(v53, v54);
      v51 = v120;
      v52 = v115;
      if (v55 < 5 || ((OUTLINED_FUNCTION_24_35(), !v57) ? (v57 = v56 == v113) : (v57 = 1), v57))
      {
        LODWORD(v112) = v50;
        goto LABEL_49;
      }
    }
  }

  OUTLINED_FUNCTION_32_27();
  v84 = OUTLINED_FUNCTION_81_1();
  v85(v84);
  memcpy(v119, v116, 0x49uLL);
  v86 = *&v119[0];

  v87 = sub_237C65484(v119, &qword_27DEB2A08);
  v118[0] = v86;
  if (v131)
  {
    MEMORY[0x28223BE20](v87);
    *(&v98 - 2) = &v125;
    *(&v98 - 1) = v88;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E64468, (&v98 - 4), v89, MEMORY[0x277D84F78] + 8);
    sub_237E63DF8(&v125);
    v86 = v118[0];
  }

  else
  {
    sub_237E63DF8(&v125);
  }

  OUTLINED_FUNCTION_9_59(v122, v123);
  v90 = OUTLINED_FUNCTION_5_83();
  v91(v90);
  v114 = v121[3];
  v115 = v121[1];
  v112 = v121[2];
  v113 = v121[0];
  v92 = *&v121[4];
  v93 = BYTE8(v121[4]);
  memset(v116, 0, 73);
  sub_237C65484(v116, qword_27DEB0300);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0xD00000000000001CLL, v100);
  }

  v94 = v99;
  v95 = v107;
  *v99 = v86;
  v94[1] = v95;
  v96 = v115;
  *(v94 + 1) = v113;
  *(v94 + 2) = v96;
  v97 = v114;
  *(v94 + 3) = v112;
  *(v94 + 4) = v97;
  v94[10] = v92;
  *(v94 + 88) = v93;
LABEL_58:
  __swift_destroy_boxed_opaque_existential_1(v122);
  OUTLINED_FUNCTION_20_41();
}

void BaseLogisticRegressionClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)()
{
  OUTLINED_FUNCTION_19_44();
  v124 = v3;
  v126 = v4;
  v138 = v5;
  v7 = v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v136 = *v13;
  v137 = v2;
  v135 = v13[1];
  v134 = *(v13 + 16);
  v14 = v13[3];
  v145 = v15;
  v146 = v14;
  v144 = *(v0 + 16);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = *(v0 + 40);
  LODWORD(v14) = *(v0 + 48);
  v19 = *(v0 + 49);
  v148 = v9;
  v174 = v10;
  v147 = v11;
  v122 = v7;
  *&v141 = v1;
  v143 = v18;
  LODWORD(v142) = v19;
  if (v14 == 1)
  {
    *&v155[0] = v9;
    *(&v155[0] + 1) = v10;
    LOBYTE(v155[1]) = v11;
    *(&v155[1] + 1) = v12;

    sub_237E6F56C(v155);
    v21 = v174;
    if (v174 < 0)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v22 = v20;
    if (v174)
    {
      v23 = 0;
      v24 = v12;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v24 = v25;
        }

        v26 = v174;
        if (v147)
        {
          if ((v23 * v148) >> 64 != (v23 * v148) >> 63)
          {
            goto LABEL_78;
          }

          v26 = 1;
        }

        if (v23 >= *(v22 + 16))
        {
          goto LABEL_74;
        }

        if (v148 > 0x7FFFFFFF)
        {
          goto LABEL_75;
        }

        if (v148 < 0xFFFFFFFF80000000)
        {
          goto LABEL_76;
        }

        if (v26 > 0x7FFFFFFF)
        {
          goto LABEL_77;
        }

        cblas_dscal_NEWLAPACK();
        v21 = v174;
        if (v174 == ++v23)
        {
          goto LABEL_18;
        }
      }
    }

    v24 = v12;
LABEL_18:
    v27 = v137;
  }

  else
  {
    v27 = v2;

    v21 = v174;
    v22 = 0;
    v24 = v12;
  }

  v161 = v148;
  v162 = v21;
  v163 = v147;
  v164 = v24;
  v165 = v138;
  v166 = v27;
  v167 = v22;
  v28 = v27 - 1;
  if (v27 < 1)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v27 != 1)
  {
    *&v155[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C62DB0();
    v29 = v137;
    v30 = *&v155[0];
    v31 = 1;
    v32 = v162;
    while (1)
    {
      v33 = v31 * v32;
      if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
      {
        break;
      }

      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_72;
      }

      *&v155[0] = v30;
      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        sub_237C62DB0();
        v29 = v137;
        v30 = *&v155[0];
      }

      *(v30 + 16) = v35 + 1;
      *(v30 + 8 * v35 + 32) = v34;
      if (v29 == v31)
      {
        goto LABEL_73;
      }

      if (v29 == ++v31)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_237EF8260();
LABEL_30:
  v36 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v37, v38, v142, v39, v36, v40);

  sub_237CDC02C(v143, 0.0);
  if ((v162 * v28) >> 64 != (v162 * v28) >> 63)
  {
    goto LABEL_83;
  }

  v125 = v41;
  v42 = sub_237E613EC(v162 * v28, 0.0);
  *&v155[0] = v17;
  v43 = v159;
  v44 = v160;
  __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
  (*(v44 + 40))(v42, v155, v43, v44);

  if (v141)
  {

    sub_237E63DF8(&v161);
    goto LABEL_33;
  }

  if (v147)
  {
    v45 = v148;
  }

  else
  {
    v45 = v174;
  }

  v132 = v12 + 32;
  v133 = v45;
  v46 = v136;
  if (!v134)
  {
    v46 = v135;
  }

  v130 = v46;
  v131 = "ght must be at least 1.";
  v128 = "Unsupported input type ";
  v129 = v146 + 32;
  v123 = 0x8000000237F00E10;
  do
  {
    while (1)
    {
      v47 = OUTLINED_FUNCTION_22_37();
      __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
      (*(v42 + 56))(v12, v42);
      v49 = OUTLINED_FUNCTION_22_37();
      OUTLINED_FUNCTION_9_59(v49, v50);
      v51(v155, v12, v42);
      memcpy(v157, v155, 0x49uLL);
      v52 = v157[0];

      sub_237C65484(v157, &qword_27DEB2A08);
      v156 = v52;
      v127 = v167;
      if (v167)
      {
        OUTLINED_FUNCTION_12_51();
        MEMORY[0x28223BE20](v53);
        OUTLINED_FUNCTION_17_48();
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
        DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v12, v54, MEMORY[0x277D84F78] + 8);
        v52 = v156;
      }

      v143 = v52;
      v55 = v159;
      v56 = v160;
      __swift_project_boxed_opaque_existential_1(v158, v159);
      v57 = *(v56 + 24);

      v57(v153, v55, v56);
      v58 = *&v153[4];
      LOBYTE(v57) = BYTE8(v153[4]);
      memset(v154, 0, 73);
      v141 = v153[2];
      v142 = v153[0];
      v139 = v153[3];
      v140 = v153[1];
      sub_237C65484(v154, qword_27DEB0300);
      *&v155[0] = v52;
      *(&v155[0] + 1) = v137;
      v155[1] = v142;
      v155[2] = v140;
      v155[3] = v141;
      v155[4] = v139;
      *&v155[5] = v58;
      BYTE8(v155[5]) = v57;
      v151[0] = MEMORY[0x277D84F98];
      v172[0] = v132;
      v172[1] = v148;
      v172[2] = v174;
      v172[3] = v133;
      v173 = v147;
      memcpy(v153, v155, 0x59uLL);
      sub_237EF8260();

      v59 = sub_237D4DA98(v172);
      *&v139 = v59;
      MEMORY[0x28223BE20](v59);
      *(&v121 - 4) = MEMORY[0x277D83B88];
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180);
      *(&v121 - 3) = v60;
      *&v142 = v60;
      *(&v121 - 2) = MEMORY[0x277D83B98];
      OUTLINED_FUNCTION_0_84();
      v61 = sub_237C96710(&qword_280C8CCD0, &qword_27DEB5180);
      *(&v121 - 1) = v61;
      v62 = v61;
      *&v141 = v61;
      swift_getKeyPath();
      v63 = v138;
      sub_237EF8260();

      sub_237E61104(v59, v63);
      v65 = v64;

      v66 = sub_237CAE03C(v65);
      MEMORY[0x28223BE20](v66);
      OUTLINED_FUNCTION_27();
      *(v67 - 32) = MEMORY[0x277D83B88];
      *(v67 - 24) = v60;
      *(v67 - 16) = MEMORY[0x277D83B98];
      *(v67 - 8) = v62;
      swift_getKeyPath();

      v68 = v139;
      v69 = OUTLINED_FUNCTION_1_104();
      sub_237E61104(v69, v70);

      v71 = sub_237CAE474();
      *&v140 = sub_237E6442C;
      sub_237CB0CC4(v68, v63, sub_237E6442C, 0, v71);
      v171[0] = v153[0];
      v171[1] = v153[1];
      v171[2] = v153[2];
      sub_237CB0030();
      v73 = v72;
      sub_237C65484(v171, qword_27DEB2000);
      *(&v153[1] + 1) = MEMORY[0x277D839F8];
      *&v153[0] = v73;
      sub_237E60F7C(v153, 0xD000000000000011, v131 | 0x8000000000000000);
      v169[0] = v129;
      v169[1] = v136;
      v169[2] = v135;
      v169[3] = v130;
      v170 = v134;
      memcpy(v153, v155, 0x59uLL);
      v74 = sub_237D4DA98(v169);
      OUTLINED_FUNCTION_12_51();
      MEMORY[0x28223BE20](v75);
      OUTLINED_FUNCTION_27();
      v76 = v142;
      *(v77 - 32) = MEMORY[0x277D83B88];
      *(v77 - 24) = v76;
      v78 = v141;
      *(v77 - 16) = MEMORY[0x277D83B98];
      *(v77 - 8) = v78;
      swift_getKeyPath();
      v79 = v145;
      sub_237EF8260();

      sub_237E61104(v74, v79);
      v81 = v80;

      v82 = sub_237CAE03C(v81);
      MEMORY[0x28223BE20](v82);
      OUTLINED_FUNCTION_27();
      *(v83 - 32) = MEMORY[0x277D83B88];
      *(v83 - 24) = v76;
      *(v83 - 16) = MEMORY[0x277D83B98];
      *(v83 - 8) = v78;
      KeyPath = swift_getKeyPath();

      sub_237E61104(v74, v79);

      sub_237CAE474();
      v85 = OUTLINED_FUNCTION_1_104();
      sub_237CB0CC4(v85, v86, v87, v88, v89);
      v168[0] = v153[0];
      v168[1] = v153[1];
      v168[2] = v153[2];
      sub_237CB0030();
      v91 = v90;
      sub_237C65484(v168, qword_27DEB2000);
      *(&v153[1] + 1) = MEMORY[0x277D839F8];
      *&v153[0] = v91;
      v92 = v128;
      sub_237E60F7C(v153, 0xD000000000000013, v128 | 0x8000000000000000);
      sub_237CC9A9C(v155);

      v12 = v151[0];
      OUTLINED_FUNCTION_31_25();
      *v153 = v16;
      v42 = sub_237E6A4FC(v144, v153, v151, KeyPath);
      if (*(v12 + 16))
      {
        v93 = sub_237D30F88(0xD000000000000013, v92 | 0x8000000000000000);
        if (v94)
        {
          sub_237CBA478(*(v12 + 56) + 32 * v93, v153);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
          if (swift_dynamicCast())
          {
            v95 = *v151;
            OUTLINED_FUNCTION_31_25();
            v96 = j__OUTLINED_FUNCTION_0_86(v12, KeyPath);
            v97 = *(v125 + 16);
            if (!v97)
            {
              goto LABEL_79;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v98 = v125;
            }

            else
            {
              sub_237E642C0();
            }

            v99 = v96 % v97;
            if (v96 % v97 < 0)
            {
              goto LABEL_80;
            }

            v100 = *(v98 + 16);
            if (v99 >= v100)
            {
              goto LABEL_81;
            }

            *(v98 + 8 * v99 + 32) = 1.0 - v95;
            v125 = v98;
            if (v96 >= v100)
            {
              v101 = 32;
              while (v100)
              {
                v102 = *(v98 + v101);
                v101 += 8;
                --v100;
                if (v102 > v16 + 1.0 - v95)
                {
                  goto LABEL_54;
                }
              }

              break;
            }
          }
        }
      }

LABEL_54:
      if (v42)
      {
        break;
      }

      OUTLINED_FUNCTION_11_57();
      v104 = OUTLINED_FUNCTION_5_83();
      v103 = 0;
      if (v105(v104) < 5)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_24_35();
      v107 = v107 || v106 == v144;
      if (v107)
      {
        goto LABEL_62;
      }
    }

    v103 = 1;
LABEL_62:
    OUTLINED_FUNCTION_11_57();
    v108 = OUTLINED_FUNCTION_5_83();
    v110 = v109(v108);
    v111 = v126;
    if (v126)
    {
      *&v153[0] = 0xD00000000000001CLL;
      v42 = v123;
      *(&v153[0] + 1) = v123;
      *&v153[1] = v110;
      *(&v153[1] + 1) = v144;
      LOBYTE(v153[2]) = 0;
      *(&v153[2] + 1) = v12;

      v111(v153);
      sub_237C5EE40(v111);
    }
  }

  while (!v103);

  v112 = v159;
  v113 = v160;
  __swift_project_boxed_opaque_existential_1(v158, v159);
  (*(v113 + 24))(v151, v112, v113);
  memcpy(v153, v151, 0x49uLL);
  v114 = *&v153[0];

  sub_237C65484(v153, &qword_27DEB2A08);
  v152 = v114;
  if (v127)
  {
    OUTLINED_FUNCTION_12_51();
    MEMORY[0x28223BE20](v115);
    OUTLINED_FUNCTION_17_48();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v114, v116, MEMORY[0x277D84F78] + 8);
    sub_237E63DF8(&v161);
    v114 = v152;
  }

  else
  {
    sub_237E63DF8(&v161);
  }

  v117 = v122;
  OUTLINED_FUNCTION_9_59(v158, v159);
  v118 = OUTLINED_FUNCTION_5_83();
  v119(v118);
  memcpy(v150, v149, sizeof(v150));
  v120 = v137;
  *v117 = v114;
  v117[1] = v120;
  memset(v151, 0, 73);
  sub_237C65484(v151, qword_27DEB0300);
  memcpy(v117 + 2, v150, 0x49uLL);
LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v158);
  OUTLINED_FUNCTION_20_41();
}

void BaseLogisticRegressionClassifier.update(_:features:annotations:eventHandler:)()
{
  OUTLINED_FUNCTION_19_44();
  v98 = v2;
  v99 = v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v0 + 16);
  v96 = v9;
  v97 = v8;
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  LODWORD(v8) = *(v0 + 48);
  v100 = *(v0 + 49);
  v101 = v12;
  v13 = v12[1];
  v103 = v4;
  v94 = v14;
  v95 = v7;
  if (v8 == 1)
  {
    v104[0] = v4;
    v104[1] = v5;
    LOBYTE(v104[2]) = v6;
    v104[3] = v7;

    sub_237E6F56C(v104);
    if (v5 < 0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v16 = v15;
    if (v5)
    {
      v17 = 0;
      v102 = v15 + 32;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v7 = v18;
        }

        v19 = v5;
        if (v6)
        {
          if ((v17 * v103) >> 64 != (v17 * v103) >> 63)
          {
            goto LABEL_57;
          }

          v19 = 1;
        }

        if (v17 >= *(v16 + 16))
        {
          goto LABEL_53;
        }

        if (v103 > 0x7FFFFFFF)
        {
          goto LABEL_54;
        }

        if (v103 < 0xFFFFFFFF80000000)
        {
          goto LABEL_55;
        }

        if (v19 > 0x7FFFFFFF)
        {
          goto LABEL_56;
        }

        cblas_dscal_NEWLAPACK();
      }

      while (v5 != ++v17);
    }

    v20 = v98;
  }

  else
  {
    v20 = v2;

    v16 = 0;
  }

  v115 = v103;
  v116 = v5;
  v117 = v6;
  v118 = v7;
  v119 = v20;
  v120 = v13;
  v121 = v16;
  v21 = v13 - 1;
  if (v13 < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v13 != 1)
  {
    v104[0] = MEMORY[0x277D84F90];
    sub_237EF8260();
    v102 = v13 - 1;
    sub_237C62DB0();
    v22 = 1;
    v23 = v104[0];
    while (1)
    {
      v24 = v22 * v5;
      if ((v22 * v5) >> 64 != (v22 * v5) >> 63)
      {
        break;
      }

      v25 = v24 - 1;
      if (__OFSUB__(v24, 1))
      {
        goto LABEL_51;
      }

      v104[0] = v23;
      v7 = *(v23 + 16);
      v16 = v7 + 1;
      if (v7 >= *(v23 + 24) >> 1)
      {
        sub_237C62DB0();
        v23 = v104[0];
      }

      *(v23 + 16) = v16;
      *(v23 + 8 * v7 + 32) = v25;
      if (v13 == v22)
      {
        goto LABEL_52;
      }

      if (v13 == ++v22)
      {
        v21 = v102;
        goto LABEL_28;
      }
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
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_237EF8260();
LABEL_28:
  v26 = OUTLINED_FUNCTION_14_57();
  sub_237E617B0(v27, v28, v100, v29, v26, v30);

  v32 = v101 + 2;
  v31 = v101[2];
  if (!v31)
  {
    if ((v116 * v21) >> 64 != (v116 * v21) >> 63)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v36 = sub_237E613EC(v116 * v21, 0.0);
    v104[0] = v11;
    v38 = v110;
    v37 = v111;
    __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
    (*(v37 + 40))(v36, v104, v38, v37);

    if (!v99)
    {
LABEL_35:
      v39 = v110;
      v40 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v104[0] = v10;
      if ((sub_237E6A4FC(v97, v104, v39, v40) & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_2_95();
        __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
        v43 = OUTLINED_FUNCTION_13_48();
        v44(v43);
        v52 = OUTLINED_FUNCTION_2_95();
        OUTLINED_FUNCTION_9_59(v52, v53);
        v54 = OUTLINED_FUNCTION_6_69();
        v55(v54);
        memcpy(v108, v104, 0x49uLL);
        v56 = v108[0];

        sub_237C65484(v108, &qword_27DEB2A08);
        if (v121)
        {
          OUTLINED_FUNCTION_12_51();
          MEMORY[0x28223BE20](v57);
          v92 = &v115;
          v93 = v58;
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25E8);
          DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237E6497C, v91, v59, MEMORY[0x277D84F78] + 8);
          sub_237E63DF8(&v115);
        }

        else
        {
          sub_237E63DF8(&v115);
        }

        v60 = v101;

        *v60 = v56;
        v61 = OUTLINED_FUNCTION_2_95();
        OUTLINED_FUNCTION_9_59(v61, v62);
        v63 = OUTLINED_FUNCTION_6_69();
        v64(v63);
        memcpy(v106, v104, sizeof(v106));
        memcpy(v107, v32, 0x49uLL);
        sub_237C65484(v107, qword_27DEB0300);
        memcpy(v32, v106, 0x49uLL);
        memcpy(v104, v60, 0x59uLL);
        v105 = MEMORY[0x277D84F98];
        if (v6)
        {
          v65 = v103;
        }

        else
        {
          v65 = v5;
        }

        v113[0] = v95 + 32;
        v113[1] = v103;
        v113[2] = v5;
        v113[3] = v65;
        v114 = v6;
        v66 = sub_237D4DA98(v113);
        MEMORY[0x28223BE20](v66);
        v91[0] = MEMORY[0x277D83B88];
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5180);
        v91[1] = v67;
        v92 = MEMORY[0x277D83B98];
        OUTLINED_FUNCTION_0_84();
        v69 = sub_237C96710(v68, &qword_27DEB5180);
        v93 = v69;
        swift_getKeyPath();
        v70 = v98;
        sub_237EF8260();

        sub_237E61104(v66, v70);
        v72 = v71;

        v73 = sub_237CAE03C(v72);
        MEMORY[0x28223BE20](v73);
        OUTLINED_FUNCTION_27();
        *(v74 - 32) = MEMORY[0x277D83B88];
        *(v74 - 24) = v67;
        *(v74 - 16) = MEMORY[0x277D83B98];
        *(v74 - 8) = v69;
        swift_getKeyPath();

        v75 = OUTLINED_FUNCTION_27_28();
        sub_237E61104(v75, v76);

        sub_237CAE474();
        v77 = OUTLINED_FUNCTION_27_28();
        sub_237CB0CC4(v77, v78, v79, v80, v81);
        sub_237CB0030();
        v83 = v82;
        sub_237C65484(&v112, qword_27DEB2000);
        v104[3] = MEMORY[0x277D839F8];
        v104[0] = v83;
        sub_237E60F7C(v104, 0xD000000000000011, 0x8000000237EFB8A0);
        v84 = v105;
        v85 = OUTLINED_FUNCTION_2_95();
        __swift_project_boxed_opaque_existential_1(v85, v86);
        v87 = OUTLINED_FUNCTION_6_69();
        v89 = v88(v87);
        v90 = v96;
        if (v96)
        {
          v104[0] = 0xD00000000000001CLL;
          v104[1] = 0x8000000237F00E10;
          v104[2] = v89;
          v104[3] = v97;
          LOBYTE(v104[4]) = 0;
          v104[5] = v84;

          v90(v104);
          sub_237C5EE40(v90);
        }

        goto LABEL_40;
      }
    }

LABEL_37:
    sub_237E63DF8(&v115);
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v109);
    OUTLINED_FUNCTION_20_41();
    return;
  }

  if ((v116 * v21) >> 64 != (v116 * v21) >> 63)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v33 = *(v31 + 16);
  if (v33 == v116 * v21)
  {
    v104[0] = v101[2];
    memcpy(&v104[1], v101 + 3, 0x41uLL);
    v34 = OUTLINED_FUNCTION_2_95();
    __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    (*(v16 + 48))(v104, v7, v16);
    if (!v99)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_237E63DF8(&v115);
  if (v21)
  {
    v45 = v33 / v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_237F04760;
    *(v46 + 32) = v103;
    *(v46 + 40) = v5;
    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    sub_237EF9330();

    v104[0] = 0xD000000000000017;
    v104[1] = 0x8000000237F00E30;
    v108[0] = v45;
    v47 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v47);

    MEMORY[0x2383E0710](0xD000000000000015, 0x8000000237F00E50);
    v108[0] = v5;
    v48 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v48);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v49 = v104[0];
    v50 = v104[1];
    sub_237C84150();
    swift_allocError();
    *v51 = v46;
    *(v51 + 8) = v49;
    *(v51 + 16) = v50;
    *(v51 + 24) = 0;
    *(v51 + 32) = 6;
    swift_willThrow();
    goto LABEL_40;
  }

LABEL_62:
  __break(1u);
}

__n128 BaseLogisticRegressionClassifier.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 48);
  return result;
}

__n128 BaseLogisticRegressionClassifier.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

double BaseLogisticRegressionClassifier.makeTransformer(classCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 73) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = a1;
  return result;
}

uint64_t sub_237E63E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237D2FC30();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2F0);
    sub_237EF96B0();

    v6 = *(v13 + 56);
    v7 = type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_4();
    sub_237CF231C(v6 + *(v8 + 72) * v5, a1);
    sub_237EF96D0();
    *v1 = v13;
    v9 = a1;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = type metadata accessor for TensorDescription();
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

uint64_t sub_237E63F78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237D2FC30();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2E0);
    sub_237EF96B0();

    v6 = *(v12 + 56);
    v7 = sub_237EF7940();
    (*(*(v7 - 8) + 32))(a1, v6 + *(*(v7 - 8) + 72) * v5, v7);
    sub_237EF96D0();
    *v1 = v12;
    v8 = a1;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = sub_237EF7940();
    v8 = a1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

double sub_237E640C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_237D30F88(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0);
    sub_237EF96B0();

    sub_237C91804((*(v9 + 56) + 32 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    sub_237EF96D0();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_237E64338(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_237EF9710();
  }

  return sub_237EF93C0();
}

uint64_t sub_237E6442C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237C95FE0(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237E644F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a4;
  (*(v10 + 16))(v12, a1, a5);
  sub_237E6461C(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v16, a5);
  result = (*(v10 + 8))(a1, a5);
  *a4 = v16;
  return result;
}

_OWORD *sub_237E6461C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v28 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v12 = *a5;
  v13 = sub_237D30F88(a2, a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51C0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_237D30F88(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return sub_237C91804(v27, v20);
  }

  else
  {
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v23 = MEMORY[0x28223BE20](v22);
    v25 = v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25, v23);
    sub_237E64830(v15, a2, a3, v25, v19, a6);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_237EF8260();
  }
}

_OWORD *sub_237E64830(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_237C91804(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_60()
{
  v2 = v0[77];
  v3 = v0[78];
  __swift_project_boxed_opaque_existential_1(v0 + 74, v2);
  v0[51] = v1;
  v4 = v0[20];

  return sub_237E6A4FC(v4, (v0 + 51), v2, v3);
}

void *OUTLINED_FUNCTION_11_57()
{
  v2 = *(v0 + 904);

  return __swift_project_boxed_opaque_existential_1((v0 + 880), v2);
}

uint64_t OUTLINED_FUNCTION_21_45()
{

  return swift_getAtKeyPath();
}

void *OUTLINED_FUNCTION_31_25()
{
  v2 = *(v0 + 904);

  return __swift_project_boxed_opaque_existential_1((v0 + 880), v2);
}

void *OUTLINED_FUNCTION_32_27()
{
  v2 = *(v0 + 616);

  return __swift_project_boxed_opaque_existential_1((v0 + 592), v2);
}

uint64_t sub_237E64C78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_237E64CB8(uint64_t result, int a2, int a3)
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

uint64_t sub_237E64D1C(unint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1[10];
  if (*(v2 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = (v2 + (a1 << 6));
  v4 = v3[3];
  v14 = v3[2];
  v15 = v4;
  v5 = v3[5];
  v16 = v3[4];
  v17 = v5;
  v6 = *v1;
  v7 = v1[1];
  switch(v7 >> 62)
  {
    case 1uLL:
      v10 = v6 >> 32;
      if (v6 >> 32 < v6)
      {
        goto LABEL_16;
      }

      v9 = v6;
      goto LABEL_11;
    case 2uLL:
      goto LABEL_6;
    case 3uLL:
      memset(v13, 0, 14);
      v8 = *(&v14 + 1);
      v6 = v15;
      if (((*(&v14 + 1) | v15) & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    default:
      v13[0] = *v1;
      LODWORD(v13[1]) = v7;
      WORD2(v13[1]) = WORD2(v7);
      v8 = *(&v14 + 1);
      v6 = v15;
      if (((*(&v14 + 1) | v15) & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
LABEL_11:
        sub_237E65FA8(v9, v10, &v14, v18);
      }

      else
      {
LABEL_8:
        v18[0] = sub_237E65114(v13 + v6, v8);
        v18[1] = v11;
      }

      return v18[0];
  }
}

uint64_t sub_237E64E50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v15 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = a1;
      v10 = sub_237EF5CA0();
      if (!v10)
      {
        goto LABEL_14;
      }

      v17 = sub_237EF5CC0();
      if (__OFSUB__(v16, v17))
      {
LABEL_26:
        __break(1u);
      }

      v10 += v16 - v17;
LABEL_14:
      v13 = v15 - v16;
LABEL_15:
      v18 = sub_237EF5CB0();
      if (v18 >= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v18;
      }

      v20 = (v19 + v10);
      if (v10)
      {
        v6 = v20;
      }

      else
      {
        v6 = 0;
      }

      v7 = v10;
      return sub_237E65E7C(v7, v6, a3, a4);
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = sub_237EF5CA0();
      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = sub_237EF5CC0();
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_25;
      }

      v10 += v8 - v11;
LABEL_6:
      v12 = __OFSUB__(v9, v8);
      v13 = v9 - v8;
      if (!v12)
      {
        goto LABEL_15;
      }

      __break(1u);
      return sub_237E65F3C(0, 0, a3, a4);
    case 3uLL:
      return sub_237E65F3C(0, 0, a3, a4);
    default:
      v21 = a1;
      v22 = a2;
      v23 = BYTE2(a2);
      v24 = BYTE3(a2);
      v25 = BYTE4(a2);
      v26 = BYTE5(a2);
      v6 = &v21 + BYTE6(a2);
      v7 = &v21;
      return sub_237E65E7C(v7, v6, a3, a4);
  }
}

uint64_t sub_237E65044(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
  v8 = sub_237C96710(&qword_27DEB5210, &qword_27DEAECA0);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_237E66684(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_237E65114(uint64_t a1, uint64_t a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5208);
  v11 = sub_237C96710(&qword_280C8CD58, &qword_27DEB5208);
  v9[0] = a1;
  v9[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_237E66684(*v4, v5, &v8);
  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

void *sub_237E651E4@<X0>(void *a1@<X8>)
{
  __src[0] = xmmword_237F1AC60;
  *&__src[1] = 0x200000000;
  *(&__src[1] + 8) = 0u;
  *(&__src[2] + 8) = 0u;
  *(&__src[3] + 8) = 0u;
  *(&__src[4] + 1) = 0;
  *&__src[5] = MEMORY[0x277D84F90];
  v4[0] = __src[1];
  v4[1] = __src[2];
  v4[2] = __src[3];
  v4[3] = 0uLL;
  sub_237E659E8(64);
  sub_237E6604C(__src, v4);
  return memcpy(a1, __src, 0x58uLL);
}

void sub_237E6528C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  MEMORY[0x2383DE0D0](*v2, v2[1]);
  v6 = MEMORY[0x2383DE0D0](a1, a2);
  v7 = sub_237E65898(v6, 64);
  v8 = MEMORY[0x2383DE0D0](*v3, v3[1]);
  v9 = v8 + 64;
  if (__OFADD__(v8, 64))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_237D947B0(2u, v9, v6, &v35);
  sub_237D86CA4();
  v10 = OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_0_85(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32, v35, v36, v18, v37);
  if (!v20)
  {
    v21 = OUTLINED_FUNCTION_1_105(v19, v30, v33, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_2_96(v21, v22, v23, v24, v25, v26, v27, v28, v31, v34, v35);
    sub_237E64E50(a1, a2, v3, v7);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_237E65360(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x2383DE0D0](*v1, v1[1]);
  v4 = *(a1 + 16);
  if (v4 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = 4 * v4;
  v6 = sub_237E65898(4 * v4, 64);
  v7 = MEMORY[0x2383DE0D0](*v2, v2[1]);
  v8 = v7 + 64;
  if (__OFADD__(v7, 64))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237D947B0(1u, v8, v5, &v34);
  sub_237D86CA4();
  v9 = OUTLINED_FUNCTION_3_88();
  OUTLINED_FUNCTION_0_85(v9, v10, v11, v12, v13, v14, v15, v16, v28, v31, v34, v35, v17, v36);
  if (!v19)
  {
    v20 = OUTLINED_FUNCTION_1_105(v18, v29, v32, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_2_96(v20, v21, v22, v23, v24, v25, v26, v27, v30, v33, v34);
    sub_237E65E44(a1, v2, v6);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_237E6542C(uint64_t a1)
{
  v2 = v1;
  v53 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x2383DE0D0](*v2, v2[1]);
  v5 = v4 + 64;
  if (__OFADD__(v4, 64))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  if (v5 < 0)
  {
    goto LABEL_46;
  }

  v6 = *(a1 + 80);
  v39 = *(v6 + 16);
  if (v39)
  {
    v7 = 0;
    v38 = 0;
    v8 = (v6 + 56);
    v40 = v2;
    while (2)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *(v8 - 3);
      v42 = *v8;
      v43 = v8[1];
      v44 = *(v8 + 4);
      if (__CFADD__(v5, v9))
      {
        __break(1u);
      }

      else
      {
        v45 = *v8;
        v46 = v8[1];
        v47 = *(v8 + 4);
        v12 = v2[10];
        v13 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237D0B9C8();
          v12 = v33;
        }

        v14 = *(v12 + 16);
        if (v14 >= *(v12 + 24) >> 1)
        {
          sub_237D0B9C8();
          v12 = v34;
        }

        *(v12 + 16) = v14 + 1;
        v15 = v12 + (v14 << 6);
        *(v15 + 32) = v11;
        *(v15 + 40) = v9;
        *(v15 + 48) = v5;
        *(v15 + 88) = v47;
        *(v15 + 72) = v46;
        *(v15 + 56) = v45;
        v16 = v40;
        v40[10] = v12;
        v17 = v13;
        if (!v13)
        {
          if ((v10 | v5) < 0)
          {
            goto LABEL_40;
          }

          v38 = v5 - v10;
          v16 = v40;
        }

        v18 = *(v16 + 4);
        v19 = __CFADD__(v18, 1);
        v20 = v18 + 1;
        if (!v19)
        {
          v2 = v16;
          *(v16 + 4) = v20;
          *&v52[8] = v42;
          *&v52[24] = v43;
          *&v52[40] = v44;
          *&v51 = v11;
          *(&v51 + 1) = v9;
          *v52 = v5;
          v49 = MEMORY[0x277D838B0];
          v50 = MEMORY[0x277CC9C18];
          *&v48 = &v51;
          *(&v48 + 1) = &v53;
          __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x277D838B0]);
          sub_237EF5FB0();
          __swift_destroy_boxed_opaque_existential_1(&v48);
          v21 = v10 + v9;
          if (__CFADD__(v10, v9))
          {
            goto LABEL_37;
          }

          if (((v21 | v10) & 0x8000000000000000) == 0)
          {
            if (v21 < v10)
            {
              goto LABEL_39;
            }

            v7 = v17 + 1;
            v41 = v5 + v9;
            v8 += 4;
            v22 = sub_237EF5FC0();
            v24 = v23;
            *&v52[8] = MEMORY[0x277CC9318];
            *&v52[16] = MEMORY[0x277CC9300];
            *&v51 = v22;
            *(&v51 + 1) = v23;
            v25 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x277CC9318]);
            v26 = *v25;
            v27 = v25[1];
            switch(v27 >> 62)
            {
              case 1uLL:
                if (v26 >> 32 < v26)
                {
                  goto LABEL_41;
                }

                v31 = v7;
                v32 = v26;
                sub_237CBA540(v22, v24);
                if (!sub_237EF5CA0() || !__OFSUB__(v32, sub_237EF5CC0()))
                {
                  goto LABEL_30;
                }

                goto LABEL_44;
              case 2uLL:
                v28 = *(v26 + 16);
                v29 = *(v26 + 24);
                sub_237CBA540(v22, v24);
                if (sub_237EF5CA0())
                {
                  if (__OFSUB__(v28, sub_237EF5CC0()))
                  {
                    goto LABEL_43;
                  }

                  v30 = v29;
                  v31 = v7;
                }

                else
                {
                  v30 = v29;
                  v31 = v7;
                }

                if (__OFSUB__(v30, v28))
                {
                  goto LABEL_42;
                }

LABEL_30:
                sub_237EF5CB0();
                sub_237EF5FB0();
                sub_237CBA6B8(v22, v24);
                v7 = v31;
LABEL_31:
                __swift_destroy_boxed_opaque_existential_1(&v51);
                v5 = v41;
                if (v39 == v7)
                {
                  goto LABEL_34;
                }

                continue;
              case 3uLL:
                *(&v48 + 6) = 0;
                *&v48 = 0;
                goto LABEL_23;
              default:
                *&v48 = *v25;
                WORD4(v48) = v27;
                BYTE10(v48) = BYTE2(v27);
                BYTE11(v48) = BYTE3(v27);
                BYTE12(v48) = BYTE4(v27);
                BYTE13(v48) = BYTE5(v27);
LABEL_23:
                sub_237EF5FB0();
                goto LABEL_31;
            }
          }

          goto LABEL_38;
        }
      }

      break;
    }

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
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v38 = 0;
LABEL_34:
  v35 = *(v2 + 2);
  v51 = *(v2 + 1);
  *v52 = v35;
  v36 = *(v2 + 4);
  *&v52[16] = *(v2 + 3);
  *&v52[32] = v36;
  sub_237E658E8(&v51, v2);
  return v38;
}

uint64_t sub_237E65898(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result == 0x8000000000000001 && a2 == -1)
  {
    goto LABEL_14;
  }

  v3 = (result - 1) / a2;
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    goto LABEL_12;
  }

  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *sub_237E658E8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v2), v2);
      LODWORD(v2) = HIDWORD(v2) - v2;
      if (!v6)
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v9 = v2 + 16;
      v7 = *(v2 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v2 = v8 - v7;
      if (!v6)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(v3);
LABEL_6:
      if (v2 <= 63)
      {
LABEL_7:
        sub_237E659E8(64);
      }

      result = sub_237E6604C(a2, v5);
      break;
  }

  return result;
}

uint64_t sub_237E65998@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *(a2 + 16);
    if (v4 < 0)
    {
      goto LABEL_7;
    }

    result += v4;
  }

  v5 = *(a2 + 8);
  if ((v5 & 0x8000000000000000) == 0)
  {
    result = sub_237E65114(result, v5);
    *a3 = result;
    a3[1] = v6;
    return result;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237E659E8(uint64_t a1)
{
  v28[5] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB51F8);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v26, v28);
    v3 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    MEMORY[0x28223BE20](v3);
    sub_237EF5DA0();
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_237E668AC(v26);
  v5 = *v1;
  v6 = v1[1];
  v7 = 0;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_42;
      }

      v8 = HIDWORD(v5) - v5;
      v7 = v5 >> 32;
LABEL_8:
      if (__OFADD__(v7, a1))
      {
        goto LABEL_36;
      }

      if (v7 + a1 < v7)
      {
        goto LABEL_37;
      }

      if (v7 < 0)
      {
        goto LABEL_38;
      }

      v11 = sub_237EF5F90();
      MEMORY[0x28223BE20](v11);
      result = sub_237E662B8(sub_237E66954);
      if (v14 != a1)
      {
        goto LABEL_22;
      }

      v15 = result;
      v16 = v13;
      memset(v28, 0, 15);
      if (v13 == result)
      {
        return result;
      }

      v17 = v12;
      LOBYTE(v18) = 0;
      v8 = result - 1;
      v19 = v13;
      if (v13 < 0)
      {
        goto LABEL_21;
      }

      break;
    case 2uLL:
      v10 = v5 + 16;
      v9 = *(v5 + 16);
      v7 = *(v10 + 8);
      v8 = v7 - v9;
      if (!__OFSUB__(v7, v9))
      {
        goto LABEL_8;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_8;
    default:
      v7 = BYTE6(v6);
      v8 = BYTE6(v6);
      goto LABEL_8;
  }

  while (v19 < v15)
  {
    *(v28 + v18) = v17;
    v18 = v18 + 1;
    if ((v18 & 0x100) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v18 == 14)
    {
      *&v26[0] = v28[0];
      *(v26 + 6) = *(v28 + 6);
      result = sub_237EF5FB0();
      if (v8 == v19)
      {
        return result;
      }

      LOBYTE(v18) = 0;
    }

    else if (v8 == v19)
    {
      *&v26[0] = v28[0];
      *(v26 + 6) = *(v28 + 6);
      return sub_237EF5FB0();
    }

    ++v19;
    if (v16 < 0)
    {
      break;
    }
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v20 = *v1;
  v21 = v1[1];
  v22 = 0;
  switch(v21 >> 62)
  {
    case 1uLL:
      v22 = v20;
      break;
    case 2uLL:
      v22 = *(v20 + 16);
      break;
    default:
      break;
  }

  v23 = __OFADD__(v22, v8);
  v24 = v22 + v8;
  if (v23)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFADD__(v24, v14))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v25 = 0;
  switch(v21 >> 62)
  {
    case 1uLL:
      v25 = v20 >> 32;
      break;
    case 2uLL:
      v25 = *(v20 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v21);
      break;
  }

  if (v25 < v24 + v14)
  {
    goto LABEL_41;
  }

  return sub_237EF5FA0();
}

uint64_t sub_237E65D9C(_OWORD *a1)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  v5[3] = MEMORY[0x277D838B0];
  v5[4] = MEMORY[0x277CC9C18];
  v5[0] = v4;
  v5[1] = v5;
  __swift_project_boxed_opaque_existential_1(v5, MEMORY[0x277D838B0]);
  sub_237EF5FB0();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_237E65E44(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!(v3 >> 61))
  {
    return sub_237E65E7C(result + 32, result + 32 + 4 * v3, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_237E65E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[3] = MEMORY[0x277D838B0];
  v9[4] = MEMORY[0x277CC9C18];
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277D838B0]);
  sub_237EF5FB0();
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  if (a1)
  {
    v8 = a2 - a1;
    if (a2 - a1 >= a4)
    {
      return result;
    }
  }

  else
  {
    if (a4 < 1)
    {
      return result;
    }

    v8 = 0;
  }

  result = a4 - v8;
  if (__OFSUB__(a4, v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_237E659E8(result);
}

uint64_t sub_237E65F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  return sub_237E65E7C(&v5, &v5 + BYTE6(a2), a3, a4);
}

uint64_t sub_237E65FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = sub_237EF5CA0();
  v9 = result;
  if (result)
  {
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v9 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_237EF5CB0();
    return sub_237E65998(v9, a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_237E6604C(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:
      v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v3, v2);
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      v8 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v8 < v3)
      {
        goto LABEL_15;
      }

      if (sub_237EF5CA0() && __OFSUB__(v3, sub_237EF5CC0()))
      {
        goto LABEL_16;
      }

      sub_237EF5CD0();
      swift_allocObject();
      v10 = sub_237EF5C80();

      v7 = v10;
      v8 = v3 >> 32;
LABEL_10:
      if (v8 < v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_237E666FC(v3, v8, v7, a2);

      v9 = v7 | 0x4000000000000000;
LABEL_12:
      *v5 = v3;
      v5[1] = v9;
      return result;
    case 2uLL:

      sub_237CBA6B8(v3, v2);
      *v5 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      sub_237EF5F10();
      result = sub_237E666FC(*(v3 + 16), *(v3 + 24), v2 & 0x3FFFFFFFFFFFFFFFLL, a2);
      v9 = v2 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      return result;
    default:
      result = sub_237CBA6B8(*result, v2);
      v6 = *(a2 + 8) | (*(a2 + 12) << 32) | (*(a2 + 13) << 40) | (*(a2 + 14) << 48);
      *v5 = *a2;
      v5[1] = v6;
      return result;
  }
}

uint64_t sub_237E662B8(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v19 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v6, v5);
      *v4 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_237EF5CA0() && __OFSUB__(v6, sub_237EF5CC0()))
      {
        goto LABEL_24;
      }

      sub_237EF5CD0();
      swift_allocObject();
      v13 = sub_237EF5C80();

      v11 = v13;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_237E66774(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_237CBA6B8(v6, v5);
      v17 = v6;
      v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_237F1AC60;
      sub_237CBA6B8(0, 0xC000000000000000);
      sub_237EF5F10();
      v6 = v17;
      v9 = sub_237E66774(*(v17 + 16), *(v17 + 24), a1);
      if (v2)
      {
        v10 = v18 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v18 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v16, 0, 15);
      a1(&v17, v16, v16);
      if (!v2)
      {
        return v17;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_237CBA6B8(v6, v5);
      v16[0] = v6;
      LOWORD(v16[1]) = v5;
      BYTE2(v16[1]) = BYTE2(v5);
      BYTE3(v16[1]) = BYTE3(v5);
      BYTE4(v16[1]) = BYTE4(v5);
      BYTE5(v16[1]) = BYTE5(v5);
      BYTE6(v16[1]) = BYTE6(v5);
      a1(&v17, v16, v16 + BYTE6(v5));
      if (!v2)
      {
        v3 = v17;
      }

      v8 = LODWORD(v16[1]) | ((WORD2(v16[1]) | (BYTE6(v16[1]) << 16)) << 32);
      *v4 = v16[0];
      v4[1] = v8;
      return v3;
  }
}

uint64_t sub_237E66684@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_237EF5F00();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2383DE000]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2383DE030]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237E666FC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  result = sub_237EF5CA0();
  if (result)
  {
    v7 = result;
    result = sub_237EF5CC0();
    if (!__OFSUB__(a1, result))
    {
      v8 = (v7 + a1 - result);
      result = sub_237EF5CB0();
      v9 = a4[1];
      *v8 = *a4;
      v8[1] = v9;
      v10 = a4[3];
      v8[2] = a4[2];
      v8[3] = v10;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_237E66774(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_237EF5CA0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_237EF5CC0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_237EF5CB0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_237E6682C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!result)
  {
    return a5;
  }

  v7 = __OFSUB__(a2 - result, a3);
  v8 = a2 - result - a3;
  if (!v7)
  {
    if (v8)
    {
      v9 = 0;
      v10 = result + a3;
      while ((v8 & ~(v8 >> 63)) != v9)
      {
        if (a5 == v9)
        {
          return a5;
        }

        if ((a5 & ~(a5 >> 63)) == v9)
        {
          goto LABEL_11;
        }

        *(v10 + v9++) = a6;
        if (v8 == v9)
        {
          return a5;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    return a5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237E668AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E66914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_237E6682C(a1, a2, a3, a4, *a5, *(a5 + 8));
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
    *(a6 + 24) = v11;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlobsFileError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E66A80()
{
  result = qword_27DEB5218[0];
  if (!qword_27DEB5218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5218);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a13, __int128 a14)
{
  v16 = *(v14 + 80);
  *(v16 + 16) = v15 + 1;
  v17 = (v16 + (v15 << 6));
  v17[2] = a11;
  v17[3] = a12;
  result = a13;
  v17[4] = a13;
  v17[5] = a14;
  *(v14 + 80) = v16;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1_105@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15)
{
  *(v16 + 16) = v15;
  v18 = a1[1];
  a12 = *a1;
  a13 = v18;
  v19 = a1[3];
  a14 = a1[2];
  a15 = v19;

  return sub_237E658E8(&a12, v16);
}

uint64_t OUTLINED_FUNCTION_2_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_237E65D9C(&a11);
}

uint64_t OUTLINED_FUNCTION_3_88()
{
  v2 = *(*(v0 + 80) + 16);

  return sub_237D86D78(v2);
}

uint64_t BaseTreeRegressorModel.encode(to:)(void *a1)
{
  v3 = sub_237EF5BF0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = sub_237E88538();
  if (!v1)
  {
    v12 = result;
    v13 = v11;
    v19 = a1;
    sub_237EF5C30();
    swift_allocObject();
    sub_237EF5C20();
    (*(v5 + 104))(v9, *MEMORY[0x277CC86A8], v3);
    sub_237EF5C00();
    sub_237E4C030();
    sub_237EF5C10();
    memcpy(v15, v16, sizeof(v15));
    memcpy(v18, v16, sizeof(v18));
    sub_237D73A1C(v17);
    sub_237D6E9A0(v15);

    sub_237CBA6B8(v12, v13);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_237EFA1A0();
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
    sub_237E5226C(&qword_27DEB4D90);
    sub_237EF9DA0();
    sub_237C863A0(v17, &qword_27DEB2210);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return result;
}

uint64_t BaseTreeRegressorModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_237EF85C0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA180();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a2;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2210);
  sub_237E5226C(&qword_27DEB4D70);
  sub_237EF9D60();
  v33 = v27[0];
  v34 = v27[1];
  v35 = v27[2];
  v36 = v28;
  sub_237D74FBC(&v33, v27);
  sub_237D7360C(&v33, v30);
  memcpy(v31, v30, sizeof(v31));
  if (sub_237E52394(v31) == 1)
  {
    v12 = sub_237EF93E0();
    swift_allocError();
    v14 = v13;
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237F00970);
    v37 = v36;
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);
    sub_237C863A0(&v33, &qword_27DEB2210);

    MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237F00A80);
    v37 = 1;
    v16 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v16);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237EF93D0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84168], v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v29);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v32, v31, sizeof(v32));
  sub_237D6E010();
  sub_237EF85B0();
  v17 = sub_237EF85A0();
  v19 = v18;

  result = (*(v7 + 8))(v11, v5);
  if (v19 >> 60 != 15)
  {
    sub_237C863A0(v30, &qword_27DEB4DA8);
    type metadata accessor for XGBooster();
    swift_allocObject();
    v21 = sub_237E88668(0, 0);

    sub_237E88474(v17, v19);

    sub_237E523AC(v17, v19);
    v22 = v34;
    v23 = *(v33 + 16);
    result = sub_237C863A0(&v33, &qword_27DEB2210);
    if (*(&v35 + 1))
    {
      v24 = v23 / *(&v35 + 1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      *v25 = v22;
      v25[1] = v21;
      v25[2] = v24;

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BaseTreeRegressorModel.export(to:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v8 = *v1;
  v9 = v3;
  v4 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_2_97();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v4;
  BaseTreeRegressorModel.export(to:metadata:)(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_237D91628(__dst);
}

void BaseTreeRegressorModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v27 = a1;
  v5 = type metadata accessor for CoreMLPackage();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v20 = *a2;
  v21 = a2[2];
  v22 = a2[4];
  v23 = a2[6];
  v9 = a2[8];
  sub_237E49F34(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, v23, *v2, v2[1], v2[2], v25, v26, v27, v28, v29);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v18 = sub_237EF7780();
    sub_237C9FB0C(v9, sub_237C9FE58, 0, v19);
    v18(&v24, 0);
    sub_237E33BC0(v27);
    sub_237D0F8BC(v8);
  }
}

uint64_t OUTLINED_FUNCTION_2_97()
{

  return sub_237EF8230();
}

void OneHotEncoder.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x6E45746F48656E4FLL, 0xED00007265646F63);
  }

  (*(v7 + 16))(v11, v3, v1);
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v12 = sub_237EF8D00();
  OneHotEncoder.Transformer.init(categories:)(v12, v5);
  OUTLINED_FUNCTION_12_6();
}

uint64_t OneHotEncoder.Transformer.init(categories:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_237EF90F0();
  sub_237EF8260();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  type metadata accessor for ComparableOptional();
  swift_getWitnessTable();
  sub_237C9339C();

  sub_237EF8A60();
  OUTLINED_FUNCTION_9_60();
  swift_getWitnessTable();
  sub_237EF8D00();
  OUTLINED_FUNCTION_7_11();
  result = sub_237E86E14();
  *a2 = a1;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

uint64_t sub_237E67884()
{
  OneHotEncoder.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OneHotEncoder.makeTransformer()@<X0>(void *a1@<X8>)
{
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v2 = sub_237EF8130();
  return OneHotEncoder.Transformer.init(categories:)(v2, a1);
}

void OneHotEncoder.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v51 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v48 = v5[2];
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_12_7();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v44 = v13;
  v45 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  OUTLINED_FUNCTION_1_1();
  v47 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v46 = &v40 - v19;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  (*(v23 + 16))(v22 - v21, v8, v4);
  v49 = v6[6];
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v50 = v2;
  v24 = sub_237EF8D00();
  v25 = sub_237EF8CB0();
  if (v25)
  {

    *v10 = v24;
  }

  else
  {
    v43 = &v40;
    v52 = v24;
    MEMORY[0x28223BE20](v25);
    v26 = v48;
    *(&v40 - 8) = v48;
    *(&v40 - 7) = v4;
    v27 = v6[3];
    v41 = v6[4];
    v28 = v41;
    v42 = v27;
    *(&v40 - 6) = v27;
    *(&v40 - 5) = v28;
    v40 = v6[5];
    v30 = v49;
    v29 = v50;
    *(&v40 - 4) = v40;
    *(&v40 - 3) = v30;
    *(&v40 - 2) = v29;
    *(&v40 - 1) = v10;
    OUTLINED_FUNCTION_12_7();
    sub_237EF8CF0();
    swift_getWitnessTable();
    sub_237EF87D0();

    if (__swift_getEnumTagSinglePayload(v16, 1, v11) == 1)
    {
      (*(v44 + 8))(v16, v45);
    }

    else
    {
      v32 = v46;
      v31 = v47;
      v33 = (*(v47 + 32))(v46, v16, v11);
      MEMORY[0x28223BE20](v33);
      *(&v40 - 8) = v26;
      *(&v40 - 7) = v4;
      v34 = v41;
      *(&v40 - 6) = v42;
      *(&v40 - 5) = v34;
      v36 = v49;
      v35 = v50;
      *(&v40 - 4) = v40;
      *(&v40 - 3) = v36;
      *(&v40 - 2) = v35;
      sub_237CA0A1C();
      if (v53)
      {
        v37 = v52;
      }

      else
      {
        v37 = 7104878;
      }

      if (v53)
      {
        v38 = v53;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      sub_237C84150();
      swift_allocError();
      *v39 = xmmword_237F1AE50;
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
      *(v39 + 32) = 3;
      swift_willThrow();
      (*(v31 + 8))(v32, v11);
    }
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E67DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_237EF85D0();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t OneHotEncoder.encodeWithOptimizer(_:to:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v9 = *a1;
  v10 = v2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_20_42();
  WitnessTable = swift_getWitnessTable();
  return v5(&v9, v6, WitnessTable, v3, v4);
}

uint64_t OneHotEncoder.decodeWithOptimizer(from:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_20_42();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 8);
  WitnessTable = swift_getWitnessTable();
  return v5(v2, v2, WitnessTable, v3, v4);
}

uint64_t sub_237E68004()
{
  OneHotEncoder.update<A>(_:with:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OneHotEncoder.Transformer.categories.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_237E68110()
{
  v0 = sub_237EF9890();

  return v0 != 0;
}

uint64_t sub_237E6815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E681D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E6823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E682AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_237E6831C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_237E68110();
  *a1 = result;
  return result;
}

uint64_t sub_237E68350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237E68158();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237E6837C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E683D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237E68424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return sub_237C66C14(v9, a2, a3);
}

void OneHotEncoder.Transformer.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v17 = v0;
  v18 = v1;
  v3 = *(v2 + 16);
  v4 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v19 = type metadata accessor for ComparableOptional();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  v15 = *(v17 + 2);
  v20 = *v17;
  v21 = v15;
  (*(v6 + 16))(v9, v18, v4);
  sub_237C66C14(v9, v3, v14);
  sub_237E6872C(v14);
  (*(v11 + 8))(v14, v19);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E6872C(uint64_t a1)
{
  v2 = sub_237EF90F0();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  type metadata accessor for ComparableOptional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_237E87024();
  if (v6)
  {
    (*(v17 + 16))(v4, a1, v2);
    v7 = sub_237EF85D0();
    v9 = v8;
    sub_237C84150();
    swift_allocError();
    *v10 = xmmword_237F1AE50;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = 3;
    swift_willThrow();
    return;
  }

  v11 = v5;
  v12 = sub_237E87068();
  sub_237CDBF9C(0, v12);
  v14 = v13;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237E641B8();
  v14 = v15;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v11 < *(v14 + 16))
  {
    *(v14 + 8 * v11 + 32) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t OneHotEncoder.Transformer.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 2);
  v14[2] = *(a4 + 16);
  v14[3] = a5;
  v10 = *(a4 + 40);
  v15 = *(a4 + 24);
  v16 = v10;
  v17 = a6;
  v18 = *v6;
  v19 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237C8FFEC(sub_237E68C68, v14, a5, v11, v12, a6, MEMORY[0x277D84950], &v20);
}

uint64_t sub_237E68A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v30 = a3;
  v31 = a4;
  v28 = a8;
  v29 = a2;
  v32 = a1;
  v33 = a9;
  v34 = a7;
  v14 = sub_237EF90F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v18 = type metadata accessor for ComparableOptional();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  (*(v15 + 16))(v17, v32, v14, v20);
  sub_237C66C14(v17, a5, v22);
  v35 = a5;
  v36 = a6;
  v37 = v34;
  v38 = v33;
  v39 = a10;
  type metadata accessor for OneHotEncoder.Transformer();
  v23 = v43;
  sub_237E6872C(v22);
  if (v23)
  {
    result = (*(v19 + 8))(v22, v18);
    *a12 = v23;
  }

  else
  {
    v26 = v24;
    result = (*(v19 + 8))(v22, v18);
    *v28 = v26;
  }

  return result;
}

uint64_t OneHotEncoder.Transformer.category(at:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_7();
  type metadata accessor for ComparableOptional();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_9_60();
  sub_237E8701C();
  OUTLINED_FUNCTION_12_7();
  v5 = sub_237EF90F0();
  return (*(*(v5 - 8) + 32))(a1, v4, v5);
}

uint64_t sub_237E68DA0(void *a1)
{
  OneHotEncoder.Transformer.applied(to:eventHandler:)();
  *a1 = v3;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t OneHotEncoder.Transformer.debugDescription.getter()
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000026, 0x8000000237F00E70);
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237EF9D00();

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

void OneHotEncoder.Transformer.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = v5;
  v12 = *(v3 + 16);
  v18 = v12;
  v19 = v4;
  v20 = v5;
  v21 = v13;
  type metadata accessor for OneHotEncoder.Transformer.CodingKeys();
  OUTLINED_FUNCTION_5_84();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v15 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  v11 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EF8260();
  sub_237EFA1B0();
  *&v18 = v11;
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_5();
  sub_237EF8CF0();
  v17 = v14;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9A70();

  (*(v15 + 8))(v10, v6);
  OUTLINED_FUNCTION_12_6();
}

void OneHotEncoder.Transformer.init(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v16 = v3;
  v19 = v4;
  v20 = v5;
  *&v24 = v4;
  *(&v24 + 1) = v6;
  v25 = v5;
  v26 = v7;
  v18 = v8;
  v27 = v8;
  type metadata accessor for OneHotEncoder.Transformer.CodingKeys();
  OUTLINED_FUNCTION_5_84();
  swift_getWitnessTable();
  v21 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v17 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    v13 = v17;
    sub_237EF90F0();
    OUTLINED_FUNCTION_0_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_13_5();
    sub_237EF8CF0();
    v23 = v20;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_237EF9970();
    OneHotEncoder.Transformer.init(categories:)(v24, &v24);
    (*(v13 + 8))(v12, v21);
    v14 = v25;
    v15 = v16;
    *v16 = v24;
    *(v15 + 2) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E693C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237E69424()
{
  OUTLINED_FUNCTION_13_4();
  v65 = v1;
  v69 = v2;
  v3 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v71 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v70 = v7 - v6;
  v67 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v66 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v68 = v11 - v10;
  v64 = sub_237EF7290();
  OUTLINED_FUNCTION_1();
  v72 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v63 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v62 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v76 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v74 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  v29 = *(v0 + 8);
  sub_237EF7720();
  sub_237EF7620();
  v30 = swift_dynamicCastMetatype();
  v73 = v28;
  v75 = v23;
  if (v30)
  {
    v61 = v3;
    v78[0] = v29;
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_11_58();
    sub_237EF8A60();
    sub_237EF8260();
    OUTLINED_FUNCTION_8_79();
    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_21_46();
    (*(v72 + 104))(v16, *MEMORY[0x277D251F0], v64);
    sub_237EF72B0();
    (*(v62 + 104))(v21, *MEMORY[0x277D25320], v63);
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    sub_237EF70E0();
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_4_85();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_13_49(v31, xmmword_237F03530);
    sub_237EF6DB0();
    v32 = MEMORY[0x277D25130];
    v33 = v28;
  }

  else
  {
    v60 = v21;
    v34 = v72;
    v35 = swift_dynamicCastMetatype();
    if (!v35)
    {
      type metadata accessor for SerializationError();
      sub_237CA2D6C();
      swift_allocError();
      v56 = v55;
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000031, 0x8000000237F00EA0);
      v57 = sub_237EFA220();
      MEMORY[0x2383E0710](v57);

      MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
      v58 = v78[1];
      *v56 = v78[0];
      v56[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v75 + 8))(v73, v76);
      goto LABEL_6;
    }

    v61 = v3;
    v78[0] = v29;
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_11_58();
    sub_237EF8A60();
    sub_237EF8260();
    OUTLINED_FUNCTION_8_79();
    OUTLINED_FUNCTION_14_58();
    OUTLINED_FUNCTION_21_46();
    (*(v34 + 104))(v16, *MEMORY[0x277D251F0], v64);
    v36 = v60;
    sub_237EF72C0();
    v29 = v62 + 104;
    (*(v62 + 104))(v36, *MEMORY[0x277D25320], v63);
    v33 = v73;
    sub_237EF7660();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    sub_237EF70E0();
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_4_85();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_13_49(v37, xmmword_237F03530);
    sub_237EF6D00();
    v32 = MEMORY[0x277D25118];
  }

  (*(v66 + 104))(v29, *v32, v67);
  sub_237EF7090();
  sub_237EF76B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  sub_237EF70E0();
  OUTLINED_FUNCTION_4_85();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF6E40();
  sub_237EF7090();
  sub_237EF7700();
  v38 = v74;
  v39 = *(v75 + 16);
  v40 = v76;
  v39(v74, v33, v76);
  v41 = v70;
  sub_237EF7810();
  v42 = type metadata accessor for CoreMLPackage();
  v43 = v69;
  v44 = &v69[*(v42 + 24)];
  *(v44 + 10) = 0;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *v44 = 0u;
  v39(v43, v38, v40);
  memcpy(v78, v44, 0x58uLL);
  sub_237C9BD20(v78);
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 10) = 0;
  v45 = v71;
  v46 = v61;
  (*(v71 + 16))(&v43[*(v42 + 20)], v41, v61);
  v47 = sub_237E34060();
  v49 = v48;
  v50 = sub_237EF7780();
  v52 = v51;
  swift_isUniquelyReferenced_nonNull_native();
  v79 = *v52;
  sub_237C91098(v47, v49, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v52 = v79;
  v50(&v77, 0);
  (*(v45 + 8))(v41, v46);
  v53 = *(v75 + 8);
  v54 = v76;
  v53(v74, v76);
  v53(v73, v54);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E69DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, a2) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a2);
    result = swift_dynamicCast();
    v16 = v18[0];
    v17 = v18[1];
  }

  *a3 = v16;
  a3[1] = v17;
  return result;
}

uint64_t sub_237E69F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, a2) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a2);
    result = swift_dynamicCast();
    v16 = v17[1];
  }

  *a3 = v16;
  return result;
}

uint64_t sub_237E6A178()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237E6A1B4(_BYTE *result, int a2, int a3)
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

void sub_237E6A2DC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_237E641B8();
    *v0 = v3;
  }
}

unint64_t sub_237E6A31C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_79()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_60()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_58()
{

  return type metadata accessor for ComparableOptional();
}

void OUTLINED_FUNCTION_14_58()
{

  sub_237C9339C();
}

uint64_t OUTLINED_FUNCTION_20_42()
{

  return type metadata accessor for OneHotEncoder.Transformer();
}

uint64_t OUTLINED_FUNCTION_21_46()
{
  *(v1 - 304) = v0;
}

uint64_t sub_237E6A4A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E6A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for OptimizerState();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  if (*(a4 + 32))(a3, a4, v12) >= a1 || (sub_237E6A680(a2, a3, a4))
  {
    return 1;
  }

  (*(a4 + 24))(a3, a4);
  v15 = v14[*(v8 + 56)];
  (*(v10 + 8))(v14, v8);
  return v15;
}

uint64_t sub_237E6A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for OptimizerState();
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v19 - v16;
  (*(a3 + 24))(a2, a3, v15);
  (*(v7 + 16))(v10, &v17[*(v11 + 44)], AssociatedTypeWitness);
  (*(v13 + 8))(v17, v11);
  LOBYTE(v13) = sub_237EF8410();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v13 & 1;
}

void sub_237E6A888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (sub_237E6A680(v14, v15, v16))
  {
    if (qword_27DEAD0C8 != -1)
    {
      OUTLINED_FUNCTION_2_98();
    }

    v17 = sub_237EF7DB0();
    __swift_project_value_buffer(v17, qword_27DEE2458);
    (*(v7 + 16))(v13, v3, a2);
    v18 = sub_237EF7D90();
    v19 = sub_237EF8F70();
    if (!os_log_type_enabled(v18, v19))
    {
      (*(v7 + 8))(v13, a2);
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = (*(a3 + 32))(a2, a3);
    (*(v7 + 8))(v13, a2);
    *(v20 + 4) = v21;
    v22 = "The optimizer converged after %ld iterations.";
    v23 = v19;
  }

  else
  {
    if (qword_27DEAD0C8 != -1)
    {
      OUTLINED_FUNCTION_2_98();
    }

    v24 = sub_237EF7DB0();
    __swift_project_value_buffer(v24, qword_27DEE2458);
    (*(v7 + 16))(v10, v3, a2);
    v18 = sub_237EF7D90();
    v25 = sub_237EF8F80();
    if (!os_log_type_enabled(v18, v25))
    {
      (*(v7 + 8))(v10, a2);
      goto LABEL_13;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v26 = (*(a3 + 32))(a2, a3);
    (*(v7 + 8))(v10, a2);
    *(v20 + 4) = v26;
    v22 = "The optimizer failed to converge after %ld iterations.";
    v23 = v25;
  }

  _os_log_impl(&dword_237C51000, v18, v23, v22, v20, 0xCu);
  MEMORY[0x2383E2DF0](v20, -1, -1);
LABEL_13:
}

uint64_t sub_237E6AB70()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, qword_27DEE2458);
  __swift_project_value_buffer(v0, qword_27DEE2458);
  return sub_237EF7DA0();
}

uint64_t OUTLINED_FUNCTION_2_98()
{

  return swift_once();
}

uint64_t sub_237E6AC24()
{
  [*(v0 + 48) invalidate];

  v1 = OBJC_IVAR____TtC18CreateMLComponents16LogTableObserver_logger;
  v2 = sub_237EF7DB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_237E6ACBC()
{
  sub_237E6AC24();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogTableObserver()
{
  result = qword_27DEB52A8;
  if (!qword_27DEB52A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E6AD68()
{
  result = sub_237EF7DB0();
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

uint64_t OptionalUnwrapper.applied(to:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  (*(v8 + 16))(v15 - v11, a1, v6, v10);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a3, v12, v5);
  }

  (*(v8 + 8))(v12, v6);
  sub_237C84150();
  swift_allocError();
  *v13 = 0xD000000000000011;
  *(v13 + 8) = 0x8000000237F1B230;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  return swift_willThrow();
}

uint64_t sub_237E6AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OptionalUnwrapper.applied(to:eventHandler:)(a2, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237E6B040@<X0>(char *a1@<X8>)
{
  v81 = a1;
  v2 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v82 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v88 = v6 - v5;
  v80 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v87 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v85 = v20;
  MEMORY[0x28223BE20](v21);
  v86 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v78 - v24;
  sub_237EF7720();
  v26 = sub_237EF7620();
  MEMORY[0x2383DF360](v26);
  (*(v15 + 104))(v19, *MEMORY[0x277D253C8], v13);
  v89 = v25;
  sub_237EF7660();
  v27 = swift_dynamicCastMetatype();
  v84 = v1;
  v83 = v2;
  if (v27)
  {
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v28 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v28);
    v29 = swift_allocObject();
    v78[2] = xmmword_237F03530;
    *(v29 + 16) = xmmword_237F03530;
    sub_237EF6DB0();
    v30 = *MEMORY[0x277D25130];
    v31 = *(v8 + 104);
    v32 = v80;
    v31(v12, v30, v80);
    sub_237EF7090();
    v25 = v89;
    sub_237EF76B0();
    v33 = swift_allocObject();
    OUTLINED_FUNCTION_12_52(v33);
    sub_237EF6DB0();
    v31(v12, v30, v32);
LABEL_11:
    sub_237EF7090();
    OUTLINED_FUNCTION_11_59();
    sub_237EF7700();
    v51 = v85;
    v52 = v86;
    v53 = *(v85 + 16);
    v54 = v87;
    v53(v86, v25, v87);
    sub_237EF7810();
    v55 = type metadata accessor for CoreMLPackage();
    v56 = v81;
    v57 = &v81[*(v55 + 24)];
    *(v57 + 80) = 0;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0u;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *v57 = 0u;
    v53(v56, v52, v54);
    memcpy(__dst, v57, 0x58uLL);
    sub_237C9BD20(__dst);
    *v57 = 0u;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0u;
    *(v57 + 80) = 0;
    v58 = v82;
    v59 = v83;
    (*(v82 + 16))(&v56[*(v55 + 20)], v88, v83);
    v60 = sub_237E34060();
    v62 = v61;
    v63 = sub_237EF7780();
    v65 = v64;
    swift_isUniquelyReferenced_nonNull_native();
    v92 = *v65;
    sub_237C91098(v60, v62, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v65 = v92;
    v63(v90, 0);
    (*(v58 + 8))(v88, v59);
    v66 = *(v51 + 8);
    v67 = v87;
    v66(v86, v87);
    return (v66)(v89, v67);
  }

  v79 = v8;
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v34 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v34);
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_5_85(v35, &v93, xmmword_237F03530);
    sub_237EF6DA0();
    v36 = *(v79 + 104);
    v37 = v12;
    v38 = v80;
    v36(v37, *MEMORY[0x277D25128], v80);
    sub_237EF7090();
    v25 = v89;
    sub_237EF76B0();
    v39 = swift_allocObject();
    OUTLINED_FUNCTION_12_52(v39);
    sub_237EF6DB0();
    v36(v2, *MEMORY[0x277D25130], v38);
    goto LABEL_11;
  }

  if (swift_dynamicCastMetatype())
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v41 = OUTLINED_FUNCTION_8_80(v40);
    OUTLINED_FUNCTION_6_1(v41);
    v42 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v42, &__dst[10], xmmword_237F03530);
    sub_237EF6D00();
    v43 = *MEMORY[0x277D25118];
    v44 = OUTLINED_FUNCTION_1_106();
    v1(v44);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v45 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v45);
    sub_237EF6D00();
LABEL_10:
    (v1)(v2, v43, v12);
    goto LABEL_11;
  }

  sub_237C75918(0, &qword_27DEB0AA8);
  if (OUTLINED_FUNCTION_10_62() || (type metadata accessor for CVBuffer(0), OUTLINED_FUNCTION_10_62()))
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v47 = OUTLINED_FUNCTION_8_80(v46);
    OUTLINED_FUNCTION_6_1(v47);
    v48 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v48, &__dst[10], xmmword_237F03530);
    sub_237EF6D80();
    v43 = *MEMORY[0x277D25120];
    v49 = OUTLINED_FUNCTION_1_106();
    v1(v49);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v50 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v50);
    sub_237EF6D80();
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  if (OUTLINED_FUNCTION_10_62() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60), OUTLINED_FUNCTION_10_62()) || (sub_237C75918(0, &qword_27DEAF160), OUTLINED_FUNCTION_10_62()))
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v70 = OUTLINED_FUNCTION_8_80(v69);
    OUTLINED_FUNCTION_6_1(v70);
    v71 = OUTLINED_FUNCTION_3_89();
    OUTLINED_FUNCTION_5_85(v71, &__dst[10], xmmword_237F03530);
    sub_237EF6E20();
    v43 = *MEMORY[0x277D250A0];
    v72 = OUTLINED_FUNCTION_1_106();
    v1(v72);
    OUTLINED_FUNCTION_4_86();
    OUTLINED_FUNCTION_11_59();
    sub_237EF76B0();
    v73 = OUTLINED_FUNCTION_7_68();
    OUTLINED_FUNCTION_2_99(v73);
    sub_237EF6E20();
    goto LABEL_10;
  }

  type metadata accessor for SerializationError();
  sub_237CA2D6C();
  swift_allocError();
  v75 = v74;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000042, 0x8000000237F00F50);
  v76 = sub_237EFA220();
  MEMORY[0x2383E0710](v76);

  MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
  v77 = __dst[1];
  *v75 = __dst[0];
  v75[1] = v77;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v85 + 8))(v89, v87);
}

_BYTE *sub_237E6BAC0(_BYTE *result, int a2, int a3)
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

__n128 OUTLINED_FUNCTION_2_99(__n128 *a1)
{
  result = *(v1 - 352);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_89()
{
  *(v1 - 328) = v0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_86()
{

  return sub_237EF7090();
}

__n128 *OUTLINED_FUNCTION_5_85@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a3;
  result[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_68()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_80(uint64_t a1)
{
  *(v1 - 320) = a1;

  return sub_237EF70E0();
}

uint64_t OUTLINED_FUNCTION_10_62()
{

  return swift_dynamicCastMetatype();
}

__n128 OUTLINED_FUNCTION_12_52(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

uint64_t sub_237E6BCA8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v70 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v69 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v76 = v4 - v3;
  OUTLINED_FUNCTION_12_1();
  v62 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v71 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v60 = v8 - v7;
  OUTLINED_FUNCTION_12_1();
  v64 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v63 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v59 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_237EF73D0();
  v66 = v20;
  v67 = *(v20 - 8);
  v21 = v67;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v74 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v75 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v73 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  v31 = *(v61 + 1);
  v58 = *v61;
  v32 = v58;
  v57 = v31;
  memcpy(__dst, v61 + 16, sizeof(__dst));
  v61 = "tworkClassifierModel ";
  v72 = v30;
  sub_237EF7720();
  v65 = v24;
  sub_237E6CF44(v32, v31, v24);
  (*(v21 + 16))(v19, v24, v20);
  (*(v15 + 104))(v19, *MEMORY[0x277D25338], v59);
  sub_237EF7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  v59 = *(*(sub_237EF70E0() - 8) + 72);
  v33 = swift_allocObject();
  v56 = xmmword_237F03530;
  *(v33 + 16) = xmmword_237F03530;
  v34 = v60;
  v35 = v62;
  (*(v71 + 104))(v60, *MEMORY[0x277D250F0], v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v36 = swift_allocObject();
  *(v36 + 16) = v56;
  v78[0] = v58;
  v78[1] = v57;
  memcpy(&v78[2], __dst, 0x49uLL);
  *(v36 + 32) = BaseLogisticRegressionClassifierModel.featureCount.getter();
  sub_237EF6CF0();

  (*(v71 + 8))(v34, v35);
  OUTLINED_FUNCTION_2_100();
  v37 = v72;
  sub_237EF76B0();
  *(swift_allocObject() + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_3_90();
  sub_237EF6D00();
  (*(v63 + 104))(v13, *MEMORY[0x277D25118], v64);
  OUTLINED_FUNCTION_2_100();
  OUTLINED_FUNCTION_3_90();
  sub_237EF6E40();
  OUTLINED_FUNCTION_2_100();
  sub_237EF7700();
  sub_237EF7620();
  sub_237EF75E0();
  sub_237EF7600();
  sub_237EF7640();
  v38 = *(v75 + 16);
  v39 = v73;
  v40 = v74;
  v38(v73, v37, v74);
  v41 = v76;
  sub_237EF7810();
  v42 = type metadata accessor for CoreMLPackage();
  v43 = v68;
  v44 = v68 + *(v42 + 24);
  *(v44 + 80) = 0;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *v44 = 0u;
  v38(v43, v39, v40);
  memcpy(v78, v44, 0x58uLL);
  sub_237C863A0(v78, &unk_27DEAD7B0);
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 80) = 0;
  v45 = v69;
  v46 = v70;
  (*(v69 + 16))(v43 + *(v42 + 20), v41, v70);
  v47 = sub_237E34060();
  v49 = v48;
  v50 = sub_237EF7780();
  v52 = v51;
  swift_isUniquelyReferenced_nonNull_native();
  v80 = *v52;
  sub_237C91098(v47, v49, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v52 = v80;
  v50(v77, 0);
  (*(v45 + 8))(v76, v46);
  v53 = *(v75 + 8);
  v54 = v74;
  v53(v73, v74);
  (*(v67 + 8))(v65, v66);
  return (v53)(v72, v54);
}

uint64_t sub_237E6C52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v97 = sub_237EF7350();
  OUTLINED_FUNCTION_1();
  v93 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v96 = (v7 - v6);
  OUTLINED_FUNCTION_12_1();
  v94 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v99 = v10;
  MEMORY[0x28223BE20](v11);
  v92 = &v77 - v12;
  OUTLINED_FUNCTION_12_1();
  sub_237EF73D0();
  OUTLINED_FUNCTION_1();
  v103 = v14;
  v104 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v98 = v16 - v15;
  OUTLINED_FUNCTION_12_1();
  v95 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v91 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v101 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v102 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5();
  v36 = (v35 - v34);
  memcpy(__dst, v2, 0x70uLL);
  sub_237D4D938(__dst, v107);
  v37 = v106;
  sub_237E6BCA8(a2);
  v106 = v37;
  if (v37)
  {
    memcpy(v107, v2, 0x59uLL);
    return sub_237CC9A9C(v107);
  }

  v85 = v23;
  v86 = v29;
  v89 = v24;
  memcpy(v108, v2, 0x59uLL);
  sub_237CC9A9C(v108);
  v39 = a2;
  sub_237EF75E0();
  v40 = sub_237EF76A0();
  if (!*(v40 + 16))
  {
    __break(1u);
LABEL_12:
    (*(v39 + 8))(v36, v30);
    result = sub_237EF9740();
    __break(1u);
    return result;
  }

  v83 = *(v32 + 80);
  v41 = *(v32 + 16);
  v90 = (v83 + 32) & ~v83;
  v41(v36, v40 + v90, v30);

  v82 = sub_237EF70A0();
  v87 = v42;
  (*(v32 + 8))(v36, v30);
  v84 = sub_237EF75F0();
  v44 = v43;
  v45 = sub_237EF7630();
  v47 = v46;
  v88 = a2;
  v81 = *(v100 + 32);
  v48 = sub_237EF7EF0();
  v49 = v85;
  sub_237E5E9F0(v48, v85);
  v50 = v89;
  if (__swift_getEnumTagSinglePayload(v49, 1, v89) == 1)
  {

    sub_237C863A0(v49, &qword_27DEB0E78);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v52 = v51;
    v107[0] = 0;
    v107[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    __dst[16] = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v53 = v107[1];
    *v52 = v107[0];
    v52[1] = v53;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_237D0F8BC(v88);
  }

  v79 = v44;
  v80 = v45;
  v81 = v47;
  (*(v102 + 32))(v86, v49, v50);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  v85 = *(v32 + 72);
  v78 = v54;
  v55 = swift_allocObject();
  v77 = xmmword_237F03530;
  *(v55 + 16) = xmmword_237F03530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v56 = swift_allocObject();
  *(v56 + 16) = v77;
  memcpy(v107, __dst, sizeof(v107));
  *(v56 + 32) = LogisticRegressionClassifierModel.featureCount.getter();
  sub_237EF8260();
  sub_237EF6CF0();

  sub_237EF7090();
  sub_237EF76B0();
  v36 = v92;
  sub_237EF7650();
  v39 = v105;
  v30 = v94;
  v57 = (*(v105 + 88))(v36, v94);
  v58 = *MEMORY[0x277D25338];
  LODWORD(v82) = v57;
  if (v57 != v58)
  {
    goto LABEL_12;
  }

  (*(v39 + 96))(v36, v30);
  v59 = v98;
  (*(v103 + 32))(v98, v36, v104);
  v60 = swift_dynamicCastMetatype();
  v61 = (v93 + 104);
  v62 = (v91 + 104);
  if (v60)
  {
    v63 = sub_237EF9660();
    v65 = v96;
    v64 = v97;
    *v96 = v63;
    (*v61)(v65, *MEMORY[0x277D25218], v64);
    sub_237EF7360();
    *(swift_allocObject() + 16) = xmmword_237F04760;
    v66 = v101;
    OUTLINED_FUNCTION_3_90();
    sub_237EF6DB0();
    (*v62)(v66, *MEMORY[0x277D25130], v95);
    OUTLINED_FUNCTION_2_100();
    OUTLINED_FUNCTION_3_90();
    sub_237EF6E50();
  }

  else
  {
    v67 = sub_237EF9660();
    v69 = v96;
    v68 = v97;
    *v96 = v67;
    (*v61)(v69, *MEMORY[0x277D25210], v68);
    sub_237EF7360();
    *(swift_allocObject() + 16) = xmmword_237F04760;
    v70 = v101;
    OUTLINED_FUNCTION_3_90();
    sub_237EF6D00();
    (*v62)(v70, *MEMORY[0x277D25118], v95);
    OUTLINED_FUNCTION_2_100();
    OUTLINED_FUNCTION_3_90();
    sub_237EF6E40();
  }

  v71 = v59;
  v72 = v82;
  OUTLINED_FUNCTION_2_100();
  sub_237EF7700();
  v73 = v103;
  v74 = v99;
  v75 = v59;
  v76 = v104;
  (*(v103 + 16))(v99, v75, v104);
  (*(v105 + 104))(v74, v72, v30);
  sub_237EF7660();
  (*(v73 + 8))(v71, v76);
  return (*(v102 + 8))(v86, v89);
}

void sub_237E6CF44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237EF7380();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237EF7350();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a2 == 1)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v17 < 0)
  {
    goto LABEL_41;
  }

  v45 = v16;
  v46 = v11;
  v47 = v10;
  v48 = v13;
  v52 = a3;
  v53 = a2;
  v49 = v9;
  v50 = v7;
  v51 = v6;
  v18 = 0;
  v19 = *(a1 + 16);
  v20 = v19 / v17;
  v21 = a1 + 32;
  v56 = v19 / v17 - 1;
  v22 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v57 = v19 / v17;
  do
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_32;
    }

    v24 = v18 * v20;
    if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
    {
      goto LABEL_33;
    }

    v25 = v24 + v20;
    if (__OFADD__(v24, v20))
    {
      goto LABEL_34;
    }

    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_35;
    }

    if (v26 < v24)
    {
      goto LABEL_36;
    }

    v58 = v22;
    v27 = MEMORY[0x277D84F90];
    if (v24 != v26)
    {
      if (v24 < v26)
      {
        sub_237D0BEC0();
        v27 = v33;
        v34 = v56;
        while (v24 < v19)
        {
          v35 = *(v21 + 8 * v24);
          v36 = *(v27 + 16);
          if (v36 >= *(v27 + 24) >> 1)
          {
            sub_237D0BEC0();
            v27 = v37;
          }

          *(v27 + 16) = v36 + 1;
          *(v27 + 8 * v36 + 32) = v35;
          ++v24;
          if (!--v34)
          {
            goto LABEL_11;
          }
        }

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
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0BE9C(0, v59[2] + 1, 1, v59);
      v59 = v38;
    }

    v22 = v58;
    v29 = v59[2];
    v28 = v59[3];
    if (v29 >= v28 >> 1)
    {
      sub_237D0BE9C(v28 > 1, v29 + 1, 1, v59);
      v59 = v39;
    }

    v30 = v59;
    v59[2] = v29 + 1;
    v30[v29 + 4] = v27;
    if (v26 >= v19)
    {
      goto LABEL_37;
    }

    v31 = *(v21 + 8 * v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0BEC0();
      v22 = v40;
    }

    v32 = *(v22 + 16);
    if (v32 >= *(v22 + 24) >> 1)
    {
      sub_237D0BEC0();
      v22 = v41;
    }

    *(v22 + 16) = v32 + 1;
    *(v22 + 8 * v32 + 32) = v31;
    v18 = v23;
    v20 = v57;
  }

  while (v23 != a2 - 1);
  if (v53 < 0)
  {
    goto LABEL_42;
  }

  v42 = sub_237EC9280(0, v53);
  v43 = v45;
  *v45 = v42;
  (*(v54 + 104))(v43, *MEMORY[0x277D25210], v55);
  (*(v46 + 104))(v48, *MEMORY[0x277D25228], v47);
  (*(v50 + 104))(v49, *MEMORY[0x277D25220], v51);
  sub_237EF73A0();
}

uint64_t OUTLINED_FUNCTION_2_100()
{

  return sub_237EF7090();
}

uint64_t type metadata accessor for TemporalConvolution()
{
  result = qword_27DEB5338;
  if (!qword_27DEB5338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237E6D494()
{
  result = sub_237EF6C30();
  if (v1 <= 0x3F)
  {
    result = sub_237EF6940();
    if (v2 <= 0x3F)
    {
      result = sub_237EF6BA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237E6D540()
{
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for TemporalConvolution();
  sub_237EF6C30();
  sub_237EF6850();
  sub_237EF6760();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_21_30();
  v4(v5);
  v6 = *(v1 + 32);
  v7 = OUTLINED_FUNCTION_5_86();
  v6(v7);
  sub_237EF6940();
  sub_237EF6850();
  v8 = OUTLINED_FUNCTION_21_30();
  v4(v8);
  v9 = OUTLINED_FUNCTION_5_86();
  v6(v9);
  sub_237EF6850();
  v10 = OUTLINED_FUNCTION_21_30();
  v4(v10);
  v11 = OUTLINED_FUNCTION_5_86();
  v6(v11);
  sub_237EF6BA0();
  sub_237EF6850();
  v12 = OUTLINED_FUNCTION_21_30();
  return (v4)(v12);
}

uint64_t sub_237E6D74C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000237EFB100 == a2;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000237F01040 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000237F01060 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74756C6F766E6F63 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x74756F706F7264 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_237EF9D40();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_237E6D8FC(char a1)
{
  result = 0x74756C6F766E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      return result;
    case 4:
      result = 0x74756F706F7264;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_237E6D9A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5378);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E6E52C();
  sub_237EFA1B0();
  v21 = 0;
  OUTLINED_FUNCTION_35_4();
  sub_237EF9A40();
  if (!v1)
  {
    type metadata accessor for TemporalConvolution();
    v20 = 1;
    sub_237EF6C30();
    OUTLINED_FUNCTION_1_107();
    sub_237E6E640(v9, v10);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v19 = 2;
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v18 = 3;
    sub_237EF6940();
    OUTLINED_FUNCTION_3_91();
    sub_237E6E640(v11, v12);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    v17 = 4;
    sub_237EF6BA0();
    OUTLINED_FUNCTION_2_101();
    sub_237E6E640(v13, v14);
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237E6DC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = sub_237EF6BA0();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v58 = v6 - v5;
  v66 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v61 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v65 = sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v67 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB5360);
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v63 = type metadata accessor for TemporalConvolution();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v27 = a1[3];
  v64 = a1;
  v28 = __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_237E6E52C();
  v60 = v23;
  v29 = v62;
  sub_237EFA190();
  if (v29)
  {
    OUTLINED_FUNCTION_7_69();
    v30 = v65;
    v31 = v26;
    v32 = v63;
    result = __swift_destroy_boxed_opaque_existential_1(v64);
    if (v20)
    {
      result = (*(v67 + 8))(&v31[v32[5]], v30);
    }

    if (v15)
    {
      result = (*(v67 + 8))(&v31[v32[6]], v30);
    }

    if (v28)
    {
      return (*(v61 + 8))(&v31[v32[7]], v66);
    }
  }

  else
  {
    v54 = v11;
    v62 = v20;
    v72 = 0;
    sub_237EF9940();
    v33 = v26;
    *v26 = v34;
    v71 = 1;
    OUTLINED_FUNCTION_1_107();
    sub_237E6E640(v35, v36);
    v37 = v65;
    sub_237EF9970();
    v38 = v63;
    v39 = *(v63 + 20);
    v52 = *(v67 + 32);
    v53 = v33;
    v52(&v33[v39], v18, v37);
    v70 = 2;
    sub_237EF9970();
    v52((v53 + v38[6]), v15, v37);
    v69 = 3;
    OUTLINED_FUNCTION_3_91();
    sub_237E6E640(v40, v41);
    v42 = v54;
    v43 = v66;
    sub_237EF9970();
    v44 = v53;
    (*(v61 + 32))(v53 + v38[7], v42, v43);
    v68 = 4;
    OUTLINED_FUNCTION_2_101();
    sub_237E6E640(v45, v46);
    v47 = v57;
    v48 = v58;
    sub_237EF9970();
    v49 = OUTLINED_FUNCTION_4_87();
    v50(v49);
    (*(v55 + 32))(v44 + v38[8], v48, v47);
    sub_237E6E580(v44, v56);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_237E6E5E4(v44);
  }

  return result;
}

uint64_t sub_237E6E280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E6D74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E6E2A8(uint64_t a1)
{
  v2 = sub_237E6E52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E6E2E4(uint64_t a1)
{
  v2 = sub_237E6E52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E6E354()
{
  sub_237E6E640(&qword_27DEB2638, type metadata accessor for TemporalConvolution);

  return sub_237EF6890();
}

uint64_t sub_237E6E3D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_237E6E640(&qword_27DEB2638, type metadata accessor for TemporalConvolution);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237E6E52C()
{
  result = qword_27DEB5368;
  if (!qword_27DEB5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5368);
  }

  return result;
}

uint64_t sub_237E6E580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemporalConvolution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E6E5E4(uint64_t a1)
{
  v2 = type metadata accessor for TemporalConvolution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237E6E640(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for TemporalConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237E6E768()
{
  result = qword_27DEB5388;
  if (!qword_27DEB5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5388);
  }

  return result;
}

unint64_t sub_237E6E7C0()
{
  result = qword_27DEB5390;
  if (!qword_27DEB5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB5390);
  }

  return result;
}

unint64_t sub_237E6E818()
{
  result = qword_27DEB5398[0];
  if (!qword_27DEB5398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB5398);
  }

  return result;
}

uint64_t sub_237E6E8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  sub_237EF83A0();
  sub_237EF83A0();
  sub_237EF8330();
  v13 = *(v5 + 8);
  v13(v9, a3);
  return v13(v12, a3);
}

uint64_t sub_237E6EA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v90 = a6;
  v108 = *(*(*(a4 + 16) + 16) + 8);
  v111 = *(v108 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v102 = v80 - v12;
  v89 = *(a4 + 8);
  v88 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = v80 - v14;
  OUTLINED_FUNCTION_1_1();
  v84 = v16;
  MEMORY[0x28223BE20](v17);
  v85 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v83 = v80 - v21;
  v82 = *(swift_getAssociatedConformanceWitness() + 8);
  v86 = v19;
  v110 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v87 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v109 = v80 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v81 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v104 = v27 - v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = v80 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v97 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v36 = v80 - v35;
  OUTLINED_FUNCTION_1_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_26();
  v101 = v40 - v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  v100 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v99 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  v98 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  v112 = v49;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_16();
  v107 = v51;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_16();
  v106 = v53;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v54);
  v56 = v80 - v55;
  v91 = a1;
  v95 = a5;
  AssociatedConformanceWitness = a3;
  if (sub_237EF8DA0() < 2)
  {
    OUTLINED_FUNCTION_11_19();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    OUTLINED_FUNCTION_6_70();
    return sub_237EF9D20();
  }

  v80[1] = v15;
  v94 = *(v108 + 8);
  sub_237EF9790();
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v36, 1, TupleTypeMetadata2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v102 = v56;
  v58 = TupleTypeMetadata2;
  v59 = v38 + 32;
  v60 = *(v38 + 32);
  v60(v106, &v36[*(TupleTypeMetadata2 + 48)], a2);
  v63 = *(v38 + 8);
  v62 = v38 + 8;
  v61 = v63;
  (v63)(v36, a2);
  v64 = v97;
  sub_237EF8E80();
  result = __swift_getEnumTagSinglePayload(v64, 1, v58);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v65 = *(TupleTypeMetadata2 + 48);
  v60(v107, v64, a2);
  AssociatedTypeWitness = v62;
  v97 = v61;
  v61(v64 + v65, a2);
  (*(v84 + 16))(v85, v91, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_31();
  sub_237EF8EE0();
  sub_237EF86F0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v95 = (v81 + 32);
  v93 = v31;
  v111 = v59;
  v92 = v60;
  while (1)
  {
    v66 = v104;
    sub_237EF91A0();
    (*v95)(v31, v66, v105);
    if (__swift_getEnumTagSinglePayload(v31, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v67 = *(TupleTypeMetadata2 + 48);
    v60(v112, v31, a2);
    v68 = v98;
    v60(v98, &v31[v67], a2);
    v69 = v100;
    v70 = v106;
    sub_237EF9760();
    v71 = v101;
    v72 = v107;
    sub_237EF9750();
    sub_237EF8D30();
    v73 = v97;
    v97(v71, a2);
    v74 = v69;
    v60 = v92;
    v73(v74, a2);
    sub_237EF9770();
    v75 = OUTLINED_FUNCTION_11_19();
    (v73)(v75);
    v73(v72, a2);
    v73(v70, a2);
    v76 = v70;
    v31 = v93;
    v60(v76, v68, a2);
    v60(v72, v112, a2);
  }

  (*(v87 + 8))(v109, v110);
  OUTLINED_FUNCTION_11_19();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v77 = v112;
  OUTLINED_FUNCTION_6_70();
  sub_237EF9CE0();
  sub_237EF8D30();
  v78 = v97;
  v97(v77, a2);
  v78(v107, a2);
  v78(v106, a2);
  v79 = OUTLINED_FUNCTION_11_19();
  return (v78)(v79);
}

uint64_t sub_237E6F3D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(result, a2);
  v4 = result + a2;
  if (!v3)
  {
    return sub_237E6E8FC(result, v4, a3);
  }

  __break(1u);
  return result;
}

uint64_t CompatibilityError.errorDescription.getter()
{
  OUTLINED_FUNCTION_2_102();

  OUTLINED_FUNCTION_0_87();
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  OUTLINED_FUNCTION_28_4();
  return v2;
}

uint64_t CompatibilityError.debugDescription.getter()
{
  OUTLINED_FUNCTION_2_102();

  OUTLINED_FUNCTION_0_87();
  v0 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v0);

  OUTLINED_FUNCTION_28_4();
  return v2;
}

uint64_t OUTLINED_FUNCTION_2_102()
{

  return sub_237EF9330();
}

void sub_237E6F56C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_237E613EC(v1, 1.0);
  v6 = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
LABEL_54:
    __break(1u);
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    v8 = 0;
    v9 = v4 + 32;
    v10 = __OFSUB__(v2, 1);
    v11 = 8 * v2;
    while (1)
    {
      if (v8 == v6)
      {
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v12 = v8;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_45;
      }

      v14 = v12 * v2;
      v15 = v12;
      v16 = v1;
      v17 = (v12 * v2) >> 64;
      if (v3)
      {
        if (v17 != v14 >> 63)
        {
          goto LABEL_48;
        }

        v15 = v12 * v2;
        v16 = 1;
      }

      if (v2)
      {
        if ((v2 * v16) >> 64 != (v2 * v16) >> 63)
        {
          goto LABEL_47;
        }

        if (v2 * v16)
        {
          v18 = 0;
          v19 = 8 * v16;
          v20 = v11 * v16;
          v21 = 0.0;
          v22 = 0.0;
          v23 = v9 + 8 * v15;
          do
          {
            v24 = *(v23 + v18) - v21;
            v25 = v22 + v24;
            v21 = v22 + v24 - v22 - v24;
            v18 += v19;
            v22 = v25;
          }

          while (v20 != v18);
        }

        else
        {
          v25 = 0.0;
        }

        v26 = v25 / v2;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = v12;
      v28 = v1;
      if (v3)
      {
        if (v17 != v14 >> 63)
        {
          goto LABEL_49;
        }

        v27 = v12 * v2;
        v28 = 1;
      }

      v29 = 0.0;
      if (v2 != 1)
      {
        if (v2)
        {
          if ((v2 * v28) >> 64 == (v2 * v28) >> 63)
          {
            if (v2 * v28)
            {
              v30 = 0;
              v31 = 0;
              v32 = 8 * v28;
              v33 = v11 * v28;
              v34 = 0.0;
              v35 = v9 + 8 * v27;
              do
              {
                v36 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  __break(1u);
                  goto LABEL_44;
                }

                v37 = *(v35 + v31) - v29;
                v38 = v34 + v37;
                v29 = v34 + v37 - v34 - v37;
                v31 += v32;
                ++v30;
                v34 = v38;
              }

              while (v33 != v31);
              if (!v36)
              {
                goto LABEL_52;
              }

              v39 = 0;
              v40 = v38 / v36;
              v41 = 0.0;
              do
              {
                v41 = v41 + (*(v35 + v39) - v40) * (*(v35 + v39) - v40);
                v39 += v32;
              }

              while (v33 != v39);
              if (!v10)
              {
                v29 = sqrt(v41 / (v2 - 1));
                goto LABEL_37;
              }

              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_37:
      v42 = sqrt(v26 * v26 + v29 * v29);
      if (v42 != 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E643FC();
          v7 = v43;
        }

        if (v12 >= *(v7 + 16))
        {
          goto LABEL_56;
        }

        *(v7 + 8 * v12 + 32) = 1.0 / v42;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_237E6F7F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v6 = *(a2 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E643FC();
      v2 = v7;
    }

    v8 = 0;
    while ((v6 & ~(v6 >> 63)) != v8)
    {
      if (v8 >= *(v2 + 16))
      {
        goto LABEL_11;
      }

      *(v2 + 8 * v8 + 32) = *(a2 + 32 + 8 * v8) * *(v2 + 8 * v8 + 32);
      if (v3 == ++v8)
      {
        *a1 = v2;
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}