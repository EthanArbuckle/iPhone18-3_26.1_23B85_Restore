uint64_t getEnumTagSinglePayload for CloudRadioShow.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudRadioShow.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudRadioShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175E03FC()
{
  result = qword_27CB2AA40;
  if (!qword_27CB2AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA40);
  }

  return result;
}

unint64_t sub_2175E0454()
{
  result = qword_27CB2AA48;
  if (!qword_27CB2AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA48);
  }

  return result;
}

unint64_t sub_2175E04AC()
{
  result = qword_27CB2AA50;
  if (!qword_27CB2AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA50);
  }

  return result;
}

unint64_t sub_2175E0504()
{
  result = qword_27CB2AA58;
  if (!qword_27CB2AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA58);
  }

  return result;
}

unint64_t sub_2175E055C()
{
  result = qword_27CB2AA60;
  if (!qword_27CB2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA60);
  }

  return result;
}

unint64_t sub_2175E05B4()
{
  result = qword_27CB2AA68;
  if (!qword_27CB2AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA68);
  }

  return result;
}

unint64_t sub_2175E060C()
{
  result = qword_27CB2AA70;
  if (!qword_27CB2AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AA70);
  }

  return result;
}

unint64_t sub_2175E0664()
{
  result = qword_280BE42B0;
  if (!qword_280BE42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42B0);
  }

  return result;
}

unint64_t sub_2175E06BC()
{
  result = qword_280BE42B8;
  if (!qword_280BE42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42B8);
  }

  return result;
}

unint64_t sub_2175E0714()
{
  result = qword_280BE41E8;
  if (!qword_280BE41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41E8);
  }

  return result;
}

unint64_t sub_2175E076C()
{
  result = qword_280BE41F0;
  if (!qword_280BE41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE41F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_52()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_47_24@<X0>(char a1@<W8>)
{
  *(v1 + 64) = a1;

  return sub_217752E18();
}

uint64_t static CloudGenre.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudGenre(0);
  v6 = v5[5];
  static CloudGenre.Attributes.== infix(_:_:)();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v5[6];
  sub_21738C4B0(v2 + v8, v21, &qword_27CB24AA0, &qword_21775D8F0);
  sub_21738C4B0(a2 + v8, v23, &qword_27CB24AA0, &qword_21775D8F0);
  if (v22 == 1)
  {
    if (v23[2] == 1)
    {
      sub_2171F0738(v21, &qword_27CB24AA0, &qword_21775D8F0);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_21738C4B0(v21, v20, &qword_27CB24AA0, &qword_21775D8F0);
  if (v23[2] == 1)
  {
    sub_217284594(v20);
LABEL_12:
    sub_2171F0738(v21, &qword_27CB2AA88, &qword_217784DC8);
    return 0;
  }

  memcpy(v19, v23, sizeof(v19));
  v9 = static CloudGenre.Relationships.== infix(_:_:)(v20, v19);
  sub_217284594(v19);
  sub_217284594(v20);
  sub_2171F0738(v21, &qword_27CB24AA0, &qword_21775D8F0);
  if (!v9)
  {
    return 0;
  }

LABEL_14:
  if (*(v2 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v10 = v5[8];
  v11 = *(v2 + v10);
  v12 = *(a2 + v10);
  if (v11 != 1)
  {
    if (v12 == 1)
    {
      sub_21733CF78(v11);
      sub_21733CF78(1);
      sub_21733CF78(v11);

LABEL_21:
      sub_217221010(v11);
      v14 = v12;
LABEL_32:
      sub_217221010(v14);
      return 0;
    }

    if (v11)
    {
      if (v12)
      {
        sub_21733CF78(v11);
        sub_21733CF78(v12);
        sub_21733CF78(v11);
        sub_21733CF78(v12);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v16 = v15;
        sub_217221010(v12);
        sub_217221010(v12);
        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_217221010(v11);
        return 1;
      }

      sub_21733CF78(v11);
      v17 = v11;
    }

    else
    {
      sub_21733CF78(0);
      v17 = 0;
      if (!v12)
      {
        sub_21733CF78(0);
        sub_21733CF78(0);
        sub_217221010(0);
        goto LABEL_28;
      }
    }

    sub_21733CF78(v12);
    sub_21733CF78(v17);
    sub_217221010(v12);
LABEL_31:

    v14 = v11;
    goto LABEL_32;
  }

  sub_21733CF78(1);
  if (v12 != 1)
  {
    sub_21733CF78(v12);
    goto LABEL_21;
  }

  v13 = 1;
  sub_21733CF78(1);
  sub_217221010(1);
  return v13;
}

void CloudGenre.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v33 = v3;
  v4 = type metadata accessor for CloudGenre.Attributes(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AA90, &qword_217784DD0);
  OUTLINED_FUNCTION_0_0(v34);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_131_0();
  v16 = type metadata accessor for CloudGenre(0);
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v35 = *(v21 + 32);
  v24 = (v23 - v22);
  *(v23 - v22 + v35) = 1;
  v25 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2175E39D4();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217221010(*(v24 + v35));
  }

  else
  {
    sub_2172E1C68();
    OUTLINED_FUNCTION_42_31();
    sub_217752EA8();
    v26 = v36[1];
    *v24 = v36[0];
    v24[1] = v26;
    LOBYTE(v36[0]) = 1;
    OUTLINED_FUNCTION_15_55();
    sub_2175E3BE0(v27);
    sub_217752EA8();
    sub_2175E3A28(v11, v24 + v16[5]);
    sub_2175E3A8C();
    OUTLINED_FUNCTION_42_31();
    sub_217752E58();
    memcpy(v24 + v16[6], v36, 0x80uLL);
    sub_2175E3AE0();
    OUTLINED_FUNCTION_34();
    *v16[7] = v36[0];
    sub_2175E3B34();
    OUTLINED_FUNCTION_34();
    v28 = OUTLINED_FUNCTION_16_3();
    v29(v28);
    v30 = v36[0];
    sub_217221010(*(v24 + v35));
    *(v24 + v35) = v30;
    OUTLINED_FUNCTION_1_107();
    sub_2175E5E44(v24, v33, v31);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_4_94();
    sub_2175E3B88(v24, v32);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudGenre.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AA98, &qword_217784DD8);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_87_2();
  v13 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175E39D4();
  sub_2177532F8();
  v19 = *v4;
  v22 = v4[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v14 = type metadata accessor for CloudGenre(0);
    v15 = v14[5];
    type metadata accessor for CloudGenre.Attributes(0);
    OUTLINED_FUNCTION_15_55();
    sub_2175E3BE0(v16);
    sub_217752F88();
    v17 = v14[6];
    sub_21733C378();
    sub_217752F38();
    v20 = *(v4 + v14[7]);
    sub_21733C324();
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v21 = *(v4 + v14[8]);
    sub_21733CF78(v21);
    sub_2174D7BC8();
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    sub_217221010(v21);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CloudGenre.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

void static CloudGenre.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v4;
  v7 = v6;
  v8 = sub_2177516D8();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_111();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_12_33();
  memcpy(v26, v27, v28);
  v29 = OUTLINED_FUNCTION_39_24();
  memcpy(v29, v5, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v30, v31, v32);
  memcpy(&v117[55], v5, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v33, v34, v35);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v120) == 1)
  {
    OUTLINED_FUNCTION_19_26(v116);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v116) == 1)
    {
      v102 = v17;
      v103 = v11;
      v104 = v8;
      memcpy(v118, v117, sizeof(v118));
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v36, v37, v38, &unk_21776EA00);
      OUTLINED_FUNCTION_39_24();
      OUTLINED_FUNCTION_23_5();
      sub_21738C4B0(v39, v40, v41, &unk_21776EA00);
      sub_2171F0738(v118, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v116, v117, sizeof(v116));
    OUTLINED_FUNCTION_33_1(v119, v118);
    v42 = OUTLINED_FUNCTION_39_24();
    OUTLINED_FUNCTION_33_1(v42, v118);
    v43 = &unk_27CB25008;
    v44 = &unk_21778F850;
    v45 = v116;
LABEL_6:
    sub_2171F0738(v45, v43, v44);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_19_26(v114);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v114) == 1)
  {
    goto LABEL_5;
  }

  v102 = v17;
  v103 = v11;
  v104 = v8;
  OUTLINED_FUNCTION_19_26(v105);
  OUTLINED_FUNCTION_19_26(v116);
  memcpy(v118, v117, sizeof(v118));
  sub_21738C4B0(v119, v106, &qword_27CB25000, &unk_21776EA00);
  v46 = OUTLINED_FUNCTION_39_24();
  sub_21738C4B0(v46, v106, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v48 = v47;
  sub_2171F0738(v105, &qword_27CB25000, &unk_21776EA00);
  memcpy(v106, v117, sizeof(v106));
  sub_2171F0738(v106, &qword_27CB25000, &unk_21776EA00);
  if ((v48 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v49 = *(v7 + 448);
  v50 = *(v5 + 448);
  if (v49)
  {
    if (!v50)
    {
      goto LABEL_7;
    }

    v51 = *(v7 + 440) == *(v5 + 440) && v49 == v50;
    if (!v51 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v50)
  {
    goto LABEL_7;
  }

  v52 = *(v5 + 456);
  if (*(v7 + 456))
  {
    if (!v52)
    {
      goto LABEL_7;
    }

    v53 = *(v5 + 456);
    sub_217751DE8();
    sub_217262A00();
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v52)
  {
    goto LABEL_7;
  }

  memcpy(v105, (v7 + 464), 0x48uLL);
  memcpy(v106, (v5 + 464), 0x48uLL);
  v56 = *(v7 + 480);
  v110 = *(v7 + 464);
  v111 = v56;
  v57 = *(v7 + 512);
  v112 = *(v7 + 496);
  v113 = v57;
  v58 = v105[8];
  if (v105[8])
  {
    if (v106[8])
    {
      v59 = *(v5 + 480);
      v107[0] = *(v5 + 464);
      v107[1] = v59;
      v60 = *(v5 + 512);
      v107[2] = *(v5 + 496);
      v107[3] = v60;
      *&v107[4] = v106[8];
      memcpy(v117, v107, 0x48uLL);
      v61 = *(v7 + 480);
      v114[0] = *(v7 + 464);
      v114[1] = v61;
      v62 = *(v7 + 512);
      v114[2] = *(v7 + 496);
      v114[3] = v62;
      v115 = v105[8];
      sub_21738C4B0(v105, v108, &qword_27CB25010, &qword_21775B4F8);
      sub_21738C4B0(v106, v108, &qword_27CB25010, &qword_21775B4F8);
      sub_2172A9570();
      v64 = v63;
      sub_2171F0738(v107, &qword_27CB25010, &qword_21775B4F8);
      v108[0] = v110;
      v108[1] = v111;
      v108[2] = v112;
      v108[3] = v113;
      v109 = v58;
      sub_2171F0738(v108, &qword_27CB25010, &qword_21775B4F8);
      if ((v64 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v106[8])
  {
LABEL_28:
    OUTLINED_FUNCTION_35_30();
    v65 = *(v5 + 480);
    *&v117[9] = *(v5 + 464);
    *&v117[11] = v65;
    v66 = *(v5 + 512);
    *&v117[13] = *(v5 + 496);
    *&v117[15] = v66;
    v117[8] = v58;
    v117[17] = v67;
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v68, v69, v70, &qword_21775B4F8);
    OUTLINED_FUNCTION_23_5();
    sub_21738C4B0(v71, v72, v73, &qword_21775B4F8);
    v43 = &unk_27CB25018;
    v44 = &unk_21775B500;
    v45 = v117;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_35_30();
  v117[8] = 0;
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v74, v75, v76, &qword_21775B4F8);
  OUTLINED_FUNCTION_23_5();
  sub_21738C4B0(v77, v78, v79, &qword_21775B4F8);
  sub_2171F0738(v117, &qword_27CB25010, &qword_21775B4F8);
LABEL_30:
  v80 = *(v5 + 536);
  if (*(v7 + 536))
  {
    if (!v80)
    {
      goto LABEL_7;
    }

    v81 = *(v5 + 536);
    sub_217751DE8();
    sub_217262CB4();
    v83 = v82;

    if ((v83 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v80)
  {
    goto LABEL_7;
  }

  v84 = *(v7 + 544);
  v85 = *(v5 + 544);
  if (v84 == 3)
  {
    if (v85 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v85 == 3 || (sub_2177072D0(v84, v85) & 1) == 0)
  {
    goto LABEL_7;
  }

  v86 = *(v7 + 560);
  v87 = *(v5 + 560);
  if (v86)
  {
    if (!v87)
    {
      goto LABEL_7;
    }

    v88 = *(v7 + 552) == *(v5 + 552) && v86 == v87;
    if (!v88 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v87)
  {
    goto LABEL_7;
  }

  v89 = *(v7 + 576);
  v90 = *(v5 + 576);
  if (v89)
  {
    if (!v90)
    {
      goto LABEL_7;
    }

    v91 = *(v7 + 568) == *(v5 + 568) && v89 == v90;
    if (!v91 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v90)
  {
    goto LABEL_7;
  }

  v92 = *(v7 + 592);
  v93 = *(v5 + 592);
  if (v92)
  {
    if (!v93)
    {
      goto LABEL_7;
    }

    v94 = *(v7 + 584) == *(v5 + 584) && v92 == v93;
    if (!v94 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v93)
  {
    goto LABEL_7;
  }

  v95 = *(v7 + 608);
  v96 = *(v5 + 608);
  if (!v95)
  {
    if (v96)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

  if (v96)
  {
    v97 = *(v7 + 600) == *(v5 + 600) && v95 == v96;
    if (v97 || (sub_217753058() & 1) != 0)
    {
LABEL_76:
      v98 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
      v99 = *(v21 + 48);
      sub_21738C4B0(v7 + v98, v0, &unk_27CB277C0, &qword_217758DC0);
      sub_21738C4B0(v5 + v98, v0 + v99, &unk_27CB277C0, &qword_217758DC0);
      if (__swift_getEnumTagSinglePayload(v0, 1, v104) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v0 + v99, 1, v104) == 1)
        {
          sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_21738C4B0(v0, v1, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(v0 + v99, 1, v104) != 1)
        {
          (*(v103 + 32))(v102, v0 + v99, v104);
          OUTLINED_FUNCTION_2_101();
          sub_2175E3BE0(v100);
          sub_217751F08();
          v101 = *(v103 + 8);
          v101(v102, v104);
          v101(v1, v104);
          sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v103 + 8))(v1, v104);
      }

      v43 = &qword_27CB24840;
      v44 = &unk_217758DD0;
      v45 = v0;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175E19CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x62614C7472616863 && a2 == 0xEA00000000006C65;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1684957547 && a2 == 0xE400000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x614E746E65726170 && a2 == 0xEA0000000000656DLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_217753058();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2175E1D40(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x62614C7472616863;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
      result = 0x6169726F74696465;
      break;
    case 5:
      result = 1684957547;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6449746E65726170;
      break;
    case 8:
      result = 0x614E746E65726170;
      break;
    case 9:
      result = 0x6D614E74726F6873;
      break;
    case 10:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175E1E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175E19CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175E1EB4(uint64_t a1)
{
  v2 = sub_2175E5DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175E1EF0(uint64_t a1)
{
  v2 = sub_2175E5DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudGenre.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAA0, &qword_217784DE0);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_111();
  v13 = v5[4];
  OUTLINED_FUNCTION_160(v5, v5[3]);
  sub_2175E5DF0();
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v14, v15, v16);
  OUTLINED_FUNCTION_12_33();
  memcpy(v17, v18, v19);
  sub_21738C4B0(&v38, v36, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12();
  memcpy(v36, v37, sizeof(v36));
  if (v1)
  {
    sub_2171F0738(v36, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v36, &qword_27CB25000, &unk_21776EA00);
    v20 = *(v3 + 440);
    v21 = *(v3 + 448);
    v34[0] = 1;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v35 = *(v3 + 456);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12();
    memcpy(v34, (v3 + 464), sizeof(v34));
    memcpy(v33, (v3 + 464), sizeof(v33));
    sub_21738C4B0(v34, v32, &qword_27CB25010, &qword_21775B4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF104();
    OUTLINED_FUNCTION_28_12();
    memcpy(v32, v33, sizeof(v32));
    sub_2171F0738(v32, &qword_27CB25010, &qword_21775B4F8);
    v30 = *(v3 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_2175D4A04();
    OUTLINED_FUNCTION_28_12();
    LOBYTE(v30) = *(v3 + 544);
    sub_2175D4AAC();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v22 = *(v3 + 552);
    v23 = *(v3 + 560);
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v31 = *(v3 + 568);
    sub_2172E1B18();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v24 = *(v3 + 584);
    v25 = *(v3 + 592);
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v26 = *(v3 + 600);
    v27 = *(v3 + 608);
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v28 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
    sub_2177516D8();
    OUTLINED_FUNCTION_2_101();
    sub_2175E3BE0(v29);
    OUTLINED_FUNCTION_28_12();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_170();
}

void CloudGenre.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = v32 - v16;
  memcpy(v33, v0, sizeof(v33));
  v18 = *(v0 + 432);
  memcpy(v34, v0, sizeof(v34));
  v35 = v18;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v34) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v32, v33, sizeof(v32));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    v19 = OUTLINED_FUNCTION_179();
    sub_217265A08(v19, v20);
  }

  if (*(v0 + 448))
  {
    v21 = *(v0 + 440);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 456))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 528))
  {
    v22 = *(v0 + 480);
    v32[0] = *(v0 + 464);
    v32[1] = v22;
    v23 = *(v0 + 512);
    v32[2] = *(v0 + 496);
    v32[3] = v23;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)();
    sub_217751DE8();
    v24 = OUTLINED_FUNCTION_179();
    sub_217265A08(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 536))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_179();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 544) == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  if (*(v0 + 560))
  {
    v26 = *(v0 + 552);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 576))
  {
    v27 = *(v0 + 568);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 592))
  {
    v28 = *(v0 + 584);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 608))
  {
    v29 = *(v0 + 600);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v30 = type metadata accessor for CloudGenre.Attributes(0);
  sub_21738C4B0(v0 + *(v30 + 56), v17, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v6 + 32))(v12, v17, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_2_101();
    sub_2175E3BE0(v31);
    sub_217751EB8();
    (*(v6 + 8))(v12, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudGenre.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v33 = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_131_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAA8, &qword_217784DE8);
  OUTLINED_FUNCTION_0_0(v34);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_87_2();
  v15 = type metadata accessor for CloudGenre.Attributes(0);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v35 = v21 - v20;
  v23 = v4[3];
  v22 = v4[4];
  OUTLINED_FUNCTION_160(v4, v23);
  sub_2175E5DF0();
  sub_2177532C8();
  if (v0)
  {
    OUTLINED_FUNCTION_52_25();
    __swift_destroy_boxed_opaque_existential_1(v4);
    if (v4)
    {

      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v23)
    {
LABEL_5:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    v24 = *(v35 + 456);

    if (v22)
    {
LABEL_6:
      memcpy(v38, (v35 + 464), 0x48uLL);
      sub_2171F0738(v38, &qword_27CB25010, &qword_21775B4F8);
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    v25 = *(v35 + 536);

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DF600();
  sub_217752E58();
  memcpy(v35, v38, 0x1B8uLL);
  LOBYTE(v37[0]) = 1;
  *(v35 + 440) = sub_217752E18();
  *(v35 + 448) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
  LOBYTE(v36) = 2;
  sub_2175D4B00(&unk_280BE2398);
  OUTLINED_FUNCTION_31_36();
  *(v35 + 456) = v37[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
  sub_2172DF7DC();
  OUTLINED_FUNCTION_31_36();
  memcpy((v35 + 464), v37, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
  sub_2175D4B80();
  OUTLINED_FUNCTION_31_36();
  *(v35 + 536) = v36;
  sub_21738B1DC();
  OUTLINED_FUNCTION_45_31();
  *(v35 + 544) = 2;
  OUTLINED_FUNCTION_37_31(6);
  *(v35 + 552) = sub_217752E18();
  *(v35 + 560) = v27;
  sub_2172E1C68();
  OUTLINED_FUNCTION_45_31();
  *(v35 + 568) = v36;
  OUTLINED_FUNCTION_37_31(8);
  *(v35 + 584) = sub_217752E18();
  *(v35 + 592) = v28;
  OUTLINED_FUNCTION_37_31(9);
  *(v35 + 600) = sub_217752E18();
  *(v35 + 608) = v29;
  sub_2177516D8();
  OUTLINED_FUNCTION_2_101();
  sub_2175E3BE0(v30);
  sub_217752E58();
  (*(v10 + 8))(v1, v34);
  sub_21751AF10(v2, v35 + *(v15 + 56));
  OUTLINED_FUNCTION_6_76();
  sub_2175E5E44(v35, v33, v31);
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_5_77();
  sub_2175E3B88(v35, v32);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

uint64_t CloudGenre.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudGenre.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2175E2FF4@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudGenre.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_2175E3018(uint64_t a1)
{
  v2 = sub_21738C6C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175E3054(uint64_t a1)
{
  v2 = sub_21738C6C8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudGenre.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_33_1(a1, v7);
  OUTLINED_FUNCTION_33_1(a2, v9);
  if (v8)
  {
    sub_21738C4B0(v7, v6, &qword_27CB242C0, &unk_21775D650);
    if (v9[2])
    {
      memcpy(v5, v9, sizeof(v5));
      v3 = sub_2172DE118(v6, v5);
      sub_2171F0738(v5, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
      sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
      return (v3 & 1) != 0;
    }

    sub_2171F0738(v6, &qword_27CB242C8, &unk_217758970);
  }

  else if (!v9[2])
  {
    sub_2171F0738(v7, &qword_27CB242C0, &unk_21775D650);
    return 1;
  }

  sub_2171F0738(v7, &qword_27CB25198, &qword_21775B550);
  return 0;
}

uint64_t CloudGenre.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAB0, &qword_217784DF0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_131_0();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C6C8();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2175E5F60(&qword_27CB251B8);
  sub_217752F38();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudGenre.Relationships.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB242C0, &unk_21775D650);
  if (!__src[2])
  {
    return sub_217753208();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE724(a1);
  return sub_2171F0738(v4, &qword_27CB242C8, &unk_217758970);
}

uint64_t CloudGenre.Relationships.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB242C0, &unk_21775D650);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v4);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void CloudGenre.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v17 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAB8, &qword_217784DF8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15[-v11 - 8];
  v13 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C6C8();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2175E5F60(&qword_27CB25200);
    sub_217752E58();
    (*(v6 + 8))(v12, v4);
    memcpy(v16, v15, sizeof(v16));
    memcpy(v17, v16, 0x80uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2175E369C(uint64_t a1)
{
  v2 = sub_2175E5FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175E36D8(uint64_t a1)
{
  v2 = sub_2175E5FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudGenre.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAC0, &qword_217784E00);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_111();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_2175E5FE4();
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

MusicKit::CloudGenre::Metadata __swiftcall CloudGenre.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t CloudGenre.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudGenre.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;
      sub_217751DE8();
      sub_21726F358();
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2175E39D4()
{
  result = qword_280BE5568[0];
  if (!qword_280BE5568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5568);
  }

  return result;
}

uint64_t sub_2175E3A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudGenre.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2175E3A8C()
{
  result = qword_280BE5528;
  if (!qword_280BE5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5528);
  }

  return result;
}

unint64_t sub_2175E3AE0()
{
  result = qword_280BE5550;
  if (!qword_280BE5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5550);
  }

  return result;
}

unint64_t sub_2175E3B34()
{
  result = qword_280BE5518;
  if (!qword_280BE5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5518);
  }

  return result;
}

uint64_t sub_2175E3B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2175E3BE0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2175E3C24(uint64_t a1)
{
  v2 = sub_2175E6038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175E3C60(uint64_t a1)
{
  v2 = sub_2175E6038();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudGenre.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAD0, &qword_217784E08);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = *v0;
  v12 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_2175E6038();
  sub_217751DE8();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2175D4ED4(&qword_27CB25298);
  sub_217752F38();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

void CloudGenre.Metadata.hash(into:)()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_119();

    sub_21727DDE0();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CloudGenre.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0();
  }

  return sub_217753238();
}

void CloudGenre.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AAE0, &qword_217784E10);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  OUTLINED_FUNCTION_131_0();
  v23 = v13[4];
  OUTLINED_FUNCTION_160(v13, v13[3]);
  sub_2175E6038();
  sub_2177532C8();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2175D4ED4(&qword_280BE2358);
    sub_217752E58();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudGenre.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudGenre.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_61_17() + 20);
  OUTLINED_FUNCTION_6_76();
  return sub_2175E5E44(v1 + v3, v0, v4);
}

uint64_t CloudGenre.views.getter()
{
  result = OUTLINED_FUNCTION_61_17();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudGenre.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_61_17() + 32));
  *v0 = v2;

  return sub_21733CF78(v2);
}

uint64_t CloudGenre.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudGenre(0) + 32);
  result = sub_217221010(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2175E4264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217759200;
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_25_49();
  }

  v1 = *algn_280BE4A98;
  v2 = byte_280BE4AA0;
  *(v0 + 32) = qword_280BE4A90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE4BF0;
  sub_217751DE8();
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_23_3();
  }

  v4 = unk_280BE4C00;
  v5 = byte_280BE4C08;
  *(v0 + 56) = qword_280BE4BF8;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  off_280BE5540 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175E4360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v1 = unk_280BE4C00;
  v2 = byte_280BE4C08;
  *(v0 + 32) = qword_280BE4BF8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2AA80 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175E4430(char a1)
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
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175E44C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2175E4518(uint64_t a1)
{
  v2 = sub_2175E39D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175E4554(uint64_t a1)
{
  v2 = sub_2175E39D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudGenre.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudGenre(0);
  v7 = v1 + v6[5];
  CloudGenre.Attributes.hash(into:)();
  sub_21738C4B0(v2 + v6[6], __src, &qword_27CB24AA0, &qword_21775D8F0);
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v17, __src, sizeof(v17));
    OUTLINED_FUNCTION_24();
    sub_21726473C(a1, v8, v9, v10, v11, v12, v13, v14);
    sub_217284594(v17);
  }

  v15 = *(v2 + v6[7]);
  sub_217753208();
  v16 = *(v2 + v6[8]);
  if (v16 == 1 || (OUTLINED_FUNCTION_24(), !v16))
  {
    sub_217753208();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0();
  }
}

uint64_t sub_2175E46BC(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2175E4778(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudGenre.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_1_107();
  sub_2175E5E44(v0, v2, v1);
  type metadata accessor for CloudRawCurator();

  return swift_storeEnumTagMultiPayload();
}

void Genre.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v137 = v2;
  v138 = v3;
  v135 = v5;
  v136 = v4;
  v7 = v6;
  v141 = type metadata accessor for CloudGenre(0);
  v8 = OUTLINED_FUNCTION_43(v141);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v142 = (v13 - v12);
  v14 = type metadata accessor for GenrePropertyProvider();
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v129 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v118 - v22;
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0;
  sub_2172DB230();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v25 = v24[10];
  v26 = v7 + v24[9];
  v27 = *(v26 + 8);
  v133 = *v26;
  LODWORD(v132) = *(v26 + 16);
  v28 = *(v7 + v25 + 8);
  v139 = *(v7 + v25);
  v29 = v24[13];
  v130 = *(v7 + v24[12]);
  v30 = *(v7 + v29);
  v31 = *(v7 + v24[14]);
  v32 = *(v7 + v24[15]);
  sub_2172A497C(v163);
  memcpy(v23, v163, 0x221uLL);
  *(v23 + 36) = xmmword_2177586D0;
  *(v23 + 37) = 0u;
  *(v23 + 38) = 0u;
  *(v23 + 39) = 0u;
  v33 = v14[9];
  sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  v127 = v34;
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  memcpy(&v23[v14[10]], v163, 0x221uLL);
  v38 = &v23[v14[12]];
  *(v38 + 48) = 0;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0u;
  *v38 = 0u;
  v128 = v38;
  *(v38 + 56) = -1;
  v39 = v14[13];
  sub_2177516D8();
  v134 = v39;
  OUTLINED_FUNCTION_5_5();
  v126 = v40;
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_112_2(&v23[v14[15]]);
  v44 = qword_280BE3A58;
  v131 = v27;
  sub_217751DE8();
  v140 = v28;
  v45 = v30;
  v46 = v130;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v44 != -1)
  {
    swift_once();
  }

  v47 = qword_280C01FD0;
  v143 = v7;
  v124 = qword_280C01FD0 >> 62;
  v125 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v47 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v48 = &v23[v14[11]];
  *&v23[v14[17]] = v47;
  v49 = &v23[v14[20]];
  memcpy(&v23[v14[18]], v162, 0x161uLL);
  v50 = &v23[v14[19]];
  v51 = v131;
  *v50 = v133;
  *(v50 + 1) = v51;
  v50[16] = v132;
  v52 = v140;
  *v49 = v139;
  v49[1] = v52;
  *&v23[v14[21]] = v46;
  *&v23[v14[22]] = v45;
  *&v23[v14[23]] = v31;
  *&v23[v14[24]] = v32;
  OUTLINED_FUNCTION_1_107();
  v53 = v142;
  sub_2175E5E44(v143, v142, v54);
  v55 = (v53 + *(v141 + 20));
  v56 = v55[70];
  *v48 = v55[69];
  *(v48 + 1) = v56;
  memcpy(v152, v55, sizeof(v152));
  memcpy(v153, v55, sizeof(v153));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v153) == 1)
  {
    memcpy(v151, v163, sizeof(v151));
    sub_217751DE8();
  }

  else
  {
    memcpy(v151, v153, 0x1B8uLL);
    sub_217751DE8();
    sub_21738C4B0(v152, v150, &qword_27CB25000, &unk_21776EA00);
    CloudAttribute<A>.convertToArtwork()(v145);
    memcpy(v144, v151, sizeof(v144));
    sub_2171F0738(v144, &qword_27CB243F0, &qword_21775D690);
    memcpy(v150, v145, 0x221uLL);
    nullsub_1(v150, v57);
    memcpy(v151, v150, sizeof(v151));
  }

  memcpy(v150, v23, 0x221uLL);
  sub_2171F0738(v150, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v23, v151, 0x221uLL);
  *(v23 + 71) = v55[57];
  if (v55[66])
  {
    v58 = v55[65];
    v60 = v55[63];
    v59 = v55[64];
    v61 = v55[61];
    v132 = v55[62];
    v133 = v59;
    v63 = v55[59];
    v62 = v55[60];
    v130 = v55[58];
    v131 = v62;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v61 = 0;
    v132 = 0;
    v133 = 0;
    v60 = 0;
    v58 = 0;
    v63 = 1;
  }

  v64 = &v23[v14[14]];
  v65 = *(v23 + 37);
  v145[0] = *(v23 + 36);
  v145[1] = v65;
  v66 = *(v23 + 39);
  v145[2] = *(v23 + 38);
  v145[3] = v66;
  sub_217751DE8();
  sub_2171F0738(v145, &qword_27CB24B70, &unk_217759460);
  v67 = v131;
  *(v23 + 72) = v130;
  *(v23 + 73) = v63;
  *(v23 + 74) = v67;
  *(v23 + 75) = v61;
  v68 = v133;
  *(v23 + 76) = v132;
  *(v23 + 77) = v60;
  *(v23 + 78) = v68;
  *(v23 + 79) = v58;
  *(v23 + 80) = v55[67];
  v69 = v55[76];
  *v64 = v55[75];
  *(v64 + 1) = v69;
  v70 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v55 + v70, &v23[v134]);
  v71 = v55[56];
  *(v23 + 69) = v55[55];
  *(v23 + 70) = v71;
  v72 = v55[72];
  if (v72)
  {
    v73 = v55[74];
    v74 = v143;
    if (v73)
    {
      v134 = v55[71];
      v132 = v55[73];
      v75 = qword_280BE4A88;
      sub_217751DE8();
      sub_217751DE8();
      if (v75 != -1)
      {
        OUTLINED_FUNCTION_25_49();
      }

      v133 = v73;
      v77 = qword_280BE4A90;
      v76 = *algn_280BE4A98;
      v123 = byte_280BE4AA0;
      v122 = xmmword_280BE62D0;
      v78 = unk_280BE62E8;
      v120 = qword_280BE62E0;
      swift_bridgeObjectRetain_n();
      v121 = v78;
      sub_217751DE8();

      v130 = v76;
      v131 = v77;
      if (v140)
      {
        *v144 = v139;
        *&v144[8] = v140;
        v148 = 47;
        v149 = 0xE100000000000000;
        sub_217751DE8();
        sub_217751DE8();
        MEMORY[0x21CEA23B0](v77, v76);
        MEMORY[0x21CEA23B0](47, 0xE100000000000000);
        MEMORY[0x21CEA23B0](*v142, v142[1]);
        v146 = 47;
        v147 = 0xE100000000000000;
        v74 = v143;
        MEMORY[0x21CEA23B0](v77, v76);
        MEMORY[0x21CEA23B0](47, 0xE100000000000000);
        MEMORY[0x21CEA23B0](v134, v72);
        sub_21733A5C8();
        v139 = sub_217752998();
        v119 = v79;
      }

      else
      {
        sub_217751DE8();
        v139 = 0;
        v119 = 0;
      }

      v143 = OUTLINED_FUNCTION_20_41();
      v140 = OUTLINED_FUNCTION_20_41();
      v118 = OUTLINED_FUNCTION_20_41();
      v80 = OUTLINED_FUNCTION_20_41();
      v81 = v129;
      memcpy(v129, v163, 0x221uLL);
      *(v81 + 552) = 0u;
      *(v81 + 568) = 0u;
      *(v81 + 73) = 1;
      *(v81 + 37) = 0u;
      *(v81 + 38) = 0u;
      *(v81 + 39) = 0u;
      *(v81 + 80) = 0;
      v82 = v14[9];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v127);
      memcpy(&v81[v14[10]], v163, 0x221uLL);
      v86 = &v81[v14[12]];
      *(v86 + 6) = 0;
      *(v86 + 1) = 0u;
      *(v86 + 2) = 0u;
      *v86 = 0u;
      v86[56] = -1;
      v87 = v14[13];
      OUTLINED_FUNCTION_5_5();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v126);
      v91 = &v81[v14[14]];
      *v91 = 0;
      *(v91 + 1) = 0;
      OUTLINED_FUNCTION_112_2(&v81[v14[15]]);
      *&v81[v14[16]] = 0;
      if (v124)
      {
        type metadata accessor for AnyMusicProperty();
        sub_217751DE8();
        v92 = sub_217752D28();
      }

      else
      {
        v92 = v125;
        sub_217751DE8();
        sub_217753128();
        type metadata accessor for AnyMusicProperty();
      }

      v93 = v129;
      v94 = &v129[v14[11]];
      *&v129[v14[17]] = v92;
      v95 = &v93[v14[20]];
      v96 = &v93[v14[18]];
      v97 = v134;
      *v96 = v134;
      *(v96 + 1) = v72;
      *(v96 + 2) = v97;
      *(v96 + 3) = v72;
      v96[32] = 0;
      *(v96 + 33) = v148;
      *(v96 + 9) = *(&v148 + 3);
      bzero(v96 + 40, 0xE0uLL);
      *(v96 + 33) = MEMORY[0x277D84FA0];
      v96[272] = 0;
      *(v96 + 273) = v146;
      *(v96 + 69) = *(&v146 + 3);
      *(v96 + 35) = &unk_28295F2E0;
      *(v96 + 18) = v122;
      v98 = v121;
      *(v96 + 38) = v120;
      *(v96 + 39) = v98;
      *(v96 + 20) = 0u;
      *(v96 + 21) = 0u;
      v96[352] = 4;
      v99 = &v93[v14[19]];
      v100 = v130;
      *v99 = v131;
      *(v99 + 1) = v100;
      v99[16] = v123;
      v101 = v119;
      *v95 = v139;
      v95[1] = v101;
      *&v93[v14[21]] = v143;
      *&v93[v14[22]] = v140;
      *&v93[v14[23]] = v118;
      *&v93[v14[24]] = v80;
      v102 = v133;
      *v94 = v132;
      *(v94 + 1) = v102;
      *&v144[40] = v14;
      *&v144[48] = &protocol witness table for GenrePropertyProvider;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v144[16]);
      OUTLINED_FUNCTION_17_47();
      sub_2175E5E44(v93, boxed_opaque_existential_0, v104);
      v105 = (boxed_opaque_existential_0 + v14[18]);
      v106 = v105[1];
      *v144 = *v105;
      *&v144[8] = v106;
      sub_217751DE8();
      v107 = v128;
      sub_2171F0738(v128, &qword_27CB256A0, &unk_21775D750);
      v108 = *&v144[16];
      *v107 = *v144;
      *(v107 + 16) = v108;
      *(v107 + 32) = *&v144[32];
      *(v107 + 48) = *&v144[48];
      *(v107 + 56) = 0;
      OUTLINED_FUNCTION_16_57();
      sub_2175E3B88(v93, v109);
    }

    else
    {
      sub_217751DE8();
    }
  }

  else
  {
    sub_217751DE8();
    v74 = v143;
  }

  v110 = v142;
  v111 = *(v141 + 32);
  v112 = *(v142 + v111);
  if (v112 == 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = *(v142 + v111);
  }

  *&v23[v14[16]] = v113;
  *&v144[24] = v14;
  *&v144[32] = &protocol witness table for GenrePropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v144);
  OUTLINED_FUNCTION_17_47();
  sub_2175E5E44(v23, v114, v115);
  sub_21733CF78(v112);
  Genre.init(propertyProvider:)(v144, v135);

  (*(*(v138 - 8) + 8))(v137);
  sub_2171F0738(v74, &qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_4_94();
  sub_2175E3B88(v110, v116);
  OUTLINED_FUNCTION_16_57();
  sub_2175E3B88(v23, v117);
  OUTLINED_FUNCTION_13();
}

void Genre.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v257 = v2;
  v252 = type metadata accessor for CloudGenre(0);
  v3 = OUTLINED_FUNCTION_43(v252);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v255 = v8 - v7;
  v246 = type metadata accessor for CloudGenre.Attributes(0);
  v9 = OUTLINED_FUNCTION_43(v246);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  if (qword_280BE6A70 != -1)
  {
    swift_once();
  }

  sub_2176CAE18(qword_280C021E8, v13, v14, v15, v16, v17, v18, v19, v142, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v213, v219, v225, v232, v239, v246);
  memcpy(v278, v277, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v278) == 1)
  {
    sub_2172E22C0(v259);
  }

  else
  {
    memcpy(v259, v278, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v261);
    memcpy(v260, v259, 0x221uLL);
    sub_217284084(v260);
    memcpy(v262, v261, sizeof(v262));
    nullsub_1(v262, v23);
    memcpy(v259, v262, 0x1B8uLL);
  }

  if (qword_280BE6AE0 != -1)
  {
    swift_once();
  }

  v24 = sub_2172A4344();
  v233 = v25;
  v240 = v24;
  if (qword_280BE6AA8 != -1)
  {
    swift_once();
  }

  v226 = sub_2172A4850(qword_280C02210);
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  sub_2176CAE24(qword_280C02228, v26, v27, v28, v29, v30, v31, v32, v143, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v214, v220, v226, v233, v240, v247);
  v33 = v270;
  if (v270 == 1)
  {
    v179 = 0;
    v185 = 0;
    v33 = 0;
    v191 = 0;
    v197 = 0;
    v203 = 0;
    v209 = 0;
    v215 = 0;
    v173 = 0;
  }

  else
  {
    v209 = v275;
    v215 = v276;
    v34 = v274;
    v197 = v273;
    v35 = v272;
    v179 = v269;
    v185 = v271;
    sub_217751DE8();
    sub_217751DE8();
    v191 = v35;
    sub_217751DE8();
    v203 = v34;
    sub_217751DE8();
    v173 = sub_217751DC8();
    sub_2171F0738(&v269, &qword_27CB24B70, &unk_217759460);
  }

  v221 = v33;
  if (qword_280BE6A98 != -1)
  {
    swift_once();
  }

  v167 = sub_2172A4834(qword_280C02208);
  OUTLINED_FUNCTION_28_41();
  v36 = OUTLINED_FUNCTION_10_54();
  v37(v36);
  OUTLINED_FUNCTION_30_36();
  v39 = *(v38 + 48);
  v40 = OUTLINED_FUNCTION_5_4();
  v41(v40);
  __swift_destroy_boxed_opaque_existential_1(v260);
  v42 = v262[0];
  v43 = v262[1];
  if (qword_280BE4BF0 != -1)
  {
    OUTLINED_FUNCTION_23_3();
  }

  if (v42 == qword_280BE4BF8 && v43 == unk_280BE4C00)
  {

    v46 = 1;
  }

  else
  {
    v45 = sub_217753058();

    if (v45)
    {
      v46 = 1;
    }

    else
    {
      v46 = 3;
    }
  }

  HIDWORD(v161) = v46;
  if (qword_280BE6A88 != -1)
  {
    swift_once();
  }

  v54 = sub_2172A4344();
  v55 = v47;
  if (qword_280BE6A80 != -1)
  {
    swift_once();
  }

  v56 = qword_280C021F0;
  sub_2176CA6B8(qword_280C021F0, v47, v48, v49, v50, v51, v52, v53, v144, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v215, v221, v227, v234, v241, v248);
  v57 = v260[1];
  if (v260[1])
  {
    v156 = v260[0];
    sub_217751DE8();
    sub_21728418C(v260);
  }

  else
  {
    sub_2171F0738(v260, &unk_27CB27760, &unk_21775A2D0);
    v156 = 0;
  }

  sub_2176CA6B8(v56, v58, v59, v60, v61, v62, v63, v64, v145, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v235, v242, v249);
  if (v260[1])
  {
    v65 = sub_2172A4344();
    if (v66)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0;
    }

    v151 = v67;
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xE000000000000000;
    }

    sub_21728418C(v260);
  }

  else
  {
    sub_2171F0738(v260, &unk_27CB27760, &unk_21775A2D0);
    v151 = 0;
    v68 = 0;
  }

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v76 = sub_2172A4344();
  v77 = v69;
  if (qword_280BE6A90 != -1)
  {
    swift_once();
  }

  if (!v55)
  {
    v55 = 0xE000000000000000;
    v54 = 0;
  }

  v78 = v22 + *(v250 + 56);
  sub_2176CAEB4(qword_280C02200, v69, v70, v71, v72, v73, v74, v75, v146, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v236, v243, v250, v252, v255, v257, v259[0]);
  memcpy(v22, v259, 0x1B8uLL);
  *(v22 + 440) = v244;
  *(v22 + 448) = v237;
  *(v22 + 456) = v230;
  *(v22 + 464) = v182;
  *(v22 + 472) = v224;
  *(v22 + 480) = v188;
  *(v22 + 488) = v194;
  *(v22 + 496) = v200;
  *(v22 + 504) = v206;
  *(v22 + 512) = v212;
  *(v22 + 520) = v218;
  *(v22 + 528) = v176;
  *(v22 + 536) = v170;
  *(v22 + 544) = v164;
  *(v22 + 552) = v54;
  *(v22 + 560) = v55;
  *(v22 + 568) = v158;
  *(v22 + 576) = v57;
  *(v22 + 584) = v152;
  *(v22 + 592) = v68;
  *(v22 + 600) = v76;
  *(v22 + 608) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
  swift_allocObject();
  v79 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  sub_2172A4818(v79);
  OUTLINED_FUNCTION_5_4();

  if ((v1 + 2) <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = (v1 + 2);
  }

  v82 = *v1;
  v81 = v1[1];
  v83 = v253;
  v84 = v253[5];
  OUTLINED_FUNCTION_6_76();
  sub_2175E5E44(v22, v256 + v85, v86);
  v87 = v256 + v253[6];
  *v87 = 0;
  *(v87 + 1) = 0;
  *(v87 + 2) = 1;
  *(v87 + 24) = 0u;
  *(v87 + 40) = 0u;
  *(v87 + 56) = 0u;
  *(v87 + 72) = 0u;
  *(v87 + 88) = 0u;
  *(v87 + 104) = 0u;
  *(v87 + 15) = 0;
  *v256 = v82;
  v256[1] = v81;
  *(v256 + v253[7]) = 1;
  *(v256 + v253[8]) = v80;
  OUTLINED_FUNCTION_28_41();
  v88 = *(v253 + 3);
  sub_217751DE8();
  v88(v261, v80, v253);
  nullsub_1(v261, v89);
  memcpy(v262, v261, 0x161uLL);
  OUTLINED_FUNCTION_1_107();
  sub_2175E5E44(v256, v258, v90);
  OUTLINED_FUNCTION_28_41();
  v91 = OUTLINED_FUNCTION_10_54();
  v92(v91);
  OUTLINED_FUNCTION_30_36();
  v94 = *(v93 + 48);
  v95 = OUTLINED_FUNCTION_5_4();
  v96(v95);
  __swift_destroy_boxed_opaque_existential_1(v260);
  v251 = v267;
  v254 = v266;
  v245 = v268;
  OUTLINED_FUNCTION_28_41();
  v97 = OUTLINED_FUNCTION_10_54();
  v98(v97);
  OUTLINED_FUNCTION_30_36();
  v100 = *(v99 + 56);
  v101 = OUTLINED_FUNCTION_5_4();
  v103 = v102(v101);
  v231 = v104;
  v238 = v103;
  __swift_destroy_boxed_opaque_existential_1(v260);
  memcpy(v260, v262, 0x168uLL);
  memset(&v260[45], 0, 24);
  nullsub_1(v260, v105);
  v106 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v107 = *(v106 + 96);
  v108 = OUTLINED_FUNCTION_5_4();
  v109(v108, v106);
  OUTLINED_FUNCTION_26_36();
  v111 = *(v110 + 64);
  v112 = OUTLINED_FUNCTION_5_4();
  v114 = v113(v112);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v115 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v116 = *(v115 + 96);
  v117 = OUTLINED_FUNCTION_5_4();
  v118(v117, v115);
  OUTLINED_FUNCTION_26_36();
  v120 = *(v119 + 72);
  v121 = OUTLINED_FUNCTION_5_4();
  v123 = v122(v121);
  __swift_destroy_boxed_opaque_existential_1(v263);
  OUTLINED_FUNCTION_28_41();
  v124 = *(v83 + 12);
  v125 = OUTLINED_FUNCTION_5_4();
  v126(v125, v83);
  OUTLINED_FUNCTION_26_36();
  v128 = *(v127 + 80);
  v129 = OUTLINED_FUNCTION_5_4();
  v131 = v130(v129);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v132 = v1[5];
  v133 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v132);
  (*(v133 + 96))(v263, v132, v133);
  v134 = v264;
  v135 = v265;
  __swift_project_boxed_opaque_existential_1(v263, v264);
  v136 = (*(*(v135 + 8) + 88))(v134);
  OUTLINED_FUNCTION_4_94();
  sub_2175E3B88(v256, v137);
  OUTLINED_FUNCTION_5_77();
  sub_2175E3B88(v22, v138);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v140 = v258 + v139[9];
  *v140 = v254;
  *(v140 + 8) = v251;
  *(v140 + 16) = v245;
  v141 = (v258 + v139[10]);
  *v141 = v238;
  v141[1] = v231;
  memcpy((v258 + v139[11]), v260, 0x180uLL);
  *(v258 + v139[12]) = v114;
  *(v258 + v139[13]) = v123;
  *(v258 + v139[14]) = v131;
  *(v258 + v139[15]) = v136;
  OUTLINED_FUNCTION_13();
}

unint64_t sub_2175E5DF0()
{
  result = qword_280BE5640[0];
  if (!qword_280BE5640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5640);
  }

  return result;
}

uint64_t sub_2175E5E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

unint64_t sub_2175E5EA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2175E3BE0(&unk_27CB251C8);
    sub_2175E3BE0(&unk_27CB251D0);
    result = OUTLINED_FUNCTION_44();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175E5F60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2175E5EA0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2175E5FE4()
{
  result = qword_27CB2AAC8;
  if (!qword_27CB2AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAC8);
  }

  return result;
}

unint64_t sub_2175E6038()
{
  result = qword_27CB2AAD8;
  if (!qword_27CB2AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAD8);
  }

  return result;
}

unint64_t sub_2175E60D8()
{
  result = qword_27CB2AAF0;
  if (!qword_27CB2AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAF0);
  }

  return result;
}

unint64_t sub_2175E6130()
{
  result = qword_27CB2AAF8;
  if (!qword_27CB2AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AAF8);
  }

  return result;
}

unint64_t sub_2175E6188()
{
  result = qword_27CB2AB00;
  if (!qword_27CB2AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB00);
  }

  return result;
}

unint64_t sub_2175E61E0()
{
  result = qword_27CB2AB08;
  if (!qword_27CB2AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2AB10, &qword_217784FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB08);
  }

  return result;
}

unint64_t sub_2175E6248()
{
  result = qword_27CB2AB18;
  if (!qword_27CB2AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB18);
  }

  return result;
}

unint64_t sub_2175E62A0()
{
  result = qword_27CB2AB20;
  if (!qword_27CB2AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB20);
  }

  return result;
}

unint64_t sub_2175E62F8()
{
  result = qword_27CB2AB28;
  if (!qword_27CB2AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB28);
  }

  return result;
}

void sub_2175E64B0()
{
  type metadata accessor for CloudGenre.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE5520);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5548);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE5510);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2175E65CC()
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE4308, &qword_27CB25040, &qword_21775B518);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE4F80);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE5928);
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2172E2DB0();
        v1 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *sub_2175E67D4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudGenre.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudGenre.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175E6A4C()
{
  result = qword_27CB2AB40;
  if (!qword_27CB2AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB40);
  }

  return result;
}

unint64_t sub_2175E6AA4()
{
  result = qword_27CB2AB48;
  if (!qword_27CB2AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB48);
  }

  return result;
}

unint64_t sub_2175E6AFC()
{
  result = qword_27CB2AB50;
  if (!qword_27CB2AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB50);
  }

  return result;
}

unint64_t sub_2175E6B54()
{
  result = qword_27CB2AB58;
  if (!qword_27CB2AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB58);
  }

  return result;
}

unint64_t sub_2175E6BAC()
{
  result = qword_27CB2AB60;
  if (!qword_27CB2AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB60);
  }

  return result;
}

unint64_t sub_2175E6C04()
{
  result = qword_27CB2AB68;
  if (!qword_27CB2AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB68);
  }

  return result;
}

unint64_t sub_2175E6C5C()
{
  result = qword_27CB2AB70;
  if (!qword_27CB2AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB70);
  }

  return result;
}

unint64_t sub_2175E6CB4()
{
  result = qword_280BE5630;
  if (!qword_280BE5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5630);
  }

  return result;
}

unint64_t sub_2175E6D0C()
{
  result = qword_280BE5638;
  if (!qword_280BE5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5638);
  }

  return result;
}

unint64_t sub_2175E6D64()
{
  result = qword_280BE5558;
  if (!qword_280BE5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5558);
  }

  return result;
}

unint64_t sub_2175E6DBC()
{
  result = qword_280BE5560;
  if (!qword_280BE5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5560);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{

  return sub_217751DC8();
}

void *OUTLINED_FUNCTION_26_36()
{
  v1 = v0[273];
  result = __swift_project_boxed_opaque_existential_1(v0 + 269, v0[272]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_31()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_61_17()
{

  return type metadata accessor for CloudGenre(0);
}

void *sub_2175E6EE4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (!dynamic_cast_existential_1_conditional(a1))
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0]();
    v44 = sub_217753348();
    MEMORY[0x21CEA23B0](v44);

    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0]();
    OUTLINED_FUNCTION_102();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL);
    MEMORY[0x21CEA23B0](0x7075732065726120, 0xEF2E646574726F70);
    goto LABEL_53;
  }

  (*(v10 + 8))(__dst);
  v11 = __dst[3];
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  OUTLINED_FUNCTION_27_44(&qword_280BE6308);
  v13 = v13 && v12 == v11;
  if (!v13 && (OUTLINED_FUNCTION_16_9() & 1) == 0)
  {
    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_27_44(&qword_280BE6390);
    v28 = v13 && v27 == v11;
    if (v28 || (OUTLINED_FUNCTION_16_9() & 1) != 0)
    {

      v29 = OUTLINED_FUNCTION_9_63();
      sub_2175E937C(v29, v30, v7, v31);
      if (!__dst[11])
      {
        v19 = &unk_27CB25338;
        v20 = &unk_21775D3E0;
        goto LABEL_14;
      }

      v17 = &qword_27CB25380;
      v18 = &unk_21775DAA0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      type metadata accessor for MusicItemCollection();
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(__src, 0, 104);
      }

      goto LABEL_15;
    }

    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473();
    }

    OUTLINED_FUNCTION_27_44(&qword_280BE6238);
    v33 = v13 && v32 == v11;
    if (v33 || (OUTLINED_FUNCTION_16_9() & 1) != 0)
    {

      v34 = OUTLINED_FUNCTION_9_63();
      sub_2175E9500(v34, v35, v9, v36);
      if (!__dst[11])
      {
        v19 = &qword_27CB25330;
        v20 = &unk_21775E9B0;
        goto LABEL_14;
      }

      v17 = &unk_27CB28230;
      v18 = &unk_21775CD50;
      goto LABEL_11;
    }

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1();
    }

    OUTLINED_FUNCTION_27_44(&qword_280BEB150);
    if (v13 && v37 == v11)
    {
    }

    else
    {
      v39 = OUTLINED_FUNCTION_16_9();

      if ((v39 & 1) == 0)
      {
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_217752AA8();
        OUTLINED_FUNCTION_102();
        MEMORY[0x21CEA23B0]();
        v40 = sub_217753348();
        MEMORY[0x21CEA23B0](v40);

        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_53:
        result = sub_217752D08();
        __break(1u);
        return result;
      }
    }

    v41 = OUTLINED_FUNCTION_9_63();
    sub_2175E9684(v41, v42, v8, v43);
    if (!__dst[11])
    {
      v19 = &unk_27CB255A8;
      v20 = &unk_21775D450;
      goto LABEL_14;
    }

    v17 = &qword_27CB27820;
    v18 = &qword_21775DAB0;
    goto LABEL_11;
  }

  v14 = OUTLINED_FUNCTION_9_63();
  sub_2175E91F8(v14, v15, v6, v16);
  if (__dst[11])
  {
    v17 = &qword_27CB25388;
    v18 = &unk_21775D410;
    goto LABEL_11;
  }

  v19 = &qword_27CB25318;
  v20 = &qword_2177657C0;
LABEL_14:
  sub_2171F06D8(__dst, v19, v20);
  memset(__src, 0, 104);
LABEL_15:
  memcpy(__dst, __src, 0x68uLL);
  type metadata accessor for MusicItemCollection();
  v21 = sub_2177528F8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(__src, __dst, v21);
  if (*(&__src[5] + 1))
  {
    (*(v22 + 8))(__dst, v21);
    return memcpy(a3, __src, 0x68uLL);
  }

  else
  {
    v24 = sub_217752338();
    v25 = MusicItemCollection.init(arrayLiteral:)(v24, a1, a2, a3);
    v26 = *(v22 + 8);
    result = v26(__dst, v21, v25);
    if (*(&__src[5] + 1))
    {
      return (v26)(__src, v21);
    }
  }

  return result;
}

uint64_t sub_2175E7450@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v5 = *(v4 + 64);
  if (v5)
  {
    v7 = result;
    v9 = *(v4 + 56);
    sub_2172CA838(a3, &__src[4]);
    __src[0] = v7;
    __src[1] = a2;
    __src[2] = v9;
    __src[3] = v5;
    v10 = swift_allocObject();
    memcpy((v10 + 16), __src, 0x48uLL);
    sub_217751DE8();
    sub_217751DE8();
    result = sub_2171F06D8(a4, &qword_27CB24188, &dword_217758930);
    *a4 = v10;
    *(a4 + 24) = &type metadata for MusicCatalogChartsIncrementalLoader;
    *(a4 + 32) = &off_282960BF0;
  }

  return result;
}

void sub_2175E7528(uint64_t a1, uint64_t *a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
LABEL_2:
  while (v3 != v4)
  {
    v6 = *(v5 + v3++);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = (*a2 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (v10 == v6)
      {
        goto LABEL_2;
      }
    }

    v11 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2172B1BB0(0, *(v7 + 16) + 1, 1, v7);
      v7 = v15;
      *a2 = v15;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2172B1BB0(v13 > 1, v14 + 1, 1, v7);
      v7 = v16;
      *a2 = v16;
    }

    *(v7 + 16) = v14 + 1;
    *(v7 + v14 + 32) = v6;
  }
}

void sub_2175E7628()
{
  OUTLINED_FUNCTION_12();
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = *(v0 + 3);
  v15 = v6[4];
  if (v15)
  {
    v16 = v6[4];
    swift_bridgeObjectRetain_n();
    v41 = v14;
    v17 = v15;
  }

  else
  {
    v18 = 0x616C702D74736F6DLL;
    v19 = 0xE800000000000000;
    v20 = 0x706F742D79746963;
    if (v13 == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v13 != 1)
    {
      v20 = 0xD000000000000010;
      v19 = 0x80000002177AA870;
    }

    v22 = v13 == 0;
    if (v13)
    {
      LOBYTE(v13) = v21;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    if (!v22)
    {
      v18 = v20;
    }

    v41 = v18;
    if (v22)
    {
      v17 = 0xEB00000000646579;
    }

    else
    {
      v17 = v19;
    }
  }

  v40 = v14;
  if (v6[2])
  {
    v39 = v6[1];
    v38 = v6[2];
  }

  else
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  sub_217751DE8();
  v23 = sub_2175E7450(v41, v17, v10, v47);
  v24 = v6[7];
  MEMORY[0x28223BE20](v23, v25);
  OUTLINED_FUNCTION_11_4();
  *(v26 - 16) = v8;
  *(v26 - 8) = v10;
  v27 = v3(v5);
  sub_2174A87A0(v47, v45, &qword_27CB24188, &dword_217758930);
  if (*&v45[24])
  {
    sub_2171F06D8(v47, &qword_27CB24188, &dword_217758930);
    v42 = *v45;
    v43 = *&v45[16];
    v44 = *&v45[32];
  }

  else
  {
    v37(&v42, v10);
    sub_2171F06D8(v47, &qword_27CB24188, &dword_217758930);
    if (*&v45[24])
    {
      sub_2171F06D8(v45, &qword_27CB24188, &dword_217758930);
    }
  }

  *&v45[7] = v42;
  *&v45[23] = v43;
  v28 = *&v45[16];
  *(v12 + 49) = *v45;
  v29 = v6[5];
  v30 = v6[6];
  if (v30 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v6[5];
  }

  if (v30 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v6[6];
  }

  v33 = v6[8];
  v34 = v6[9];
  v36 = v6[19];
  v35 = v6[20];
  v46 = 0;
  *&v45[39] = v44;
  *v12 = v41;
  *(v12 + 8) = v17;
  *(v12 + 16) = v13;
  *(v12 + 24) = v39;
  *(v12 + 32) = v38;
  *(v12 + 40) = v27;
  *(v12 + 48) = 0;
  *(v12 + 65) = v28;
  *(v12 + 80) = *&v45[31];
  *(v12 + 96) = v31;
  *(v12 + 104) = v32;
  *(v12 + 112) = v33;
  *(v12 + 120) = v34;
  *(v12 + 128) = v36;
  *(v12 + 136) = v35;
  *(v12 + 144) = v40;
  *(v12 + 152) = v15;
  sub_2171FB568(v29, v30);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175E7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void)@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v11 = *(a1 + 144);
  v10 = *(a1 + 152);
  sub_217751DE8();
  sub_217751DE8();
  result = a3(a2, 0);
  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v8;
  *(a4 + 24) = v11;
  *(a4 + 32) = v10;
  return result;
}

void sub_2175E7B50()
{
  OUTLINED_FUNCTION_12();
  v83 = v0;
  v84 = v1;
  v3 = v2;
  v71 = v4;
  v6 = v5;
  v73 = v7;
  v8 = *v5;
  v9 = v5[1];
  v11 = v5[2];
  v10 = v5[3];
  v12 = v5[5];
  v80 = v5[4];
  v79 = v12;
  v78 = v10;
  if (v8 == 1)
  {
    v68 = 0;
    v81 = 0;
    v69 = 0;
    v70 = 0;
    v13 = &v88;
  }

  else
  {
    sub_217751DE8();
    if (v8)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v14, v15);
      OUTLINED_FUNCTION_0_115();
      v70 = sub_2172E4BB0(sub_2175EA354, v16, v8);
    }

    else
    {
      v70 = 0;
    }

    sub_217751DE8();
    if (v9)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v17, v18);
      OUTLINED_FUNCTION_0_115();
      v69 = sub_2172E4B84(sub_2175EA338, v19, v9);
    }

    else
    {
      v69 = 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_35_31();

    if (v11)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v20, v21);
      OUTLINED_FUNCTION_0_115();
      v81 = sub_2172E4B58(sub_2175EA31C, v22, v11);
    }

    else
    {
      v81 = 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_35_31();

    if (v10)
    {
      OUTLINED_FUNCTION_24_39();
      MEMORY[0x28223BE20](v23, v24);
      OUTLINED_FUNCTION_0_115();
      v68 = sub_2172E47E0(sub_2175EA300, v25, v10);
      v65 = 0;

      goto LABEL_16;
    }

    v65 = 0;
    v13 = &v89;
  }

  *(v13 - 32) = 0;
LABEL_16:
  if (v3)
  {
    v26 = v3;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v72 = v3;
  sub_217751DE8();
  v27 = 0;
  do
  {
    v28 = 0;
    v29 = byte_28295BB18[v27++ + 32];
    v30 = *(v26 + 16);
    while (v30 != v28)
    {
      v31 = v26 + v28++;
      if (*(v31 + 32) == v29)
      {
        goto LABEL_29;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B1BB0(0, v30 + 1, 1, v26);
      v26 = v34;
    }

    v33 = *(v26 + 16);
    v32 = *(v26 + 24);
    v30 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v35 = OUTLINED_FUNCTION_57(v32);
      sub_2172B1BB0(v35, v33 + 1, 1, v26);
      v26 = v36;
    }

    *(v26 + 16) = v30;
    *(v26 + v33 + 32) = v29;
LABEL_29:
    ;
  }

  while (v27 != 3);
  if (!v30)
  {
LABEL_89:

    sub_2173DCA60(v6);
    v90 = v71;
    sub_2175E8440();

    sub_21733AB9C(v84);
    v62 = v86;
    v63 = v87;
    v64 = v73;
    *v73 = v85;
    v64[1] = v62;
    v64[2] = v63;
    OUTLINED_FUNCTION_13();
    return;
  }

  v77 = v11;
  v37 = 0;
  v82 = v26 + 32;
  v67 = v79 + 32;
  OUTLINED_FUNCTION_21_42();
  v66 = v29 + 32;
  v38 = MEMORY[0x277D84F90];
  v74 = v6;
  v75 = v8;
  v76 = v9;
  while (1)
  {
    if (*(v82 + v37))
    {
      if (*(v82 + v37) == 1)
      {
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_35_31();

        if (!v29)
        {
          goto LABEL_88;
        }

        v39 = *(v29 + 16);
        if (v39)
        {
          OUTLINED_FUNCTION_22_49(MEMORY[0x277D84F90]);
          v29 = v90;
          v40 = v66;
          do
          {
            OUTLINED_FUNCTION_6_77();
            OUTLINED_FUNCTION_19_34();
            OUTLINED_FUNCTION_29_36();
            if (v42)
            {
              v43 = OUTLINED_FUNCTION_57(v41);
              sub_2172764C8(v43, v27, 1);
              v29 = v90;
            }

            OUTLINED_FUNCTION_18_48();
            v40 += 168;
            --v39;
          }

          while (v39);

          v6 = v74;
        }

        else
        {

          v29 = MEMORY[0x277D84F90];
        }

        v54 = *(v29 + 16);
        v27 = *(v38 + 16);
        if (__OFADD__(v27, v54))
        {
          goto LABEL_93;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v27 + v54 > *(v38 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_36();
          v38 = v55;
        }

        v8 = v75;
        if (*(v29 + 16))
        {
          OUTLINED_FUNCTION_14_53();
          if (v46 != v47)
          {
            goto LABEL_99;
          }

          v27 = v38 + 160 * v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
          OUTLINED_FUNCTION_32_37();

          if (!v54)
          {
            goto LABEL_84;
          }

          v57 = *(v38 + 16);
          v47 = __OFADD__(v57, v54);
          v49 = v57 + v54;
          v29 = v80;
          if (v47)
          {
            goto LABEL_100;
          }

          goto LABEL_83;
        }

        OUTLINED_FUNCTION_21_42();
        if (v54)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v8 == 1)
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_35_31();

        if (!v79)
        {
          goto LABEL_88;
        }

        v50 = *(v79 + 16);
        if (v50)
        {
          OUTLINED_FUNCTION_22_49(MEMORY[0x277D84F90]);
          v29 = v90;
          v51 = v67;
          do
          {
            OUTLINED_FUNCTION_6_77();
            OUTLINED_FUNCTION_19_34();
            OUTLINED_FUNCTION_29_36();
            if (v42)
            {
              v53 = OUTLINED_FUNCTION_57(v52);
              sub_2172764C8(v53, v27, 1);
              v29 = v90;
            }

            OUTLINED_FUNCTION_18_48();
            v51 += 168;
            --v50;
          }

          while (v50);

          v6 = v74;
        }

        else
        {

          v29 = MEMORY[0x277D84F90];
        }

        v58 = *(v29 + 16);
        v27 = *(v38 + 16);
        if (__OFADD__(v27, v58))
        {
          goto LABEL_94;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v27 + v58 > *(v38 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_36();
          v38 = v59;
        }

        v8 = v75;
        if (*(v29 + 16))
        {
          OUTLINED_FUNCTION_14_53();
          if (v46 != v47)
          {
            goto LABEL_98;
          }

          v27 = v38 + 160 * v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
          OUTLINED_FUNCTION_32_37();

          if (!v58)
          {
LABEL_84:
            OUTLINED_FUNCTION_21_42();
            goto LABEL_88;
          }

          v61 = *(v38 + 16);
          v47 = __OFADD__(v61, v58);
          v49 = v61 + v58;
          v29 = v80;
          if (v47)
          {
            goto LABEL_101;
          }

          goto LABEL_83;
        }

        OUTLINED_FUNCTION_21_42();
        if (v58)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_88;
    }

    if (!v81)
    {
      goto LABEL_88;
    }

    v44 = *(v81 + 16);
    v27 = *(v38 + 16);
    v29 = v27 + v44;
    if (__OFADD__(v27, v44))
    {
      break;
    }

    sub_217751DE8();
    if (!swift_isUniquelyReferenced_nonNull_native() || v29 > *(v38 + 24) >> 1)
    {
      sub_2172B1AF0();
      v38 = v45;
    }

    OUTLINED_FUNCTION_21_42();
    if (*(v81 + 16))
    {
      OUTLINED_FUNCTION_14_53();
      if (v46 != v47)
      {
        goto LABEL_92;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24918, &unk_217768490);
      v27 = v81;
      swift_arrayInitWithCopy();

      if (v44)
      {
        v48 = *(v38 + 16);
        v47 = __OFADD__(v48, v44);
        v49 = v48 + v44;
        if (v47)
        {
          goto LABEL_97;
        }

LABEL_83:
        *(v38 + 16) = v49;
      }
    }

    else
    {

      if (v44)
      {
        goto LABEL_91;
      }
    }

LABEL_88:
    if (++v37 == v30)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
}

void sub_2175E8440()
{
  OUTLINED_FUNCTION_12();
  v71 = v1;
  v73 = v2;
  v4 = *v3;
  v72 = v5;
  v74 = v6;
  v76 = v7;
  v75 = v0;
  if (v0 && (v8 = v0, (v9 = *(v0 + 16)) != 0))
  {
    v79 = MEMORY[0x277D84F90];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172763EC(0, v9, 0);
    v10 = v79;
    v11 = v8 + 32;
    do
    {
      sub_2174A87A0(v11, v77, &qword_27CB24918, &unk_217768490);
      v12 = v78;
      sub_2171F06D8(v77, &qword_27CB24918, &unk_217768490);
      v79 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = OUTLINED_FUNCTION_57(v13);
        sub_2172763EC(v15, v14 + 1, 1);
        v10 = v79;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + v14 + 32) = v12;
      v11 += 160;
      --v9;
    }

    while (v9);
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v10 = MEMORY[0x277D84F90];
  }

  v16 = *(v10 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = (v10 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v18++;
      v20 = v21;
      if ((v21 - 1) > 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2172763EC(0, *(v19 + 16) + 1, 1);
          v19 = v77[0];
        }

        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          v25 = OUTLINED_FUNCTION_57(v23);
          sub_2172763EC(v25, v24 + 1, 1);
          v19 = v77[0];
        }

        *(v19 + 16) = v24 + 1;
        *(v19 + v24 + 32) = v20;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v26 = v17;
  }

  v27 = v74;
  if (!v74)
  {
    v31 = v72;
LABEL_33:
    OUTLINED_FUNCTION_28_42();
    goto LABEL_34;
  }

  v16 = v76;
  if (qword_280BE62F0 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  OUTLINED_FUNCTION_1_108();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_26_37(v30);
  OUTLINED_FUNCTION_31_37();
  v31 = v72;
  if (!sub_2173DE19C())
  {
    v70 = xmmword_280BE62F8;
    v33 = qword_280BE6308;
    v32 = unk_280BE6310;
    sub_217751DE8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_95();
      v26 = v62;
    }

    OUTLINED_FUNCTION_8_67();
    if (v34)
    {
      OUTLINED_FUNCTION_3_94();
      v26 = v63;
    }

    *(v26 + 16) = v76;
    v35 = v26 + 32 * &v70;
    *(v35 + 32) = v70;
    *(v35 + 48) = v33;
    *(v35 + 56) = v32;
    goto LABEL_33;
  }

LABEL_34:
  if (v16)
  {

    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v36, v37);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v38);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v40 = qword_280BE6390;
      v39 = unk_280BE6398;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v64;
      }

      OUTLINED_FUNCTION_8_67();
      if (v34)
      {
        OUTLINED_FUNCTION_3_94();
        v26 = v65;
      }

      OUTLINED_FUNCTION_5_78();
      *(v41 + 48) = v40;
      *(v41 + 56) = v39;
      OUTLINED_FUNCTION_28_42();
    }
  }

  v42 = *(v19 + 16);

  if (v42)
  {
    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473();
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v43, v44);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v45);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v47 = qword_280BE6238;
      v46 = unk_280BE6240;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v66;
      }

      OUTLINED_FUNCTION_8_67();
      if (v34)
      {
        OUTLINED_FUNCTION_3_94();
        v26 = v67;
      }

      OUTLINED_FUNCTION_5_78();
      *(v48 + 48) = v47;
      *(v48 + 56) = v46;
      OUTLINED_FUNCTION_28_42();
    }
  }

  v49 = MEMORY[0x277D84F90];
  if (v31)
  {

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1();
    }

    OUTLINED_FUNCTION_1_108();
    MEMORY[0x28223BE20](v50, v51);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_26_37(v52);
    OUTLINED_FUNCTION_31_37();
    if (!sub_2173DE19C())
    {
      OUTLINED_FUNCTION_17_48();
      v54 = qword_280BEB150;
      v53 = unk_280BEB158;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_95();
        v26 = v68;
      }

      OUTLINED_FUNCTION_8_67();
      if (v34)
      {
        OUTLINED_FUNCTION_3_94();
        v26 = v69;
      }

      OUTLINED_FUNCTION_5_78();
      *(v55 + 48) = v54;
      *(v55 + 56) = v53;
      v27 = v74;
      OUTLINED_FUNCTION_28_42();
    }
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v56 = v71;
  if (!v71)
  {
    v56 = v49;
  }

  v77[0] = v56;
  if (v75)
  {
    v57 = v75;
  }

  else
  {
    v57 = v49;
  }

  if (v16)
  {
    v58 = v16;
  }

  else
  {
    v58 = v49;
  }

  if (v27)
  {
    v59 = v27;
  }

  else
  {
    v59 = v49;
  }

  sub_217751DE8();
  sub_2175E7528(v10, v77);

  v60 = v77[0];
  v61 = v73;
  *v73 = v59;
  v61[1] = v58;
  v61[2] = v57;
  v61[3] = v31;
  v61[4] = v26;
  v61[5] = v60;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175E8A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  v60 = a1;
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277D84F90];
    v7 = v4 + 32;
    v8 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    do
    {
      sub_2174A87A0(v7, &v63, &qword_27CB24918, &unk_217768490);
      if (v64)
      {
        if (v64 == 1)
        {
          sub_2174A87A0(&v63, v62, &qword_27CB24918, &unk_217768490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = *(v8 + 16);
            sub_2172B1AF0();
            v8 = v15;
          }

          v9 = *(v8 + 16);
          if (v9 >= *(v8 + 24) >> 1)
          {
            sub_2172B1AF0();
            v8 = v16;
          }

          sub_2171F06D8(&v63, &qword_27CB24918, &unk_217768490);
          *(v8 + 16) = v9 + 1;
          v10 = v8 + 160 * v9;
        }

        else
        {
          sub_2174A87A0(&v63, v62, &qword_27CB24918, &unk_217768490);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = *(v66 + 16);
            sub_2172B1AF0();
            v66 = v21;
          }

          v12 = *(v66 + 16);
          if (v12 >= *(v66 + 24) >> 1)
          {
            sub_2172B1AF0();
            v66 = v22;
          }

          sub_2171F06D8(&v63, &qword_27CB24918, &unk_217768490);
          v13 = v66;
          *(v66 + 16) = v12 + 1;
          v10 = v13 + 160 * v12;
        }
      }

      else
      {
        sub_2174A87A0(&v63, v62, &qword_27CB24918, &unk_217768490);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v6 + 16);
          sub_2172B1AF0();
          v6 = v18;
        }

        v11 = *(v6 + 16);
        if (v11 >= *(v6 + 24) >> 1)
        {
          sub_2172B1AF0();
          v6 = v19;
        }

        sub_2171F06D8(&v63, &qword_27CB24918, &unk_217768490);
        *(v6 + 16) = v11 + 1;
        v10 = v6 + 160 * v11;
      }

      a1 = memcpy((v10 + 32), v62, 0xA0uLL);
      v7 += 160;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
  }

  v23 = v61;
  v24 = v61[4];
  if (qword_280BE62F0 != -1)
  {
    a1 = swift_once();
  }

  v63 = xmmword_280BE62F8;
  v64 = qword_280BE6308;
  v65 = unk_280BE6310;
  MEMORY[0x28223BE20](a1, a2);
  v56 = &v63;
  v25 = sub_2173DE19C();
  v27 = v60;
  if (v25)
  {
    v28 = *v61;
    MEMORY[0x28223BE20](v25, v26);
    v56 = v60;
    v25 = sub_2172E5188(sub_2175EA2E4, v55, v29);
    v58 = v25;
  }

  else
  {
    v58 = 0;
  }

  if (qword_280BE6378 != -1)
  {
    v25 = swift_once();
  }

  v63 = xmmword_280BE6380;
  v64 = qword_280BE6390;
  v65 = unk_280BE6398;
  MEMORY[0x28223BE20](v25, v26);
  v56 = &v63;
  v30 = sub_2173DE19C();
  if (v30)
  {
    v32 = v23[1];
    MEMORY[0x28223BE20](v30, v31);
    v56 = v27;
    v30 = sub_2172E515C(sub_2175EA284, v55, v33);
    v57 = v30;
  }

  else
  {
    v57 = 0;
  }

  if (qword_280BE6220 != -1)
  {
    v30 = swift_once();
  }

  v63 = xmmword_280BE6228;
  v64 = qword_280BE6238;
  v65 = unk_280BE6240;
  MEMORY[0x28223BE20](v30, v31);
  v56 = &v63;
  v34 = sub_2173DE19C();
  if (v34)
  {
    MEMORY[0x28223BE20](v34, v35);
    v56 = v27;
    v36 = sub_2172E5130(sub_2175EA370, v55, v6);
  }

  else
  {

    v36 = 0;
  }

  if (qword_280BEB138 != -1)
  {
    v37 = swift_once();
  }

  v63 = xmmword_280BEB140;
  v64 = qword_280BEB150;
  v65 = unk_280BEB158;
  MEMORY[0x28223BE20](v37, v38);
  v56 = &v63;
  v39 = sub_2173DE19C();
  if (v39)
  {
    v41 = v61;
    v42 = v61[3];
    MEMORY[0x28223BE20](v39, v40);
    v56 = v27;
    v44 = sub_2172E5104(sub_2175EA224, v55, v43);
  }

  else
  {
    v44 = 0;
    v41 = v61;
  }

  v45 = v41[5];
  v46 = sub_217696E10(1u, v45);
  if (v46)
  {
    MEMORY[0x28223BE20](v46, v47);
    v56 = v27;
    v48 = sub_2172E5130(sub_2175EA370, v55, v8);
  }

  else
  {

    v48 = 0;
  }

  v49 = sub_217696E10(2u, v45);
  if (v49)
  {
    MEMORY[0x28223BE20](v49, v50);
    v56 = v60;
    v51 = sub_2172E5130(sub_2175EA208, v55, v66);
  }

  else
  {

    v51 = 0;
  }

  v53 = v59;
  v54 = v57;
  *v59 = v58;
  v53[1] = v54;
  v53[2] = v36;
  v53[3] = v44;
  v53[4] = v48;
  v53[5] = v51;
  return result;
}

double sub_2175E91F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB248E8, &qword_21775A380);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB248E8, &qword_21775A380);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB25388, &unk_21775D410);
    sub_2171F06D8(&v21, &qword_27CB248E8, &qword_21775A380);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB80, &unk_217785A58);
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

double sub_2175E937C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB248F8, &unk_21775A370);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB248F8, &unk_21775A370);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB25380, &unk_21775DAA0);
    sub_2171F06D8(&v21, &qword_27CB248F8, &unk_21775A370);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB88, &qword_217785A68);
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

double sub_2175E9500@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB24918, &unk_217768490);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB24918, &unk_217768490);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &unk_27CB28230, &unk_21775CD50);
    sub_2171F06D8(&v21, &qword_27CB24918, &unk_217768490);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB90, &unk_217785A70);
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

double sub_2175E9684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  if (v7)
  {
    while (1)
    {
      sub_2174A87A0(v8, &v21, &qword_27CB24908, &unk_21775A360);
      v9 = v22;
      if (v21 == a1 && v22 == a2)
      {
        break;
      }

      if (sub_217753058())
      {
        a1 = v21;
        v9 = v22;
        break;
      }

      sub_2171F06D8(&v21, &qword_27CB24908, &unk_21775A360);
      v8 += 160;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  else
  {
LABEL_8:
    v9 = 0;
    a1 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v21 = a1;
  v22 = v9;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  if (v9)
  {
    sub_2174A87A0(&v24 + 8, a4, &qword_27CB27820, &qword_21775DAB0);
    sub_2171F06D8(&v21, &qword_27CB24908, &unk_21775A360);
  }

  else
  {
    sub_2171F06D8(&v21, &qword_27CB2AB98, &unk_217785A80);
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

void static MusicCatalogChartsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = *v7;
  v9 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  v13 = v7[4];
  v12 = v7[5];
  sub_2172741E0();
  if (v14 & 1) != 0 && (sub_21727456C(), (v15) && (sub_2172748F8(), (v16) && (sub_217274C84(), (v17) && (sub_217270BE0(v6, v13))
  {
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_13();

    sub_2172849D0(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_13();
  }
}

uint64_t MusicCatalogChartsResponse.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  sub_217283728(a1, v3);
  sub_217283714(a1, v4);
  sub_217283520(a1, v5);
  sub_21728350C(a1, v6);
  sub_21727D7C8(a1, v8);
  v9 = OUTLINED_FUNCTION_93();

  return sub_2172849DC(v9, v10);
}

uint64_t MusicCatalogChartsResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2177531E8();
  sub_217283728(v8, v1);
  sub_217283714(v8, v2);
  sub_217283520(v8, v3);
  sub_21728350C(v8, v4);
  sub_21727D7C8(v8, v6);
  sub_2172849DC(v8, v5);
  return sub_217753238();
}

uint64_t sub_2175E99F4()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = v0[2];
  sub_2177531E8();
  MusicCatalogChartsResponse.hash(into:)(v3);
  return sub_217753238();
}

uint64_t MusicCatalogChartsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2171FF30C(a1, v16);
  sub_2173DC46C(v16, v17);
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v7, v8);
    Decoder.dataRequestConfiguration.getter(v5, v6);
    v9 = a1[3];
    v10 = a1[4];
    v11 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v11, v12);
    Decoder.sharedRelatedItemStore.getter();
    sub_2175E7B50();
    v13 = v16[1];
    v14 = v16[2];
    *a2 = v16[0];
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogChartsResponse.encode(to:)(void *a1)
{
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  v13 = v1[2];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Encoder.dataRequestConfiguration.getter(v5, v6);
  sub_2175E8A30(v9, v7, v10);
  result = sub_21733AB9C(v9);
  if (!v2)
  {
    sub_2173DC224(a1);
    return sub_2173DCA60(v10);
  }

  return result;
}

uint64_t sub_2175E9BFC(char a1)
{
  v4 = *v1;
  v3 = v1[1];
  v21 = v1[3];
  v22 = v1[2];
  v5 = v1[4];
  v24 = 0;
  v25 = 0xE000000000000000;
  v6 = *(v5 + 16);
  v23 = v3;
  result = sub_217751DE8();
  v8 = 0;
  v9 = (v5 + 56);
  while (v6 != v8)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = qword_280BE62F0;
    sub_217751DE8();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_280BE6308 == v11 && unk_280BE6310 == v10;
    if (v13 || (sub_217753058() & 1) != 0)
    {

      result = sub_21759AEF0(0x6168436D75626C61, 0xEB00000000737472, a1 & 1, &v24, v4);
      goto LABEL_12;
    }

    if (qword_280BE6378 != -1)
    {
      swift_once();
    }

    v14 = qword_280BE6390 == v11 && unk_280BE6398 == v10;
    if (v14 || (sub_217753058() & 1) != 0)
    {

      result = sub_21759B0BC(0xD000000000000010, 0x80000002177B2630, a1 & 1, &v24, v23);
      goto LABEL_12;
    }

    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v15 = qword_280BE6238 == v11 && unk_280BE6240 == v10;
    if (v15 || (sub_217753058() & 1) != 0)
    {

      result = sub_21759B288(0x7473696C79616C70, 0xEE00737472616843, a1 & 1, &v24, v22);
      goto LABEL_12;
    }

    if (qword_280BEB138 != -1)
    {
      swift_once();
    }

    if (qword_280BEB150 == v11 && unk_280BEB158 == v10)
    {
    }

    else
    {
      v17 = sub_217753058();

      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    result = sub_21759B454(0x72616843676E6F73, 0xEA00000000007374, a1 & 1, &v24, v21);
LABEL_12:
    v9 += 4;
    ++v8;
  }

  v18 = v24;
  v19 = v25;
  MEMORY[0x21CEA23B0](v24, v25);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

uint64_t sub_2175E9F88(char a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2175E9BFC(a1);
}

unint64_t sub_2175E9FD0()
{
  result = qword_27CB2AB78;
  if (!qword_27CB2AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AB78);
  }

  return result;
}

uint64_t sub_2175EA024(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2175EA064(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_18_48()
{
  *(v1 + 16) = v0;

  return memcpy((v1 + 160 * v2 + 32), (v3 - 256), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_22_49@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_2172764C8(0, v1, 0);
}

void OUTLINED_FUNCTION_29_36()
{
  *(v1 - 96) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_2175EA414(uint64_t a1)
{
  v2 = type metadata accessor for CloudRadioShow(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudRawCurator();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264F0, &qword_217786380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v59 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v57 = &v55 - v22;
  v23 = 0;
  v60 = MEMORY[0x277D84F90];
  v61 = v10;
  v24 = *(a1 + 16);
  v71 = a1;
  v72 = v24;
  v62 = v6;
  v69 = v25;
  while (v72 != v23)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    v27 = v71 + ((*(*(v26 - 1) + 80) + 32) & ~*(*(v26 - 1) + 80));
    v28 = *(*(v26 - 1) + 72);
    v75 = v23;
    v29 = v27 + v28 * v23;
    sub_2175F70D8(v29, v10, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v70;
      sub_2175F7134(v10, v70, type metadata accessor for CloudRadioShow);
      sub_2175F70D8(v30, v15, type metadata accessor for CloudRadioShow);
      v31 = v26[10];
      v32 = v29 + v26[9];
      v33 = *v32;
      v34 = *(v32 + 8);
      v64 = *(v32 + 16);
      v35 = *(v29 + v31 + 8);
      v67 = *(v29 + v31);
      v36 = v26[11];
      v65 = v33;
      v66 = v36;
      memcpy(v74, (v29 + v36), 0x180uLL);
      v37 = *(v29 + v26[12]);
      v38 = *(v29 + v26[13]);
      v39 = v26[15];
      v68 = *(v29 + v26[14]);
      v40 = v68;
      v63 = *(v29 + v39);
      v41 = v69;
      v42 = &v15[v69[9]];
      *v42 = v65;
      *(v42 + 1) = v34;
      v42[16] = v64;
      v43 = &v15[v41[10]];
      *v43 = v67;
      *(v43 + 1) = v35;
      memcpy(&v15[v41[11]], (v29 + v66), 0x180uLL);
      *&v15[v41[12]] = v37;
      *&v15[v41[13]] = v38;
      *&v15[v41[14]] = v40;
      *&v15[v41[15]] = v63;
      v10 = v61;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v74, &v73, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v70, type metadata accessor for CloudRadioShow);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v41);
    }

    else
    {
      v41 = v69;
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v69);
      sub_2175F7190(v10, type metadata accessor for CloudRawCurator);
    }

    v44 = __swift_getEnumTagSinglePayload(v15, 1, v41) == 1;
    v45 = v75;
    if (v44)
    {
      sub_2171F0738(v15, &qword_27CB264F0, &qword_217786380);
      v23 = v45 + 1;
    }

    else
    {
      v46 = v57;
      sub_21726A594(v15, v57, &qword_27CB247C0, &unk_21779AA10);
      sub_21726A594(v46, v59, &qword_27CB247C0, &unk_21779AA10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172B1E84(0, *(v60 + 16) + 1, 1, v60);
        v60 = v52;
      }

      v49 = *(v60 + 16);
      v48 = *(v60 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2172B1E84(v48 > 1, v49 + 1, 1, v60);
        v60 = v53;
      }

      v23 = v75 + 1;
      v50 = v59;
      v51 = v60;
      *(v60 + 16) = v49 + 1;
      sub_21726A594(v50, v51 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49, &qword_27CB247C0, &unk_21779AA10);
      v15 = v56;
    }
  }

  return v60;
}

uint64_t sub_2175EA9B4(uint64_t a1)
{
  v2 = type metadata accessor for CloudCurator(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudRawCurator();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB264E8, &qword_217763640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v58 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v56 = &v56 - v22;
  v23 = 0;
  v59 = MEMORY[0x277D84F90];
  v60 = v10;
  v24 = *(a1 + 16);
  v70 = a1;
  v71 = v24;
  v61 = v6;
  while (v71 != v23)
  {
    v25 = v16;
    v26 = v23;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
    v28 = v70 + ((*(*(v27 - 1) + 80) + 32) & ~*(*(v27 - 1) + 80));
    v29 = *(*(v27 - 1) + 72);
    v74 = v26;
    v30 = v28 + v29 * v26;
    sub_2175F70D8(v30, v10, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload())
    {
      v16 = v25;
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v25);
      sub_2175F7190(v10, type metadata accessor for CloudRawCurator);
    }

    else
    {
      v31 = v69;
      sub_2175F7134(v10, v69, type metadata accessor for CloudCurator);
      sub_2175F70D8(v31, v15, type metadata accessor for CloudCurator);
      v32 = v27[10];
      v33 = v30 + v27[9];
      v34 = *v33;
      v64 = *(v33 + 8);
      v65 = *(v33 + 16);
      v35 = v30 + v32;
      v36 = *(v30 + v32);
      v37 = *(v35 + 8);
      v66 = v34;
      v67 = v36;
      v38 = v27[11];
      memcpy(v73, (v30 + v38), 0x180uLL);
      v39 = *(v30 + v27[12]);
      v40 = *(v30 + v27[13]);
      v41 = v27[15];
      v68 = *(v30 + v27[14]);
      v42 = v68;
      v62 = *(v30 + v41);
      v63 = v40;
      v43 = &v15[v25[9]];
      v44 = v64;
      *v43 = v66;
      *(v43 + 1) = v44;
      v43[16] = v65;
      v45 = &v15[v25[10]];
      *v45 = v67;
      *(v45 + 1) = v37;
      v46 = (v30 + v38);
      v16 = v25;
      memcpy(&v15[v25[11]], v46, 0x180uLL);
      *&v15[v25[12]] = v39;
      *&v15[v25[13]] = v63;
      *&v15[v25[14]] = v42;
      *&v15[v25[15]] = v62;
      v10 = v60;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v73, &v72, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v69, type metadata accessor for CloudCurator);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
    }

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2171F0738(v15, &qword_27CB264E8, &qword_217763640);
      v23 = v74 + 1;
    }

    else
    {
      v47 = v56;
      sub_21726A594(v15, v56, &qword_27CB24490, &qword_21775A250);
      sub_21726A594(v47, v58, &qword_27CB24490, &qword_21775A250);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B1EC0(0, *(v59 + 16) + 1, 1, v59);
        v59 = v53;
      }

      v49 = *(v59 + 16);
      v48 = *(v59 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2172B1EC0(v48 > 1, v49 + 1, 1, v59);
        v59 = v54;
      }

      v50 = v74 + 1;
      v51 = v58;
      v52 = v59;
      *(v59 + 16) = v49 + 1;
      sub_21726A594(v51, v52 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v49, &qword_27CB24490, &qword_21775A250);
      v23 = v50;
    }
  }

  return v59;
}

uint64_t sub_2175EAF5C(uint64_t a1)
{
  v37 = type metadata accessor for CloudRawCurator();
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AC18, &qword_217786388);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v34 = &v33 - v18;
  v19 = 0;
  v38 = a1;
  v20 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  while (v20 != v19)
  {
    v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v22 = *(v12 + 72);
    v23 = v38 + v21 + v22 * v19;
    sub_2175F70D8(v23, v5, type metadata accessor for CloudRawCurator);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21726A630(v23, v10, &qword_27CB247B0, &qword_21775A1C0);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v24, 1, v11);
    sub_2175F7190(v5, type metadata accessor for CloudRawCurator);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_2171F0738(v10, &qword_27CB2AC18, &qword_217786388);
      ++v19;
    }

    else
    {
      sub_21726A594(v10, v34, &qword_27CB247B0, &qword_21775A1C0);
      sub_21726A594(v34, v35, &qword_27CB247B0, &qword_21775A1C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B20DC(0, *(v36 + 16) + 1, 1, v36);
        v36 = v30;
      }

      v26 = *(v36 + 16);
      v25 = *(v36 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v33 = v26 + 1;
        sub_2172B20DC(v25 > 1, v26 + 1, 1, v36);
        v27 = v33;
        v36 = v31;
      }

      ++v19;
      v28 = v35;
      v29 = v36;
      *(v36 + 16) = v27;
      sub_21726A594(v28, v29 + v21 + v26 * v22, &qword_27CB247B0, &qword_21775A1C0);
    }
  }

  return v36;
}

uint64_t sub_2175EB2B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  if (a2)
  {
    goto LABEL_2;
  }

  sub_21726A630(a1, v23, &qword_27CB24188, &dword_217758930);
  v8 = v24;
  if (!v24)
  {
    sub_2171F0738(&v26, &qword_27CB24188, &dword_217758930);
    v7 = v23;
    goto LABEL_7;
  }

  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  sub_217283154(v23);
  if (!v12)
  {
LABEL_2:
    v7 = &v26;
LABEL_7:
    sub_2171F0738(v7, &qword_27CB24188, &dword_217758930);
    sub_21726A630(a1, &v26, &qword_27CB24188, &dword_217758930);
    v10 = 0;
    v12 = 0;
  }

  v13 = *v4;
  v14 = *(v4 + 8);
  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  v17 = *(v4 + 48);
  v18 = *(v4 + 112);
  v19 = *(v4 + 120);
  *a3 = *v4;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v15;
  *(a3 + 32) = *(v4 + 32);
  *(a3 + 48) = v17;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  v20 = v26;
  v21 = v28;
  *(a3 + 88) = v27;
  *(a3 + 72) = v20;
  *(a3 + 104) = v21;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  sub_2171FB568(v13, v14);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

double sub_2175EB460(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v278 = v2;
  v282 = 0;
  v283 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v285 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v16 = OUTLINED_FUNCTION_43(v285);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v268 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v284 = *(v22 - 8);
  v23 = *(v284 + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  boxed_opaque_existential_0 = &v268 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v268 - v29;
  sub_21726A630(v13, v381, &qword_27CB24268, &qword_21777DBE0);
  if (!v7)
  {
    v7 = *(v13 + 160);
    if (v7 >= 2)
    {
      v31 = *(v13 + 160);
      sub_217751DE8();
    }

    else
    {
      sub_217221010(*(v13 + 160));
      v7 = MEMORY[0x277D84F90];
    }
  }

  sub_21726A630(v381, v377, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  v279 = v13;
  if (v104)
  {
    v32 = &qword_27CB24268;
    v33 = &qword_21777DBE0;
    v34 = v377;
LABEL_12:
    v39 = sub_2171F0738(v34, v32, v33);
    memset(v379, 0, sizeof(v379));
    v380 = 0;
    goto LABEL_13;
  }

  sub_21726A630(v377, v363, &qword_27CB24270, &unk_21775D640);
  sub_217269E58(v377);
  if (!v363[2])
  {
    v32 = &qword_27CB24270;
    v33 = &unk_21775D640;
    v34 = v363;
    goto LABEL_12;
  }

  if (qword_280BE62F0 != -1)
  {
    goto LABEL_251;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_33(&xmmword_280BE62F8);
    OUTLINED_FUNCTION_9_64(v35, v36, v37, v38, v379);
    v39 = sub_2171F0738(v363, &qword_27CB24278, &unk_217759070);
LABEL_13:
    OUTLINED_FUNCTION_10_55(v39, v40, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v41 = &qword_27CB24268;
      v42 = &qword_21777DBE0;
      v43 = v377;
LABEL_21:
      v48 = sub_2171F0738(v43, v41, v42);
      memset(v375, 0, sizeof(v375));
      v376 = 0;
      goto LABEL_22;
    }

    sub_21726A630((v13 + 8), v363, &qword_27CB24280, &unk_21775D680);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v41 = &qword_27CB24280;
      v42 = &unk_21775D680;
      v43 = v363;
      goto LABEL_21;
    }

    if (qword_280BE6270 != -1)
    {
      OUTLINED_FUNCTION_2_91();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BE6278);
    OUTLINED_FUNCTION_9_64(v44, v45, v46, v47, v375);
    v48 = sub_2171F0738(v363, &qword_27CB24288, &qword_217758F80);
LABEL_22:
    OUTLINED_FUNCTION_10_55(v48, v49, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v50 = &qword_27CB24268;
      v51 = &qword_21777DBE0;
      v52 = v377;
LABEL_30:
      v57 = sub_2171F0738(v52, v50, v51);
      memset(v373, 0, sizeof(v373));
      v374 = 0;
      goto LABEL_31;
    }

    sub_21726A630((v13 + 32), v363, &qword_27CB242B0, &unk_21775D630);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v50 = &qword_27CB242B0;
      v51 = &unk_21775D630;
      v52 = v363;
      goto LABEL_30;
    }

    if (qword_280BE6378 != -1)
    {
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BE6380);
    OUTLINED_FUNCTION_9_64(v53, v54, v55, v56, v373);
    v57 = sub_2171F0738(v363, &qword_27CB242B8, &unk_21777EEA0);
LABEL_31:
    OUTLINED_FUNCTION_10_55(v57, v58, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v59 = &qword_27CB24268;
      v60 = &qword_21777DBE0;
      v61 = v377;
LABEL_39:
      v66 = sub_2171F0738(v61, v59, v60);
      memset(v371, 0, sizeof(v371));
      v372 = 0;
      goto LABEL_40;
    }

    sub_21726A630((v13 + 40), v363, &qword_27CB242C0, &unk_21775D650);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v59 = &qword_27CB242C0;
      v60 = &unk_21775D650;
      v61 = v363;
      goto LABEL_39;
    }

    if (qword_280BE6220 != -1)
    {
      OUTLINED_FUNCTION_473();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BE6228);
    OUTLINED_FUNCTION_9_64(v62, v63, v64, v65, v371);
    v66 = sub_2171F0738(v363, &qword_27CB242C8, &unk_217758970);
LABEL_40:
    OUTLINED_FUNCTION_10_55(v66, v67, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v68 = &qword_27CB24268;
      v69 = &qword_21777DBE0;
      v70 = v377;
LABEL_48:
      v75 = sub_2171F0738(v70, v68, v69);
      memset(v369, 0, sizeof(v369));
      v370 = 0;
      goto LABEL_49;
    }

    sub_21726A630((v13 + 48), v363, &qword_27CB242D0, &unk_21775D660);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v68 = &qword_27CB242D0;
      v69 = &unk_21775D660;
      v70 = v363;
      goto LABEL_48;
    }

    if (qword_280BE6348 != -1)
    {
      OUTLINED_FUNCTION_24_40();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BE6350);
    OUTLINED_FUNCTION_9_64(v71, v72, v73, v74, v369);
    v75 = sub_2171F0738(v363, &qword_27CB242D8, &unk_21777EEB0);
LABEL_49:
    OUTLINED_FUNCTION_10_55(v75, v76, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v77 = &qword_27CB24268;
      v78 = &qword_21777DBE0;
      v79 = v377;
LABEL_57:
      v84 = sub_2171F0738(v79, v77, v78);
      memset(v367, 0, sizeof(v367));
      v368 = 0;
      goto LABEL_58;
    }

    sub_21726A630((v13 + 56), v363, &qword_27CB242E0, &unk_21777EEE0);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v77 = &qword_27CB242E0;
      v78 = &unk_21777EEE0;
      v79 = v363;
      goto LABEL_57;
    }

    if (qword_280BEB138 != -1)
    {
      OUTLINED_FUNCTION_14_1();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BEB140);
    OUTLINED_FUNCTION_9_64(v80, v81, v82, v83, v367);
    v84 = sub_2171F0738(v363, &qword_27CB242E8, &unk_21775D6B0);
LABEL_58:
    OUTLINED_FUNCTION_10_55(v84, v85, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v86 = &qword_27CB24268;
      v87 = &qword_21777DBE0;
      v88 = v377;
LABEL_66:
      sub_2171F0738(v88, v86, v87);
      memset(v365, 0, sizeof(v365));
      v366 = 0;
      goto LABEL_67;
    }

    sub_21726A630((v13 + 64), v363, &qword_27CB242F0, &unk_217797B80);
    sub_217269E58(v377);
    if (!v363[2])
    {
      v86 = &qword_27CB242F0;
      v87 = &unk_217797B80;
      v88 = v363;
      goto LABEL_66;
    }

    if (qword_280BE6248 != -1)
    {
      OUTLINED_FUNCTION_22_50();
    }

    OUTLINED_FUNCTION_34_33(&xmmword_280BE6250);
    OUTLINED_FUNCTION_9_64(v89, v90, v91, v92, v365);
    sub_2171F0738(v363, &qword_27CB242F8, &qword_21775D6C0);
LABEL_67:
    v93 = sub_2172CA838(v5, &v357);
    OUTLINED_FUNCTION_10_55(v93, v94, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      v95 = sub_2171F0738(v377, &qword_27CB24268, &qword_21777DBE0);
      memset(v363, 0, 128);
    }

    else
    {
      sub_21726A630((v13 + 24), v363, &qword_27CB242A0, &unk_21777EEF0);
      v95 = sub_217269E58(v377);
    }

    OUTLINED_FUNCTION_10_55(v95, v96, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      sub_2171F0738(v377, &qword_27CB24268, &qword_21777DBE0);
      OUTLINED_FUNCTION_29_37();
    }

    else
    {
      sub_21726A630((v13 + 16), v362, &qword_27CB24290, &unk_21775D550);
      sub_217269E58(v377);
    }

    memcpy(v377, v363, sizeof(v377));
    memcpy(v378, v362, sizeof(v378));
    sub_217751DE8();
    sub_217751DE8();
    v13 = v283;

    v97 = sub_2175EDD2C(v11, v9, &v357, v377, v7, v13, v363);
    OUTLINED_FUNCTION_10_55(v97, v98, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    v280 = v7;
    v281 = v11;
    if (v104)
    {
      v99 = &qword_27CB24268;
      v100 = &qword_21777DBE0;
      v101 = v377;
      goto LABEL_93;
    }

    v276 = boxed_opaque_existential_0;
    sub_21726A630((v13 + 72), &v357, &qword_27CB24300, &qword_217771D70);
    sub_217269E58(v377);
    boxed_opaque_existential_0 = v358;
    if (!v358)
    {
      break;
    }

    v273 = v9;
    v274 = v5;
    v275 = v15;
    v7 = *(v358 + 16);
    v271 = *(&v357 + 1);
    v272 = v357;
    sub_2171FB568(v357, *(&v357 + 1));
    sub_217751DE8();
    v9 = 0;
    v277 = MEMORY[0x277D84F90];
    v5 = &qword_27CB24708;
    v11 = &unk_217758C90;
    while (1)
    {
      if (v7 == v9)
      {

        v111 = *(&v358 + 1);
        v112 = *(&v359 + 1);
        v11 = v359;
        v113 = *(&v360 + 1);
        boxed_opaque_existential_0 = v360;
        v30 = *&v361[0];
        sub_21726A630(v361 + 8, &v362[4] + 8, &qword_27CB24188, &dword_217758930);
        *&v362[0] = v272;
        *(&v362[0] + 1) = v271;
        *&v362[1] = v277;
        *(&v362[1] + 1) = v111;
        v362[2] = __PAIR128__(v112, v11);
        v362[3] = __PAIR128__(v113, boxed_opaque_existential_0);
        *&v362[4] = v30;
        v362[7] = v361[3];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(&v357, &qword_27CB24308, &unk_217767A90);
        v5 = v274;
        v15 = v275;
        v7 = v280;
        v9 = v273;
        goto LABEL_94;
      }

      if (v9 >= *(boxed_opaque_existential_0 + 2))
      {
        break;
      }

      v15 = (*(v284 + 80) + 32) & ~*(v284 + 80);
      v13 = v21;
      v102 = *(v284 + 72);
      sub_21726A630(&boxed_opaque_existential_0[v15 + v102 * v9], v30, &qword_27CB24708, &unk_217758C90);
      sub_2175F70D8(v30, v13, type metadata accessor for CatalogSearchRawResponse.TopResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v104 = EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 10;
      if (v104)
      {
        sub_2171F0738(v30, &qword_27CB24708, &unk_217758C90);
        OUTLINED_FUNCTION_17_49();
        sub_2175F7190(v13, v105);
        ++v9;
        v21 = v13;
      }

      else
      {
        OUTLINED_FUNCTION_17_49();
        v270 = v13;
        sub_2175F7190(v13, v106);
        sub_21726A594(v30, v276, &qword_27CB24708, &unk_217758C90);
        v13 = v277;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v362[0] = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_217276528(0, *(v13 + 2) + 1, 1);
          v13 = *&v362[0];
        }

        v109 = *(v13 + 2);
        v108 = *(v13 + 3);
        v110 = (v109 + 1);
        if (v109 >= v108 >> 1)
        {
          v277 = (v109 + 1);
          v269 = v109;
          sub_217276528(v108 > 1, v109 + 1, 1);
          v110 = v277;
          v109 = v269;
          v13 = *&v362[0];
        }

        ++v9;
        *(v13 + 2) = v110;
        v277 = v13;
        sub_21726A594(v276, v13 + v15 + v109 * v102, &qword_27CB24708, &unk_217758C90);
        v21 = v270;
      }
    }

    __break(1u);
LABEL_251:
    OUTLINED_FUNCTION_3_6();
  }

  v99 = &qword_27CB24300;
  v100 = &qword_217771D70;
  v101 = &v357;
LABEL_93:
  sub_2171F0738(v101, v99, v100);
  OUTLINED_FUNCTION_29_37();
LABEL_94:
  v356 = 0;
  v355 = 0u;
  v354 = 0u;
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse))
  {
    v13 = (*(v114 + 8))();
    v11 = v115;
    sub_2172CA838(v5, &v347);
    sub_21726A630(&v363[13], v377, &qword_27CB24290, &unk_21775D550);
    *&v340 = v7;
    v116 = v9;
    v30 = v11 + 8;
    v117 = *(v11 + 1);
    *(&v358 + 1) = v13;
    *&v359 = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v357);
    sub_217751DE8();
    v118 = v283;

    sub_217751DE8();
    v117(v281, v116, &v347, v377, &v340, v118, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v13, v11);
    v9 = v116;
    sub_2171F0738(&v354, &qword_27CB2ABB8, &unk_217785AB0);
    v354 = v357;
    v355 = v358;
    v356 = v359;
  }

  if (!v9)
  {
    sub_21726A630(v381, v377, &qword_27CB24268, &qword_21777DBE0);
    OUTLINED_FUNCTION_11_63();
    if (v104)
    {
      sub_2171F0738(v377, &qword_27CB24268, &qword_21777DBE0);
      v281 = 0;
      v9 = 0;
    }

    else
    {
      v13 = v377;
      v281 = sub_2175A2DE8();
      v9 = v119;
      sub_217269E58(v377);
    }
  }

  v120 = v9;
  sub_21726A630(v381, v377, &qword_27CB24268, &qword_21777DBE0);
  if (*&v377[1] == 1)
  {
    v121 = &qword_27CB24268;
    v122 = &qword_21777DBE0;
    v123 = v377;
    goto LABEL_107;
  }

  sub_21726A630(v377, &v357, &qword_27CB24270, &unk_21775D640);
  sub_217269E58(v377);
  if (v358)
  {
    OUTLINED_FUNCTION_35_32();
    MEMORY[0x28223BE20](v124, v125);
    OUTLINED_FUNCTION_0_116();
    sub_2172E49B0(sub_21733B438, v126, v127);
    OUTLINED_FUNCTION_7_62();
    sub_21726A630(v379, &v337, &qword_27CB24188, &dword_217758930);
    if (*(&v338 + 1))
    {
      v340 = v337;
      v341 = v338;
      *&v342 = v339;
    }

    else
    {
      *&v332 = 0;
      v330 = 0u;
      v331 = 0u;
      v11 = *&v361[0];
      if (*&v361[0])
      {
        v227 = *(&v360 + 1);
        OUTLINED_FUNCTION_43_24(&v347);
        *&v347 = v227;
        *(&v347 + 1) = v11;
        OUTLINED_FUNCTION_197();
        boxed_opaque_existential_0 = swift_allocObject();
        v228 = v348;
        *(boxed_opaque_existential_0 + 1) = v347;
        *(boxed_opaque_existential_0 + 2) = v228;
        *(boxed_opaque_existential_0 + 3) = v349;
        OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v350);
        sub_2171F0738(&v330, &qword_27CB24188, &dword_217758930);
        *&v330 = boxed_opaque_existential_0;
        *(&v331 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v342 = &off_2829650B8;
        v340 = v330;
        v341 = v331;
        if (*(&v338 + 1))
        {
          sub_2171F0738(&v337, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        *&v342 = 0;
        v341 = 0uLL;
        v340 = 0uLL;
      }
    }

    OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_2_102();
    *&v347 = v13;
    BYTE8(v347) = 0;
    v348 = v340;
    v349 = v341;
    *&v350 = v342;
    *(&v350 + 1) = v128;
    *&v351 = v129;
    *(&v351 + 1) = v130;
    *&v352 = v11;
    *(&v352 + 1) = boxed_opaque_existential_0;
    v353 = v30;
    OUTLINED_FUNCTION_46_26(v131, v132);
    sub_217751DE8();
    sub_217751DE8();
    v133 = sub_2171F0738(&v357, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    v121 = &qword_27CB24270;
    v122 = &unk_21775D640;
    v123 = &v357;
LABEL_107:
    v133 = sub_2171F0738(v123, v121, v122);
    v347 = 0u;
    v348 = 0u;
    v349 = 0u;
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v353 = 0;
  }

  OUTLINED_FUNCTION_10_55(v133, v134, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v135 = &qword_27CB24268;
    v136 = &qword_21777DBE0;
    v137 = v377;
LABEL_116:
    sub_2171F0738(v137, v135, v136);
    v340 = 0u;
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    v344 = 0u;
    v345 = 0u;
    v346 = 0;
    goto LABEL_117;
  }

  sub_21726A630((v13 + 8), &v357, &qword_27CB24280, &unk_21775D680);
  sub_217269E58(v377);
  if (!v358)
  {
    v135 = &qword_27CB24280;
    v136 = &unk_21775D680;
    v137 = &v357;
    goto LABEL_116;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v138, v139);
  OUTLINED_FUNCTION_0_116();
  sub_2172E48C0(sub_21733B4A8, v140, v141);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v375, &v330, &qword_27CB24188, &dword_217758930);
  if (*(&v331 + 1))
  {
    v337 = v330;
    v338 = v331;
    v339 = v332;
  }

  else
  {
    *&v325 = 0;
    v323 = 0u;
    v324 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v229 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v340);
      *&v340 = v229;
      *(&v340 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v230 = v341;
      *(boxed_opaque_existential_0 + 1) = v340;
      *(boxed_opaque_existential_0 + 2) = v230;
      *(boxed_opaque_existential_0 + 3) = v342;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v343);
      sub_2171F0738(&v323, &qword_27CB24188, &dword_217758930);
      *&v323 = boxed_opaque_existential_0;
      *(&v324 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v339 = &off_2829650B8;
      v337 = v323;
      v338 = v324;
      if (*(&v331 + 1))
      {
        sub_2171F0738(&v330, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v339 = 0;
      v338 = 0uLL;
      v337 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v340 = v13;
  BYTE8(v340) = 0;
  v341 = v337;
  v342 = v338;
  *&v343 = v339;
  *(&v343 + 1) = v142;
  *&v344 = v143;
  *(&v344 + 1) = v144;
  *&v345 = v11;
  *(&v345 + 1) = boxed_opaque_existential_0;
  v346 = v30;
  OUTLINED_FUNCTION_46_26(v145, v146);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v357, &qword_27CB24288, &qword_217758F80);
LABEL_117:
  v147 = sub_21726A630(v363, &v337, &qword_27CB25638, &unk_21775EA10);
  OUTLINED_FUNCTION_10_55(v147, v148, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v149 = &qword_27CB24268;
    v150 = &qword_21777DBE0;
    v151 = v377;
LABEL_125:
    v161 = sub_2171F0738(v151, v149, v150);
    v330 = 0u;
    v331 = 0u;
    v332 = 0u;
    v333 = 0u;
    v334 = 0u;
    v335 = 0u;
    v336 = 0;
    goto LABEL_126;
  }

  sub_21726A630((v13 + 32), &v357, &qword_27CB242B0, &unk_21775D630);
  sub_217269E58(v377);
  if (!v358)
  {
    v149 = &qword_27CB242B0;
    v150 = &unk_21775D630;
    v151 = &v357;
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v152, v153);
  OUTLINED_FUNCTION_0_116();
  sub_2172E4884(sub_21733B41C, v154, v155);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v373, &v320, &qword_27CB24188, &dword_217758930);
  if (*(&v321 + 1))
  {
    v323 = v320;
    v324 = v321;
    *&v325 = v322;
  }

  else
  {
    *&v315 = 0;
    v313 = 0u;
    v314 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v231 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v330);
      *&v330 = v231;
      *(&v330 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v232 = v331;
      *(boxed_opaque_existential_0 + 1) = v330;
      *(boxed_opaque_existential_0 + 2) = v232;
      *(boxed_opaque_existential_0 + 3) = v332;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v333);
      sub_2171F0738(&v313, &qword_27CB24188, &dword_217758930);
      *&v313 = boxed_opaque_existential_0;
      *(&v314 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v325 = &off_2829650B8;
      v323 = v313;
      v324 = v314;
      if (*(&v321 + 1))
      {
        sub_2171F0738(&v320, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v325 = 0;
      v323 = 0uLL;
      v324 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v330 = v13;
  BYTE8(v330) = 0;
  v331 = v323;
  v332 = v324;
  *&v333 = v325;
  *(&v333 + 1) = v156;
  *&v334 = v157;
  *(&v334 + 1) = v158;
  *&v335 = v11;
  *(&v335 + 1) = boxed_opaque_existential_0;
  v336 = v30;
  OUTLINED_FUNCTION_46_26(v159, v160);
  sub_217751DE8();
  sub_217751DE8();
  v161 = sub_2171F0738(&v357, &qword_27CB242B8, &unk_21777EEA0);
LABEL_126:
  OUTLINED_FUNCTION_10_55(v161, v162, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v163 = &qword_27CB24268;
    v164 = &qword_21777DBE0;
    v165 = v377;
LABEL_134:
    sub_2171F0738(v165, v163, v164);
    v323 = 0u;
    v324 = 0u;
    v325 = 0u;
    v326 = 0u;
    v327 = 0u;
    v328 = 0u;
    v329 = 0;
    goto LABEL_135;
  }

  sub_21726A630((v13 + 40), &v357, &qword_27CB242C0, &unk_21775D650);
  sub_217269E58(v377);
  if (!v358)
  {
    v163 = &qword_27CB242C0;
    v164 = &unk_21775D650;
    v165 = &v357;
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v166, v167);
  OUTLINED_FUNCTION_0_116();
  sub_2172E48FC(sub_21733B454, v168, v169);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v371, &v313, &qword_27CB24188, &dword_217758930);
  if (*(&v314 + 1))
  {
    v320 = v313;
    v321 = v314;
    v322 = v315;
  }

  else
  {
    *&v308 = 0;
    v306 = 0u;
    v307 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v233 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v323);
      *&v323 = v233;
      *(&v323 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v234 = v324;
      *(boxed_opaque_existential_0 + 1) = v323;
      *(boxed_opaque_existential_0 + 2) = v234;
      *(boxed_opaque_existential_0 + 3) = v325;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v326);
      sub_2171F0738(&v306, &qword_27CB24188, &dword_217758930);
      *&v306 = boxed_opaque_existential_0;
      *(&v307 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v322 = &off_2829650B8;
      v320 = v306;
      v321 = v307;
      if (*(&v314 + 1))
      {
        sub_2171F0738(&v313, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v322 = 0;
      v320 = 0uLL;
      v321 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v323 = v13;
  BYTE8(v323) = 0;
  v324 = v320;
  v325 = v321;
  *&v326 = v322;
  *(&v326 + 1) = v170;
  *&v327 = v171;
  *(&v327 + 1) = v172;
  *&v328 = v11;
  *(&v328 + 1) = boxed_opaque_existential_0;
  v329 = v30;
  OUTLINED_FUNCTION_46_26(v173, v174);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v357, &qword_27CB242C8, &unk_217758970);
LABEL_135:
  v175 = sub_21726A630(&v364, &v320, &qword_27CB25630, &qword_21775D568);
  OUTLINED_FUNCTION_10_55(v175, v176, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v177 = &qword_27CB24268;
    v178 = &qword_21777DBE0;
    v179 = v377;
LABEL_143:
    v189 = sub_2171F0738(v179, v177, v178);
    v313 = 0u;
    v314 = 0u;
    v315 = 0u;
    v316 = 0u;
    v317 = 0u;
    v318 = 0u;
    v319 = 0;
    goto LABEL_144;
  }

  sub_21726A630((v13 + 48), &v357, &qword_27CB242D0, &unk_21775D660);
  sub_217269E58(v377);
  if (!v358)
  {
    v177 = &qword_27CB242D0;
    v178 = &unk_21775D660;
    v179 = &v357;
    goto LABEL_143;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v180, v181);
  OUTLINED_FUNCTION_0_116();
  sub_2172E49EC(sub_21733B470, v182, v183);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v369, &v299, &qword_27CB24188, &dword_217758930);
  if (*(&v300 + 1))
  {
    v306 = v299;
    v307 = v300;
    *&v308 = v301;
  }

  else
  {
    v294 = 0;
    v292 = 0u;
    v293 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v235 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v313);
      *&v313 = v235;
      *(&v313 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v236 = v314;
      *(boxed_opaque_existential_0 + 1) = v313;
      *(boxed_opaque_existential_0 + 2) = v236;
      *(boxed_opaque_existential_0 + 3) = v315;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v316);
      sub_2171F0738(&v292, &qword_27CB24188, &dword_217758930);
      *&v292 = boxed_opaque_existential_0;
      *(&v293 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v308 = &off_2829650B8;
      v306 = v292;
      v307 = v293;
      if (*(&v300 + 1))
      {
        sub_2171F0738(&v299, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v308 = 0;
      v306 = 0uLL;
      v307 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v313 = v13;
  BYTE8(v313) = 0;
  v314 = v306;
  v315 = v307;
  *&v316 = v308;
  *(&v316 + 1) = v184;
  *&v317 = v185;
  *(&v317 + 1) = v186;
  *&v318 = v11;
  *(&v318 + 1) = boxed_opaque_existential_0;
  v319 = v30;
  OUTLINED_FUNCTION_46_26(v187, v188);
  sub_217751DE8();
  sub_217751DE8();
  v189 = sub_2171F0738(&v357, &qword_27CB242D8, &unk_21777EEB0);
LABEL_144:
  OUTLINED_FUNCTION_10_55(v189, v190, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v191 = &qword_27CB24268;
    v192 = &qword_21777DBE0;
    v193 = v377;
LABEL_152:
    v203 = sub_2171F0738(v193, v191, v192);
    v306 = 0u;
    v307 = 0u;
    v308 = 0u;
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0;
    goto LABEL_153;
  }

  sub_21726A630((v13 + 56), &v357, &qword_27CB242E0, &unk_21777EEE0);
  sub_217269E58(v377);
  if (!v358)
  {
    v191 = &qword_27CB242E0;
    v192 = &unk_21777EEE0;
    v193 = &v357;
    goto LABEL_152;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v194, v195);
  OUTLINED_FUNCTION_0_116();
  sub_2172E480C(sub_21733B5A4, v196, v197);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v367, &v292, &qword_27CB24188, &dword_217758930);
  if (*(&v293 + 1))
  {
    v299 = v292;
    v300 = v293;
    *&v301 = v294;
  }

  else
  {
    v298 = 0;
    v296 = 0u;
    v297 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v237 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v306);
      *&v306 = v237;
      *(&v306 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v238 = v307;
      *(boxed_opaque_existential_0 + 1) = v306;
      *(boxed_opaque_existential_0 + 2) = v238;
      *(boxed_opaque_existential_0 + 3) = v308;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v309);
      sub_2171F0738(&v296, &qword_27CB24188, &dword_217758930);
      *&v296 = boxed_opaque_existential_0;
      *(&v297 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      *&v301 = &off_2829650B8;
      v299 = v296;
      v300 = v297;
      if (*(&v293 + 1))
      {
        sub_2171F0738(&v292, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      *&v301 = 0;
      v299 = 0uLL;
      v300 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v306 = v13;
  BYTE8(v306) = 0;
  v307 = v299;
  v308 = v300;
  *&v309 = v301;
  *(&v309 + 1) = v198;
  *&v310 = v199;
  *(&v310 + 1) = v200;
  *&v311 = v11;
  *(&v311 + 1) = boxed_opaque_existential_0;
  v312 = v30;
  OUTLINED_FUNCTION_46_26(v201, v202);
  sub_217751DE8();
  sub_217751DE8();
  v203 = sub_2171F0738(&v357, &qword_27CB242E8, &unk_21775D6B0);
LABEL_153:
  OUTLINED_FUNCTION_10_55(v203, v204, &qword_27CB24268, &qword_21777DBE0);
  OUTLINED_FUNCTION_11_63();
  if (v104)
  {
    v205 = &qword_27CB24268;
    v206 = &qword_21777DBE0;
    v207 = v377;
LABEL_161:
    sub_2171F0738(v207, v205, v206);
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0u;
    v305 = 0;
    goto LABEL_162;
  }

  sub_21726A630((v13 + 64), &v357, &qword_27CB242F0, &unk_217797B80);
  sub_217269E58(v377);
  if (!v358)
  {
    v205 = &qword_27CB242F0;
    v206 = &unk_217797B80;
    v207 = &v357;
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_35_32();
  MEMORY[0x28223BE20](v208, v209);
  OUTLINED_FUNCTION_0_116();
  sub_2172E4848(sub_21733B5C0, v210, v211);
  OUTLINED_FUNCTION_7_62();
  sub_21726A630(v365, &v296, &qword_27CB24188, &dword_217758930);
  if (*(&v297 + 1))
  {
    v292 = v296;
    v293 = v297;
    v294 = v298;
  }

  else
  {
    v291 = 0;
    v289 = 0u;
    v290 = 0u;
    v11 = *&v361[0];
    if (*&v361[0])
    {
      v239 = *(&v360 + 1);
      OUTLINED_FUNCTION_43_24(&v299);
      *&v299 = v239;
      *(&v299 + 1) = v11;
      OUTLINED_FUNCTION_197();
      boxed_opaque_existential_0 = swift_allocObject();
      v240 = v300;
      *(boxed_opaque_existential_0 + 1) = v299;
      *(boxed_opaque_existential_0 + 2) = v240;
      *(boxed_opaque_existential_0 + 3) = v301;
      OUTLINED_FUNCTION_42_33(boxed_opaque_existential_0, v302);
      sub_2171F0738(&v289, &qword_27CB24188, &dword_217758930);
      *&v289 = boxed_opaque_existential_0;
      *(&v290 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
      v294 = &off_2829650B8;
      v292 = v289;
      v293 = v290;
      if (*(&v297 + 1))
      {
        sub_2171F0738(&v296, &qword_27CB24188, &dword_217758930);
      }
    }

    else
    {
      v294 = 0;
      v292 = 0uLL;
      v293 = 0uLL;
    }
  }

  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_2_102();
  *&v299 = v13;
  BYTE8(v299) = 0;
  v300 = v292;
  v301 = v293;
  *&v302 = v294;
  *(&v302 + 1) = v212;
  *&v303 = v213;
  *(&v303 + 1) = v214;
  *&v304 = v11;
  *(&v304 + 1) = boxed_opaque_existential_0;
  v305 = v30;
  OUTLINED_FUNCTION_46_26(v215, v216);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v357, &qword_27CB242F8, &qword_21775D6C0);
LABEL_162:
  v217 = sub_21726A630(v362, v377, &qword_27CB24300, &qword_217771D70);
  if (*&v377[1])
  {
    v294 = 0;
    v292 = 0u;
    v293 = 0u;
    MEMORY[0x28223BE20](v217, v218);
    OUTLINED_FUNCTION_0_116();
    v221 = sub_2172E4CDC(sub_2175F70BC, v219, v220);
    sub_21726A630(&v292, &v289, &qword_27CB24188, &dword_217758930);
    if (*(&v290 + 1))
    {
      sub_2171F0738(&v292, &qword_27CB24188, &dword_217758930);
      v296 = v289;
      v297 = v290;
      v298 = v291;
      v222 = v280;
    }

    else
    {
      v288 = 0;
      v286 = 0u;
      v287 = 0u;
      v223 = *&v377[4];
      if (*&v377[4])
      {
        v224 = *(&v377[3] + 1);
        OUTLINED_FUNCTION_43_24(&v357);
        *&v357 = v224;
        *(&v357 + 1) = v223;
        OUTLINED_FUNCTION_197();
        v225 = swift_allocObject();
        v226 = v358;
        v225[1] = v357;
        v225[2] = v226;
        v225[3] = v359;
        OUTLINED_FUNCTION_42_33(v225, v360);
        sub_2171F0738(&v286, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(&v292, &qword_27CB24188, &dword_217758930);
        *&v286 = v225;
        *(&v287 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        v288 = &off_2829650B8;
      }

      else
      {
        sub_2171F0738(&v292, &qword_27CB24188, &dword_217758930);
      }

      v222 = v280;
      v296 = v286;
      v297 = v287;
      v298 = v288;
      if (*(&v290 + 1))
      {
        sub_2171F0738(&v289, &qword_27CB24188, &dword_217758930);
      }
    }

    if (*(&v377[0] + 1) == 1)
    {
      v241 = 0;
    }

    else
    {
      v241 = *&v377[0];
    }

    if (*(&v377[0] + 1) == 1)
    {
      v242 = 0;
    }

    else
    {
      v242 = *(&v377[0] + 1);
    }

    *&v357 = v221;
    BYTE8(v357) = 0;
    v358 = v296;
    v359 = v297;
    *&v360 = v298;
    *(&v360 + 1) = v241;
    *&v361[0] = v242;
    *(&v361[0] + 1) = *(&v377[1] + 1);
    *&v361[1] = *&v377[2];
    *(&v361[1] + 8) = v377[7];
    OUTLINED_FUNCTION_46_26(*&v377[0], *(&v377[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v377, &qword_27CB24308, &unk_217767A90);
  }

  else
  {
    sub_2171F0738(v377, &qword_27CB24300, &qword_217771D70);
    v357 = 0u;
    v358 = 0u;
    v359 = 0u;
    v360 = 0u;
    memset(v361, 0, 40);
    v222 = v280;
  }

  sub_21726A630(&v354, &v296, &qword_27CB2ABB8, &unk_217785AB0);
  *(v15 + 1080) = v281;
  *(v15 + 1088) = v120;
  *(v15 + 1096) = v222;
  sub_21726A630(&v347, &v292, &qword_27CB25318, &qword_2177657C0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA1AC();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25318, &qword_2177657C0);
    }
  }

  memcpy(v15, v377, 0x68uLL);
  sub_21726A630(&v340, &v292, &qword_27CB25310, &unk_21775D3D0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA180();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25310, &unk_21775D3D0);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 104));
  sub_21726A630(&v337, &v292, &qword_27CB25610, &qword_21775D540);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA154();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25610, &qword_21775D540);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 208));
  sub_21726A630(&v330, &v292, &qword_27CB25338, &unk_21775D3E0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA128();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25338, &unk_21775D3E0);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 312));
  sub_21726A630(&v323, &v292, &qword_27CB25330, &unk_21775E9B0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0FC();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 416));
  sub_21726A630(&v320, &v292, &qword_27CB25608, &unk_21775D530);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0D0();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25608, &unk_21775D530);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 520));
  sub_21726A630(&v313, &v292, &qword_27CB25328, &unk_21775D3F0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA0A4();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB25328, &unk_21775D3F0);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 624));
  sub_21726A630(&v306, &v292, &qword_27CB255A8, &unk_21775D450);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA078();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB255A8, &unk_21775D450);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 728));
  sub_21726A630(&v299, &v292, &qword_27CB255B0, &unk_217793B50);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA04C();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB255B0, &unk_217793B50);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 832));
  sub_21726A630(&v357, &v292, &qword_27CB26E78, &qword_217785AC0);
  if (v295)
  {
    OUTLINED_FUNCTION_12_48();
  }

  else
  {
    sub_2174AA020();
    if (v295)
    {
      sub_2171F0738(&v292, &qword_27CB26E78, &qword_217785AC0);
    }
  }

  OUTLINED_FUNCTION_40_30((v15 + 936));
  sub_21726A630(&v296, &v292, &qword_27CB2ABB8, &unk_217785AB0);
  v243 = *(&v293 + 1);
  if (*(&v293 + 1))
  {
    v244 = v294;
    __swift_project_boxed_opaque_existential_1(&v292, *(&v293 + 1));
    sub_2171F9380(v243, v244, v377);

    sub_2171F0738(v278, &qword_27CB2AC08, &qword_217786368);
    sub_2175A336C(v279);
    OUTLINED_FUNCTION_169_1(&v296);
    sub_2171F0738(&v357, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(&v299, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(&v306, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(&v313, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(&v320, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(&v323, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(&v330, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(&v337, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(&v340, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(&v347, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_169_1(&v354);
    sub_2171F0738(v362, &qword_27CB24300, &qword_217771D70);
    sub_2175F6E84(v363);
    OUTLINED_FUNCTION_169_1(v365);
    OUTLINED_FUNCTION_169_1(v367);
    OUTLINED_FUNCTION_169_1(v369);
    OUTLINED_FUNCTION_169_1(v371);
    OUTLINED_FUNCTION_169_1(v373);
    OUTLINED_FUNCTION_169_1(v375);
    OUTLINED_FUNCTION_169_1(v379);
    sub_2171F0738(v381, &qword_27CB24268, &qword_21777DBE0);
    sub_21733AB9C(v5);
    __swift_destroy_boxed_opaque_existential_1(&v292);
  }

  else
  {

    sub_2171F0738(v278, &qword_27CB2AC08, &qword_217786368);
    sub_2175A336C(v279);
    OUTLINED_FUNCTION_169_1(&v296);
    sub_2171F0738(&v357, &qword_27CB26E78, &qword_217785AC0);
    sub_2171F0738(&v299, &qword_27CB255B0, &unk_217793B50);
    sub_2171F0738(&v306, &qword_27CB255A8, &unk_21775D450);
    sub_2171F0738(&v313, &qword_27CB25328, &unk_21775D3F0);
    sub_2171F0738(&v320, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(&v323, &qword_27CB25330, &unk_21775E9B0);
    sub_2171F0738(&v330, &qword_27CB25338, &unk_21775D3E0);
    sub_2171F0738(&v337, &qword_27CB25610, &qword_21775D540);
    sub_2171F0738(&v340, &qword_27CB25310, &unk_21775D3D0);
    sub_2171F0738(&v347, &qword_27CB25318, &qword_2177657C0);
    OUTLINED_FUNCTION_169_1(&v354);
    sub_2171F0738(v362, &qword_27CB24300, &qword_217771D70);
    sub_2175F6E84(v363);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v245, v246, v247);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v248, v249, v250);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v251, v252, v253);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v254, v255, v256);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v257, v258, v259);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v260, v261, v262);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v263, v264, v265);
    sub_2171F0738(v381, &qword_27CB24268, &qword_21777DBE0);
    sub_21733AB9C(v5);
    OUTLINED_FUNCTION_169_1(&v292);
    memset(v377, 0, 40);
  }

  result = *v377;
  v267 = v377[1];
  *(v15 + 1040) = v377[0];
  *(v15 + 1056) = v267;
  *(v15 + 1072) = *&v377[2];
  return result;
}

uint64_t sub_2175EDB88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = result;
  *(a8 + 32) = 0;
  *a8 = 0u;
  *(a8 + 16) = 0u;
  v9 = *(v8 + 64);
  if (v9)
  {
    v17 = *(v8 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2177586E0;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a5;
    *(v18 + 56) = a6;
    sub_2172CA838(a7, v27);
    sub_217751DE8();
    sub_217751DE8();
    if (a2)
    {
      v19 = a2;
      v20 = v17;
      v21 = v26;
    }

    else
    {
      sub_217751DE8();
      static URL.valueForQueryItem(named:extractedFrom:)();
      v21 = v22;
      v19 = v23;

      v20 = v17;
    }

    v29 = v27[0];
    v30 = v27[1];
    v31 = v28;
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v19;
    *(v24 + 32) = v18;
    *(v24 + 40) = v20;
    *(v24 + 48) = v9;
    v25 = v30;
    *(v24 + 56) = v29;
    *(v24 + 72) = v25;
    *(v24 + 88) = v31;
    sub_217751DE8();
    result = sub_2171F0738(a8, &qword_27CB24188, &dword_217758930);
    *a8 = v24;
    *(a8 + 24) = &type metadata for MusicCatalogSearchIncrementalLoader;
    *(a8 + 32) = &protocol witness table for MusicCatalogSearchIncrementalLoader;
  }

  return result;
}

uint64_t sub_2175EDD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a5;
  v85 = a1;
  v86 = a2;
  v88 = a4;
  sub_21726A630(a4, v137, &qword_27CB242A0, &unk_21777EEF0);
  v87 = a3;
  v82 = a7;
  v83 = a6;
  if (v138)
  {
    sub_21726A630(v137, &v129, &qword_27CB242A8, &unk_21775D570);
    if (qword_280BE7FE8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v85, v86, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), a3, v135);
    sub_2171F0738(&v129, &qword_27CB242A8, &unk_21775D570);
    if (v138)
    {
      sub_21726A630(v137, &v123, &qword_27CB242A8, &unk_21775D570);
      memset(&v133[1], 0, 40);
      sub_2171F0738(&v133[1], &qword_27CB24188, &dword_217758930);
      sub_21726A630(v135, &v133[1], &qword_27CB24188, &dword_217758930);
      v10 = v123;
      v11 = v124;
      v12 = v125;
      v13 = v126;
      v15 = *(&v128 + 1);
      v14 = v128;
      sub_2171FB568(v123, *(&v123 + 1));
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(&v123, &qword_27CB242A8, &unk_21775D570);
      v129 = v10;
      v130 = v11;
      v131 = v12;
      v133[0] = 0;
      v132 = v13;
      goto LABEL_8;
    }
  }

  else
  {
    v136 = 0;
    memset(v135, 0, sizeof(v135));
  }

  v14 = 0;
  v15 = 0;
  memset(v133, 0, sizeof(v133));
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
LABEL_8:
  *&v134 = v14;
  *(&v134 + 1) = v15;
  sub_21733BBDC(&v129, v137, &qword_27CB242A0, &unk_21777EEF0);
  sub_21726A630(v88 + 128, &v123, &qword_27CB24290, &unk_21775D550);
  v16 = v124;
  if (!v124)
  {
    sub_2171F0738(&v123, &qword_27CB24290, &unk_21775D550);
    v89 = 0;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    memset(v133, 0, sizeof(v133));
    v134 = 0u;
    goto LABEL_14;
  }

  v17 = v123;
  sub_2171FB568(v123, *(&v123 + 1));
  v18 = sub_2175EA9B4(v16);
  v89 = 0;
  v19 = *(&v124 + 1);
  v20 = v125;
  v80 = *(&v126 + 1);
  v21 = v126;
  v81 = v18;
  v22 = v127[0];
  sub_21726A630(&v127[1], &v133[1], &qword_27CB24188, &dword_217758930);
  v129 = v17;
  *&v130 = v81;
  *(&v130 + 1) = v19;
  v131 = v20;
  v132 = __PAIR128__(v80, v21);
  v133[0] = v22;
  v134 = v128;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v123, &qword_27CB24298, &qword_21777CD60);
  if (!v130)
  {
LABEL_14:
    v23 = v87;
    v122 = 0;
    memset(v121, 0, sizeof(v121));
    goto LABEL_15;
  }

  sub_21726A630(&v129, &v123, &qword_27CB242A8, &unk_21775D570);
  v23 = v87;
  if (qword_280BE7FE8 != -1)
  {
    swift_once();
  }

  sub_2175EDB88(v85, v86, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), v87, v121);
  sub_2171F0738(&v123, &qword_27CB242A8, &unk_21775D570);
LABEL_15:
  if (v130)
  {
    sub_21726A630(&v129, v120, &qword_27CB242A8, &unk_21775D570);
    memset(&v127[1], 0, 40);
    sub_2171F0738(&v127[1], &qword_27CB24188, &dword_217758930);
    sub_21726A630(v121, &v127[1], &qword_27CB24188, &dword_217758930);
    v25 = *(&v120[0] + 1);
    v24 = *&v120[0];
    v26 = v120[1];
    v27 = v120[2];
    v28 = *&v120[3];
    v30 = *(&v120[7] + 1);
    v29 = *&v120[7];
    sub_2171FB568(*&v120[0], *(&v120[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v120, &qword_27CB242A8, &unk_21775D570);
    v123 = __PAIR128__(v25, v24);
    v124 = v26;
    v125 = v27;
    v23 = v87;
    v127[0] = 0;
    v126 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    memset(v127, 0, sizeof(v127));
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
  }

  *&v128 = v29;
  *(&v128 + 1) = v30;
  sub_21733BBDC(&v123, &v129, &qword_27CB242A0, &unk_21777EEF0);
  v128 = 0u;
  memset(v127, 0, sizeof(v127));
  v126 = 0u;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  sub_21726A630(&v129, v119, &qword_27CB242A0, &unk_21777EEF0);
  if (!*&v119[1])
  {
    v32 = v119;
LABEL_23:
    sub_2171F0738(v32, &qword_27CB242A0, &unk_21777EEF0);
    sub_21726A630(&v129, v119, &qword_27CB242A0, &unk_21777EEF0);
    if (*&v119[1])
    {
      memcpy(v120, v119, sizeof(v120));
    }

    else
    {
      sub_21726A630(v137, v120, &qword_27CB242A0, &unk_21777EEF0);
      if (*&v119[1])
      {
        sub_2171F0738(v119, &qword_27CB242A0, &unk_21777EEF0);
      }
    }

    v31 = v120;
    goto LABEL_28;
  }

  memcpy(v120, v119, sizeof(v120));
  sub_21726A630(v137, v118, &qword_27CB242A0, &unk_21777EEF0);
  if (!*&v118[1])
  {
    sub_2171F0738(v120, &qword_27CB242A8, &unk_21775D570);
    v32 = v118;
    goto LABEL_23;
  }

  memcpy(v119, v118, sizeof(v119));
  sub_217312AC8(v119, v23, 0, v118);
  sub_2171F0738(v119, &qword_27CB242A8, &unk_21775D570);
  sub_2171F0738(v120, &qword_27CB242A8, &unk_21775D570);
  v31 = v118;
LABEL_28:
  sub_21733BBDC(v31, &v123, &qword_27CB242A0, &unk_21777EEF0);
  sub_21726A630(v88 + 128, v119, &qword_27CB24290, &unk_21775D550);
  v33 = *&v119[1];
  if (*&v119[1])
  {
    v34 = v119[0];
    sub_2171FB568(*&v119[0], *(&v119[0] + 1));
    v35 = sub_2175EA414(v33);
    v36 = *(&v119[1] + 1);
    v80 = *(&v119[2] + 1);
    v37 = *&v119[2];
    v81 = v35;
    v38 = v119[3];
    v39 = *&v119[4];
    sub_21726A630(&v119[4] + 8, &v120[4] + 8, &qword_27CB24188, &dword_217758930);
    v120[0] = v34;
    *&v120[1] = v81;
    *(&v120[1] + 1) = v36;
    v120[2] = __PAIR128__(v80, v37);
    v120[3] = v38;
    *&v120[4] = v39;
    v120[7] = v119[7];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v119, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_2171F0738(v119, &qword_27CB24290, &unk_21775D550);
    memset(v120, 0, sizeof(v120));
  }

  sub_21726A630(v88 + 128, v118, &qword_27CB24290, &unk_21775D550);
  v40 = *&v118[1];
  if (*&v118[1])
  {
    v41 = v118[0];
    sub_2171FB568(*&v118[0], *(&v118[0] + 1));
    v42 = sub_2175EAF5C(v40);
    v43 = *(&v118[1] + 1);
    v80 = *(&v118[2] + 1);
    v44 = *&v118[2];
    v81 = v42;
    v45 = v118[3];
    v46 = *&v118[4];
    sub_21726A630(&v118[4] + 8, &v119[4] + 8, &qword_27CB24188, &dword_217758930);
    v119[0] = v41;
    *&v119[1] = v81;
    *(&v119[1] + 1) = v43;
    v119[2] = __PAIR128__(v80, v44);
    v119[3] = v45;
    *&v119[4] = v46;
    v119[7] = v118[7];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v47 = sub_2171F0738(v118, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    v47 = sub_2171F0738(v118, &qword_27CB24290, &unk_21775D550);
    memset(v119, 0, sizeof(v119));
  }

  v49 = v87;
  v50 = v83;
  if (!*(v84 + 16))
  {
    goto LABEL_44;
  }

  if (qword_280BE7FE8 != -1)
  {
    v47 = swift_once();
  }

  v118[0] = xmmword_280BE7FF0;
  v118[1] = xmmword_280BE8000;
  MEMORY[0x28223BE20](v47, v48);
  v78 = v118;
  v51 = sub_2173DE19C();
  if ((v51 & 1) == 0)
  {
    v51 = sub_2171F0738(&v123, &qword_27CB242A0, &unk_21777EEF0);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    memset(v127, 0, sizeof(v127));
    v128 = 0u;
  }

  if (*(v84 + 16))
  {
    if (qword_280BE61F8 != -1)
    {
      v51 = swift_once();
    }

    v118[0] = xmmword_280BE6200;
    v118[1] = xmmword_280BE6210;
    MEMORY[0x28223BE20](v51, v52);
    v78 = v118;
    v53 = sub_2173DE19C();

    if (!v53)
    {
      sub_2171F0738(v120, &qword_27CB2AC10, &unk_217786370);
      memset(v120, 0, sizeof(v120));
    }
  }

  else
  {
LABEL_44:
  }

  if (!v124)
  {
    goto LABEL_53;
  }

  sub_21726A630(&v127[1], v96, &qword_27CB24188, &dword_217758930);
  if (*(&v96[1] + 1))
  {
    v115 = v96[0];
    v116 = v96[1];
    v117 = *&v96[2];
    goto LABEL_54;
  }

  if (v124)
  {
    sub_21726A630(&v123, v118, &qword_27CB242A8, &unk_21775D570);
    if (qword_280BE7FE8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v85, v86, xmmword_280BE7FF0, *(&xmmword_280BE7FF0 + 1), xmmword_280BE8000, *(&xmmword_280BE8000 + 1), v87, &v115);
    sub_2171F0738(v118, &qword_27CB242A8, &unk_21775D570);
    if (*(&v96[1] + 1))
    {
      sub_2171F0738(v96, &qword_27CB24188, &dword_217758930);
    }
  }

  else
  {
LABEL_53:
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
  }

LABEL_54:
  if (*&v120[1])
  {
    sub_21726A630(v120, v118, &qword_27CB25628, &qword_21775D560);
    if (qword_280BE61F8 != -1)
    {
      swift_once();
    }

    sub_2175EDB88(v85, v86, xmmword_280BE6200, *(&xmmword_280BE6200 + 1), xmmword_280BE6210, *(&xmmword_280BE6210 + 1), v87, v113);

    sub_2171F0738(v118, &qword_27CB25628, &qword_21775D560);
  }

  else
  {

    v114 = 0;
    memset(v113, 0, sizeof(v113));
  }

  if (v124)
  {
    v54 = sub_21726A630(&v123, v118, &qword_27CB242A8, &unk_21775D570);
    MEMORY[0x28223BE20](v54, v55);
    v78 = v50;
    v79 = v49;
    v56 = v89;
    v58 = sub_2172E4974(sub_21733B9E0, v77, v57);
    v89 = v56;
    sub_21726A630(&v115, &v107, &qword_27CB24188, &dword_217758930);
    if (*(&v108 + 1))
    {
      v96[0] = v107;
      v96[1] = v108;
      *&v96[2] = v109;
    }

    else
    {
      *&v102 = 0;
      v100 = 0u;
      v101 = 0u;
      v69 = *&v118[4];
      if (*&v118[4])
      {
        v70 = *(&v118[3] + 1);
        sub_2172CA838(v49, &v96[1]);
        *&v96[0] = v70;
        *(&v96[0] + 1) = v69;
        v71 = swift_allocObject();
        v72 = v96[1];
        *(v71 + 16) = v96[0];
        *(v71 + 32) = v72;
        *(v71 + 48) = v96[2];
        *(v71 + 64) = *&v96[3];
        sub_217751DE8();
        sub_2171F0738(&v100, &qword_27CB24188, &dword_217758930);
        *&v100 = v71;
        *(&v101 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v96[2] = &off_2829650B8;
        v96[0] = v100;
        v96[1] = v101;
        if (*(&v108 + 1))
        {
          sub_2171F0738(&v107, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        memset(v96, 0, 40);
      }
    }

    if (*(&v118[0] + 1) == 1)
    {
      v59 = 0;
    }

    else
    {
      v59 = *&v118[0];
    }

    if (*(&v118[0] + 1) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = *(&v118[0] + 1);
    }

    *&v107 = v58;
    BYTE8(v107) = 0;
    v108 = v96[0];
    v109 = v96[1];
    *&v110 = *&v96[2];
    *(&v110 + 1) = v59;
    *&v111 = v60;
    *(&v111 + 1) = *(&v118[1] + 1);
    *&v112[0] = *&v118[2];
    *(v112 + 8) = v118[7];
    sub_2171FB568(*&v118[0], *(&v118[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v118, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    v111 = 0u;
    memset(v112, 0, 24);
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
  }

  sub_21726A630(v119, v118, &qword_27CB24290, &unk_21775D550);
  if (*&v120[1])
  {
    v61 = sub_21726A630(v120, v96, &qword_27CB25628, &qword_21775D560);
    MEMORY[0x28223BE20](v61, v62);
    v78 = v50;
    v79 = v49;
    v64 = sub_2172E4938(sub_21733B9C4, v77, v63);
    sub_21726A630(v113, &v93, &qword_27CB24188, &dword_217758930);
    if (*(&v94 + 1))
    {
      v99[0] = v93;
      v99[1] = v94;
      *&v99[2] = v95;
    }

    else
    {
      v92 = 0;
      v90 = 0u;
      v91 = 0u;
      v73 = *&v96[4];
      if (*&v96[4])
      {
        v74 = *(&v96[3] + 1);
        sub_2172CA838(v49, &v101);
        *&v100 = v74;
        *(&v100 + 1) = v73;
        v75 = swift_allocObject();
        v76 = v101;
        *(v75 + 16) = v100;
        *(v75 + 32) = v76;
        *(v75 + 48) = v102;
        *(v75 + 64) = v103;
        sub_217751DE8();
        sub_2171F0738(&v90, &qword_27CB24188, &dword_217758930);
        *&v90 = v75;
        *(&v91 + 1) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *&v99[2] = &off_2829650B8;
        v99[0] = v90;
        v99[1] = v91;
        if (*(&v94 + 1))
        {
          sub_2171F0738(&v93, &qword_27CB24188, &dword_217758930);
        }
      }

      else
      {
        memset(v99, 0, 40);
      }
    }

    if (*(&v96[0] + 1) == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = *&v96[0];
    }

    if (*(&v96[0] + 1) == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(&v96[0] + 1);
    }

    *&v100 = v64;
    BYTE8(v100) = 0;
    v101 = v99[0];
    v102 = v99[1];
    *&v103 = *&v99[2];
    *(&v103 + 1) = v65;
    *&v104 = v66;
    *(&v104 + 1) = *(&v96[1] + 1);
    *&v105 = *&v96[2];
    *(&v105 + 1) = v97;
    v106 = v98;
    sub_2171FB568(*&v96[0], *(&v96[0] + 1));
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v96, &qword_27CB25628, &qword_21775D560);
  }

  else
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
  }

  sub_21726A630(&v107, v99, &qword_27CB25610, &qword_21775D540);
  v67 = v82;
  if (*(&v99[5] + 1))
  {
    memcpy(v96, v99, 0x68uLL);
  }

  else
  {
    sub_2174AA154();
    if (*(&v99[5] + 1))
    {
      sub_2171F0738(v99, &qword_27CB25610, &qword_21775D540);
    }
  }

  memcpy(v67, v96, 0x68uLL);
  sub_21726A630(v118, v67 + 104, &qword_27CB24290, &unk_21775D550);
  sub_21726A630(&v100, v99, &qword_27CB25608, &unk_21775D530);
  if (*(&v99[5] + 1))
  {
    sub_2171F0738(&v100, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v118, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(&v107, &qword_27CB25610, &qword_21775D540);
    memcpy(v96, v99, 0x68uLL);
  }

  else
  {
    sub_2174AA0D0();
    sub_2171F0738(&v100, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v118, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(&v107, &qword_27CB25610, &qword_21775D540);
    if (*(&v99[5] + 1))
    {
      sub_2171F0738(v99, &qword_27CB25608, &unk_21775D530);
    }
  }

  memcpy((v67 + 232), v96, 0x68uLL);

  sub_2175F6ED8(v88);
  sub_2171F0738(v113, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(&v115, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v119, &qword_27CB24290, &unk_21775D550);
  sub_2171F0738(v121, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v135, &qword_27CB24188, &dword_217758930);
  sub_21733AB9C(v49);
  sub_2171F0738(v120, &qword_27CB2AC10, &unk_217786370);
  sub_2171F0738(&v123, &qword_27CB242A0, &unk_21777EEF0);
  sub_2171F0738(&v129, &qword_27CB242A0, &unk_21777EEF0);
  return sub_2171F0738(v137, &qword_27CB242A0, &unk_21777EEF0);
}

uint64_t sub_2175EF160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v58 = a3;
  sub_21726A630(v3 + 1040, v44, &qword_27CB2ABA8, &qword_217785A90);
  v8 = *(&v44[1] + 1);
  if (*(&v44[1] + 1))
  {
    v9 = *(v3 + 1096);
    v10 = *&v44[2];
    __swift_project_boxed_opaque_existential_1(v44, *(&v44[1] + 1));
    v47[0] = v9;
    (*(v10 + 16))(v50, a2, v47, a1, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v8, v10);
    result = sub_2175F3478(v44);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_2171F0738(v44, &qword_27CB2ABA8, &qword_217785A90);
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50[2] = 1;
    v57 = 0;
  }

  sub_21726A630(v3 + 208, v43, &qword_27CB25638, &unk_21775EA10);
  sub_21726A630(v50, v45, &qword_27CB2ABD8, &qword_217786300);
  if (v45[2] == 1)
  {
    sub_2171F0738(v45, &qword_27CB2ABD8, &qword_217786300);
    memset(v44, 0, 128);
  }

  else
  {
    sub_21726A630(v45, v44, &qword_27CB24290, &unk_21775D550);
    sub_2175F6F2C(v45);
  }

  sub_21726A630(v3 + 520, v45, &qword_27CB25630, &qword_21775D568);
  sub_21726A630(v43, v41, &qword_27CB25610, &qword_21775D540);
  if (v41[11])
  {
    memcpy(v42, v41, 0x68uLL);
  }

  else
  {
    sub_2174AA154();
    if (v41[11])
    {
      sub_2171F0738(v41, &qword_27CB25610, &qword_21775D540);
    }
  }

  memcpy(v47, v42, sizeof(v47));
  sub_21726A630(v44, &v48, &qword_27CB24290, &unk_21775D550);
  sub_21726A630(v45, v41, &qword_27CB25608, &unk_21775D530);
  if (v41[11])
  {
    sub_2171F0738(v45, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v44, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(v43, &qword_27CB25610, &qword_21775D540);
    memcpy(v42, v41, 0x68uLL);
  }

  else
  {
    sub_2174AA0D0();
    sub_2171F0738(v45, &qword_27CB25608, &unk_21775D530);
    sub_2171F0738(v44, &qword_27CB24290, &unk_21775D550);
    sub_2171F0738(v43, &qword_27CB25610, &qword_21775D540);
    if (v41[11])
    {
      sub_2171F0738(v41, &qword_27CB25608, &unk_21775D530);
    }
  }

  memcpy(v49, v42, sizeof(v49));
  v12 = sub_2175EFC58(a2, *(v3 + 1096), a1, v45);
  if (v4)
  {
    sub_2175F6E84(v47);
    return sub_2171F0738(v50, &qword_27CB2ABD8, &qword_217786300);
  }

  else
  {
    v14 = *(v3 + 1096);
    if (qword_280BE62F0 != -1)
    {
      v12 = swift_once();
    }

    v44[0] = xmmword_280BE62F8;
    v44[1] = xmmword_280BE6308;
    MEMORY[0x28223BE20](v12, v13);
    v15 = sub_2173DE19C();
    if (v15)
    {
      sub_2172EBBF4();
    }

    else
    {
      memset(v43, 0, sizeof(v43));
    }

    v17 = *(v5 + 1096);
    if (qword_280BE6270 != -1)
    {
      v15 = swift_once();
    }

    v44[0] = xmmword_280BE6278;
    v44[1] = xmmword_280BE6288;
    MEMORY[0x28223BE20](v15, v16);
    if (sub_2173DE19C())
    {
      sub_2172EBD40();
    }

    else
    {
      memset(v42, 0, sizeof(v42));
    }

    sub_21726A630(&v46, v41, &qword_27CB24290, &unk_21775D550);
    v18 = sub_21726A630(v45, v40, &qword_27CB242A0, &unk_21777EEF0);
    v20 = *(v5 + 1096);
    if (qword_280BE6378 != -1)
    {
      v18 = swift_once();
    }

    v44[0] = xmmword_280BE6380;
    v44[1] = xmmword_280BE6390;
    MEMORY[0x28223BE20](v18, v19);
    v21 = sub_2173DE19C();
    if (v21)
    {
      sub_2172EC0A8();
    }

    else
    {
      memset(v39, 0, sizeof(v39));
    }

    v23 = *(v5 + 1096);
    if (qword_280BE6220 != -1)
    {
      v21 = swift_once();
    }

    v44[0] = xmmword_280BE6228;
    v44[1] = xmmword_280BE6238;
    MEMORY[0x28223BE20](v21, v22);
    v24 = sub_2173DE19C();
    if (v24)
    {
      sub_2172EC1F4();
    }

    else
    {
      memset(v38, 0, sizeof(v38));
    }

    v26 = *(v5 + 1096);
    if (qword_280BE6348 != -1)
    {
      v24 = swift_once();
    }

    v44[0] = xmmword_280BE6350;
    v44[1] = xmmword_280BE6360;
    MEMORY[0x28223BE20](v24, v25);
    v27 = sub_2173DE19C();
    if (v27)
    {
      sub_2172ECA8C();
    }

    else
    {
      memset(v37, 0, sizeof(v37));
    }

    v29 = *(v5 + 1096);
    if (qword_280BEB138 != -1)
    {
      v27 = swift_once();
    }

    v44[0] = xmmword_280BEB140;
    v44[1] = xmmword_280BEB150;
    MEMORY[0x28223BE20](v27, v28);
    v30 = sub_2173DE19C();
    if (v30)
    {
      sub_2172EC48C();
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    v32 = *(v5 + 1096);
    if (qword_280BE6248 != -1)
    {
      v30 = swift_once();
    }

    v44[0] = xmmword_280BE6250;
    v44[1] = xmmword_280BE6260;
    MEMORY[0x28223BE20](v30, v31);
    if (sub_2173DE19C())
    {
      sub_2172EC340();
    }

    else
    {
      memset(v35, 0, sizeof(v35));
    }

    sub_2172ECBD8();
    sub_2175F6ED8(v45);
    sub_2175F6E84(v47);
    sub_2171F0738(v50, &qword_27CB2ABD8, &qword_217786300);
    memcpy(v44, v43, 0x80uLL);
    memcpy(&v44[8], v42, 0x80uLL);
    memcpy(&v44[16], v41, 0x80uLL);
    memcpy(&v44[24], v40, 0x80uLL);
    memcpy(&v44[32], v39, 0x80uLL);
    memcpy(&v44[40], v38, 0x80uLL);
    memcpy(&v44[48], v37, 0x80uLL);
    memcpy(&v44[56], v36, 0x80uLL);
    memcpy(&v44[64], v35, 0x80uLL);
    v33 = *(v5 + 1096);
    v34 = v58;
    memcpy(v58, v44, 0x500uLL);
    v34[160] = v33;
    return sub_217751DE8();
  }
}

uint64_t sub_2175EFC58@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v191 = a3;
  v181 = a4;
  v8 = &v215;
  v208 = sub_217752B68();
  v9 = *(v208 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v208, v11);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v15 = *(v14 - 8);
  v193 = v14;
  v194 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v192 = &v172 - v18;
  v202 = type metadata accessor for CloudRawCurator();
  v19 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202, v20);
  v234 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247B0, &qword_21775A1C0);
  v200 = *(v22 - 8);
  v201 = v22;
  v23 = *(v200 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v206 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v205 = (&v172 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  v30 = *(v29 - 8);
  v210 = v29;
  v211 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v182 = &v172 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v207 = &v172 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v189 = &v172 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v209 = &v172 - v48;
  memset(__dst, 0, 128);
  memset(v232, 0, sizeof(v232));
  if (qword_280BE7FE8 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v49 = xmmword_280BE8000;
    *(v8 + 30) = xmmword_280BE7FF0;
    v222[1] = v49;
    MEMORY[0x28223BE20](v46, v47);
    *(&v172 - 2) = v50;
    v51 = v5;
    v52 = sub_2173DE19C();
    v54 = a2;
    if ((v52 & 1) == 0)
    {
      goto LABEL_60;
    }

    v175 = v5;
    v220 = 0;
    v218 = 0u;
    v219 = 0u;
    v217 = 0;
    v215 = 0u;
    v216 = 0u;
    sub_21726A630(v183 + 16, v221, &qword_27CB24188, &dword_217758930);
    v204 = v34;
    if (!*(&v221[1] + 1))
    {
      v172 = a2;
      sub_2171F0738(v221, &qword_27CB24188, &dword_217758930);
      goto LABEL_19;
    }

    v203 = v9;
    v55 = a1;
    v222[0] = v221[0];
    v222[1] = v221[1];
    *&v222[2] = *&v221[2];
    swift_getKeyPath();
    v56 = sub_2175F1A0C();

    if (qword_280BE4BF0 != -1)
    {
      swift_once();
    }

    v196 = qword_280BE4C00;
    v197 = qword_280BE4BF8;
    v57 = sub_2176324F4(qword_280BE4BF8, qword_280BE4C00, byte_280BE4C08);
    if (v58)
    {
      v59 = v57;
      swift_isUniquelyReferenced_nonNull_native();
      *&v221[0] = v56;
      v60 = v56[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
      sub_217752CB8();
      v61 = *&v221[0];
      v62 = *(*(*&v221[0] + 48) + 24 * v59 + 8);

      v63 = v61[7] + 40 * v59;
      v64 = *v63;
      v198 = *(v63 + 16);
      v199 = v64;
      v65 = *(v63 + 32);
      sub_2172CA7E4();
      sub_217752CD8();
    }

    else
    {
      v65 = 0;
      v198 = 0u;
      v199 = 0u;
      v61 = v56;
    }

    sub_2171F0738(&v218, &qword_27CB24188, &dword_217758930);
    v218 = v199;
    v219 = v198;
    v220 = v65;
    if (qword_280BE7E50 != -1)
    {
      swift_once();
    }

    v195 = qword_280BE7E58;
    v190 = qword_280BE7E60;
    v66 = sub_2176324F4(qword_280BE7E58, qword_280BE7E60, byte_280BE7E68);
    if (v67)
    {
      v68 = v66;
      swift_isUniquelyReferenced_nonNull_native();
      *&v221[0] = v61;
      v69 = v61[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
      sub_217752CB8();
      v61 = *&v221[0];
      v70 = *(*(*&v221[0] + 48) + 24 * v68 + 8);

      v71 = v61[7] + 40 * v68;
      v72 = *v71;
      v198 = *(v71 + 16);
      v199 = v72;
      v73 = *(v71 + 32);
      sub_2172CA7E4();
      sub_217752CD8();
    }

    else
    {
      v73 = 0;
      v198 = 0u;
      v199 = 0u;
    }

    a2 = v55;
    sub_2171F0738(&v215, &qword_27CB24188, &dword_217758930);
    v215 = v199;
    v216 = v198;
    v217 = v73;
    v74 = v203;
    if (v61[2])
    {
      break;
    }

    v172 = v54;
    sub_217283154(v222);

LABEL_19:
    sub_2172EC940();
    v208 = v224;
    v8 = *(v224 + 16);
    v179 = *(&v223 + 1);
    v180 = v223;
    sub_2171FB568(v223, *(&v223 + 1));
    v9 = 0;
    a1 = &qword_27CB24490;
    v34 = &qword_21775A250;
    v190 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if (v9 >= *(v208 + 16))
      {
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v13 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v5 = *(v211 + 72);
      v76 = v209;
      sub_21726A630(v208 + v13 + v5 * v9, v209, &qword_27CB24490, &qword_21775A250);
      v77 = (v76 + v210[9]);
      v78 = *v77;
      a2 = v77[1];
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      v79 = v78 == qword_280BE7E58 && a2 == qword_280BE7E60;
      if (v79 || (sub_217753058() & 1) != 0)
      {
        sub_2171F0738(v209, &qword_27CB24490, &qword_21775A250);
        ++v9;
      }

      else
      {
        sub_21726A594(v209, v204, &qword_27CB24490, &qword_21775A250);
        v80 = v190;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v222[0] = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2172767B8(0, *(v80 + 16) + 1, 1);
          v80 = *&v222[0];
        }

        a2 = *(v80 + 16);
        v82 = *(v80 + 24);
        v83 = a2 + 1;
        if (a2 >= v82 >> 1)
        {
          v203 = a2 + 1;
          sub_2172767B8(v82 > 1, a2 + 1, 1);
          v83 = v203;
          v80 = *&v222[0];
        }

        ++v9;
        *(v80 + 16) = v83;
        v190 = v80;
        sub_21726A594(v204, v80 + v13 + a2 * v5, &qword_27CB24490, &qword_21775A250);
      }
    }

    v84 = *(&v224 + 1);
    v85 = v225;
    v86 = v226;
    v87 = v227;
    v88 = v228;
    v89 = v229;
    sub_21726A630(v230, v214, &qword_27CB24188, &dword_217758930);
    a1 = v179;
    v9 = v180;
    v213[0] = v180;
    v213[1] = v179;
    v213[2] = v190;
    v213[3] = v84;
    v177 = v86;
    v178 = v84;
    v90 = v87;
    v5 = v89;
    v34 = v85;
    v91 = *(&v231 + 1);
    v213[4] = v34;
    v213[5] = v86;
    a2 = v231;
    v213[6] = v90;
    v213[7] = v88;
    v176 = v88;
    v213[8] = v5;
    *&v214[40] = v231;
    v13 = *(v190 + 16);
    v187 = v231;
    v188 = v5;
    v186 = *(&v231 + 1);
    v173 = v90;
    v174 = v34;
    if (v13)
    {
      sub_2171FB568(v180, v179);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v9, a1);
      v212 = MEMORY[0x277D84F90];
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217276778(0, v13, 0);
      v92 = 0;
      v93 = v190;
      v184 = v190 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v185 = v13;
      v209 = v212;
      v8 = v205;
      while (v92 < *(v93 + 16))
      {
        v94 = v184 + *(v211 + 72) * v92;
        v204 = v92;
        v95 = v189;
        sub_21726A630(v94, v189, &qword_27CB24490, &qword_21775A250);
        v96 = v234;
        sub_2175F70D8(v95, v234, type metadata accessor for CloudCurator);
        swift_storeEnumTagMultiPayload();
        sub_2175F70D8(v96, v8, type metadata accessor for CloudRawCurator);
        v97 = v210[10];
        v98 = v95 + v210[9];
        v99 = *(v98 + 8);
        *&v198 = *v98;
        *&v199 = v99;
        LODWORD(v197) = *(v98 + 16);
        v34 = *(v95 + v97 + 8);
        v203 = *(v95 + v97);
        v100 = v210[11];
        memcpy(v222, (v95 + v100), sizeof(v222));
        v101 = *(v95 + v210[12]);
        v102 = *(v95 + v210[13]);
        v103 = *(v95 + v210[14]);
        v195 = *(v95 + v210[15]);
        v196 = v102;
        v104 = v201;
        v105 = v205 + v201[9];
        *v105 = v198;
        *(v105 + 1) = v99;
        v105[16] = v197;
        v8 = v205;
        v106 = v205 + v104[10];
        *v106 = v203;
        *(v106 + 1) = v34;
        memcpy(v8 + v104[11], (v95 + v100), 0x180uLL);
        *(v8 + v104[12]) = v101;
        v107 = v195;
        v9 = v196;
        *(v8 + v104[13]) = v196;
        *(v8 + v104[14]) = v103;
        *(v8 + v104[15]) = v107;
        sub_217751DE8();
        sub_217751DE8();
        sub_21726A630(v222, v221, &qword_27CB25620, &qword_21776A5F0);
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2175F7190(v234, type metadata accessor for CloudRawCurator);
        sub_2171F0738(v95, &qword_27CB24490, &qword_21775A250);
        v212 = v209;
        a2 = *(v209 + 16);
        v108 = *(v209 + 24);
        a1 = (a2 + 1);
        if (a2 >= v108 >> 1)
        {
          sub_217276778(v108 > 1, a2 + 1, 1);
          v209 = v212;
        }

        v109 = v204 + 1;
        v110 = v209;
        *(v209 + 16) = a1;
        sub_21726A594(v8, v110 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * a2, &qword_27CB247B0, &qword_21775A1C0);
        v13 = v185;
        v5 = v188;
        v93 = v190;
        v92 = v109;
        if (v185 == v109)
        {
          v111 = v179;
          v9 = v180;
          v112 = v173;
          v34 = v174;
          v13 = v187;
          v91 = v186;
          goto LABEL_43;
        }
      }

      goto LABEL_104;
    }

    sub_2171FB568(v180, v179);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171FB568(v9, a1);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v209 = MEMORY[0x277D84F90];
    v13 = a2;
    v112 = v90;
    v111 = a1;
LABEL_43:
    a1 = &qword_27CB24188;
    sub_21726A630(v214, &v221[4] + 8, &qword_27CB24188, &dword_217758930);
    *&v221[0] = v9;
    *(&v221[0] + 1) = v111;
    v113 = v209;
    *&v221[1] = v209;
    *(&v221[1] + 1) = v178;
    *&v221[2] = v34;
    *(&v221[2] + 1) = v177;
    *&v221[3] = v112;
    *(&v221[3] + 1) = v176;
    *&v221[4] = v5;
    *&v221[7] = v13;
    *(&v221[7] + 1) = v91;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v213, &qword_27CB242A8, &unk_21775D570);
    *(&v222[4] + 8) = 0u;
    *(&v222[5] + 8) = 0u;
    *(&v222[6] + 1) = 0;
    sub_2171F0738(&v222[4] + 8, &qword_27CB24188, &dword_217758930);
    sub_21726A630(&v218, &v222[4] + 8, &qword_27CB24188, &dword_217758930);
    v114 = v179;
    v9 = v180;
    sub_2171FB568(v180, v179);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v221, &qword_27CB24298, &qword_21777CD60);
    *&v222[0] = v9;
    *(&v222[0] + 1) = v114;
    *&v222[1] = v113;
    *(&v222[1] + 1) = v178;
    *&v222[2] = v34;
    *(&v222[2] + 1) = v177;
    v222[3] = v112;
    *&v222[4] = 0;
    *&v222[7] = v13;
    *(&v222[7] + 1) = v91;
    sub_21733BBDC(v222, __dst, &qword_27CB24290, &unk_21775D550);
    v5 = 0;
    v115 = v208;
    v209 = *(v208 + 16);
    v116 = MEMORY[0x277D84F90];
    v8 = &qword_27CB24490;
    a2 = &qword_21775A250;
    while (v209 != v5)
    {
      if (v5 >= *(v115 + 16))
      {
        goto LABEL_102;
      }

      v9 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v13 = *(v211 + 72);
      v117 = v207;
      sub_21726A630(v115 + v9 + v13 * v5, v207, &qword_27CB24490, &qword_21775A250);
      v118 = v117 + v210[9];
      a1 = *v118;
      v34 = *(v118 + 8);
      if (qword_280BE7E50 != -1)
      {
        swift_once();
      }

      v119 = a1 == qword_280BE7E58 && v34 == qword_280BE7E60;
      if (v119 || (sub_217753058() & 1) != 0)
      {
        sub_21726A594(v207, v182, &qword_27CB24490, &qword_21775A250);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        *&v222[0] = v116;
        if ((v120 & 1) == 0)
        {
          sub_2172767B8(0, *(v116 + 16) + 1, 1);
          v116 = *&v222[0];
        }

        v34 = *(v116 + 16);
        v121 = *(v116 + 24);
        a1 = (v34 + 1);
        if (v34 >= v121 >> 1)
        {
          sub_2172767B8(v121 > 1, v34 + 1, 1);
          v116 = *&v222[0];
        }

        ++v5;
        *(v116 + 16) = a1;
        sub_21726A594(v182, v116 + v9 + v34 * v13, &qword_27CB24490, &qword_21775A250);
        v115 = v208;
      }

      else
      {
        sub_2171F0738(v207, &qword_27CB24490, &qword_21775A250);
        ++v5;
        v115 = v208;
      }
    }

    sub_21726A630(v230, &v221[4] + 8, &qword_27CB24188, &dword_217758930);
    *&v221[0] = v180;
    *(&v221[0] + 1) = v179;
    *&v221[1] = v116;
    *(&v221[1] + 1) = v178;
    *&v221[2] = v174;
    *(&v221[2] + 1) = v177;
    *&v221[3] = v173;
    *(&v221[3] + 1) = v176;
    *&v221[4] = v188;
    *&v221[7] = v187;
    *(&v221[7] + 1) = v186;
    sub_2175EB2B8(&v215, 0, v222);
    sub_2171F0738(v221, &qword_27CB242A8, &unk_21775D570);
    sub_2171F0738(&v215, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(&v218, &qword_27CB24188, &dword_217758930);
    sub_2171F0738(v232, &qword_27CB242A0, &unk_21777EEF0);
    sub_2171F0738(&v223, &qword_27CB242A8, &unk_21775D570);
    v52 = memcpy(v232, v222, sizeof(v232));
    v51 = v175;
LABEL_60:
    if (qword_280BE61F8 != -1)
    {
      v52 = swift_once();
    }

    v222[0] = xmmword_280BE6200;
    v222[1] = xmmword_280BE6210;
    MEMORY[0x28223BE20](v52, v53);
    *(&v172 - 2) = v222;
    v122 = sub_2173DE19C();
    v196 = v51;
    v123 = MEMORY[0x277D84F90];
    v9 = v206;
    if (!v122)
    {
      goto LABEL_74;
    }

    sub_2172EC7F4();
    v8 = v224;
    v5 = *(v224 + 16);
    if (!v5)
    {
      v143 = *(&v223 + 1);
      v142 = v223;
      sub_2171FB568(v223, *(&v223 + 1));
      v211 = MEMORY[0x277D84F90];
LABEL_71:
      v234 = *(&v224 + 1);
      v144 = v225;
      v145 = v226;
      v146 = v227;
      v147 = v228;
      v148 = v229;
      sub_21726A630(v230, &v222[4] + 8, &qword_27CB24188, &dword_217758930);
      *&v222[0] = v142;
      *(&v222[0] + 1) = v143;
      *&v222[1] = v211;
      *(&v222[1] + 1) = v234;
      *&v222[2] = v144;
      *(&v222[2] + 1) = v145;
      *&v222[3] = v146;
      *(&v222[3] + 1) = v147;
      *&v222[4] = v148;
      v222[7] = v231;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(&v223, &qword_27CB25628, &qword_21775D560);
      sub_21726A630(v222, v221, &qword_27CB24298, &qword_21777CD60);
      sub_2172B2EE8();
      v123 = v149;
      v150 = *(v149 + 16);
      if (v150 >= *(v149 + 24) >> 1)
      {
        sub_2172B2EE8();
        v123 = v171;
      }

      sub_2171F0738(v222, &qword_27CB24298, &qword_21777CD60);
      *(v123 + 16) = v150 + 1;
      memcpy((v123 + (v150 << 7) + 32), v221, 0x80uLL);
LABEL_74:
      sub_21726A630(v183 + 104, v221, &qword_27CB24290, &unk_21775D550);
      if (*&v221[1])
      {
        memcpy(v222, v221, 0x80uLL);
        sub_21726A630(v222, v221, &qword_27CB24298, &qword_21777CD60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = *(v123 + 16);
          sub_2172B2EE8();
          v123 = v169;
        }

        v151 = *(v123 + 16);
        if (v151 >= *(v123 + 24) >> 1)
        {
          sub_2172B2EE8();
          v123 = v170;
        }

        sub_2171F0738(v222, &qword_27CB24298, &qword_21777CD60);
        *(v123 + 16) = v151 + 1;
        memcpy((v123 + (v151 << 7) + 32), v221, 0x80uLL);
      }

      else
      {
        sub_2171F0738(v221, &qword_27CB24290, &unk_21775D550);
      }

      v152 = *(v123 + 16);
      if (v152)
      {
        v153 = v123 + 32;
        do
        {
          sub_21726A630(v153, v222, &qword_27CB24298, &qword_21777CD60);
          sub_21726A630(__dst, v221, &qword_27CB24290, &unk_21775D550);
          v154 = *&v221[1];
          sub_2171F0738(v221, &qword_27CB24290, &unk_21775D550);
          if (v154)
          {
            if (__dst[2])
            {
              sub_21726A630(__dst, &v223, &qword_27CB24298, &qword_21777CD60);
              sub_217312AF4(v222, v191, 1, v221);
              sub_2171F0738(&v223, &qword_27CB24298, &qword_21777CD60);
              sub_2171F0738(v222, &qword_27CB24298, &qword_21777CD60);
            }

            else
            {
              sub_2171F0738(v222, &qword_27CB24298, &qword_21777CD60);
              memset(v221, 0, 128);
            }

            sub_21733BBDC(v221, __dst, &qword_27CB24290, &unk_21775D550);
          }

          else
          {
            sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
            memcpy(__dst, v222, 0x80uLL);
          }

          v153 += 128;
          --v152;
        }

        while (v152);
      }

      if (__dst[2])
      {
        sub_21726A630(__dst, v221, &qword_27CB24298, &qword_21777CD60);
        if (__dst[2])
        {
          sub_21726A630(&__dst[9], v222, &qword_27CB24188, &dword_217758930);
          if (*(&v222[1] + 1))
          {
            sub_21765D1E8(&v223);
            sub_217283154(v222);
            goto LABEL_97;
          }

          sub_2171F0738(v222, &qword_27CB24188, &dword_217758930);
        }

        v223 = 0u;
        v224 = 0u;
        v225 = 0;
LABEL_97:
        sub_2175EB2B8(&v223, 0, v222);
        sub_2171F0738(&v223, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v221, &qword_27CB24298, &qword_21777CD60);
      }

      else
      {
        memset(v222, 0, 128);
      }

      sub_21733BBDC(v222, __dst, &qword_27CB24290, &unk_21775D550);
      v155 = v181;
      memcpy(v181, v232, 0x80uLL);
      sub_21726A630(__dst, v155 + 128, &qword_27CB24290, &unk_21775D550);
      return sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
    }

    v190 = *(&v223 + 1);
    v195 = v223;
    sub_2171FB568(v223, *(&v223 + 1));
    v213[0] = v123;
    sub_217276778(0, v5, 0);
    a2 = 0;
    v197 = v8 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
    *&v198 = v5;
    v124 = v213[0];
    *&v199 = v8;
    while (a2 < v8[2])
    {
      v125 = v197 + *(v194 + 72) * a2;
      v211 = v124;
      v126 = v192;
      sub_21726A630(v125, v192, &qword_27CB247C0, &unk_21779AA10);
      v127 = v234;
      sub_2175F70D8(v126, v234, type metadata accessor for CloudRadioShow);
      swift_storeEnumTagMultiPayload();
      sub_2175F70D8(v127, v9, type metadata accessor for CloudRawCurator);
      v128 = v193[10];
      v129 = v126 + v193[9];
      v130 = *(v129 + 8);
      v207 = *v129;
      v208 = v130;
      LODWORD(v205) = *(v129 + 16);
      v131 = *(v126 + v128 + 8);
      v209 = *(v126 + v128);
      v132 = v193[11];
      memcpy(v222, (v126 + v132), sizeof(v222));
      v133 = *(v126 + v193[12]);
      v134 = *(v126 + v193[13]);
      v13 = *(v126 + v193[14]);
      v203 = *(v126 + v193[15]);
      v204 = v134;
      v210 = a2;
      v135 = v201;
      v136 = &v206[v201[9]];
      *v136 = v207;
      *(v136 + 1) = v130;
      v136[16] = v205;
      v9 = v206;
      v137 = &v206[v135[10]];
      *v137 = v209;
      *(v137 + 1) = v131;
      memcpy((v9 + v135[11]), (v126 + v132), 0x180uLL);
      *(v9 + v135[12]) = v133;
      v138 = v203;
      v34 = v204;
      *(v9 + v135[13]) = v204;
      *(v9 + v135[14]) = v13;
      *(v9 + v135[15]) = v138;
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v222, v221, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2175F7190(v234, type metadata accessor for CloudRawCurator);
      v139 = v126;
      v124 = v211;
      sub_2171F0738(v139, &qword_27CB247C0, &unk_21779AA10);
      v213[0] = v124;
      v141 = *(v124 + 16);
      v140 = *(v124 + 24);
      a1 = (v141 + 1);
      if (v141 >= v140 >> 1)
      {
        sub_217276778(v140 > 1, v141 + 1, 1);
        v124 = v213[0];
      }

      a2 = v210 + 1;
      *(v124 + 16) = a1;
      sub_21726A594(v9, v124 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v141, &qword_27CB247B0, &qword_21775A1C0);
      v5 = v198;
      v8 = v199;
      if (v198 == a2)
      {
        v142 = v195;
        v143 = v190;
        v211 = v124;
        goto LABEL_71;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v46 = swift_once();
  }

  sub_21726A630(a2, v221, &qword_27CB2ABC0, &qword_217785AC8);
  v188 = v13;
  if (*(&v221[1] + 1))
  {
    __swift_project_boxed_opaque_existential_1(v221, *(&v221[1] + 1));
    v75 = sub_2177532D8();
    __swift_destroy_boxed_opaque_existential_1(v221);
  }

  else
  {
    sub_2171F0738(v221, &qword_27CB2ABC0, &qword_217785AC8);
    v75 = MEMORY[0x277D84F90];
  }

  v213[0] = v75;
  v157 = static MusicCatalogSearchResponse.relativeCodingPathForRawResponseAppleCuratorResultsIncrementalLoader.getter();
  sub_217543F4C(v157);
  *&v221[0] = 0;
  *(&v221[0] + 1) = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD00000000000006ELL, 0x80000002177B28C0);
  *&v223 = 34;
  *(&v223 + 1) = 0xE100000000000000;
  MEMORY[0x21CEA23B0](v197, v196);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v223, *(&v223 + 1));

  MEMORY[0x21CEA23B0](544370464, 0xE400000000000000);
  *&v223 = 34;
  *(&v223 + 1) = 0xE100000000000000;
  MEMORY[0x21CEA23B0](v195, v190);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v223, *(&v223 + 1));

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  *&v223 = 0;
  *(&v223 + 1) = 0xE000000000000000;
  sub_217752AA8();

  *&v223 = 0xD00000000000001DLL;
  *(&v223 + 1) = 0x80000002177B2930;
  sub_2172CA7E4();
  v158 = sub_217751DA8();
  v160 = v159;

  MEMORY[0x21CEA23B0](v158, v160);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v223, *(&v223 + 1));

  v161 = v188;
  sub_217752B08();
  v162 = sub_217752B78();
  swift_allocError();
  v164 = v163;
  v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v164[3] = &type metadata for AnyMusicItemCollectionIncrementalLoader;
  v166 = swift_allocObject();
  *v164 = v166;
  sub_2172830F8(v222, v166 + 16);
  v167 = v208;
  (*(v74 + 16))(v164 + v165, v161, v208);
  (*(*(v162 - 8) + 104))(v164, *MEMORY[0x277D841A8], v162);
  swift_willThrow();
  (*(v74 + 8))(v161, v167);
  sub_217283154(v222);
  sub_2171F0738(&v215, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(&v218, &qword_27CB24188, &dword_217758930);
  sub_2171F0738(v232, &qword_27CB242A0, &unk_21777EEF0);
  return sub_2171F0738(__dst, &qword_27CB24290, &unk_21775D550);
}

void *sub_2175F1A0C()
{
  sub_2172CA7E4();
  v108 = sub_217751DC8();
  sub_2171FF30C(v0, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if (swift_dynamicCast())
  {
    v1 = *&__dst[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A2C8, &qword_21777F1E8);
    v2 = sub_217751DC8();
    v109 = v1 + 32;
    v110 = *(v1 + 16);
    v111 = v1;
    sub_217751DE8();
    for (i = 0; i != v110; i = v112)
    {
      if (i >= *(v111 + 16))
      {
        goto LABEL_81;
      }

      sub_2172830F8(v109 + 40 * i, v127);
      sub_2171FF30C(v127, v125);
      sub_2171FF30C(v125, v123);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_88;
      }

      v112 = i + 1;
      memcpy(__dst, __src, sizeof(__dst));
      swift_getAtKeyPath();
      v4 = *&__src[0] + 64;
      v5 = 1 << *(*&__src[0] + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(*&__src[0] + 64);
      v8 = (v5 + 63) >> 6;
      v118 = *&__src[0];
      sub_217751DE8();
      v9 = 0;
      v113 = v4;
      v115 = v8;
      if (v7)
      {
        while (1)
        {
LABEL_14:
          v11 = __clz(__rbit64(v7)) | (v9 << 6);
          v12 = *(v118 + 48) + 24 * v11;
          v14 = *v12;
          v13 = *(v12 + 8);
          v15 = *(v12 + 16);
          sub_2175F6F80(*(v118 + 56) + 80 * v11, &__src[1] + 8);
          *&__src[0] = v14;
          *(&__src[0] + 1) = v13;
          LOBYTE(__src[1]) = v15;
          if (*(v2 + 16))
          {
            sub_217751DE8();
            v16 = sub_2176324F4(v14, v13, v15);
            v17 = MEMORY[0x277D84F90];
            if ((v18 & 1) == 0)
            {
              goto LABEL_19;
            }

            v17 = *(*(v2 + 56) + 8 * v16);
          }

          else
          {
            v17 = MEMORY[0x277D84F90];
          }

          sub_217751DE8();
LABEL_19:
          sub_2172830F8(v127, v123);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = *(v17 + 16);
            sub_2172B2028();
            v17 = v39;
          }

          v19 = *(v17 + 16);
          if (v19 >= *(v17 + 24) >> 1)
          {
            sub_2172B2028();
            v17 = v40;
          }

          *(v17 + 16) = v19 + 1;
          v119 = v17;
          v20 = v17 + 40 * v19;
          v21 = v123[0];
          v22 = v123[1];
          *(v20 + 64) = v124;
          *(v20 + 32) = v21;
          *(v20 + 48) = v22;
          swift_isUniquelyReferenced_nonNull_native();
          *&v123[0] = v2;
          v23 = v14;
          v24 = v15;
          v25 = sub_2176324F4(v14, v13, v15);
          if (__OFADD__(*(v2 + 16), (v26 & 1) == 0))
          {
            goto LABEL_77;
          }

          v27 = v25;
          v28 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABF8, &qword_217786350);
          if (sub_217752CB8())
          {
            v29 = sub_2176324F4(v23, v13, v24);
            if ((v28 & 1) != (v30 & 1))
            {
              goto LABEL_87;
            }

            v27 = v29;
          }

          v31 = *&v123[0];
          if (v28)
          {
            v32 = *(*&v123[0] + 56);
            v33 = *(v32 + 8 * v27);
            *(v32 + 8 * v27) = v119;

            v2 = v31;
          }

          else
          {
            *(*&v123[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
            v34 = v31[6] + 24 * v27;
            *v34 = v23;
            *(v34 + 8) = v13;
            *(v34 + 16) = v24;
            *(v31[7] + 8 * v27) = v119;
            v35 = v31[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_78;
            }

            v2 = v31;
            v31[2] = v37;
            sub_217751DE8();
          }

          v7 &= v7 - 1;
          sub_2171F0738(__src, &qword_27CB2AC00, &unk_217786358);
          v4 = v113;
          v8 = v115;
          if (!v7)
          {
            goto LABEL_10;
          }
        }
      }

      while (1)
      {
LABEL_10:
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
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

        if (v10 >= v8)
        {
          break;
        }

        v7 = *(v4 + 8 * v10);
        ++v9;
        if (v7)
        {
          v9 = v10;
          goto LABEL_14;
        }
      }

      sub_2175F6FDC(__dst);
      __swift_destroy_boxed_opaque_existential_1(v125);

      sub_217283154(v127);
    }

    swift_bridgeObjectRelease_n();

    v63 = v2 + 64;
    v64 = 1 << *(v2 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v2 + 64);
    v67 = (v64 + 63) >> 6;
    v68 = v2;
    sub_217751DE8();
    v69 = 0;
    v114 = v63;
    v117 = v67;
    if (!v66)
    {
      while (1)
      {
LABEL_51:
        v70 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_80;
        }

        if (v70 >= v67)
        {
          break;
        }

        v66 = *(v63 + 8 * v70);
        ++v69;
        if (v66)
        {
          v69 = v70;
          goto LABEL_55;
        }
      }

      return v108;
    }

    while (1)
    {
LABEL_55:
      v71 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
      v72 = v71 | (v69 << 6);
      v73 = *(v68 + 48) + 24 * v72;
      v75 = *v73;
      v74 = *(v73 + 8);
      v76 = *(v73 + 16);
      v77 = *(*(v68 + 56) + 8 * v72);
      v121 = *v73;
      if (*(v77 + 16) == 1)
      {
        sub_2172830F8(v77 + 32, __src);
        swift_bridgeObjectRetain_n();
        sub_217751DE8();
        swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v108;
        v78 = v75;
        v79 = v76;
        v80 = sub_2176324F4(v78, v74, v76);
        if (__OFADD__(*(v108 + 16), (v81 & 1) == 0))
        {
          goto LABEL_83;
        }

        v82 = v80;
        v83 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
        if (sub_217752CB8())
        {
          v84 = sub_2176324F4(v121, v74, v79);
          if ((v83 & 1) != (v85 & 1))
          {
            goto LABEL_87;
          }

          v82 = v84;
        }

        v86 = *&__dst[0];
        v108 = *&__dst[0];
        if (v83)
        {
          goto LABEL_68;
        }

        *(*&__dst[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v96 = v86[6] + 24 * v82;
        *v96 = v121;
        *(v96 + 8) = v74;
        *(v96 + 16) = v79;
        v97 = v86[7] + 40 * v82;
        v98 = __src[0];
        v99 = __src[1];
        *(v97 + 32) = *&__src[2];
        *v97 = v98;
        *(v97 + 16) = v99;
        v100 = v86[2];
        v36 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v36)
        {
          goto LABEL_85;
        }

        v86[2] = v101;
      }

      else
      {
        __src[0] = 0uLL;
        *&__src[1] = v77;
        *(&__src[1] + 1) = &type metadata for MusicItemCollectionCombinationIncrementalLoader;
        *&__src[2] = &off_282971898;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v108;
        v87 = v75;
        v88 = v76;
        v89 = sub_2176324F4(v87, v74, v76);
        if (__OFADD__(*(v108 + 16), (v90 & 1) == 0))
        {
          goto LABEL_84;
        }

        v82 = v89;
        v91 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABE0, &qword_217786338);
        if (sub_217752CB8())
        {
          v92 = v74;
          v93 = sub_2176324F4(v121, v74, v88);
          if ((v91 & 1) != (v94 & 1))
          {
            goto LABEL_87;
          }

          v82 = v93;
        }

        else
        {
          v92 = v74;
        }

        v95 = *&__dst[0];
        v108 = *&__dst[0];
        if (v91)
        {
LABEL_68:
          sub_2175F7030(__src, *(*&__dst[0] + 56) + 40 * v82);

          goto LABEL_73;
        }

        *(*&__dst[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v102 = v95[6] + 24 * v82;
        *v102 = v121;
        *(v102 + 8) = v92;
        *(v102 + 16) = v88;
        v103 = v95[7] + 40 * v82;
        v104 = __src[0];
        v105 = __src[1];
        *(v103 + 32) = *&__src[2];
        *v103 = v104;
        *(v103 + 16) = v105;
        v106 = v95[2];
        v36 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v36)
        {
          goto LABEL_86;
        }

        v95[2] = v107;
      }

LABEL_73:

      v63 = v114;
      v67 = v117;
      if (!v66)
      {
        goto LABEL_51;
      }
    }
  }

  sub_2171FF30C(v0, v127);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_90;
  }

  memcpy(__src, __dst, 0x50uLL);
  swift_getAtKeyPath();
  v41 = v127[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ABF0, &unk_217786340);
  v42 = sub_217752D48();
  v43 = 0;
  v44 = *(v41 + 64);
  v120 = v42;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v44;
  v48 = (v45 + 63) >> 6;
  v116 = v42 + 64;
  if ((v46 & v44) != 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  v50 = v43;
  while (1)
  {
    v43 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_79;
    }

    if (v43 >= v48)
    {
      break;
    }

    v51 = *(v41 + 64 + 8 * v43);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v47 = (v51 - 1) & v51;
      while (2)
      {
        v52 = v49 | (v43 << 6);
        v53 = *(v41 + 48) + 24 * v52;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        sub_2175F6F80(*(v41 + 56) + 80 * v52, __dst);
        v57 = swift_allocObject();
        memcpy((v57 + 16), __dst, 0x50uLL);
        *(v116 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v58 = v120[6] + 24 * v52;
        *v58 = v54;
        *(v58 + 8) = v55;
        *(v58 + 16) = v56;
        v59 = (v120[7] + 40 * v52);
        *v59 = v57;
        v59[3] = &type metadata for MusicCatalogSearchIncrementalLoader;
        v59[4] = &protocol witness table for MusicCatalogSearchIncrementalLoader;
        v60 = v120[2];
        v36 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (!v36)
        {
          v120[2] = v61;
          sub_217751DE8();
          if (!v47)
          {
            goto LABEL_39;
          }

LABEL_38:
          v49 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          continue;
        }

        break;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      sub_217753178();
      __break(1u);
LABEL_88:
      memset(__src, 0, 80);
      sub_2171F0738(__src, &qword_27CB2ABE8, &unk_217797100);
      *&__src[0] = 0;
      *(&__src[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B18C0);
      MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177B2950);
      MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177B18A0);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000092, 0x80000002177B18F0);
      while (1)
      {
        sub_217752D08();
        __break(1u);
LABEL_90:
        memset(__dst, 0, sizeof(__dst));
        sub_2171F0738(__dst, &qword_27CB2ABE8, &unk_217797100);
        *&__src[0] = 0;
        *(&__src[0] + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD00000000000002CLL, 0x80000002177B1870);
        MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177B2950);
        MEMORY[0x21CEA23B0](0xD000000000000019, 0x80000002177B18A0);
        sub_217752C78();
        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      }
    }
  }

  sub_2175F6FDC(__src);

  return v120;
}