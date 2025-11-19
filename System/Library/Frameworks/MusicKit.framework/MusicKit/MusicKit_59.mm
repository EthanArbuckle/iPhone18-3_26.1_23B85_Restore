uint64_t CatalogAsset.EndpointType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

void CatalogAsset.EndpointType.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v88 = v0;
  v2 = v1;
  v84 = v3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6E0, &qword_2177933D8);
  OUTLINED_FUNCTION_0_0(v87);
  v83 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_150();
  v86 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6E8, &qword_2177933E0);
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v80 = v12;
  v81 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_150();
  v82 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6F0, &qword_2177933E8);
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v78 = v20;
  v79 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v71 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C6F8, &qword_2177933F0);
  OUTLINED_FUNCTION_0_0(v27);
  v77 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v71 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C700, &unk_2177933F8);
  OUTLINED_FUNCTION_0_0(v35);
  v85 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v71 - v41;
  v43 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176A5838();
  v44 = v88;
  sub_2177532C8();
  if (v44)
  {
    goto LABEL_9;
  }

  v74 = v27;
  v75 = v34;
  v76 = v26;
  v45 = v86;
  v46 = v87;
  v88 = v2;
  v47 = v42;
  v48 = sub_217752EB8();
  sub_21733CF68(v48, 0);
  if (v50 == v51 >> 1)
  {
LABEL_8:
    v62 = v85;
    v63 = sub_217752B48();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v65 = &type metadata for CatalogAsset.EndpointType;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v47, v35);
    v2 = v88;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
    OUTLINED_FUNCTION_170();
    return;
  }

  v73 = 0;
  if (v50 < (v51 >> 1))
  {
    v52 = *(v49 + v50);
    sub_21733CF64(v50 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    if (v54 == v56 >> 1)
    {
      v57 = v84;
      v58 = v85;
      v72 = v52;
      v59 = v52;
      v60 = v83;
      switch(v59)
      {
        case 1:
          OUTLINED_FUNCTION_8_82();
          sub_2176A5934();
          v67 = v76;
          OUTLINED_FUNCTION_4_117();
          swift_unknownObjectRelease();
          v69 = v78;
          v68 = v79;
          goto LABEL_18;
        case 2:
          sub_2176A58E0();
          v67 = v82;
          OUTLINED_FUNCTION_4_117();
          swift_unknownObjectRelease();
          v69 = v80;
          v68 = v81;
LABEL_18:
          (*(v69 + 8))(v67, v68);
          goto LABEL_19;
        case 3:
          sub_2176A588C();
          v70 = v73;
          sub_217752DE8();
          if (v70)
          {
            (*(v58 + 8))(v47, v35);
            swift_unknownObjectRelease();
            v2 = v88;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          (*(v60 + 8))(v45, v46);
LABEL_19:
          (*(v58 + 8))(v47, v35);
          *v57 = v72;
          __swift_destroy_boxed_opaque_existential_1(v88);
          break;
        default:
          sub_2176A5988();
          v61 = v75;
          OUTLINED_FUNCTION_4_117();
          swift_unknownObjectRelease();
          (*(v77 + 8))(v61, v74);
          goto LABEL_19;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

unint64_t sub_2176A57E4()
{
  result = qword_27CB2C688;
  if (!qword_27CB2C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C688);
  }

  return result;
}

unint64_t sub_2176A5838()
{
  result = qword_27CB2C6B8;
  if (!qword_27CB2C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6B8);
  }

  return result;
}

unint64_t sub_2176A588C()
{
  result = qword_27CB2C6C0;
  if (!qword_27CB2C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6C0);
  }

  return result;
}

unint64_t sub_2176A58E0()
{
  result = qword_27CB2C6C8;
  if (!qword_27CB2C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6C8);
  }

  return result;
}

unint64_t sub_2176A5934()
{
  result = qword_27CB2C6D0;
  if (!qword_27CB2C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6D0);
  }

  return result;
}

unint64_t sub_2176A5988()
{
  result = qword_27CB2C6D8;
  if (!qword_27CB2C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C6D8);
  }

  return result;
}

unint64_t sub_2176A59F8()
{
  result = qword_27CB2C708;
  if (!qword_27CB2C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C708);
  }

  return result;
}

unint64_t sub_2176A5A50()
{
  result = qword_27CB2C710;
  if (!qword_27CB2C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C718, &qword_2177934C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C710);
  }

  return result;
}

unint64_t sub_2176A5AB8()
{
  result = qword_27CB2C720;
  if (!qword_27CB2C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C720);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CatalogAsset(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 5))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for CatalogAsset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_2176A5BD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CatalogAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176A5DCC()
{
  result = qword_27CB2C728;
  if (!qword_27CB2C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C728);
  }

  return result;
}

unint64_t sub_2176A5E24()
{
  result = qword_27CB2C730;
  if (!qword_27CB2C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C730);
  }

  return result;
}

unint64_t sub_2176A5E7C()
{
  result = qword_27CB2C738;
  if (!qword_27CB2C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C738);
  }

  return result;
}

unint64_t sub_2176A5ED4()
{
  result = qword_27CB2C740;
  if (!qword_27CB2C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C740);
  }

  return result;
}

unint64_t sub_2176A5F2C()
{
  result = qword_27CB2C748;
  if (!qword_27CB2C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C748);
  }

  return result;
}

unint64_t sub_2176A5F84()
{
  result = qword_27CB2C750;
  if (!qword_27CB2C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C750);
  }

  return result;
}

unint64_t sub_2176A5FDC()
{
  result = qword_27CB2C758;
  if (!qword_27CB2C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C758);
  }

  return result;
}

unint64_t sub_2176A6034()
{
  result = qword_27CB2C760;
  if (!qword_27CB2C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C760);
  }

  return result;
}

unint64_t sub_2176A608C()
{
  result = qword_27CB2C768;
  if (!qword_27CB2C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C768);
  }

  return result;
}

unint64_t sub_2176A60E4()
{
  result = qword_27CB2C770;
  if (!qword_27CB2C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C770);
  }

  return result;
}

unint64_t sub_2176A613C()
{
  result = qword_27CB2C778;
  if (!qword_27CB2C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C778);
  }

  return result;
}

unint64_t sub_2176A6194()
{
  result = qword_27CB2C780;
  if (!qword_27CB2C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C780);
  }

  return result;
}

unint64_t sub_2176A61EC()
{
  result = qword_27CB2C788;
  if (!qword_27CB2C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C788);
  }

  return result;
}

unint64_t sub_2176A6244()
{
  result = qword_27CB2C790;
  if (!qword_27CB2C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C790);
  }

  return result;
}

uint64_t Artist.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_204();
  v7(v6);
  v9 = v13[0];
  v8 = v13[1];
  sub_217751DE8();
  sub_217269F50(v13);
  *a2 = v9;
  a2[1] = v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  PropertyProvider.eraseToAnyPropertyProvider()(v10, v11, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.name.getter()
{
  if (qword_280BE6898 != -1)
  {
    OUTLINED_FUNCTION_6_98();
  }

  result = sub_2172A3FF0();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2176A656C(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
  return sub_2172A44CC();
}

uint64_t Artist._biography.getter()
{
  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  return sub_2172A3FF0();
}

void Artist.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6998 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v26 = qword_280C021A0;

  sub_2176CA7A8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2176A6780(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

void Artist._defaultPlayableItems.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  v30 = qword_280C02168;

  sub_2176CB058(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_2176A6BD4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

uint64_t static Artist.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Artist.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v220 - v5;
  v7 = sub_2177516D8();
  *&v224 = *(v7 - 8);
  v8 = *(v224 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  *&v223 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = 0x28747369747241;
  v270 = 0xE700000000000000;
  *&v254 = 0x22203A646920200ALL;
  *(&v254 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v10);
  OUTLINED_FUNCTION_36_10();
  MEMORY[0x21CEA23B0](v254, *(&v254 + 1));

  OUTLINED_FUNCTION_24_0();
  v267 = v12 | 0x656D616E00000000;
  v268 = 0xEB0000000022203ALL;
  if (qword_280BE6898 == -1)
  {
    goto LABEL_2;
  }

LABEL_164:
  OUTLINED_FUNCTION_6_98();
LABEL_2:
  v13 = sub_2172A3FF0();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v13, v15);

  OUTLINED_FUNCTION_36_10();
  MEMORY[0x21CEA23B0](v267, v268);

  if (qword_280BE6998 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA7A8(v16, v17, v18, v19, v20, v21, v22, v23, v220, v221, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234);
  v263[0] = v254;
  v263[1] = v255;
  v263[2] = v256;
  v263[3] = v257;
  v264 = v255;
  v265 = v256;
  v266 = v257;
  v24 = &v243;
  if (*(&v254 + 1) != 1)
  {
    *&v261[0] = 0xD000000000000014;
    *(&v261[0] + 1) = 0x80000002177AB940;
    v255 = v264;
    v256 = v265;
    v257 = v266;
    v25 = EditorialNotes.debugDescription.getter();
    v27 = v26;
    sub_2171F06D8(v263, &qword_27CB24B70, &unk_217759460);
    *&v250 = v25;
    *(&v250 + 1) = v27;
    OUTLINED_FUNCTION_28_49();
    OUTLINED_FUNCTION_3_114();
    v220 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v28 = OUTLINED_FUNCTION_49_30();
    v30 = v29;

    MEMORY[0x21CEA23B0](v28, v30);

    OUTLINED_FUNCTION_54_24();
  }

  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v31 = sub_2172A4364(qword_280C021D0);
  v221 = v1;
  if (v31)
  {
    *&v254 = 0;
    *(&v254 + 1) = 0xE000000000000000;
    v39 = *(v31 + 16);
    if (v39)
    {
      *&v222 = v7;
      v40 = (v31 + 40);
      do
      {
        v42 = *(v40 - 1);
        v41 = *v40;
        if ((*(&v254 + 1) & 0x2000000000000000) != 0)
        {
          v43 = HIBYTE(*(&v254 + 1)) & 0xFLL;
        }

        else
        {
          v43 = v254 & 0xFFFFFFFFFFFFLL;
        }

        v44 = *v40;
        sub_217751DE8();
        if (v43)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v261[0] = 0x22202020200ALL;
        *(&v261[0] + 1) = 0xE600000000000000;
        MEMORY[0x21CEA23B0](v42, v41);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](*&v261[0], *(&v261[0] + 1));

        v40 += 2;
        --v39;
      }

      while (v39);

      v46 = *(&v254 + 1);
      v45 = v254;
      v1 = v221;
      v7 = v222;
    }

    else
    {

      v45 = 0;
      v46 = 0xE000000000000000;
    }

    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v45 & 0xFFFFFFFFFFFFLL;
    }

    v24 = &v243;
    if (v47)
    {
      OUTLINED_FUNCTION_7_79();
      *&v261[0] = v48 - 3;
      *(&v261[0] + 1) = v49;
      MEMORY[0x21CEA23B0]();

      MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
      OUTLINED_FUNCTION_54_24();
    }
  }

  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v32, v33, v34, v35, v36, v37, v38, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, SWORD2(v226), SBYTE6(v226), SHIBYTE(v226), v227, v228, v229, v230, v231, v232, v233, v234);
  LOBYTE(v58) = 102;
  if (v57 != 2)
  {
    OUTLINED_FUNCTION_7_79();
    *&v254 = v60 + 1;
    *(&v254 + 1) = v59;
    v62 = (v61 & 1) == 0;
    if (v61)
    {
      v63 = 1702195828;
    }

    else
    {
      v63 = 0x65736C6166;
    }

    if (v62)
    {
      v64 = 0xE500000000000000;
    }

    else
    {
      v64 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v63, v64);

    MEMORY[0x21CEA23B0](v254, *(&v254 + 1));
  }

  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C021E0, v50, v51, v52, v53, v54, v55, v56, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, SWORD2(v226), SBYTE6(v226), SHIBYTE(v226), v227, v228, v229, v230, v231, v232, v233, v234);
  if (v72 != 2)
  {
    OUTLINED_FUNCTION_7_79();
    *&v254 = v74;
    *(&v254 + 1) = v73;
    v76 = (v75 & 1) == 0;
    if (v75)
    {
      v77 = 1702195828;
    }

    else
    {
      v77 = 0x65736C6166;
    }

    if (v76)
    {
      v78 = 0xE500000000000000;
    }

    else
    {
      v78 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v77, v78);

    MEMORY[0x21CEA23B0](v254, *(&v254 + 1));
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C02140, v65, v66, v67, v68, v69, v70, v71, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2171F06D8(v6, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v58 = v224;
    v79 = v223;
    (*(v224 + 32))(v223, v6, v7);
    OUTLINED_FUNCTION_24_0();
    *&v254 = v80 | 0x3A6C727500000000;
    *(&v254 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v81 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v81);

    OUTLINED_FUNCTION_36_10();
    LOBYTE(v6) = BYTE8(v254);
    MEMORY[0x21CEA23B0](v254, *(&v254 + 1));

    v82 = *(v58 + 8);
    LOBYTE(v58) = v58 + 8;
    v82(v79, v7);
  }

  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA76C(v83, v84, v85, v86, v87, v88, v89, v90, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if (v258)
  {
    OUTLINED_FUNCTION_29_41();
    *&v243 = 0;
    *(&v243 + 1) = 0xE000000000000000;
    v91 = &qword_27CB25388;
    v1 = &unk_21775D410;
    v92 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v92, v93, v94, &unk_21775D410);
    v95 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v95, v96, v97, &unk_21775D410);
    OUTLINED_FUNCTION_43_30();
    sub_21725CF00(v7, v6);
    OUTLINED_FUNCTION_18_56();
    LODWORD(v58) = BYTE8(v254);
    v6 = (v7 + 32);
    if (BYTE8(v254))
    {
LABEL_56:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v62)
      {

        OUTLINED_FUNCTION_50_32();
        sub_217294574();
        goto LABEL_62;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v62)
        {
          break;
        }

        if ((&unk_21775D410 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (&unk_21775D410 >= v98)
        {
          goto LABEL_151;
        }

        v99 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v99, v100, &unk_27CB276C0, &qword_217758A00);
        v101 = sub_217751DE8();
        v91 = &v250;
        sub_2172940A0(v101, v102, v103, v104, v105, v106, v107, v108);
        sub_2171F06D8(&v250, &unk_27CB276C0, &qword_217758A00);
LABEL_62:
        OUTLINED_FUNCTION_27_47();
        if (v109)
        {
          v110 = 1;
        }

        else
        {
          v110 = 0;
        }

        if (v58)
        {
          sub_21725CF00(v7, 1);
          if (v110)
          {
            goto LABEL_150;
          }
        }

        else
        {
          sub_21725CF00(v7, 0);
          if (v110)
          {
            goto LABEL_149;
          }
        }

        v250 = v224;
        v251 = v223;
        v252 = v222;
        v253 = v91;
        OUTLINED_FUNCTION_4_6();
        if (v111)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v235 = 10;
        v236 = 0xE100000000000000;
        v112 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v112);

        v91 = &v243;
        MEMORY[0x21CEA23B0](v235, v236);

        sub_21725CE44(&v250);
        OUTLINED_FUNCTION_47_30();
        if (v58)
        {
          goto LABEL_56;
        }
      }
    }

    v259 = &unk_21775D410;
    sub_2171F06D8(&v254, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v254 = v113 | 0x75626C6100000000;
    *(&v254 + 1) = 0xED00005B203A736DLL;
    v250 = v243;
    OUTLINED_FUNCTION_4_118();
    *&v249 = v115;
    *(&v249 + 1) = v114;
    sub_21733A5C8();
    OUTLINED_FUNCTION_5_97();
    *(&v223 + 1) = v116;
    *&v223 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v7 = OUTLINED_FUNCTION_49_30();
    v6 = v117;

    MEMORY[0x21CEA23B0](v7, v6);

    OUTLINED_FUNCTION_13_65();
    MEMORY[0x21CEA23B0](v254, *(&v254 + 1));

    sub_2171F06D8(v261, &qword_27CB25388, &unk_21775D410);
    v1 = v221;
    v24 = &v243;
  }

  else
  {
    sub_2171F06D8(&v254, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA750(v118, v119, v120, v121, v122, v123, v124, v125, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if (v258)
  {
    OUTLINED_FUNCTION_29_41();
    *&v249 = 0;
    *(&v249 + 1) = 0xE000000000000000;
    v1 = &unk_21775D420;
    v126 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v126, v127, v128, &unk_21775D420);
    v129 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v129, v130, v131, &unk_21775D420);
    OUTLINED_FUNCTION_43_30();
    sub_21725CF00(v7, v6);
    OUTLINED_FUNCTION_18_56();
    v132 = BYTE8(v254);
    v6 = (v7 + 32);
    if (BYTE8(v254))
    {
LABEL_79:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v62)
      {

        OUTLINED_FUNCTION_50_32();
        sub_21729464C();
        goto LABEL_88;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v62)
        {
          break;
        }

        if ((&unk_21775D420 & 0x8000000000000000) != 0)
        {
          goto LABEL_152;
        }

        if (&unk_21775D420 >= v133)
        {
          goto LABEL_155;
        }

        v134 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v134, v135, &qword_27CB24618, &qword_217778790);
        OUTLINED_FUNCTION_55_24();
        if (v242)
        {
          v58 = *(v235 + 16);
          v136 = *(v235 + 24);
          v137 = *(v235 + 32);
          sub_217283C5C(v7, 0);
          sub_217751DE8();

          sub_2172937E4(v58, v136, v138, v139, v140, v141, v142, v143, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, *(&v243 + 1), v244, v245, v246, v247, v248, v249);

          v24 = &v243;
        }

        else
        {
          OUTLINED_FUNCTION_23_52();
        }

        sub_2171F06D8(&v250, &qword_27CB24618, &qword_217778790);
LABEL_88:
        v144 = OUTLINED_FUNCTION_22_56();
        if (v132)
        {
          sub_21725CF00(v144, 1);
          if (v58)
          {
            goto LABEL_154;
          }
        }

        else
        {
          sub_21725CF00(v144, 0);
          if (v58)
          {
            goto LABEL_153;
          }
        }

        OUTLINED_FUNCTION_34_39();
        OUTLINED_FUNCTION_4_6();
        if (v145)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v235 = 10;
        v236 = 0xE100000000000000;
        v146 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v146);

        LOBYTE(v58) = v236;
        MEMORY[0x21CEA23B0](v235, v236);

        sub_21728418C(&v250);
        OUTLINED_FUNCTION_47_30();
        if (v132)
        {
          goto LABEL_79;
        }
      }
    }

    v259 = &unk_21775D420;
    sub_2171F06D8(&v254, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v254 = v147 | 0x726E656700000000;
    *(&v254 + 1) = 0xED00005B203A7365;
    v250 = v249;
    OUTLINED_FUNCTION_4_118();
    *&v243 = v149;
    *(&v243 + 1) = v148;
    sub_21733A5C8();
    OUTLINED_FUNCTION_3_114();
    *&v223 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    v150 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v150);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    sub_2171F06D8(v261, &qword_27CB27C80, &unk_21775D420);
    v1 = v221;
  }

  else
  {
    sub_2171F06D8(&v254, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA69C(v151, v152, v153, v154, v155, v156, v157, v158, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if (v258)
  {
    OUTLINED_FUNCTION_29_41();
    *&v243 = 0;
    *(&v243 + 1) = 0xE000000000000000;
    v159 = &qword_27CB25380;
    v160 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v160, v161, v162, &unk_21775DAA0);
    v163 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v163, v164, v165, &unk_21775DAA0);
    OUTLINED_FUNCTION_41_37();
    sub_21725CF00(&v243, v1);
    OUTLINED_FUNCTION_18_56();
    v24 = BYTE8(v254);
    v6 = (v7 + 32);
    if (BYTE8(v254))
    {
LABEL_102:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v62)
      {

        OUTLINED_FUNCTION_50_32();
        sub_2172945BC();
        goto LABEL_108;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v62)
        {
          break;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_156;
        }

        if (v1 >= v166)
        {
          goto LABEL_159;
        }

        v167 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v167, v168, &qword_27CB27900, &qword_217771CE0);
        v169 = sub_217751DE8();
        v159 = &v250;
        sub_2172940F0(v169, v170, v171, v172, v173, v174, v175, v176);
        sub_2171F06D8(&v250, &qword_27CB27900, &qword_217771CE0);
LABEL_108:
        OUTLINED_FUNCTION_27_47();
        if (v109)
        {
          v177 = 1;
        }

        else
        {
          v177 = 0;
        }

        if (v24)
        {
          sub_21725CF00(v7, 1);
          if (v177)
          {
            goto LABEL_158;
          }
        }

        else
        {
          sub_21725CF00(v7, 0);
          if (v177)
          {
            goto LABEL_157;
          }
        }

        v250 = v224;
        v251 = v223;
        v252 = v222;
        v253 = v159;
        OUTLINED_FUNCTION_4_6();
        if (v178)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v235 = 10;
        v236 = 0xE100000000000000;
        v179 = MusicVideo.debugDescription.getter();
        MEMORY[0x21CEA23B0](v179);

        v159 = &v243;
        MEMORY[0x21CEA23B0](v235, v236);

        sub_217283C08(&v250);
        OUTLINED_FUNCTION_47_30();
        if (v24)
        {
          goto LABEL_102;
        }
      }
    }

    v259 = v1;
    sub_2171F06D8(&v254, &qword_27CB278F0, &unk_217793B40);
    OUTLINED_FUNCTION_7_79();
    *&v254 = v181 - 2;
    *(&v254 + 1) = v180;
    v250 = v243;
    OUTLINED_FUNCTION_4_118();
    *&v249 = v183;
    *(&v249 + 1) = v182;
    sub_21733A5C8();
    OUTLINED_FUNCTION_5_97();
    *(&v223 + 1) = v184;
    *&v223 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    v185 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v185);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    sub_2171F06D8(v261, &qword_27CB25380, &unk_21775DAA0);
    v1 = v221;
  }

  else
  {
    sub_2171F06D8(&v254, &qword_27CB25338, &unk_21775D3E0);
  }

  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_32_45();
  sub_2176CA4F0(v186, v187, v188, v189, v190, v191, v192, v193, v223, *(&v223 + 1), v224, *(&v224 + 1), v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if (v258)
  {
    OUTLINED_FUNCTION_29_41();
    *&v260 = 0;
    *(&v260 + 1) = 0xE000000000000000;
    v194 = &unk_21775CD50;
    v195 = OUTLINED_FUNCTION_20_50();
    sub_217202078(v195, v196, v197, &unk_21775CD50);
    v198 = OUTLINED_FUNCTION_19_46();
    sub_217202078(v198, v199, v200, &unk_21775CD50);
    OUTLINED_FUNCTION_41_37();
    sub_21725CF00(v24, v1);
    OUTLINED_FUNCTION_18_56();
    v201 = BYTE8(v254);
    v6 = (v7 + 32);
    if (BYTE8(v254))
    {
LABEL_125:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_17_59();
      if (!v62)
      {

        OUTLINED_FUNCTION_50_32();
        sub_2172944E4();
        goto LABEL_134;
      }
    }

    else
    {
      while (1)
      {
        OUTLINED_FUNCTION_49_32();
        if (v62)
        {
          break;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_160;
        }

        if (v1 >= v202)
        {
          goto LABEL_163;
        }

        v203 = OUTLINED_FUNCTION_52_28();
        sub_217202078(v203, v204, &qword_27CB24830, &qword_217771D40);
        OUTLINED_FUNCTION_55_24();
        if (v242)
        {
          LOBYTE(v194) = v235;
          v205 = *(v235 + 16);
          v206 = *(v235 + 24);
          v207 = *(v235 + 32);
          sub_217283C5C(v7, 0);
          sub_217751DE8();

          sub_21729290C(&v243, v205, v206);
        }

        else
        {
          OUTLINED_FUNCTION_23_52();
        }

        sub_2171F06D8(&v250, &qword_27CB24830, &qword_217771D40);
LABEL_134:
        v208 = OUTLINED_FUNCTION_22_56();
        if (v201)
        {
          sub_21725CF00(v208, 1);
          if (v194)
          {
            goto LABEL_162;
          }
        }

        else
        {
          sub_21725CF00(v208, 0);
          if (v194)
          {
            goto LABEL_161;
          }
        }

        OUTLINED_FUNCTION_34_39();
        OUTLINED_FUNCTION_4_6();
        if (v209)
        {
          OUTLINED_FUNCTION_48_1();
        }

        v235 = 10;
        v236 = 0xE100000000000000;
        v210 = Playlist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v210);

        LOBYTE(v194) = v236;
        MEMORY[0x21CEA23B0](v235, v236);

        sub_21726B8C4(&v250);
        OUTLINED_FUNCTION_47_30();
        if (v201)
        {
          goto LABEL_125;
        }
      }
    }

    v259 = v1;
    sub_2171F06D8(&v254, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_7_79();
    *&v254 = v212 - 4;
    *(&v254 + 1) = v211;
    v250 = v260;
    OUTLINED_FUNCTION_4_118();
    *&v243 = v214;
    *(&v243 + 1) = v213;
    sub_21733A5C8();
    OUTLINED_FUNCTION_3_114();
    *&v223 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](&v243, v1);

    OUTLINED_FUNCTION_13_65();
    OUTLINED_FUNCTION_42_37();

    v215 = sub_2171F06D8(v261, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    v215 = sub_2171F06D8(&v254, &qword_27CB25330, &unk_21775E9B0);
  }

  Artist.station.getter(v261, v215);
  if (*(&v261[0] + 1))
  {
    v254 = v261[0];
    v255 = v261[1];
    v256 = v261[2];
    *&v257 = v262;
    OUTLINED_FUNCTION_24_0();
    *&v261[0] = v216 | 0x7461747300000000;
    *(&v261[0] + 1) = 0xED0000203A6E6F69;
    *&v250 = Station.debugDescription.getter();
    *(&v250 + 1) = v217;
    OUTLINED_FUNCTION_28_49();
    OUTLINED_FUNCTION_3_114();
    *&v223 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    v218 = OUTLINED_FUNCTION_204();
    MEMORY[0x21CEA23B0](v218);

    MEMORY[0x21CEA23B0](*&v261[0], *(&v261[0] + 1));

    sub_217283DC8(&v254);
  }

  else
  {
    sub_2171F06D8(v261, &unk_27CB2AF80, &qword_217758C30);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v269;
}

uint64_t Artist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t Artist.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2172E2188();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2172E2188();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2172E2188();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_2176A8130(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v4)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v5 = *a2;

  return v3(v5);
}

void Artist.mainUberArtwork.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6940 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02190;

  sub_2176CB030(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Artist.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Artist.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_2176A8518@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176A867C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C820, &qword_217793F08);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_31_43();
  result = sub_217729830(v0, v1, v2, 0xE700000000000000, v3);
  qword_280C02170 = result;
  return result;
}

uint64_t sub_2176A86EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C818, &qword_217793F00);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021A0 = result;
  return result;
}

uint64_t sub_2176A8760()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C810, &qword_217793EF8);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C02158 = result;
  return result;
}

uint64_t sub_2176A87D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C808, &qword_217793EF0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021D0 = result;
  return result;
}

uint64_t sub_2176A8850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02190 = result;
  return result;
}

uint64_t sub_2176A88D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C800, &unk_217793EE0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02138 = result;
  return result;
}

uint64_t sub_2176A893C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F8, &qword_217793ED8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02140 = result;
  return result;
}

uint64_t sub_2176A89A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A8, &qword_217793E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEE00657461446465, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C021B0 = result;
  return result;
}

uint64_t sub_2176A8A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B8, &qword_217793E90);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEF73757461745365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02198 = result;
  return result;
}

uint64_t sub_2176A8A90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F436B636172745FLL, 0xEB00000000746E75, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021C0 = result;
  return result;
}

uint64_t sub_2176A8B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F436D75626C615FLL, 0xEB00000000746E75, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021C8 = result;
  return result;
}

uint64_t sub_2176A8B88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A8, &qword_217793E80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, 0x80000002177B48C0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02178 = result;
  return result;
}

uint64_t sub_2176A8C00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A070(0x736D75626C61, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE6888 = result;
  return result;
}

uint64_t sub_2176A8C84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D8, &qword_217793EB0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A074(0x676F6C61746163, 0xE700000000000000, 0);
  qword_280C021A8 = result;
  return result;
}

uint64_t sub_2176A8CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F0, &unk_217793EC8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A06C(0x7365726E6567, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE6878 = result;
  return result;
}

uint64_t sub_2176A8D6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C8, &qword_217793EA0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A07C(0x69762D636973756DLL, 0xEC000000736F6564, 0, &unk_282959AD0);
  qword_280BE69F0 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.musicVideos.getter()
{
  return sub_21767CE84(&qword_280BE69E8, &qword_280BE69F0);
}

{
  return sub_2177286EC(&qword_280BE9900);
}

uint64_t sub_2176A8DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E0, &qword_217793EB8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A084(0x7473696C79616C70, 0xE900000000000073, 0, &unk_282959AF8);
  qword_280BE6828 = result;
  return result;
}

uint64_t sub_2176A8E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E8, &qword_217793EC0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A080(0x6E6F6974617473, 0xE700000000000000, 0, &unk_282959AF8);
  qword_280BE6850 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.station.getter()
{
  return sub_21767CE84(&qword_280BE6848, &qword_280BE6850);
}

{
  return sub_2177286EC(&qword_280BE96E8);
}

uint64_t sub_2176A8F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3E8(0xD000000000000011, 0x80000002177AA580, 1);
  qword_280BE6958 = result;
  return result;
}

uint64_t sub_2176A8F94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_35_38();
  result = sub_21736C3E8(v0, v1, v2);
  qword_280BE6910 = result;
  return result;
}

uint64_t sub_2176A9058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7E0, &qword_217793EB8);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_35_38();
  result = sub_21736C3EC(v0, v1, v2);
  qword_280BE6900 = result;
  return result;
}

uint64_t sub_2176A918C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D8, &qword_217793EB0);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3F0(0x2D72616C696D6973, 0xEF73747369747261, 1);
  qword_280BE6970 = result;
  return result;
}

uint64_t sub_2176A9238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7D0, &qword_217793EA8);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3E8(a2, a3, 1);
  *a4 = result;
  return result;
}

uint64_t sub_2176A92C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C8, &qword_217793EA0);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_31_43();
  result = sub_21736C3E4(v0, v1, 1);
  qword_280BE6A60 = result;
  return result;
}

uint64_t sub_2176A933C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7C0, &qword_217793E98);
  OUTLINED_FUNCTION_60();
  result = sub_21736C160(0x676E6F732D706F74, 0xE900000000000073, 1);
  qword_280BE6838 = result;
  return result;
}

uint64_t sub_2176A93C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C370, qword_217793F10);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697A14(0x6942747369747261, 0xE90000000000006FLL, 0, 0x676E69727453, 0xE600000000000000, &unk_282959AF8);
  qword_280C021D8 = result;
  return result;
}

uint64_t sub_2176A9438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27B48, &qword_21776B800);
  v0 = OUTLINED_FUNCTION_31_11();
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, 1, 0, v8, v9, v10);
  qword_280C02168 = result;
  return result;
}

uint64_t sub_2176A94E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7F8, &qword_217793ED8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6163697373616C63, 0xEC0000006C72556CLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C021B8 = result;
  return result;
}

uint64_t sub_2176A9560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B0, &qword_217793E88);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, 0x80000002177B4EE0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02148 = result;
  return result;
}

uint64_t sub_2176A9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C368, &unk_217791C00);
  OUTLINED_FUNCTION_31_11();
  result = sub_2176979D0(a2, a3, 0, 1819242306, 0xE400000000000000, &unk_282959AF8);
  *a4 = result;
  return result;
}

uint64_t sub_2176A96A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_31_43();
  result = OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02188 = result;
  return result;
}

uint64_t sub_2176A9718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ALL, 0x80000002177B4F20, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02150 = result;
  return result;
}

uint64_t sub_2176A9790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7A0, &qword_217793E78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, 0x80000002177B4F00, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02160 = result;
  return result;
}

uint64_t sub_2176A9808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C7B0, &qword_217793E88);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64656E6E69507369, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02130 = result;
  return result;
}

uint64_t static Artist.catalogFilterID(for:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = sub_217751F08();

  if (v2)
  {
    *a1 = 25705;
    a1[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2176A99BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void static Artist.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for Song && a4 != &type metadata for Album && a4 != &type metadata for MusicVideo)
  {
    sub_2173546F8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }
}

uint64_t Artist.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE2B0();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.description.getter()
{
  sub_217752AA8();

  strcpy(v5, "Artist(id: ");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6898 != -1)
  {
    OUTLINED_FUNCTION_6_98();
  }

  v1 = sub_2172A3FF0();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v1, v3);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v5[0];
}

uint64_t static Artist.typeValue.getter()
{
  if (qword_280BE2A18 != -1)
  {
    OUTLINED_FUNCTION_15_63();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE2A20);

  return sub_217751DE8();
}

uint64_t sub_2176A9D18()
{
  if (qword_280BE2A18 != -1)
  {
    OUTLINED_FUNCTION_15_63();
  }

  xmmword_280BE6278 = xmmword_280BE2A20;
  qword_280BE6288 = qword_280BE2A30;
  unk_280BE6290 = unk_280BE2A38;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.artist.getter()
{
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6278);

  return sub_217751DE8();
}

unint64_t sub_2176A9DEC()
{
  result = qword_27CB2C798;
  if (!qword_27CB2C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C798);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_56()
{
  v3 = *v1;
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v3;
  *(v0 + 16) = v1[2];
  v4 = *(v0 + 256);
  return v2;
}

void *OUTLINED_FUNCTION_29_41()
{

  return memcpy((v0 + 536), (v0 + 400), 0x68uLL);
}

__n128 OUTLINED_FUNCTION_34_39()
{
  v3 = *(v0 + 32);
  *(v2 + 80) = *(v0 + 48);
  *(v2 + 96) = v3;
  result = *(v0 + 16);
  *(v2 + 112) = result;
  *(v0 + 336) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_37()
{
  sub_217283C5C(*(v0 + 288), *(v0 + 296));

  return sub_2171F06D8(v0 + 288, v1, v2);
}

void OUTLINED_FUNCTION_42_37()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_43_30()
{
  sub_217283C5C(*(v0 + 288), *(v0 + 296));

  return sub_2171F06D8(v0 + 288, v1, v2);
}

void OUTLINED_FUNCTION_54_24()
{
  v2 = *(v0 + 536);
  v3 = *(v0 + 544);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_55_24()
{

  return sub_217202078(v0 + 288, v0 + 144, v1, v2);
}

uint64_t sub_2176AA0A8(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_126(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if ((sub_217707D80(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v7 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 40);
  v9 = *(v2 + 40);

  return sub_217270790(v8, v9);
}

uint64_t sub_2176AA134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000002177B5020 == a2;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000002177B5040 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x80000002177B5060 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2176AA298(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2176AA31C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C8B0, &qword_217794630);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD4FC();
  OUTLINED_FUNCTION_105();
  v15 = *v3;
  v16 = v3[1];
  v25 = 0;
  OUTLINED_FUNCTION_44_2();
  sub_217752F48();
  if (!v2)
  {
    v24 = *(v3 + 16);
    v23 = 1;
    sub_2176AD5A4();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    v17 = v3[3];
    v18 = v3[4];
    v22 = 2;
    OUTLINED_FUNCTION_44_2();
    sub_217752F48();
    v21 = v3[5];
    v20[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2176AD5F8(&qword_280BE2328);
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
  }

  return (*(v7 + 8))(v13, v5);
}

void sub_2176AA508(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  *(v1 + 16);
  sub_217751FF8();

  v5 = v1[3];
  v6 = v1[4];
  sub_217751FF8();
  v7 = v1[5];

  sub_217281100(a1, v7);
}

uint64_t sub_2176AA5C8()
{
  OUTLINED_FUNCTION_238();
  sub_2176AA508(v1);
  return sub_217753238();
}

uint64_t sub_2176AA600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C8A8, &unk_217794620);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD4FC();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_4_7();
  v11 = sub_217752E68();
  v13 = v12;
  sub_2176AD550();
  OUTLINED_FUNCTION_4_7();
  sub_217752EA8();
  OUTLINED_FUNCTION_4_7();
  v18 = sub_217752E68();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2176AD5F8(&qword_280BE2318);
  OUTLINED_FUNCTION_4_7();
  sub_217752EA8();
  v15 = OUTLINED_FUNCTION_1_3();
  v16(v15);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  return result;
}

uint64_t sub_2176AA8A4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_2_126(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  return sub_2176AA0A8((v3 + 16), (v2 + 16));
}

uint64_t sub_2176AA900(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C888, &qword_217794408);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD100();
  OUTLINED_FUNCTION_105();
  v15 = *v3;
  v16 = v3[1];
  LOBYTE(v20) = 0;
  sub_217752F48();
  if (!v2)
  {
    v17 = *(v3 + 2);
    v20 = *(v3 + 1);
    v21 = v17;
    v22 = *(v3 + 3);
    v19[15] = 1;
    sub_2176AD210();
    sub_217752F88();
  }

  return (*(v7 + 8))(v13, v5);
}

void sub_2176AAA64(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  sub_2176AA508(a1);
}

uint64_t sub_2176AAA94()
{
  OUTLINED_FUNCTION_238();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  sub_2176AA508(v4);
  return sub_217753238();
}

uint64_t sub_2176AAAD8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C880, &qword_217794400);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176AD100();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27[0]) = 0;
  v11 = sub_217752E68();
  v13 = v12;
  v36 = 1;
  sub_2176AD154();
  sub_217752EA8();
  v14 = OUTLINED_FUNCTION_1_37();
  v15(v14);
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  *&v23 = v11;
  *(&v23 + 1) = v13;
  v24 = v32;
  LOBYTE(v25) = v33;
  *(&v25 + 1) = v34;
  v26 = v35;
  sub_2176AD1A8(&v23, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v11;
  v27[1] = v13;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  result = sub_2176AD1E0(v27);
  v21 = v24;
  *a2 = v23;
  a2[1] = v21;
  v22 = v26;
  a2[2] = v25;
  a2[3] = v22;
  return result;
}

uint64_t sub_2176AAD2C()
{
  v0 = sub_217752DC8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2176AAD78(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C61;
  }

  if (a1 == 1)
  {
    return 0x6E692D74706FLL;
  }

  return 0x74696269686F7270;
}

uint64_t sub_2176AADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2176AA134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2176AAE18(uint64_t a1)
{
  v2 = sub_2176AD4FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176AAE54(uint64_t a1)
{
  v2 = sub_2176AD4FC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2176AAE90@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2176AA600(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2176AAEF8()
{
  sub_2177531E8();
  sub_2176AA508(v1);
  return sub_217753238();
}

uint64_t sub_2176AAF4C(uint64_t a1)
{
  v2 = sub_2176AD100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176AAF88(uint64_t a1)
{
  v2 = sub_2176AD100();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2176AAFC4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2176AAAD8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2176AB02C()
{
  sub_2177531E8();
  sub_2176AAA64(v1);
  return sub_217753238();
}

uint64_t sub_2176AB068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2176AAD2C();
  *a2 = result;
  return result;
}

uint64_t sub_2176AB098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2176AAD78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2176AB1A8(char a1)
{
  if (!a1)
  {
    return 0x6465776F6C6C612ELL;
  }

  if (a1 == 1)
  {
    return 0x6E4974706F2ELL;
  }

  return 0x696269686F72702ELL;
}

uint64_t sub_2176AB20C(uint64_t a1, unint64_t a2)
{
  v22 = 45;
  v23 = 0xE100000000000000;
  v21 = &v22;
  sub_217751DE8();
  v4 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, v20, a1, a2);
  if (v4[2] < 2uLL)
  {

    v22 = 95;
    v23 = 0xE100000000000000;
    MEMORY[0x28223BE20](v12, v13);
    v19[2] = &v22;
    sub_217751DE8();
    v14 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, v19, a1, a2);
    if (v14[2] < 2uLL)
    {

      sub_217751DE8();
      return a1;
    }

    v15 = v14[4];
    v16 = v14[5];
    v17 = v14[6];
    v8 = v14[7];
    sub_217751DE8();

    v9 = v15;
    v10 = v16;
    v11 = v17;
  }

  else
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
    sub_217751DE8();

    v9 = v5;
    v10 = v6;
    v11 = v7;
  }

  a1 = MEMORY[0x21CEA2320](v9, v10, v11, v8);

  return a1;
}

void *sub_2176AB3AC()
{
  result = sub_217751DC8();
  off_280BE5410 = result;
  return result;
}

uint64_t sub_2176AB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BE73E0 != -1)
  {
    swift_once();
  }

  v7 = sub_217751AF8();
  __swift_project_value_buffer(v7, qword_280C023A8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v8 = sub_217751AD8();
  v9 = sub_217752828();

  v64 = a4;
  if (os_log_type_enabled(v8, v9))
  {
    v62 = v9;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v88 = v11;
    *v10 = 136446210;
    v12 = sub_2174F1264(a1, a2, a3, a4);
    v14 = sub_21729C0E8(v12, v13, &v88);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2171EE000, v8, v62, "The localization info for the current bundle is: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  v69 = MEMORY[0x277D84F90];
  v15 = sub_217751DE8();
  sub_2175437A8(v15);
  isUniquelyReferenced_nonNull_native = sub_2176ABAAC(a1, 0, &v70);
  v18 = v71;
  if (v71)
  {
    v19 = v75;
    v20 = v73;
    v21 = v74;
    v22 = v72;
    v23 = v70;

    v24 = (v19 >> 8) & 1;
    v67 = v23;
    v25 = v23;
    v26 = v18;
    v27 = v22;
    v63 = v20;
    v28 = v20;
LABEL_7:
    v29 = v21;
    v30 = v19;
    goto LABEL_34;
  }

  if (a4)
  {
    v31 = v69;
    v88 = a3;
    v89 = a4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
    sub_217751DE8();
    if (sub_2171F8728())
    {
    }

    else
    {
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v69 + 16);
        sub_2172AFF2C();
        v31 = v57;
      }

      v33 = *(v31 + 16);
      v59 = a2;
      if (v33 >= *(v31 + 24) >> 1)
      {
        sub_2172AFF2C();
        v31 = v58;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31 + 16 * v33;
      *(v34 + 32) = a3;
      *(v34 + 40) = v64;
      v69 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2177586E0;
      *(inited + 32) = a3;
      *(inited + 40) = v64;
      sub_2176ABAAC(inited, 1, v76);
      v18 = v76[1];
      v36 = v78;
      v65 = v77;
      v67 = v76[0];
      v60 = v79;
      v19 = v80;
      swift_setDeallocating();
      isUniquelyReferenced_nonNull_native = sub_2171FD064();
      if (v18)
      {

        v24 = (v19 >> 8) & 1;
        v25 = v67;
        v26 = v18;
        v27 = v65;
        v63 = v36;
        v28 = v36;
        v21 = v60;
        goto LABEL_7;
      }

      a2 = v59;
    }

    v32 = *(a2 + 16);
    if (v32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v32 = *(a2 + 16);
    if (v32)
    {
LABEL_21:
      v37 = (a2 + 40);
      v38 = MEMORY[0x277D84F90];
      do
      {
        v40 = *(v37 - 1);
        v39 = *v37;
        v88 = v40;
        v89 = v39;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v17);
        sub_217751DE8();
        if (sub_2171F8728())
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = *(v38 + 16);
            sub_2172AFF2C();
            v38 = isUniquelyReferenced_nonNull_native;
          }

          v41 = *(v38 + 16);
          if (v41 >= *(v38 + 24) >> 1)
          {
            sub_2172AFF2C();
            v38 = isUniquelyReferenced_nonNull_native;
          }

          *(v38 + 16) = v41 + 1;
          v42 = v38 + 16 * v41;
          *(v42 + 32) = v40;
          *(v42 + 40) = v39;
        }

        v37 += 2;
        --v32;
      }

      while (v32);
      goto LABEL_32;
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_32:
  v44 = sub_217751DE8();
  sub_2175437A8(v44);

  sub_2176ABAAC(v38, 2, &v81);
  v45 = v81;
  v18 = v82;
  v63 = v84;
  LOBYTE(v19) = v86;

  v26 = v82;
  if (!v82)
  {
    return 0;
  }

  v67 = v45;
  v28 = v84;
  v29 = v85;
  v27 = v83;
  v25 = v81;
  LOBYTE(v24) = v87;
  v30 = v86;
LABEL_34:
  v88 = v25;
  v89 = v26;
  v90 = v27;
  v91 = v28;
  v92 = v29;
  v93 = v30 & 1;
  v94 = v24 & 1;
  sub_217751DE8();
  sub_217751DE8();
  v46 = sub_217751AD8();
  v47 = sub_217752828();
  if (os_log_type_enabled(v46, v47))
  {
    v61 = v18;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v68 = v49;
    *v48 = 136446210;
    v50 = sub_2176AC990();
    v52 = v51;

    v53 = sub_21729C0E8(v50, v52, &v68);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_2171EE000, v46, v47, "Preferred language tag candidate: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_28_4();
    v18 = v61;
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
  }

  if (v19)
  {
    v54 = 0;
  }

  else
  {
    sub_217751DE8();
    v54 = v63;
  }

  sub_2176ACC80(v67, v18);
  return v54;
}

uint64_t sub_2176ABAAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  LOBYTE(v4) = a2;
  v139 = 0;
  v7 = v3[3];
  v132 = v3[2];
  v120 = v3[7];
  if (qword_280BE5408 != -1)
  {
LABEL_116:
    swift_once();
  }

  v8 = *(a1 + 16);
  v119 = v8;
  if (!v8)
  {
    v19 = 0;
    v106 = 0;
    v103 = 0;
    v105 = 0;
    v102 = 0;
    v104 = 0;
    goto LABEL_114;
  }

  v114 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v12 = 0;
  a3 = 0;
  v13 = off_280BE5410;
  v125 = a1 + 32;
  v4 = v4;
  v117 = (v120 + 40);
  a1 = v119;
  v122 = off_280BE5410;
  v118 = v4;
  do
  {
    if (v12 == a1)
    {
      __break(1u);
      goto LABEL_116;
    }

    v14 = (v125 + 16 * v12);
    v15 = v14[1];
    if (!((v11 == 0) | v9 & 1))
    {
      v18 = v14[1];
      sub_217751DE8();
      goto LABEL_14;
    }

    v130 = *v14;
    v131 = v15;
    v16 = v130 == v132 && v15 == v7;
    if (v16 || (sub_217753058() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();
      sub_217751DE8();
      v17 = v131;
      sub_2176ACC80(v10, v11);
      v139 = 0;
      v126 = 1;
      if (v17)
      {
        goto LABEL_12;
      }

      v9 = 0;
      v11 = 0;
      v128 = v7;
      v129 = v132;
      v127 = v4;
      v10 = v130;
    }

    else
    {
      sub_217751DE8();
      if (v11)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }

        v9 = 1;
      }
    }

    if (v13[2] && (v20 = sub_21763246C(v130, v131), (v21 & 1) != 0) && ((v22 = (v13[7] + 16 * v20), *v22 == v132) ? (v23 = v22[1] == v7) : (v23 = 0), v23 || (sub_217753058() & 1) != 0))
    {
      v24 = v131;
      sub_217751DE8();
      sub_217751DE8();
      v17 = v24;
      sub_2176ACC80(v10, v11);
      v139 = 0;
      v126 = 1;
      if (v24)
      {
LABEL_12:
        v128 = v7;
        v129 = v132;
        v127 = v4;
        v11 = v17;
        v10 = v130;
        goto LABEL_14;
      }

      v124 = a3;
      v127 = v4;
      v128 = v7;
      v25 = v132;
      v26 = v130;
      v10 = v130;
    }

    else
    {
      if (v11)
      {
        v27 = v11;
        v28 = v131;
        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_43;
      }

      v124 = a3;
      v25 = v129;
      v26 = v130;
      v17 = v131;
    }

    v29 = sub_2176AB20C(v26, v17);
    v31 = v30;
    if (v29 == sub_2176AB20C(v132, v7) && v31 == v32)
    {

LABEL_42:
      v35 = v131;
      sub_217751DE8();
      sub_217751DE8();
      v28 = v35;
      sub_2176ACC80(v10, 0);
      v126 = 1;
      v139 = 1;
      v128 = v7;
      v129 = v132;
      v127 = v4;
      v27 = v35;
      v10 = v130;
      a1 = v119;
      a3 = v124;
      goto LABEL_43;
    }

    v34 = sub_217753058();

    if (v34)
    {
      goto LABEL_42;
    }

    v129 = v25;
    v27 = 0;
    a1 = v119;
    a3 = v124;
    v28 = v131;
LABEL_43:
    v36 = *(v120 + 16);
    if (!v36)
    {
      goto LABEL_59;
    }

    v37 = v27;
    v38 = a3;
    v39 = v117;
    v40 = v132;
    while (1)
    {
      v42 = *(v39 - 1);
      v41 = *v39;
      if (v42 == v40 && v41 == v7)
      {
        goto LABEL_55;
      }

      v44 = *(v39 - 1);
      v45 = *v39;
      v46 = sub_217753058();
      v40 = v132;
      if (v46)
      {
        goto LABEL_55;
      }

      if (v130 == v42 && v131 == v41)
      {
        break;
      }

      v48 = sub_217753058();
      v40 = v132;
      if (v48)
      {
        goto LABEL_58;
      }

LABEL_55:
      v39 += 2;
      if (!--v36)
      {
        a1 = v119;
        a3 = v38;
        v4 = v118;
        v28 = v131;
        v27 = v37;
        goto LABEL_59;
      }
    }

    v42 = v130;
LABEL_58:
    v49 = v131;
    sub_217751DE8();
    sub_217751DE8();
    sub_2176ACC80(v10, v37);
    v126 = 0;
    v10 = v130;
    v139 = 0;
    v27 = v49;
    v127 = v118;
    v128 = v41;
    v129 = v42;
    v28 = v49;
    a1 = v119;
    a3 = v38;
    v4 = v118;
LABEL_59:
    v11 = v27;
    if (v27 && v139 != 1)
    {
      goto LABEL_14;
    }

    if (v13[2] && (v50 = sub_21763246C(v130, v28), v28 = v131, (v51 & 1) != 0))
    {
      v52 = (v13[7] + 16 * v50);
      v53 = v52[1];
      v121 = *v52;
      v123 = v53;
      sub_217751DE8();
    }

    else
    {
      v137 = v130;
      v138 = v28;
      v135 = 95;
      v136 = 0xE100000000000000;
      v133 = 45;
      v134 = 0xE100000000000000;
      v112 = sub_21733A5C8();
      v113 = v112;
      v111 = v112;
      v110 = MEMORY[0x277D837D0];
      v54 = sub_217752998();
      v28 = v131;
      v121 = v54;
      v123 = v55;
    }

    v124 = a3;
    v56 = *(v120 + 16);
    v57 = v132;
    if (!v56)
    {
LABEL_83:

      v60 = v129;
      v74 = v130;
      v4 = v118;
      if (!v11)
      {
        goto LABEL_87;
      }

LABEL_84:
      v129 = v60;
      a1 = v119;
      a3 = v124;
LABEL_14:

      v19 = v10;
      goto LABEL_15;
    }

    v58 = v117;
    while (2)
    {
      v60 = *(v58 - 1);
      v59 = *v58;
      v61 = v60 == v57 && v59 == v7;
      if (v61 || (v62 = *(v58 - 1), v63 = *v58, v64 = sub_217753058(), v57 = v132, (v64 & 1) != 0))
      {
LABEL_82:
        v58 += 2;
        if (!--v56)
        {
          goto LABEL_83;
        }

        continue;
      }

      break;
    }

    v65 = v13[2];
    sub_217751DE8();
    if (v65 && (v66 = sub_21763246C(v60, v59), (v67 & 1) != 0))
    {
      v68 = (v13[7] + 16 * v66);
      v70 = *v68;
      v69 = v68[1];
      sub_217751DE8();
    }

    else
    {
      v137 = v60;
      v138 = v59;
      v135 = 95;
      v136 = 0xE100000000000000;
      v133 = 45;
      v134 = 0xE100000000000000;
      v112 = sub_21733A5C8();
      v113 = v112;
      v111 = v112;
      v110 = MEMORY[0x277D837D0];
      v70 = sub_217752998();
      v69 = v71;
    }

    if (v121 != v70 || v123 != v69)
    {
      v73 = sub_217753058();

      if (v73)
      {
        goto LABEL_86;
      }

      v13 = v122;
      v28 = v131;
      v57 = v132;
      goto LABEL_82;
    }

LABEL_86:

    v75 = v131;
    sub_217751DE8();
    v28 = v75;
    sub_2176ACC80(v10, v11);
    v126 = 0;
    v139 = 0;
    v74 = v130;
    v10 = v130;
    v11 = v75;
    v4 = v118;
    v127 = v118;
    v128 = v59;
    v13 = v122;
    if (v75)
    {
      goto LABEL_84;
    }

LABEL_87:
    v115 = v10;
    v76 = sub_2176AB20C(v74, v28);
    v123 = v77;
    v78 = *(v120 + 16);
    if (!v78)
    {

      v11 = 0;
      v19 = v115;
      v129 = v60;
      goto LABEL_111;
    }

    v79 = v117;
    v80 = v132;
    v121 = v76;
    while (2)
    {
      v82 = *(v79 - 1);
      v81 = *v79;
      if (v82 == v80 && v81 == v7)
      {
        goto LABEL_106;
      }

      v84 = *(v79 - 1);
      v85 = *v79;
      v86 = sub_217753058();
      if (v86)
      {
        goto LABEL_105;
      }

      v137 = 45;
      v138 = 0xE100000000000000;
      MEMORY[0x28223BE20](v86, v87);
      v112 = &v137;
      swift_bridgeObjectRetain_n();
      v88 = v82;
      v89 = v124;
      v90 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2171F87CC, &v110, v88, v81);
      v91 = v90[2];
      v129 = v88;
      if (v91 >= 2)
      {
        v124 = v89;
        goto LABEL_97;
      }

      v137 = 95;
      v138 = 0xE100000000000000;
      MEMORY[0x28223BE20](v92, v93);
      v112 = &v137;
      sub_217751DE8();
      v90 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2172CB708, &v110, v88, v81);
      v124 = v89;
      if (v90[2] <= 1uLL)
      {

        sub_217751DE8();
        v97 = v88;
        v99 = v81;
      }

      else
      {
LABEL_97:
        v94 = v90[4];
        v95 = v90[5];
        v96 = v90[7];
        v116 = v90[6];
        sub_217751DE8();

        v97 = MEMORY[0x21CEA2320](v94, v95, v116, v96);
        v99 = v98;
      }

      if (v121 != v97 || v123 != v99)
      {
        v101 = sub_217753058();

        if (v101)
        {
          goto LABEL_110;
        }

        v13 = v122;
LABEL_105:
        v80 = v132;
LABEL_106:
        v79 += 2;
        if (!--v78)
        {

          v11 = 0;
          v19 = v115;
          v129 = v60;
          a1 = v119;
          a3 = v124;
          v4 = v118;
          goto LABEL_15;
        }

        continue;
      }

      break;
    }

LABEL_110:
    v13 = v122;

    sub_2176ACC80(v115, 0);
    v126 = 0;
    v139 = 1;
    v19 = v130;
    v11 = v131;
    v4 = v118;
    v127 = v118;
    v128 = v81;
LABEL_111:
    a1 = v119;
    a3 = v124;
LABEL_15:
    if (++v12 == a1)
    {
      break;
    }

    v9 = v139 & 1;
    v10 = v19;
  }

  while (((v11 != 0) & (v139 ^ 1)) == 0);
  LOWORD(v8) = v139;
  a3 = v114;
  v103 = v127;
  v102 = v128;
  v104 = v126;
  v105 = v129;
  v106 = v11;
LABEL_114:
  v107 = v104 | (v8 << 8);
  v108 = v19;
  sub_2176ACCC4(v19, v106);
  result = sub_2176ACC80(v108, v106);
  *a3 = v108;
  *(a3 + 8) = v106;
  *(a3 + 16) = v103;
  *(a3 + 24) = v105;
  *(a3 + 32) = v102;
  *(a3 + 40) = v107;
  return result;
}

uint64_t sub_2176AC620(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_217753058()) && *(a1 + 16) == *(a2 + 16) && (*(a1 + 24) == *(a2 + 24) ? (v5 = *(a1 + 32) == *(a2 + 32)) : (v5 = 0), (v5 || (sub_217753058()) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0))
  {
    v6 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2176AC6C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v0 + 16));
  v3 = v0[3];
  v4 = v0[4];
  sub_217751FF8();
  v5 = *(v0 + 40);
  sub_217753208();
  return MEMORY[0x21CEA3550](*(v0 + 41));
}

uint64_t sub_2176AC718()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v0 + 16));
  v3 = v0[3];
  v4 = v0[4];
  sub_217751FF8();
  v5 = *(v0 + 40);
  sub_217753208();
  MEMORY[0x21CEA3550](*(v0 + 41));
  return sub_217753238();
}

void *sub_2176AC794@<X0>(void *a1@<X8>)
{
  result = sub_2176AC608();
  *a1 = result;
  return result;
}

uint64_t sub_2176AC7BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

void *sub_2176AC808@<X0>(void *a1@<X8>)
{
  result = sub_2176AC614();
  *a1 = result;
  return result;
}

uint64_t sub_2176AC830(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176AC87C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_2176AC620(&v5, &v7) & 1;
}

uint64_t sub_2176AC8C8()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[10] = *(v0 + 26);
  return sub_2176AC718();
}

uint64_t sub_2176AC904()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[10] = *(v0 + 26);
  return sub_2176AC6C4();
}

uint64_t sub_2176AC940()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[10] = *(v0 + 26);
  sub_2177531E8();
  sub_2176AC6C4();
  return sub_217753238();
}

unint64_t sub_2176AC990()
{
  v1 = v0;
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v1, *(v1 + 1));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177B4F80);

  BYTE8(v5) = 0;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000017, 0x80000002177B4FA0);
  *&v5 = v0[16];
  sub_217752C78();
  MEMORY[0x21CEA23B0](*(&v5 + 1), 0xE000000000000000);

  sub_217752AA8();

  MEMORY[0x21CEA23B0](*(v1 + 3), *(v1 + 4));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177B4FC0);

  sub_217752AA8();

  if (v0[40])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[40])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v3);

  MEMORY[0x21CEA23B0](0xD00000000000001ALL, 0x80000002177B4FE0);

  BYTE8(v6) = 0;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177B5000);
  *&v6 = v0[41];
  sub_217752C78();
  MEMORY[0x21CEA23B0](*(&v6 + 1), 0xE000000000000000);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_2176ACC44()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[10] = *(v0 + 26);
  return sub_2176AC990();
}

uint64_t sub_2176ACC80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2176ACCC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

_BYTE *sub_2176ACD34(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2176ACE1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2176ACE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2176ACEBC()
{
  result = qword_27CB2C828;
  if (!qword_27CB2C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C828);
  }

  return result;
}

unint64_t sub_2176ACF14()
{
  result = qword_27CB2C830;
  if (!qword_27CB2C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C830);
  }

  return result;
}

unint64_t sub_2176ACF9C()
{
  result = qword_27CB2C848;
  if (!qword_27CB2C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C848);
  }

  return result;
}

unint64_t sub_2176AD024()
{
  result = qword_27CB2C860;
  if (!qword_27CB2C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C860);
  }

  return result;
}

unint64_t sub_2176AD0AC()
{
  result = qword_27CB2C878;
  if (!qword_27CB2C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C878);
  }

  return result;
}

unint64_t sub_2176AD100()
{
  result = qword_280BE5438;
  if (!qword_280BE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5438);
  }

  return result;
}

unint64_t sub_2176AD154()
{
  result = qword_280BE5440;
  if (!qword_280BE5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5440);
  }

  return result;
}

unint64_t sub_2176AD210()
{
  result = qword_27CB2C890;
  if (!qword_27CB2C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C890);
  }

  return result;
}

unint64_t sub_2176AD264()
{
  result = qword_280BE5420;
  if (!qword_280BE5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5420);
  }

  return result;
}

_BYTE *sub_2176AD2B8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2176AD3A0()
{
  result = qword_27CB2C898;
  if (!qword_27CB2C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C898);
  }

  return result;
}

unint64_t sub_2176AD3F8()
{
  result = qword_27CB2C8A0;
  if (!qword_27CB2C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8A0);
  }

  return result;
}

unint64_t sub_2176AD450()
{
  result = qword_280BE5428;
  if (!qword_280BE5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5428);
  }

  return result;
}

unint64_t sub_2176AD4A8()
{
  result = qword_280BE5430;
  if (!qword_280BE5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5430);
  }

  return result;
}

unint64_t sub_2176AD4FC()
{
  result = qword_280BE5458;
  if (!qword_280BE5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5458);
  }

  return result;
}

unint64_t sub_2176AD550()
{
  result = qword_280BE5418;
  if (!qword_280BE5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5418);
  }

  return result;
}

unint64_t sub_2176AD5A4()
{
  result = qword_27CB2C8B8;
  if (!qword_27CB2C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8B8);
  }

  return result;
}

uint64_t sub_2176AD5F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Storefront.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176AD744()
{
  result = qword_27CB2C8C0;
  if (!qword_27CB2C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C8C0);
  }

  return result;
}

unint64_t sub_2176AD79C()
{
  result = qword_280BE5448;
  if (!qword_280BE5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5448);
  }

  return result;
}

unint64_t sub_2176AD7F4()
{
  result = qword_280BE5450;
  if (!qword_280BE5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5450);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.id.getter()
{
  MusicLibrarySearchResponse.TopResult.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double MusicLibrarySearchResponse.TopResult.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_2172843E8(v1, v8);
  v3 = off_27822AA48[v11];
  v4 = *(&off_27822AA70 + v11);
  a1[3] = off_27822AA20[v11];
  a1[4] = v3;
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  result = *&v9;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  return result;
}

void *MusicLibrarySearchResponse.TopResult.artwork.getter@<X0>(void *a1@<X8>)
{
  sub_2172843E8(v1, v40);
  switch(v42)
  {
    case 1:
      v38[0] = v40[0];
      v38[1] = v40[1];
      v38[2] = v40[2];
      v39 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
      swift_allocObject();
      *&v31 = MEMORY[0x277D84F90];
      *(&v31 + 1) = MEMORY[0x277D84F90];
      v28 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v31, MEMORY[0x277D84F90], &unk_282959AF8);
      sub_2174C7A58(v28, __src);

      sub_217284498(v38);
      memcpy(__dst, __src, sizeof(__dst));
      break;
    case 2:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA83C(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283C08(__src);
      break;
    case 3:
      OUTLINED_FUNCTION_4_2();
      OUTLINED_FUNCTION_26_0();
      Playlist.artwork.getter(v27);
      sub_21726B8C4(__src);
      break;
    case 4:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA860(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_217283B58(__src);
      break;
    default:
      OUTLINED_FUNCTION_4_2();
      if (qword_280BE9428 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_26_0();
      sub_2176CA9A8(v3, v4, v5, v6, v7, v8, v9, v10, v30, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
      sub_21725CE44(__src);
      break;
  }

  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t MusicLibrarySearchResponse.TopResult.title.getter()
{
  v1 = sub_2172843E8(v0, &v18);
  switch(v23)
  {
    case 1:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6898 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FF0();
      OUTLINED_FUNCTION_21_4();
      sub_217284498(&v10);
      break;
    case 2:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6BC8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4204();
      OUTLINED_FUNCTION_21_4();
      sub_217283C08(&v10);
      break;
    case 3:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v10);
      break;
    case 4:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9750 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A41AC();
      OUTLINED_FUNCTION_21_4();
      sub_217283B58(&v10);
      break;
    default:
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9470 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A4380();
      OUTLINED_FUNCTION_21_4();
      sub_21725CE44(&v10);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static MusicLibrarySearchResponse.TopResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2172843E8(a1, v93);
  v4 = sub_2172843E8(a2, &v94);
  switch(v93[56])
  {
    case 1:
      v59 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v95 != 1)
      {
        sub_217284498(&v86);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v59, v60, v61, v62, v63, v64, v65, v66, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v69 = v30 && v67 == v68;
      if (v69 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v86, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v70 = OUTLINED_FUNCTION_13_4();
        v2(v70);
        OUTLINED_FUNCTION_9_3();
        sub_217284498(v71);
        if (a2)
        {
          sub_217284498(&v86);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217284498(&v78);
      }

      sub_217284498(&v86);
      goto LABEL_59;
    case 2:
      v33 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v95 != 2)
      {
        sub_217283C08(&v86);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v33, v34, v35, v36, v37, v38, v39, v40, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v43 = v30 && v41 == v42;
      if (v43 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v86, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v44 = OUTLINED_FUNCTION_13_4();
        v2(v44);
        OUTLINED_FUNCTION_9_3();
        sub_217283C08(v45);
        if (a2)
        {
          sub_217283C08(&v86);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217283C08(&v78);
      }

      sub_217283C08(&v86);
      goto LABEL_59;
    case 3:
      v46 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v95 != 3)
      {
        sub_21726B8C4(&v86);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v46, v47, v48, v49, v50, v51, v52, v53, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v56 = v30 && v54 == v55;
      if (v56 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v86, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v57 = OUTLINED_FUNCTION_13_4();
        v2(v57);
        OUTLINED_FUNCTION_9_3();
        sub_21726B8C4(v58);
        if (a2)
        {
          sub_21726B8C4(&v86);
          goto LABEL_48;
        }
      }

      else
      {
        sub_21726B8C4(&v78);
      }

      sub_21726B8C4(&v86);
      goto LABEL_59;
    case 4:
      v20 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v95 != 4)
      {
        sub_217283B58(&v86);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v30 = v30 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v86, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v31 = OUTLINED_FUNCTION_13_4();
        v2(v31);
        OUTLINED_FUNCTION_9_3();
        sub_217283B58(v32);
        if (a2)
        {
          sub_217283B58(&v86);
          goto LABEL_48;
        }
      }

      else
      {
        sub_217283B58(&v78);
      }

      sub_217283B58(&v86);
      goto LABEL_59;
    default:
      v12 = OUTLINED_FUNCTION_24_47(v4, v5, v6, v7, v8, v9, v10, v11);
      if (v95)
      {
        sub_21725CE44(&v86);
LABEL_40:
        sub_2176AEF8C(v93);
        return 0;
      }

      OUTLINED_FUNCTION_2_0(v12, v13, v14, v15, v16, v17, v18, v19, v78, v79, v80, v81, v82, v83, v84, v85, v86);
      v74 = v30 && v72 == v73;
      if (!v74 && (sub_217753058() & 1) == 0)
      {
        sub_21725CE44(&v78);
LABEL_58:
        sub_21725CE44(&v86);
LABEL_59:
        sub_217284444(v93);
        return 0;
      }

      OUTLINED_FUNCTION_9_2(&v86, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
      v75 = OUTLINED_FUNCTION_13_4();
      v2(v75);
      OUTLINED_FUNCTION_9_3();
      sub_21725CE44(v76);
      if ((a2 & 1) == 0)
      {
        goto LABEL_58;
      }

      sub_21725CE44(&v86);
LABEL_48:
      sub_217284444(v93);
      return 1;
  }
}

uint64_t MusicLibrarySearchResponse.TopResult.hash(into:)()
{
  v1 = sub_2172843E8(v0, &v33);
  switch(v38)
  {
    case 1:
      v22 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x21CEA3550](1, v22);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v27, v30);
      v23 = OUTLINED_FUNCTION_3_4();
      v24(v23);
      result = sub_217284498(&v25);
      break;
    case 2:
      v16 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x21CEA3550](2, v16);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v27, v30);
      v17 = OUTLINED_FUNCTION_3_4();
      v18(v17);
      result = sub_217283C08(&v25);
      break;
    case 3:
      v19 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x21CEA3550](3, v19);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v27, v30);
      v20 = OUTLINED_FUNCTION_3_4();
      v21(v20);
      result = sub_21726B8C4(&v25);
      break;
    case 4:
      v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x21CEA3550](4, v13);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v27, v30);
      v14 = OUTLINED_FUNCTION_3_4();
      v15(v14);
      result = sub_217283B58(&v25);
      break;
    default:
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
      MEMORY[0x21CEA3550](0, v9);
      OUTLINED_FUNCTION_66_13();
      __swift_project_boxed_opaque_existential_1(&v27, v30);
      v10 = OUTLINED_FUNCTION_3_4();
      v11(v10);
      result = sub_21725CE44(&v25);
      break;
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.hashValue.getter()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176AE338()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176AE374@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibrarySearchResponse.TopResult.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicLibrarySearchResponse.TopResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2171FF30C(a1, &v21);
  MusicCatalogSearchResponse.TopResult.init(from:)(&v21);
  if (!v2)
  {
    sub_217283E1C(v26, &v21);
    v11 = v25;
    switch(v25)
    {
      case 2:
      case 5:
      case 6:
      case 8:
        sub_217283E78(&v21);
        v12 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_217753298();
        *&v21 = 0;
        *(&v21 + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000037, 0x80000002177B5080);
        v13 = MusicCatalogSearchResponse.TopResult.description.getter();
        MEMORY[0x21CEA23B0](v13);

        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        sub_217752B08();
        v14 = sub_217752B48();
        swift_allocError();
        v16 = v15;
        (*(v6 + 16))(v15, v10, v5);
        (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
        swift_willThrow();
        (*(v6 + 8))(v10, v5);
        sub_217283E78(v26);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 3:
        v11 = 2;
        goto LABEL_7;
      case 4:
        v11 = 3;
        goto LABEL_7;
      case 7:
        v11 = 4;
        goto LABEL_7;
      default:
LABEL_7:
        sub_217283E78(v26);
        v17 = v24;
        v30 = v24;
        v19 = v22;
        v18 = v23;
        v28 = v22;
        v29 = v23;
        v27 = v21;
        *a2 = v21;
        *(a2 + 16) = v19;
        *(a2 + 32) = v18;
        *(a2 + 48) = v17;
        *(a2 + 56) = v11;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicLibrarySearchResponse.TopResult.encode(to:)()
{
  sub_2172843E8(v0, v2);
  v5[0] = v2[0];
  v5[1] = v2[1];
  v5[2] = v2[2];
  v6 = v3;
  v7 = 0x704030100uLL >> (8 * v4);
  sub_2172EF62C();
  return sub_217283E78(v5);
}

uint64_t MusicLibrarySearchResponse.TopResult.description.getter()
{
  sub_2172843E8(v0, &v25);
  switch(v30)
  {
    case 1:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Artist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217284498(v13);
      break;
    case 2:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      MusicVideo.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283C08(v11);
      break;
    case 3:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Playlist.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21726B8C4(v12);
      break;
    case 4:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      Song.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_217283B58(v10);
      break;
    default:
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      sub_217752AA8();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_27_0();
      Album.description.getter();
      OUTLINED_FUNCTION_29_31();

      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_24_1();
      sub_21725CE44(v9);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicLibrarySearchResponse.TopResult.debugDescription.getter()
{
  sub_2172843E8(v0, v7);
  switch(v7[56])
  {
    case 1:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      Artist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217284498(v5);
      break;
    case 2:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      MusicVideo.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283C08(v3);
      break;
    case 3:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      Playlist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21726B8C4(v4);
      break;
    case 4:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      Song.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_217283B58(v2);
      break;
    default:
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_25_39();
      Album.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      OUTLINED_FUNCTION_23_39();
      sub_21725CE44(v1);
      break;
  }

  return OUTLINED_FUNCTION_93();
}

double sub_2176AEB40()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0xD000000000000024, 0x80000002177B50C0, &type metadata for MusicLibrarySearchResponse.TopResult, &protocol witness table for MusicLibrarySearchResponse.TopResult, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_27CB2C8C8 = v2;
  qword_27CB2C8D8 = v3;
  unk_27CB2C8E0 = v4;
  return result;
}

uint64_t static MusicLibrarySearchResponse.TopResult.typeValue.getter()
{
  if (qword_27CB23E20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2C8C8);

  return sub_217751DE8();
}

uint64_t sub_2176AEC70()
{
  if (qword_27CB23E20 != -1)
  {
    swift_once();
  }

  xmmword_27CB2C8E8 = xmmword_27CB2C8C8;
  xmmword_27CB2C8F8 = xmmword_27CB2C8D8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.librarySearchTopResult.getter()
{
  if (qword_27CB23E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_27CB2C8E8);

  return sub_217751DE8();
}

uint64_t sub_2176AED50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  v0[1] = xmmword_217775F00;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BE6308;
  v0[2] = xmmword_280BE62F8;
  v0[3] = v1;
  v2 = qword_280BE6270;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BE6288;
  v0[4] = xmmword_280BE6278;
  v0[5] = v3;
  v4 = qword_280BE6378;
  sub_217751DE8();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280BE6390;
  v0[6] = xmmword_280BE6380;
  v0[7] = v5;
  v6 = qword_280BE6220;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = xmmword_280BE6238;
  v0[8] = xmmword_280BE6228;
  v0[9] = v7;
  v8 = qword_280BEB138;
  sub_217751DE8();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = xmmword_280BEB150;
  v0[10] = xmmword_280BEB140;
  v0[11] = v9;
  qword_27CB2C908 = v0;

  return sub_217751DE8();
}

uint64_t static MusicLibrarySearchResponse.TopResult.supportedTypeValues.getter()
{
  if (qword_27CB23E30 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2176AEF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C910, &qword_217794740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176AEFF8()
{
  result = qword_27CB2C918;
  if (!qword_27CB2C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C918);
  }

  return result;
}

uint64_t sub_2176AF058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2176AF094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2176AF0E4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 56) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for _MusicLibraryMapping(_BYTE *result, int a2, int a3)
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

BOOL SongPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  v0 = type metadata accessor for SongPropertyProvider();
  OUTLINED_FUNCTION_0_139(v0);
  v2 = *&v1 & 0x100FFLL;
  return !v3 && v2 == 65539;
}

uint64_t SongPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  v0 = type metadata accessor for SongPropertyProvider();
  OUTLINED_FUNCTION_0_139(v0);
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

BOOL SongPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for SongPropertyProvider();
  v2 = *(v0 + *(v1 + 196));
  v3 = v0 + *(v1 + 292);
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

BOOL SongPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  v1 = (v0 + *(type metadata accessor for SongPropertyProvider() + 100));
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

unint64_t Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
    case 8:
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000029;
      break;
    case 2:
    case 0x10:
      result = 0xD000000000000025;
      break;
    case 3:
    case 0x13:
      result = 0xD00000000000002BLL;
      break;
    case 4:
    case 9:
      result = 0xD000000000000024;
      break;
    case 5:
    case 0xA:
    case 0xB:
    case 0x12:
    case 0x1C:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD000000000000032;
      break;
    case 7:
      result = 0xD000000000000028;
      break;
    case 0xC:
    case 0xD:
    case 0x1D:
      result = 0xD000000000000021;
      break;
    case 0xE:
      result = 0xD000000000000023;
      break;
    case 0xF:
    case 0x22:
      result = 0xD00000000000001FLL;
      break;
    case 0x14:
    case 0x17:
    case 0x21:
      result = 0xD00000000000002DLL;
      break;
    case 0x15:
      result = 0xD000000000000033;
      break;
    case 0x16:
      result = 0xD000000000000031;
      break;
    case 0x18:
    case 0x1B:
      result = 0xD000000000000027;
      break;
    case 0x19:
    case 0x20:
      result = 0xD00000000000001BLL;
      break;
    case 0x1F:
      result = 0xD00000000000001DLL;
      break;
    case 0x23:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

double sub_2176AF64C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 40))(v12, a1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a4 + 96) = 0;
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t Playlist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v254 = a4;
  v263 = a3;
  v258 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_6_1();
  v246 = v12 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14, v15);
  v257 = &v242 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_6_1();
  v256 = v22 - v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_99();
  v260 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_99();
  v255 = v29;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_99();
  v261 = v32;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v33, v34);
  v259 = &v242 - v35;
  v36 = sub_217751F98();
  v244 = *(v36 - 8);
  v245 = v36;
  v37 = *(v244 + 64);
  MEMORY[0x28223BE20](v36, v38);
  v243 = &v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25BF8, &unk_217794A10);
  v41 = OUTLINED_FUNCTION_45_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v242 - v45;
  v47 = type metadata accessor for PlaylistPropertyProvider();
  OUTLINED_FUNCTION_41_0(v47);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_6_1();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v242 - v57;
  memcpy(v276, a1, 0x161uLL);
  if (([a2 respondsToSelector_] & 1) != 0 && (v59 = objc_msgSend(a2, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v60 = v59;
    v61 = sub_217751D98();
  }

  else
  {
    v61 = sub_217751DC8();
  }

  v265 = sub_21729EF08(v61);

  memcpy(v271, a1, 0x161uLL);
  if (qword_280BE8A38 != -1)
  {
    swift_once();
  }

  v269[0] = qword_280BE8A40;
  v269[1] = *algn_280BE8A48;
  LOBYTE(v269[2]) = byte_280BE8A50;
  v62 = qword_280BE8AA8;
  sub_217751DE8();
  if (v62 != -1)
  {
    swift_once();
  }

  *v267 = qword_280BE8AB0;
  *&v267[8] = *algn_280BE8AB8;
  v267[16] = byte_280BE8AC0;
  sub_217751DE8();
  v277.value.rawValue._countAndFlagsBits = v269;
  v277.value.rawValue._object = v267;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v270, v277, v278);

  object = v270.id.rawValue._object;
  countAndFlagsBits = v270.type.rawValue._countAndFlagsBits;
  v63 = v270.type.rawValue._object;
  isLibraryType = v270.type.isLibraryType;
  v253 = v270.href.value._countAndFlagsBits;
  v64 = v270.href.value._object;
  sub_2171F5170(v263, &v270, &qword_27CB27590, &qword_21776ADF0);
  v262 = a2;
  if (!v270.type.rawValue._object)
  {
    sub_2171F0790(&v270, &qword_27CB27590, &qword_21776ADF0);
    memset(v271, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v271, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v271[1] + 1))
  {
LABEL_16:
    sub_2171F0790(v271, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v271, &v272);
  v65 = v274;
  v66 = v275;
  __swift_project_boxed_opaque_existential_1(&v272, v274);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v65, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
    sub_2173510D8(v46, v54);
    sub_217350E10(v54, v58);
    memcpy(v271, v276, 0x161uLL);
    v67 = v47[67];
    memcpy(v267, (v54 + v67), sizeof(v267));
    memcpy(v266, (v54 + v67), sizeof(v266));
    sub_217269EF4(v267, &v270);
    MusicIdentifierSet.union(_:)();
    memcpy(v269, v266, 0x161uLL);
    sub_217269F50(v269);
    sub_21735113C(v54);
    v68 = v47[67];
    memcpy(v271, &v58[v68], 0x161uLL);
    sub_217269F50(v271);
    memcpy(&v58[v68], &v270, 0x161uLL);
    v69 = &v58[v47[68]];
    v70 = *(v69 + 1);
    sub_217751DE8();

    *v69 = countAndFlagsBits;
    *(v69 + 1) = v63;
    v69[16] = isLibraryType;
    v71 = &v58[v47[69]];
    v72 = *(v71 + 1);

    *v71 = v253;
    *(v71 + 1) = v64;
    __swift_destroy_boxed_opaque_existential_1(&v272);
    v73 = v262;
    v74 = v259;
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
  sub_2171F0790(v46, &qword_27CB25BF8, &unk_217794A10);
  __swift_destroy_boxed_opaque_existential_1(&v272);
LABEL_17:
  sub_217269EF4(v276, v271);
  v250 = v64;
  sub_217751DE8();
  sub_217751DE8();
  v75 = OUTLINED_FUNCTION_10_67();
  v249 = OUTLINED_FUNCTION_10_67();
  v248 = OUTLINED_FUNCTION_10_67();
  v247 = OUTLINED_FUNCTION_10_67();
  sub_2172A497C(v271);
  memcpy(v58, v271, 0x221uLL);
  *(v58 + 69) = 0;
  memcpy(v58 + 560, v271, 0x221uLL);
  sub_21733B8A4(&v270);
  memcpy(v58 + 1112, &v270, 0xE8uLL);
  *(v58 + 168) = 0;
  *(v58 + 1352) = 0u;
  v58[1368] = 1;
  *(v58 + 86) = 0u;
  *(v58 + 174) = 1;
  *(v58 + 1400) = 0u;
  *(v58 + 1416) = 0u;
  *(v58 + 1432) = 0u;
  *(v58 + 181) = 0;
  v58[1456] = 2;
  *(v58 + 1464) = 0u;
  *(v58 + 1480) = 0u;
  *(v58 + 187) = 0;
  *(v58 + 376) = 33686018;
  *(v58 + 754) = 514;
  v58[1510] = 5;
  v76 = v47[22];
  v77 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v58[v76], 1, 1, v77);
  memcpy(&v58[v47[23]], v271, 0x221uLL);
  OUTLINED_FUNCTION_19_19(v47[24]);
  v78 = &v58[v47[25]];
  *(v78 + 14) = 0;
  *(v78 + 5) = 0u;
  *(v78 + 6) = 0u;
  *(v78 + 3) = 0u;
  *(v78 + 4) = 0u;
  *(v78 + 1) = 0u;
  *(v78 + 2) = 0u;
  *v78 = 0u;
  OUTLINED_FUNCTION_19_19(v47[26]);
  OUTLINED_FUNCTION_19_19(v47[27]);
  v58[v47[28]] = 2;
  v79 = &v58[v47[29]];
  *v79 = 0;
  v79[8] = 1;
  memcpy(&v58[v47[30]], v271, 0x221uLL);
  *&v58[v47[31]] = 0;
  v80 = v47[32];
  v81 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v58[v80], 1, 1, v81);
  OUTLINED_FUNCTION_19_19(v47[33]);
  OUTLINED_FUNCTION_19_19(v47[34]);
  OUTLINED_FUNCTION_8_83(v47[35]);
  v58[v47[36]] = 3;
  v58[v47[37]] = 2;
  v58[v47[38]] = 5;
  v58[v47[39]] = 7;
  v82 = &v58[v47[40]];
  *v82 = 0;
  v82[8] = 1;
  OUTLINED_FUNCTION_8_83(v47[41]);
  OUTLINED_FUNCTION_8_83(v47[42]);
  OUTLINED_FUNCTION_8_83(v47[43]);
  v58[v47[44]] = 2;
  v58[v47[45]] = 2;
  v58[v47[46]] = 2;
  v58[v47[47]] = 2;
  v58[v47[48]] = 2;
  v83 = &v58[v47[49]];
  *v83 = 0u;
  *(v83 + 1) = 0u;
  v84 = &v58[v47[50]];
  *v84 = 0;
  v84[8] = 1;
  v58[v47[51]] = 10;
  OUTLINED_FUNCTION_0_58(v47[52], 0);
  OUTLINED_FUNCTION_0_58(v47[53], v85);
  OUTLINED_FUNCTION_0_58(v47[54], v86);
  OUTLINED_FUNCTION_0_58(v47[55], v87);
  OUTLINED_FUNCTION_0_58(v47[56], v88);
  OUTLINED_FUNCTION_0_58(v47[57], v89);
  OUTLINED_FUNCTION_0_58(v47[58], v90);
  OUTLINED_FUNCTION_0_58(v47[59], v91);
  v92 = &v58[v47[60]];
  *v92 = xmmword_2177586D0;
  *(v92 + 2) = 0;
  *(v92 + 3) = 0;
  OUTLINED_FUNCTION_19_19(v47[61]);
  *&v58[v47[62]] = 0;
  v93 = &v58[v47[63]];
  *(v93 + 6) = v94;
  *(v93 + 7) = v94;
  *(v93 + 4) = v94;
  *(v93 + 5) = v94;
  *(v93 + 2) = v94;
  *(v93 + 3) = v94;
  *v93 = v94;
  *(v93 + 1) = v94;
  v95 = &v58[v47[64]];
  *(v95 + 12) = 0;
  *(v95 + 4) = v94;
  *(v95 + 5) = v94;
  *(v95 + 2) = v94;
  *(v95 + 3) = v94;
  *v95 = v94;
  *(v95 + 1) = v94;
  v96 = &v58[v47[65]];
  *(v96 + 4) = 0;
  *v96 = v94;
  *(v96 + 1) = v94;
  if (qword_280BE8800 != -1)
  {
    swift_once();
  }

  v97 = qword_280C02598;
  v73 = v262;
  v74 = v259;
  if (qword_280C02598 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v241 = sub_217752D28();
    v98 = v250;

    object = v97;
    v97 = v241;
    v74 = v259;
    v73 = v262;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v98 = v250;
  }

  *&v58[v47[66]] = v97;
  v72 = &v58[v47[69]];
  memcpy(&v58[v47[67]], v276, 0x161uLL);
  v99 = &v58[v47[68]];
  *v99 = countAndFlagsBits;
  *(v99 + 1) = v63;
  v99[16] = isLibraryType;
  *v72 = v253;
  *(v72 + 1) = v98;
  *&v58[v47[70]] = v75;
  v100 = v248;
  *&v58[v47[71]] = v249;
  *&v58[v47[72]] = v100;
  *&v58[v47[73]] = v247;
LABEL_22:
  memset(v266, 0, 40);
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
  {
    OUTLINED_FUNCTION_6_90();
    memcpy(v271, v276, 0x161uLL);
    v63[2](&v270, v271, v73, v263, v254, v72, v63);

    sub_2171F0790(v266, &qword_27CB24BA8, &unk_217772FF0);
    *v266 = v270.id;
    *&v266[16] = v270.type.rawValue;
    *&v266[32] = *&v270.type.isLibraryType;
  }

  else
  {
  }

  sub_2174AFB54(v73, &v272);
  if (v274)
  {
    sub_2171F3F0C(&v272, v267);
    sub_2171FF30C(v267, v271);
    v270.id.rawValue._countAndFlagsBits = 1;
    memset(&v270.id.rawValue._object, 0, 24);
    Artwork.init(_:alternateText:existingColorAnalysis:)(v271, 0, 0, &v270, v269);
    memcpy(&v270, v269, 0x221uLL);
    nullsub_1(&v270, v101);
    memcpy(v271, v58, 0x221uLL);
    sub_2171F0790(v271, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v58, &v270, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v267);
  }

  else
  {
    sub_2171F0790(&v272, &qword_27CB28308, &qword_21776C430);
  }

  v102 = v255;
  if (!*(v58 + 69))
  {
    v103 = sub_2172A3894(31, v265);
    if ((v104 & 1) == 0)
    {
      v105 = [objc_opt_self() audioTraitsForRawValue_];
      v58[1506] = v105 & 1;
      sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      *(v58 + 69) = sub_217659CB4(v105);
    }
  }

  swift_getKeyPath();
  if (v58[v47[44]] == 2)
  {
    v106 = sub_2172A38E0(8, v265);

    if (v106 != 2)
    {
      v107 = v47[44];
      v58[v107] = (v106 & 1) != 0;
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  v109 = v265;
  sub_2174ADF0C();

  sub_2172A393C(1, v109);
  if (v110 >= 2)
  {
    OUTLINED_FUNCTION_6_90();
    v111 = v102;
    v112 = v74;
    v113 = v243;
    sub_217751F88();
    OUTLINED_FUNCTION_117_0();
    v114 = sub_217751F58();
    v116 = v115;
    sub_217283988(v58, KeyPath);
    v117 = v113;
    v74 = v112;
    v102 = v111;
    (*(v244 + 8))(v117, v245);
    if (v116 >> 60 != 15)
    {
      v118 = sub_217751348();
      v119 = *(v118 + 48);
      v120 = *(v118 + 52);
      swift_allocObject();
      v121 = sub_217751338();
      sub_2174AFD08();
      sub_217751308();

      sub_217275680(v114, v116);
      memcpy(v267, v269, 0xE8uLL);
      sub_2172A38F8(25, v265);
      if (v122)
      {
        OUTLINED_FUNCTION_6_90();
        memcpy(v271, v267, 0xE8uLL);
        Artwork.init(coverArtworkRecipe:name:)(v271, v121, 0, &v270);
        memcpy(v271, v58 + 560, 0x221uLL);
        sub_2171F0790(v271, &qword_27CB24400, &unk_21775E9A0);
        memcpy(v58 + 560, &v270, 0x221uLL);
      }

      else
      {
        sub_21735129C(v267);
      }
    }
  }

  if (!*(v58 + 169))
  {
    v123 = sub_2174AAB6C(35, 2, v265);
    if (v124)
    {
      *(v58 + 168) = v123;
      *(v58 + 169) = v124;
    }
  }

  sub_2172A3910(v265, v74);
  object = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v74, 1, object) != 1)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v125, v126, v127, v128);
    sub_2171F0790(&v58[v47[42]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v129, v130, v131, v132);
  }

  sub_2171F0790(v74, &qword_27CB241C0, &qword_217759480);
  v133 = sub_2172A3894(3, v265);
  if ((v134 & 1) == 0)
  {
    *(v58 + 170) = v133;
    v58[1368] = 0;
  }

  v135 = sub_2172A38F8(4, v265);
  if (v136)
  {
    v137 = v135;
    v138 = v136;
    v139 = &v58[v47[34]];
    v140 = *(v139 + 1);

    *v139 = v137;
    *(v139 + 1) = v138;
  }

  sub_2172A3910(v265, v102);
  OUTLINED_FUNCTION_29_42(v102);
  if (!v141)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v142, v143, v144, v145);
    sub_2171F0790(&v58[v47[35]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v146, v147, v148, v149);
  }

  sub_2171F0790(v102, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v150 = qword_280BE8048;
  v151 = unk_280BE8050;
  v152 = byte_280BE8058;
  v153 = qword_280BE8060;
  v154 = unk_280BE8068;
  v155 = byte_280BE8070;
  *(&v271[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v271[2] = sub_2171FEF88();
  v156 = swift_allocObject();
  *&v271[0] = v156;
  *(v156 + 16) = v150;
  *(v156 + 24) = v151;
  *(v156 + 32) = v152;
  *(v156 + 40) = v153;
  *(v156 + 48) = v154;
  *(v156 + 56) = v155;
  LOBYTE(v150) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v271);
  v157 = v256;
  v158 = v260;
  if (v150)
  {
    sub_2172A38E0(12, v265);
    OUTLINED_FUNCTION_7_1();
    if (!v141)
    {
      v160 = v159;
      sub_2172A38E0(13, v265);
      OUTLINED_FUNCTION_7_1();
      if (!v141)
      {
        if (v160)
        {
          if (v161)
          {
            v163 = 0;
          }

          else
          {
            v163 = 2;
          }
        }

        else
        {
          v163 = v161 & 1;
        }

        goto LABEL_72;
      }
    }

    sub_2172A38E0(13, v265);
    OUTLINED_FUNCTION_7_1();
    if (!v141 && (v162 & 1) != 0)
    {
      v163 = 1;
LABEL_72:
      v58[v47[36]] = v163;
      goto LABEL_73;
    }

    sub_2172A38E0(12, v265);
    OUTLINED_FUNCTION_7_1();
    if (!v141 && (v164 & 1) != 0)
    {
      v163 = 2;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (v58[1508] == 2)
  {
    sub_2172A38E0(10, v265);
    OUTLINED_FUNCTION_7_1();
    if (!v141)
    {
      v58[1508] = v165;
    }
  }

  sub_2172A38E0(11, v265);
  OUTLINED_FUNCTION_7_1();
  v167 = v262;
  if (!v141)
  {
    v58[1509] = v166;
  }

  sub_2172A38E0(6, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[1504] = v168;
  }

  sub_2172A38E0(7, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[1505] = v169;
  }

  sub_2172A38E0(14, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[v47[37]] = v170;
  }

  sub_2172A38E0(16, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[v47[47]] = v171;
  }

  sub_2172A38E0(15, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[v47[46]] = v172;
  }

  sub_2172A38E0(17, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[v47[45]] = v173;
  }

  sub_2172A38E0(18, v265);
  OUTLINED_FUNCTION_7_1();
  if (!v141)
  {
    v58[v47[48]] = v174;
  }

  v175 = sub_2172A3894(19, v265);
  if ((v176 & 1) == 0)
  {
    v177 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v177 < 5)
    {
      v58[v47[38]] = v177;
    }
  }

  swift_getKeyPath();
  v178 = v265;
  v179 = v58;
  sub_2174AE18C();

  v180 = sub_2172A3894(21, v178);
  if ((v181 & 1) == 0)
  {
    v179 = v180;
    v182 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v183 = &v58[v47[40]];
    *v183 = v182 & 0x7F;
    v183[8] = 0;
  }

  sub_2172A3894(32, v265);
  if ((v184 & 1) == 0)
  {
    v185 = [OUTLINED_FUNCTION_30_40() playlistTypeForRawValue_];
    if ((v185 - 5) < 4)
    {
      v58[1510] = 0x2040100u >> (8 * (v185 - 5));
    }
  }

  swift_getKeyPath();
  v186 = v265;
  sub_2174AE218();

  sub_2172A3910(v186, v158);
  OUTLINED_FUNCTION_29_42(v158);
  if (!v141)
  {
    OUTLINED_FUNCTION_20_51();
    sub_2171F5170(v187, v188, v189, v190);
    sub_2171F0790(&v58[v47[43]], &qword_27CB241C0, &qword_217759480);
    v158 = v260;
    OUTLINED_FUNCTION_20_51();
    sub_2176B29B4(v191, v192, v193, v194);
  }

  sub_2171F0790(v158, &qword_27CB241C0, &qword_217759480);
  sub_2172A3910(v265, v157);
  OUTLINED_FUNCTION_29_42(v157);
  if (!v141)
  {
    v158 = &qword_217759480;
    OUTLINED_FUNCTION_117_0();
    sub_2171F5170(v195, v196, v197, v198);
    sub_2171F0790(&v58[v47[41]], &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_117_0();
    sub_2176B29B4(v199, v200, v201, v202);
  }

  sub_2171F0790(v157, &qword_27CB241C0, &qword_217759480);
  v203 = &v58[v47[24]];
  if (!v203[1])
  {
    v204 = sub_2172A38F8(25, v265);
    if (v205)
    {
      *v203 = v204;
      v203[1] = v205;
    }
  }

  if (v276[18])
  {
    v268 = *&v276[19];
    sub_217751DE8();
    v206 = sub_2172A3894(26, v265);
    if (v207)
    {
      sub_2176B2960(&v268);
    }

    else
    {
      *&v271[0] = v206;
      sub_217752FC8();
      OUTLINED_FUNCTION_6_90();
      v208 = v268;
      v209 = &v58[v47[49]];
      v210 = v209[2];
      v211 = v209[3];
      sub_2172B8404(*v209, v209[1]);
      *v209 = v271;
      v209[1] = v158;
      *(v209 + 1) = v208;
      v167 = v262;
    }
  }

  v212 = &v58[v47[26]];
  if (!v212[1])
  {
    v213 = sub_2172A38F8(27, v265);
    if (v214)
    {
      *v212 = v213;
      v212[1] = v214;
    }
  }

  v215 = &v58[v47[27]];
  if (!v215[1])
  {
    v216 = sub_2172A38F8(28, v265);
    if (v217)
    {
      *v215 = v216;
      v215[1] = v217;
    }
  }

  v218 = v47[28];
  if (v58[v218] == 2)
  {
    sub_2172A3894(31, v265);
    if ((v219 & 1) == 0)
    {
      v58[v218] = ([OUTLINED_FUNCTION_30_40() playlistTraitsForRawValue_] >> 8) & 1;
    }
  }

  sub_2174AFB54(v167, v267);
  if (*&v267[24])
  {
    sub_2171F3F0C(v267, v269);
    sub_2171FF30C(v269, v271);
    v272 = 1uLL;
    v274 = 0;
    v273 = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v271, 0, 0, &v272, &v270);
    nullsub_1(&v270, v220);
    v215 = v47[30];
    memcpy(v271, v215 + v58, 0x221uLL);
    sub_2171F0790(v271, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v215 + v58, &v270, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v269);
  }

  else
  {
    sub_2171F0790(v267, &qword_27CB28308, &qword_21776C430);
  }

  sub_2172A3894(32, v265);
  if ((v221 & 1) == 0)
  {
    v222 = [OUTLINED_FUNCTION_30_40() playlistTypeForRawValue_];
    if (v222 >= 0xA)
    {
      v223 = 0;
    }

    else
    {
      v223 = v222;
    }

    v58[v47[51]] = v223;
  }

  sub_2172A3894(33, v265);
  if ((v224 & 1) == 0)
  {
    v225 = [OUTLINED_FUNCTION_30_40() editableComponentsForRawValue_];
    v226 = &v58[v47[50]];
    *v226 = v225 & 3;
    v226[8] = 0;
  }

  v227 = v257;
  sub_2172A3868(v265, v257);

  v228 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v227, 1, v228) != 1)
  {
    OUTLINED_FUNCTION_117_0();
    sub_2171F5170(v229, v230, v231, v232);
    sub_2171F0790(&v58[v47[32]], &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_117_0();
    sub_2176B29B4(v233, v234, v235, v236);
  }

  sub_2171F0790(v227, &unk_27CB277C0, &qword_217758DC0);
  swift_getKeyPath();
  sub_2174AE924();

  sub_217269F50(v276);
  swift_getKeyPath();
  sub_2172A54C4();

  v237 = swift_getKeyPath();
  if (qword_280BE91D8 != -1)
  {
    swift_once();
  }

  sub_2176B1110(v237, v266, qword_280BE91E0, &qword_27CB25638, &unk_21775EA10, &qword_27CB25610, &qword_21775D540);

  v238 = swift_getKeyPath();
  if (qword_280BE9188 != -1)
  {
    swift_once();
  }

  sub_2176B1110(v238, v266, qword_280BE9190, &qword_27CB25630, &qword_21775D568, &qword_27CB25608, &unk_21775D530);

  *(&v271[1] + 1) = v47;
  *&v271[2] = &protocol witness table for PlaylistPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v271);
  sub_217350E10(v58, boxed_opaque_existential_0);
  Playlist.init(propertyProvider:)(v271, v258);
  swift_unknownObjectRelease();
  sub_2171F0790(v263, &qword_27CB27590, &qword_21776ADF0);
  sub_2171F0790(v266, &qword_27CB24BA8, &unk_217772FF0);
  return sub_21735113C(v58);
}

uint64_t sub_2176B1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_2171F5170(a2, __dst, &qword_27CB24BA8, &unk_217772FF0);
  if (__dst[3])
  {
    sub_2176AF64C(a3, a4, a5, __src);
    sub_217350E74(__dst);
    if (*&__src[88])
    {
      memcpy(__dst, __src, sizeof(__dst));
      return swift_setAtWritableKeyPath();
    }
  }

  else
  {
    sub_2171F0790(__dst, &qword_27CB24BA8, &unk_217772FF0);
    memset(__src, 0, sizeof(__src));
  }

  v12 = swift_readAtKeyPath();
  sub_2171F5170(v13, __dst, a6, a7);
  v12(&v15, 0);
  if (*&__src[88])
  {
    sub_2171F0790(__src, a6, a7);
  }

  return swift_setAtWritableKeyPath();
}

uint64_t Playlist.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v1 = OUTLINED_FUNCTION_45_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v345 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_6_1();
  v347 = v12 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_99();
  v346 = v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_99();
  v345 = v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v345 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v345 - v26;
  v28 = sub_217751F98();
  v29 = OUTLINED_FUNCTION_45_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  sub_2172A5038();
  v354 = sub_217751DC8();
  Playlist.artwork.getter(v355);
  memcpy(v356, v355, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v356) == 1)
  {
    memset(v353, 0, sizeof(v353));
  }

  else
  {
    memcpy(v349, v356, 0x221uLL);
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v353);
    sub_2171F0790(v355, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D4DC(v353, 0);
  if (qword_280BE80E0 != -1)
  {
    swift_once();
  }

  v348 = v6;
  OUTLINED_FUNCTION_16_69();
  sub_2176CB1B4(v33, v34, v35, v36, v37, v38, v39, v40, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13]);
  memcpy(v352, v351, sizeof(v352));
  memcpy(v349, v351, 0xE8uLL);
  if (sub_21726A450(v349) == 1)
  {
    goto LABEL_8;
  }

  v41 = sub_217751378();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_217751368();
  memcpy(v350, v349, 0xE8uLL);
  sub_21763E14C();
  v210 = sub_217751358();
  v212 = v211;
  sub_217751F88();
  v213 = sub_217751F68();
  v215 = v214;
  sub_217275694(v210, v212);

  sub_2171F0790(v352, &qword_27CB25BE0, &qword_217794B20);
  if (!v215)
  {
LABEL_8:
    memset(v350, 0, 32);
    v44 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    *&v351[24] = sub_217215924(0, &qword_280BE2210, 0x277CBEB68);
    *v351 = v44;
    if (*(&v350[1] + 1))
    {
      sub_2171F0790(v350, &qword_27CB2AD40, &qword_2177583F0);
    }
  }

  else
  {
    *(&v350[1] + 1) = MEMORY[0x277D837D0];
    *&v350[0] = v213;
    *(&v350[0] + 1) = v215;
    sub_2172124CC(v350, v351);
  }

  v45 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v45, 1);
  if (qword_280BE9330 != -1)
  {
    swift_once();
  }

  sub_2176CA4A8(qword_280C02680, v46, v47, v48, v49, v50, v51, v52, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
  v53 = sub_2177517D8();
  OUTLINED_FUNCTION_29_1(v27);
  if (v77)
  {
    sub_2171F0790(v27, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_7_80();
  }

  else
  {
    OUTLINED_FUNCTION_28_50();
    OUTLINED_FUNCTION_6_99();
    (*(v54 + 32))();
  }

  v55 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v55, 2);
  if (qword_280BE80B8 != -1)
  {
    swift_once();
  }

  v56 = sub_2172A47B0();
  if (v57)
  {
    v56 = OUTLINED_FUNCTION_12_60();
    *&v351[8] = 0;
  }

  else
  {
    v58 = MEMORY[0x277D83B88];
  }

  *v351 = v56;
  v59 = OUTLINED_FUNCTION_3_115(v58);
  sub_21729D4DC(v59, 3);
  if (qword_280BE9368 != -1)
  {
    swift_once();
  }

  sub_2176CA4A8(qword_280C026A0, v60, v61, v62, v63, v64, v65, v66, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
  OUTLINED_FUNCTION_29_1(v23);
  if (v77)
  {
    sub_2171F0790(v23, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_7_80();
  }

  else
  {
    OUTLINED_FUNCTION_28_50();
    OUTLINED_FUNCTION_6_99();
    (*(v67 + 32))();
  }

  v68 = OUTLINED_FUNCTION_4_119();
  sub_21729D4DC(v68, 9);
  if (qword_280BE9388 != -1)
  {
    swift_once();
  }

  v76 = qword_280C026A8;
  sub_2176CB248(qword_280C026A8, v69, v70, v71, v72, v73, v74, v75, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
  v77 = (v351[0] & 1) != 0 || v351[0] == 2;
  v78 = MEMORY[0x277D839B0];
  v79 = !v77;
  *&v351[24] = MEMORY[0x277D839B0];
  v80 = OUTLINED_FUNCTION_2_127(v79);
  sub_21729D4DC(v80, 5);
  if (qword_280BE80A8 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023F0, v81, v82, v83, v84, v85, v86, v87, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v89 = OUTLINED_FUNCTION_1_129(v88);
  sub_21729D4DC(v89, 6);
  if (qword_280BE80F0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02420, v90, v91, v92, v93, v94, v95, v96, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v98 = OUTLINED_FUNCTION_1_129(v97);
  sub_21729D4DC(v98, 7);
  sub_2176CB248(v76, v99, v100, v101, v102, v103, v104, v105, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
  *&v351[24] = v78;
  v106 = OUTLINED_FUNCTION_2_127(v351[0] & 1);
  sub_21729D4DC(v106, 8);
  if (qword_280BE92E8 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02670, v107, v108, v109, v110, v111, v112, v113, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  OUTLINED_FUNCTION_7_1();
  if (v77)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v351[0] = v114 & 1;
    v115 = MEMORY[0x277D839B0];
  }

  v116 = OUTLINED_FUNCTION_3_115(v115);
  sub_21729D4DC(v116, 10);
  if (qword_280BE80D0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02410, v117, v118, v119, v120, v121, v122, v123, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v125 = OUTLINED_FUNCTION_1_129(v124);
  sub_21729D4DC(v125, 11);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v126 = qword_280BE8048;
  v127 = unk_280BE8050;
  v128 = byte_280BE8058;
  v129 = qword_280BE8060;
  v130 = unk_280BE8068;
  v131 = byte_280BE8070;
  *&v351[24] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v351[32] = sub_2171FEF88();
  v132 = swift_allocObject();
  *v351 = v132;
  *(v132 + 16) = v126;
  *(v132 + 24) = v127;
  *(v132 + 32) = v128;
  *(v132 + 40) = v129;
  *(v132 + 48) = v130;
  *(v132 + 56) = v131;
  LOBYTE(v126) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v351);
  v133 = MEMORY[0x277D837D0];
  v134 = v345;
  if (v126)
  {
    if (qword_280BE9320 != -1)
    {
      OUTLINED_FUNCTION_123();
    }

    OUTLINED_FUNCTION_16_69();
    sub_2176CB25C(v135, v136, v137, v138, v139, v140, v141, v142, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
    *&v351[24] = v78;
    v143 = OUTLINED_FUNCTION_2_127(v351[0] == 2);
    sub_21729D4DC(v143, 12);
  }

  if (qword_280BE9320 != -1)
  {
    OUTLINED_FUNCTION_123();
  }

  OUTLINED_FUNCTION_16_69();
  sub_2176CB25C(v144, v145, v146, v147, v148, v149, v150, v151, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
  *&v351[24] = v78;
  v152 = OUTLINED_FUNCTION_2_127(v351[0] == 1);
  sub_21729D4DC(v152, 13);
  if (qword_280BE9358 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C02698, v153, v154, v155, v156, v157, v158, v159, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  OUTLINED_FUNCTION_7_1();
  if (v77)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v351[0] = v160 & 1;
    v161 = MEMORY[0x277D839B0];
  }

  v162 = OUTLINED_FUNCTION_3_115(v161);
  sub_21729D4DC(v162, 14);
  if (qword_280BE9198 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C025B0, v163, v164, v165, v166, v167, v168, v169, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v171 = OUTLINED_FUNCTION_1_129(v170);
  sub_21729D4DC(v171, 16);
  if (qword_280BE8090 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023E0, v172, v173, v174, v175, v176, v177, v178, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v180 = OUTLINED_FUNCTION_1_129(v179);
  sub_21729D4DC(v180, 15);
  if (qword_280BE80A0 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023E8, v181, v182, v183, v184, v185, v186, v187, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  OUTLINED_FUNCTION_7_1();
  if (v77)
  {
    OUTLINED_FUNCTION_13_66();
  }

  else
  {
    v351[0] = v188 & 1;
    v189 = MEMORY[0x277D839B0];
  }

  v190 = OUTLINED_FUNCTION_3_115(v189);
  sub_21729D4DC(v190, 17);
  if (qword_280BE8080 != -1)
  {
    swift_once();
  }

  sub_2172A40F0(qword_280C023D8, v191, v192, v193, v194, v195, v196, v197, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
  v199 = OUTLINED_FUNCTION_1_129(v198);
  sub_21729D4DC(v199, 18);
  if (qword_280BE9250 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_69();
  sub_2176CB270(v200, v201, v202, v203, v204, v205, v206, v207, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
  v208 = v351[0];
  v209 = v346;
  switch(v351[0])
  {
    case 1:
      v208 = 1;
      goto LABEL_77;
    case 2:
      v208 = 2;
      goto LABEL_77;
    case 3:
      v208 = 3;
      goto LABEL_77;
    case 4:
      v208 = 4;
      goto LABEL_77;
    case 5:
      OUTLINED_FUNCTION_7_80();
      goto LABEL_78;
    default:
LABEL_77:
      v216 = [objc_opt_self() rawValueForKeepLocalEnabledState_];
      OUTLINED_FUNCTION_25_55(v216);
LABEL_78:
      v217 = OUTLINED_FUNCTION_4_119();
      sub_21729D4DC(v217, 19);
      if (qword_280BE9248 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_16_69();
      sub_2176CB284(v218, v219, v220, v221, v222, v223, v224, v225, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
      v226 = v351[0];
      switch(v351[0])
      {
        case 1:
          v226 = 1;
          goto LABEL_89;
        case 2:
          v226 = 2;
          goto LABEL_89;
        case 3:
          v226 = 3;
          goto LABEL_89;
        case 4:
          v226 = 4;
          goto LABEL_89;
        case 5:
          v226 = 5;
          goto LABEL_89;
        case 6:
          v226 = 6;
          goto LABEL_89;
        case 7:
          OUTLINED_FUNCTION_7_80();
          goto LABEL_90;
        default:
LABEL_89:
          v227 = [objc_opt_self() rawValueForKeepLocalManagedStatus_];
          OUTLINED_FUNCTION_25_55(v227);
LABEL_90:
          v228 = v347;
          v229 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v229, 20);
          if (qword_280BE9220 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CB298(v230, v231, v232, v233, v234, v235, v236, v237, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
          if (v351[8])
          {
            v238 = OUTLINED_FUNCTION_12_60();
            *&v351[8] = 0;
          }

          else
          {
            *&v350[0] = *v351;
            v238 = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
            v239 = MEMORY[0x277D83B88];
          }

          *v351 = v238;
          v240 = OUTLINED_FUNCTION_3_115(v239);
          sub_21729D4DC(v240, 21);
          if (qword_280BE92C8 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02658, v241, v242, v243, v244, v245, v246, v247, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
          OUTLINED_FUNCTION_29_1(v134);
          if (v77)
          {
            sub_2171F0790(v134, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            *&v351[24] = sub_217751568();
            __swift_allocate_boxed_opaque_existential_0(v351);
            if (qword_280BE8910 != -1)
            {
              swift_once();
            }

            v248 = type metadata accessor for CloudFormatter();
            __swift_project_value_buffer(v248, qword_280BE8918);
            CloudFormatter.dateComponents(from:)();
            OUTLINED_FUNCTION_6_99();
            (*(v249 + 8))(v134, v53);
          }

          v250 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v250, 22);
          if (qword_280BE9350 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02690, v251, v252, v253, v254, v255, v256, v257, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
          OUTLINED_FUNCTION_29_1(v209);
          if (v77)
          {
            sub_2171F0790(v209, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            OUTLINED_FUNCTION_28_50();
            OUTLINED_FUNCTION_6_99();
            (*(v258 + 32))();
          }

          v259 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v259, 23);
          if (qword_280BE92B8 != -1)
          {
            swift_once();
          }

          sub_2176CA4A8(qword_280C02650, v260, v261, v262, v263, v264, v265, v266, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
          OUTLINED_FUNCTION_29_1(v228);
          if (v77)
          {
            sub_2171F0790(v228, &qword_27CB241C0, &qword_217759480);
            OUTLINED_FUNCTION_7_80();
          }

          else
          {
            OUTLINED_FUNCTION_28_50();
            OUTLINED_FUNCTION_6_99();
            (*(v267 + 32))();
          }

          v268 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v268, 24);
          if (qword_280BE9208 != -1)
          {
            swift_once();
          }

          v269 = sub_2172A3F14();
          if (v270)
          {
            v271 = v269;
          }

          else
          {
            v271 = 0;
          }

          v272 = 0xE000000000000000;
          *&v351[24] = v133;
          if (v270)
          {
            v272 = v270;
          }

          *v351 = v271;
          *&v351[8] = v272;
          v273 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v273, 25);
          if (qword_280BE80C8 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CB2AC(v274, v275, v276, v277, v278, v279, v280, v281, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
          v282 = *&v351[8];
          if (*&v351[8])
          {
            v283 = *v351;
            sub_217751DE8();
            sub_2172B8404(v283, v282);
            v284 = &type metadata for MusicItemID;
          }

          else
          {
            v283 = 0;
            v284 = 0;
            *&v351[16] = 0;
          }

          *v351 = v283;
          *&v351[8] = v282;
          v285 = OUTLINED_FUNCTION_3_115(v284);
          sub_21729D4DC(v285, 26);
          if (qword_280BE92A8 != -1)
          {
            swift_once();
          }

          v286 = sub_2172A3F14();
          if (v287)
          {
            v288 = MEMORY[0x277D837D0];
          }

          else
          {
            v286 = OUTLINED_FUNCTION_12_60();
          }

          *v351 = v286;
          *&v351[8] = v287;
          v289 = OUTLINED_FUNCTION_3_115(v288);
          sub_21729D4DC(v289, 27);
          if (qword_280BE9270 != -1)
          {
            swift_once();
          }

          v290 = sub_2172A3F14();
          if (v291)
          {
            *(&v350[1] + 1) = v133;
            *&v350[0] = v290;
            *(&v350[0] + 1) = v291;
            sub_2172124CC(v350, v351);
          }

          else
          {
            memset(v350, 0, 32);
            v292 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
            *&v351[24] = sub_217215924(0, &qword_280BE2210, 0x277CBEB68);
            *v351 = v292;
            if (*(&v350[1] + 1))
            {
              sub_2171F0790(v350, &qword_27CB2AD40, &qword_2177583F0);
            }
          }

          v293 = OUTLINED_FUNCTION_4_119();
          sub_21729D4DC(v293, 28);
          if (qword_280BE93C0 != -1)
          {
            swift_once();
          }

          v294 = sub_2172A47B0();
          if (v295)
          {
            v294 = OUTLINED_FUNCTION_12_60();
            *&v351[8] = 0;
          }

          else
          {
            v296 = MEMORY[0x277D83B88];
          }

          *v351 = v294;
          v297 = OUTLINED_FUNCTION_3_115(v296);
          sub_21729D4DC(v297, 29);
          sub_217215924(0, &qword_280BE74C8, off_278228CF8);
          if (qword_280BE9390 != -1)
          {
            swift_once();
          }

          v305 = sub_2172A47FC(qword_280C026B0);
          if (qword_280BE9398 != -1)
          {
            swift_once();
          }

          sub_2172A40F0(qword_280C026B8, v298, v299, v300, v301, v302, v303, v304, v345, v346, v347, v348, v349[0], v349[1], SWORD2(v349[1]), SBYTE6(v349[1]), SHIBYTE(v349[1]), v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9]);
          v307 = sub_217653F78(v305, v306);
          v309 = v308;

          if (v309)
          {
            v307 = 0;
            v310 = 0;
            *&v351[16] = 0;
            *&v351[8] = 0;
          }

          else
          {
            v310 = MEMORY[0x277D83B88];
          }

          *v351 = v307;
          v311 = OUTLINED_FUNCTION_3_115(v310);
          sub_21729D4DC(v311, 31);
          if (qword_280BE91A0 != -1)
          {
            swift_once();
          }

          OUTLINED_FUNCTION_16_69();
          sub_2176CA4DC(v312, v313, v314, v315, v316, v317, v318, v319, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
          v320 = v351[0];
          switch(v351[0])
          {
            case 1:
              v320 = 1;
              goto LABEL_161;
            case 2:
              v320 = 2;
              goto LABEL_161;
            case 3:
              v320 = 3;
              goto LABEL_161;
            case 4:
              v320 = 4;
              goto LABEL_161;
            case 5:
              v320 = 5;
              goto LABEL_161;
            case 6:
              v320 = 6;
              goto LABEL_161;
            case 7:
              v320 = 7;
              goto LABEL_161;
            case 8:
              v320 = 8;
              goto LABEL_161;
            case 9:
              v320 = 9;
              goto LABEL_161;
            case 0xA:
              OUTLINED_FUNCTION_7_80();
              goto LABEL_162;
            default:
LABEL_161:
              v321 = [objc_opt_self() rawValueForPlaylistType_];
              OUTLINED_FUNCTION_25_55(v321);
LABEL_162:
              v322 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v322, 32);
              if (qword_280BE9288 != -1)
              {
                swift_once();
              }

              OUTLINED_FUNCTION_16_69();
              sub_2176CB348(v323, v324, v325, v326, v327, v328, v329, v330, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15]);
              if (v351[8])
              {
                OUTLINED_FUNCTION_7_80();
              }

              else
              {
                v331 = [objc_opt_self() rawValueForEditableComponents_];
                OUTLINED_FUNCTION_25_55(v331);
              }

              v332 = v348;
              v333 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v333, 33);
              if (qword_280BE9218 != -1)
              {
                swift_once();
              }

              sub_2176CA488(qword_280C025E0, v334, v335, v336, v337, v338, v339, v340, v345, v346, v347, v348, v349[0], v349[1], v349[2], v349[3], v349[4], v349[5], v349[6], v349[7], v349[8], v349[9], v349[10], v349[11], v349[12], v349[13], v349[14], v349[15], v349[16], v349[17]);
              v341 = sub_2177516D8();
              if (__swift_getEnumTagSinglePayload(v332, 1, v341) == 1)
              {
                sub_2171F0790(v332, &unk_27CB277C0, &qword_217758DC0);
                OUTLINED_FUNCTION_7_80();
              }

              else
              {
                *&v351[24] = v341;
                __swift_allocate_boxed_opaque_existential_0(v351);
                OUTLINED_FUNCTION_41_0(v341);
                (*(v342 + 32))();
              }

              v343 = OUTLINED_FUNCTION_4_119();
              sub_21729D4DC(v343, 34);
              return v354;
          }
      }
  }
}

uint64_t Playlist.LegacyModelPlaylistPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217753158();

  v4 = 0;
  v5 = 18;
  switch(v2)
  {
    case 0:
      goto LABEL_28;
    case 1:
      v4 = 1;
      goto LABEL_28;
    case 2:
      v4 = 2;
      goto LABEL_28;
    case 3:
      v4 = 3;
      goto LABEL_28;
    case 4:
      v4 = 4;
      goto LABEL_28;
    case 5:
      v4 = 5;
      goto LABEL_28;
    case 6:
      v4 = 6;
      goto LABEL_28;
    case 7:
      v4 = 7;
      goto LABEL_28;
    case 8:
      v4 = 8;
      goto LABEL_28;
    case 9:
      v4 = 9;
      goto LABEL_28;
    case 10:
      v4 = 10;
      goto LABEL_28;
    case 11:
      v4 = 11;
      goto LABEL_28;
    case 12:
      v4 = 12;
      goto LABEL_28;
    case 13:
      v4 = 13;
      goto LABEL_28;
    case 14:
      v4 = 14;
      goto LABEL_28;
    case 15:
      v4 = 15;
      goto LABEL_28;
    case 16:
      v4 = 16;
      goto LABEL_28;
    case 17:
      v4 = 17;
LABEL_28:
      v5 = v4;
      break;
    case 18:
      break;
    case 19:
      v5 = 19;
      break;
    case 20:
      v5 = 20;
      break;
    case 21:
      v5 = 21;
      break;
    case 22:
      v5 = 22;
      break;
    case 23:
      v5 = 23;
      break;
    case 24:
      v5 = 24;
      break;
    case 25:
      v5 = 25;
      break;
    case 26:
      v5 = 26;
      break;
    case 27:
      v5 = 27;
      break;
    case 28:
      v5 = 28;
      break;
    case 29:
      v5 = 29;
      break;
    case 30:
      v5 = 30;
      break;
    case 31:
      v5 = 31;
      break;
    case 32:
      v5 = 32;
      break;
    case 33:
      v5 = 33;
      break;
    case 34:
      v5 = 34;
      break;
    case 35:
      v5 = 35;
      break;
    default:
      v5 = 36;
      break;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2176B2908@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Playlist.LegacyModelPlaylistPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2176B2914@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.LegacyModelPlaylistPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176B29B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_2176B2A0C()
{
  result = qword_280BE8538;
  if (!qword_280BE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8538);
  }

  return result;
}

unint64_t sub_2176B2A60(uint64_t a1)
{
  *(a1 + 8) = sub_2172A5038();
  result = sub_2176B2A90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2176B2A90()
{
  result = qword_280BE26B0;
  if (!qword_280BE26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE26B0);
  }

  return result;
}

unint64_t sub_2176B2AE8()
{
  result = qword_27CB2C920;
  if (!qword_27CB2C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C920);
  }

  return result;
}

uint64_t _s30LegacyModelPlaylistPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s30LegacyModelPlaylistPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

uint64_t RecentlyPlayedMusicItem.id.getter()
{
  RecentlyPlayedMusicItem.innerItem.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double RecentlyPlayedMusicItem.innerItem.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_21733C220(v1, v8);
  v3 = off_27822AAB0[v11];
  v4 = *(&off_27822AAC8 + v11);
  a1[3] = off_27822AA98[v11];
  a1[4] = v3;
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  result = *&v9;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  return result;
}

void *RecentlyPlayedMusicItem.artwork.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_21733C220(v1, &v36);
  if (v42)
  {
    if (v42 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_23();
      Playlist.artwork.getter(v11);
      sub_21726B8C4(&v29);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      if (qword_280BE6760 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CABE4(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v29);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9428 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA9A8(v12, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v29);
  }

  return memcpy(a1, __src, 0x221uLL);
}

void *RecentlyPlayedMusicItem.playParameters.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_21733C220(v1, &v43);
  if (v49)
  {
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      if (qword_280BE9340 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CAD44(v11, v12, v13, v14, v15, v16, v17, v18, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
      sub_21726B8C4(&v36);
    }

    else
    {
      OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      if (qword_280BE67F0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_23();
      sub_2176CAC04(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
      sub_217283DC8(&v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE9568 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAFA0(v19, v20, v21, v22, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, __src[0], __src[1], __src[2]);
    sub_21725CE44(&v36);
  }

  return memcpy(a1, __src, 0x78uLL);
}

uint64_t RecentlyPlayedMusicItem.title.getter()
{
  v1 = sub_21733C220(v0, &v18);
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE9208 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      OUTLINED_FUNCTION_21_4();
      sub_21726B8C4(&v10);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE6778 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      OUTLINED_FUNCTION_21_4();
      sub_217283DC8(&v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    if (qword_280BE9470 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t RecentlyPlayedMusicItem.subtitle.getter()
{
  v1 = sub_21733C220(v0, &v18);
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE93B0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3F14();
      sub_21726B8C4(&v10);
    }

    else
    {
      OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      if (qword_280BE67C8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_22_0();
      sub_2172A3FDC();
      sub_217283DC8(&v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    if (qword_280BE9680 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4380();
    OUTLINED_FUNCTION_21_4();
    sub_21725CE44(&v10);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static RecentlyPlayedMusicItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21733C220(a1, v56);
  sub_21733C220(a2, &v58);
  if (v57)
  {
    if (v57 == 1)
    {
      v4 = sub_21733C220(v56, &v49);
      if (v59 == 1)
      {
        OUTLINED_FUNCTION_2_0(v4, v5, v6, v7, v8, v9, v10, v11, v41, v42, v43, v44, v45, v46, v47, v48, v49);
        v14 = v14 && v12 == v13;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v49, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v15 = OUTLINED_FUNCTION_13_4();
          if (v2(v15))
          {
            sub_21726B8C4(&v41);
            sub_21726B8C4(&v49);
LABEL_31:
            sub_217635D18(v56);
            return 1;
          }
        }

        sub_21726B8C4(&v41);
        sub_21726B8C4(&v49);
        goto LABEL_35;
      }

      sub_21726B8C4(&v49);
    }

    else
    {
      v24 = sub_21733C220(v56, &v49);
      if (v59 == 2)
      {
        OUTLINED_FUNCTION_2_0(v24, v25, v26, v27, v28, v29, v30, v31, v41, v42, v43, v44, v45, v46, v47, v48, v49);
        v34 = v14 && v32 == v33;
        if (v34 || (sub_217753058() & 1) != 0)
        {
          OUTLINED_FUNCTION_9_2(&v49, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
          v35 = OUTLINED_FUNCTION_13_4();
          if (v2(v35))
          {
            sub_217283DC8(&v41);
            sub_217283DC8(&v49);
            goto LABEL_31;
          }
        }

        sub_217283DC8(&v41);
        sub_217283DC8(&v49);
        goto LABEL_35;
      }

      sub_217283DC8(&v49);
    }
  }

  else
  {
    v16 = sub_21733C220(v56, &v49);
    if (!v59)
    {
      OUTLINED_FUNCTION_2_0(v16, v17, v18, v19, v20, v21, v22, v23, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      v38 = v14 && v36 == v37;
      if (v38 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_9_2(&v49, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v39 = OUTLINED_FUNCTION_13_4();
        if (v2(v39))
        {
          sub_21725CE44(&v41);
          sub_21725CE44(&v49);
          goto LABEL_31;
        }
      }

      sub_21725CE44(&v41);
      sub_21725CE44(&v49);
LABEL_35:
      sub_217635D18(v56);
      return 0;
    }

    sub_21725CE44(&v49);
  }

  sub_2176B4390(v56);
  return 0;
}

uint64_t RecentlyPlayedMusicItem.hash(into:)()
{
  v1 = sub_21733C220(v0, &v27);
  if (v32)
  {
    if (v32 == 1)
    {
      v9 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x21CEA3550](1, v9);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v21, v24);
      v10 = OUTLINED_FUNCTION_3_4();
      v11(v10);
      return sub_21726B8C4(&v19);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      MEMORY[0x21CEA3550](2, v16);
      sub_217751FF8();
      __swift_project_boxed_opaque_existential_1(&v21, v24);
      v17 = OUTLINED_FUNCTION_3_4();
      v18(v17);
      return sub_217283DC8(&v19);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    MEMORY[0x21CEA3550](0, v13);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v21, v24);
    v14 = OUTLINED_FUNCTION_3_4();
    v15(v14);
    return sub_21725CE44(&v19);
  }
}

uint64_t RecentlyPlayedMusicItem.hashValue.getter()
{
  sub_2177531E8();
  RecentlyPlayedMusicItem.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176B3684()
{
  sub_2177531E8();
  RecentlyPlayedMusicItem.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176B36C0@<X0>(uint64_t *a1@<X8>)
{
  result = RecentlyPlayedMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RecentlyPlayedMusicItem.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EF028();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RecentlyPlayedMusicItem.description.getter()
{
  sub_21733C220(v0, &v23);
  if (v28)
  {
    if (v28 == 1)
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_13_67();
      v9 = Playlist.description.getter();
      MEMORY[0x21CEA23B0](v9);

      OUTLINED_FUNCTION_18_1();
      sub_21726B8C4(&v15);
    }

    else
    {
      OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      sub_217752AA8();

      OUTLINED_FUNCTION_13_67();
      v11 = Station.description.getter();
      MEMORY[0x21CEA23B0](v11);

      OUTLINED_FUNCTION_18_1();
      sub_217283DC8(&v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_79(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_217752AA8();

    OUTLINED_FUNCTION_13_67();
    v10 = Album.description.getter();
    MEMORY[0x21CEA23B0](v10);

    OUTLINED_FUNCTION_18_1();
    sub_21725CE44(&v15);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t RecentlyPlayedMusicItem.debugDescription.getter()
{
  sub_21733C220(v0, v3);
  if (v4)
  {
    if (v4 == 1)
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_61();
      Playlist.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_21726B8C4(v2);
    }

    else
    {
      OUTLINED_FUNCTION_3_8();
      sub_217752AA8();

      OUTLINED_FUNCTION_12_61();
      Station.debugDescription.getter();
      OUTLINED_FUNCTION_7_51();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_17_36();

      OUTLINED_FUNCTION_16_5();
      sub_217283DC8(v2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_12_61();
    Album.debugDescription.getter();
    OUTLINED_FUNCTION_7_51();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_15_9();
    OUTLINED_FUNCTION_17_36();

    OUTLINED_FUNCTION_16_5();
    sub_21725CE44(v2);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2176B3A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217775F00;
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BE8A90 + 1);
  v2 = byte_280BE8AA0;
  *(v0 + 32) = xmmword_280BE8A90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE8AE8;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_280BE8AF0 + 1);
  v5 = byte_280BE8B00;
  *(v0 + 56) = xmmword_280BE8AF0;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = qword_280BE8A38;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_280BE8A48;
  v8 = byte_280BE8A50;
  *(v0 + 80) = qword_280BE8A40;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = qword_280BE8AA8;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *algn_280BE8AB8;
  v11 = byte_280BE8AC0;
  *(v0 + 104) = qword_280BE8AB0;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  v12 = qword_280BE8A60;
  sub_217751DE8();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_280BE8A70;
  v14 = byte_280BE8A78;
  *(v0 + 128) = qword_280BE8A68;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  qword_27CB8A308 = v0;

  return sub_217751DE8();
}

uint64_t sub_2176B3C48()
{
  if (qword_27CB23E38 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t RecentlyPlayedMusicItem.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v66, v4, v5);
  v6 = v66[1];
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30_2(&xmmword_280BE8A90);
  v8 = v8 && v7 == v6;
  if (!v8 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
  {
    if (qword_280BE8AE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30_2(&xmmword_280BE8AF0);
    v10 = v8 && v9 == v6;
    if (!v10 && (OUTLINED_FUNCTION_25_38() & 1) == 0)
    {
      if (qword_280BE8A38 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8A40);
      v27 = v8 && v26 == v6;
      if (v27 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
        goto LABEL_31;
      }

      if (qword_280BE8AA8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8AB0);
      v29 = v8 && v28 == v6;
      if (v29 || (OUTLINED_FUNCTION_25_38() & 1) != 0)
      {
LABEL_31:

        sub_2171FF30C(a1, v58);
        __swift_project_boxed_opaque_existential_1(v58, v59);
        v30 = OUTLINED_FUNCTION_8_49();
        v31(v30);
        v33 = v64;
        v32 = v65;
        sub_217751DE8();
        sub_217269F50(&v64);
        *&v60 = v33;
        *(&v60 + 1) = v32;
        v34 = __swift_project_boxed_opaque_existential_1(v58, v59);
        OUTLINED_FUNCTION_11_6(v34, v35, v36, v37, v38, v39, v40, v41, v57);
        __swift_destroy_boxed_opaque_existential_1(v58);
        v23 = 1;
        goto LABEL_16;
      }

      if (qword_280BE8A60 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30_2(&qword_280BE8A68);
      if (!v8 || v42 != v6)
      {
        v44 = OUTLINED_FUNCTION_25_38();

        if (v44)
        {
LABEL_41:
          sub_2171FF30C(a1, v58);
          __swift_project_boxed_opaque_existential_1(v58, v59);
          v45 = OUTLINED_FUNCTION_8_49();
          v46(v45);
          v48 = v64;
          v47 = v65;
          sub_217751DE8();
          sub_217269F50(&v64);
          *&v60 = v48;
          *(&v60 + 1) = v47;
          v49 = __swift_project_boxed_opaque_existential_1(v58, v59);
          OUTLINED_FUNCTION_11_6(v49, v50, v51, v52, v53, v54, v55, v56, v57);
          __swift_destroy_boxed_opaque_existential_1(v58);
          v23 = 2;
          goto LABEL_16;
        }

        v57 = 211;
        sub_217752D08();
        __break(1u);
      }

      goto LABEL_41;
    }
  }

  sub_2171FF30C(a1, v58);
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v11 = OUTLINED_FUNCTION_8_49();
  v12(v11);
  v14 = v64;
  v13 = v65;
  sub_217751DE8();
  sub_217269F50(&v64);
  *&v60 = v14;
  *(&v60 + 1) = v13;
  v15 = __swift_project_boxed_opaque_existential_1(v58, v59);
  OUTLINED_FUNCTION_11_6(v15, v16, v17, v18, v19, v20, v21, v22, v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v23 = 0;
LABEL_16:
  v24 = v61;
  *a2 = v60;
  *(a2 + 16) = v24;
  *(a2 + 32) = v62;
  *(a2 + 48) = v63;
  *(a2 + 56) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static RecentlyPlayedMusicItem.typeValue.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23E40 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2C928);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2176B4110()
{
  if (qword_27CB23E40 != -1)
  {
    swift_once();
  }

  xmmword_27CB2C948 = xmmword_27CB2C928;
  qword_27CB2C958 = qword_27CB2C938;
  unk_27CB2C960 = unk_27CB2C940;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.recentlyPlayedMusicItem.getter@<X0>(__n128 *a1@<X8>)
{
  if (qword_27CB23E48 != -1)
  {
    swift_once();
  }

  *a1 = OUTLINED_FUNCTION_1449(&xmmword_27CB2C948);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t sub_2176B41F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643C0;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = OUTLINED_FUNCTION_1449(&xmmword_280BE62F8);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6220;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = OUTLINED_FUNCTION_1449(&xmmword_280BE6228);
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6248;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = OUTLINED_FUNCTION_1449(&xmmword_280BE6250);
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  qword_27CB2C968 = v0;

  return sub_217751DE8();
}

uint64_t static RecentlyPlayedMusicItem.supportedTypeValues.getter()
{
  if (qword_27CB23E50 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2176B4390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C970, &unk_217794CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2176B43FC()
{
  result = qword_27CB2C978;
  if (!qword_27CB2C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C978);
  }

  return result;
}

uint64_t sub_2176B446C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_217751428() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void static URL.valueForQueryItem(named:extractedFrom:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v81 = v3;
  v82 = v2;
  v83 = v4;
  v5 = sub_217751428();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_6_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v74 - v32;
  v34 = sub_217751518();
  v35 = OUTLINED_FUNCTION_0_0(v34);
  v80 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35, v39);
  OUTLINED_FUNCTION_1();
  v79 = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v74 - v47;
  v49 = sub_2177516D8();
  v50 = OUTLINED_FUNCTION_0_0(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  if (!v1)
  {
    goto LABEL_28;
  }

  v77 = v57;
  v78 = v54;
  sub_2177516C8();
  OUTLINED_FUNCTION_133(v48, 1, v49);
  if (v63)
  {
    v58 = &unk_27CB277C0;
    v59 = &qword_217758DC0;
    v60 = v48;
    goto LABEL_27;
  }

  v81 = v22;
  v61 = v77;
  v62 = v78;
  (*(v78 + 32))(v77, v48, v49);
  sub_217751478();
  OUTLINED_FUNCTION_133(v33, 1, v34);
  if (v63)
  {
    (*(v62 + 8))(v61, v49);
    v58 = &qword_27CB277B8;
    v59 = &unk_21776B220;
    v60 = v33;
    goto LABEL_27;
  }

  v76 = v49;
  (*(v80 + 32))(v79, v33, v34);
  v64 = sub_217751448();
  if (!v64)
  {
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v5);
    v71 = v81;
LABEL_24:
    sub_2175471C0(v26, v71);
    OUTLINED_FUNCTION_133(v71, 1, v5);
    if (!v63)
    {
      sub_217751418();
      sub_2171F06D8(v26, &qword_27CB294E8, &qword_217776E50);
      (*(v80 + 8))(v79, v34);
      (*(v78 + 8))(v77, v76);
      (*(v8 + 8))(v71, v5);
LABEL_28:
      OUTLINED_FUNCTION_13();
      return;
    }

    sub_2171F06D8(v26, &qword_27CB294E8, &qword_217776E50);
    (*(v80 + 8))(v79, v34);
    (*(v78 + 8))(v77, v76);
    v60 = v71;
    v58 = &qword_27CB294E8;
    v59 = &qword_217776E50;
LABEL_27:
    sub_2171F06D8(v60, v58, v59);
    goto LABEL_28;
  }

  v65 = v64;
  v74 = v34;
  v75 = v26;
  v66 = 0;
  v67 = *(v64 + 16);
  while (1)
  {
    if (v67 == v66)
    {

      v26 = v75;
      v72 = v75;
      v73 = 1;
      goto LABEL_23;
    }

    if (v66 >= *(v65 + 16))
    {
      break;
    }

    (*(v8 + 16))(v14, v65 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v66, v5);
    if (sub_217751408() == v82 && v68 == v83)
    {

LABEL_22:

      v26 = v75;
      (*(v8 + 32))(v75, v14, v5);
      v72 = v26;
      v73 = 0;
LABEL_23:
      __swift_storeEnumTagSinglePayload(v72, v73, 1, v5);
      v71 = v81;
      v34 = v74;
      goto LABEL_24;
    }

    v70 = sub_217753058();

    if (v70)
    {
      goto LABEL_22;
    }

    (*(v8 + 8))(v14, v5);
    ++v66;
  }

  __break(1u);
}

void static URL.resourceTypes(extractedFrom:)()
{
  OUTLINED_FUNCTION_12();
  static URL.valueForQueryItem(named:extractedFrom:)();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20[0] = 44;
    v20[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v0, v1);
    v19[2] = v20;
    v5 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, sub_2171F87CC, v19, v3, v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      v20[0] = v2;
      sub_2172763CC();
      v7 = v20[0];
      v19[4] = v5;
      v8 = (v5 + 56);
      do
      {
        v9 = *(v8 - 3);
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;
        sub_217751DE8();
        v13 = MEMORY[0x21CEA2320](v9, v10, v11, v12);
        v15 = v14;
        sub_217751DE8();
        v16 = sub_2173C74C0();

        v20[0] = v7;
        v17 = *(v7 + 16);
        if (v17 >= *(v7 + 24) >> 1)
        {
          sub_2172763CC();
          v7 = v20[0];
        }

        *(v7 + 16) = v17 + 1;
        v18 = v7 + 24 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        *(v18 + 48) = v16 & 1;
        v8 += 4;
        --v6;
      }

      while (v6);
    }
  }

  OUTLINED_FUNCTION_13();
}

void static URL.modifiedRelativeURLLocation(byApplying:to:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v81 = v3;
  v80 = sub_217751428();
  v4 = OUTLINED_FUNCTION_0_0(v80);
  v83 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v82 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v16 = OUTLINED_FUNCTION_12_62();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  OUTLINED_FUNCTION_6_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_6_1();
  v84 = v35 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v78 - v39;
  v41 = sub_2177516D8();
  v42 = OUTLINED_FUNCTION_0_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  if (!v2)
  {
    goto LABEL_9;
  }

  v79 = v46;
  sub_2177516C8();
  OUTLINED_FUNCTION_133(v40, 1, v41);
  if (v54)
  {
    v50 = &unk_27CB277C0;
    v51 = &qword_217758DC0;
    v52 = v40;
LABEL_8:
    sub_2171F06D8(v52, v50, v51);
    goto LABEL_9;
  }

  v53 = v79;
  (*(v79 + 32))(v49, v40, v41);
  sub_217751478();
  OUTLINED_FUNCTION_133(v0, 1, v16);
  if (v54)
  {
    (*(v53 + 8))(v49, v41);
    v50 = &qword_27CB277B8;
    v51 = &unk_21776B220;
    v52 = v0;
    goto LABEL_8;
  }

  v55 = v19;
  (*(v19 + 32))(v29, v0, v16);
  (*(v19 + 16))(v25, v29, v16);
  v86 = MEMORY[0x277D84F90];
  v85 = 0;
  v56 = sub_217751448();
  v58 = v81;
  if (!v56 || (v59 = v56, MEMORY[0x28223BE20](v56, v57), *(&v78 - 4) = v58, *(&v78 - 3) = &v86, *(&v78 - 2) = &v85, sub_2176B446C(sub_2176B5C60, (&v78 - 6), v59), , v85 != 1))
  {
    v60 = v58;
    v61 = v80;
    (*(v83 + 16))(v82, v60, v80);
    v62 = v86;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = *(v62 + 16);
      v70 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v70, v71, v72, v62);
      v62 = v73;
    }

    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      v74 = OUTLINED_FUNCTION_11_1(v63);
      sub_2172B1A50(v74, v75, v76, v62);
      v62 = v77;
    }

    *(v62 + 16) = v64 + 1;
    (*(v83 + 32))(v62 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v64, v82, v61);
    v86 = v62;
  }

  sub_217751DE8();
  sub_217751458();
  v65 = v84;
  sub_217751488();
  OUTLINED_FUNCTION_133(v65, 1, v41);
  if (v54)
  {
    v66 = *(v55 + 8);
    v66(v25, v16);
    v66(v29, v16);
    (*(v79 + 8))(v49, v41);
    sub_2171F06D8(v65, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    sub_217751668();
    v67 = *(v55 + 8);
    v67(v25, v16);
    v67(v29, v16);
    v68 = *(v79 + 8);
    v68(v49, v41);
    v68(v84, v41);
  }

LABEL_9:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176B5230(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  v8 = sub_217751408();
  v10 = v9;
  if (v8 == sub_217751408() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_217753058();

    if ((v13 & 1) == 0)
    {
      sub_21770B7A4();
      v14 = *(*a3 + 16);
      sub_21770BAD4(v14);
      v15 = *a3;
      *(*a3 + 16) = v14 + 1;
      v16 = sub_217751428();
      return (*(*(v16 - 8) + 16))(v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14, a1, v16);
    }
  }

  sub_21770B7A4();
  v18 = *(*a3 + 16);
  sub_21770BAD4(v18);
  v19 = *a3;
  *(*a3 + 16) = v18 + 1;
  v20 = sub_217751428();
  result = (*(*(v20 - 8) + 16))(v19 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * v18, a2, v20);
  *a4 = 1;
  return result;
}

void URL.appending(_:)()
{
  OUTLINED_FUNCTION_12();
  v64 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v65 = &v63 - v9;
  v10 = sub_217751428();
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v25 = OUTLINED_FUNCTION_12_62();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26, v31);
  OUTLINED_FUNCTION_6_1();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v63 - v37;
  sub_217751478();
  OUTLINED_FUNCTION_133(v0, 1, v25);
  if (v39)
  {
    sub_2171F06D8(v0, &qword_27CB277B8, &unk_21776B220);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_9_82();
    v67 = v58 + 3;
    v68 = v57;
    sub_2177516D8();
    sub_2176B5C80(&qword_27CB254C8, MEMORY[0x277CC9260]);
    v59 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v59);

    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B52F0);
  }

  else
  {
    (*(v28 + 32))(v38, v0, v25);
    (*(v28 + 16))(v34, v38, v25);
    v40 = sub_217751448();
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    (*(v13 + 16))(v19, v64, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = *(v41 + 16);
      v49 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v49, v50, v51, v41);
      v41 = v52;
    }

    v44 = *(v41 + 16);
    v43 = *(v41 + 24);
    if (v44 >= v43 >> 1)
    {
      v53 = OUTLINED_FUNCTION_11_1(v43);
      sub_2172B1A50(v53, v54, v55, v41);
      v41 = v56;
    }

    *(v41 + 16) = v44 + 1;
    (*(v13 + 32))(v41 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v44, v19, v10);
    sub_217751DE8();
    sub_217751458();
    v45 = v65;
    sub_217751488();
    v46 = sub_2177516D8();
    OUTLINED_FUNCTION_133(v45, 1, v46);
    if (!v39)
    {
      v47 = *(v28 + 8);
      v47(v34, v25);
      v47(v38, v25);

      (*(*(v46 - 8) + 32))(v66, v45, v46);
      OUTLINED_FUNCTION_13();
      return;
    }

    sub_2171F06D8(v45, &unk_27CB277C0, &qword_217758DC0);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_9_82();
    v67 = v61 + 14;
    v68 = v60;
    sub_2176B5C80(&qword_27CB2C980, MEMORY[0x277CC8958]);
    v62 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v62);

    MEMORY[0x21CEA23B0](0x52552061206F7420, 0xEA00000000002E4CLL);
  }

  sub_217752D08();
  __break(1u);
}

uint64_t sub_2176B5914(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_217752118();
    OUTLINED_FUNCTION_7_81();
    sub_2172B1A90();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_2172B1A90();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_5_98();
      v17 = sub_2177520F8();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_5_98();
      v16 = sub_217752018();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_217752118();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      OUTLINED_FUNCTION_17();
      sub_2172B1A90();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_2172B1A90();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_5_98();
    v16 = sub_217752018();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_217752118();
        OUTLINED_FUNCTION_7_81();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      OUTLINED_FUNCTION_17();
      sub_2172B1A90();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2176B5C80(unint64_t *a1, void (*a2)(uint64_t))
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

void ArtistPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v44 = v0;
  v45 = v1;
  v42 = v2;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(__dst, v12, sizeof(__dst));
  v13 = *v9;
  v14 = v9[1];
  v15 = *(v9 + 16);
  sub_2172A497C(__src);
  memcpy(v11, __src, 0x221uLL);
  v16 = type metadata accessor for ArtistPropertyProvider();
  *(v11 + 552) = 0u;
  v17 = v16[6];
  sub_2177516D8();
  OUTLINED_FUNCTION_15_10(v11 + v17);
  *(v11 + v16[7]) = 0;
  v18 = (v11 + v16[8]);
  *v18 = xmmword_2177586D0;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  *(v11 + v16[9]) = 0;
  *(v11 + v16[10]) = 0;
  *(v11 + v16[11]) = 2;
  *(v11 + v16[12]) = 2;
  *(v11 + v16[13]) = 2;
  *(v11 + v16[14]) = 2;
  memcpy((v11 + v16[15]), __src, 0x221uLL);
  v19 = (v11 + v16[16]);
  *v19 = 0;
  v19[1] = 0;
  OUTLINED_FUNCTION_15_10(v11 + v16[17]);
  OUTLINED_FUNCTION_57_26(v16[18]);
  OUTLINED_FUNCTION_57_26(v16[19]);
  OUTLINED_FUNCTION_57_26(v16[20]);
  OUTLINED_FUNCTION_57_26(v16[21]);
  v20 = v16[22];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(v11 + v20);
  *(v11 + v16[23]) = 3;
  OUTLINED_FUNCTION_15_10(v11 + v16[24]);
  OUTLINED_FUNCTION_57_26(v16[25]);
  v21 = v11 + v16[26];
  *(v21 + 96) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  OUTLINED_FUNCTION_2_3(v16[27], 0);
  v22 = (v11 + v16[28]);
  v22[6] = v23;
  v22[7] = v23;
  v22[4] = v23;
  v22[5] = v23;
  v22[2] = v23;
  v22[3] = v23;
  *v22 = v23;
  v22[1] = v23;
  OUTLINED_FUNCTION_2_3(v16[29], v23);
  OUTLINED_FUNCTION_2_3(v16[30], v24);
  OUTLINED_FUNCTION_2_3(v16[31], v25);
  OUTLINED_FUNCTION_2_3(v16[32], v26);
  OUTLINED_FUNCTION_2_3(v16[33], v27);
  OUTLINED_FUNCTION_2_3(v16[34], v28);
  OUTLINED_FUNCTION_2_3(v16[35], v29);
  OUTLINED_FUNCTION_2_3(v16[36], v30);
  OUTLINED_FUNCTION_2_3(v16[37], v31);
  OUTLINED_FUNCTION_2_3(v16[38], v32);
  OUTLINED_FUNCTION_2_3(v16[39], v33);
  OUTLINED_FUNCTION_2_3(v16[40], v34);
  OUTLINED_FUNCTION_2_3(v16[41], v35);
  OUTLINED_FUNCTION_2_3(v16[42], v36);
  OUTLINED_FUNCTION_2_3(v16[43], v37);
  *(v11 + v16[44]) = 0;
  if (qword_280BE3968 != -1)
  {
    swift_once();
  }

  v38 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v41 = sub_217752D28();

    v38 = v41;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v11 + v16[45]) = v38;
  v39 = (v11 + v16[48]);
  memcpy((v11 + v16[46]), __dst, 0x161uLL);
  v40 = v11 + v16[47];
  *v40 = v13;
  *(v40 + 8) = v14;
  *(v40 + 16) = v15;
  *v39 = v7;
  v39[1] = v5;
  *(v11 + v16[49]) = v42;
  *(v11 + v16[50]) = v43;
  *(v11 + v16[51]) = v44;
  *(v11 + v16[52]) = v45;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for ArtistPropertyProvider()
{
  result = qword_280BE3948;
  if (!qword_280BE3948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtistPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *ArtistPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t ArtistPropertyProvider.biography.getter()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 560);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t ArtistPropertyProvider.biography.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 560);

  *(v2 + 552) = a1;
  *(v2 + 560) = a2;
  return result;
}

uint64_t ArtistPropertyProvider.editorialArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtistPropertyProvider() + 28));

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.editorialArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_89_19() + 32));
  v4 = v2[3];
  v9 = v2[2];
  v3 = v9;
  v10 = v4;
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *v0 = v8[0];
  v0[1] = v5;
  v0[2] = v3;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 ArtistPropertyProvider.editorialNotes.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_82_15() + 32));
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t ArtistPropertyProvider.editorialVideoArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtistPropertyProvider() + 36));

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 36);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.genreNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtistPropertyProvider() + 40));

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.genreNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 40);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.hasBonusContent.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.hasMusicEvents.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.isClassicalExperienceAvailable.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_82_15();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t ArtistPropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_89_19() + 60);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *ArtistPropertyProvider.mainUberArtwork.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 60);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v2), v0, 0x221uLL);
}

uint64_t ArtistPropertyProvider.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ArtistPropertyProvider() + 64));
  v2 = *v1;
  v3 = v1[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t ArtistPropertyProvider.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = (v2 + *(type metadata accessor for ArtistPropertyProvider() + 64));
  v6 = v5[1];

  *v5 = v3;
  v5[1] = a2;
  return result;
}

void ArtistPropertyProvider.albumCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for ArtistPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 72));
}

void ArtistPropertyProvider.cleanTrackCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for ArtistPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 76));
}

void ArtistPropertyProvider.downloadedCleanTrackCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for ArtistPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 80));
}

void ArtistPropertyProvider.downloadedTrackCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for ArtistPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 84));
}

uint64_t ArtistPropertyProvider.favoriteStatus.getter()
{
  result = OUTLINED_FUNCTION_89_19();
  *v0 = *(v1 + *(result + 92));
  return result;
}

uint64_t ArtistPropertyProvider.favoriteStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ArtistPropertyProvider();
  *(v1 + *(result + 92)) = v2;
  return result;
}

void ArtistPropertyProvider.trackCount.setter()
{
  OUTLINED_FUNCTION_168_0();
  v0 = type metadata accessor for ArtistPropertyProvider();
  OUTLINED_FUNCTION_28_15(*(v0 + 100));
}

uint64_t ArtistPropertyProvider.searchContextSnippets.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtistPropertyProvider() + 176));

  return sub_217751DE8();
}

uint64_t ArtistPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_82_15() + 176);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

void ArtistPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v166 = v0;
  v167 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_6_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v165 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_6_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v165 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29EA8, &unk_217794FE0);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_155_3();
    sub_217752AA8();
    OUTLINED_FUNCTION_126_4();
    MEMORY[0x21CEA23B0](0xD000000000000025, 0x80000002177B5370);
    v170[0] = v3;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_121_4();
    v149 = 79;
    goto LABEL_182;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_60_31(&unk_282959AF8);
  OUTLINED_FUNCTION_168(v29);
  OUTLINED_FUNCTION_997();

  if (v28)
  {
    v30 = v166;
    OUTLINED_FUNCTION_225_3(v170);
    v31 = v30;
    goto LABEL_4;
  }

  v33 = qword_280BE6A48;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_28_51();
  }

  OUTLINED_FUNCTION_168(qword_280C021D8);
  OUTLINED_FUNCTION_997();

  if (v33)
  {
    v34 = *(v166 + 70);
    if (v34)
    {
      v35 = *(v166 + 69);
LABEL_12:
      sub_217751DE8();
      v36 = MEMORY[0x277D837D0];
LABEL_72:

      v77 = v167;
      *v167 = v35;
      v77[1] = v34;
      v77[2] = 0;
      v77[3] = v36;
      goto LABEL_223;
    }

    goto LABEL_71;
  }

  v40 = qword_280BE69D8;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_81_17();
  }

  OUTLINED_FUNCTION_168(qword_280C021B8);
  OUTLINED_FUNCTION_997();

  if (v40)
  {
    v41 = type metadata accessor for ArtistPropertyProvider();
    v42 = OUTLINED_FUNCTION_59_24(*(v41 + 24));
    sub_21726A630(v42, v27, v43, v44);
    v45 = sub_2177516D8();
    OUTLINED_FUNCTION_73(v27);
    if (!v32)
    {
      goto LABEL_106;
    }

    v46 = &unk_27CB277C0;
    v47 = &qword_217758DC0;
    v48 = v27;
    goto LABEL_20;
  }

  v49 = qword_280BE68F0;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_27_48();
  }

  OUTLINED_FUNCTION_168(qword_280C02170);
  OUTLINED_FUNCTION_997();

  if (v49)
  {
    v50 = type metadata accessor for ArtistPropertyProvider();
    OUTLINED_FUNCTION_118_13(*(v50 + 28));
    if (v49)
    {
      v51 = &unk_27CB24BE8;
      v52 = &unk_2177595F0;
LABEL_26:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
      sub_217751DE8();
LABEL_222:

      v164 = v167;
      *v167 = v49;
      v164[1] = 0;
      v164[2] = 0;
      v164[3] = v53;
      goto LABEL_223;
    }

    goto LABEL_221;
  }

  v56 = qword_280BE6998;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_168(qword_280C021A0);
  OUTLINED_FUNCTION_997();

  if (v56)
  {
    v57 = &v166[*(type metadata accessor for ArtistPropertyProvider() + 32)];
    v59 = *v57;
    v58 = *(v57 + 1);
    v60 = *(v57 + 3);
    *&v169[16] = *(v57 + 2);
    *&v169[32] = v60;
    *v169 = *(v57 + 1);
    if (v58 != 1)
    {
      v37 = swift_allocObject();
      *&v171[0] = v59;
      *(&v171[0] + 1) = v58;
      v61 = *(v57 + 2);
      v171[1] = *(v57 + 1);
      v171[2] = v61;
      v171[3] = *(v57 + 3);
      sub_217350F74(v171, v170);

      *(v37 + 16) = v59;
      *(v37 + 24) = v58;
      v62 = *&v169[16];
      *(v37 + 32) = *v169;
      *(v37 + 48) = v62;
      *(v37 + 64) = *&v169[32];
      v38 = &type metadata for EditorialNotes;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v49 = qword_280BE68D0;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_26_43();
  }

  OUTLINED_FUNCTION_168(qword_280C02158);
  OUTLINED_FUNCTION_997();

  if (v49)
  {
    v63 = type metadata accessor for ArtistPropertyProvider();
    OUTLINED_FUNCTION_118_13(*(v63 + 36));
    if (v49)
    {
      v51 = &unk_27CB24BE0;
      v52 = &unk_2177657E0;
      goto LABEL_26;
    }

LABEL_221:
    v53 = 0;
    goto LABEL_222;
  }

  v49 = qword_280BE6A28;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_79_19();
  }

  OUTLINED_FUNCTION_168(qword_280C021D0);
  OUTLINED_FUNCTION_997();

  if (v49)
  {
    v64 = type metadata accessor for ArtistPropertyProvider();
    OUTLINED_FUNCTION_118_13(*(v64 + 40));
    if (v49)
    {
      v51 = &unk_27CB24C58;
      v52 = &unk_2177677B0;
      goto LABEL_26;
    }

    goto LABEL_221;
  }

  v65 = qword_280BE6928;

  if (v65 != -1)
  {
    OUTLINED_FUNCTION_25_56();
  }

  OUTLINED_FUNCTION_168(qword_280C02180);
  OUTLINED_FUNCTION_997();

  if (v65)
  {
    v66 = *(type metadata accessor for ArtistPropertyProvider() + 44);
LABEL_59:
    v70 = v166[v66];

    v71 = MEMORY[0x277D839B0];
    if (v70 == 2)
    {
      v71 = 0;
    }

    v72 = v167;
    *v167 = v70 & 1;
    v72[1] = 0;
    v72[2] = 0;
    v72[3] = v71;
    goto LABEL_223;
  }

  v67 = qword_280BE6A50;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_24_49();
  }

  OUTLINED_FUNCTION_168(qword_280C021E0);
  OUTLINED_FUNCTION_997();

  if (v67)
  {
    v66 = *(type metadata accessor for ArtistPropertyProvider() + 48);
    goto LABEL_59;
  }

  v68 = qword_280BE68B0;

  if (v68 != -1)
  {
    OUTLINED_FUNCTION_78_18();
  }

  OUTLINED_FUNCTION_168(qword_280C02148);
  OUTLINED_FUNCTION_997();

  if (v68)
  {
    v66 = *(type metadata accessor for ArtistPropertyProvider() + 52);
    goto LABEL_59;
  }

  v69 = qword_280BE6840;

  if (v69 != -1)
  {
    OUTLINED_FUNCTION_77_17();
  }

  OUTLINED_FUNCTION_168(qword_280C02130);
  OUTLINED_FUNCTION_997();

  if (v69)
  {
    v66 = *(type metadata accessor for ArtistPropertyProvider() + 56);
    goto LABEL_59;
  }

  v73 = qword_280BE6940;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_76_19();
  }

  OUTLINED_FUNCTION_168(qword_280C02190);
  OUTLINED_FUNCTION_997();

  if (v73)
  {
    v74 = *(type metadata accessor for ArtistPropertyProvider() + 60);
    memcpy(v170, &v166[v74], 0x221uLL);
    v31 = &v166[v74];
LABEL_4:
    memcpy(v171, v31, 0x221uLL);
    OUTLINED_FUNCTION_104(v171);
    if (!v32)
    {
      v37 = swift_allocObject();
      memcpy(v169, v170, sizeof(v169));
      sub_217284028(v169, &v168);

      memcpy((v37 + 16), v171, 0x221uLL);
      v38 = &type metadata for Artwork;
LABEL_13:
      v39 = v167;
      *v167 = v37;
      v39[1] = 0;
      v39[2] = 0;
      v39[3] = v38;
      goto LABEL_223;
    }

LABEL_6:

    v38 = 0;
    v37 = 0;
    goto LABEL_13;
  }

  v75 = qword_280BE6898;

  if (v75 != -1)
  {
    OUTLINED_FUNCTION_6_98();
  }

  OUTLINED_FUNCTION_168(qword_280C02138);
  OUTLINED_FUNCTION_997();

  if (v75)
  {
    v76 = &v166[*(type metadata accessor for ArtistPropertyProvider() + 64)];
    v34 = v76[1];
    if (v34)
    {
      v35 = *v76;
      goto LABEL_12;
    }

LABEL_71:
    v36 = 0;
    v35 = 0;
    goto LABEL_72;
  }

  v78 = qword_280BE68A0;

  if (v78 != -1)
  {
    OUTLINED_FUNCTION_74_17();
  }

  OUTLINED_FUNCTION_168(qword_280C02140);
  OUTLINED_FUNCTION_997();

  if (v78)
  {
    v79 = type metadata accessor for ArtistPropertyProvider();
    v80 = OUTLINED_FUNCTION_59_24(*(v79 + 68));
    sub_21726A630(v80, v23, v81, v82);
    v45 = sub_2177516D8();
    OUTLINED_FUNCTION_73(v23);
    if (!v32)
    {
      goto LABEL_106;
    }

    v46 = &unk_27CB277C0;
    v47 = &qword_217758DC0;
    v48 = v23;
    goto LABEL_20;
  }

  v83 = qword_280BE6A00;

  if (v83 != -1)
  {
    OUTLINED_FUNCTION_73_20();
  }

  OUTLINED_FUNCTION_168(qword_280C021C8);
  OUTLINED_FUNCTION_997();

  if (v83)
  {
    type metadata accessor for ArtistPropertyProvider();
    OUTLINED_FUNCTION_165();
    v85 = *(v84 + 72);
    goto LABEL_83;
  }

  v88 = qword_280BE69B8;

  if (v88 != -1)
  {
    OUTLINED_FUNCTION_72_18();
  }

  OUTLINED_FUNCTION_168(qword_280C021B0);
  OUTLINED_FUNCTION_997();

  if (v88)
  {
    v89 = type metadata accessor for ArtistPropertyProvider();
    v90 = OUTLINED_FUNCTION_59_24(*(v89 + 88));
    sub_21726A630(v90, v15, v91, v92);
    v45 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v15);
    if (!v32)
    {
      goto LABEL_106;
    }

    v46 = &qword_27CB241C0;
    v47 = &qword_217759480;
    v48 = v15;
    goto LABEL_20;
  }

  v93 = qword_280BE6960;

  if (v93 != -1)
  {
    OUTLINED_FUNCTION_10_33();
  }

  OUTLINED_FUNCTION_168(qword_280C02198);
  OUTLINED_FUNCTION_997();

  if ((v93 & 1) == 0)
  {
    v98 = qword_280BE6918;

    if (v98 != -1)
    {
      OUTLINED_FUNCTION_70_20();
    }

    OUTLINED_FUNCTION_168(qword_280C02178);
    OUTLINED_FUNCTION_997();

    if (v98)
    {
      v99 = type metadata accessor for ArtistPropertyProvider();
      v100 = OUTLINED_FUNCTION_59_24(*(v99 + 96));
      sub_21726A630(v100, v11, v101, v102);
      v45 = sub_2177517D8();
      OUTLINED_FUNCTION_73(v11);
      if (!v32)
      {
LABEL_106:
        OUTLINED_FUNCTION_129_13();
        OUTLINED_FUNCTION_41_0(v45);
        (*(v104 + 32))();

        goto LABEL_27;
      }

      v46 = &qword_27CB241C0;
      v47 = &qword_217759480;
      v48 = v11;
LABEL_20:
      sub_2171F0738(v48, v46, v47);
      memset(v171, 0, 32);
LABEL_27:
      v54 = v171[1];
      v55 = v167;
      *v167 = v171[0];
      *(v55 + 1) = v54;
      goto LABEL_223;
    }

    v83 = qword_280BE6938;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_69_20();
    }

    OUTLINED_FUNCTION_168(qword_280C02188);
    OUTLINED_FUNCTION_997();

    if (v83)
    {
      type metadata accessor for ArtistPropertyProvider();
      OUTLINED_FUNCTION_165();
      v85 = *(v103 + 76);
      goto LABEL_83;
    }

    v83 = qword_280BE68C0;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_68_25();
    }

    OUTLINED_FUNCTION_168(qword_280C02150);
    OUTLINED_FUNCTION_997();

    if (v83)
    {
      type metadata accessor for ArtistPropertyProvider();
      OUTLINED_FUNCTION_165();
      v85 = *(v105 + 80);
      goto LABEL_83;
    }

    v83 = qword_280BE68D8;

    if (v83 != -1)
    {
      OUTLINED_FUNCTION_67_21();
    }

    OUTLINED_FUNCTION_168(qword_280C02160);
    OUTLINED_FUNCTION_997();

    if (v83)
    {
      type metadata accessor for ArtistPropertyProvider();
      OUTLINED_FUNCTION_165();
      v85 = *(v106 + 84);
      goto LABEL_83;
    }

    v107 = qword_280BE69F8;

    if (v107 != -1)
    {
      OUTLINED_FUNCTION_65_26();
    }

    OUTLINED_FUNCTION_168(qword_280C021C0);
    OUTLINED_FUNCTION_997();

    if (v107)
    {
      v27 = 0;
      v83 = 0;
      v85 = *(type metadata accessor for ArtistPropertyProvider() + 100);
LABEL_83:
      v86 = &v166[v85];
      if ((v86[1] & 1) == 0)
      {
        v27 = *v86;
        v83 = MEMORY[0x277D83B88];
      }

      goto LABEL_85;
    }

    v108 = qword_280BE6880;

    if (v108 != -1)
    {
      OUTLINED_FUNCTION_3_12();
    }

    OUTLINED_FUNCTION_168(qword_280BE6888);
    OUTLINED_FUNCTION_997();

    if (v108)
    {
      v109 = *(type metadata accessor for ArtistPropertyProvider() + 104);
    }

    else
    {
      v113 = qword_280BE69A8;

      if (v113 != -1)
      {
        OUTLINED_FUNCTION_22_57();
      }

      OUTLINED_FUNCTION_168(qword_280C021A8);
      OUTLINED_FUNCTION_997();

      if (v113)
      {
        v114 = *(type metadata accessor for ArtistPropertyProvider() + 108);
LABEL_134:
        v115 = OUTLINED_FUNCTION_59_24(v114);
        sub_21726A630(v115, v171, v116, v117);
        if (*(&v171[5] + 1))
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
          goto LABEL_136;
        }

        v125 = &qword_27CB25310;
        v126 = &unk_21775D3D0;
LABEL_180:
        sub_2171F0738(v171, v125, v126);
        v27 = 0;
        v83 = 0;
        goto LABEL_86;
      }

      v120 = qword_280BE68E0;

      if (v120 != -1)
      {
        OUTLINED_FUNCTION_21_48();
      }

      OUTLINED_FUNCTION_168(qword_280C02168);
      OUTLINED_FUNCTION_997();

      if (v120)
      {
        v121 = type metadata accessor for ArtistPropertyProvider();
        v122 = OUTLINED_FUNCTION_59_24(*(v121 + 112));
        sub_21726A630(v122, v171, v123, v124);
        if (*&v171[1])
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
          v27 = swift_allocObject();
          v118 = v27 + 16;
          v119 = 128;
          goto LABEL_137;
        }

        v125 = &unk_27CB24330;
        v126 = &unk_21775D460;
        goto LABEL_180;
      }

      v127 = qword_280BE6870;

      if (v127 != -1)
      {
        OUTLINED_FUNCTION_11_0();
      }

      OUTLINED_FUNCTION_168(qword_280BE6878);
      OUTLINED_FUNCTION_997();

      if (v127)
      {
        v128 = type metadata accessor for ArtistPropertyProvider();
        v129 = OUTLINED_FUNCTION_59_24(*(v128 + 116));
        sub_21726A630(v129, v171, v130, v131);
        if (*(&v171[5] + 1))
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C80, &unk_21775D420);
          goto LABEL_136;
        }

        v125 = &qword_27CB25320;
        v126 = &unk_21776E020;
        goto LABEL_180;
      }

      v132 = qword_280BE69E8;

      if (v132 != -1)
      {
        OUTLINED_FUNCTION_2_7();
      }

      OUTLINED_FUNCTION_168(qword_280BE69F0);
      OUTLINED_FUNCTION_997();

      if (v132)
      {
        v133 = *(type metadata accessor for ArtistPropertyProvider() + 120);
LABEL_154:
        v134 = OUTLINED_FUNCTION_59_24(v133);
        sub_21726A630(v134, v171, v135, v136);
        if (*(&v171[5] + 1))
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
          goto LABEL_136;
        }

        v125 = &unk_27CB25338;
        v126 = &unk_21775D3E0;
        goto LABEL_180;
      }

      v137 = qword_280BE6820;

      if (v137 != -1)
      {
        OUTLINED_FUNCTION_18_57();
      }

      OUTLINED_FUNCTION_168(qword_280BE6828);
      OUTLINED_FUNCTION_997();

      if (v137)
      {
        v138 = *(type metadata accessor for ArtistPropertyProvider() + 124);
LABEL_161:
        v139 = OUTLINED_FUNCTION_59_24(v138);
        sub_21726A630(v139, v171, v140, v141);
        if (*(&v171[5] + 1))
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
          goto LABEL_136;
        }

        v125 = &qword_27CB25330;
        v126 = &unk_21775E9B0;
        goto LABEL_180;
      }

      v142 = qword_280BE6848;

      if (v142 != -1)
      {
        OUTLINED_FUNCTION_17_60();
      }

      OUTLINED_FUNCTION_168(qword_280BE6850);
      OUTLINED_FUNCTION_997();

      if (v142)
      {
        v143 = type metadata accessor for ArtistPropertyProvider();
        v144 = OUTLINED_FUNCTION_59_24(*(v143 + 128));
        sub_21726A630(v144, v171, v145, v146);
        if (*(&v171[5] + 1))
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255B8, &unk_21775D470);
          goto LABEL_136;
        }

        v125 = &unk_27CB255B0;
        v126 = &unk_217793B50;
        goto LABEL_180;
      }

      v147 = qword_280BE6950;

      if (v147 != -1)
      {
        OUTLINED_FUNCTION_16_70();
      }

      OUTLINED_FUNCTION_168(qword_280BE6958);
      OUTLINED_FUNCTION_997();

      if (v147)
      {
        v109 = *(type metadata accessor for ArtistPropertyProvider() + 132);
      }

      else
      {
        v148 = qword_280BE6908;

        if (v148 != -1)
        {
          OUTLINED_FUNCTION_15_64();
        }

        OUTLINED_FUNCTION_168(qword_280BE6910);
        OUTLINED_FUNCTION_997();

        if ((v148 & 1) == 0)
        {
          while (1)
          {
            v150 = qword_280BE6980;

            if (v150 != -1)
            {
              OUTLINED_FUNCTION_14_62();
            }

            OUTLINED_FUNCTION_168(qword_280BE6988);
            OUTLINED_FUNCTION_997();

            if (v150)
            {
              v109 = *(type metadata accessor for ArtistPropertyProvider() + 140);
              goto LABEL_128;
            }

            v151 = qword_280BE68F8;

            if (v151 != -1)
            {
              OUTLINED_FUNCTION_13_68();
            }

            OUTLINED_FUNCTION_168(qword_280BE6900);
            OUTLINED_FUNCTION_997();

            if (v151)
            {
              v138 = *(type metadata accessor for ArtistPropertyProvider() + 144);
              goto LABEL_161;
            }

            v152 = qword_280BE6A30;

            if (v152 != -1)
            {
              OUTLINED_FUNCTION_12_63();
            }

            OUTLINED_FUNCTION_168(qword_280BE6A38);
            OUTLINED_FUNCTION_997();

            if (v152)
            {
              v109 = *(type metadata accessor for ArtistPropertyProvider() + 148);
              goto LABEL_128;
            }

            v153 = qword_280BE69C8;

            if (v153 != -1)
            {
              OUTLINED_FUNCTION_11_75();
            }

            OUTLINED_FUNCTION_168(qword_280BE69D0);
            OUTLINED_FUNCTION_997();

            if (v153)
            {
              v109 = *(type metadata accessor for ArtistPropertyProvider() + 152);
              goto LABEL_128;
            }

            v154 = qword_280BE6A10;

            if (v154 != -1)
            {
              OUTLINED_FUNCTION_10_68();
            }

            OUTLINED_FUNCTION_168(qword_280BE6A18);
            OUTLINED_FUNCTION_997();

            if (v154)
            {
              v109 = *(type metadata accessor for ArtistPropertyProvider() + 156);
              goto LABEL_128;
            }

            v155 = qword_280BE6968;

            if (v155 != -1)
            {
              OUTLINED_FUNCTION_9_83();
            }

            OUTLINED_FUNCTION_168(qword_280BE6970);
            OUTLINED_FUNCTION_997();

            if (v155)
            {
              v114 = *(type metadata accessor for ArtistPropertyProvider() + 160);
              goto LABEL_134;
            }

            v156 = qword_280BE6860;

            if (v156 != -1)
            {
              OUTLINED_FUNCTION_8_84();
            }

            OUTLINED_FUNCTION_168(qword_280BE6868);
            OUTLINED_FUNCTION_997();

            if (v156)
            {
              v109 = *(type metadata accessor for ArtistPropertyProvider() + 164);
              goto LABEL_128;
            }

            v157 = qword_280BE6A58;

            if (v157 != -1)
            {
              OUTLINED_FUNCTION_7_82();
            }

            OUTLINED_FUNCTION_168(qword_280BE6A60);
            OUTLINED_FUNCTION_997();

            if (v157)
            {
              v133 = *(type metadata accessor for ArtistPropertyProvider() + 168);
              goto LABEL_154;
            }

            v158 = qword_280BE6830;

            if (v158 != -1)
            {
              OUTLINED_FUNCTION_6_100();
            }

            OUTLINED_FUNCTION_168(qword_280BE6838);
            OUTLINED_FUNCTION_997();

            if (v158)
            {
              break;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
            swift_allocObject();
            v163 = OUTLINED_FUNCTION_54_0();
            OUTLINED_FUNCTION_168(v163);
            OUTLINED_FUNCTION_5_4();

            OUTLINED_FUNCTION_155_3();
            sub_217752AA8();
            OUTLINED_FUNCTION_126_4();
            MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
            v170[0] = v3;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            OUTLINED_FUNCTION_217_0();
            OUTLINED_FUNCTION_121_4();
            v149 = 171;
LABEL_182:
            v165 = v149;
            OUTLINED_FUNCTION_4_0();
            __break(1u);
          }

          v159 = type metadata accessor for ArtistPropertyProvider();
          v160 = OUTLINED_FUNCTION_59_24(*(v159 + 172));
          sub_21726A630(v160, v171, v161, v162);
          if (*(&v171[5] + 1))
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27820, &qword_21775DAB0);
            goto LABEL_136;
          }

          v125 = &unk_27CB255A8;
          v126 = &unk_21775D450;
          goto LABEL_180;
        }

        v109 = *(type metadata accessor for ArtistPropertyProvider() + 136);
      }
    }

LABEL_128:
    v110 = OUTLINED_FUNCTION_59_24(v109);
    sub_21726A630(v110, v171, v111, v112);
    if (*(&v171[5] + 1))
    {
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
LABEL_136:
      v27 = swift_allocObject();
      v118 = v27 + 16;
      v119 = 104;
LABEL_137:
      memcpy(v118, v171, v119);
LABEL_85:

LABEL_86:
      v87 = v167;
      *v167 = v27;
      v87[1] = 0;
      v87[2] = 0;
      v87[3] = v83;
      goto LABEL_223;
    }

    v125 = &qword_27CB25318;
    v126 = &qword_2177657C0;
    goto LABEL_180;
  }

  v94 = v166[*(type metadata accessor for ArtistPropertyProvider() + 92)];

  v95 = &type metadata for LegacyModelFavoriteStatus;
  if (v94 == 3)
  {
    v96 = 0;
  }

  else
  {
    v96 = v94;
  }

  if (v94 == 3)
  {
    v95 = 0;
  }

  v97 = v167;
  *v167 = v96;
  v97[1] = 0;
  v97[2] = 0;
  v97[3] = v95;
LABEL_223:
  OUTLINED_FUNCTION_13();
}