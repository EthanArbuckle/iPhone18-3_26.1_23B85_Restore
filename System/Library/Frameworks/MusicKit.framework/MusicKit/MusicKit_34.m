char *sub_2174CD0F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v1 + 2) = v5;
  OUTLINED_FUNCTION_0_41();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v7 + 120)], a1, *(v3 + 80));
  v12 = *(v4 + 88);
  v13 = *(v3 + 104);
  _s6LoaderC12LoadingStateOMa();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_41();
  v9 = &v1[*(v8 + 128)];
  *v9 = 0;
  v9[8] = 1;
  OUTLINED_FUNCTION_0_41();
  v1[*(v10 + 136)] = 2;
  return v1;
}

uint64_t sub_2174CD25C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_2174CD2B4(a1, a2, a3 & 1);
  return v9;
}

uint64_t sub_2174CD2B4(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_41();
  v8 = v7;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  *(v3 + 16) = v9;
  OUTLINED_FUNCTION_0_41();
  v12 = v3 + *(v11 + 120);
  *v12 = a1;
  *(v12 + 8) = a2;
  a3 &= 1u;
  *(v12 + 16) = a3;
  v17 = *(v8 + 80);
  v18 = *(v8 + 96);
  _s6LoaderC12LoadingStateOMa();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_0_41();
  v14 = v3 + *(v13 + 128);
  *v14 = a2;
  *(v14 + 8) = 0;
  OUTLINED_FUNCTION_0_41();
  *(v3 + *(v15 + 136)) = a3;
  return v3;
}

uint64_t sub_2174CD3C0()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);

  UnfairLock.locked<A>(_:)(sub_2174CEE54);
}

uint64_t sub_2174CD450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2177528F8();
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v93 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v91 = &v81 - v12;
  v13 = *(v5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15, v16);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v81 - v20;
  v22 = *(v3 + 104);
  v109[0] = v5;
  *&v109[1] = *(v4 + 88);
  v109[3] = v22;
  v23 = _s6LoaderC12LoadingStateOMa();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v95 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v81 - v30;
  v32 = *(v3 + 120);
  swift_beginAccess();
  v96 = v24;
  (*(v24 + 16))(v31, a1 + v32, v23);
  v94 = v23;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v13 + 32))(v97, v31, v5);
  }

  v89 = v32;
  v90 = v13;
  v34 = v5;
  v35 = *v31;
  v36 = *(v31 + 1);
  if (v31[16])
  {
    v37 = *v31;
    v38 = dynamic_cast_existential_1_conditional(v5);
    if (v38)
    {
      v40 = v38;
      v41 = v39;
      v91 = v34;
      v42 = dynamic_cast_existential_1_conditional(v34);
      if (v42)
      {
        v44 = v42;
        v45 = v43;
        v83 = v41;
        v84 = v40;
        v46 = dynamic_cast_existential_1_conditional(v91);
        v81 = v47;
        v82 = v46;
        if (v46)
        {
          v48 = [v37 identifiersForSectionAtIndex_];
          v49 = v45;
          v50 = *(v45 + 8);
          swift_unknownObjectRetain();
          v50(v108, v44, v49);
          v105 = v108[0];
          v106 = v108[1];
          *&v102 = &unk_28295F850;
          LOBYTE(v99) = 4;
          v85 = v48;
          sub_2172B6904(v48, &v105, &v102, &v99, v109);
          memcpy(v108, v109, 0x161uLL);
          sub_217269EF4(v109, &v105);
          v86 = v37;
          v51 = [v37 sectionItemAtIndexPathBlock];
          *(swift_allocObject() + 16) = v51;
          v107 = 0;
          v105 = 0u;
          v106 = 0u;
          v50(&v102, v44, v49);
          v99 = v102;
          v100 = v103;
          v101 = v104;
          v98 = 1;
          v52 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
          v53 = *(v52 + 48);
          v54 = *(v52 + 52);
          swift_allocObject();
          LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
          *(&v106 + 1) = v52;
          v107 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
          *&v105 = v55;
          v56 = *(v83 + 8);

          v56(&v102);
          v58 = v81;
          v57 = v82;
          v59 = *(v81 + 24);
          *(&v108[1] + 1) = v82;
          *&v108[2] = v81;
          __swift_allocate_boxed_opaque_existential_0(v108);
          v59(&v105, &v102, v57, v58);
          sub_2171FF30C(v108, &v105);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
          v60 = v93;
          v61 = v91;
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();

            sub_217269F50(v109);

            __swift_storeEnumTagSinglePayload(v60, 0, 1, v61);
            v62 = v90;
            v63 = *(v90 + 32);
            v64 = v92;
            v63(v92, v60, v61);
            (*(v62 + 16))(v97, v64, v61);
            v65 = v95;
            v63(v95, v64, v61);
            v66 = v94;
            swift_storeEnumTagMultiPayload();
            v67 = v89;
            swift_beginAccess();
            (*(v96 + 40))(a1 + v67, v65, v66);
            swift_endAccess();
            return __swift_destroy_boxed_opaque_existential_1(v108);
          }

          __swift_storeEnumTagSinglePayload(v60, 1, 1, v61);
          (*(v87 + 8))(v60, v88);
          *&v105 = 0;
          *(&v105 + 1) = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AED10);
          sub_217752C78();
          MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AED30);
          v80 = sub_217753348();
          MEMORY[0x21CEA23B0](v80);

          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        }

        else
        {
          v109[0] = 0;
          v109[1] = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
          v78 = sub_217753348();
          MEMORY[0x21CEA23B0](v78);

          MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
        }
      }

      else
      {
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
        v77 = sub_217753348();
        MEMORY[0x21CEA23B0](v77);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      }
    }

    else
    {
      v109[0] = 0;
      v109[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AAED0);
      v76 = sub_217753348();
      MEMORY[0x21CEA23B0](v76);

      MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AAF20);
    }
  }

  else
  {
    *&v108[0] = [*v31 sectionAtIndex_];
    if (swift_dynamicCast())
    {
      v69 = v109[0];
      v68 = v109[1];
      sub_217751DE8();
      v70 = v91;
      if (swift_dynamicCast())
      {

        __swift_storeEnumTagSinglePayload(v70, 0, 1, v5);
        v71 = v90;
        v72 = *(v90 + 32);
        v72(v21, v70, v34);
        (*(v71 + 16))(v97, v21, v34);
        v73 = v95;
        v72(v95, v21, v34);
        v74 = v94;
        swift_storeEnumTagMultiPayload();
        v75 = v89;
        swift_beginAccess();
        (*(v96 + 40))(a1 + v75, v73, v74);
        return swift_endAccess();
      }

      __swift_storeEnumTagSinglePayload(v70, 1, 1, v5);
      (*(v87 + 8))(v70, v88);
      v109[0] = 0;
      v109[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177AED10);
      *&v108[0] = v69;
      *(&v108[0] + 1) = v68;
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AED30);
      v79 = sub_217753348();
      MEMORY[0x21CEA23B0](v79);

      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    }
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2174CE07C()
{
  OUTLINED_FUNCTION_0_41();
  v2 = v1;
  v3 = *(v0 + 16);

  OUTLINED_FUNCTION_0_41();
  v5 = *(v4 + 120);
  v8 = *(v2 + 80);
  v9 = *(v2 + 96);
  v6 = _s6LoaderC12LoadingStateOMa();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_2174CE12C()
{
  sub_2174CE07C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2174CE1BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB286E0, qword_21776E280);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  type metadata accessor for MusicLibrarySection.Kind();
  result = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2174CE284(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2174CE3A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2174CE5B4(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = a1;
  v5 = *a1;
  v6 = *(a1 + *(*a1 + 136));
  v7 = *(a2 + *(*a2 + 136));
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == 2)
    {
      return 0;
    }

    v9 = v2[10];
    v10 = v2[11];
    v11 = v2[12];
    v12 = v2[13];
    a1 = sub_217686748(v6 & 1, v7 & 1);
    if ((a1 & 1) == 0)
    {
      return 0;
    }

    v5 = *v4;
  }

  v13 = v4 + *(v5 + 128);
  v14 = *v13;
  v15 = v13[8];
  v16 = a2 + *(*a2 + 128);
  v17 = *(v16 + 8);
  if ((v15 & 1) == 0)
  {
    if (*(v16 + 8))
    {
      return 0;
    }

    v19 = v14 == *v16;
    if (v14 != *v16)
    {
      return 0;
    }

LABEL_14:
    v18 = v4[2];
    MEMORY[0x28223BE20](a1, a2);

    sub_21720BA7C();

    return v19;
  }

  if (*(v16 + 8))
  {
    v19 = 1;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_2174CE74C(uint64_t a1)
{
  v1 = *(a1 + 16);

  sub_21720BA7C();
}

uint64_t sub_2174CE7B8(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v6 = *a1;
  v58 = *(*(*a1 + 80) - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v53 = &v51 - v11;
  v12 = *(v6 + 104);
  v59 = v13;
  v62 = v13;
  v63 = *(v14 + 88);
  v64 = v12;
  v15 = _s6LoaderC12LoadingStateOMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  v61 = TupleTypeMetadata2;
  v17 = *(v60 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v18);
  v20 = &v51 - v19;
  v21 = *(v15 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23, v24);
  v57 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v51 - v28;
  v30 = *(v6 + 120);
  swift_beginAccess();
  v31 = *(v21 + 16);
  v31(v29, &a1[v30], v15);
  v32 = *(*a2 + 120);
  swift_beginAccess();
  v33 = v61;
  v34 = *(v61 + 48);
  v52 = v21;
  v35 = v29;
  v36 = v34;
  (*(v21 + 32))(v20, v35, v15);
  v37 = (a2 + v32);
  v38 = v20;
  v31(&v20[v36], v37, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v33;
LABEL_6:
    v49 = v60;
    return (*(v49 + 8))(v38, v15);
  }

  v39 = v33;
  v40 = v57;
  v31(v57, v20, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v58 + 8))(v40, v59);
    v15 = v39;
    goto LABEL_6;
  }

  v42 = v58;
  v41 = v59;
  v43 = *(v58 + 32);
  v44 = v53;
  v43(v53, v40, v59);
  v45 = v54;
  v43(v54, &v20[v36], v41);
  v46 = sub_217751F08();
  v47 = *(v42 + 8);
  v48 = v45;
  v38 = v20;
  v47(v48, v41);
  v47(v44, v41);
  *v56 = v46 & 1;
  v49 = v52;
  return (*(v49 + 8))(v38, v15);
}

uint64_t sub_2174CEC2C()
{
  v6 = *(v0 + *(*v0 + 136));
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 96);
  type metadata accessor for MusicLibrarySection.Kind();
  sub_2177528F8();
  swift_getWitnessTable();
  sub_217752908();
  v1 = (v0 + *(*v0 + 128));
  if (*(v1 + 8) == 1)
  {
    return sub_217753208();
  }

  v3 = *v1;
  sub_217753208();
  return MEMORY[0x21CEA3550](v3);
}

uint64_t sub_2174CED4C()
{
  sub_2177531E8();
  sub_2174CEC2C();
  return sub_217753238();
}

uint64_t sub_2174CEDD4()
{
  sub_2177531E8();
  v1 = *v0;
  sub_2174CEC2C();
  return sub_217753238();
}

uint64_t sub_2174CEE14()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  return sub_2174CE74C(v0[3]);
}

double sub_2174CEE70@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_217752338();

  return CloudResourceCollection.init(data:)(v2, a1);
}

__n128 sub_2174CEEB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = *a11;
  v14 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = v14;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  return result;
}

uint64_t CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  return sub_2174CF204(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_2174D2834);
}

{
  return sub_2174CF204(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, sub_2174D2D9C);
}

void MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_35_17(v3, v4, v5, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_74_11();
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v7, v8, &qword_27CB24188, &dword_217758930);
    if (*(&v33 + 1))
    {
      OUTLINED_FUNCTION_64_17();
      v11 = OUTLINED_FUNCTION_34_2();
      v2(v11);
      sub_217283154(&v32);
    }

    else
    {
      OUTLINED_FUNCTION_74_11();
      sub_2171F0738(&v32, &qword_27CB24188, &dword_217758930);
    }
  }

  v12 = MusicItemCollection.items.getter(v0, v10);
  v20 = OUTLINED_FUNCTION_70_12(v12, v13, v14, v15, v16, v17, v18, v19, v31);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_96_11();
  OUTLINED_FUNCTION_95_12();
  OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResource();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_68_14(WitnessTable, v23, v24, v25, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v26);

  OUTLINED_FUNCTION_86_9();
  if (v1)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v27, v28, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_85_10();
  OUTLINED_FUNCTION_37_18(v29, v30);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_35_17(v3, v4, v5, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_74_11();
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v7, v8, &qword_27CB24188, &dword_217758930);
    if (*(&v34 + 1))
    {
      OUTLINED_FUNCTION_64_17();
      v11 = OUTLINED_FUNCTION_34_2();
      v2(v11);
      sub_217283154(&v33);
    }

    else
    {
      OUTLINED_FUNCTION_74_11();
      sub_2171F0738(&v33, &qword_27CB24188, &dword_217758930);
    }
  }

  v12 = MusicItemCollection.items.getter(v0, v10);
  v20 = OUTLINED_FUNCTION_70_12(v12, v13, v14, v15, v16, v17, v18, v19, v32);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_51_16();
  OUTLINED_FUNCTION_96_11();
  v22 = *(OUTLINED_FUNCTION_95_12() + 8);
  OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResource();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_68_14(WitnessTable, v24, v25, v26, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

  OUTLINED_FUNCTION_86_9();
  if (v1)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_99_10(v28, v29, &qword_27CB24188, &dword_217758930);
  }

  OUTLINED_FUNCTION_85_10();
  OUTLINED_FUNCTION_37_18(v30, v31);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t CloudResourceCollection.compactMap<A>(resourceElementTransform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = v4[1];
  v23 = v6;
  v24 = *v4;
  *&v25[0] = v4[2];
  sub_2171FB568(v24, v6);
  v7 = *(a3 + 16);
  sub_217752418();
  sub_217751DE8();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  sub_217752148();

  v9 = v4[3];
  v8 = v4[4];
  v11 = v4[5];
  v10 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = sub_21738C4B0((v4 + 9), v25, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_31_21(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25[0], v25[1], v26);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174CF204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(char *, uint64_t))
{
  v12 = v11;
  *&v38[0] = v11[2];
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  v33 = a2;
  v34 = a1;
  v13 = *(a4 + 16);
  v14 = sub_217752418();
  OUTLINED_FUNCTION_57_0();
  v15 = type metadata accessor for RelatedItem();
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_2175FA70C(a11, v27, v14, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  sub_21738C4B0(a3, &v35, &qword_27CB24188, &dword_217758930);
  if (*(&v36 + 1))
  {
    v38[0] = v35;
    v38[1] = v36;
    v39 = v37;
  }

  else
  {
    sub_217380098(a6, a10, v38);
    if (*(&v36 + 1))
    {
      sub_2171F0738(&v35, &qword_27CB24188, &dword_217758930);
    }
  }

  v19 = *v11;
  v20 = v12[1];
  if (v20 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v12;
  }

  if (v20 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v12[1];
  }

  sub_217741DEC(v18, 0, v38, v21, v22, v12[3], v12[4], v12[14], a9, v12[15]);
  sub_2171FB568(v19, v20);
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void CloudResourceCollection.init<A, B>(merging:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v39 = v1;
  v40 = v0;
  v41 = v2;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v0);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v34 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - v19;
  memset(v47, 0, 128);
  v35 = v8;
  v36 = v6;
  (*(v8 + 16))(v12, v6, v4);
  sub_217752128();
  v37 = v4;
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_217752968();
    if (v46[2] == 1)
    {
      break;
    }

    memcpy(v44, v46, sizeof(v44));
    if (v44[2])
    {
      memcpy(v45, v46, sizeof(v45));
      v21 = type metadata accessor for CloudResourceCollection();
      v22 = sub_2177528F8();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v43, v47, v22);
      if (v43[2])
      {
        memcpy(v44, v43, sizeof(v44));
        v42 = 0;
        CloudResourceCollection.merging<A>(_:configuration:incrementalLoadingEncoding:)(v45, &v42, v21, v43);
        OUTLINED_FUNCTION_41_0(v21);
        v25 = *(v24 + 8);
        v25(v44, v21);
        v25(v45, v21);
        (*(v23 + 8))(v47, v22);
        v26 = v43;
      }

      else
      {
        v29 = *(v23 + 8);
        v29(v47, v22);
        v29(v43, v22);
        v26 = v45;
      }

      memcpy(v47, v26, 0x80uLL);
    }

    else
    {
      type metadata accessor for CloudResourceCollection();
      v27 = sub_2177528F8();
      OUTLINED_FUNCTION_43(v27);
      (*(v28 + 8))(v44);
    }
  }

  OUTLINED_FUNCTION_41_0(v41);
  (*(v30 + 8))();
  (*(v35 + 8))(v36, v37);
  (*(v34 + 8))(v20, AssociatedTypeWitness);
  memcpy(v46, v47, sizeof(v46));
  if (v46[2])
  {
    memcpy(v38, v47, 0x80uLL);
  }

  else
  {
    type metadata accessor for CloudResourceCollection();
    v31 = sub_2177528F8();
    OUTLINED_FUNCTION_43(v31);
    (*(v32 + 8))(v46);
    OUTLINED_FUNCTION_88_9(v38, 0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_2174CF9BC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v76 = v2;
  v87 = type metadata accessor for CloudTrack();
  v3 = OUTLINED_FUNCTION_43(v87);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v86 = v8 - v7;
  v85 = type metadata accessor for CloudPlaylistEntry();
  v9 = OUTLINED_FUNCTION_43(v85);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_1();
  v95 = v14 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
  OUTLINED_FUNCTION_0_0(v84);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  v83 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v81 = v24;
  v82 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27, v28);
  v94 = &v73 - v29;
  v30 = *v1;
  v31 = v1[1];
  v75 = v1;
  v32 = v1[2];
  v33 = *(v32 + 16);
  if (v33)
  {
    v73 = v31;
    v74 = v30;
    sub_2171FB568(v30, v31);
    v99 = MEMORY[0x277D84F90];
    sub_217276738(0, v33, 0);
    v34 = 0;
    v77 = v32 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v78 = v33;
    v35 = v99;
    v79 = v32;
    v80 = v16;
    while (v34 < *(v32 + 16))
    {
      v36 = v83;
      sub_21738C4B0(v77 + *(v16 + 72) * v34, v83, &qword_27CB24820, &unk_2177650E0);
      v37 = v86;
      sub_2174D7D60(v36, v86);
      swift_getEnumCaseMultiPayload();
      v96 = v35;
      v38 = v37;
      v39 = v95;
      sub_2174D7E80(v38, v95);
      swift_storeEnumTagMultiPayload();
      v40 = v94;
      sub_2174D7D60(v39, v94);
      v41 = v84[10];
      v42 = v36 + v84[9];
      v43 = *v42;
      v89 = *(v42 + 8);
      v90 = *(v42 + 16);
      v44 = v36 + v41;
      v45 = *(v36 + v41);
      v46 = *(v44 + 8);
      v91 = v43;
      v92 = v45;
      v47 = v84[11];
      memcpy(v98, (v36 + v47), sizeof(v98));
      v48 = v84[13];
      v49 = *(v36 + v84[12]);
      v93 = v34;
      v88 = *(v36 + v48);
      v50 = *(v36 + v84[14]);
      v51 = *(v36 + v84[15]);
      v52 = v82;
      v53 = v40 + v82[9];
      v54 = v89;
      *v53 = v91;
      *(v53 + 8) = v54;
      *(v53 + 16) = v90;
      v55 = (v40 + v52[10]);
      *v55 = v92;
      v55[1] = v46;
      memcpy((v40 + v52[11]), (v36 + v47), 0x180uLL);
      *(v40 + v52[12]) = v49;
      *(v40 + v52[13]) = v88;
      *(v40 + v52[14]) = v50;
      v56 = v52[15];
      v35 = v96;
      *(v40 + v56) = v51;
      sub_217751DE8();
      sub_217751DE8();
      sub_21738C4B0(v98, &v97, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174D7DB8(v95, type metadata accessor for CloudPlaylistEntry);
      sub_2171F0738(v36, &qword_27CB24820, &unk_2177650E0);
      v99 = v35;
      v58 = *(v35 + 16);
      v57 = *(v35 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_217276738(v57 > 1, v58 + 1, 1);
        v35 = v99;
      }

      v59 = v94;
      v34 = v93 + 1;
      *(v35 + 16) = v58 + 1;
      sub_2174D7E10(v59, v35 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v58);
      v32 = v79;
      v16 = v80;
      if (v78 == v34)
      {
        v61 = v73;
        v60 = v74;
        v96 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v60 = v30;
    v61 = v31;
    sub_2171FB568(v30, v31);
    v96 = MEMORY[0x277D84F90];
LABEL_9:
    v62 = v75;
    v63 = v76;
    v64 = v75[3];
    v65 = v75[4];
    v66 = v75[6];
    v94 = v75[5];
    v95 = v64;
    v68 = v75[7];
    v67 = v75[8];
    sub_21738C4B0((v75 + 9), (v76 + 9), &qword_27CB24188, &dword_217758930);
    v69 = v62[14];
    v70 = v62[15];
    *v63 = v60;
    v63[1] = v61;
    v71 = v95;
    v63[2] = v96;
    v63[3] = v71;
    v72 = v94;
    v63[4] = v65;
    v63[5] = v72;
    v63[6] = v66;
    v63[7] = v68;
    v63[8] = v67;
    v63[14] = v69;
    v63[15] = v70;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }
}

uint64_t CloudResourceCollection.map<A>(resourceElementTransform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v24 = v5[1];
  v25 = *v5;
  v9 = v5[2];
  v30 = a2;
  *&v31[0] = v9;
  v27 = *(a3 + 16);
  v28 = a4;
  v29 = a1;
  sub_2171FB568(v25, v24);
  v10 = sub_217752418();
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_2175FA70C(sub_2174D32A8, v26, v10, a4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v15 = v5[3];
  v14 = v5[4];
  v17 = v5[5];
  v16 = v5[6];
  v18 = v6[7];
  v19 = v6[8];
  sub_21738C4B0((v6 + 9), v31, &qword_27CB24188, &dword_217758930);
  v20 = v31[1];
  *(a5 + 72) = v31[0];
  v22 = v6[14];
  v21 = v6[15];
  *a5 = v25;
  *(a5 + 8) = v24;
  *(a5 + 16) = v13;
  *(a5 + 24) = v15;
  *(a5 + 32) = v14;
  *(a5 + 40) = v17;
  *(a5 + 48) = v16;
  *(a5 + 56) = v18;
  *(a5 + 64) = v19;
  *(a5 + 88) = v20;
  *(a5 + 104) = v32;
  *(a5 + 112) = v22;
  *(a5 + 120) = v21;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void CloudResourceCollection<A>.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v55 = v1;
  v3 = v2;
  v5 = v4;
  v54 = v6;
  v7 = type metadata accessor for CloudResourceCollection.CodingKeys();
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_101();
  v8 = sub_217752ED8();
  OUTLINED_FUNCTION_0_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v15 = v5[3];
  v16 = v5[4];
  v56 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v15);
  sub_2177532C8();
  if (v0)
  {
    v17 = v56;
  }

  else
  {
    v18 = v55;
    v52 = v3;
    v51 = v7;
    v53 = v10;
    v19 = sub_217751DC8();
    LOBYTE(v60) = 0;
    if (sub_217752EC8())
    {

      sub_2174D331C();
      sub_217752EA8();
      v17 = v56;
      v28 = v60;
      LOBYTE(v58[0]) = 0;
      sub_217752E08();
      sub_2174D79C8();
      v57[0] = v28;
      sub_217751DE8();
      v49 = Dictionary<>.init<A>(from:skippingValuesFoundIn:)(v58, v57, &type metadata for CloudResourceCollectionAttributes);
      v50 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v60);
    }

    else
    {
      v49 = v19;
      *&v50 = 0;
      *(&v50 + 1) = 1;
      v17 = v56;
    }

    v20 = v52;
    type metadata accessor for CloudResourceCollectionEntry();
    OUTLINED_FUNCTION_101();
    sub_217752418();
    LOBYTE(v58[0]) = 1;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v21 = sub_217752EA8();
    MEMORY[0x28223BE20](v21, v22);
    *(&v44 - 2) = v20;
    *(&v44 - 1) = v18;
    KeyPath = swift_getKeyPath();
    v56 = &v44;
    MEMORY[0x28223BE20](KeyPath, v23);
    *(&v44 - 2) = v18;
    *(&v44 - 1) = v24;
    OUTLINED_FUNCTION_32_0();
    swift_getWitnessTable();
    v25 = sub_217752148();

    OUTLINED_FUNCTION_15_33();
    v26 = sub_217752EC8();
    v27 = *(&v50 + 1);
    if (v26)
    {
      OUTLINED_FUNCTION_15_33();
      KeyPath = sub_217752E68();
      v56 = v25;
    }

    else
    {
      v56 = v25;
      KeyPath = 0;
    }

    OUTLINED_FUNCTION_15_33();
    if (sub_217752EC8())
    {
      OUTLINED_FUNCTION_15_33();
      v46 = sub_217752E68();
      v53 = v29;
    }

    else
    {
      v46 = 0;
      v53 = 0;
    }

    OUTLINED_FUNCTION_15_33();
    if (sub_217752EC8())
    {
      OUTLINED_FUNCTION_15_33();
      v30 = sub_217752E68();
      OUTLINED_FUNCTION_83_11();
      v32 = v31;
    }

    else
    {
      OUTLINED_FUNCTION_83_11();
      v30 = 0;
      v32 = 0;
    }

    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    LOBYTE(v58[0]) = 5;
    if (sub_217752EC8())
    {
      sub_2174D79C8();
      AnyMusicItemCollectionIncrementalLoader.init(from:)(v57, v58);
      v45 = v30;
      sub_2171F0738(&v60, &qword_27CB24188, &dword_217758930);
      v60 = v58[0];
      v61 = v58[1];
      v62 = v59;
    }

    else
    {
      v45 = v30;
    }

    sub_2174D79C8();
    sub_2174D1CFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24850, &qword_217758DE0);
    v33 = sub_217752C68();

    v34 = Dictionary<>.init(from:skippingValuesFor:)(v58, v33);
    v35 = OUTLINED_FUNCTION_84_9();
    v36(v35, v55);
    v37 = v62;
    v66 = v62;
    v39 = v60;
    v38 = v61;
    v64 = v60;
    v65 = v61;
    v40 = v54;
    *v54 = v50;
    v40[1] = v27;
    v41 = v45;
    v40[2] = v56;
    v40[3] = v41;
    v42 = KeyPath;
    v40[4] = v32;
    v40[5] = v42;
    v43 = v46;
    v40[6] = v47;
    v40[7] = v43;
    v40[8] = v53;
    *(v40 + 9) = v39;
    *(v40 + 11) = v38;
    v40[13] = v37;
    v40[14] = v49;
    v40[15] = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_170();
}

void CloudResourceCollection<A>.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v49 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB286F0, &qword_21776E360);
  OUTLINED_FUNCTION_0_0(v8);
  v50 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v47 - v14;
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_21738B390();
  v51 = v15;
  sub_2177532F8();
  v17 = v0[14];
  v18 = v0[1];
  if (*(v17 + 16))
  {
    if (v18 == 1)
    {
      v19 = v2[14];
      sub_217751DE8();
    }

    else
    {
      v23 = *v2;
      sub_2174D79C8();
      sub_217751DE8();
      sub_2171FB568(v23, v18);
      v24 = sub_2174D63F4(v23, v18, &v54);
      if (v1)
      {

        (*(v50 + 8))(v51, v8);
LABEL_18:
        OUTLINED_FUNCTION_170();
        return;
      }

      v1 = 0;
      v17 = sub_2174D37FC(v17, v24);
      if (!*(v17 + 16))
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v52 = v17;
    LOBYTE(v57) = 0;
    v20 = *(v5 + 16);
    type metadata accessor for CloudResourceCollection.CodingKeys();
    OUTLINED_FUNCTION_6_42();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_91_10();
    CodingKey.convertToDynamicCodingKey()();
    v57 = v54;
    v58 = v55;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44);
    OUTLINED_FUNCTION_61_10();
    if (v1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v18 != 1)
  {
    v54 = *v2;
    v55 = v18;
    LOBYTE(v52) = 0;
    v22 = *(v5 + 16);
    type metadata accessor for CloudResourceCollection.CodingKeys();
    OUTLINED_FUNCTION_6_42();
    swift_getWitnessTable();
    CodingKey.convertToDynamicCodingKey()();
    v52 = v57;
    v53 = v58;
    sub_2174D65EC();
    v21 = v51;
    sub_217752F88();

    if (v1)
    {
      goto LABEL_17;
    }
  }

LABEL_15:
  v52 = v2[2];
  LOBYTE(v57) = 1;
  v25 = *(v5 + 16);
  OUTLINED_FUNCTION_25_6();
  type metadata accessor for CloudResourceCollection.CodingKeys();
  sub_217751DE8();
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_10_5();
  CodingKey.convertToDynamicCodingKey()();
  v57 = v54;
  v58 = v55;
  OUTLINED_FUNCTION_25_6();
  v21 = sub_217752418();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_61_10();
  if (v1)
  {
LABEL_16:

LABEL_17:
    (*(v50 + 8))(v21, v8);
    goto LABEL_18;
  }

  if (v2[8])
  {
    v26 = v2[7];
    LOBYTE(v57) = 4;
    OUTLINED_FUNCTION_91_10();
    OUTLINED_FUNCTION_10_5();
    CodingKey.convertToDynamicCodingKey()();
    OUTLINED_FUNCTION_58_15();
  }

  if (v2[4])
  {
    v27 = v2[3];
    LOBYTE(v57) = 2;
    OUTLINED_FUNCTION_91_10();
    OUTLINED_FUNCTION_10_5();
    CodingKey.convertToDynamicCodingKey()();
    OUTLINED_FUNCTION_58_15();
    v49 = v8;
  }

  else
  {
    v49 = v8;
  }

  v28 = v2[15];
  v29 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v28 + 64);
  v33 = (v30 + 63) >> 6;
  v48 = v28;
  sub_217751DE8();
  for (i = 0; v32; i = v35)
  {
    v35 = i;
LABEL_31:
    v36 = __clz(__rbit64(v32)) | (v35 << 6);
    v37 = (*(v48 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = *(v48 + 56) + 24 * v36;
    v41 = *(v40 + 8);
    v42 = *(v40 + 16);
    v54 = *v40;
    v55 = v41;
    v56 = v42;
    v57 = v39;
    v58 = v38;
    sub_217751DE8();
    v43 = OUTLINED_FUNCTION_10_5();
    sub_21726A5E0(v43, v44, v42);
    sub_21733AC44();
    sub_217752F88();
    v32 &= v32 - 1;

    v45 = OUTLINED_FUNCTION_10_5();
    sub_21726A608(v45, v46, v42);
  }

  while (1)
  {
    v35 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      (*(v50 + 8))(v51, v49);
      goto LABEL_18;
    }

    v32 = *(v29 + 8 * v35);
    ++i;
    if (v32)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
}

void sub_2174D0DD8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v41 = v12;
  v42 = v1;
  v13 = v0;
  v46 = v14;
  if (v0[6])
  {
    v15 = v0[5];
    v43 = v0[6];
    v44 = v15;
  }

  else
  {
    v16 = *v0;
    v17 = v13[1];
    if (v17 == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13[1];
    }

    if (v17 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v13;
    }

    v43 = v18;
    v44 = v19;
    v0 = sub_2171FB568(v16, v17);
  }

  *&v50[0] = v13[2];
  MEMORY[0x28223BE20](v0, v1);
  v36[2] = v9;
  v37 = v7;
  v38 = v5;
  v39 = v3;
  OUTLINED_FUNCTION_57_0();
  v40 = v3;
  v20 = sub_217752418();
  OUTLINED_FUNCTION_57_0();
  v45 = v5;
  v21 = type metadata accessor for RelatedItem();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_2175FA70C(sub_2174D7704, v36, v20, v21, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);

  sub_21738C4B0(v11, &v47, &qword_27CB24188, &dword_217758930);
  if (*(&v48 + 1))
  {

    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_41_0(v7);
    (*(v25 + 8))(v42, v7);
    v50[0] = v47;
    v50[1] = v48;
    v51 = v49;
  }

  else
  {
    OUTLINED_FUNCTION_57_0();
    type metadata accessor for CloudResourceCollection();
    v26 = v42;
    sub_217380098(v7, v40, v50);

    sub_2171F0738(v11, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_41_0(v7);
    (*(v27 + 8))(v26, v7);
    if (*(&v48 + 1))
    {
      sub_2171F0738(&v47, &qword_27CB24188, &dword_217758930);
    }
  }

  v28 = v13[3];
  v29 = v13[4];
  v30 = v13[14];
  v31 = v13[15];
  OUTLINED_FUNCTION_57_0();
  v32 = type metadata accessor for CloudResourceCollection();
  OUTLINED_FUNCTION_43(v32);
  v34 = *(v33 + 8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v35 = OUTLINED_FUNCTION_10_5();
  v34(v35);
  v37 = v9;
  v38 = v45;
  sub_217741DEC(v24, 0, v50, v44, v43, v28, v29, v30, v46, v31);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174D10C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_21738C4B0(v2 + 16, &v23, &qword_27CB24188, &dword_217758930);
  v6 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v6 = (*(v7 + 8))(v6, v7);
    v9 = v8;
    sub_217283154(&v23);
  }

  else
  {
    sub_2171F0738(&v23, &qword_27CB24188, &dword_217758930);
    v9 = 0;
  }

  v11 = *(v2 + 56);
  v10 = *(v2 + 64);
  swift_bridgeObjectRetain_n();
  v13 = MusicItemCollection.items.getter(a1, v12);
  v14 = *(v3 + 72);
  if (v9)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    v22 = *(v3 + 72);
    sub_21738C4B0(v3 + 16, &v23, &qword_27CB24188, &dword_217758930);
    v14 = v22;
  }

  *&v15 = v11;
  *(&v15 + 1) = v10;
  *(a2 + 40) = v15;
  v16 = v24;
  *(a2 + 72) = v23;
  if (v10 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v10;
  }

  if (v10)
  {
    v18 = v11;
  }

  else
  {
    v18 = 0;
  }

  v20 = *(v3 + 88);
  v19 = *(v3 + 96);
  *a2 = v18;
  *(a2 + 8) = v17;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 56) = v6;
  *(a2 + 64) = v9;
  *(a2 + 88) = v16;
  *(a2 + 104) = v25;
  *(a2 + 112) = v20;
  *(a2 + 120) = v19;
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t CloudResourceCollection.href.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudResourceCollection.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudResourceCollection.next.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2174D1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2174D134C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2174D13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28730, &unk_21776E8D8);
  OUTLINED_FUNCTION_0_0(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29, v30);
  v32 = &a9 - v31;
  v33 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2174D765C();
  sub_2177532F8();
  sub_217752EF8();
  (*(v26 + 8))(v32, v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D14F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2174D1564()
{
  OUTLINED_FUNCTION_98_13();
  sub_217753208();
  if (v0)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_2174D15C8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28720, &qword_21776E8D0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174D765C();
  sub_2177532C8();
  if (!v1)
  {
    v13 = sub_217752E18();
    (*(v5 + 8))(v11, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_2174D1718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174D134C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2174D1744(uint64_t a1)
{
  v2 = sub_2174D765C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174D1780(uint64_t a1)
{
  v2 = sub_2174D765C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2174D17BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2174D15C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2174D1818()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2174D1564();
}

uint64_t sub_2174D1828()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

double CloudResourceCollection.init(data:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_66_12();
  v4 = sub_217751DC8();
  OUTLINED_FUNCTION_66_12();
  v5 = sub_217751DC8();
  *a2 = xmmword_2177586D0;
  *(a2 + 16) = a1;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = v4;
  *(a2 + 120) = v5;
  return result;
}

uint64_t CloudResourceCollection.isEmpty.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v2 = *(a1 + 16);
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  return sub_217752738() & 1;
}

uint64_t CloudResourceCollection.nonEmptyResourceCollection.getter@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_88_9(a2, 0);
  result = CloudResourceCollection.isEmpty.getter(v5);
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_57_0();
    v7 = sub_2177528F8();
    OUTLINED_FUNCTION_43(v7);
    (*(v8 + 8))(a2);
    OUTLINED_FUNCTION_41_0(a1);
    v10 = *(v9 + 16);

    return v10(a2, v2, a1);
  }

  return result;
}

uint64_t CloudResourceCollectionIncrementalLoadingEncoding.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t CloudResourceCollection.replacingIncrementalLoader(with:encoding:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (v7)
  {
    goto LABEL_2;
  }

  sub_21738C4B0(a1, v24, &qword_27CB24188, &dword_217758930);
  v9 = v25;
  if (!v25)
  {
    sub_2171F0738(&v27, &qword_27CB24188, &dword_217758930);
    v8 = v24;
    goto LABEL_7;
  }

  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  sub_217283154(v24);
  if (!v13)
  {
LABEL_2:
    v8 = &v27;
LABEL_7:
    sub_2171F0738(v8, &qword_27CB24188, &dword_217758930);
    sub_21738C4B0(a1, &v27, &qword_27CB24188, &dword_217758930);
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = *(v4 + 8);
  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  v18 = *(v4 + 48);
  v19 = *(v4 + 112);
  v20 = *(v4 + 120);
  *a3 = *v4;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v18;
  *(a3 + 56) = v11;
  *(a3 + 64) = v13;
  v21 = v27;
  v22 = v29;
  *(a3 + 88) = v28;
  *(a3 + 72) = v21;
  *(a3 + 104) = v22;
  *(a3 + 112) = v19;
  *(a3 + 120) = v20;
  sub_2171FB568(v14, v15);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174D1CB0()
{
  OUTLINED_FUNCTION_92_11();
  v0 = sub_217752DC8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2174D1CFC()
{
  type metadata accessor for CloudResourceCollection.CodingKeys();
  OUTLINED_FUNCTION_57_0();
  sub_217752FD8();
  swift_allocObject();
  result = sub_2177522C8();
  *v1 = 50462976;
  *(v1 + 4) = 1284;

  sub_21726B91C();
  return result;
}

unint64_t sub_2174D1D6C(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 1717924456;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 1954047342;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174D1E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174D1E80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2174D1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174D1F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2174D1FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2174D1CB0();
  *a2 = result;
  return result;
}

unint64_t sub_2174D1FFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2174D1D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174D2030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2174D1CF8();
  *a1 = result;
  return result;
}

uint64_t sub_2174D2058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2174D1CFC();
  *a2 = result;
  return result;
}

uint64_t sub_2174D2084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2174D20D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2174D212C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = type metadata accessor for CloudResourceCollectionEntry();
  return sub_21752DBBC(v5, a3);
}

void sub_2174D2168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  CloudResourceCollection<A>.init(from:)();
}

uint64_t static CloudResourceCollection<A>.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 == 1)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      if (!v5)
      {
        goto LABEL_13;
      }

      v13 = *a1;
      v14 = *a1 == *a2 && v4 == v5;
      if (!v14 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  if ((sub_217752448() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = a1[3] == a2[3] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    goto LABEL_13;
  }

  v15 = a1[6];
  v16 = a2[6];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = a1[5] == a2[5] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v16)
  {
    goto LABEL_13;
  }

  v18 = a1[8];
  v19 = a2[8];
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = a1[7] == a2[7] && v18 == v19;
    if (!v20 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v19)
  {
    goto LABEL_13;
  }

  sub_21738C4B0((a1 + 9), v32, &qword_27CB24188, &dword_217758930);
  sub_21738C4B0((a2 + 9), &v34, &qword_27CB24188, &dword_217758930);
  if (v33)
  {
    sub_21738C4B0(v32, v29, &qword_27CB24188, &dword_217758930);
    if (*(&v35 + 1))
    {
      v27[0] = v34;
      v27[1] = v35;
      v28 = v36;
      v21 = v30;
      v22 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v23 = *(v22 + 32);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      v25 = v23(v27, v24, v21, v22);
      sub_217283154(v27);
      sub_217283154(v29);
      sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
      if ((v25 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

    sub_217283154(v29);
LABEL_53:
    sub_2171F0738(v32, &qword_27CB24928, &unk_21775E020);
    goto LABEL_13;
  }

  if (*(&v35 + 1))
  {
    goto LABEL_53;
  }

  sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
LABEL_50:
  sub_217261FB0(a1[14], a2[14]);
  if (v26)
  {
    sub_217261FB0(a1[15], a2[15]);
    return v11 & 1;
  }

LABEL_13:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2174D246C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CloudResourceCollection<A>.== infix(_:_:)(a1, a2);
}

uint64_t CloudResourceCollection<A>.hash(into:)(const void *a1, uint64_t a2)
{
  v5 = v2[1];
  if (v5 == 1 || (v6 = *v2, OUTLINED_FUNCTION_119(), !v5))
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  v7 = v2[2];
  v8 = *(a2 + 16);
  sub_217752438();
  if (v2[4])
  {
    v9 = v2[3];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v2[6])
  {
    v10 = v2[5];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v2[8])
  {
    v11 = v2[7];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_73_12();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21738C4B0((v2 + 9), &v20, &qword_27CB24188, &dword_217758930);
  if (*(&v21 + 1))
  {
    v17 = v20;
    v18 = v21;
    v19 = v22;
    OUTLINED_FUNCTION_119();
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
    v13 = *(v12 + 40);
    v14 = OUTLINED_FUNCTION_66_12();
    v15(v14);
    sub_217283154(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_217265A08(a1, v2[14]);
  return sub_217265A08(a1, v2[15]);
}

uint64_t CloudResourceCollection<A>.hashValue.getter()
{
  OUTLINED_FUNCTION_98_13();
  CloudResourceCollection<A>.hash(into:)(v2, v0);
  return sub_217753238();
}

uint64_t sub_2174D2648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  CloudResourceCollection<A>.hash(into:)(v6, a2);
  return sub_217753238();
}

uint64_t sub_2174D269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for RelatedItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2174D2728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for CloudResource();
  v17 = CloudResource.id.getter(v16);
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a1;
  v29 = a3;
  v30 = a2;
  sub_2176F3544(v17, v18, a2, sub_2174D7EF0, v22, a4, a9);
}

uint64_t sub_2174D2860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30[1] = a9;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v30[0] = a11;
  MEMORY[0x28223BE20](a1, a2);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21 = type metadata accessor for CloudResource();
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = v30 - v25;
  (*(v27 + 16))(v30 - v25, a3, v24);
  (*(v17 + 16))(v20, a4, a7);
  v28 = *(a8 + 24);

  return v28(v26, v20, a5, a7, v30[0], a6, a8);
}

uint64_t sub_2174D2A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = type metadata accessor for CloudResource();
  v18 = CloudResource.id.getter(v17);
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v30 = a3;
  v31 = a2;
  sub_2176F3544(v18, v19, a2, sub_2174D7ED8, v23, a4, a9);
}

uint64_t sub_2174D2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31[1] = a9;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v31[0] = a11;
  MEMORY[0x28223BE20](a1, a2);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  v22 = type metadata accessor for CloudResource();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = v31 - v26;
  (*(v28 + 16))(v31 - v26, a3, v25);
  (*(v17 + 16))(v20, a4, a7);
  v29 = *(a8 + 24);

  return v29(v27, v20, a5, a7, v31[0], a6, a8);
}

uint64_t CloudResourceCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = v4[1];
  v23 = v6;
  v24 = *v4;
  *&v25[0] = v4[2];
  sub_2171FB568(v24, v6);
  v7 = *(a3 + 16);
  sub_217752418();
  sub_217751DE8();
  swift_getWitnessTable();
  sub_217752BB8();
  v9 = v4[3];
  v8 = v4[4];
  v11 = v4[5];
  v10 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = sub_21738C4B0((v4 + 9), v25, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_31_21(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25[0], v25[1], v26);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t CloudResourceCollection.merging<A>(_:configuration:incrementalLoadingEncoding:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *a2;
  sub_21738C4B0((v4 + 9), &v49, &qword_27CB24188, &dword_217758930);
  if (*(&v50 + 1))
  {
    v52[0] = v49;
    v52[1] = v50;
    v53 = v51;
  }

  else
  {
    OUTLINED_FUNCTION_87_12();
    sub_217380098(v10, v11, v12);
    if (*(&v50 + 1))
    {
      sub_2171F0738(&v49, &qword_27CB24188, &dword_217758930);
    }
  }

  sub_21738C4B0(a1 + 72, &v46, &qword_27CB24188, &dword_217758930);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    OUTLINED_FUNCTION_87_12();
    sub_217380098(v13, v14, v15);
    if (*(&v47 + 1))
    {
      sub_2171F0738(&v46, &qword_27CB24188, &dword_217758930);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_21738C4B0(v52, inited + 32, &qword_27CB24188, &dword_217758930);
  sub_21738C4B0(&v49, inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, &v46);

  if (v9)
  {
    v42 = 0;
    v17 = 0;
  }

  else
  {
    sub_21738C4B0(&v46, v43, &qword_27CB24188, &dword_217758930);
    v17 = v44;
    if (v44)
    {
      v18 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v19 = *(v18 + 8);
      v20 = OUTLINED_FUNCTION_15();
      v42 = v21(v20);
      v17 = v22;
      sub_217283154(v43);
    }

    else
    {
      sub_2171F0738(v43, &qword_27CB24188, &dword_217758930);
      v42 = 0;
    }
  }

  v23 = *v5;
  v24 = v5[1];
  v25 = v5[2];
  v26 = *(a1 + 16);
  v27 = OUTLINED_FUNCTION_34_2();
  sub_2171FB568(v27, v28);
  v29 = *(a3 + 16);
  v30 = sub_217752318();
  sub_2171F0738(&v49, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v52, &qword_27CB24188, &dword_217758930);
  v31 = v5[3];
  v32 = v5[6];
  v41 = *(v5 + 2);
  if (v17)
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(&v46, &qword_27CB24188, &dword_217758930);
    v33 = 0;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  else
  {
    v39 = v46;
    v40 = v47;
    v33 = v48;
    sub_217751DE8();
    sub_217751DE8();
    v34 = v39;
    v35 = v40;
  }

  v36 = v5[14];
  v37 = v5[15];
  *a4 = v23;
  *(a4 + 8) = v24;
  *(a4 + 16) = v30;
  *(a4 + 24) = v31;
  *(a4 + 32) = v41;
  *(a4 + 48) = v32;
  *(a4 + 56) = v42;
  *(a4 + 64) = v17;
  *(a4 + 72) = v34;
  *(a4 + 88) = v35;
  *(a4 + 104) = v33;
  *(a4 + 112) = v36;
  *(a4 + 120) = v37;
  sub_217751DE8();
  return sub_217751DE8();
}

uint64_t sub_2174D32A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_2174D331C()
{
  result = qword_27CB286E8;
  if (!qword_27CB286E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286E8);
  }

  return result;
}

void sub_2174D3370(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = a1 + 32;
    do
    {
      sub_21738C4B0(v4, &v48, &qword_27CB24188, &dword_217758930);
      v42 = v48;
      v43 = v49;
      v44 = v50;
      if (*(&v49 + 1))
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = *(v3 + 16);
          sub_2172B2028();
          v3 = v10;
        }

        v5 = *(v3 + 16);
        if (v5 >= *(v3 + 24) >> 1)
        {
          sub_2172B2028();
          v3 = v11;
        }

        *(v3 + 16) = v5 + 1;
        v6 = v3 + 40 * v5;
        v7 = v45;
        v8 = v46;
        *(v6 + 64) = v47;
        *(v6 + 32) = v7;
        *(v6 + 48) = v8;
      }

      else
      {
        sub_2171F0738(&v42, &qword_27CB24188, &dword_217758930);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v12 = *(v3 + 16);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_2172CE81C(v3, &v48);
LABEL_16:

      v13 = a2;
      sub_2171F0738(a2, &qword_27CB24188, &dword_217758930);
      v14 = v49;
      *a2 = v48;
      *(a2 + 16) = v14;
      v15 = v50;
    }

    else
    {
      v16 = 0;
      v39 = v3 + 32;
      v17 = MEMORY[0x277D84F90];
      v37 = *(v3 + 16);
      v38 = v3;
      do
      {
        if (v16 >= *(v3 + 16))
        {
          goto LABEL_47;
        }

        v40 = v16;
        sub_2172830F8(v39 + 40 * v16, &v48);
        sub_2174D79C8();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
        if (swift_dynamicCast())
        {
          v19 = v43;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D80, &unk_217759FA0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_2177586E0;
          sub_2172830F8(&v48, v19 + 32);
        }

        v41 = *(v19 + 16);
        if (v41)
        {
          v20 = 0;
          while (2)
          {
            if (v20 >= *(v19 + 16))
            {
              __break(1u);
LABEL_47:
              __break(1u);
              return;
            }

            v21 = v20 + 1;
            sub_2172830F8(v19 + 32 + 40 * v20, &v45);
            v22 = 0;
            v23 = *(v17 + 16);
            v24 = v17 + 32;
            while (v23 != v22)
            {
              if (v22 >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_18;
              }

              sub_2172830F8(v24, &v42);
              v25 = *(&v43 + 1);
              v26 = v44;
              __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
              v27 = (v26[4])(&v45, v18, v25, v26);
              sub_217283154(&v42);
              if (v27)
              {
                sub_217283154(&v45);
                goto LABEL_38;
              }

              ++v22;
              v24 += 40;
            }

            sub_2172830F8(&v45, &v42);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = *(v17 + 16);
              sub_2172B2028();
              v17 = v33;
            }

            v28 = *(v17 + 16);
            if (v28 >= *(v17 + 24) >> 1)
            {
              sub_2172B2028();
              v17 = v34;
            }

            sub_217283154(&v45);
            *(v17 + 16) = v28 + 1;
            v29 = v17 + 40 * v28;
            v30 = v44;
            v31 = v43;
            *(v29 + 32) = v42;
            *(v29 + 48) = v31;
            *(v29 + 64) = v30;
LABEL_38:
            v20 = v21;
            if (v21 != v41)
            {
              continue;
            }

            break;
          }
        }

        v16 = v40 + 1;
        sub_217283154(&v48);

        v3 = v38;
      }

      while (v40 + 1 != v37);

      v35 = *(v17 + 16);
      if (!v35)
      {
        goto LABEL_18;
      }

      if (v35 == 1)
      {
        sub_2172CE81C(v17, &v48);
        goto LABEL_16;
      }

      v13 = a2;
      sub_2171F0738(a2, &qword_27CB24188, &dword_217758930);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = v17;
      *(a2 + 24) = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
      v15 = &off_282971898;
    }

    *(v13 + 32) = v15;
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_2174D37FC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2174D6E38(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_2174D3880()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudStation.Attributes(0);
  sub_2174D7D18(&qword_27CB25A08, type metadata accessor for CloudStation.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_49_18();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_49_18();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D39D8()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudPlaylist.Attributes(0);
  sub_2174D7D18(&qword_27CB257B0, type metadata accessor for CloudPlaylist.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_47_16();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_47_16();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3B30()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudAlbum.Attributes(0);
  sub_2174D7D18(&qword_27CB252E0, type metadata accessor for CloudAlbum.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_46_20();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_46_20();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3C88()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudMusicVideo.Attributes(0);
  sub_2174D7D18(&qword_27CB25878, type metadata accessor for CloudMusicVideo.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_45_19();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_45_19();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3DE0()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudSong.Attributes(0);
  sub_2174D7D18(&qword_27CB25738, type metadata accessor for CloudSong.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_44_17();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_44_17();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D3F38()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudSocialProfile.Attributes(0);
  sub_2174D7D18(&qword_27CB287C0, type metadata accessor for CloudSocialProfile.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_43_12();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_43_12();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4090()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudGenre.Attributes(0);
  sub_2174D7D18(&qword_27CB25840, type metadata accessor for CloudGenre.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_42_16();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_42_16();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D41E8()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudRadioShow.Attributes(0);
  sub_2174D7D18(&qword_27CB25998, type metadata accessor for CloudRadioShow.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_41_17();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_41_17();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4340()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudCurator.Attributes(0);
  sub_2174D7D18(&qword_27CB25A40, type metadata accessor for CloudCurator.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_40_18();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_40_18();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D4498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v7);
  sub_217751368();
  v8 = a5[3];
  v9 = a5[4];
  OUTLINED_FUNCTION_2_64();
  v10 = OUTLINED_FUNCTION_12_27();
  v12 = Encoder.dataRequestConfiguration.getter(v10, v11);
  OUTLINED_FUNCTION_59_10(v12);
  sub_2174D7920();
  sub_217751358();
  v13 = a4;
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(a5);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v14 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v14);
    sub_217751338();
    v15 = a5[3];
    v16 = a5[4];
    OUTLINED_FUNCTION_2_64();
    v17 = OUTLINED_FUNCTION_19_21();
    v18 = OUTLINED_FUNCTION_63_14(v17);
    OUTLINED_FUNCTION_69_14(v18);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v19, v20);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v21 = OUTLINED_FUNCTION_15();
    sub_217275694(v21, v22);

    OUTLINED_FUNCTION_54_14();
  }

  return v13;
}

uint64_t sub_2174D4658()
{
  OUTLINED_FUNCTION_92_11();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v6, v7);
  JSONEncoder.dataRequestConfiguration.setter(v18);
  sub_21733C798();
  sub_217751358();
  if (v1)
  {
    memcpy(v18, __dst, sizeof(v18));
    sub_21733C7EC(v18);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    memcpy(v18, __dst, sizeof(v18));
    sub_21733C7EC(v18);
    v8 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_19_21();
    v12 = OUTLINED_FUNCTION_63_14(v11);
    OUTLINED_FUNCTION_69_14(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v15 = OUTLINED_FUNCTION_15();
    sub_217275694(v15, v16);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D47F8()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudRecordLabel.Attributes(0);
  sub_2174D7D18(&qword_27CB259D0, type metadata accessor for CloudRecordLabel.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_39_14();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_39_14();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4950()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudArtist.Attributes(0);
  sub_2174D7D18(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_38_17();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_38_17();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D4ADC(uint64_t *a1, void (*a2)(uint64_t))
{
  v5 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = a1[3];
  v7 = a1[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_19_21();
  Encoder.dataRequestConfiguration.getter(v8, v7);
  v9 = JSONEncoder.dataRequestConfiguration.setter(v20);
  a2(v9);
  sub_217751358();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    v10 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = a1[3];
    v12 = a1[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_63_14(v13);
    OUTLINED_FUNCTION_69_14(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v17 = OUTLINED_FUNCTION_15();
    sub_217275694(v17, v18);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D4D14()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D4E44()
{
  OUTLINED_FUNCTION_22_26();
  v3 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_7_40();
  v8 = Encoder.dataRequestConfiguration.getter(v6, v7);
  OUTLINED_FUNCTION_59_10(v8);
  sub_21733C020();
  sub_217751358();
  if (v2)
  {
    sub_217284234(v1);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v9);
    sub_217751338();
    v10 = v0[3];
    v11 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v12 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14);
    OUTLINED_FUNCTION_4_61();
    sub_217284234(v1);

    v15 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v15, v16);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5040()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D52C4()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D54B8()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5630()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5914()
{
  OUTLINED_FUNCTION_22_26();
  v3 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_7_40();
  v8 = Encoder.dataRequestConfiguration.getter(v6, v7);
  OUTLINED_FUNCTION_59_10(v8);
  sub_21733C27C();
  sub_217751358();
  if (v2)
  {
    sub_21728463C(v1);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v9);
    sub_217751338();
    v10 = v0[3];
    v11 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v12 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14);
    OUTLINED_FUNCTION_4_61();
    sub_21728463C(v1);

    v15 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v15, v16);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D5ADC()
{
  OUTLINED_FUNCTION_22_26();
  v5 = OUTLINED_FUNCTION_10_34();
  OUTLINED_FUNCTION_235_0(v5);
  sub_217751368();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v8 = OUTLINED_FUNCTION_13_31();
  v9 = OUTLINED_FUNCTION_77_10(v8);
  v4(v9);
  OUTLINED_FUNCTION_24_26();
  if (v1)
  {
    v2(v3);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_50_16();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = v0[3];
    v12 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v13 = OUTLINED_FUNCTION_19_21();
    v14 = OUTLINED_FUNCTION_75_11(v13);
    OUTLINED_FUNCTION_76_10(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v15, v16);
    OUTLINED_FUNCTION_8_40();
    OUTLINED_FUNCTION_18_28();
    v17 = OUTLINED_FUNCTION_23_29();
    v18(v17);

    v19 = OUTLINED_FUNCTION_10_5();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D5C54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v7 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v7);
  sub_217751368();
  v8 = a5[3];
  v9 = a5[4];
  OUTLINED_FUNCTION_2_64();
  v10 = OUTLINED_FUNCTION_12_27();
  Encoder.dataRequestConfiguration.getter(v10, v11);
  JSONEncoder.dataRequestConfiguration.setter(v22);
  sub_217362478();
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  sub_217221010(v23);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(a5);
  }

  else
  {

    v12 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v12);
    sub_217751338();
    v13 = a5[3];
    v14 = a5[4];
    OUTLINED_FUNCTION_2_64();
    v15 = OUTLINED_FUNCTION_19_21();
    v16 = OUTLINED_FUNCTION_63_14(v15);
    OUTLINED_FUNCTION_69_14(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v17, v18);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v19 = OUTLINED_FUNCTION_15();
    sub_217275694(v19, v20);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D5DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_89_11(a1);
  v22 = *(v3 + 32);
  v4 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  v5 = v1[3];
  v6 = v1[4];
  OUTLINED_FUNCTION_2_64();
  v7 = OUTLINED_FUNCTION_12_27();
  v9 = Encoder.dataRequestConfiguration.getter(v7, v8);
  OUTLINED_FUNCTION_59_10(v9);
  sub_2174D7A78();
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  v10 = v22;
  sub_217221010(v21);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {

    v11 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v11);
    sub_217751338();
    v12 = v1[3];
    v13 = v1[4];
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_63_14(v14);
    OUTLINED_FUNCTION_69_14(v15);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v16, v17);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v18 = OUTLINED_FUNCTION_15();
    sub_217275694(v18, v19);

    OUTLINED_FUNCTION_54_14();
  }

  return v10;
}

uint64_t sub_2174D5FFC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v18[5] = a1;
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  v7 = a2[3];
  v8 = a2[4];
  OUTLINED_FUNCTION_2_64();
  Encoder.dataRequestConfiguration.getter(v7, v8);
  v9 = JSONEncoder.dataRequestConfiguration.setter(v18);
  a3(v9);
  sub_217751358();
  if (v3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v10 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v10);
    sub_217751338();
    v11 = a2[3];
    v12 = a2[4];
    OUTLINED_FUNCTION_2_64();
    OUTLINED_FUNCTION_63_14(v11);
    JSONDecoder.dataRequestConfiguration.setter(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14);
    OUTLINED_FUNCTION_5_47();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v15 = OUTLINED_FUNCTION_15();
    sub_217275694(v15, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D6200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  v7 = a4[3];
  v8 = a4[4];
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v9, v10);
  JSONEncoder.dataRequestConfiguration.setter(v19);
  sub_2174D7728();
  sub_217751358();
  OUTLINED_FUNCTION_68_5();
  sub_2172E141C(v20, v21, v22);
  if (!v4)
  {
    v11 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v11);
    sub_217751338();
    v12 = a4[3];
    v13 = a4[4];
    OUTLINED_FUNCTION_2_64();
    OUTLINED_FUNCTION_63_14(v12);
    JSONDecoder.dataRequestConfiguration.setter(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v14, v15);
    OUTLINED_FUNCTION_5_47();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v16 = OUTLINED_FUNCTION_15();
    sub_217275694(v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a4);
  return OUTLINED_FUNCTION_55_14();
}

uint64_t sub_2174D63F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[5] = a1;
  v22[6] = a2;
  v5 = sub_217751378();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_217751368();
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  Encoder.dataRequestConfiguration.getter(v9, v10);
  v11 = v8;
  JSONEncoder.dataRequestConfiguration.setter(v22);
  sub_2174D65EC();
  v12 = sub_217751358();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v14 = v12;
    v15 = v13;

    v16 = sub_217751348();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_217751338();
    v19 = a3[3];
    v20 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v19);
    Encoder.dataRequestConfiguration.getter(v19, v20);
    JSONDecoder.dataRequestConfiguration.setter(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70);
    sub_217751308();

    sub_217275694(v14, v15);

    v11 = v22[0];
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  return v11;
}

unint64_t sub_2174D65EC()
{
  result = qword_27CB286F8;
  if (!qword_27CB286F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286F8);
  }

  return result;
}

void sub_2174D66DC()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  sub_2174D7D18(&qword_27CB25778, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_36_19();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_36_19();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

void sub_2174D6834()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_92_11();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v3);
  sub_217751368();
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v6 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v6, v7);
  JSONEncoder.dataRequestConfiguration.setter(v17);
  sub_2172DEF94();
  sub_217751358();
  if (v1)
  {
    memcpy(v17, __dst, sizeof(v17));
    sub_2172A9D90(v17);

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    memcpy(v17, __dst, sizeof(v17));
    sub_2172A9D90(v17);
    v8 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_19_21();
    v12 = OUTLINED_FUNCTION_63_14(v11);
    OUTLINED_FUNCTION_69_14(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v13, v14);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v15 = OUTLINED_FUNCTION_15();
    sub_217275694(v15, v16);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D69C4(uint64_t a1)
{
  OUTLINED_FUNCTION_89_11(a1);
  v21 = *(v3 + 32);
  v22 = *(v3 + 48);
  v4 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v4);
  sub_217751368();
  v5 = v1[3];
  v6 = v1[4];
  OUTLINED_FUNCTION_2_64();
  v7 = OUTLINED_FUNCTION_12_27();
  v9 = Encoder.dataRequestConfiguration.getter(v7, v8);
  OUTLINED_FUNCTION_59_10(v9);
  sub_2174D76B0();
  sub_217751358();
  v10 = v22;
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v1);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();

    v11 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v11);
    sub_217751338();
    v12 = v1[3];
    v13 = v1[4];
    OUTLINED_FUNCTION_2_64();
    v14 = OUTLINED_FUNCTION_19_21();
    v15 = OUTLINED_FUNCTION_63_14(v14);
    OUTLINED_FUNCTION_69_14(v15);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v16, v17);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();

    v18 = OUTLINED_FUNCTION_15();
    sub_217275694(v18, v19);

    OUTLINED_FUNCTION_54_14();
  }

  return v10;
}

uint64_t sub_2174D6B68(__int128 *a1, uint64_t *a2)
{
  v4 = a1[1];
  v47 = *a1;
  v48 = v4;
  v5 = a1[3];
  v49 = a1[2];
  v50 = v5;
  v6 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v6);
  sub_217751368();
  v7 = a2[3];
  v8 = a2[4];
  OUTLINED_FUNCTION_2_64();
  v9 = OUTLINED_FUNCTION_135();
  Encoder.dataRequestConfiguration.getter(v9, v10);
  JSONEncoder.dataRequestConfiguration.setter(&v43);
  sub_2172DF1E4();
  v11 = sub_217751358();
  if (v2)
  {
    OUTLINED_FUNCTION_78_10(v11, v12, v13, v14, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_78_10(v19, v20, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v27 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v27);
    sub_217751338();
    v28 = a2[3];
    v29 = a2[4];
    OUTLINED_FUNCTION_2_64();
    v30 = OUTLINED_FUNCTION_19_21();
    v31 = OUTLINED_FUNCTION_63_14(v30);
    OUTLINED_FUNCTION_69_14(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v32, v33);
    OUTLINED_FUNCTION_3_58();
    sub_217751308();
    OUTLINED_FUNCTION_71_14();
    v34 = OUTLINED_FUNCTION_15();
    sub_217275694(v34, v35);

    OUTLINED_FUNCTION_54_14();
  }

  return OUTLINED_FUNCTION_55_14();
}

void sub_2174D6CE0()
{
  OUTLINED_FUNCTION_22_26();
  v2 = OUTLINED_FUNCTION_16_34();
  OUTLINED_FUNCTION_235_0(v2);
  sub_217751368();
  v3 = v0[3];
  v4 = v0[4];
  OUTLINED_FUNCTION_2_64();
  v5 = OUTLINED_FUNCTION_7_40();
  v7 = Encoder.dataRequestConfiguration.getter(v5, v6);
  OUTLINED_FUNCTION_59_10(v7);
  type metadata accessor for CloudPreviewAsset();
  sub_2174D7D18(&qword_280BE3D80, type metadata accessor for CloudPreviewAsset);
  OUTLINED_FUNCTION_9_35();
  if (v1)
  {
    OUTLINED_FUNCTION_48_16();

    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_25_31();
    OUTLINED_FUNCTION_235_0(v8);
    sub_217751338();
    v9 = v0[3];
    v10 = v0[4];
    OUTLINED_FUNCTION_2_64();
    v11 = OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_60_17(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v12, v13);
    OUTLINED_FUNCTION_4_61();
    OUTLINED_FUNCTION_48_16();

    v14 = OUTLINED_FUNCTION_34_2();
    sub_217275694(v14, v15);

    OUTLINED_FUNCTION_54_14();
  }

  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_21_27();
}

uint64_t sub_2174D6E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v70 = a5;
  sub_217747F44(v69);
  v5 = v69[1];
  v6 = v69[3];
  v7 = v69[4];
  v55 = v69[5];
  v56 = v69[0];
  v8 = (v69[2] + 64) >> 6;
  sub_217751DE8();

  v53 = v8;
  v54 = v5;
  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v56 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v56 + 56) + 24 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v60[0] = *v13;
    v60[1] = v14;
    v61 = v17;
    v62 = v16;
    v63 = v18;
    sub_217751DE8();
    sub_21726A5E0(v17, v16, v18);
    v55(&v64, v60);
    v19 = v61;
    v20 = v62;
    v21 = v63;

    sub_21726A608(v19, v20, v21);
    v22 = v65;
    if (!v65)
    {
LABEL_19:
      sub_2172303F0();
    }

    v23 = v64;
    v25 = v66;
    v24 = v67;
    v58 = v68;
    v26 = *v70;
    v28 = sub_21763246C(v64, v65);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      v33 = v70;
      sub_217747120(v31, a4 & 1);
      v34 = *v33;
      v35 = sub_21763246C(v23, v22);
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v28 = v35;
    }

    v57 = (v9 - 1) & v9;
    v37 = *v70;
    if (v32)
    {
      v38 = 3 * v28;
      v39 = v37[7] + 8 * v38;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      sub_21726A5E0(*v39, v41, v42);
      sub_21726A608(v25, v24, v58);

      v43 = v37[7] + 8 * v38;
      v44 = *v43;
      v45 = *(v43 + 8);
      *v43 = v40;
      *(v43 + 8) = v41;
      v46 = *(v43 + 16);
      *(v43 + 16) = v42;
      sub_21726A608(v44, v45, v46);
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v47 = (v37[6] + 16 * v28);
      *v47 = v23;
      v47[1] = v22;
      v48 = v37[7] + 24 * v28;
      *v48 = v25;
      *(v48 + 8) = v24;
      *(v48 + 16) = v58;
      v49 = v37[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_22;
      }

      v37[2] = v51;
    }

    a4 = 1;
    v6 = v10;
    v8 = v53;
    v5 = v54;
    v7 = v57;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_2174D716C()
{
  result = qword_27CB28700;
  if (!qword_27CB28700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28708, &qword_21776E368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28700);
  }

  return result;
}

unint64_t sub_2174D71D4()
{
  result = qword_27CB28710;
  if (!qword_27CB28710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28710);
  }

  return result;
}

uint64_t sub_2174D7270()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2174D72AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2174D72EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for CloudResourceCollectionIncrementalLoadingEncoding(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2174D7428(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2174D747C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_2174D74E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2174D75D0()
{
  result = qword_27CB28718;
  if (!qword_27CB28718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28718);
  }

  return result;
}

unint64_t sub_2174D765C()
{
  result = qword_27CB28728;
  if (!qword_27CB28728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28728);
  }

  return result;
}

unint64_t sub_2174D76B0()
{
  result = qword_27CB28738;
  if (!qword_27CB28738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28738);
  }

  return result;
}

uint64_t sub_2174D7704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_2174D269C(a1, v2[2], a2);
}

unint64_t sub_2174D7728()
{
  result = qword_27CB28740;
  if (!qword_27CB28740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28740);
  }

  return result;
}

unint64_t sub_2174D777C()
{
  result = qword_27CB28748;
  if (!qword_27CB28748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28748);
  }

  return result;
}

unint64_t sub_2174D77D0()
{
  result = qword_27CB28750;
  if (!qword_27CB28750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28750);
  }

  return result;
}

unint64_t sub_2174D7824()
{
  result = qword_27CB28758;
  if (!qword_27CB28758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28758);
  }

  return result;
}

unint64_t sub_2174D7878()
{
  result = qword_27CB28760;
  if (!qword_27CB28760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28760);
  }

  return result;
}

unint64_t sub_2174D78CC()
{
  result = qword_27CB28768;
  if (!qword_27CB28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28768);
  }

  return result;
}

unint64_t sub_2174D7920()
{
  result = qword_27CB28770;
  if (!qword_27CB28770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28770);
  }

  return result;
}

uint64_t sub_2174D79C8()
{
  OUTLINED_FUNCTION_92_11();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_41_0(v2);
  (*v3)(v0);
  return v0;
}

unint64_t sub_2174D7A24()
{
  result = qword_27CB28778;
  if (!qword_27CB28778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28778);
  }

  return result;
}

unint64_t sub_2174D7A78()
{
  result = qword_27CB28780;
  if (!qword_27CB28780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28780);
  }

  return result;
}

unint64_t sub_2174D7ACC()
{
  result = qword_27CB28788;
  if (!qword_27CB28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28788);
  }

  return result;
}

unint64_t sub_2174D7B20()
{
  result = qword_27CB28790;
  if (!qword_27CB28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28790);
  }

  return result;
}

unint64_t sub_2174D7B74()
{
  result = qword_27CB28798;
  if (!qword_27CB28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28798);
  }

  return result;
}

unint64_t sub_2174D7BC8()
{
  result = qword_27CB287A0;
  if (!qword_27CB287A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287A0);
  }

  return result;
}

unint64_t sub_2174D7C1C()
{
  result = qword_27CB287A8;
  if (!qword_27CB287A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287A8);
  }

  return result;
}

unint64_t sub_2174D7C70()
{
  result = qword_27CB287B0;
  if (!qword_27CB287B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287B0);
  }

  return result;
}

unint64_t sub_2174D7CC4()
{
  result = qword_27CB287B8;
  if (!qword_27CB287B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287B8);
  }

  return result;
}

uint64_t sub_2174D7D18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2174D7D60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

uint64_t sub_2174D7DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2174D7E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174D7E80(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudResourceCollectionAttributes.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2174D7FF4()
{
  result = qword_27CB287C8;
  if (!qword_27CB287C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287C8);
  }

  return result;
}

unint64_t sub_2174D804C()
{
  result = qword_27CB287D0;
  if (!qword_27CB287D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287D0);
  }

  return result;
}

unint64_t sub_2174D80A4()
{
  result = qword_27CB287D8;
  if (!qword_27CB287D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_34()
{

  return sub_217751378();
}

uint64_t OUTLINED_FUNCTION_18_28()
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_40_18()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudCurator.Attributes);
}

uint64_t OUTLINED_FUNCTION_41_17()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudRadioShow.Attributes);
}

uint64_t OUTLINED_FUNCTION_42_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudGenre.Attributes);
}

uint64_t OUTLINED_FUNCTION_43_12()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudSocialProfile.Attributes);
}

uint64_t OUTLINED_FUNCTION_45_19()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudMusicVideo.Attributes);
}

uint64_t OUTLINED_FUNCTION_46_20()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudAlbum.Attributes);
}

uint64_t OUTLINED_FUNCTION_47_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudPlaylist.Attributes);
}

uint64_t OUTLINED_FUNCTION_48_16()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudPreviewAsset);
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return sub_2174D7DB8(v0, type metadata accessor for CloudStation.Attributes);
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return sub_217751348();
}

uint64_t OUTLINED_FUNCTION_51_16()
{
  v3 = *(v0 + 24);
  v5 = *(v0 + 16);
  v6 = *(v1 - 160);

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_53_16()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[6];
  result = v0[7];
  v5 = *(v0[4] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_14()
{

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_58_15()
{
  v2 = *(v0 - 128);
  *(v0 - 96) = *(v0 - 136);
  *(v0 - 88) = v2;
  v3 = *(v0 - 160);

  return sub_217752F48();
}

uint64_t OUTLINED_FUNCTION_59_10(uint64_t a1, ...)
{
  va_start(va, a1);

  return JSONEncoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_60_17(uint64_t a1, ...)
{
  va_start(va, a1);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_61_10()
{
  v2 = *(v0 - 160);

  return sub_217752F88();
}

uint64_t OUTLINED_FUNCTION_63_14(uint64_t a1)
{

  return Encoder.dataRequestConfiguration.getter(a1, v1);
}

uint64_t OUTLINED_FUNCTION_64_17()
{
  v3 = *(v2 - 96);
  __swift_project_boxed_opaque_existential_1((v2 - 128), v0);
  *(v2 - 176) = v1;
  v4 = *(v3 + 8);

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_68_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(v8, v11, v10, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_69_14(uint64_t a1, ...)
{
  va_start(va, a1);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_70_12(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 168) = &a9;
  *(v9 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_14()
{
}

uint64_t OUTLINED_FUNCTION_73_12()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_74_11()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_76_10(uint64_t a1, ...)
{
  va_start(va, a1);

  return JSONDecoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_77_10(uint64_t a1, ...)
{
  va_start(va, a1);

  return JSONEncoder.dataRequestConfiguration.setter(va);
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20)
{
  a15 = a19;
  a16 = a20;
  v22 = *(v20 + 48);
  a17 = *(v20 + 32);
  a18 = v22;

  return sub_2174D7974(&a15);
}

uint64_t OUTLINED_FUNCTION_82_10()
{
  v2 = *(v0 - 328);
}

__n128 OUTLINED_FUNCTION_85_10()
{
  result = *(v1 - 128);
  v3 = *(v1 - 112);
  *(v0 + 72) = result;
  return result;
}

void OUTLINED_FUNCTION_86_9()
{
  v2 = *(v1 - 168);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v1 - 152);
}

void OUTLINED_FUNCTION_88_9(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[6] = a2;
  a1[7] = a2;
  a1[4] = a2;
  a1[5] = a2;
  a1[2] = a2;
  a1[3] = a2;
  *a1 = a2;
  a1[1] = a2;
}

uint64_t OUTLINED_FUNCTION_96_11()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_98_13()
{

  return sub_2177531E8();
}

uint64_t OUTLINED_FUNCTION_99_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21738C4B0(v4 + 16, v5 - 128, a3, a4);
}

uint64_t Date.convertToLegacyModelRawValue()()
{
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CloudFormatter();
  __swift_project_value_buffer(v0, qword_280BE8918);
  return CloudFormatter.dateComponents(from:)();
}

uint64_t Date.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_217751558();
  v9 = sub_217751568();
  (*(*(v9 - 8) + 8))(a1, v9);
  v10 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_2172CCAB0(v8);
    v11 = 1;
  }

  else
  {
    (*(*(v10 - 8) + 32))(a2, v8, v10);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v10);
}

void *CloudCreditArtist.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, const void *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  memcpy((a7 + 16), __src, 0x1D0uLL);
  result = memcpy((a7 + 480), a4, 0x80uLL);
  *(a7 + 609) = v9;
  *(a7 + 608) = v10;
  return result;
}

void *CloudCreditArtist.Attributes.init(artwork:name:roleNames:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = memcpy(a5, __src, 0x1B8uLL);
  a5[55] = a2;
  a5[56] = a3;
  a5[57] = a4;
  return result;
}

uint64_t CloudCreditArtist.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2174A87A0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudCreditArtist.Attributes.name.getter()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

BOOL static CloudCreditArtist.Attributes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18_29(v24);
  v6 = v5[55];
  v7 = v5[56];
  v8 = v5[57];
  OUTLINED_FUNCTION_17_26(v25);
  v10 = v3[55];
  v9 = v3[56];
  v11 = v3[57];
  OUTLINED_FUNCTION_18_29(__src);
  OUTLINED_FUNCTION_17_26(&__src[440]);
  OUTLINED_FUNCTION_18_29(v26);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v26) == 1)
  {
    OUTLINED_FUNCTION_17_26(__dst);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
    {
      OUTLINED_FUNCTION_18_29(v23);
      sub_2174A87A0(v24, v20, &qword_27CB25000, &unk_21776EA00);
      sub_2174A87A0(v25, v20, &qword_27CB25000, &unk_21776EA00);
      sub_2171F06D8(v23, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_2174A87A0(v24, v23, &qword_27CB25000, &unk_21776EA00);
    sub_2174A87A0(v25, v23, &qword_27CB25000, &unk_21776EA00);
    sub_2171F06D8(__dst, &qword_27CB25008, &qword_21778F850);
    return 0;
  }

  OUTLINED_FUNCTION_17_26(v20);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v20) == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_17_26(&v18);
  OUTLINED_FUNCTION_17_26(__dst);
  OUTLINED_FUNCTION_18_29(v23);
  sub_2174A87A0(v24, v19, &qword_27CB25000, &unk_21776EA00);
  sub_2174A87A0(v25, v19, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v14 = v13;
  sub_2171F06D8(&v18, &qword_27CB25000, &unk_21776EA00);
  OUTLINED_FUNCTION_18_29(v19);
  sub_2171F06D8(v19, &qword_27CB25000, &unk_21776EA00);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = v6 == v10 && v7 == v9;
    if (!v15 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v8)
  {
    if (v11)
    {
      v16 = OUTLINED_FUNCTION_93();
      if (sub_217270790(v16, v17))
      {
        return 1;
      }
    }

    return 0;
  }

  return !v11;
}

uint64_t sub_2174D8C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E656C6F72 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2174D8D20(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x656D614E656C6F72;
}

uint64_t sub_2174D8D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2174D8C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174D8DBC(uint64_t a1)
{
  v2 = sub_2174DADE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174D8DF8(uint64_t a1)
{
  v2 = sub_2174DADE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudCreditArtist.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB287F0, &qword_21776EA10);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v16 - v11;
  memcpy(v20, v0, 0x1B8uLL);
  v13 = v0[55];
  v16[1] = v0[56];
  v16[2] = v13;
  v16[0] = v0[57];
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2174A87A0(v20, v19, &qword_27CB25000, &unk_21776EA00);
  sub_2174DADE4();
  sub_2177532F8();
  memcpy(v19, v20, sizeof(v19));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2174DAE38(&qword_280BE42D8);
  OUTLINED_FUNCTION_28_12();
  if (v1)
  {
    memcpy(v18, v19, sizeof(v18));
    sub_2171F06D8(v18, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    v15 = v16[0];
    memcpy(v18, v19, sizeof(v18));
    sub_2171F06D8(v18, &qword_27CB25000, &unk_21776EA00);
    LOBYTE(v17) = 1;
    sub_217752EF8();
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_28_12();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_170();
}

void CloudCreditArtist.Attributes.hash(into:)(const void *a1)
{
  v4 = v1[54];
  v3 = v1[55];
  v6 = v1[56];
  v5 = v1[57];
  memcpy(__dst, v1, sizeof(__dst));
  v9 = v4;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_25();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  memcpy(v7, v1, sizeof(v7));
  OUTLINED_FUNCTION_24();
  CloudArtwork.hash(into:)(a1);
  sub_217751DE8();
  sub_217265A08(a1, v4);

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  if (v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_24();
    sub_217281100(a1, v5);
    return;
  }

LABEL_7:
  OUTLINED_FUNCTION_25();
}

uint64_t CloudCreditArtist.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudCreditArtist.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudCreditArtist.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28800, &unk_21776EA18);
  OUTLINED_FUNCTION_0_0(v16);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_21_2();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2174DADE4();
  OUTLINED_FUNCTION_139();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2174DAE38(&qword_280BE42D0);
    OUTLINED_FUNCTION_8_1();
    sub_217752E58();
    memcpy(v24, v23, sizeof(v24));
    v18[0] = 1;
    OUTLINED_FUNCTION_8_1();
    v14 = sub_217752E18();
    v15 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2318);
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_5_0();
    v12(v11);
    v13 = v22;
    memcpy(v17, v24, 0x1B8uLL);
    v17[55] = v14;
    v17[56] = v15;
    v17[57] = v22;
    memcpy(v4, v17, 0x1D0uLL);
    sub_2174DAE9C(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v18, v24, sizeof(v18));
    v19 = v14;
    v20 = v15;
    v21 = v13;
    sub_2174DAED4(v18);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D9510()
{
  sub_2177531E8();
  CloudCreditArtist.Attributes.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudCreditArtist.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudCreditArtist.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2174D9670@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudCreditArtist.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_2174D96B0(uint64_t a1)
{
  v2 = sub_2174DAF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174D96EC(uint64_t a1)
{
  v2 = sub_2174DAF04();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudCreditArtist.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2174A87A0(a1, v7, &qword_27CB24280, &unk_21775D680);
  sub_2174A87A0(a2, v9, &qword_27CB24280, &unk_21775D680);
  if (v8)
  {
    sub_2174A87A0(v7, v6, &qword_27CB24280, &unk_21775D680);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE010(v6, v5);
      sub_2171F06D8(v5, &qword_27CB24288, &qword_217758F80);
      sub_2171F06D8(v6, &qword_27CB24288, &qword_217758F80);
      sub_2171F06D8(v7, &qword_27CB24280, &unk_21775D680);
      return (v3 & 1) != 0;
    }

    sub_2171F06D8(v6, &qword_27CB24288, &qword_217758F80);
  }

  else if (!v9[2])
  {
    sub_2171F06D8(v7, &qword_27CB24280, &unk_21775D680);
    return 1;
  }

  sub_2171F06D8(v7, &qword_27CB25068, &qword_21775B528);
  return 0;
}

uint64_t CloudCreditArtist.Relationships.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28808, &unk_21776EA28);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174DAF04();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
  sub_2174DB034(&qword_27CB250A0);
  sub_217752F38();
  return (*(v4 + 8))(v10, v2);
}

uint64_t CloudCreditArtist.Relationships.hash(into:)(uint64_t a1)
{
  sub_2174A87A0(v1, __src, &qword_27CB24280, &unk_21775D680);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE754(a1);
  return sub_2171F06D8(v4, &qword_27CB24288, &qword_217758F80);
}

uint64_t CloudCreditArtist.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24280, &unk_21775D680);
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

  return sub_217753238();
}

void CloudCreditArtist.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v15 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28818, &qword_21776EA38);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_21_2();
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2174DAF04();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2174DB034(&qword_27CB25148);
    sub_217752E58();
    (*(v7 + 8))(v1, v5);
    memcpy(v14, v13, sizeof(v14));
    memcpy(v15, v14, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174D9D3C()
{
  sub_2177531E8();
  sub_2174A87A0(v0, __src, &qword_27CB24280, &unk_21775D680);
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

  return sub_217753238();
}

uint64_t sub_2174D9DEC(uint64_t a1)
{
  v2 = sub_2174DB0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174D9E28(uint64_t a1)
{
  v2 = sub_2174DB0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2174D9F24(uint64_t a1)
{
  v2 = sub_2174DB10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174D9F60(uint64_t a1)
{
  v2 = sub_2174DB10C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2174D9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &a9 - v35;
  v37 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v36, v28);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCreditArtist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudCreditArtist.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_22_27(v5);
  memcpy(a1, (v1 + 16), 0x1D0uLL);
  return sub_2174DAE9C(v5, v4);
}

uint64_t sub_2174DA224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4BD0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4BE0;
  v2 = byte_280BE4BE8;
  *(v0 + 32) = qword_280BE4BD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_280BE3DA8 = v0;

  return sub_217751DE8();
}

uint64_t static CloudCreditArtist.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_217753058(), v6 = 0, (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_22_27(v13);
    OUTLINED_FUNCTION_22_27(v12);
    memcpy(__dst, (a2 + 16), sizeof(__dst));
    memcpy(__src, (a2 + 16), sizeof(__src));
    sub_2174DAE9C(v13, v10);
    sub_2174DAE9C(__dst, v10);
    v7 = static CloudCreditArtist.Attributes.== infix(_:_:)(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_2174DAED4(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_2174DAED4(v16);
    if (v7)
    {
      sub_2174A87A0(a1 + 480, v12, &qword_27CB249D8, &unk_217758F70);
      sub_2174A87A0(a2 + 480, &v12[16], &qword_27CB249D8, &unk_217758F70);
      if (v12[2] == 1)
      {
        if (v12[18] == 1)
        {
          sub_2171F06D8(v12, &qword_27CB249D8, &unk_217758F70);
          goto LABEL_14;
        }

        goto LABEL_12;
      }

      sub_2174A87A0(v12, __src, &qword_27CB249D8, &unk_217758F70);
      if (v12[18] == 1)
      {
        sub_217283F7C(__src);
LABEL_12:
        sub_2171F06D8(v12, &qword_27CB28840, &qword_21776EA58);
        goto LABEL_15;
      }

      memcpy(v10, &v12[16], 0x80uLL);
      v8 = static CloudCreditArtist.Relationships.== infix(_:_:)(__src, v10);
      sub_217283F7C(v10);
      sub_217283F7C(__src);
      sub_2171F06D8(v12, &qword_27CB249D8, &unk_217758F70);
      if (v8)
      {
LABEL_14:
        if (*(a1 + 608) == *(a2 + 608))
        {
          v6 = *(a1 + 609) ^ *(a2 + 609) ^ 1;
          return v6 & 1;
        }
      }
    }

LABEL_15:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2174DA518(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 1635018093;
      break;
    case 4:
      result = 0x7377656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2174DA5AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2174DA600(uint64_t a1)
{
  v2 = sub_2174DB160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174DA63C(uint64_t a1)
{
  v2 = sub_2174DB160();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudCreditArtist.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28848, &qword_21776EA60);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17[-v12 - 8];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2174DB160();
  sub_2177532F8();
  v15 = v2[1];
  v20 = *v2;
  v21 = v15;
  v19[471] = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_2_65();
  sub_217752F88();
  if (!v1)
  {
    memcpy(v19, v2 + 2, 0x1D0uLL);
    memcpy(v18, v2 + 2, sizeof(v18));
    v17[471] = 1;
    sub_2174DAE9C(v19, v17);
    sub_2174DB1B4();
    OUTLINED_FUNCTION_2_65();
    sub_217752F88();
    memcpy(v17, v18, 0x1D0uLL);
    sub_2174DAED4(v17);
    HIBYTE(v16) = 2;
    sub_2174DB208();
    OUTLINED_FUNCTION_2_65();
    sub_217752F38();
    HIBYTE(v16) = *(v2 + 608);
    BYTE6(v16) = 3;
    sub_2174DB25C();
    OUTLINED_FUNCTION_2_65();
    sub_217752F38();
    HIBYTE(v16) = *(v2 + 609);
    BYTE6(v16) = 4;
    sub_2174DB2B0();
    OUTLINED_FUNCTION_2_65();
    sub_217752F38();
  }

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudCreditArtist.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  OUTLINED_FUNCTION_22_27(__src);
  CloudCreditArtist.Attributes.hash(into:)(a1);
  sub_2174A87A0((v1 + 60), __src, &qword_27CB249D8, &unk_217758F70);
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_24();
    sub_2174A87A0(__dst, v9, &qword_27CB24280, &unk_21775D680);
    if (v9[2])
    {
      memcpy(v8, v9, sizeof(v8));
      OUTLINED_FUNCTION_24();
      sub_2172DE754(a1);
      sub_2171F06D8(v8, &qword_27CB24288, &qword_217758F80);
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217283F7C(__dst);
  }

  v5 = *(v1 + 608);
  sub_217753208();
  v6 = *(v1 + 609);
  return sub_217753208();
}

uint64_t CloudCreditArtist.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudCreditArtist.hash(into:)(v1);
  return sub_217753238();
}

void CloudCreditArtist.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28878, &qword_21776EA68);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_21_2();
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2174DB160();
  OUTLINED_FUNCTION_139();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13[0] = 0;
    sub_2172E1C68();
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    v15[0] = v14[0];
    v15[1] = v14[1];
    v13[135] = 1;
    sub_2174DB304();
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    memcpy(v16, v14, sizeof(v16));
    sub_2174DB358();
    OUTLINED_FUNCTION_1_59();
    sub_217752E58();
    memcpy(v17, v13, 0x80uLL);
    sub_2174DB3AC();
    OUTLINED_FUNCTION_1_59();
    sub_217752E58();
    v17[128] = v13[0];
    sub_2174DB400();
    OUTLINED_FUNCTION_1_59();
    sub_217752E58();
    v11 = OUTLINED_FUNCTION_82();
    v12(v11);
    v17[129] = v13[0];
    sub_2174DB454(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2174DB48C(v15);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174DADA8()
{
  sub_2177531E8();
  CloudCreditArtist.hash(into:)(v1);
  return sub_217753238();
}

unint64_t sub_2174DADE4()
{
  result = qword_27CB287F8;
  if (!qword_27CB287F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB287F8);
  }

  return result;
}

unint64_t sub_2174DAE38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DEF40();
    sub_2172DEF94();
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DAF04()
{
  result = qword_27CB28810;
  if (!qword_27CB28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28810);
  }

  return result;
}

unint64_t sub_2174DAF58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2174DAFF4(&unk_27CB250B0);
    sub_2174DAFF4(&unk_27CB250B8);
    result = OUTLINED_FUNCTION_20_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DAFF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudArtist(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DB034(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2174DAF58(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2174DB0B8()
{
  result = qword_27CB28828;
  if (!qword_27CB28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28828);
  }

  return result;
}

unint64_t sub_2174DB10C()
{
  result = qword_27CB28838;
  if (!qword_27CB28838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28838);
  }

  return result;
}

unint64_t sub_2174DB160()
{
  result = qword_27CB28850;
  if (!qword_27CB28850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28850);
  }

  return result;
}

unint64_t sub_2174DB1B4()
{
  result = qword_27CB28858;
  if (!qword_27CB28858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28858);
  }

  return result;
}

unint64_t sub_2174DB208()
{
  result = qword_27CB28860;
  if (!qword_27CB28860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28860);
  }

  return result;
}

unint64_t sub_2174DB25C()
{
  result = qword_27CB28868;
  if (!qword_27CB28868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28868);
  }

  return result;
}

unint64_t sub_2174DB2B0()
{
  result = qword_27CB28870;
  if (!qword_27CB28870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28870);
  }

  return result;
}

unint64_t sub_2174DB304()
{
  result = qword_27CB28880;
  if (!qword_27CB28880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28880);
  }

  return result;
}

unint64_t sub_2174DB358()
{
  result = qword_27CB28888;
  if (!qword_27CB28888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28888);
  }

  return result;
}

unint64_t sub_2174DB3AC()
{
  result = qword_27CB28890;
  if (!qword_27CB28890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28890);
  }

  return result;
}

unint64_t sub_2174DB400()
{
  result = qword_27CB28898;
  if (!qword_27CB28898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28898);
  }

  return result;
}

unint64_t sub_2174DB4C0()
{
  result = qword_27CB288A0;
  if (!qword_27CB288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288A0);
  }

  return result;
}

unint64_t sub_2174DB518()
{
  result = qword_27CB288A8;
  if (!qword_27CB288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288A8);
  }

  return result;
}

unint64_t sub_2174DB570()
{
  result = qword_27CB288B0;
  if (!qword_27CB288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288B0);
  }

  return result;
}

unint64_t sub_2174DB5C8()
{
  result = qword_27CB288B8;
  if (!qword_27CB288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288B8);
  }

  return result;
}

unint64_t sub_2174DB620()
{
  result = qword_27CB288C0;
  if (!qword_27CB288C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB288C8, &qword_21776EC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288C0);
  }

  return result;
}

unint64_t sub_2174DB688()
{
  result = qword_27CB288D0;
  if (!qword_27CB288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288D0);
  }

  return result;
}

unint64_t sub_2174DB6E0()
{
  result = qword_27CB288D8;
  if (!qword_27CB288D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288D8);
  }

  return result;
}

unint64_t sub_2174DB738()
{
  result = qword_27CB288E0;
  if (!qword_27CB288E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288E0);
  }

  return result;
}

unint64_t sub_2174DB7B0()
{
  result = qword_27CB288E8;
  if (!qword_27CB288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C7ArtworkVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit17CloudCreditArtistV13RelationshipsVSg(uint64_t a1)
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

uint64_t sub_2174DB848(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 610))
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

uint64_t sub_2174DB888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
    *(result + 584) = 0u;
    *(result + 608) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 610) = 1;
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

    *(result + 610) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2174DB980(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 464))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_2174DB9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
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
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_2174DBAD0(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudCreditArtist.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudCreditArtist.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2174DBD54()
{
  result = qword_27CB288F0;
  if (!qword_27CB288F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288F0);
  }

  return result;
}

unint64_t sub_2174DBDAC()
{
  result = qword_27CB288F8;
  if (!qword_27CB288F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB288F8);
  }

  return result;
}

unint64_t sub_2174DBE04()
{
  result = qword_27CB28900;
  if (!qword_27CB28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28900);
  }

  return result;
}

unint64_t sub_2174DBE5C()
{
  result = qword_27CB28908;
  if (!qword_27CB28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28908);
  }

  return result;
}

unint64_t sub_2174DBEB4()
{
  result = qword_27CB28910;
  if (!qword_27CB28910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28910);
  }

  return result;
}

unint64_t sub_2174DBF0C()
{
  result = qword_27CB28918;
  if (!qword_27CB28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28918);
  }

  return result;
}

unint64_t sub_2174DBF64()
{
  result = qword_27CB28920;
  if (!qword_27CB28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28920);
  }

  return result;
}

unint64_t sub_2174DBFBC()
{
  result = qword_27CB28928;
  if (!qword_27CB28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28928);
  }

  return result;
}

unint64_t sub_2174DC014()
{
  result = qword_27CB28930;
  if (!qword_27CB28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28930);
  }

  return result;
}

unint64_t sub_2174DC06C()
{
  result = qword_27CB28938;
  if (!qword_27CB28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28938);
  }

  return result;
}

void *OUTLINED_FUNCTION_18_29(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

void *OUTLINED_FUNCTION_22_27(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x1D0uLL);
}

void LegacySectionedCollectionBackedPropertyProvider.__allocating_init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_5_48();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  OUTLINED_FUNCTION_13();
}

void LegacySectionedCollectionBackedPropertyProvider.__allocating_init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_5_48();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
  OUTLINED_FUNCTION_13();
}

void LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v66 = v2;
  v63 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v63 - v20;
  memcpy(v100, v15, 0x161uLL);
  v22 = sub_217751968();
  OUTLINED_FUNCTION_43(v22);
  (*(v23 + 32))(v21, v13);
  v24 = *(v17 + 56);
  v64 = v21;
  v25 = &v21[v24];
  *v25 = v11;
  *(v25 + 1) = v9;
  v65 = *v5;
  v26 = *(v5 + 2);
  v27 = *(v5 + 3);
  v28 = *v63;
  *(v1 + 369) = 0;
  v29 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  type metadata accessor for UnfairLock();
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v1 + v29) = v30;
  v32 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  sub_21736C814(v7, v97);
  v33 = v98;
  if (v98)
  {
    v34 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    MusicItem.identifierSet.getter(v33, v34, v96);
    __swift_destroy_boxed_opaque_existential_1(v97);
    memcpy(v68, v100, sizeof(v68));
    memcpy(v67, v96, sizeof(v67));
    MusicIdentifierSet.union(_:)();
    sub_217269F50(v96);
    sub_217269F50(v100);
    v35 = v69;
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v73;
    v40 = v74;
    v41 = v75;
    v42 = v76;
    v43 = v77;
    v44 = v78;
    v45 = v79;
    v46 = v80;
    v47 = v81;
    v48 = v82;
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v52 = v86;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    v56 = v90;
    v57 = v91;
    v58 = v92;
    v59 = v93;
    v60 = v94;
    v61 = v95;
  }

  else
  {
    sub_2171F0738(v97, &qword_27CB27590, &qword_21776ADF0);
    OUTLINED_FUNCTION_2_66();
    v38 = v100[4];
    v35 = v100[0];
    v36 = v100[1];
  }

  *(v1 + 16) = v35;
  *(v1 + 24) = v36;
  *(v1 + 32) = v37;
  *(v1 + 48) = v38;
  *(v1 + 56) = v39;
  *(v1 + 72) = v40;
  *(v1 + 88) = v41;
  *(v1 + 104) = v42;
  *(v1 + 120) = v43;
  *(v1 + 136) = v44;
  *(v1 + 152) = v45;
  *(v1 + 168) = v46;
  *(v1 + 184) = v47;
  *(v1 + 200) = v48;
  *(v1 + 216) = v49;
  *(v1 + 232) = v50;
  *(v1 + 248) = v51;
  *(v1 + 264) = v52;
  *(v1 + 280) = v53;
  *(v1 + 288) = v54;
  *(v1 + 296) = v55;
  *(v1 + 304) = v56;
  *(v1 + 320) = v57;
  *(v1 + 328) = v58;
  *(v1 + 336) = v59;
  *(v1 + 352) = v60;
  *(v1 + 368) = v61;
  sub_2174DE758(v64, v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_34();
  sub_2174DE7E8(v7, v32);
  swift_endAccess();
  v62 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue;
  *v62 = v65;
  *(v62 + 16) = v26;
  *(v62 + 24) = v27;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) = v28;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships) = v66;
  OUTLINED_FUNCTION_13();
}

__n128 LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v61 = v12;
  v62 = v13;
  memcpy(__dst, v14, 0x161uLL);
  v63 = *v7;
  v15 = *(v7 + 2);
  v16 = *(v7 + 3);
  v17 = *v5;
  *(v1 + 369) = 0;
  v18 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *v20 = 0;
  *(v1 + v18) = v19;
  v21 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  sub_21736C814(v9, v94);
  v22 = v95;
  if (v95)
  {
    v23 = v9;
    v24 = v11;
    v25 = v16;
    v26 = v15;
    v27 = v17;
    v28 = v3;
    v29 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v30 = v29;
    v3 = v28;
    v17 = v27;
    v15 = v26;
    v16 = v25;
    v11 = v24;
    v9 = v23;
    MusicItem.identifierSet.getter(v22, v30, __src);
    __swift_destroy_boxed_opaque_existential_1(v94);
    memcpy(v65, __dst, sizeof(v65));
    memcpy(v64, __src, sizeof(v64));
    MusicIdentifierSet.union(_:)();
    sub_217269F50(__src);
    sub_217269F50(__dst);
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v38 = v73;
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v43 = v78;
    v44 = v79;
    v45 = v80;
    v46 = v81;
    v47 = v82;
    v48 = v83;
    v49 = v84;
    v50 = v85;
    v51 = v86;
    v52 = v87;
    v53 = v88;
    v54 = v89;
    v55 = v90;
    v56 = v91;
    v57 = v92;
  }

  else
  {
    sub_2171F0738(v94, &qword_27CB27590, &qword_21776ADF0);
    OUTLINED_FUNCTION_2_66();
    v34 = __dst[4];
    v31 = __dst[0];
    v32 = __dst[1];
  }

  *(v1 + 16) = v31;
  *(v1 + 24) = v32;
  *(v1 + 32) = v33;
  *(v1 + 48) = v34;
  *(v1 + 56) = v35;
  *(v1 + 72) = v36;
  *(v1 + 88) = v37;
  *(v1 + 104) = v38;
  *(v1 + 120) = v39;
  *(v1 + 136) = v40;
  *(v1 + 152) = v41;
  *(v1 + 168) = v42;
  *(v1 + 184) = v43;
  *(v1 + 200) = v44;
  *(v1 + 216) = v45;
  *(v1 + 232) = v46;
  *(v1 + 248) = v47;
  *(v1 + 264) = v48;
  *(v1 + 280) = v49;
  *(v1 + 288) = v50;
  *(v1 + 296) = v51;
  *(v1 + 304) = v52;
  *(v1 + 320) = v53;
  *(v1 + 328) = v54;
  *(v1 + 336) = v55;
  *(v1 + 352) = v56;
  *(v1 + 368) = v57;
  v58 = (v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);
  *v58 = v61;
  v58[1] = v62;
  v58[2] = v11;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_34();
  sub_2174DE7E8(v9, v21);
  swift_endAccess();
  v59 = v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue;
  *v59 = v63;
  *(v59 + 16) = v15;
  *(v59 + 24) = v16;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) = v17;
  *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships) = v3;
  OUTLINED_FUNCTION_13();
  return result;
}

uint64_t sub_2174DC88C()
{
  v1 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  sub_2174DC914();
  os_unfair_lock_unlock(*(v2 + 16));
}

void sub_2174DC914()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217751968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v64 - v19;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v21 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  OUTLINED_FUNCTION_138();
  sub_2174DEF5C(v1 + v21, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v56 = *(v20 + 1);
      *v3 = *v20;
      *(v3 + 16) = v56;
      *(v3 + 32) = *(v20 + 4);
      goto LABEL_15;
    }

    v23 = v16;
    v75 = v3;
    v24 = *v20;
    v25 = *(v20 + 1);
    v71 = *(v20 + 2);
    v25(v87, v24);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v26 = sub_217753048();
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_14_30(v86);
    OUTLINED_FUNCTION_10_35();
    sub_217269EF4(v86, v87);
    v70 = v26;
    static LegacyModel.sanitizeLegacyModelObject(for:identifierSet:)();
    memcpy(v87, v85, 0x161uLL);
    sub_217269F50(v87);
    v27 = *&v81[0];
    v28 = BYTE8(v81[0]);
    v29 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_4_62();
    v69 = v29;
    sub_2174FE570();
    swift_endAccess();
    if (v28 == 1)
    {
      v81[0] = xmmword_21776F6F0;
      OUTLINED_FUNCTION_4_62();
      MusicItemDataSourceCollection.append(_:)(v81);
      swift_endAccess();
    }

    v72 = v21;
    v73 = v10;
    v74 = v23;
    v68 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue);
    v30 = dynamic_cast_existential_1_conditional(v68);
    if (v30)
    {
      v32 = v30;
      v33 = v31;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_14_30(v81);
      v34 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
      OUTLINED_FUNCTION_138();
      sub_21736C814(v1 + v34, &v78);
      v35 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships);
      v37 = v33 + 16;
      v36 = *(v33 + 16);
      v83 = v32;
      v84 = v33;
      __swift_allocate_boxed_opaque_existential_0(v82);
      sub_217269EF4(v85, v76);
      swift_unknownObjectRetain();
      sub_217751DE8();
      (v36)(v81, v27, &v78, v35, v32, v33);
      sub_2171FF30C(v82, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
      if (OUTLINED_FUNCTION_16_35())
      {
        v38 = OUTLINED_FUNCTION_9_36();
        v39(v38);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_13:
        v77 = 0;
        memset(v76, 0, sizeof(v76));
        OUTLINED_FUNCTION_15_34();
        sub_2174DE7E8(v76, v1 + v34);
        swift_endAccess();
        v54 = v74;
        sub_21729C5E8(v37, v74);
        swift_storeEnumTagMultiPayload();
        v55 = v72;
        OUTLINED_FUNCTION_15_34();
        sub_2174DEFC0(v54, v1 + v55);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(v81);
        __swift_destroy_boxed_opaque_existential_1(v82);
LABEL_15:
        OUTLINED_FUNCTION_13();
        return;
      }

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_2171F0738(&v78, &qword_27CB24B68, &qword_217759430);
      OUTLINED_FUNCTION_25_32();
      sub_217752AA8();
      OUTLINED_FUNCTION_20_28();
      OUTLINED_FUNCTION_22_28();
      MEMORY[0x21CEA23B0](0xD000000000000011);
      v59 = sub_217753348();
      MEMORY[0x21CEA23B0](v59);

      MEMORY[0x21CEA23B0](v36 | 0x6C, 0x80000002177AEF10);
      OUTLINED_FUNCTION_169_0();
      v58 = 120;
    }

    else
    {
      OUTLINED_FUNCTION_24_27();
      sub_217752AA8();
      OUTLINED_FUNCTION_23_30();
      OUTLINED_FUNCTION_22_28();
      MEMORY[0x21CEA23B0](0xD000000000000011);
      v57 = sub_217753348();
      MEMORY[0x21CEA23B0](v57);

      MEMORY[0x21CEA23B0](v28 + 109, 0x80000002177AEE90);
      OUTLINED_FUNCTION_169_0();
      v58 = 116;
    }
  }

  else
  {
    v74 = v16;
    v75 = v3;
    v72 = v21;
    v40 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700) + 48)];
    v42 = *v40;
    v41 = *(v40 + 1);
    (*(v5 + 32))(v9, v20, v4);
    v67 = v9;
    v69 = v41;
    v42(v87, v9);
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v43 = sub_217753048();
    __swift_destroy_boxed_opaque_existential_1(v87);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_14_30(v86);
    OUTLINED_FUNCTION_10_35();
    sub_217269EF4(v86, v87);
    v68 = v43;
    static LegacyModel.sanitizeLegacyModelObject(for:identifierSet:)();
    memcpy(v87, v85, 0x161uLL);
    sub_217269F50(v87);
    v44 = *&v81[0];
    LODWORD(v42) = BYTE8(v81[0]);
    v45 = [objc_opt_self() identifierSetFromLegacyModelObject_];
    OUTLINED_FUNCTION_4_62();
    v66 = v45;
    sub_2174FE570();
    swift_endAccess();
    if (v42 == 1)
    {
      v81[0] = xmmword_21776F6F0;
      OUTLINED_FUNCTION_4_62();
      MusicItemDataSourceCollection.append(_:)(v81);
      swift_endAccess();
    }

    v46 = v44;
    v70 = v5;
    v71 = v4;
    v73 = v10;
    v65 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue);
    v47 = dynamic_cast_existential_1_conditional(v65);
    if (v47)
    {
      v49 = v47;
      v37 = v48;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_14_30(v81);
      v34 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem;
      OUTLINED_FUNCTION_138();
      sub_21736C814(v1 + v34, &v78);
      v50 = *(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships);
      v51 = *(v37 + 16);
      v83 = v49;
      v84 = v37;
      __swift_allocate_boxed_opaque_existential_0(v82);
      sub_217269EF4(v85, v76);
      swift_unknownObjectRetain();
      sub_217751DE8();
      v51(v81, v46, &v78, v50, v49, v37);
      sub_2171FF30C(v82, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
      if (OUTLINED_FUNCTION_16_35())
      {
        v52 = OUTLINED_FUNCTION_9_36();
        v53(v52);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        (*(v70 + 8))(v67, v71);
        goto LABEL_13;
      }

      v80 = 0;
      v78 = 0u;
      v79 = 0u;
      sub_2171F0738(&v78, &qword_27CB24B68, &qword_217759430);
      OUTLINED_FUNCTION_25_32();
      sub_217752AA8();
      OUTLINED_FUNCTION_20_28();
      v62 = OUTLINED_FUNCTION_8();
      MEMORY[0x21CEA23B0](v62);
      v63 = sub_217753348();
      MEMORY[0x21CEA23B0](v63);

      MEMORY[0x21CEA23B0](0xD00000000000007DLL, 0x80000002177AEF10);
      OUTLINED_FUNCTION_169_0();
      v58 = 99;
    }

    else
    {
      OUTLINED_FUNCTION_24_27();
      sub_217752AA8();
      OUTLINED_FUNCTION_23_30();
      v60 = OUTLINED_FUNCTION_8();
      MEMORY[0x21CEA23B0](v60);
      v61 = sub_217753348();
      MEMORY[0x21CEA23B0](v61);

      MEMORY[0x21CEA23B0](0xD00000000000007ELL, 0x80000002177AEE90);
      OUTLINED_FUNCTION_169_0();
      v58 = 95;
    }
  }

  v64 = v58;
  sub_217752D08();
  __break(1u);
}

BOOL sub_2174DD25C()
{
  v1 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  v2 = OUTLINED_FUNCTION_43(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v8 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  OUTLINED_FUNCTION_138();
  sub_2174DEF5C(v0 + v8, v7);
  v9 = swift_getEnumCaseMultiPayload() > 1;
  sub_2174DE858(v7);
  return v9;
}

uint64_t static LegacySectionedCollectionBackedPropertyProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v21 = v2;
  v22 = v3;
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_26_27(v17);
  OUTLINED_FUNCTION_26_27(v16);
  OUTLINED_FUNCTION_138();
  memcpy(__dst, (a2 + 16), 0x161uLL);
  memcpy(__src, (a2 + 16), sizeof(__src));
  sub_217269EF4(v17, v14);
  sub_217269EF4(__dst, v14);
  static MusicIdentifierSet.== infix(_:_:)();
  v7 = v6;
  v8 = v6 & 1;
  memcpy(v19, __src, 0x161uLL);
  sub_217269F50(v19);
  memcpy(v20, v16, 0x161uLL);
  sub_217269F50(v20);
  v16[0] = v8;
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = *(a2 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  sub_2174DD4D8(a1, a2, v16);
  os_unfair_lock_unlock(*(v11 + 16));

  os_unfair_lock_unlock(*(v9 + 16));

  return v16[0];
}

uint64_t sub_2174DD4D8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28968, &unk_21776F910);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v44 - v18;
  v20 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  swift_beginAccess();
  sub_2174DEF5C(a1 + v20, v19);
  v21 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state;
  swift_beginAccess();
  v22 = &v10[*(v6 + 56)];
  sub_2174DF024(v19, v10);
  sub_2174DEF5C(a2 + v21, v22);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_2174DEF5C(v10, v15);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v23 = *(v15 + 1);
      v48 = *v15;
      v49 = v23;
      v50 = *(v15 + 4);
      v24 = v50;
      v25 = *(v22 + 16);
      v46[0] = *v22;
      v46[1] = v25;
      v47 = *(v22 + 32);
      v26 = *(&v23 + 1);
      __swift_project_boxed_opaque_existential_1(&v48, *(&v23 + 1));
      v27 = *(v24 + 104);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v29 = v27(v46, v28, v26, v24);
      sub_21729C644(v46);
      sub_21729C644(&v48);
      *v45 = v29 & 1;
      return sub_2174DE858(v10);
    }

    sub_21729C644(v15);
  }

  v31 = dynamic_cast_existential_1_conditional(*(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue));
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    v35 = dynamic_cast_existential_1_conditional(*(a2 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue));
    if (v35)
    {
      v37 = v35;
      v38 = v36;
      if ((*(v34 + 16))(v33, v34) & 1) != 0 && ((*(v38 + 16))(v37, v38))
      {
        sub_2174DC914();
        sub_2174DC914();
        v39 = *(&v49 + 1);
        v40 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
        v41 = *(v40 + 104);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v43 = v41(v46, v42, v39, v40);
        sub_21729C644(v46);
        sub_21729C644(&v48);
        *v45 = v43 & 1;
      }
    }
  }

  return sub_2171F0738(v10, &qword_27CB28968, &unk_21776F910);
}

uint64_t sub_2174DD84C(void *a1)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_26_27(v7);
  MusicIdentifierSet.hash(into:)(a1);
  result = dynamic_cast_existential_1_conditional(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue));
  if (result)
  {
    result = (*(v4 + 16))();
    if (result)
    {
      sub_2174DC88C();
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 112))(a1, v5, v6);
      return sub_21729C644(v7);
    }
  }

  return result;
}

uint64_t sub_2174DD92C(uint64_t *a1, uint64_t a2)
{
  sub_2174DC88C();
  AnyPropertyProvider.subscript.getter(a1, a2);
  return sub_21729C644(v5);
}

uint64_t sub_2174DD988()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v13[3];
  OUTLINED_FUNCTION_15_1(v13);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_44_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_22(v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

void *sub_2174DDA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_2174DDAB4(__src);
  return memcpy(a2, __src, 0x161uLL);
}

uint64_t sub_2174DDA58(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x161uLL);
  v4 = *a2;
  sub_217269EF4(__dst, &v6);
  return sub_2174DDCFC(__src);
}

uint64_t sub_2174DDAB4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  sub_2174DDB4C(v1, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_2174DDB4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 369))
  {
    goto LABEL_2;
  }

  if (*(a1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_source) <= 1u)
  {
    if (sub_2174DD25C())
    {
      goto LABEL_8;
    }

LABEL_2:
    swift_beginAccess();
    memcpy(__dst, (a1 + 16), 0x161uLL);
    memcpy(a2, (a1 + 16), 0x161uLL);
    return sub_217269EF4(__dst, v9);
  }

  swift_beginAccess();
  *v9 = *(a1 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28960, &qword_21776F900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC90, &qword_21776F908);
  if (!swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_destroy_boxed_opaque_existential_1(__dst);
LABEL_8:
  sub_2174DC914();
  v5 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(v6 + 96))(v9, v5, v6);
  sub_21729C644(__dst);
  v8 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(*(v7 + 8) + 24))(v8);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2174DDCFC(void *__src)
{
  memcpy(__dst, __src, 0x161uLL);
  v2 = OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock;
  os_unfair_lock_assert_not_owner(*(*(v1 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock) + 16));
  v3 = *(v1 + v2);
  v4 = *(v3 + 16);

  sub_217269EF4(__dst, v6);

  os_unfair_lock_lock(v4);
  sub_2174DDDB0(v1, __dst);
  os_unfair_lock_unlock(*(v3 + 16));

  sub_217269F50(__dst);
  sub_217269F50(__dst);
}

uint64_t sub_2174DDDB0(uint64_t a1, const void *a2)
{
  swift_beginAccess();
  memcpy(__dst, (a1 + 16), 0x161uLL);
  memcpy((a1 + 16), a2, 0x161uLL);
  sub_217269EF4(a2, v5);
  result = sub_217269F50(__dst);
  *(a1 + 369) = 1;
  return result;
}

void (*sub_2174DDE44(void *a1))(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v3 = __swift_coroFrameAllocStub(0x5A8uLL);
  *a1 = v3;
  v3[180] = v1;
  sub_2174DDAB4(v3);
  return sub_2174DDEA8;
}

void sub_2174DDEA8(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = *a1;
  v9 = *(*a1 + 1440);
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_13_32((v8 + 720));
    OUTLINED_FUNCTION_11_39(v10, v11, v12, v13, v14, v15, v16, v17, v18, __src[0]);
    sub_217269EF4(v8 + 720, v8 + 1080);
    sub_2174DDCFC(__src);
    OUTLINED_FUNCTION_13_32((v8 + 360));
    sub_217269F50(v8 + 360);
  }

  else
  {
    OUTLINED_FUNCTION_11_39(a1, a2, a3, a4, a5, a6, a7, a8, v18, __src[0]);
    sub_2174DDCFC(__src);
  }

  free(v8);
}

uint64_t sub_2174DDF38()
{
  sub_2174DC88C();
  v0 = v9;
  v1 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v1 + 96))(v5, v0, v1);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(*(v2 + 8) + 48))(v3);
  sub_21729C644(v8);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2174DDFE8()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  OUTLINED_FUNCTION_15_1(v8);
  v3 = *(v2 + 56);
  v4 = OUTLINED_FUNCTION_44_1();
  v6 = v5(v4);
  sub_21729C644(v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_2174DE07C()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v13[3];
  OUTLINED_FUNCTION_15_1(v13);
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_44_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_22(v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_2174DE100()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v13[3];
  OUTLINED_FUNCTION_15_1(v13);
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_44_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_22(v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_2174DE184()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v13[3];
  OUTLINED_FUNCTION_15_1(v13);
  v4 = *(v3 + 80);
  v5 = OUTLINED_FUNCTION_44_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_22(v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_2174DE208()
{
  sub_2174DC88C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v0 = OUTLINED_FUNCTION_0_61();
  v1(v0);
  v2 = v13[3];
  OUTLINED_FUNCTION_15_1(v13);
  v4 = *(v3 + 88);
  v5 = OUTLINED_FUNCTION_44_1();
  v7 = v6(v5);
  OUTLINED_FUNCTION_19_22(v7, v8, v9, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v2;
}

uint64_t sub_2174DE28C()
{
  sub_2174DC88C();
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 96))(v0, v1);
  return sub_21729C644(v3);
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.deinit()
{
  OUTLINED_FUNCTION_26_27(v5);
  sub_217269F50(v5);
  sub_2174DE858(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_state);
  v1 = *(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_lock);

  sub_2171F0738(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_existingItem, &qword_27CB27590, &qword_21776ADF0);
  v2 = *(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_typeValue + 24);

  v3 = *(v0 + OBJC_IVAR____TtC8MusicKit47LegacySectionedCollectionBackedPropertyProvider_requestedRelationships);

  return v0;
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.__deallocating_deinit()
{
  LegacySectionedCollectionBackedPropertyProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2174DE3F4()
{
  sub_2177531E8();
  sub_2174DD84C(v1);
  return sub_217753238();
}

uint64_t sub_2174DE4A0()
{
  sub_2177531E8();
  v1 = *v0;
  sub_2174DD84C(v3);
  return sub_217753238();
}

void (*sub_2174DE574(void *a1))(uint64_t *a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v3 = __swift_coroFrameAllocStub(0x5A8uLL);
  *a1 = v3;
  v3[180] = *v1;
  sub_2174DDAB4(v3);
  return sub_2174DDEA8;
}

uint64_t LegacySectionedCollectionBackedPropertyProvider.Source.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_2174DE758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28940, &unk_21776F700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DE7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DE858(uint64_t a1)
{
  v2 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2174DE8B8()
{
  result = qword_27CB28948;
  if (!qword_27CB28948)
  {
    type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28948);
  }

  return result;
}

unint64_t sub_2174DE934()
{
  result = qword_27CB28950;
  if (!qword_27CB28950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28950);
  }

  return result;
}

uint64_t sub_2174DE990()
{
  result = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacySectionedCollectionBackedPropertyProvider.Source(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_2174DEDF0()
{
  sub_2174DEE6C();
  if (v0 <= 0x3F)
  {
    sub_2174DEEE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2174DEE6C()
{
  if (!qword_280BE8360)
  {
    sub_217751968();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28958, &unk_21776F8F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280BE8360);
    }
  }
}

void sub_2174DEEE8()
{
  if (!qword_280BE7520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28958, &unk_21776F8F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280BE7520);
    }
  }
}

uint64_t sub_2174DEF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DEFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174DF024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider.LoadingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_11_39(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, v10, 0x161uLL);
}

void *OUTLINED_FUNCTION_14_30(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_15_34()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_35()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_20_28()
{
  v1 = *(v0 + 536);
  *(v0 + 528) = *(v0 + 528);
  *(v0 + 536) = v1;
}

void *OUTLINED_FUNCTION_26_27(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x161uLL);
}

void PlaylistEntryPropertyProvider.init(item:position:identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:extendedStorage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_12();
  v52 = v24;
  v53 = v25;
  v51 = v26;
  v28 = v27;
  v56 = v29;
  v54 = v30;
  v55 = v31;
  v33 = v32;
  memcpy(__dst, v34, sizeof(__dst));
  v49 = v28[1];
  v50 = *v28;
  v35 = *(v28 + 16);
  sub_2172A497C(__src);
  memcpy(v33, __src, 0x221uLL);
  *(v33 + 552) = 0;
  *(v33 + 560) = 1;
  v36 = type metadata accessor for PlaylistEntryPropertyProvider();
  *(v33 + 568) = 0u;
  *(v33 + 584) = 0u;
  v37 = v36[8];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(v33 + v37);
  OUTLINED_FUNCTION_15_10(v33 + v36[9]);
  v38 = v33 + v36[10];
  *(v38 + 48) = 0;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *v38 = 0u;
  *(v38 + 56) = -1;
  v39 = v33 + v36[11];
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  v40 = v33 + v36[12];
  *(v40 + 112) = 0;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *v40 = 0u;
  v41 = (v33 + v36[14]);
  *v41 = 0;
  v41[1] = 0;
  OUTLINED_FUNCTION_15_10(v33 + v36[15]);
  v42 = (v33 + v36[16]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v33 + v36[17];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  if (qword_280BE3168 != -1)
  {
    swift_once();
  }

  v44 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v48 = sub_217752D28();

    v44 = v48;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v45 = v33 + v36[13];
  *(v33 + v36[18]) = v44;
  v46 = (v33 + v36[21]);
  memcpy((v33 + v36[19]), __dst, 0x161uLL);
  v47 = v33 + v36[20];
  *v47 = v50;
  *(v47 + 8) = v49;
  *(v47 + 16) = v35;
  *v46 = v51;
  v46[1] = v52;
  *(v33 + v36[22]) = v53;
  *(v33 + v36[23]) = a21;
  *(v33 + v36[24]) = a22;
  *(v33 + v36[25]) = a23;
  sub_21733BBDC(v54, v38, &qword_27CB27D20, &qword_217758B80);
  *v45 = v55;
  *(v45 + 8) = v56 & 1;
  sub_21733BBDC(a24, v43, &qword_27CB24BA8, &unk_217772FF0);
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for PlaylistEntryPropertyProvider()
{
  result = qword_280BE3158;
  if (!qword_280BE3158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaylistEntryPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *PlaylistEntryPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t PlaylistEntryPropertyProvider.duration.getter()
{
  result = *(v0 + 552);
  v2 = *(v0 + 560);
  return result;
}

uint64_t PlaylistEntryPropertyProvider.duration.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t PlaylistEntryPropertyProvider.itemType.getter()
{
  v0 = OUTLINED_FUNCTION_45_20();
  OUTLINED_FUNCTION_160_0(*(v0 + 44));

  return sub_217751DE8();
}

uint64_t PlaylistEntryPropertyProvider.itemType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PlaylistEntryPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 44));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t PlaylistEntryPropertyProvider.title.getter()
{
  v1 = (v0 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 64));
  v2 = *v1;
  v3 = v1[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t PlaylistEntryPropertyProvider.title.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = type metadata accessor for PlaylistEntryPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v3 + 64));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void PlaylistEntryPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_47_17();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28970, &qword_21776F930);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AEFC0);
    v81[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_55_12();
    v77 = 62;
    goto LABEL_97;
  }

  v21 = v20;
  v22 = qword_280BE66C8;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_9_37();
  }

  if (static AnyMusicProperty.== infix(_:_:)(qword_280C02048, v21))
  {
    memcpy(v81, v2, 0x221uLL);
    memcpy(v82, v2, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v82) != 1)
    {
      v19 = swift_allocObject();
      memcpy(v80, v81, 0x221uLL);
      sub_217284028(v80, &v79);

      memcpy((v19 + 16), v82, 0x221uLL);
      v23 = &type metadata for Artwork;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v24 = qword_280BE66C0;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_8_41();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02040, v21);
  OUTLINED_FUNCTION_61_11();
  if (v24)
  {
    if (*(v2 + 560))
    {
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v26 = *(v2 + 552);
      v25 = MEMORY[0x277D839F8];
    }

    *v6 = v26;
LABEL_23:
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v25;
    goto LABEL_51;
  }

  v27 = qword_280BE66F8;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_6_45();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02060, v21);
  OUTLINED_FUNCTION_61_11();
  if (v27)
  {
    v28 = *(v2 + 576);
    if (v28)
    {
      v29 = *(v2 + 568);
LABEL_29:
      sub_217751DE8();
      v31 = &type metadata for MusicItemID;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v30 = qword_280BE6720;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_21_28();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02070, v21);
  OUTLINED_FUNCTION_61_11();
  if (v30)
  {
    v28 = *(v2 + 592);
    if (v28)
    {
      v29 = *(v2 + 584);
      goto LABEL_29;
    }

LABEL_30:
    v31 = 0;
    v29 = 0;
    goto LABEL_31;
  }

  v32 = qword_280BE6738;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_20_29();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02080, v21);
  OUTLINED_FUNCTION_61_11();
  if (v32)
  {
    v33 = type metadata accessor for PlaylistEntryPropertyProvider();
    sub_21726A630(v2 + *(v33 + 32), v18, &qword_27CB241C0, &qword_217759480);
    v34 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v18);
    if (!v35)
    {
LABEL_80:
      *(&v82[1] + 1) = v34;
      __swift_allocate_boxed_opaque_existential_0(v82);
      OUTLINED_FUNCTION_58();
      (*(v72 + 32))();

      goto LABEL_50;
    }

    v36 = v18;
LABEL_44:
    sub_2171F0738(v36, &qword_27CB241C0, &qword_217759480);
    memset(v82, 0, 32);
LABEL_50:
    v45 = v82[1];
    *v6 = v82[0];
    *(v6 + 1) = v45;
    goto LABEL_51;
  }

  v37 = qword_280BE6700;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_19_23();
  }

  v38 = static AnyMusicProperty.== infix(_:_:)(qword_280C02068, v21);

  if (v38)
  {
    v39 = type metadata accessor for PlaylistEntryPropertyProvider();
    sub_21726A630(v2 + *(v39 + 36), v1, &qword_27CB241C0, &qword_217759480);
    v34 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v1);
    if (!v35)
    {
      goto LABEL_80;
    }

    v36 = v1;
    goto LABEL_44;
  }

  v40 = qword_280BE66D8;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_2_67();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280BE66E0, v21);
  OUTLINED_FUNCTION_43_13();
  if (v40)
  {
    v41 = type metadata accessor for PlaylistEntryPropertyProvider();
    sub_21726A630(v2 + *(v41 + 40), v82, &qword_27CB27D20, &qword_217758B80);
    if (BYTE8(v82[3]) != 255)
    {
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_49_19(v42);
      *(v44 + 48) = *(v43 + 32);
      *(v44 + 57) = *(v43 + 41);

      v23 = &type metadata for Playlist.Entry.Item;
      goto LABEL_14;
    }

    sub_2171F0738(v82, &qword_27CB27D20, &qword_217758B80);
    goto LABEL_7;
  }

  v46 = qword_280BE66B8;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_17_27();
  }

  static AnyMusicProperty.== infix(_:_:)(qword_280C02038, v21);
  OUTLINED_FUNCTION_43_13();
  if ((v46 & 1) == 0)
  {
    v54 = qword_280BE6730;

    if (v54 != -1)
    {
      OUTLINED_FUNCTION_16_36();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02078, v21);
    OUTLINED_FUNCTION_43_13();
    if (v54)
    {
      v55 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 48));
      v57 = *v55;
      v56 = v55[1];
      memcpy(v80, v55 + 2, 0x68uLL);
      if (v56)
      {
        v19 = swift_allocObject();
        *&v82[0] = v57;
        *(&v82[0] + 1) = v56;
        memcpy(&v82[1], v55 + 2, 0x68uLL);
        sub_2172DF5A4(v82, v81);

        *(v19 + 16) = v57;
        *(v19 + 24) = v56;
        memcpy((v19 + 32), v80, 0x68uLL);
        v23 = &type metadata for PlayParameters;
        goto LABEL_14;
      }

LABEL_6:

LABEL_7:
      v23 = 0;
      v19 = 0;
LABEL_14:
      *v6 = v19;
      v6[1] = 0;
LABEL_15:
      v6[2] = 0;
      v6[3] = v23;
      goto LABEL_51;
    }

    v58 = qword_280BE66A8;

    if (v58 != -1)
    {
      OUTLINED_FUNCTION_15_35();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02030, v21);
    OUTLINED_FUNCTION_43_13();
    if (v58)
    {
      v59 = 0;
      v25 = 0;
      v60 = v2 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 52);
      if ((*(v60 + 8) & 1) == 0)
      {
        v59 = *v60;
        v25 = MEMORY[0x277D83B88];
      }

      *v6 = v59;
      goto LABEL_23;
    }

    v61 = qword_280BE66F0;

    if (v61 != -1)
    {
      OUTLINED_FUNCTION_14_31();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02058, v21);
    OUTLINED_FUNCTION_43_13();
    if (v61)
    {
      v62 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 56));
      v63 = *(v62 + 1);
      if (v63)
      {
        v64 = *v62;
        v65 = *(v62 + 1);
        swift_unknownObjectRetain();

        v23 = &type metadata for LegacyModelObjectWrapper;
      }

      else
      {

        v23 = 0;
        v64 = 0;
      }

      *v6 = v64;
      v6[1] = v63;
      goto LABEL_15;
    }

    v66 = qword_280BE6748;

    if (v66 != -1)
    {
      OUTLINED_FUNCTION_13_33();
    }

    static AnyMusicProperty.== infix(_:_:)(qword_280C02088, v21);
    OUTLINED_FUNCTION_43_13();
    if ((v66 & 1) == 0)
    {
      v68 = qword_280BE66D0;

      if (v68 != -1)
      {
        OUTLINED_FUNCTION_12_28();
      }

      v69 = static AnyMusicProperty.== infix(_:_:)(qword_280C02050, v21);

      if ((v69 & 1) == 0)
      {
        v73 = qword_280BE6710;

        if (v73 != -1)
        {
          OUTLINED_FUNCTION_1_60();
        }

        v19 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6718, v21);

        if ((v19 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_52_17();
            sub_217752AA8();
            OUTLINED_FUNCTION_49_16();
            MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
            v81[0] = v4;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            MEMORY[0x21CEA23B0](46, 0xE100000000000000);
            OUTLINED_FUNCTION_55_12();
            v77 = 97;
LABEL_97:
            v78 = v77;
            OUTLINED_FUNCTION_7_24();
            __break(1u);
          }
        }

        v74 = type metadata accessor for PlaylistEntryPropertyProvider();
        sub_21726A630(v2 + *(v74 + 68), v82, &qword_27CB24BA8, &unk_217772FF0);
        if (*(&v82[1] + 1))
        {
          v75 = swift_allocObject();
          OUTLINED_FUNCTION_49_19(v75);
          *(v76 + 48) = *&v82[2];

          v23 = &type metadata for AnyPropertyProviderExtendedStorage;
        }

        else
        {

          sub_2171F0738(v82, &qword_27CB24BA8, &unk_217772FF0);
          v19 = 0;
          v23 = 0;
        }

        goto LABEL_14;
      }

      v70 = (v2 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 64));
      v28 = v70[1];
      if (v28)
      {
        v29 = *v70;
        v71 = v70[1];
        sub_217751DE8();
        v31 = MEMORY[0x277D837D0];
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

LABEL_31:

      *v6 = v29;
      v6[1] = v28;
      v6[2] = 0;
      v6[3] = v31;
      goto LABEL_51;
    }

    v67 = type metadata accessor for PlaylistEntryPropertyProvider();
    sub_21726A630(v2 + *(v67 + 60), v12, &qword_27CB241C0, &qword_217759480);
    v34 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v12);
    if (!v35)
    {
      goto LABEL_80;
    }

    v36 = v12;
    goto LABEL_44;
  }

  v47 = v2 + *(type metadata accessor for PlaylistEntryPropertyProvider() + 44);
  v48 = *(v47 + 8);
  if (v48)
  {
    v49 = *(v47 + 16);
    v50 = *v47;
    v51 = *(v47 + 8);
    sub_217751DE8();

    v52 = v49 & 1;
    v53 = &type metadata for ResourceType;
  }

  else
  {

    v52 = 0;
    v53 = 0;
    v50 = 0;
  }

  *v6 = v50;
  v6[1] = v48;
  v6[2] = v52;
  v6[3] = v53;
LABEL_51:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174E0438(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, &v5, &qword_27CB2AD40, &qword_2177583F0);

  return PlaylistEntryPropertyProvider.subscript.setter();
}

uint64_t PlaylistEntryPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28970, &qword_21776F930);
  OUTLINED_FUNCTION_93();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_280BE66D8;
    swift_retain_n();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_2_67();
    }

    v4 = static AnyMusicProperty.== infix(_:_:)(qword_280BE66E0, v2);

    if (v4)
    {
      swift_getKeyPath();
      sub_217349FE4();
LABEL_10:

      return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
    }

    v5 = qword_280BE6710;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_1_60();
    }

    v6 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6718, v2);

    if (v6)
    {
      swift_getKeyPath();
      sub_21734A07C();
      goto LABEL_10;
    }

    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AEFC0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_17_1();
  }

  result = OUTLINED_FUNCTION_7_24();
  __break(1u);
  return result;
}

void (*PlaylistEntryPropertyProvider.subscript.modify())(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  PlaylistEntryPropertyProvider.subscript.getter();
  return sub_2174E076C;
}

void sub_2174E076C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    PlaylistEntryPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    PlaylistEntryPropertyProvider.subscript.setter();
  }

  free(v2);
}