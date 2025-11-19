uint64_t sub_2174F4CFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return StationPropertyProvider.subscript.setter(v5);
}

uint64_t StationPropertyProvider.subscript.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B30, &qword_217770B68);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AF480);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    goto LABEL_28;
  }

  v2 = qword_280BE67D8;
  swift_retain_n();
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_3_59();
  }

  OUTLINED_FUNCTION_139_7(qword_280C020F8);
  OUTLINED_FUNCTION_5_4();

  if (v2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_79_1();
    sub_217351C74();
  }

  else
  {
    v3 = qword_280BE6798;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_2_71();
    }

    OUTLINED_FUNCTION_139_7(qword_280C020D0);
    OUTLINED_FUNCTION_5_4();

    if (v3)
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_79_1();
      sub_217351C78();
    }

    else
    {
      v4 = qword_280BE6808;

      if (v4 != -1)
      {
        OUTLINED_FUNCTION_7_44();
      }

      OUTLINED_FUNCTION_139_7(qword_280C02118);
      OUTLINED_FUNCTION_5_4();

      if (v4)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_79_1();
        sub_217351C9C();
      }

      else
      {
        v5 = qword_280BE67B8;

        if (v5 != -1)
        {
          OUTLINED_FUNCTION_6_48();
        }

        OUTLINED_FUNCTION_139_7(qword_280C020E0);
        OUTLINED_FUNCTION_5_4();

        if (v5)
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_79_1();
          sub_217351C94();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
          swift_initStackObject();
          v6 = OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_139_7(v6);
          OUTLINED_FUNCTION_5_4();

          v7 = qword_280BE67D0;

          if (v7 != -1)
          {
            OUTLINED_FUNCTION_5_50();
          }

          OUTLINED_FUNCTION_139_7(qword_280C020F0);
          OUTLINED_FUNCTION_5_4();

          if (v7)
          {
            swift_getKeyPath();
            OUTLINED_FUNCTION_79_1();
            sub_217351CC0();
          }

          else
          {
            v8 = qword_27CB23B00;

            if (v8 != -1)
            {
              OUTLINED_FUNCTION_4_64();
            }

            OUTLINED_FUNCTION_139_7(qword_27CB8A238);
            OUTLINED_FUNCTION_5_4();

            if ((v8 & 1) == 0)
            {
              while (1)
              {
                sub_217752AA8();
                MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
                type metadata accessor for AnyMusicProperty();
                sub_217752C78();
                MEMORY[0x21CEA23B0](46, 0xE100000000000000);
LABEL_28:
                OUTLINED_FUNCTION_58_1();
                __break(1u);
              }
            }

            swift_getKeyPath();
            OUTLINED_FUNCTION_79_1();
            sub_217351CBC();
          }
        }
      }
    }
  }

  return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

void (*StationPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  StationPropertyProvider.subscript.getter();
  return sub_2174F51DC;
}

void sub_2174F51DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    StationPropertyProvider.subscript.setter(v2 + 32);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    StationPropertyProvider.subscript.setter(v2);
  }

  free(v2);
}

void StationPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B38, &unk_217770C68);
  OUTLINED_FUNCTION_45_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_63_15();
  v13 = type metadata accessor for StationPropertyProvider();
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28068, &qword_21776C030);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    OUTLINED_FUNCTION_64_18();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002CLL, 0x80000002177AF4B0);
    v50[0] = v6;
    v45 = *(v7 + 216);
    type metadata accessor for PartialMusicAsyncProperty();
    sub_217753018();
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_62_14();
    v46 = 145;
    goto LABEL_47;
  }

  v1 = v22;
  sub_2171FF30C(v4, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v13);
    sub_2171F0738(v0, &qword_27CB28B38, &unk_217770C68);
    OUTLINED_FUNCTION_64_18();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AF4E0);
    sub_217752C78();
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_62_14();
    v46 = 148;
    goto LABEL_47;
  }

  __swift_storeEnumTagSinglePayload(v0, 0, 1, v13);
  sub_2174F8388(v0, v20, type metadata accessor for StationPropertyProvider);
  v23 = qword_280BE67D8;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_3_59();
  }

  OUTLINED_FUNCTION_174(qword_280C020F8);
  OUTLINED_FUNCTION_55_16();

  if (v23)
  {

    v24 = *(v20 + v13[8]);
    sub_217751DE8();
    OUTLINED_FUNCTION_0_67();
    v25 = v13[8];
LABEL_11:
    v27 = *(v2 + v25);
    if (!v24)
    {
      v24 = sub_217751DE8();
    }

    *(v2 + v25) = v24;
    goto LABEL_14;
  }

  v26 = qword_280BE6798;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_2_71();
  }

  OUTLINED_FUNCTION_174(qword_280C020D0);
  OUTLINED_FUNCTION_55_16();

  if (v26)
  {

    v24 = *(v20 + v13[10]);
    sub_217751DE8();
    OUTLINED_FUNCTION_0_67();
    v25 = v13[10];
    goto LABEL_11;
  }

  v28 = qword_280BE6808;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_7_44();
  }

  OUTLINED_FUNCTION_174(qword_280C02118);
  OUTLINED_FUNCTION_55_16();

  if (v28)
  {

    OUTLINED_FUNCTION_65_16((v20 + v13[21]));
    OUTLINED_FUNCTION_0_67();
    if (v6 == 1)
    {
      OUTLINED_FUNCTION_65_16((v2 + v13[21]));
    }

    v29 = (v2 + v13[21]);
    v30 = v29[2];
    v31 = v29[3];
    sub_217283940(*v29, v29[1]);
    *v29 = v28;
    v29[1] = v6;
    v29[2] = v21;
    v29[3] = v1;
  }

  else
  {
    v32 = qword_280BE67B8;

    if (v32 != -1)
    {
      OUTLINED_FUNCTION_6_48();
    }

    OUTLINED_FUNCTION_174(qword_280C020E0);
    OUTLINED_FUNCTION_55_16();

    if (v32)
    {

      v33 = (v20 + v13[22]);
      v35 = *v33;
      v34 = v33[1];
      sub_217751DE8();
      OUTLINED_FUNCTION_0_67();
      v36 = (v2 + v13[22]);
      if (v34)
      {
        v37 = v36[1];
      }

      else
      {
        v35 = *v36;
        v40 = v36[1];
        v34 = sub_217751DE8();
      }

      *v36 = v35;
      v36[1] = v34;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
      swift_initStackObject();
      v38 = OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_174(v38);
      OUTLINED_FUNCTION_55_16();

      v39 = qword_280BE67D0;

      if (v39 != -1)
      {
        OUTLINED_FUNCTION_5_50();
      }

      OUTLINED_FUNCTION_174(qword_280C020F0);
      OUTLINED_FUNCTION_55_16();

      if (v39)
      {

        sub_21726A630(v20 + v13[24], v50, &qword_27CB24230, &unk_21775E9D0);
        OUTLINED_FUNCTION_0_67();
        if (v50[2])
        {
          memcpy(v51, v50, 0x80uLL);
        }

        else
        {
          sub_21726A630(v2 + v13[24], v51, &qword_27CB24230, &unk_21775E9D0);
          if (v50[2])
          {
            sub_2171F0738(v50, &qword_27CB24230, &unk_21775E9D0);
          }
        }

        v42 = v13[24];
        v43 = &qword_27CB24230;
        v44 = &unk_21775E9D0;
      }

      else
      {
        v41 = qword_27CB23B00;

        if (v41 != -1)
        {
          OUTLINED_FUNCTION_4_64();
        }

        OUTLINED_FUNCTION_174(qword_27CB8A238);
        OUTLINED_FUNCTION_55_16();

        if ((v41 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_64_18();
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AF510);
            v50[0] = v1;
            sub_217752C78();
            OUTLINED_FUNCTION_78_11();
            OUTLINED_FUNCTION_62_14();
            v46 = 170;
LABEL_47:
            v50[0] = v46;
            OUTLINED_FUNCTION_58_1();
            __break(1u);
          }
        }

        sub_21726A630(v20 + v13[25], v50, &unk_27CB28A60, &qword_217770B60);
        OUTLINED_FUNCTION_0_67();
        if (v50[11])
        {
          memcpy(v51, v50, 0x68uLL);
        }

        else
        {
          sub_21726A630(v2 + v13[25], v51, &unk_27CB28A60, &qword_217770B60);
          if (v50[11])
          {
            sub_2171F0738(v50, &unk_27CB28A60, &qword_217770B60);
          }
        }

        v42 = v13[25];
        v43 = &unk_27CB28A60;
        v44 = &qword_217770B60;
      }

      sub_21733BBDC(v51, v2 + v42, v43, v44);
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174F59AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217770B50;
  if (qword_280BE6758 != -1)
  {
    OUTLINED_FUNCTION_37_22();
  }

  *(v0 + 32) = qword_280C02098;
  v1 = qword_280BE6760;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_36_22();
  }

  *(v0 + 40) = qword_280C020A0;
  v2 = qword_280BE6818;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_34_22();
  }

  *(v0 + 48) = qword_280C02128;
  v3 = qword_280BE6750;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_32_24();
  }

  *(v0 + 56) = qword_280C02090;
  v4 = qword_280BE67D8;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_3_59();
  }

  *(v0 + 64) = qword_280C020F8;
  v5 = qword_280BE6800;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  *(v0 + 72) = qword_280C02110;
  v6 = qword_280BE6798;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_71();
  }

  *(v0 + 80) = qword_280C020D0;
  v7 = qword_280BE6810;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_29_27();
  }

  *(v0 + 88) = qword_280C02120;
  v8 = qword_280BE6768;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_28_28();
  }

  *(v0 + 96) = qword_280C020A8;
  v9 = qword_280BE6770;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_45_21();
  }

  *(v0 + 104) = qword_280C020B0;
  v10 = qword_280BE67E0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_44_18();
  }

  *(v0 + 112) = qword_280C02100;
  v11 = qword_280BE6778;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  *(v0 + 120) = qword_280C020B8;
  v12 = qword_280BE67F0;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_42_19();
  }

  *(v0 + 128) = qword_280C02108;
  v13 = qword_280BE6790;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_41_19();
  }

  *(v0 + 136) = qword_280C020C8;
  v14 = qword_280BE67A8;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_40_21();
  }

  *(v0 + 144) = qword_280C020D8;
  v15 = qword_280BE67C8;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_39_16();
  }

  *(v0 + 152) = qword_280C020E8;
  v16 = qword_280BE6780;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_38_19();
  }

  *(v0 + 160) = qword_280C020C0;
  v17 = qword_280BE6808;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_7_44();
  }

  *(v0 + 168) = qword_280C02118;
  v18 = qword_280BE67B8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_6_48();
  }

  *(v0 + 176) = qword_280C020E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25478, &unk_217770B70);
  swift_allocObject();
  *(v0 + 184) = OUTLINED_FUNCTION_54_0();
  v19 = qword_280BE67D0;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_5_50();
  }

  *(v0 + 192) = qword_280C020F0;
  v20 = qword_27CB23B00;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_4_64();
  }

  *(v0 + 200) = qword_27CB8A238;
  qword_280C01FC0 = v0;
}

uint64_t StationPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 104));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.identifierSet.getter()
{
  v1 = OUTLINED_FUNCTION_59_11();
  memcpy(__dst, (v0 + *(v1 + 108)), 0x161uLL);
  v2 = OUTLINED_FUNCTION_234_1();
  memcpy(v2, v3, 0x161uLL);
  return sub_217269EF4(__dst, &v5);
}

void *StationPropertyProvider.identifierSet.setter()
{
  OUTLINED_FUNCTION_8_20();
  v0 = type metadata accessor for StationPropertyProvider();
  v1 = *(v0 + 108);
  v9 = OUTLINED_FUNCTION_233(v0, v2, v3, v4, v5, v6, v7, v8, v14, v15[0]);
  memcpy(v9, v10, 0x161uLL);
  sub_217269F50(v15);
  v11 = OUTLINED_FUNCTION_232_1();
  return memcpy(v11, v12, 0x161uLL);
}

uint64_t StationPropertyProvider.identifierSet.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 108);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_11() + 112));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 112));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t StationPropertyProvider.type.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 112);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.href.getter()
{
  v0 = type metadata accessor for StationPropertyProvider();
  OUTLINED_FUNCTION_97(*(v0 + 116));
  return OUTLINED_FUNCTION_93();
}

uint64_t StationPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_168_0();
  v5 = type metadata accessor for StationPropertyProvider();
  result = OUTLINED_FUNCTION_193_3(*(v5 + 116));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t StationPropertyProvider.href.modify()
{
  OUTLINED_FUNCTION_8_20();
  v0 = *(type metadata accessor for StationPropertyProvider() + 116);
  return OUTLINED_FUNCTION_51();
}

uint64_t StationPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 120));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 124));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 128));

  return sub_217751DE8();
}

uint64_t StationPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for StationPropertyProvider() + 132));

  return sub_217751DE8();
}

void static StationPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = v5;
  v434 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v434);
  v431 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_1();
  v429 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_6_1();
  v428 = v19 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v432 = &v426 - v23;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v24 = OUTLINED_FUNCTION_43(v433);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_6_1();
  v430 = v28 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v435 = &v426 - v32;
  v33 = type metadata accessor for Station._AirTime();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v426 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B40, &qword_217770C78);
  OUTLINED_FUNCTION_45_0(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v51, v52);
  OUTLINED_FUNCTION_63_15();
  v54 = *(v53 + 56);
  OUTLINED_FUNCTION_80_3();
  sub_21726A630(v55, v56, v57, &unk_21775D480);
  v436 = v4;
  sub_21726A630(v4, v0 + v54, &qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_26_28(v0);
  if (v74)
  {
    OUTLINED_FUNCTION_26_28(v0 + v54);
    if (v74)
    {
      sub_2171F0738(v0, &qword_27CB255C0, &unk_21775D480);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_21726A630(v0, v47, &qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_26_28(v0 + v54);
  if (v74)
  {
    OUTLINED_FUNCTION_23_32();
    sub_2174F83E4();
LABEL_14:
    v75 = &qword_27CB28B40;
    v76 = &qword_217770C78;
LABEL_15:
    v77 = v0;
LABEL_26:
    sub_2171F0738(v77, v75, v76);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_9_39();
  sub_2174F8388(v0 + v54, v40, v78);
  v79 = sub_2177517B8();
  if ((v79 & 1) == 0)
  {
    sub_2174F83E4();
    sub_2174F83E4();
    v75 = &qword_27CB255C0;
    v76 = &unk_21775D480;
    goto LABEL_15;
  }

  v80 = *(v33 + 20);
  v81 = sub_2177517B8();
  sub_2174F83E4();
  sub_2174F83E4();
  sub_2171F0738(v0, &qword_27CB255C0, &unk_21775D480);
  if ((v81 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v58 = type metadata accessor for StationPropertyProvider();
  v59 = v58[5];
  v60 = OUTLINED_FUNCTION_67_14();
  OUTLINED_FUNCTION_80_12(v60);
  v61 = v58[5];
  v62 = OUTLINED_FUNCTION_68_15();
  v63 = v436;
  OUTLINED_FUNCTION_105_10(v62);
  v64 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_80_12(v64);
  OUTLINED_FUNCTION_105_10(v455);
  OUTLINED_FUNCTION_80_12(v456);
  OUTLINED_FUNCTION_104(v456);
  if (v74)
  {
    v65 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v65);
    v66 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v66);
    if (!v74)
    {
      v95 = OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_157(v95, &v449);
      v96 = OUTLINED_FUNCTION_68_15();
      v97 = &v449;
LABEL_24:
      OUTLINED_FUNCTION_157(v96, v97);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_18_32();
    memcpy(v67, v68, 0x221uLL);
    v69 = OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_157(v69, v447);
    v70 = OUTLINED_FUNCTION_68_15();
    OUTLINED_FUNCTION_157(v70, v447);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v71, v72, v73);
  }

  else
  {
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_18_32();
    memcpy(v82, v83, 0x221uLL);
    OUTLINED_FUNCTION_18_32();
    memcpy(v84, v85, 0x221uLL);
    v86 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v86);
    v87 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v87);
    if (v88)
    {
      OUTLINED_FUNCTION_18_32();
      memcpy(v89, v90, 0x221uLL);
      v91 = OUTLINED_FUNCTION_67_14();
      OUTLINED_FUNCTION_157(v91, v443);
      v92 = OUTLINED_FUNCTION_68_15();
      OUTLINED_FUNCTION_157(v92, v443);
      v93 = OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_157(v93, v443);
      v94 = v444;
LABEL_22:
      sub_217284084(v94);
LABEL_25:
      OUTLINED_FUNCTION_17_30();
      OUTLINED_FUNCTION_18_32();
      memcpy(v98, v99, 0x449uLL);
      v77 = OUTLINED_FUNCTION_17_30();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_223_2(v444);
    v100 = OUTLINED_FUNCTION_67_14();
    OUTLINED_FUNCTION_194_4(v100, v443);
    v101 = OUTLINED_FUNCTION_68_15();
    OUTLINED_FUNCTION_194_4(v101, v443);
    v102 = OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_194_4(v102, v443);
    v103 = static Artwork.== infix(_:_:)(v447, v444);
    memcpy(v442, v444, 0x221uLL);
    sub_217284084(v442);
    memcpy(v443, v447, 0x221uLL);
    sub_217284084(v443);
    OUTLINED_FUNCTION_18_32();
    memcpy(v104, v105, 0x221uLL);
    OUTLINED_FUNCTION_149_0();
    sub_2171F0738(v106, v107, v108);
    if ((v103 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v109 = v58[6];
  v110 = *(v6 + v109);
  v111 = *(v63 + v109);
  if (v110 == 2)
  {
    if (v111 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v111 == 2 || ((v111 ^ v110) & 1) != 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_99_11(v58[7]);
  if (v115)
  {
    if (!v112)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v113 != *v114)
    {
      LOBYTE(v112) = 1;
    }

    if (v112)
    {
      goto LABEL_27;
    }
  }

  v116 = v58[8];
  v117 = *(v63 + v116);
  if (*(v6 + v116))
  {
    if (!v117)
    {
      goto LABEL_27;
    }

    v118 = *(v63 + v116);
    sub_217751DE8();
    sub_217262A00();
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v117)
  {
    goto LABEL_27;
  }

  v121 = (v6 + v58[9]);
  v122 = v121[1];
  v445[2] = v121[2];
  v123 = v121[2];
  v445[3] = v121[3];
  v124 = v121[1];
  v445[0] = *v121;
  v445[1] = v124;
  v125 = (v63 + v58[9]);
  v126 = v125[2];
  v446[3] = v125[3];
  v127 = v125[1];
  v446[2] = v125[2];
  v128 = v125[1];
  v446[0] = *v125;
  v446[1] = v128;
  v443[0] = v122;
  v443[1] = v123;
  v443[2] = v121[3];
  v129 = v445[0];
  v131 = *(&v446[0] + 1);
  v130 = *&v446[0];
  v442[0] = v127;
  v442[1] = v126;
  v442[2] = v125[3];
  if (*(&v445[0] + 1) == 1)
  {
    if (*(&v446[0] + 1) == 1)
    {
      *&v453 = *&v445[0];
      *(&v453 + 1) = 1;
      v132 = v121[2];
      v454[0] = v121[1];
      v454[1] = v132;
      v133 = v121[3];
      OUTLINED_FUNCTION_87_13();
      *(v134 + 255) = v135;
      OUTLINED_FUNCTION_25_35(v445);
      OUTLINED_FUNCTION_25_35(v446);
      OUTLINED_FUNCTION_19_25();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v136, v137, v138);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v151, v152, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v153, v154, &qword_27CB24B70, &unk_217759460);
LABEL_51:
    v453 = v129;
    v454[0] = v443[0];
    v454[1] = v443[1];
    OUTLINED_FUNCTION_87_13();
    *(v155 + 255) = v156;
    *&v454[3] = v130;
    *(&v454[3] + 1) = v131;
    v454[4] = v442[0];
    v454[5] = v442[1];
    v454[6] = v442[2];
    goto LABEL_52;
  }

  v453 = v445[0];
  v139 = v121[2];
  v454[0] = v121[1];
  v454[1] = v139;
  v140 = v121[3];
  OUTLINED_FUNCTION_87_13();
  *(v142 + 255) = v143;
  v448[0] = v453;
  v448[1] = v144;
  v448[2] = v145;
  v448[3] = v143;
  if (v131 == 1)
  {
    v449 = v453;
    v450 = v454[0];
    OUTLINED_FUNCTION_87_13();
    v147 = *(v146 + 255);
    v451 = v148;
    v452 = v147;
    OUTLINED_FUNCTION_75_12(v445);
    OUTLINED_FUNCTION_75_12(v446);
    v149 = OUTLINED_FUNCTION_19_25();
    OUTLINED_FUNCTION_75_12(v149);
    v150 = OUTLINED_FUNCTION_35_20();
    sub_217351248(v150);
    goto LABEL_51;
  }

  v157 = v141[2];
  v450 = v141[1];
  v451 = v157;
  v452 = v141[3];
  v449 = __PAIR128__(v131, v130);
  v158 = OUTLINED_FUNCTION_17_30();
  v159 = static EditorialNotes.== infix(_:_:)(v158, &v449);
  v444[0] = v449;
  v444[1] = v450;
  v444[2] = v451;
  v444[3] = v452;
  OUTLINED_FUNCTION_76_11(v445);
  OUTLINED_FUNCTION_76_11(v446);
  v160 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_76_11(v160);
  sub_217351248(v444);
  v447[0] = v448[0];
  v447[1] = v448[1];
  v447[2] = v448[2];
  v447[3] = v448[3];
  sub_217351248(v447);
  v449 = v129;
  v450 = v443[0];
  v451 = v443[1];
  v452 = v443[2];
  v161 = OUTLINED_FUNCTION_35_20();
  sub_2171F0738(v161, &qword_27CB24B70, &unk_217759460);
  if ((v159 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_54:
  v162 = v58[10];
  v163 = *(v63 + v162);
  if (*(v6 + v162))
  {
    if (!v163)
    {
      goto LABEL_27;
    }

    v164 = *(v63 + v162);
    sub_217751DE8();
    sub_217262CB4();
    v166 = v165;

    if ((v166 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v163)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_99_11(v58[11]);
  if (v170)
  {
    if (!v167)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v168 != *v169)
    {
      LOBYTE(v167) = 1;
    }

    if (v167)
    {
      goto LABEL_27;
    }
  }

  v171 = v58[12];
  v172 = *(v6 + v171);
  v173 = *(v63 + v171);
  if (v172 == 2)
  {
    if (v173 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v173 == 2 || ((v173 ^ v172) & 1) != 0)
  {
    goto LABEL_27;
  }

  v174 = v58[13];
  v175 = *(v6 + v174);
  v176 = *(v63 + v174);
  if (v175 == 14)
  {
    if (v176 != 14)
    {
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v453) = v175;
    if (v176 == 14)
    {
      goto LABEL_27;
    }

    LOBYTE(v448[0]) = v176;
    v177 = OUTLINED_FUNCTION_15_37();
    if (!static Station._Kind.== infix(_:_:)(v177, v178))
    {
      goto LABEL_27;
    }
  }

  v179 = v58[14];
  OUTLINED_FUNCTION_80_12(v444);
  v427 = v58;
  v180 = v58[14];
  OUTLINED_FUNCTION_105_10(v447);
  v181 = OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_80_12(v181);
  OUTLINED_FUNCTION_105_10(v455);
  v182 = OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_80_12(v182);
  v183 = OUTLINED_FUNCTION_35_20();
  OUTLINED_FUNCTION_104(v183);
  if (v74)
  {
    v184 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_223_2(v184);
    v185 = OUTLINED_FUNCTION_17_30();
    OUTLINED_FUNCTION_104(v185);
    if (v74)
    {
      OUTLINED_FUNCTION_18_32();
      memcpy(v186, v187, 0x221uLL);
      OUTLINED_FUNCTION_49_20();
      sub_21726A630(v188, v189, v190, &unk_21775E9A0);
      OUTLINED_FUNCTION_49_20();
      sub_21726A630(v191, v192, v193, &unk_21775E9A0);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v194, v195, v196);
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_157(v444, v443);
    v96 = v447;
    v97 = v443;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_18_32();
  memcpy(v197, v198, 0x221uLL);
  OUTLINED_FUNCTION_18_32();
  memcpy(v199, v200, 0x221uLL);
  v201 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_223_2(v201);
  v202 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_104(v202);
  if (v203)
  {
    OUTLINED_FUNCTION_18_32();
    memcpy(v204, v205, 0x221uLL);
    OUTLINED_FUNCTION_157(v444, v438);
    OUTLINED_FUNCTION_157(v447, v438);
    OUTLINED_FUNCTION_157(v443, v438);
    v94 = v439;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_223_2(v439);
  OUTLINED_FUNCTION_194_4(v444, v438);
  OUTLINED_FUNCTION_194_4(v447, v438);
  OUTLINED_FUNCTION_194_4(v443, v438);
  v206 = static Artwork.== infix(_:_:)(v442, v439);
  memcpy(v437, v439, 0x221uLL);
  sub_217284084(v437);
  memcpy(v438, v442, 0x221uLL);
  sub_217284084(v438);
  OUTLINED_FUNCTION_18_32();
  memcpy(v207, v208, 0x221uLL);
  OUTLINED_FUNCTION_149_0();
  sub_2171F0738(v209, v210, v211);
  if ((v206 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_84:
  v212 = v427[15];
  OUTLINED_FUNCTION_8_44();
  if (v215)
  {
    if (!v213)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v214);
    v218 = v74 && v216 == v217;
    if (!v218 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v213)
  {
    goto LABEL_27;
  }

  v219 = v6 + v427[16];
  memcpy(v440, v219, sizeof(v440));
  v220 = v436 + v427[16];
  memcpy(v441, v220, sizeof(v441));
  v221 = *v440;
  v222 = *&v440[8];
  memcpy(v438, (v219 + 16), 0x68uLL);
  v223 = v441[0];
  v224 = v441[1];
  memcpy(v437, (v220 + 16), 0x68uLL);
  if (!*&v440[8])
  {
    if (!v441[1])
    {
      v453 = *v440;
      OUTLINED_FUNCTION_79_13(&v453);
      OUTLINED_FUNCTION_25_35(v440);
      OUTLINED_FUNCTION_25_35(v441);
      OUTLINED_FUNCTION_19_25();
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v257, v258, v259);
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v242, v243, &qword_27CB244D0, &unk_21775D620);
    OUTLINED_FUNCTION_18_32();
    sub_21726A630(v244, v245, &qword_27CB244D0, &unk_21775D620);
LABEL_100:
    *&v453 = v221;
    *(&v453 + 1) = v222;
    memcpy(v454, v438, 0x68uLL);
    *(&v454[6] + 1) = v223;
    *&v454[7] = v224;
    memcpy(&v454[7] + 8, v437, 0x68uLL);
    goto LABEL_52;
  }

  v453 = *v440;
  OUTLINED_FUNCTION_79_13(&v453);
  OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_18_32();
  memcpy(v225, v226, 0x78uLL);
  if (!v224)
  {
    OUTLINED_FUNCTION_18_32();
    memcpy(v246, v247, 0x78uLL);
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v248, v249, v250, &unk_21775D620);
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v251, v252, v253, &unk_21775D620);
    OUTLINED_FUNCTION_19_25();
    OUTLINED_FUNCTION_49_20();
    sub_21726A630(v254, v255, v256, &unk_21775D620);
    sub_2172848C0(v443);
    goto LABEL_100;
  }

  memcpy(&v443[1], (v220 + 16), 0x68uLL);
  *&v443[0] = v223;
  *(&v443[0] + 1) = v224;
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v227, v228, v229, &unk_21775D620);
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v230, v231, v232, &unk_21775D620);
  OUTLINED_FUNCTION_19_25();
  OUTLINED_FUNCTION_49_20();
  sub_21726A630(v233, v234, v235, &unk_21775D620);
  v236 = OUTLINED_FUNCTION_17_30();
  static PlayParameters.== infix(_:_:)(v236, v443);
  v238 = v237;
  memcpy(v439, v443, 0x78uLL);
  sub_2172848C0(v439);
  memcpy(v442, v448, 0x78uLL);
  sub_2172848C0(v442);
  *&v443[0] = v221;
  *(&v443[0] + 1) = v222;
  memcpy(&v443[1], v438, 0x68uLL);
  OUTLINED_FUNCTION_149_0();
  sub_2171F0738(v239, v240, v241);
  if ((v238 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_102:
  v260 = v427[17];
  OUTLINED_FUNCTION_8_44();
  if (v263)
  {
    if (!v261)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v262);
    v266 = v74 && v264 == v265;
    if (!v266 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v261)
  {
    goto LABEL_27;
  }

  v267 = v427[18];
  v268 = *(v433 + 48);
  v269 = v435;
  OUTLINED_FUNCTION_157(v6 + v267, v435);
  OUTLINED_FUNCTION_157(v436 + v267, v269 + v268);
  OUTLINED_FUNCTION_27_29(v269);
  if (v74)
  {
    if (__swift_getEnumTagSinglePayload(v435 + v268, 1, v434) == 1)
    {
      sub_2171F0738(v435, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_120;
    }

LABEL_118:
    v75 = &qword_27CB24840;
    v76 = &unk_217758DD0;
    v77 = v435;
    goto LABEL_26;
  }

  v270 = v435;
  sub_21726A630(v435, v432, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_27_29(v270 + v268);
  if (v271)
  {
    (*(v431 + 8))(v432, v434);
    goto LABEL_118;
  }

  v272 = v431;
  v273 = v434;
  v274 = v435;
  v275 = v429;
  (*(v431 + 32))(v429, v435 + v268, v434);
  OUTLINED_FUNCTION_1_64();
  sub_2174F8480(v276, v277);
  v278 = v432;
  v279 = OUTLINED_FUNCTION_101_7();
  v280 = *(v272 + 8);
  v280(v275, v273);
  v280(v278, v273);
  sub_2171F0738(v274, &unk_27CB277C0, &qword_217758DC0);
  if ((v279 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_120:
  v281 = v427[19];
  OUTLINED_FUNCTION_8_44();
  if (v284)
  {
    if (!v282)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v283);
    v287 = v74 && v285 == v286;
    if (!v287 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v282)
  {
    goto LABEL_27;
  }

  v288 = v427[20];
  v289 = *(v433 + 48);
  v290 = v430;
  OUTLINED_FUNCTION_157(v6 + v288, v430);
  OUTLINED_FUNCTION_157(v436 + v288, v290 + v289);
  OUTLINED_FUNCTION_27_29(v290);
  if (v74)
  {
    OUTLINED_FUNCTION_27_29(v430 + v289);
    if (v74)
    {
      sub_2171F0738(v430, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_139;
    }

LABEL_137:
    v75 = &qword_27CB24840;
    v76 = &unk_217758DD0;
    v77 = v430;
    goto LABEL_26;
  }

  v291 = v430;
  sub_21726A630(v430, v428, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_27_29(v291 + v289);
  if (v292)
  {
    (*(v431 + 8))(v428, v434);
    goto LABEL_137;
  }

  v294 = v430;
  v293 = v431;
  v295 = v430 + v289;
  v296 = v429;
  v297 = v434;
  (*(v431 + 32))(v429, v295, v434);
  OUTLINED_FUNCTION_1_64();
  sub_2174F8480(v298, v299);
  v300 = v428;
  v301 = OUTLINED_FUNCTION_101_7();
  v302 = *(v293 + 8);
  v302(v296, v297);
  v302(v300, v297);
  sub_2171F0738(v294, &unk_27CB277C0, &qword_217758DC0);
  if ((v301 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_139:
  v303 = v427[21];
  v304 = *(v6 + v303);
  v305 = *(v6 + v303 + 8);
  v307 = *(v6 + v303 + 16);
  v306 = *(v6 + v303 + 24);
  v308 = (v436 + v303);
  v310 = *v308;
  v309 = v308[1];
  v312 = v308[2];
  v311 = v308[3];
  if (v305 == 1)
  {
    v313 = OUTLINED_FUNCTION_83_12();
    sub_2172838F8(v313, v314);
    if (v309 == 1)
    {
      OUTLINED_FUNCTION_100_11();
      v315 = OUTLINED_FUNCTION_83_12();
      sub_217283940(v315, v316);
      goto LABEL_147;
    }

    v321 = OUTLINED_FUNCTION_30_26();
    sub_2172838F8(v321, v322);
LABEL_145:
    v323 = OUTLINED_FUNCTION_3_7();
    sub_217283940(v323, v324);
    v325 = OUTLINED_FUNCTION_30_26();
    sub_217283940(v325, v326);
    goto LABEL_27;
  }

  *&v453 = v304;
  *(&v453 + 1) = v305;
  *&v454[0] = v307;
  *(&v454[0] + 1) = v306;
  if (v309 == 1)
  {
    v317 = OUTLINED_FUNCTION_3_7();
    sub_2172838F8(v317, v318);
    OUTLINED_FUNCTION_100_11();
    v319 = OUTLINED_FUNCTION_3_7();
    sub_2172838F8(v319, v320);

    goto LABEL_145;
  }

  *&v448[0] = v310;
  *(&v448[0] + 1) = v309;
  *&v448[1] = v312;
  *(&v448[1] + 1) = v311;
  v327 = OUTLINED_FUNCTION_15_37();
  LODWORD(v435) = static CloudPivotMetadata.== infix(_:_:)(v327, v328);
  v433 = *(&v448[0] + 1);
  v434 = *(&v448[1] + 1);
  v329 = OUTLINED_FUNCTION_3_7();
  sub_2172838F8(v329, v330);
  v331 = OUTLINED_FUNCTION_30_26();
  sub_2172838F8(v331, v332);
  v333 = OUTLINED_FUNCTION_3_7();
  sub_2172838F8(v333, v334);

  v335 = OUTLINED_FUNCTION_3_7();
  sub_217283940(v335, v336);
  if ((v435 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_147:
  v337 = v427[22];
  OUTLINED_FUNCTION_8_44();
  if (v340)
  {
    if (!v338)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_59_0(v339);
    v343 = v74 && v341 == v342;
    if (!v343 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v338)
  {
    goto LABEL_27;
  }

  v344 = v427[23];
  v345 = *(v436 + v344);
  if (*(v6 + v344))
  {
    if (!v345)
    {
      goto LABEL_27;
    }

    v346 = *(v436 + v344);
    sub_217751DE8();
    sub_21726F358();
    v348 = v347;

    if ((v348 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v345)
  {
    goto LABEL_27;
  }

  v349 = v427[24];
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_157(v350, v351);
  OUTLINED_FUNCTION_157(v436 + v349, &v454[7]);
  if (!*&v454[0])
  {
    if (!*&v454[8])
    {
      v362 = OUTLINED_FUNCTION_19_25();
      sub_2171F0738(v362, v363, v364);
      goto LABEL_167;
    }

LABEL_52:
    v77 = OUTLINED_FUNCTION_19_25();
    goto LABEL_26;
  }

  v352 = OUTLINED_FUNCTION_15_37();
  sub_21726A630(v352, v353, v354, v355);
  if (!*&v454[8])
  {
    v378 = OUTLINED_FUNCTION_17_30();
    sub_2171F0738(v378, v379, v380);
    goto LABEL_52;
  }

  memcpy(v443, &v454[7], 0x80uLL);
  v356 = OUTLINED_FUNCTION_17_30();
  v357 = sub_2172DE0D0(v356, v443);
  OUTLINED_FUNCTION_110_8(v443);
  v358 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_110_8(v358);
  v359 = OUTLINED_FUNCTION_19_25();
  sub_2171F0738(v359, v360, v361);
  if ((v357 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_167:
  v365 = v427[25];
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_157(v366, v367);
  OUTLINED_FUNCTION_157(v436 + v365, &v454[5] + 8);
  if (!*(&v454[4] + 1))
  {
    if (!*&v454[11])
    {
      v381 = OUTLINED_FUNCTION_19_25();
      sub_2171F0738(v381, v382, v383);
      goto LABEL_175;
    }

    goto LABEL_52;
  }

  v368 = OUTLINED_FUNCTION_15_37();
  sub_21726A630(v368, v369, v370, v371);
  if (!*&v454[11])
  {
    v412 = OUTLINED_FUNCTION_17_30();
    sub_2171F0738(v412, v413, v414);
    goto LABEL_52;
  }

  memcpy(v443, &v454[5] + 8, 0x68uLL);
  v372 = OUTLINED_FUNCTION_17_30();
  v373 = sub_21733E778(v372, v443);
  OUTLINED_FUNCTION_110_8(v443);
  v374 = OUTLINED_FUNCTION_17_30();
  OUTLINED_FUNCTION_110_8(v374);
  v375 = OUTLINED_FUNCTION_19_25();
  sub_2171F0738(v375, v376, v377);
  if ((v373 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_175:
  v384 = OUTLINED_FUNCTION_22_32(v427[26]);
  sub_217270140(v384, v385, v386, v387, v388, v389, v390, v391, v426, v427, v428, v429);
  if (v392)
  {
    v393 = v427[27];
    memcpy(v442, (v6 + v393), 0x161uLL);
    memcpy(v439, (v6 + v393), 0x161uLL);
    v394 = v427[27];
    memcpy(v443, (v436 + v394), 0x161uLL);
    memcpy(v438, (v436 + v394), 0x161uLL);
    sub_217269EF4(v442, v437);
    sub_217269EF4(v443, v437);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v394) = v395;
    v396 = OUTLINED_FUNCTION_17_30();
    memcpy(v396, v438, 0x161uLL);
    v397 = OUTLINED_FUNCTION_17_30();
    sub_217269F50(v397);
    v398 = OUTLINED_FUNCTION_19_25();
    memcpy(v398, v439, 0x161uLL);
    v399 = OUTLINED_FUNCTION_19_25();
    sub_217269F50(v399);
    if (v394)
    {
      v400 = v427[28];
      v401 = *(v6 + v400);
      v402 = *(v6 + v400 + 8);
      v403 = (v436 + v400);
      v404 = v401 == *v403 && v402 == v403[1];
      if (v404 || (sub_217753058() & 1) != 0)
      {
        v405 = v427[29];
        OUTLINED_FUNCTION_8_44();
        if (!v408)
        {
          if (v406)
          {
            goto LABEL_27;
          }

          goto LABEL_193;
        }

        if (v406)
        {
          OUTLINED_FUNCTION_59_0(v407);
          v411 = v74 && v409 == v410;
          if (v411 || (sub_217753058() & 1) != 0)
          {
LABEL_193:
            v415 = OUTLINED_FUNCTION_22_32(v427[30]);
            sub_217261FB0(v415, v416);
            if (v417)
            {
              v418 = OUTLINED_FUNCTION_22_32(v427[31]);
              sub_217261FB0(v418, v419);
              if (v420)
              {
                v421 = OUTLINED_FUNCTION_22_32(v427[32]);
                sub_217261FB0(v421, v422);
                if (v423)
                {
                  v424 = OUTLINED_FUNCTION_22_32(v427[33]);
                  sub_217261FB0(v424, v425);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_13();
}

void StationPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  OUTLINED_FUNCTION_168_0();
  v3 = sub_2177516D8();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v85 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v84 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_6_1();
  v83 = v16 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v82 - v20;
  v22 = type metadata accessor for Station._AirTime();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C0, &unk_21775D480);
  OUTLINED_FUNCTION_45_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_63_15();
  sub_21726A630(v0, v0, &qword_27CB255C0, &unk_21775D480);
  if (__swift_getEnumTagSinglePayload(v0, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_9_39();
    sub_2174F8388(v0, v29, v35);
    OUTLINED_FUNCTION_119();
    sub_2177517D8();
    sub_2174F8480(&qword_27CB25C68, MEMORY[0x277CC9578]);
    sub_217751EB8();
    v36 = v29 + *(v22 + 20);
    OUTLINED_FUNCTION_95_6();
    sub_217751EB8();
    OUTLINED_FUNCTION_23_32();
    sub_2174F83E4();
  }

  v37 = type metadata accessor for StationPropertyProvider();
  v38 = v37[5];
  OUTLINED_FUNCTION_258(v92);
  OUTLINED_FUNCTION_258(v93);
  OUTLINED_FUNCTION_104(v93);
  if (v39)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v89, v92, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v90, v92, 0x221uLL);
    sub_217284028(v90, v91);
    Artwork.hash(into:)(v1);
    memcpy(v91, v89, 0x221uLL);
    sub_217284084(v91);
  }

  v40 = *(v2 + v37[6]);
  if (v40 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v40 & 1);
  }

  v41 = v2 + v37[7];
  if (*(v41 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2(v41);
    if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    MEMORY[0x21CEA3580](v42);
  }

  if (*(v2 + v37[8]))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v43 = (v2 + v37[9]);
  v44 = v43[1];
  *&v93[552] = *v43;
  v94 = v44;
  v45 = v43[3];
  v95 = v43[2];
  v96 = v45;
  sub_217265238();
  if (*(v2 + v37[10]))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v46 = v2 + v37[11];
  if (*(v46 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2(v46);
    MEMORY[0x21CEA3550](v40);
  }

  if (*(v2 + v37[12]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v2 + v37[13]) == 14)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v91[0] = *(v2 + v37[13]);
    OUTLINED_FUNCTION_119();
    Station._Kind.hash(into:)();
  }

  v47 = v37[14];
  OUTLINED_FUNCTION_258(v90);
  OUTLINED_FUNCTION_258(v91);
  OUTLINED_FUNCTION_104(v91);
  if (v39)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v87, v90, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v88, v90, 0x221uLL);
    sub_217284028(v88, v89);
    Artwork.hash(into:)(v1);
    memcpy(v89, v87, 0x221uLL);
    sub_217284084(v89);
  }

  v48 = (v2 + v37[15]);
  if (v48[1])
  {
    OUTLINED_FUNCTION_99_2(v48);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v49 = (v2 + v37[16]);
  v50 = *v49;
  v51 = v49[1];
  memcpy(v86, v49 + 2, sizeof(v86));
  if (v51)
  {
    OUTLINED_FUNCTION_79_13(v87);
    v87[0] = v50;
    v87[1] = v51;
    OUTLINED_FUNCTION_119();
    v88[0] = v50;
    v88[1] = v51;
    memcpy(&v88[2], v86, 0x68uLL);
    sub_2172DF5A4(v88, v89);
    PlayParameters.hash(into:)(v1);
    memcpy(v89, v87, 0x78uLL);
    sub_2172848C0(v89);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = (v2 + v37[17]);
  if (v52[1])
  {
    OUTLINED_FUNCTION_99_2(v52);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v37[18], v21, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_26_28(v21);
  if (v39)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v53 = OUTLINED_FUNCTION_94_9();
    v54(v53, v21, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_64();
    sub_2174F8480(v55, v56);
    OUTLINED_FUNCTION_102_10();
    (*(v50 + 8))(v51, v3);
  }

  v57 = (v2 + v37[19]);
  if (v57[1])
  {
    OUTLINED_FUNCTION_99_2(v57);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v58 = v83;
  sub_21726A630(v2 + v37[20], v83, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_26_28(v58);
  if (v39)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_149_0();
    v59();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_64();
    sub_2174F8480(v60, v61);
    OUTLINED_FUNCTION_102_10();
    (*(v50 + 8))(v51, v3);
  }

  v62 = (v2 + v37[21]);
  v63 = v62[1];
  if (v63 != 1)
  {
    v64 = *v62;
    v65 = v62[2];
    v66 = v62[3];
    OUTLINED_FUNCTION_119();
    if (v63)
    {
      OUTLINED_FUNCTION_119();
      sub_217751FF8();
      if (v66)
      {
LABEL_54:
        OUTLINED_FUNCTION_119();
        sub_217751FF8();
        goto LABEL_57;
      }
    }

    else
    {
      OUTLINED_FUNCTION_120();
      if (v66)
      {
        goto LABEL_54;
      }
    }
  }

  OUTLINED_FUNCTION_120();
LABEL_57:
  v67 = (v2 + v37[22]);
  if (v67[1])
  {
    OUTLINED_FUNCTION_99_2(v67);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v2 + v37[23]))
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v37[24], v89, &qword_27CB24230, &unk_21775E9D0);
  if (v89[2])
  {
    memcpy(v88, v89, 0x80uLL);
    OUTLINED_FUNCTION_119();
    sub_2172DE694(v1);
    sub_2171F0738(v88, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v37[25], v88, &unk_27CB28A60, &qword_217770B60);
  if (v88[11])
  {
    memcpy(v89, v88, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(v1);
    sub_2171F0738(v89, &qword_27CB240D0, &unk_21775D400);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v68 = OUTLINED_FUNCTION_201(v37[26]);
  sub_217281970(v68, v69);
  memcpy(v89, (v2 + v37[27]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  v70 = (v2 + v37[28]);
  v71 = *v70;
  v72 = v70[1];
  sub_217751FF8();
  v73 = (v2 + v37[29]);
  if (v73[1])
  {
    OUTLINED_FUNCTION_99_2(v73);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v74 = OUTLINED_FUNCTION_201(v37[30]);
  sub_217265A08(v74, v75);
  v76 = OUTLINED_FUNCTION_201(v37[31]);
  sub_217265A08(v76, v77);
  v78 = OUTLINED_FUNCTION_201(v37[32]);
  sub_217265A08(v78, v79);
  v80 = OUTLINED_FUNCTION_201(v37[33]);
  sub_217265A08(v80, v81);
  OUTLINED_FUNCTION_13();
}

uint64_t StationPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  StationPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174F828C(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  StationPropertyProvider.subscript.getter();
  return sub_2174F51DC;
}

uint64_t sub_2174F8304()
{
  sub_2177531E8();
  StationPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t (*sub_2174F834C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 108);
  return result;
}

uint64_t sub_2174F8388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_93();
  v8(v7);
  return a2;
}

uint64_t sub_2174F83E4()
{
  v1 = OUTLINED_FUNCTION_8_20();
  v3 = v2(v1);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2174F8480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2174F84F0()
{
  sub_2174F8904(319, qword_280BE2740, type metadata accessor for Station._AirTime, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7698);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7E08);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE7538);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE7DE8);
      if (v9 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
      if (v10 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE7528);
      if (v11 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE7540);
      if (v12 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE2780);
      if (v13 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, &qword_280BE7598);
      v1 = v14;
      if (v15 > 0x3F)
      {
        return v1;
      }

      sub_2172E2E58(319, &qword_280BE7DD0);
      if (v16 > 0x3F)
      {
        return v5;
      }

      sub_2174F8904(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v17 > 0x3F)
      {
        return v5;
      }

      sub_2172E2E58(319, qword_280BE7C10);
      if (v18 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
      if (v19 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE7AB8, &qword_27CB24238, &unk_21775EA00);
      if (v20 > 0x3F)
      {
        return v5;
      }

      sub_217351B44(319, &qword_280BE7FA8, &qword_27CB240D0, &unk_21775D400);
      if (v21 > 0x3F)
      {
        return v5;
      }

      sub_2174F8904(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
      if (v22 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_217351BFC();
        v1 = v23;
        if (v24 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2174F8904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_22_32@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(*(v1 + 80) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_59_11()
{

  return type metadata accessor for StationPropertyProvider();
}

uint64_t OUTLINED_FUNCTION_65_16@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = a1[1];

  return sub_2172838F8(v4, v5);
}

uint64_t OUTLINED_FUNCTION_76_11(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3792, v2, v3);
}

void OUTLINED_FUNCTION_78_11()
{

  JUMPOUT(0x21CEA23B0);
}

void *OUTLINED_FUNCTION_79_13@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x68uLL);
}

double OUTLINED_FUNCTION_86_10()
{
  result = 0.0;
  *(v0 + 1664) = 0u;
  *(v0 + 1680) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_11()
{

  return sub_2172838F8(v0, 1);
}

uint64_t OUTLINED_FUNCTION_102_10()
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_105_10(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x221uLL);
}

uint64_t OUTLINED_FUNCTION_110_8(uint64_t a1)
{

  return sub_2171F0738(a1, v1, v2);
}

void *OUTLINED_FUNCTION_111_10(void *a1)
{

  return memcpy(a1, (v2 + v1), 0x221uLL);
}

uint64_t *static LibrarySortDescriptorResolver.resolving<A>(keyPath:propertyKey:relatedType:relatedPropertyKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a7;
  v30 = a6;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  OUTLINED_FUNCTION_2_72();
  v18 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v30 - v25;
  v27 = *(v7 + 104);
  type metadata accessor for LibrarySortDescriptorResolver();
  (*(v20 + 16))(v26, v31, v18);
  (*(v11 + 16))(v17, v32, AssociatedTypeWitness);

  return sub_2174F9470(v28, v26, a5, v17);
}

void *static LibrarySortDescriptorResolver.resolving<>(keyPath:propertyKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v17 - v13;
  v15 = *(v2 + 104);
  type metadata accessor for LibrarySortDescriptorResolver();
  (*(v8 + 16))(v14, a2, AssociatedTypeWitness);

  return sub_2174F92E4(v5, a1, v14);
}

void *static LibrarySortDescriptorResolver.resolving(keyPath:rawPropertyKeys:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  type metadata accessor for LibrarySortDescriptorResolver();
  v7 = sub_2174F99E0(a1, a2);

  sub_217751DE8();
  return v7;
}

uint64_t *static LibrarySortDescriptorResolver.resolving<A, B>(keyPath:propertyKey:relatedType:relatedPropertyKey:nestedRelatedType:nestedRelatedPropertyKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a1;
  v49 = a8;
  v44 = a2;
  v45 = a4;
  v41[0] = a9;
  v41[1] = a10;
  v42 = a7;
  v46 = a11;
  v47 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v19 = v41 - v18;
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  v28 = v41 - v27;
  OUTLINED_FUNCTION_2_72();
  v29 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34, v35);
  v37 = v41 - v36;
  v38 = *(v11 + 104);
  type metadata accessor for LibrarySortDescriptorResolver();
  (*(v31 + 16))(v37, v44, v29);
  (*(v22 + 16))(v28, v45, v20);
  (*(v13 + 16))(v19, v47, AssociatedTypeWitness);

  return sub_2174F96C8(v39, v37, v42, v28, v49, v19);
}

void sub_2174F9208()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000066, 0x80000002177AF570);
  type metadata accessor for AnyMusicSortDescriptorResolver();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  sub_217752D08();
  __break(1u);
}

void *sub_2174F9350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2177586E0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);

  sub_2177521E8();

  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  v4[4] = 0;
  v4[5] = 0;
  v4[3] = v6;
  return v4;
}

uint64_t *sub_2174F94F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_217759200;
  v8 = *(v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 16);

  sub_2177521E8();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_2177521E8();

  (*(*(v11 - 8) + 8))(a4, v11);
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v4[4] = 0;
  v4[5] = 0;
  v4[3] = v7;
  return v4;
}

uint64_t *sub_2174F977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v6[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2177643C0;
  v9 = *(v7 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);

  sub_2177521E8();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_2177521E8();
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_2177521E8();

  (*(*(v14 - 8) + 8))(a6, v14);
  (*(*(v12 - 8) + 8))(a4, v12);
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = v8;
  return v6;
}

void *sub_2174F99E0(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  return result;
}

id sub_2174F9A24(void *a1, char a2)
{
  result = a1[2];
  if (result)
  {
    if (result == 1)
    {
      v6 = a1[4];
      v5 = a1[5];
      sub_2174F9BE0();
      sub_217751DE8();
      return sub_2174715A0(v6, v5, a2 & 1);
    }

    else
    {
      sub_2174F9BE0();
      v7 = sub_217751DE8();
      return sub_217471618(v7, a2 & 1);
    }
  }

  return result;
}

uint64_t sub_2174F9B00()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  v4 = v0[5];

  return sub_2171FF138(v3, v4);
}

void *LibrarySortDescriptorResolver.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_2171FF138(v0[4], v0[5]);
  return v0;
}

uint64_t LibrarySortDescriptorResolver.__deallocating_deinit()
{
  LibrarySortDescriptorResolver.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_2174F9BE0()
{
  result = qword_280BE8400;
  if (!qword_280BE8400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE8400);
  }

  return result;
}

uint64_t sub_2174F9C24()
{
  if (qword_280BE4788 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE4790);

  return sub_217751DE8();
}

uint64_t sub_2174F9C90()
{
  if (qword_280BE52E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE52F0);

  return sub_217751DE8();
}

uint64_t sub_2174F9CFC()
{
  if (qword_280BE24E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE24F0);

  return sub_217751DE8();
}

uint64_t sub_2174F9D68()
{
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE6ED0);

  return sub_217751DE8();
}

uint64_t sub_2174F9DD4()
{
  if (qword_280BE5740 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_51(&qword_280BE5748);

  return sub_217751DE8();
}

uint64_t sub_2174F9E40()
{
  v11 = MEMORY[0x277D84F90];
  if (qword_280BE6EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_217751DE8();
  sub_21754365C(v0);
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE6ED0;
  v1 = *algn_280BE6ED8;
  v3 = byte_280BE6EE0;
  v4 = v11;
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = *(v11 + 16);
    sub_2172B199C();
    v4 = v9;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_2172B199C();
    v4 = v10;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 24 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  return v4;
}

uint64_t sub_2174F9F84()
{
  v11 = MEMORY[0x277D84F90];
  if (qword_280BE7620 != -1)
  {
    swift_once();
  }

  v0 = sub_217751DE8();
  sub_21754365C(v0);
  if (qword_280BE24E8 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE24F0;
  v1 = *algn_280BE24F8;
  v3 = byte_280BE2500;
  v4 = v11;
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = *(v11 + 16);
    sub_2172B199C();
    v4 = v9;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_2172B199C();
    v4 = v10;
  }

  *(v4 + 16) = v5 + 1;
  v6 = v4 + 24 * v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = v3;
  return v4;
}

uint64_t UncheckedSendableWeakWrapper.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2174FA118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for UncheckedSendableWeakWrapper();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t UncheckedSendableWeakWrapper.wrapped.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*UncheckedSendableWeakWrapper.wrapped.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2174FA264;
}

uint64_t sub_2174FA264(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for ForgivingInt(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ForgivingInt(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t MusicLibraryResponse.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for MusicItemCollection();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t MusicLibraryResponse<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for MusicItemCollection();

  return MusicItemCollection<>.hash(into:)(a1, v5);
}

uint64_t MusicLibraryResponse<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicLibraryResponse<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_2174FA42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicLibraryResponse<>.hash(into:)(v6, a2);
  return sub_217753238();
}

unint64_t sub_2174FA480(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v44 = &v42 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v43 = &v42 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v42 - v19;
  v61 = 0;
  v62 = 0xE000000000000000;
  v22 = *(v21 + 24);
  v23 = type metadata accessor for MusicItemCollection();
  (*(*(v23 - 8) + 16))(&v58, v2, v23);
  v24 = MusicItemCollection.startIndex.getter(v23);
  v60 = v24;
  if (v24 != MusicItemCollection.endIndex.getter(v23))
  {
    v25 = (v4 + 32);
    v26 = (v4 + 16);
    v27 = (v4 + 8);
    v47 = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45 = (v4 + 16);
    do
    {
      MusicItemCollection.subscript.getter(v24, v23, v20);
      MusicItemCollection.formIndex(after:)(&v60);
      (*v25)(v16, v20, v3);
      v28 = *v26;
      if (v46)
      {
        v28(v43, v16, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
        if (swift_dynamicCast())
        {
          sub_2171F3F0C(&v52, &v55);
          __swift_project_boxed_opaque_existential_1(&v55, v57);
          v29 = sub_217753068();
          goto LABEL_9;
        }

        v54 = 0;
        v53 = 0u;
        v52 = 0u;
        sub_2171F06D8(&v52, &qword_27CB28B60, &qword_2177711B8);
      }

      v31 = v47;
      v28(v44, v16, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
      v32 = swift_dynamicCast();
      v47 = v31;
      if (!v32)
      {
        v54 = 0;
        v53 = 0u;
        v52 = 0u;
        sub_2171F06D8(&v52, &qword_27CB28B50, &qword_2177711A8);
        v28(v42, v16, v3);
        v33 = sub_217751FA8();
        v35 = v36;
        goto LABEL_11;
      }

      sub_2171F3F0C(&v52, &v55);
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      v29 = sub_217752FC8();
LABEL_9:
      *&v52 = v29;
      *(&v52 + 1) = v30;
      v50 = 10;
      v51 = 0xE100000000000000;
      v48 = 0x202020200ALL;
      v49 = 0xE500000000000000;
      sub_21733A5C8();
      v33 = sub_217752998();
      v35 = v34;

      __swift_destroy_boxed_opaque_existential_1(&v55);
LABEL_11:
      v37 = v61 & 0xFFFFFFFFFFFFLL;
      if ((v62 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v62) & 0xF;
      }

      if (v37)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      v55 = 0x202020200ALL;
      v56 = 0xE500000000000000;
      MEMORY[0x21CEA23B0](v33, v35);

      MEMORY[0x21CEA23B0](v55, v56);

      (*v27)(v16, v3);
      v38 = MusicItemCollection.endIndex.getter(v23);
      v24 = v60;
      v26 = v45;
    }

    while (v60 != v38);
  }

  swift_getWitnessTable();
  v39 = sub_217752C88();
  (*(*(v39 - 8) + 8))(&v58, v39);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_217752AA8();

  v58 = 0xD000000000000015;
  v59 = 0x80000002177AF650;
  v40 = sub_217753348();
  MEMORY[0x21CEA23B0](v40);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
  MEMORY[0x21CEA23B0](0x736D65746920200ALL, 0xEB000000005B203ALL);
  MEMORY[0x21CEA23B0](v61, v62);

  MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
  MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v58;
}

uint64_t static CloudConversionError.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t CloudConversionError.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x21CEA3550](1);
  }

  v1 = *v0;
  MEMORY[0x21CEA3550](0);

  return sub_217751FF8();
}

uint64_t CloudConversionError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  if (v2)
  {
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](1);
  }

  return sub_217753238();
}

uint64_t sub_2174FACA0()
{
  v2 = *v0;
  sub_2177531E8();
  CloudConversionError.hash(into:)();
  return sub_217753238();
}

uint64_t CloudConversionError.convertToDecodingError(for:decodedTypeDescription:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_217752B38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[1];
  if (v15)
  {
    v28 = a2;
    v29 = v9;
    v16 = *v4;
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = sub_217753298();
    sub_217751DE8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v18 + 16);
      sub_2172B240C();
      v18 = v25;
    }

    v19 = *(v18 + 16);
    if (v19 >= *(v18 + 24) >> 1)
    {
      sub_2172B240C();
      v18 = v26;
    }

    v31 = &type metadata for DynamicCodingKey;
    v32 = sub_21738B390();
    *&v30 = v16;
    *(&v30 + 1) = v15;
    *(v18 + 16) = v19 + 1;
    sub_2171F3F0C(&v30, v18 + 40 * v19 + 32);
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177AF670);
    MEMORY[0x21CEA23B0](v28, a3);
    MEMORY[0x21CEA23B0](0xD000000000000020, 0x80000002177AF6B0);
    MEMORY[0x21CEA23B0](v16, v15);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    sub_217752B08();
    v9 = v29;
  }

  else
  {
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217753298();
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;
    sub_217752AA8();

    *&v30 = 0xD000000000000011;
    *(&v30 + 1) = 0x80000002177AF670;
    MEMORY[0x21CEA23B0](a2, a3);
    MEMORY[0x21CEA23B0](0xD00000000000001ALL, 0x80000002177AF690);
    sub_217752B08();
  }

  (*(v10 + 32))(a4, v14, v9);
  v21 = *MEMORY[0x277D84168];
  v22 = sub_217752B48();
  return (*(*(v22 - 8) + 104))(a4, v21, v22);
}

unint64_t sub_2174FB020()
{
  result = qword_27CB28B68;
  if (!qword_27CB28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActiveMonitoring(_BYTE *result, int a2, int a3)
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

uint64_t sub_2174FB174(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2174FB2B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2174FB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *(v9 + 16) = v10;
  *v10 = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v9;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 769) = 0;
  return v4;
}

uint64_t sub_2174FB530()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217751DE8();
  sub_217284734(v6);
  return v4;
}

uint64_t sub_2174FB5A0()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217751DE8();
  sub_217284734(v6);
  return v4;
}

void *sub_2174FB610@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_2174FB8A8(v1, v8);
  os_unfair_lock_unlock(*(v3 + 16));

  memcpy(__dst, v9, 0x221uLL);
  sub_217202078(__dst, v6, &qword_27CB24400, &unk_21775E9A0);
  sub_217284734(v8);
  return memcpy(a1, __dst, 0x221uLL);
}

uint64_t sub_2174FB6D8()
{
  OUTLINED_FUNCTION_2_73();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_68(v3, v4);
  os_unfair_lock_unlock(*(v2 + 16));

  sub_217202078(&v7, v0, &qword_27CB245B8, &qword_217758AE0);
  return sub_217284734(v6);
}

uint64_t sub_2174FB754()
{
  OUTLINED_FUNCTION_2_73();
  os_unfair_lock_lock(v1);
  OUTLINED_FUNCTION_0_68(v3, v4);
  os_unfair_lock_unlock(*(v2 + 16));

  sub_217202078(&v7, v0, &qword_27CB24418, &unk_21777F680);
  return sub_217284734(v6);
}

uint64_t sub_2174FB7D0()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217284734(v6);
  return v4;
}

uint64_t sub_2174FB83C()
{
  OUTLINED_FUNCTION_1_65();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_0_68(v2, v3);
  os_unfair_lock_unlock(*(v1 + 16));

  v4 = v7;
  sub_217284734(v6);
  return v4;
}

void *sub_2174FB8A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_217284788(a1 + 40, __src);
  if (v8)
  {
    return memcpy(a2, __src, 0x2D9uLL);
  }

  (*__src)(v4);

  sub_2174FBF40(a2, v6);
  v6[729] = 1;
  swift_beginAccess();
  sub_2174FBF9C(v6, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_2174FB980(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    v11 = 1;
    goto LABEL_10;
  }

  v5 = sub_217753058();
  result = 0;
  v11 = v5 & 1;
  if (v5)
  {
LABEL_10:
    v7 = a1[4];
    v8 = *(v7 + 16);

    os_unfair_lock_lock(v8);
    v9 = a2[4];
    v10 = *(v9 + 16);

    os_unfair_lock_lock(v10);
    sub_2174FBA98(a1, a2);
    os_unfair_lock_unlock(*(v9 + 16));

    os_unfair_lock_unlock(*(v7 + 16));

    return v11;
  }

  return result;
}

uint64_t sub_2174FBA98(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  swift_beginAccess();
  sub_217284788(v7 + 40, __src);
  swift_beginAccess();
  memcpy(__dst, __src, 0x2DAuLL);
  sub_217284788(v5 + 40, v14);
  if (__dst[729] == 1)
  {
    sub_217284788(__dst, v12);
    if (v14[729] == 1)
    {
      memcpy(v11, v12, 0x2D9uLL);
      memcpy(v10, v14, 0x2D9uLL);
      v8 = sub_2173E2640(v11, v10);
      sub_217284734(v10);
      sub_217284734(v11);
      *v3 = v8;
      return sub_2172847E4(__dst);
    }

    sub_217284734(v12);
  }

  return sub_2174FBED8(__dst);
}

uint64_t sub_2174FBBD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_217751FF8();
}

uint64_t sub_2174FBBE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_2172847E4(v0 + 40);
  return v0;
}

uint64_t sub_2174FBC10()
{
  sub_2174FBBE0();

  return MEMORY[0x2821FE8D8](v0, 770, 7);
}

uint64_t sub_2174FBC68()
{
  sub_2177531E8();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2174FBCC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 730))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 729);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_2174FBCFC(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    bzero(a1, 0x2DAuLL);
    *a1 = v5;
    if (a3 >= 0xFF)
    {
      *(a1 + 730) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 730) = 0;
    }

    if (a2)
    {
      *(a1 + 729) = -a2;
    }
  }
}

void sub_2174FBD70(unsigned int *a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v3 = a2 - 2;
    bzero(a1, 0x2D9uLL);
    *a1 = v3;
    LOBYTE(a2) = 2;
  }

  *(a1 + 729) = a2;
}

uint64_t sub_2174FBE30()
{
  sub_2177531E8();
  v1 = *v0;
  sub_2174FBBD8();
  return sub_217753238();
}

uint64_t sub_2174FBE70@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return sub_217751DE8();
}

unint64_t sub_2174FBE84()
{
  result = qword_27CB28B70;
  if (!qword_27CB28B70)
  {
    _s25LazyEntryPropertyProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28B70);
  }

  return result;
}

uint64_t sub_2174FBED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B78, &unk_217771680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(MusicKit::CloudResourceIdentifier *__return_ptr retstr, MusicKit::ResourceType_optional catalogType, MusicKit::ResourceType_optional libraryType)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v10 + 16);
  memcpy(__dst, v3, 0x161uLL);
  if ((MusicIdentifierSet.isLibraryResource.getter() & 1) != 0 && (v14 = __dst[6]) != 0)
  {
    if (v11)
    {
      v15 = __dst[5];
      goto LABEL_8;
    }
  }

  else
  {
    v14 = __dst[3];
    if (!__dst[3])
    {
      if (qword_280BE8358 != -1)
      {
        swift_once();
      }

      v23 = sub_217751AF8();
      __swift_project_value_buffer(v23, qword_280C02570);
      sub_217269EF4(__dst, v106);
      v24 = sub_217751AD8();
      v25 = sub_217752808();
      sub_217269F50(__dst);
      if (os_log_type_enabled(v24, v25))
      {
        bufa = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v105 = v26;
        *bufa = 136446210;
        OUTLINED_FUNCTION_31_25(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, bufa, v26, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
        sub_217269EF4(__dst, &v60);
        v34 = sub_217751FA8();
        HIDWORD(v56) = v25;
        v36 = v8;
        v37 = sub_21729C0E8(v34, v35, &v105);

        *(buf + 4) = v37;
        v8 = v36;
        _os_log_impl(&dword_2171EE000, v24, v25, "MusicIdentifierSet: Unable to create a valid cloud resource identifier for %{public}s without a catalogID or libraryID.", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x21CEA4360](v59, -1, -1);
        MEMORY[0x21CEA4360](buf, -1, -1);
      }

      if (v7)
      {
        v11 = v7;
        v13 = v9;
        v12 = v8;
      }

      else
      {
        if (!v11)
        {
          *v106 = 0;
          v107 = 0xE000000000000000;
          sub_217752AA8();
          v60 = *v106;
          v61 = v107;
          OUTLINED_FUNCTION_33_22();
          OUTLINED_FUNCTION_37_23();
          v46 = MEMORY[0x21CEA23B0]();
          OUTLINED_FUNCTION_31_25(v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, buf, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
          sub_217752C78();
          MEMORY[0x21CEA23B0](46, 0xE100000000000000);
          goto LABEL_31;
        }

        sub_217751DE8();
      }

      v15 = __dst[0];
      v14 = __dst[1];
      sub_217751DE8();
      sub_217751DE8();
      goto LABEL_26;
    }

    if (v7)
    {
      v15 = __dst[2];
      v11 = v7;
      v13 = v9;
      v12 = v8;
LABEL_8:
      sub_217751DE8();
      sub_217751DE8();
      v16 = qword_280BE8AC8;
      sub_217751DE8();
      if (v16 != -1)
      {
        swift_once();
      }

      if (v12 == qword_280BE8AD0 && *algn_280BE8AD8 == v11)
      {
      }

      else
      {
        v18 = sub_217753058();

        if ((v18 & 1) == 0)
        {
          *v106 = v12;
          v107 = v11;
          v108 = v13 & 1;
          sub_217751DE8();
          v19.rawValue._countAndFlagsBits = v15;
          v19.rawValue._object = v14;
          v20 = ResourceType.hrefForResource(with:)(v19);
          countAndFlagsBits = v20.value._countAndFlagsBits;
          object = v20.value._object;

LABEL_27:
          *v5 = v15;
          *(v5 + 8) = v14;
          *(v5 + 16) = v12;
          *(v5 + 24) = v11;
          *(v5 + 32) = v13 & 1;
          *(v5 + 40) = countAndFlagsBits;
          *(v5 + 48) = object;
          OUTLINED_FUNCTION_13();
          return;
        }
      }

LABEL_26:
      countAndFlagsBits = 0;
      object = 0;
      goto LABEL_27;
    }
  }

  v107 = 0xE000000000000000;
  sub_217751DE8();
  sub_217752AA8();
  OUTLINED_FUNCTION_33_22();
  OUTLINED_FUNCTION_37_23();
  v38 = MEMORY[0x21CEA23B0]();
  OUTLINED_FUNCTION_31_25(v38, v39, v40, v41, v42, v43, v44, v45, v54, v55, v56, buf, v59, 0, 0xE000000000000000, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, 0);
  sub_217752C78();
  OUTLINED_FUNCTION_37_23();
  MEMORY[0x21CEA23B0](0xD000000000000028);
LABEL_31:
  sub_217752D08();
  __break(1u);
}

uint64_t MusicIdentifierSet.union(_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 264);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v16 = *(v0 + 32);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_217751DE8();
    v10 = OUTLINED_FUNCTION_15();
    if (sub_2174FC648(v10, v11, v6))
    {
      OUTLINED_FUNCTION_35_21();
      v12 = v16;
      if (v3)
      {
        v13 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v13 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v13)
        {
          sub_217751DE8();

          v12 = v16;
        }

        else
        {
          OUTLINED_FUNCTION_35_21();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_35_21();
      v12 = v16;
    }
  }

  else
  {
LABEL_11:
    sub_217751DE8();
    v12 = v16;
  }

  v21 = *v0;
  v22 = v7;
  v23 = v8;
  v24 = v12;
  memcpy(v25, v0 + 33, sizeof(v25));
  v17 = *v2;
  memcpy(v18, v2 + 33, sizeof(v18));
  v19 = v6;
  memcpy(v20, v2 + 17, sizeof(v20));
  sub_2174FC7B8();
  OUTLINED_FUNCTION_13();
}

char *sub_2174FC648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 40);
  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v8 = &v16;
  sub_217753238();
  v9 = *(a3 + 32);
  OUTLINED_FUNCTION_22_33();
  do
  {
    OUTLINED_FUNCTION_28_29(v10);
    if (!v11)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v3);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_196();
    v10 = v3 + 1;
  }

  while ((v14 & 1) == 0);
  return v8;
}

char *sub_2174FC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v9 = *(a5 + 40);
  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  v10 = &v18;
  sub_217753238();
  v11 = *(a5 + 32);
  OUTLINED_FUNCTION_22_33();
  do
  {
    OUTLINED_FUNCTION_28_29(v12);
    if (!v13)
    {
      break;
    }

    v14 = *(a5 + 48) + 32 * v5;
    if (*(v14 + 16) == a3 && *(v14 + 24) == a4)
    {
      break;
    }

    v16 = OUTLINED_FUNCTION_196();
    v12 = v5 + 1;
  }

  while ((v16 & 1) == 0);
  return v10;
}

void sub_2174FC7B8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v110 = *(v3 + 40);
  v126 = *(v3 + 48);
  v44 = *(v3 + 64);
  v45 = *(v3 + 56);
  v46 = *(v3 + 80);
  v93 = *(v3 + 88);
  v95 = *(v3 + 72);
  v59 = *(v3 + 96);
  v61 = *(v3 + 112);
  v89 = *(v3 + 120);
  v91 = *(v3 + 104);
  v87 = *(v3 + 128);
  v65 = *(v3 + 136);
  v124 = *(v3 + 144);
  v4 = *(v3 + 152);
  v63 = *(v3 + 160);
  v57 = *(v3 + 176);
  v58 = *(v3 + 168);
  v47 = *(v3 + 192);
  v48 = *(v3 + 184);
  v67 = *(v3 + 200);
  v99 = *(v3 + 208);
  v56 = *(v3 + 232);
  v53 = *(v3 + 216);
  v55 = *(v3 + 240);
  v51 = *(v3 + 248);
  v49 = *(v3 + 224);
  v50 = *(v3 + 256);
  v73 = *(v3 + 272);
  v77 = *(v3 + 264);
  v78 = *(v3 + 280);
  v5 = *(v3 + 352);
  v7 = *(v6 + 8);
  v86 = *v6;
  v79 = *(v6 + 16);
  v97 = *v0;
  v111 = *(v0 + 8);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v105 = *(v0 + 56);
  v113 = *(v0 + 64);
  v104 = *(v0 + 72);
  v114 = *(v0 + 80);
  v103 = *(v0 + 88);
  v115 = *(v0 + 96);
  v102 = *(v0 + 104);
  v116 = *(v0 + 112);
  v101 = *(v0 + 120);
  v112 = *(v0 + 128);
  v122 = *(v0 + 144);
  v123 = *(v0 + 136);
  v117 = *(v0 + 160);
  v118 = *(v0 + 152);
  v72 = *(v0 + 168);
  v121 = *(v0 + 184);
  v119 = *(v0 + 176);
  v120 = *(v0 + 192);
  v109 = *(v0 + 200);
  v128 = *(v0 + 208);
  v10 = *(v0 + 224);
  v11 = *(v0 + 240);
  v107 = *(v0 + 232);
  v108 = *(v0 + 216);
  v106 = *(v0 + 248);
  v71 = *(v0 + 256);
  v74 = *(v0 + 264);
  v75 = *(v0 + 272);
  v76 = *(v0 + 280);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);
  v70 = *(v0 + 320);
  v69 = *(v0 + 328);
  v85 = *(v0 + 336);
  v84 = *(v0 + 344);
  v15 = *(v0 + 352);
  if (v15 == 4)
  {
    v15 = v5;
  }

  v81 = *(v0 + 296);
  v82 = *(v0 + 288);
  v132[0] = v82;
  v132[1] = v12;
  v80 = v13;
  v132[2] = v13;
  v132[3] = v14;
  v16 = v9;
  v17 = v8;
  v129 = v8;
  if (!v8)
  {
    if (v126)
    {
      v18 = v15;
      v19 = sub_217751DE8();
      v15 = v18;
      v16 = v110;
      v17 = v19;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  v68 = v14;
  v83 = v15;
  if (v15 == 4)
  {
    LOBYTE(v15) = v5;
  }

  LOBYTE(v131) = v15;
  sub_217751DE8();
  sub_217751DE8();
  v20 = static MusicIdentifierSet.preferredIdentifierKinds(for:libraryID:preferredIdentifierKind:)(v132, v16, v17, &v131);

  v21 = v20[2];
  v22 = v126;
  v23 = v10;
  v24 = v99;
  if (!v21)
  {
LABEL_25:
    sub_217751DE8();

    sub_217751DE8();
    v27 = v97;
    goto LABEL_26;
  }

  v25 = 1 - v21;
  v26 = 32;
  while (2)
  {
    if (v25 == 1)
    {
      __break(1u);
      return;
    }

    switch(*(v20 + v26))
    {
      case 1:
        if (v122)
        {
          sub_217751DE8();
          sub_217751DE8();

          v27 = v123;
          v111 = v122;
        }

        else
        {
          if (!v124)
          {
            goto LABEL_23;
          }

          sub_217751DE8();
          sub_217751DE8();

          v27 = v65;
          v111 = v124;
        }

        goto LABEL_26;
      case 2:
        if (v129)
        {
          sub_217751DE8();
          sub_217751DE8();

          v110 = v9;
          v111 = v129;
          v22 = v129;
          v24 = v99;
          goto LABEL_33;
        }

        if (v126)
        {
          sub_217751DE8();
          sub_217751DE8();

          v27 = v110;
          v111 = v126;
          goto LABEL_31;
        }

        goto LABEL_23;
      case 3:
        if (!v128)
        {
          if (v99)
          {
            sub_217751DE8();
            sub_217751DE8();

            v27 = v67;
            v111 = v99;
            goto LABEL_26;
          }

LABEL_23:
          if (!v25)
          {
            goto LABEL_25;
          }

          ++v25;
          ++v26;
          continue;
        }

        sub_217751DE8();
        sub_217751DE8();

        v27 = v109;
        v111 = v128;
        v24 = v99;
LABEL_26:
        if (v129)
        {
          v110 = v9;
          v22 = v129;
          goto LABEL_32;
        }

LABEL_31:
        sub_217751DE8();
LABEL_32:
        v9 = v27;
LABEL_33:
        v100 = v113;
        if (!v113)
        {
          v105 = v45;
          v100 = sub_217751DE8();
        }

        v98 = v114;
        if (!v114)
        {
          v104 = v95;
          v98 = sub_217751DE8();
        }

        v96 = v115;
        if (!v115)
        {
          v103 = v93;
          v96 = sub_217751DE8();
        }

        v94 = v116;
        if (!v116)
        {
          v102 = v91;
          v94 = sub_217751DE8();
        }

        v92 = v112;
        if (!v112)
        {
          v101 = v89;
          v92 = sub_217751DE8();
        }

        v127 = v22;
        v28 = v123;
        v29 = v122;
        v90 = v118;
        v88 = v117;
        if (!v122)
        {
          v28 = v65;
          sub_2172A5428(v65, v124);
          v29 = v124;
          v88 = v63;
          v90 = v4;
        }

        v62 = v29;
        v64 = v28;
        v30 = v128;
        if (!v128)
        {
          sub_217751DE8();
          v109 = v67;
          v30 = v24;
        }

        v60 = v30;
        v31 = v72;
        v32 = v120;
        v33 = v119;
        v125 = v121;
        if (!v119)
        {
          v33 = v57;
          v31 = v58;
          sub_2172A5428(v58, v57);
          v125 = v48;
          v32 = v47;
        }

        v34 = v23;
        if (!v23)
        {
          v108 = v53;
          v34 = sub_217751DE8();
        }

        v35 = v11;
        if (!v11)
        {
          v35 = sub_217751DE8();
          v107 = v56;
        }

        v54 = v35;
        v66 = v9;
        v36 = v71;
        if (!v71)
        {
          v36 = sub_217751DE8();
          v106 = v51;
        }

        v52 = v36;
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2172A5428(v123, v122);
        sub_2172A5428(v72, v119);
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        v37 = sub_2174FF70C(v77, v74);
        v130 = v76;
        v131 = v78;
        sub_217751DE8();
        sub_2172AC64C(v70);
        sub_217751DE8();
        sub_217751DE8();
        MusicItemDataSourceCollection.union(_:)(&v130);

        v38 = v132[0];
        OUTLINED_FUNCTION_16_38();
        *v2 = v66;
        *(v2 + 8) = v111;

        *(v2 + 16) = v86;
        *(v2 + 24) = v7;
        *(v2 + 32) = v79;
        *(v2 + 40) = v110;
        *(v2 + 48) = v127;
        *(v2 + 56) = v105;
        *(v2 + 64) = v100;
        *(v2 + 72) = v104;
        *(v2 + 80) = v98;
        *(v2 + 88) = v103;
        *(v2 + 96) = v96;
        *(v2 + 104) = v102;
        *(v2 + 112) = v94;
        *(v2 + 120) = v101;
        *(v2 + 128) = v92;
        OUTLINED_FUNCTION_47_18();
        *(v2 + 136) = v64;
        *(v2 + 144) = v62;
        *(v2 + 152) = v90;
        *(v2 + 160) = v88;
        *(v2 + 200) = v109;
        *(v2 + 208) = v60;
        v39 = *(v2 + 184);
        v40 = *(v2 + 192);
        sub_2172B8404(*(v2 + 168), *(v2 + 176));
        *(v2 + 168) = v31;
        *(v2 + 176) = v33;
        *(v2 + 184) = v125;
        *(v2 + 192) = v32;
        *(v2 + 216) = v108;
        *(v2 + 224) = v34;
        *(v2 + 232) = v107;
        *(v2 + 240) = v54;
        *(v2 + 248) = v106;
        *(v2 + 256) = v52;
        *(v2 + 264) = v37;
        *(v2 + 272) = (v75 | v73) & 1;
        *(v2 + 288) = v82;
        *(v2 + 296) = v81;
        *(v2 + 304) = v80;
        *(v2 + 312) = v68;
        v41 = *(v2 + 328);
        v42 = *(v2 + 336);
        v43 = *(v2 + 344);
        sub_2172AC65C(*(v2 + 320));
        *(v2 + 320) = v70;
        *(v2 + 328) = v69;
        *(v2 + 336) = v85;
        *(v2 + 344) = v84;
        *(v2 + 280) = v38;
        *(v2 + 352) = v83;
        OUTLINED_FUNCTION_13();
        return;
      default:
        if (!v7)
        {
          goto LABEL_23;
        }

        swift_bridgeObjectRetain_n();

        v27 = v86;
        v111 = v7;
        goto LABEL_26;
    }
  }
}

void *static MusicIdentifierSet.preferredIdentifierKinds(for:libraryID:preferredIdentifierKind:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a4;
  if (dynamic_cast_existential_1_conditional(*a1))
  {
    v10 = (*(v9 + 8))();
  }

  else
  {
    v10 = &unk_282959D58;
  }

  if (dynamic_cast_existential_1_conditional(v5))
  {
    if (qword_280BE90D0 != -1)
    {
      swift_once();
    }

    if (v6 != qword_280BE90E8 || v7 != unk_280BE90F0)
    {
      OUTLINED_FUNCTION_15();
      if ((sub_217753058() & 1) == 0)
      {
        if (a3)
        {
          if (sub_2177520C8())
          {
            v12 = &unk_282959D08;
LABEL_17:

            v10 = v12;
            goto LABEL_18;
          }

          if (sub_2177520C8())
          {
            v12 = &unk_282959C18;
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_18:
  if (v8 != 4)
  {
    v13 = sub_2174FF868(v8, v10);
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2175035F8(v10);
        v10 = v18;
      }

      v16 = v10[2];
      if (v15 >= v16)
      {
        __break(1u);
      }

      else
      {
        memmove(v10 + v15 + 32, v10 + v15 + 33, v16 - 1 - v15);
        v10[2] = v16 - 1;
        if (v16 <= v10[3] >> 1)
        {
LABEL_24:
          sub_21750390C(0, 0, 1, v8);
          return v10;
        }
      }

      sub_2172B2580(1, v16, 1, v10);
      v10 = v19;
      goto LABEL_24;
    }
  }

  return v10;
}

void MusicIdentifierSet.init(catalogID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  v1 = v0;
  v3 = v2;
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 16);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *v10;
  bzero((v2 + 56), 0xD0uLL);
  *(v3 + 264) = MEMORY[0x277D84FA0];
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *v3 = v6;
  *(v3 + 8) = v5;
  sub_217751DE8();

  *(v3 + 16) = v6;
  *(v3 + 24) = v5;
  *(v3 + 32) = v7;
  *(v3 + 272) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 288) = *v1;
  *(v3 + 304) = v8;
  *(v3 + 312) = v9;
  *(v3 + 280) = v11;
  *(v3 + 352) = 4;
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(libraryID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60(v3, v4, v5, v6);
  bzero((v7 + 56), 0xD0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  *(v2 + 48) = v0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(cloudAlbumLibraryID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60(v3, v4, v5, v6);
  bzero((v7 + 72), 0xC0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  *(v2 + 56) = v1;
  *(v2 + 64) = v0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(deviceLocalID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_12();
  v9 = OUTLINED_FUNCTION_27_30(v5, v6, v7, v8);
  bzero(v9, 0xD0uLL);
  v0[33] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_47_18();
  v0[17] = v2;
  v0[18] = v1;
  v0[19] = v3;
  v0[20] = v4;
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_13();
}

void MusicIdentifierSet.init(occurrenceID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = *v9;
  bzero((v4 + 56), 0x90uLL);
  *(v5 + 248) = 0u;
  *(v5 + 232) = 0u;
  v11 = MEMORY[0x277D84FA0];
  *(v5 + 216) = 0u;
  *(v5 + 264) = v11;
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  OUTLINED_FUNCTION_47_18();
  *(v5 + 152) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 200) = v3;
  *(v5 + 208) = v1;
  OUTLINED_FUNCTION_20_30();
  *(v5 + 304) = v7;
  *(v5 + 312) = v8;
  *(v5 + 280) = v10;
  *(v5 + 352) = 4;
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(playbackID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60(v3, v4, v5, v6);
  bzero((v7 + 56), 0xB0uLL);
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  v8 = *(v2 + 152);
  v9 = *(v2 + 160);
  sub_2172B8404(*(v2 + 136), *(v2 + 144));
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 232) = v1;
  *(v2 + 240) = v0;
  *(v2 + 272) = 0;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(containedDeviceLocalID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_12();
  v9 = OUTLINED_FUNCTION_27_30(v5, v6, v7, v8);
  bzero(v9, 0xC0uLL);
  v0[33] = MEMORY[0x277D84FA0];
  OUTLINED_FUNCTION_40_22(0);

  OUTLINED_FUNCTION_34_23();
  v10 = v0[23];
  v11 = v0[24];
  sub_2172B8404(v0[21], v0[22]);
  v0[21] = v2;
  v0[22] = v1;
  v0[23] = v3;
  v0[24] = v4;
  v0[31] = 0;
  v0[32] = 0;
  OUTLINED_FUNCTION_20_30();
  OUTLINED_FUNCTION_44_19();
  OUTLINED_FUNCTION_13();
}

Swift::Bool __swiftcall MusicIdentifierSet.contains(_:)(MusicKit::MusicItemID a1)
{
  object = a1.rawValue._object;
  countAndFlagsBits = a1.rawValue._countAndFlagsBits;
  if (*v1 == a1.rawValue._countAndFlagsBits && *(v1 + 8) == a1.rawValue._object)
  {
    goto LABEL_78;
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 80);
  v41 = *(v1 + 88);
  v42 = *(v1 + 96);
  v43 = *(v1 + 72);
  v39 = *(v1 + 104);
  v40 = *(v1 + 112);
  v37 = *(v1 + 120);
  v38 = *(v1 + 128);
  v35 = *(v1 + 136);
  v36 = *(v1 + 144);
  v31 = *(v1 + 168);
  v32 = *(v1 + 176);
  v33 = *(v1 + 200);
  v34 = *(v1 + 208);
  v29 = *(v1 + 216);
  v30 = *(v1 + 224);
  v27 = *(v1 + 232);
  v28 = *(v1 + 240);
  v12 = *(v1 + 264);
  if (OUTLINED_FUNCTION_9_40())
  {
    goto LABEL_78;
  }

  if (v6)
  {
    v13 = v5 == countAndFlagsBits && v6 == object;
    if (v13 || (OUTLINED_FUNCTION_9_40() & 1) != 0)
    {
      goto LABEL_78;
    }
  }

  if (v8)
  {
    v14 = v7 == countAndFlagsBits && v8 == object;
    if (v14 || (OUTLINED_FUNCTION_9_40() & 1) != 0)
    {
      goto LABEL_78;
    }
  }

  if (v10)
  {
    if (v9 == countAndFlagsBits && v10 == object)
    {
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_15();
    if (OUTLINED_FUNCTION_9_40())
    {
      goto LABEL_78;
    }
  }

  if (v11)
  {
    v16 = v43 == countAndFlagsBits && v11 == object;
    if (v16 || (OUTLINED_FUNCTION_9_40() & 1) != 0)
    {
      goto LABEL_78;
    }
  }

  if (v42)
  {
    v17 = v41 == countAndFlagsBits && v42 == object;
    if (v17 || (OUTLINED_FUNCTION_9_40() & 1) != 0)
    {
      goto LABEL_78;
    }
  }

  if (v40 && (v39 == countAndFlagsBits ? (v18 = v40 == object) : (v18 = 0), v18 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v38 && (v37 == countAndFlagsBits ? (v19 = v38 == object) : (v19 = 0), v19 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v36 && (v35 == countAndFlagsBits ? (v20 = v36 == object) : (v20 = 0), v20 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v34 && (v33 == countAndFlagsBits ? (v21 = v34 == object) : (v21 = 0), v21 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v32 && (v31 == countAndFlagsBits ? (v22 = v32 == object) : (v22 = 0), v22 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v30 && (v29 == countAndFlagsBits ? (v23 = v30 == object) : (v23 = 0), v23 || (OUTLINED_FUNCTION_9_40() & 1) != 0) || v28 && (v27 == countAndFlagsBits ? (v24 = v28 == object) : (v24 = 0), v24 || (OUTLINED_FUNCTION_9_40() & 1) != 0))
  {
LABEL_78:
    v25 = 1;
  }

  else
  {
    v25 = sub_2174FC648(countAndFlagsBits, object, v12);
  }

  return v25 & 1;
}

uint64_t MusicIdentifierSet.isLibraryResource.getter()
{
  v1 = *(v0 + 280);
  if (!v1[2] || (v2 = *(v0 + 272), v3 = v1[4], v4 = v1[5], v5 = OUTLINED_FUNCTION_20_6(), sub_21726B87C(v5, v6), v4 == 9))
  {
    v23 = OUTLINED_FUNCTION_38_20();
    sub_21726B8B4(v23, v24);
    v25 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v25, v26);
    sub_21726B890(0, 6uLL);
    v27 = OUTLINED_FUNCTION_38_20();
    sub_21726B8B4(v27, v28);
    v29 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v29, v30);
    sub_21726B890(0, 1uLL);
    v31 = OUTLINED_FUNCTION_38_20();
    sub_21726B890(v31, v32);
    sub_21726B890(0, 5uLL);
    return 0;
  }

  v40 = v3;
  v41 = v4;
  v39 = xmmword_21775A450;
  v7 = OUTLINED_FUNCTION_20_6();
  sub_21726B8B4(v7, v8);
  v9 = OUTLINED_FUNCTION_20_6();
  sub_21726B8B4(v9, v10);
  v11 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
  sub_21726B8A0(v39, *(&v39 + 1));
  sub_21726B8A0(v40, v41);
  v12 = OUTLINED_FUNCTION_20_6();
  sub_21726B890(v12, v13);
  if ((v11 & 1) == 0)
  {
    v40 = v3;
    v41 = v4;
    v39 = xmmword_2177586D0;
    v14 = OUTLINED_FUNCTION_20_6();
    sub_21726B8B4(v14, v15);
    v16 = OUTLINED_FUNCTION_20_6();
    sub_21726B8B4(v16, v17);
    v18 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
    sub_21726B8A0(v39, *(&v39 + 1));
    sub_21726B8A0(v40, v41);
    v19 = OUTLINED_FUNCTION_20_6();
    sub_21726B890(v19, v20);
    if ((v18 & 1) == 0)
    {
      v40 = v3;
      v41 = v4;
      v39 = xmmword_21775A430;
      v34 = OUTLINED_FUNCTION_20_6();
      sub_21726B8B4(v34, v35);
      v36 = static MusicItemDataSource.== infix(_:_:)(&v40, &v39);
      sub_21726B8A0(v39, *(&v39 + 1));
      sub_21726B8A0(v40, v41);
      v37 = OUTLINED_FUNCTION_20_6();
      sub_21726B890(v37, v38);
      if (v36)
      {
        return v2;
      }

      return 0;
    }
  }

  v21 = OUTLINED_FUNCTION_20_6();
  sub_21726B890(v21, v22);
  return 1;
}

void static MusicIdentifierSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v207 = *(v0 + 48);
  v198 = *(v0 + 56);
  v205 = *(v0 + 40);
  v206 = *(v0 + 64);
  v196 = *(v0 + 72);
  v204 = *(v0 + 80);
  v191 = *(v0 + 88);
  v202 = *(v0 + 96);
  v194 = *(v0 + 112);
  v180 = *(v0 + 120);
  v188 = *(v0 + 104);
  v189 = *(v0 + 128);
  v186 = *(v0 + 144);
  v187 = *(v0 + 136);
  v184 = *(v0 + 152);
  v185 = *(v0 + 160);
  v178 = *(v0 + 168);
  v179 = *(v0 + 176);
  v177 = *(v0 + 184);
  v174 = *(v0 + 192);
  v167 = *(v0 + 200);
  v171 = *(v0 + 208);
  v163 = *(v0 + 216);
  v169 = *(v0 + 224);
  v159 = *(v0 + 232);
  v165 = *(v0 + 240);
  v157 = *(v0 + 248);
  v161 = *(v0 + 256);
  v155 = *(v0 + 264);
  v153 = *(v0 + 272);
  v151 = *(v0 + 280);
  v144 = *(v0 + 312);
  v145 = *(v0 + 304);
  v141 = *(v0 + 328);
  v147 = *(v0 + 336);
  v148 = *(v0 + 344);
  v149 = *(v0 + 320);
  v137 = *(v0 + 352);
  v5 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v10 = *(v1 + 40);
  v9 = *(v1 + 48);
  v12 = *(v1 + 56);
  v11 = *(v1 + 64);
  v195 = *(v1 + 72);
  v199 = *(v1 + 80);
  v190 = *(v1 + 88);
  v197 = *(v1 + 96);
  v200 = *(v1 + 104);
  v192 = *(v1 + 112);
  v201 = *(v1 + 120);
  v193 = *(v1 + 128);
  v203 = *(v1 + 136);
  v181 = *(v1 + 152);
  v182 = *(v1 + 160);
  v183 = *(v1 + 144);
  v175 = *(v1 + 176);
  v176 = *(v1 + 168);
  v172 = *(v1 + 184);
  v173 = *(v1 + 192);
  v166 = *(v1 + 200);
  v170 = *(v1 + 208);
  v162 = *(v1 + 216);
  v168 = *(v1 + 224);
  v158 = *(v1 + 232);
  v164 = *(v1 + 240);
  v156 = *(v1 + 248);
  v160 = *(v1 + 256);
  v154 = *(v1 + 264);
  v152 = *(v1 + 272);
  v150 = *(v1 + 280);
  v142 = *(v1 + 312);
  v143 = *(v1 + 304);
  v146 = *(v1 + 320);
  v138 = *(v1 + 328);
  v139 = *(v1 + 336);
  v140 = *(v1 + 344);
  v136 = *(v1 + 352);
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_113;
  }

  if (!v3)
  {
    if (!v7)
    {

      goto LABEL_20;
    }

LABEL_15:
    sub_217751DE8();

    goto LABEL_113;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  if (v2 == v6 && v3 == v7)
  {
    OUTLINED_FUNCTION_43_14();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v14 = sub_217753058();
    OUTLINED_FUNCTION_43_14();
    swift_bridgeObjectRetain_n();
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_43_14();
      swift_bridgeObjectRelease_n();
      goto LABEL_113;
    }
  }

  OUTLINED_FUNCTION_43_14();
  swift_bridgeObjectRelease_n();
  if (v4 != v8)
  {
    goto LABEL_113;
  }

LABEL_20:
  if (!v207)
  {
    if (v9)
    {
      goto LABEL_113;
    }

LABEL_29:
    if (v206)
    {
      if (!v11)
      {
        goto LABEL_113;
      }

      v16 = v198 == v12 && v206 == v11;
      if (!v16 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (v11)
    {
      goto LABEL_113;
    }

    if (v204)
    {
      v17 = v202;
      v18 = v203;
      v20 = v200;
      v19 = v201;
      if (!v199)
      {
        goto LABEL_113;
      }

      v21 = v196 == v195 && v204 == v199;
      if (!v21 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v17 = v202;
      v18 = v203;
      v20 = v200;
      v19 = v201;
      if (v199)
      {
        goto LABEL_113;
      }
    }

    if (v17)
    {
      if (!v197)
      {
        goto LABEL_113;
      }

      v22 = v191 == v190 && v17 == v197;
      if (!v22 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (v197)
    {
      goto LABEL_113;
    }

    if (v194)
    {
      v23 = v193;
      if (!v192)
      {
        goto LABEL_113;
      }

      v24 = v188 == v20 && v194 == v192;
      if (!v24 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v23 = v193;
      if (v192)
      {
        goto LABEL_113;
      }
    }

    if (v189)
    {
      if (!v23)
      {
        goto LABEL_113;
      }

      if (v180 != v19 || v189 != v23)
      {
        OUTLINED_FUNCTION_742();
        if ((sub_217753058() & 1) == 0)
        {
          goto LABEL_113;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_113;
    }

    v26 = v186;
    if (v186)
    {
      v27 = v187;
      v28 = v183;
      if (v183)
      {
        if (v187 != v18 || v186 != v183)
        {
          OUTLINED_FUNCTION_16_0();
          if ((sub_217753058() & 1) == 0)
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_742();
            sub_2172A5428(v84, v85);
            OUTLINED_FUNCTION_184_1();
            sub_2172A5428(v86, v87);
            v88 = OUTLINED_FUNCTION_4_65();
            sub_2172A5428(v88, v89);
            goto LABEL_135;
          }
        }

        if (v184 != v181 || v185 != v182)
        {
          OUTLINED_FUNCTION_23_33();
          v31 = sub_217753058();
          v32 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v32, v33);
          OUTLINED_FUNCTION_17_31();
          sub_2172A5428(v34, v35);
          v36 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v36, v37);
          OUTLINED_FUNCTION_17_31();
          sub_2172B8404(v38, v39);

          v40 = OUTLINED_FUNCTION_5_1();
          sub_2172B8404(v40, v41);
          if ((v31 & 1) == 0)
          {
            goto LABEL_113;
          }

          goto LABEL_94;
        }

        v54 = OUTLINED_FUNCTION_4_65();
        sub_2172A5428(v54, v55);
        OUTLINED_FUNCTION_6_49();
        sub_2172A5428(v56, v57);
        v58 = OUTLINED_FUNCTION_4_65();
        sub_2172A5428(v58, v59);
        OUTLINED_FUNCTION_6_49();
        sub_2172B8404(v60, v61);

LABEL_93:
        v62 = OUTLINED_FUNCTION_4_65();
        sub_2172B8404(v62, v63);
LABEL_94:
        v64 = v178;
        if (v179)
        {
          v65 = v174;
          v66 = v175;
          if (v175)
          {
            v67 = v178 == v176 && v179 == v175;
            if (v67 || (v68 = sub_217753058(), v64 = v178, (v68 & 1) != 0))
            {
              if (v177 != v172 || v174 != v173)
              {
                OUTLINED_FUNCTION_23_33();
                v70 = sub_217753058();
                v71 = OUTLINED_FUNCTION_5_1();
                sub_2172A5428(v71, v72);
                OUTLINED_FUNCTION_17_31();
                sub_2172A5428(v73, v74);
                v75 = OUTLINED_FUNCTION_5_1();
                sub_2172A5428(v75, v76);
                OUTLINED_FUNCTION_17_31();
                sub_2172B8404(v77, v78);

                v79 = OUTLINED_FUNCTION_5_1();
                sub_2172B8404(v79, v80);
                if ((v70 & 1) == 0)
                {
                  goto LABEL_113;
                }

LABEL_117:
                if (v171)
                {
                  if (!v170)
                  {
                    goto LABEL_113;
                  }

                  v103 = v167 == v166 && v171 == v170;
                  if (!v103 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v170)
                {
                  goto LABEL_113;
                }

                if (v169)
                {
                  if (!v168)
                  {
                    goto LABEL_113;
                  }

                  v104 = v163 == v162 && v169 == v168;
                  if (!v104 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v168)
                {
                  goto LABEL_113;
                }

                if (v165)
                {
                  if (!v164)
                  {
                    goto LABEL_113;
                  }

                  v115 = v159 == v158 && v165 == v164;
                  if (!v115 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v164)
                {
                  goto LABEL_113;
                }

                if (v161)
                {
                  if (!v160)
                  {
                    goto LABEL_113;
                  }

                  v116 = v157 == v156 && v161 == v160;
                  if (!v116 && (sub_217753058() & 1) == 0)
                  {
                    goto LABEL_113;
                  }
                }

                else if (v160)
                {
                  goto LABEL_113;
                }

                if ((sub_2172A9110(v155, v154) & 1) == 0)
                {
                  goto LABEL_113;
                }

                if ((v153 ^ v152))
                {
                  goto LABEL_113;
                }

                v208 = v151;
                sub_217751DE8();
                sub_217751DE8();
                sub_217710EFC();
                sub_217710EFC();
                OUTLINED_FUNCTION_93();
                sub_217275068();
                v118 = v117;

                if ((v118 & 1) == 0)
                {
                  goto LABEL_113;
                }

                v119 = v145 == v143 && v144 == v142;
                if (!v119 && (sub_217753058() & 1) == 0)
                {
                  goto LABEL_113;
                }

                if (v149)
                {
                  if (v146)
                  {
                    if (v147 != v139 || v148 != v140)
                    {
                      OUTLINED_FUNCTION_23_33();
                      sub_217753058();
                      OUTLINED_FUNCTION_114();
                      sub_2172AC64C(v121);
                      OUTLINED_FUNCTION_23_33();
                      sub_2172AC64C(v122);
                      OUTLINED_FUNCTION_114();
                      sub_2172AC64C(v123);
                      OUTLINED_FUNCTION_23_33();
                      sub_2172AC65C(v124);

                      OUTLINED_FUNCTION_114();
                      sub_2172AC65C(v125);
                      goto LABEL_113;
                    }

                    OUTLINED_FUNCTION_742();
                    sub_2172AC64C(v131);
                    OUTLINED_FUNCTION_6_49();
                    sub_2172AC64C(v132);
                    OUTLINED_FUNCTION_742();
                    sub_2172AC64C(v133);
                    OUTLINED_FUNCTION_6_49();
                    sub_2172AC65C(v134);

LABEL_176:
                    sub_2172AC65C(v149);
                    goto LABEL_113;
                  }

                  OUTLINED_FUNCTION_742();
                  sub_2172AC64C(v127);
                  OUTLINED_FUNCTION_41_20();
                  sub_2172AC64C(v128);
                  OUTLINED_FUNCTION_742();
                  sub_2172AC64C(v129);
                }

                else
                {
                  sub_2172AC64C(0);
                  if (!v146)
                  {
                    OUTLINED_FUNCTION_41_20();
                    sub_2172AC64C(v135);
                    v149 = 0;
                    goto LABEL_176;
                  }

                  OUTLINED_FUNCTION_41_20();
                  sub_2172AC64C(v126);
                }

                sub_2172AC65C(v149);
                OUTLINED_FUNCTION_41_20();
                sub_2172AC65C(v130);
                goto LABEL_113;
              }

              sub_2172A5428(v64, v179);
              OUTLINED_FUNCTION_6_49();
              sub_2172A5428(v96, v97);
              OUTLINED_FUNCTION_742();
              sub_2172A5428(v98, v99);
              OUTLINED_FUNCTION_6_49();
              sub_2172B8404(v100, v101);

              v102 = v179;
LABEL_116:
              sub_2172B8404(v178, v102);
              goto LABEL_117;
            }

            OUTLINED_FUNCTION_742();
            sub_2172A5428(v105, v106);
            OUTLINED_FUNCTION_184_1();
            sub_2172A5428(v107, v108);
            v109 = OUTLINED_FUNCTION_4_65();
            sub_2172A5428(v109, v110);
LABEL_135:
            OUTLINED_FUNCTION_184_1();
            sub_2172B8404(v111, v112);

            v113 = OUTLINED_FUNCTION_4_65();
            sub_2172B8404(v113, v114);
            goto LABEL_113;
          }

          OUTLINED_FUNCTION_742();
          sub_2172A5428(v90, v91);
          v81 = v176;
          v43 = v172;
          v42 = v173;
          OUTLINED_FUNCTION_184_1();
          sub_2172A5428(v92, v93);
          v94 = OUTLINED_FUNCTION_4_65();
          sub_2172A5428(v94, v95);
        }

        else
        {
          v65 = v174;
          sub_2172A5428(v178, 0);
          v66 = v175;
          if (!v175)
          {
            sub_2172A5428(v176, 0);
            v102 = 0;
            goto LABEL_116;
          }

          v81 = v176;
          v43 = v172;
          v42 = v173;
          OUTLINED_FUNCTION_184_1();
          sub_2172A5428(v82, v83);
        }

        v208 = v178;
        v209 = v179;
        v210 = v177;
        v211 = v65;
        v212 = v81;
        v213 = v66;
LABEL_112:
        v214 = v43;
        v215 = v42;
        sub_2171F0738(&v208, &qword_27CB28B80, &qword_217771690);
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_16_0();
      v47 = v184;
      v46 = v185;
      OUTLINED_FUNCTION_742();
      sub_2172A5428(v48, v49);
      v43 = v181;
      v42 = v182;
      OUTLINED_FUNCTION_184_1();
      sub_2172A5428(v50, v51);
      v52 = OUTLINED_FUNCTION_4_65();
      sub_2172A5428(v52, v53);
    }

    else
    {
      sub_2172A5428(v187, 0);
      v28 = v183;
      if (!v183)
      {
        sub_2172A5428(v18, 0);
        goto LABEL_93;
      }

      v43 = v181;
      v42 = v182;
      OUTLINED_FUNCTION_184_1();
      sub_2172A5428(v44, v45);
      v47 = v184;
      v46 = v185;
      v26 = 0;
      v27 = v187;
    }

    v208 = v27;
    v209 = v26;
    v210 = v47;
    v211 = v46;
    v212 = v18;
    v213 = v28;
    goto LABEL_112;
  }

  if (v9)
  {
    v15 = v205 == v10 && v207 == v9;
    if (v15 || (sub_217753058() & 1) != 0)
    {
      goto LABEL_29;
    }
  }

LABEL_113:
  OUTLINED_FUNCTION_13();
}

Swift::Void __swiftcall MusicIdentifierSet.removingDeviceLocalIdentifiers()()
{
  v1 = v0[19];
  v2 = v0[20];
  sub_2172B8404(v0[17], v0[18]);
  *(v0 + 19) = 0u;
  *(v0 + 17) = 0u;
}

void sub_2174FE570()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v44 = *(v0 + 288);
  v45 = v3;
  v46 = v4;
  v43 = *(v0 + 280);
  v42 = 4;
  swift_unknownObjectRetain();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172B6904(v2, &v44, &v43, &v42, v47);
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
  }

  else
  {
    v6 = v48;
    v7 = v49;
    v5 = sub_217751DE8();
  }

  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v7;
  v8 = *(v0 + 48);
  if (v8)
  {
    v9 = *(v0 + 40);
  }

  else
  {
    v9 = v50;
    v8 = sub_217751DE8();
  }

  *(v0 + 40) = v9;
  *(v0 + 48) = v8;
  v10 = *(v0 + 64);
  if (v10)
  {
    v11 = *(v0 + 56);
  }

  else
  {
    v11 = v51;
    v10 = sub_217751DE8();
  }

  *(v0 + 56) = v11;
  *(v0 + 64) = v10;
  v12 = *(v0 + 80);
  if (v12)
  {
    v13 = *(v0 + 72);
  }

  else
  {
    v13 = v52;
    v12 = sub_217751DE8();
  }

  *(v0 + 72) = v13;
  *(v0 + 80) = v12;
  v14 = *(v0 + 96);
  if (v14)
  {
    v15 = *(v0 + 88);
  }

  else
  {
    v15 = v53;
    v14 = sub_217751DE8();
  }

  *(v0 + 88) = v15;
  *(v0 + 96) = v14;
  v16 = *(v0 + 112);
  if (v16)
  {
    v17 = *(v0 + 104);
  }

  else
  {
    v17 = v54;
    v16 = sub_217751DE8();
  }

  *(v0 + 104) = v17;
  *(v0 + 112) = v16;
  v18 = *(v0 + 128);
  if (v18)
  {
    v19 = *(v0 + 120);
  }

  else
  {
    v19 = v55;
    v18 = sub_217751DE8();
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  *(v0 + 120) = v19;
  *(v0 + 128) = v18;
  v40 = v22;
  v41 = v23;
  v39 = v21;
  v24 = v20;
  if (!v22)
  {
    v24 = v59;
    v40 = v57;
    v41 = v56;
    v39 = v58;
    sub_2172A5428(v56, v57);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
  }

  v27 = OUTLINED_FUNCTION_20_6();
  sub_2172A5428(v27, v28);
  sub_2172B8404(v23, v22);
  *(v0 + 136) = v41;
  *(v0 + 144) = v40;
  *(v0 + 152) = v39;
  *(v0 + 160) = v24;
  v29 = *(v0 + 208);
  if (v29)
  {
    v30 = *(v0 + 200);
  }

  else
  {
    v30 = v60;
    v29 = sub_217751DE8();
  }

  *(v0 + 200) = v30;
  *(v0 + 208) = v29;
  v31 = *(v0 + 240);
  if (v31)
  {
    v32 = *(v0 + 232);
  }

  else
  {
    v32 = v61;
    v31 = sub_217751DE8();
  }

  *(v0 + 232) = v32;
  *(v0 + 240) = v31;
  v33 = *(v0 + 264);
  v34 = sub_217751DE8();
  *(v0 + 264) = sub_2174FF70C(v34, v33);
  v35 = *(v0 + 256);
  if (v35)
  {
    v36 = *(v0 + 248);
  }

  else
  {
    v36 = v62;
    v35 = sub_217751DE8();
  }

  *(v0 + 248) = v36;
  *(v0 + 256) = v35;
  v37 = *(v0 + 352);
  sub_217269F50(v47);
  v38 = v63;
  if (v37 != 4)
  {
    v38 = v37;
  }

  *(v0 + 352) = v38;
  OUTLINED_FUNCTION_13();
}

__n128 MusicIdentifierSet.init(id:catalogID:libraryID:cloudAlbumLibraryID:cloudID:reportingAdamID:purchasedAdamID:assetAdamID:deviceLocalID:occurrenceID:containedDeviceLocalID:syncID:playbackID:userID:formerIDs:isLibrary:typeValue:innerTypeValue:dataSources:preferredIdentifierKind:)@<Q0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, __int128 a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, __int128 *a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t *a23, char *a24)
{
  v27 = *a1;
  v28 = a1[1];
  v29 = *(a1 + 16);
  v44 = *(a21 + 24);
  v45 = *(a21 + 16);
  v47 = *a23;
  v46 = *a24;
  OUTLINED_FUNCTION_16_38();
  *a7 = v30;
  *(a7 + 8) = v31;

  *(a7 + 16) = v27;
  *(a7 + 24) = v28;
  *(a7 + 32) = v29;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  *(a7 + 80) = a8;
  *(a7 + 96) = a9;
  *(a7 + 112) = a10;
  *(a7 + 128) = a11;
  OUTLINED_FUNCTION_47_18();
  v32 = *a12;
  *(a7 + 152) = a12[1];
  *(a7 + 136) = v32;
  *(a7 + 200) = a13;
  *(a7 + 208) = a14;
  v33 = *(a7 + 184);
  v34 = *(a7 + 192);
  sub_2172B8404(*(a7 + 168), *(a7 + 176));
  v35 = *a15;
  *(a7 + 184) = a15[1];
  *(a7 + 168) = v35;
  *(a7 + 216) = a16;
  *(a7 + 232) = a17;
  *(a7 + 248) = a18;
  *(a7 + 264) = a19;
  *(a7 + 272) = a20;
  *(a7 + 288) = *a21;
  *(a7 + 304) = v45;
  *(a7 + 312) = v44;
  v36 = *(a7 + 328);
  v37 = *(a7 + 336);
  v38 = *(a7 + 344);
  sub_2172AC65C(*(a7 + 320));
  result = *a22;
  v40 = *(a22 + 16);
  *(a7 + 320) = *a22;
  *(a7 + 336) = v40;
  *(a7 + 280) = v47;
  *(a7 + 352) = v46;
  return result;
}

void MusicIdentifierSet.init(userID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60(v3, v4, v5, v6);
  bzero((v7 + 56), 0xC0uLL);
  OUTLINED_FUNCTION_10_38(MEMORY[0x277D84FA0]);

  OUTLINED_FUNCTION_21_30();
  *(v2 + 248) = v1;
  *(v2 + 256) = v0;
  *(v2 + 272) = 0;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

void MusicIdentifierSet.init(purchasedAdamID:typeValue:dataSources:)()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_3_60(v3, v4, v5, v6);
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  v8 = MEMORY[0x277D84FA0];
  *(v2 + 232) = 0u;
  *(v2 + 264) = v8;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *v2 = v9;
  *(v2 + 8) = v10;
  sub_217751DE8();

  OUTLINED_FUNCTION_21_30();
  *(v2 + 104) = v1;
  *(v2 + 112) = v0;
  *(v2 + 248) = 0;
  *(v2 + 256) = 0;
  *(v2 + 272) = 1;
  OUTLINED_FUNCTION_2_74();
  OUTLINED_FUNCTION_218();
}

uint64_t MusicIdentifierSet.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.catalogID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_217751DE8();
}

uint64_t MusicIdentifierSet.catalogID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t MusicIdentifierSet.libraryID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.libraryID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MusicIdentifierSet.cloudAlbumLibraryID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.cloudAlbumLibraryID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MusicIdentifierSet.cloudID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.cloudID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t MusicIdentifierSet.reportingAdamID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.reportingAdamID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t MusicIdentifierSet.purchasedAdamID.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.purchasedAdamID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t MusicIdentifierSet.assetAdamID.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.assetAdamID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

__n128 MusicIdentifierSet.deviceLocalID.setter(uint64_t a1)
{
  v3 = v1[19];
  v4 = v1[20];
  sub_2172B8404(v1[17], v1[18]);
  result = *a1;
  *(v1 + 19) = *(a1 + 16);
  *(v1 + 17) = result;
  return result;
}

__n128 MusicIdentifierSet.containedDeviceLocalID.setter(uint64_t a1)
{
  v3 = v1[23];
  v4 = v1[24];
  sub_2172B8404(v1[21], v1[22]);
  result = *a1;
  *(v1 + 23) = *(a1 + 16);
  *(v1 + 21) = result;
  return result;
}

uint64_t MusicIdentifierSet.occurrenceID.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.occurrenceID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 208);

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t MusicIdentifierSet.syncID.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.syncID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 224);

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t MusicIdentifierSet.playbackID.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.playbackID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t MusicIdentifierSet.userID.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicIdentifierSet.userID.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = *(v1 + 256);

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t MusicIdentifierSet.formerIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 264);

  *(v1 + 264) = a1;
  return result;
}

uint64_t MusicIdentifierSet.dataSources.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 280);

  *(v1 + 280) = v2;
  return result;
}

uint64_t MusicIdentifierSet.typeValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  *a1 = *(v1 + 288);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return sub_217751DE8();
}

__n128 MusicIdentifierSet.typeValue.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = v1[19].n128_u64[1];

  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  return result;
}

uint64_t MusicIdentifierSet.innerTypeValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[40];
  v3 = v1[41];
  v4 = v1[42];
  v5 = v1[43];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2172AC64C(v2);
}

__n128 MusicIdentifierSet.innerTypeValue.setter(uint64_t a1)
{
  v3 = v1[41];
  v4 = v1[42];
  v5 = v1[43];
  sub_2172AC65C(v1[40]);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 20) = *a1;
  *(v1 + 21) = v7;
  return result;
}

uint64_t MusicIdentifierSet.isFromLocalDatabase.getter()
{
  if (v0[18])
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = objc_opt_self();
    sub_217751DE8();
    v4 = [v3 deviceLibrary];
    v5 = [v4 uniqueIdentifier];

    v6 = sub_217751F48();
    v8 = v7;

    if (v2 == v6 && v1 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_196();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void MusicIdentifierSet.intersects(_:)()
{
  OUTLINED_FUNCTION_12();
  v47 = v1[2];
  v53 = v1[3];
  v59 = v1[5];
  v65 = v1[6];
  v55 = v1[7];
  v61 = v1[8];
  v63 = v1[9];
  v73 = v1[10];
  v43 = v1[11];
  v49 = v1[12];
  v39 = v1[13];
  v45 = v1[14];
  v35 = v1[15];
  v41 = v1[16];
  v75 = v1[17];
  v78 = v1[18];
  v70 = v1[20];
  v71 = v1[19];
  v32 = v1[21];
  v37 = v1[22];
  v28 = v1[24];
  v29 = v1[23];
  v2 = v1[26];
  v77 = v1[25];
  v25 = v1[27];
  v30 = v1[28];
  v67 = v1[29];
  v76 = v1[30];
  v57 = v1[32];
  v3 = v1[36];
  v4 = v1[38];
  v5 = v1[39];
  v46 = v0[2];
  v51 = v1[31];
  v52 = v0[3];
  v58 = v0[5];
  v64 = v0[6];
  v54 = v0[7];
  v60 = v0[8];
  v62 = v0[9];
  v72 = v0[10];
  v42 = v0[11];
  v48 = v0[12];
  v38 = v0[13];
  v44 = v0[14];
  v34 = v0[15];
  v40 = v0[16];
  v6 = v0[18];
  v74 = v0[17];
  v68 = v0[20];
  v69 = v0[19];
  v31 = v0[21];
  v36 = v0[22];
  v26 = v0[24];
  v27 = v0[23];
  v8 = v0[25];
  v7 = v0[26];
  v24 = v0[27];
  v33 = v0[28];
  v9 = v0[30];
  v66 = v0[29];
  v50 = v0[31];
  v56 = v0[32];
  v10 = v0[36];
  v12 = v0[38];
  v11 = v0[39];
  if (!dynamic_cast_existential_1_conditional(v10) && !dynamic_cast_existential_1_conditional(v3))
  {
    v13 = v12 == v4 && v11 == v5;
    if (!v13 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  if (!v7 || !v2)
  {
    if (v6 && v78)
    {
      v15 = v74 == v75 && v6 == v78;
      if (!v15 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_72;
      }

      v17 = v70;
      v16 = v71;
      v19 = v68;
      v18 = v69;
    }

    else
    {
      if (v9 && v76)
      {
        if (v66 != v67 || v9 != v76)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      v19 = v72;
      v17 = v73;
      if (v72 && v73)
      {
        v18 = v62;
        v16 = v63;
      }

      else
      {
        v19 = v64;
        v17 = v65;
        if (v64 && v65)
        {
          v18 = v58;
          v16 = v59;
        }

        else
        {
          v19 = v60;
          v17 = v61;
          if (v60 && v61)
          {
            v18 = v54;
            v16 = v55;
          }

          else
          {
            v19 = v56;
            v17 = v57;
            if (v56 && v57)
            {
              v18 = v50;
              v16 = v51;
            }

            else
            {
              v19 = v52;
              v17 = v53;
              if (v52 && v53)
              {
                v18 = v46;
                v16 = v47;
              }

              else
              {
                v19 = v48;
                v17 = v49;
                if (v48 && v49)
                {
                  v18 = v42;
                  v16 = v43;
                }

                else
                {
                  v19 = v44;
                  v17 = v45;
                  if (v44 && v45)
                  {
                    v18 = v38;
                    v16 = v39;
                  }

                  else
                  {
                    v19 = v40;
                    v17 = v41;
                    if (v40 && v41)
                    {
                      v18 = v34;
                      v16 = v35;
                    }

                    else if (v36 && v37)
                    {
                      v21 = v31 == v32 && v36 == v37;
                      if (!v21 && (sub_217753058() & 1) == 0)
                      {
                        goto LABEL_72;
                      }

                      v17 = v28;
                      v16 = v29;
                      v19 = v26;
                      v18 = v27;
                    }

                    else
                    {
                      v19 = v33;
                      if (!v33)
                      {
                        goto LABEL_72;
                      }

                      v17 = v30;
                      if (!v30)
                      {
                        goto LABEL_72;
                      }

                      v18 = v24;
                      v16 = v25;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v18 != v16 || v19 != v17)
    {
      goto LABEL_69;
    }

LABEL_72:
    OUTLINED_FUNCTION_13();
    return;
  }

  if (v8 == v77 && v7 == v2)
  {
    goto LABEL_72;
  }

LABEL_69:
  OUTLINED_FUNCTION_13();

  sub_217753058();
}

uint64_t sub_2174FF70C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    sub_217751DE8();
    sub_21750074C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *MusicItemTypeValue.preferredIdentifierKinds.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0))
  {
    return (*(v1 + 8))();
  }

  else
  {
    return &unk_282959D58;
  }
}

uint64_t sub_2174FF868(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

void sub_2174FF8AC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v4 = sub_217204DD0(v0);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:
      OUTLINED_FUNCTION_13();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_16_0();
      v6 = MEMORY[0x21CEA2E30](v11);
      goto LABEL_6;
    }

    if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(v1 + 8 * v5 + 32);

LABEL_6:
    v7 = OUTLINED_FUNCTION_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    v9 = static AnyMusicProperty.== infix(_:_:)(v6, v3);

    if (v9)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_2174FF994()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; i >> 14 != v7; i = sub_217752018())
  {
    OUTLINED_FUNCTION_20_6();
    if (sub_2177520F8() == v4 && v9 == v2)
    {

      break;
    }

    v11 = sub_217753058();

    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_20_6();
  }

  OUTLINED_FUNCTION_13();
}

uint64_t MusicIdentifierSet.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v14 = v1[2];
  v15 = *(v1 + 32);
  v6 = v1[6];
  v7 = v1[8];
  v16 = v1[5];
  v17 = v1[7];
  v18 = v1[9];
  v19 = v1[11];
  v35 = v1[10];
  v36 = v1[12];
  v37 = v1[14];
  v20 = v1[13];
  v21 = v1[15];
  v38 = v1[16];
  v8 = v1[18];
  v22 = v1[17];
  v23 = v1[20];
  v9 = v1[22];
  v24 = v1[19];
  v25 = v1[21];
  v26 = v1[24];
  v27 = v1[23];
  v28 = v1[25];
  v39 = v1[26];
  v10 = v1[28];
  v29 = v1[27];
  v30 = v1[29];
  v40 = v1[30];
  v31 = v1[31];
  v41 = v1[32];
  v42 = v1[33];
  v43 = *(v1 + 272);
  v46 = v1[38];
  v44 = v1[35];
  v45 = v1[39];
  v11 = v1[40];
  v33 = v1[42];
  v34 = v1[41];
  v32 = v1[43];
  v12 = *(v1 + 352);
  sub_217751FF8();
  if (v5)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    MEMORY[0x21CEA3550](v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v6)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v35)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v36)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v37)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v38)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    sub_217751FF8();
    if (v9)
    {
      goto LABEL_24;
    }

LABEL_27:
    OUTLINED_FUNCTION_25();
    if (v39)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_25();
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_24:
  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  sub_217751FF8();
  sub_217751FF8();
  if (v39)
  {
LABEL_25:
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    goto LABEL_29;
  }

LABEL_28:
  OUTLINED_FUNCTION_25();
LABEL_29:
  if (v10)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    if (v40)
    {
      goto LABEL_31;
    }

LABEL_34:
    OUTLINED_FUNCTION_25();
    if (v41)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_25();
  if (!v40)
  {
    goto LABEL_34;
  }

LABEL_31:
  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  sub_217751FF8();
  if (v41)
  {
LABEL_32:
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751FF8();
    goto LABEL_36;
  }

LABEL_35:
  OUTLINED_FUNCTION_25();
LABEL_36:
  sub_2172A98C8(a1, v42);
  sub_217753208();
  MusicItemDataSourceCollection.hash(into:)(a1);
  sub_217751FF8();
  if (v11)
  {
    OUTLINED_FUNCTION_11_41();
    sub_217753208();
    sub_217751DE8();
    sub_217751FF8();
    sub_2172AC65C(v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v12 == 4)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_11_41();
  sub_217753208();
  return MEMORY[0x21CEA3550](v12);
}

uint64_t MusicIdentifierSet.hashValue.getter()
{
  sub_2177531E8();
  MusicIdentifierSet.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2174FFE78()
{
  sub_2177531E8();
  MusicIdentifierSet.hash(into:)(v1);
  return sub_217753238();
}

void *MusicIdentifierSet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v8);
  sub_217729A9C(v8, __src);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  memcpy(v6, __src, sizeof(v6));
  sub_21772A7F4(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return memcpy(a2, v7, 0x161uLL);
}

uint64_t MusicIdentifierSet.encode(to:)(void *a1)
{
  memcpy(v4, v1, 0x161uLL);
  sub_21772AD94(__src);
  memcpy(v4, __src, sizeof(v4));
  sub_21772B3EC(a1);
  return sub_217503D9C(__src);
}

unint64_t sub_217500000(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_217500020(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_217500044(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[752 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 752 * a2);
  }

  return result;
}

char *sub_21750009C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_2175000D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_217500190(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[768 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

uint64_t sub_217500220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_20();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_43(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_8_45();

      return MEMORY[0x2821FE820](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_8_45();

    return MEMORY[0x2821FE828](v13);
  }

  return result;
}

char *sub_217500374(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 152 * a2);
  }

  return result;
}

uint64_t sub_2175003B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_42_20();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_43(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      v14 = OUTLINED_FUNCTION_8_45();

      return MEMORY[0x2821FE820](v14);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = OUTLINED_FUNCTION_8_45();

    return MEMORY[0x2821FE828](v15);
  }

  return result;
}

char *sub_21750047C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_69(a3, result);
  }

  return result;
}

char *sub_21750049C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[360 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_66(a3, result, 360 * a2);
  }

  return result;
}

void sub_2175004C8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v29 = v3;
  v4 = sub_217751428();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  v10 = *v0;
  v11 = *(*v0 + 40);
  sub_217503FC8(&qword_27CB24868);
  v34 = v2;
  v12 = sub_217751EA8();
  v31 = v10;
  v32 = v10 + 56;
  v13 = ~(-1 << *(v10 + 32));
  v33 = v5 + 2;
  v30 = v5 + 1;
  while (1)
  {
    v14 = v12 & v13;
    if (((1 << (v12 & v13)) & *(v32 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v19 = v28;
      v20 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5[2];
      OUTLINED_FUNCTION_114();
      v23();
      v35 = *v19;
      v24 = OUTLINED_FUNCTION_15();
      sub_21750199C(v24, v25, isUniquelyReferenced_nonNull_native);
      *v19 = v35;
      v26 = v5[4];
      OUTLINED_FUNCTION_114();
      v27();
      goto LABEL_7;
    }

    v15 = v5[9] * v14;
    v16 = v5[2];
    v16(v9, *(v31 + 48) + v15, v4);
    sub_217503FC8(&qword_27CB24AC0);
    v17 = sub_217751F08();
    v18 = v5[1];
    v18(v9, v4);
    if (v17)
    {
      break;
    }

    v12 = v14 + 1;
  }

  v18(v34, v4);
  v16(v29, *(v31 + 48) + v15, v4);
LABEL_7:
  OUTLINED_FUNCTION_13();
}

BOOL sub_21750074C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2177531E8();
  sub_217751FF8();
  v9 = sub_217753238();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_217753058() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;
      sub_217751DE8();
      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  sub_217751DE8();
  sub_217501C00(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_217500898(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2177531E8();
  sub_217342E54();
  v6 = sub_217753238();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = 0xEB00000000736F6DLL;
      v11 = 0x74612D79626C6F64;
      switch(*(*(v4 + 48) + v8))
      {
        case 1:
          break;
        case 2:
          v11 = 0x75612D79626C6F64;
          v10 = 0xEB000000006F6964;
          break;
        case 3:
          v10 = 0xE800000000000000;
          v11 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v11 = 0x6C2D7365722D6968;
          v10 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v11 = 0x74732D7973736F6CLL;
          v10 = 0xEC0000006F657265;
          break;
        case 6:
          v11 = 0x2D6C616974617073;
          v10 = 0xED00006F69647561;
          break;
        case 7:
          v10 = 0xE700000000000000;
          v11 = 0x6C616974617073;
          break;
        case 8:
          v11 = 0xD000000000000013;
          v10 = 0x80000002177AA7E0;
          break;
        case 9:
          v10 = 0xE500000000000000;
          v11 = 0x736F6D7461;
          break;
        case 0xA:
          v10 = 0xE800000000000000;
          v11 = 0x646E756F72727573;
          break;
        default:
          v11 = 0xD000000000000014;
          v10 = 0x80000002177AA770;
          break;
      }

      v12 = 0x74612D79626C6F64;
      v13 = 0xEB00000000736F6DLL;
      switch(a2)
      {
        case 1:
          break;
        case 2:
          v12 = 0x75612D79626C6F64;
          v13 = 0xEB000000006F6964;
          break;
        case 3:
          v13 = 0xE800000000000000;
          v12 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v12 = 0x6C2D7365722D6968;
          v13 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v12 = 0x74732D7973736F6CLL;
          v13 = 0xEC0000006F657265;
          break;
        case 6:
          v12 = 0x2D6C616974617073;
          v13 = 0xED00006F69647561;
          break;
        case 7:
          v13 = 0xE700000000000000;
          v12 = 0x6C616974617073;
          break;
        case 8:
          v12 = 0xD000000000000013;
          v13 = 0x80000002177AA7E0;
          break;
        case 9:
          v13 = 0xE500000000000000;
          v12 = 0x736F6D7461;
          break;
        case 10:
          v13 = 0xE800000000000000;
          v12 = 0x646E756F72727573;
          break;
        default:
          v12 = 0xD000000000000014;
          v13 = 0x80000002177AA770;
          break;
      }

      if (v11 == v12 && v10 == v13)
      {
        break;
      }

      v15 = sub_217753058();

      if (v15)
      {
        goto LABEL_33;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_31:
    v16 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    sub_217501D68(a2, v8, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

BOOL sub_217500C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_2177531E8();
  OUTLINED_FUNCTION_114();
  sub_217751FF8();
  sub_217753238();
  v13 = *(v11 + 32);
  OUTLINED_FUNCTION_22_33();
  while (1)
  {
    v15 = v14 & v6;
    v16 = (v7 << (v14 & v6)) & *(v11 + 56 + (((v14 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      break;
    }

    v17 = *(v11 + 48) + 32 * v15;
    v18 = *(v17 + 16) == a4 && *(v17 + 24) == a5;
    if (v18 || (OUTLINED_FUNCTION_196() & 1) != 0)
    {

      v19 = *(v11 + 48) + 32 * v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      *a1 = *v19;
      *(a1 + 16) = v21;
      *(a1 + 24) = v20;
      sub_217751DE8();
      return v16 == 0;
    }

    v14 = v15 + 1;
  }

  v22 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v5;
  sub_217751DE8();
  sub_217502198(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
  *v5 = v27;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  return v16 == 0;
}

uint64_t sub_217500DD4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_217751428();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  result = sub_217752A68();
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_29:

    *v2 = v11;
    return result;
  }

  v36 = v2;
  v37 = v8;
  v12 = 0;
  v13 = (v8 + 56);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 56);
  v17 = (v14 + 63) >> 6;
  v40 = v4 + 4;
  v18 = result + 56;
  if (!v16)
  {
LABEL_9:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      sub_217747368(0, (v34 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_14:
    v22 = *(v8 + 48) + v4[9] * (v19 | (v12 << 6));
    v23 = v4[4];
    v38 = v4[9];
    v39 = v23;
    v23(v41, v22, v42);
    v24 = v11;
    v25 = *(v11 + 40);
    sub_217503FC8(&qword_27CB24868);
    result = sub_217751EA8();
    v11 = v24;
    v26 = -1 << *(v24 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v18 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = v39(*(v24 + 48) + v29 * v38, v41, v42);
    ++*(v24 + 16);
    v8 = v37;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v18 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_217501118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  result = sub_217752A68();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_217747368(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2177531E8();
    sub_217751FF8();
    result = sub_217753238();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_217501374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  result = sub_217752A68();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_217747368(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_2177531E8();
    sub_217751FF8();

    result = sub_217753238();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_217501730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  result = sub_217752A68();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_217747368(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 32 * (v14 | (v7 << 6));
    v32 = *v17;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = *(v6 + 40);
    sub_2177531E8();
    sub_217751FF8();
    result = sub_217753238();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v6 + 48) + 32 * v24;
    *v29 = v32;
    *(v29 + 16) = v18;
    *(v29 + 24) = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21750199C(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = sub_217751428();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v6, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_217500DD4(v13 + 1);
      goto LABEL_8;
    }

    if (v14 <= v13)
    {
      sub_217502940(v13 + 1);
LABEL_8:
      v25 = v3;
      v15 = *v3;
      v16 = *(*v3 + 40);
      sub_217503FC8(&qword_27CB24868);
      v17 = sub_217751EA8();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v12, *(v15 + 48) + *(v7 + 72) * a2, v6);
        sub_217503FC8(&qword_27CB24AC0);
        v19 = sub_217751F08();
        (*(v7 + 8))(v12, v6);
        if (v19)
        {
          goto LABEL_16;
        }

        v17 = a2 + 1;
      }

      v3 = v25;
      goto LABEL_13;
    }

    sub_217502314();
  }

LABEL_13:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v20 + 48) + *(v7 + 72) * a2, v26, v6, v10);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_16:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_217501C00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_217501118(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_217502C44(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2177531E8();
      sub_217751FF8();
      result = sub_217753238();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_217502548();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_217501D68(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_38;
  }

  if (a3)
  {
    sub_217501374(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2175026A0();
      goto LABEL_38;
    }

    sub_217502E78(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2177531E8();
  sub_217342E54();
  result = sub_217753238();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xEB00000000736F6DLL;
      v13 = 0x74612D79626C6F64;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          break;
        case 2:
          v13 = 0x75612D79626C6F64;
          v12 = 0xEB000000006F6964;
          break;
        case 3:
          v12 = 0xE800000000000000;
          v13 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v13 = 0x6C2D7365722D6968;
          v12 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v13 = 0x74732D7973736F6CLL;
          v12 = 0xEC0000006F657265;
          break;
        case 6:
          v13 = 0x2D6C616974617073;
          v12 = 0xED00006F69647561;
          break;
        case 7:
          v12 = 0xE700000000000000;
          v13 = 0x6C616974617073;
          break;
        case 8:
          v13 = 0xD000000000000013;
          v12 = 0x80000002177AA7E0;
          break;
        case 9:
          v12 = 0xE500000000000000;
          v13 = 0x736F6D7461;
          break;
        case 0xA:
          v12 = 0xE800000000000000;
          v13 = 0x646E756F72727573;
          break;
        default:
          v13 = 0xD000000000000014;
          v12 = 0x80000002177AA770;
          break;
      }

      v14 = 0x74612D79626C6F64;
      v15 = 0xEB00000000736F6DLL;
      switch(v5)
      {
        case 1:
          break;
        case 2:
          v14 = 0x75612D79626C6F64;
          v15 = 0xEB000000006F6964;
          break;
        case 3:
          v15 = 0xE800000000000000;
          v14 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v14 = 0x6C2D7365722D6968;
          v15 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v14 = 0x74732D7973736F6CLL;
          v15 = 0xEC0000006F657265;
          break;
        case 6:
          v14 = 0x2D6C616974617073;
          v15 = 0xED00006F69647561;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v14 = 0x6C616974617073;
          break;
        case 8:
          v14 = 0xD000000000000013;
          v15 = 0x80000002177AA7E0;
          break;
        case 9:
          v15 = 0xE500000000000000;
          v14 = 0x736F6D7461;
          break;
        case 10:
          v15 = 0xE800000000000000;
          v14 = 0x646E756F72727573;
          break;
        default:
          v14 = 0xD000000000000014;
          v15 = 0x80000002177AA770;
          break;
      }

      if (v13 == v14 && v12 == v15)
      {
        goto LABEL_41;
      }

      v17 = sub_217753058();

      if (v17)
      {
        goto LABEL_42;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_38:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_41:

LABEL_42:
  result = sub_217753168();
  __break(1u);
  return result;
}

uint64_t sub_217502198(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_217501730(v12 + 1);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_217503204(v12 + 1);
LABEL_10:
      v19 = *v6;
      v20 = *(*v6 + 40);
      sub_2177531E8();
      sub_217751FF8();
      result = sub_217753238();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a5 = result & v21;
        if (((*(v19 + 56 + (((result & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v21)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = *(v19 + 48) + 32 * a5;
        v23 = *(v22 + 16) == a3 && *(v22 + 24) == a4;
        if (v23 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a5 + 1;
      }
    }

    result = sub_2175027E0();
  }

LABEL_7:
  v14 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v15 = (*(v14 + 48) + 32 * a5);
  *v15 = v11;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_19:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

void *sub_217502314()
{
  v1 = v0;
  v2 = sub_217751428();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  v8 = *v0;
  v9 = sub_217752A58();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v8 + 56 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v10;
  }

  return result;
}

void *sub_217502548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  v2 = *v0;
  v3 = sub_217752A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_217751DE8();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2175026A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  v2 = *v0;
  v3 = sub_217752A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2175027E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  v2 = *v0;
  v3 = sub_217752A58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v4 + 48) + 32 * v17;
        *v21 = *v18;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
        result = sub_217751DE8();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_217502940(uint64_t a1)
{
  v2 = v1;
  v38 = sub_217751428();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  v11 = sub_217752A68();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v23 = *(v37 + 72);
        (*(v37 + 16))(v8, *(result + 48) + v23 * (v20 | (v13 << 6)), v38);
        v24 = *(v11 + 40);
        sub_217503FC8(&qword_27CB24868);
        result = sub_217751EA8();
        v25 = -1 << *(v11 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v19 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        (*v34)(*(v11 + 48) + v28 * v23, v8, v38);
        ++*(v11 + 16);
        result = v35;
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v19 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v33;
          goto LABEL_27;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_217502C44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  result = sub_217752A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        result = sub_217753238();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_217502E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  result = sub_217752A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_2177531E8();
        sub_217751FF8();

        result = sub_217753238();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_217503204(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  result = sub_217752A68();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v3 + 48) + 32 * (v13 | (v7 << 6));
        v30 = *v16;
        v17 = *(v16 + 16);
        v18 = *(v16 + 24);
        v19 = *(v6 + 40);
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        result = sub_217753238();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v6 + 48) + 32 * v23;
        *v28 = v30;
        *(v28 + 16) = v17;
        *(v28 + 24) = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_217503684(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_217752D38();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_217752AE8();
}

void sub_217503700()
{
  OUTLINED_FUNCTION_12();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = *v0 + 32;
  v11 = v10 + 752 * v1;
  swift_arrayDestroy();
  v12 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = (v11 + 752 * v7);
  if (!v12)
  {
LABEL_12:
    if (v7 < 1)
    {
LABEL_16:
      sub_2171F0738(v6, &qword_27CB28B88, &qword_217771908);
      OUTLINED_FUNCTION_13();
      return;
    }

    v22 = 0;
    while ((v22 & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_93();
      sub_217275AA0(v23, v24);
      v11 += 752;
      v22 = 1;
      if (v11 >= v13)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_20;
  }

  v14 = *(v9 + 16);
  v15 = v14 - v8;
  if (!__OFSUB__(v14, v8))
  {
    v16 = (v10 + 752 * v8);
    v17 = 752 * v15;
    v18 = &v16[752 * v15];
    if (v13 != v16 || v18 <= v13)
    {
      memmove((v11 + 752 * v7), v16, v17);
      v14 = *(v9 + 16);
    }

    v20 = __OFADD__(v14, v12);
    v21 = v14 + v12;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v9 + 16) = v21;
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217503808()
{
  OUTLINED_FUNCTION_220();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 752 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(v9 + 16);
  v14 = v13 - v8;
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_20;
  }

  v15 = (v10 + 752 * v7);
  v16 = (v9 + 32 + 752 * v8);
  v17 = 752 * v14;
  v18 = &v16[752 * v14];
  if (v15 != v16 || v18 <= v15)
  {
    memmove(v15, v16, v17);
    v13 = *(v9 + 16);
  }

  v11 = __OFADD__(v13, v12);
  v20 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v20;
LABEL_12:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_15:
  OUTLINED_FUNCTION_218();
}

char *sub_21750390C(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = &result[v10];
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = v12 - a2;
    if (!__OFSUB__(v12, a2))
    {
      result = &v11[a3];
      v14 = (v10 + a2);
      if (&v11[a3] != v14 || &v14[v13] <= result)
      {
        result = memmove(result, v14, v13);
        v12 = *(v9 + 16);
      }

      v16 = __OFADD__(v12, v7);
      v17 = v12 + v7;
      if (!v16)
      {
        *(v9 + 16) = v17;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return result;
}

void sub_2175039BC()
{
  OUTLINED_FUNCTION_12();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_25;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA8, &unk_2177756E0);
  OUTLINED_FUNCTION_15();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_17;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_217752D38();
LABEL_6:
  v16 = v15 - v4;
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v7 + 8 * v4);
  if (v1 != v17 || &v17[8 * v16] <= v1)
  {
    memmove(v1, v17, 8 * v16);
  }

  if (v5)
  {
    v19 = sub_217752D38();
  }

  else
  {
    v19 = *(v6 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v6 + 16) = v19 + v12;
LABEL_17:
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v20 = v6 + 8 * v2;
    *(v20 + 32) = v0;
    if (v20 + 40 < v1)
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_13();
  }
}

unint64_t sub_217503B1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *v7;
  v14 = v13 + 32 + 752 * result;
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v8);
  v16 = a3 - v8;
  if (v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = *(v13 + 16);
  v18 = v17 - a2;
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_21;
  }

  result = v14 + 752 * a3;
  v19 = (v13 + 32 + 752 * a2);
  v20 = 752 * v18;
  v21 = &v19[752 * v18];
  if (result != v19 || v21 <= result)
  {
    result = memmove(result, v19, v20);
    v17 = *(v13 + 16);
  }

  v15 = __OFADD__(v17, v16);
  v23 = v17 + v16;
  if (v15)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_12:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:

  return swift_unknownObjectRelease();
}