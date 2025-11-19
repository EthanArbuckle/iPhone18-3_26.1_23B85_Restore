void static LegacyModelCodablePlaylistEntry.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v84 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C000, &unk_21778F840);
  OUTLINED_FUNCTION_43(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_87_2();
  memcpy(v92, v6, sizeof(v92));
  memcpy(v93, v4, sizeof(v93));
  memcpy(v90, v6, 0x1B8uLL);
  memcpy(&v90[440], v4, 0x1B8uLL);
  memcpy(v94, v6, 0x1B8uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v94) == 1)
  {
    OUTLINED_FUNCTION_176(v89);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v89) == 1)
    {
      v85 = v13;
      memcpy(v91, v90, sizeof(v91));
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2171F0738(v91, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v89, v90, sizeof(v89));
    sub_2172E3D54();
    sub_2172E3D54();
    v26 = &qword_27CB25008;
    v27 = &qword_21778F850;
    v28 = v89;
LABEL_6:
    sub_2171F0738(v28, v26, v27);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_176(v88);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v88) == 1)
  {
    goto LABEL_5;
  }

  v85 = v13;
  OUTLINED_FUNCTION_176(v86);
  OUTLINED_FUNCTION_176(v89);
  memcpy(v91, v90, sizeof(v91));
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172A92BC();
  v30 = v29;
  sub_2171F0738(v86, &qword_27CB25000, &unk_21776EA00);
  memcpy(v87, v90, sizeof(v87));
  sub_2171F0738(v87, &qword_27CB25000, &unk_21776EA00);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v31 = *(v4 + 448);
  if (*(v6 + 448))
  {
    if (!*(v4 + 448))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*(v6 + 440) != *(v4 + 440))
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_7;
    }
  }

  v32 = *(v6 + 464);
  v33 = *(v4 + 464);
  if (v32)
  {
    if (!v33)
    {
      goto LABEL_7;
    }

    v34 = *(v6 + 456) == *(v4 + 456) && v32 == v33;
    if (!v34 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v33)
  {
    goto LABEL_7;
  }

  v35 = *(v6 + 480);
  v36 = *(v4 + 480);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_7;
    }

    v37 = *(v6 + 472) == *(v4 + 472) && v35 == v36;
    if (!v37 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v36)
  {
    goto LABEL_7;
  }

  v84 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v38 = *(v84 + 32);
  v39 = *(v21 + 48);
  OUTLINED_FUNCTION_171_1();
  sub_2172E3D54();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v0, 1, v7);
  if (!v34)
  {
    sub_2172E3D54();
    OUTLINED_FUNCTION_133(v0 + v39, 1, v7);
    if (!v40)
    {
      v41 = v85;
      sub_2172E21DC();
      v42 = sub_21767DBE4(v20, v41);
      sub_2171F0738(v41, &qword_27CB25650, &unk_21778F830);
      sub_2171F0738(v20, &qword_27CB25650, &unk_21778F830);
      sub_2171F0738(v0, &qword_27CB25648, &qword_21775D598);
      if ((v42 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_43;
    }

    sub_2171F0738(v20, &qword_27CB25650, &unk_21778F830);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_133(v0 + v39, 1, v7);
  if (!v34)
  {
LABEL_41:
    v26 = &qword_27CB2C000;
    v27 = &unk_21778F840;
    v28 = v0;
    goto LABEL_6;
  }

  sub_2171F0738(v0, &qword_27CB25648, &qword_21775D598);
LABEL_43:
  v43 = v84;
  v44 = *(v84 + 36);
  OUTLINED_FUNCTION_7_74();
  if (v47)
  {
    if (!v45)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v46);
    v50 = v34 && v48 == v49;
    if (!v50 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_7;
    }
  }

  v51 = v43[10];
  OUTLINED_FUNCTION_7_74();
  if (v54)
  {
    if (!v52)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v53);
    v57 = v34 && v55 == v56;
    if (!v57 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v52)
  {
    goto LABEL_7;
  }

  v58 = v43[11];
  v59 = (v6 + v58);
  v60 = *(v6 + v58 + 8);
  v61 = (v4 + v58);
  v62 = *(v4 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_7;
    }
  }

  v63 = v43[12];
  OUTLINED_FUNCTION_7_74();
  if (v66)
  {
    if (!v64)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v65);
    v69 = v34 && v67 == v68;
    if (!v69 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v64)
  {
    goto LABEL_7;
  }

  v70 = v43[13];
  OUTLINED_FUNCTION_7_74();
  if (v73)
  {
    if (!v71)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v72);
    v76 = v34 && v74 == v75;
    if (!v76 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v71)
  {
    goto LABEL_7;
  }

  v77 = v43[14];
  OUTLINED_FUNCTION_7_74();
  if (v80 && v78)
  {
    OUTLINED_FUNCTION_59_0(v79);
    if (!v34 || v81 != v82)
    {
      sub_217753058();
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21767F994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177ABFE0 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000002177B49D0 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1835365481 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7079546D6574695FLL && a2 == 0xE900000000000065;
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
                v12 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000002177B49F0 == a2;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x53676E6974696465 && a2 == 0xEF4449656C626174)
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

unint64_t sub_21767FD0C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79616C507473616CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 1835365481;
      break;
    case 5:
      result = 0x7079546D6574695FLL;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6E6F697469736F70;
      break;
    case 8:
      result = 0x44657361656C6572;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x53676E6974696465;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21767FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21767F994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21767FE9C(uint64_t a1)
{
  v2 = sub_2176802EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21767FED8(uint64_t a1)
{
  v2 = sub_2176802EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void LegacyModelCodablePlaylistEntry.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C008, &unk_21778F858);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v42 - v12;
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2176802EC();
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v15, v16, v17);
  OUTLINED_FUNCTION_12_33();
  memcpy(v18, v19, v20);
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8);
  OUTLINED_FUNCTION_38_7();
  sub_217752F38();
  if (v1)
  {
    memcpy(v44, v45, sizeof(v44));
    sub_2171F0738(v44, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v44, v45, sizeof(v44));
    sub_2171F0738(v44, &qword_27CB25000, &unk_21776EA00);
    v21 = *(v2 + 440);
    v22 = *(v2 + 448);
    OUTLINED_FUNCTION_0_133(1);
    sub_217752F28();
    v23 = *(v2 + 456);
    v24 = *(v2 + 464);
    OUTLINED_FUNCTION_0_133(2);
    sub_217752EF8();
    v25 = *(v2 + 472);
    v26 = *(v2 + 480);
    OUTLINED_FUNCTION_0_133(3);
    sub_217752EF8();
    v27 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    v28 = v27[8];
    LOBYTE(v42) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    sub_217683A94(&qword_27CB2C018);
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v29 = (v2 + v27[9]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v29) = *(v29 + 16);
    *&v42 = v30;
    *(&v42 + 1) = v31;
    v43 = v29;
    v32 = sub_21733ABF0();
    sub_217751DE8();
    OUTLINED_FUNCTION_62_21();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    if (v32)
    {
    }

    else
    {

      v33 = (v2 + v27[10]);
      v34 = *v33;
      v35 = v33[1];
      OUTLINED_FUNCTION_0_133(6);
      sub_217752EF8();
      v36 = (v2 + v27[11]);
      v37 = *v36;
      v38 = *(v36 + 8);
      OUTLINED_FUNCTION_0_133(7);
      sub_217752F28();
      v39 = (v2 + v27[12]);
      v40 = *v39;
      v41 = v39[1];
      OUTLINED_FUNCTION_0_133(8);
      sub_217752EF8();
      v42 = *(v2 + v27[13]);
      sub_2172E1B18();
      OUTLINED_FUNCTION_62_21();
      OUTLINED_FUNCTION_38_7();
      sub_217752F38();
      v42 = *(v2 + v27[14]);
      OUTLINED_FUNCTION_62_21();
      OUTLINED_FUNCTION_38_7();
      sub_217752F38();
    }
  }

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176802EC()
{
  result = qword_27CB2C010;
  if (!qword_27CB2C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C010);
  }

  return result;
}

uint64_t sub_217680340(unint64_t *a1, void (*a2)(uint64_t))
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

void LegacyModelCodablePlaylistEntry.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v37[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37[-v15 - 8];
  memcpy(v38, v0, sizeof(v38));
  v17 = *(v0 + 432);
  memcpy(v39, v0, sizeof(v39));
  v40 = v17;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v39) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v37, v38, sizeof(v37));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v17);
  }

  if (*(v0 + 448) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v18 = *(v0 + 440);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v18);
  }

  if (*(v0 + 464))
  {
    v19 = *(v0 + 456);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 480))
  {
    v20 = *(v0 + 472);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v21 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v22 = v21[8];
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v16, 1, v3);
  if (v23)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    sub_2172E21DC();
    OUTLINED_FUNCTION_119();
    LegacyModelCodablePlaylistEntryItem.hash(into:)();
    v24 = &v9[v3[9]];
    v25 = *v24;
    v26 = v24[1];
    sub_217751FF8();
    v27 = &v9[v3[10]];
    if (v27[1])
    {
      v28 = *v27;
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_185_0();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_120();
    }

    memcpy(v37, &v9[v3[11]], 0x180uLL);
    sub_2172638E8(v2);
    OUTLINED_FUNCTION_101_13(v3[12]);
    OUTLINED_FUNCTION_101_13(v3[13]);
    OUTLINED_FUNCTION_101_13(v3[14]);
    OUTLINED_FUNCTION_101_13(v3[15]);
    sub_2171F0738(v9, &qword_27CB25650, &unk_21778F830);
  }

  OUTLINED_FUNCTION_82_14(v21[9]);
  if (v3)
  {
    OUTLINED_FUNCTION_113_12(v29);
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_82_14(v21[10]);
  if (v3)
  {
    OUTLINED_FUNCTION_113_12(v30);
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v31 = v0 + v21[11];
  if (*(v31 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v3 = *v31;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v3);
  }

  OUTLINED_FUNCTION_82_14(v21[12]);
  if (v3)
  {
    OUTLINED_FUNCTION_113_12(v32);
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_82_14(v21[13]);
  if (v3)
  {
    OUTLINED_FUNCTION_113_12(v33);
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v34 = (v0 + v21[14]);
  if (v34[1])
  {
    v35 = *v34;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

void LegacyModelCodablePlaylistEntry.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C030, &qword_21778F868);
  OUTLINED_FUNCTION_0_0(v56);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v60 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v18 = OUTLINED_FUNCTION_43(v60);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v57 = v2;
  v58 = (v23 - v22);
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2176802EC();
  sub_2177532C8();
  v25 = v0;
  if (v0)
  {
    v59 = v0;
    OUTLINED_FUNCTION_92_17();
    v26 = v58;
    __swift_destroy_boxed_opaque_existential_1(v57);
    v29 = 0;
    v30 = 0;
    if (!v0)
    {
      goto LABEL_12;
    }

LABEL_5:
    v27 = *(v26 + 58);

    if (v11)
    {
      goto LABEL_13;
    }

LABEL_6:
    v28 = v60;
    if (!v24)
    {
      goto LABEL_14;
    }

LABEL_7:
    sub_2171F0738(&v26[v28[8]], &qword_27CB25648, &qword_21775D598);
    if (v25)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_9:
    OUTLINED_FUNCTION_191_2(v28[10]);
    if ((v29 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v55 = v4;
  LODWORD(v24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D0);
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v32 = v58;
  memcpy(v58, v63, 0x1B8uLL);
  LOBYTE(v61) = 1;
  OUTLINED_FUNCTION_93_15();
  *(v32 + 55) = sub_217752E48();
  v32[448] = v33 & 1;
  OUTLINED_FUNCTION_5_93(2);
  *(v32 + 57) = sub_217752E18();
  *(v32 + 58) = v34;
  OUTLINED_FUNCTION_5_93(3);
  *(v32 + 59) = sub_217752E18();
  *(v32 + 60) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  LOBYTE(v61) = 4;
  sub_217683A94(&qword_27CB2C038);
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v25 = 0;
  v36 = v60;
  v37 = v60[8];
  sub_2172E21DC();
  sub_21733BE84();
  OUTLINED_FUNCTION_37_35();
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v38 = v62;
  v39 = &v32[v36[9]];
  *v39 = v61;
  v39[16] = v38;
  OUTLINED_FUNCTION_5_93(6);
  v40 = sub_217752E18();
  v41 = &v32[v36[10]];
  *v41 = v40;
  v41[1] = v42;
  OUTLINED_FUNCTION_5_93(7);
  v43 = sub_217752E48();
  v44 = &v32[v36[11]];
  *v44 = v43;
  v44[8] = v45 & 1;
  OUTLINED_FUNCTION_5_93(8);
  v46 = sub_217752E18();
  v59 = 0;
  v48 = &v32[v60[12]];
  *v48 = v46;
  v48[1] = v47;
  LODWORD(v11) = sub_2172E1C68();
  OUTLINED_FUNCTION_37_35();
  v49 = v59;
  sub_217752E58();
  v59 = v49;
  if (!v49)
  {
    *&v58[v60[13]] = v61;
    OUTLINED_FUNCTION_37_35();
    sub_217752E58();
    v59 = 0;
    v52 = OUTLINED_FUNCTION_61_19();
    v53(v52);
    v54 = v58;
    *&v58[v60[14]] = v61;
    sub_217683E38();
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_217683E90(v54, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
    goto LABEL_18;
  }

  v50 = OUTLINED_FUNCTION_61_19();
  v51(v50);
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_17_56();
  v30 = 1;
  v29 = 1;
  v26 = v58;
  memcpy(v63, v58, 0x1B8uLL);
  sub_2171F0738(v63, &qword_27CB25000, &unk_21776EA00);
  if (v24)
  {
    goto LABEL_5;
  }

LABEL_12:
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_13:
  v31 = *(v26 + 60);

  v28 = v60;
  if (v24)
  {
    goto LABEL_7;
  }

LABEL_14:
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_15:
  OUTLINED_FUNCTION_191_2(v28[9]);
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_16:
  if (!v29)
  {
    goto LABEL_18;
  }

LABEL_17:
  OUTLINED_FUNCTION_191_2(v28[12]);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217680E24(uint64_t a1)
{
  v2 = sub_217683B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217680E60(uint64_t a1)
{
  v2 = sub_217683B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217680F00(uint64_t a1)
{
  v2 = sub_217683BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217680F3C(uint64_t a1)
{
  v2 = sub_217683BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21768103C(uint64_t a1)
{
  v2 = sub_217683C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217681078(uint64_t a1)
{
  v2 = sub_217683C10();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2176810F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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

uint64_t LegacyModelCodablePlaylistEntry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t LegacyModelCodablePlaylistEntry.attributes.getter()
{
  v0 = *(OUTLINED_FUNCTION_99_16() + 20);
  OUTLINED_FUNCTION_32_42();
  return sub_217683E38();
}

uint64_t LegacyModelCodablePlaylistEntry.relationships.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntry.views.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntry.meta.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_217681368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE8AD8;
  v2 = byte_280BE8AE0;
  *(v0 + 32) = qword_280BE8AD0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2BFF8 = v0;

  return sub_217751DE8();
}

uint64_t static LegacyModelCodablePlaylistEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (sub_217753058()) && (v4 = type metadata accessor for LegacyModelCodablePlaylistEntry(0), v5 = v4[5], static LegacyModelCodablePlaylistEntry.Attributes.== infix(_:_:)(), (v6) && *(v1 + v4[6]) == *(v0 + v4[6]) && *(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v7 = *(v1 + v4[8]) ^ *(v0 + v4[8]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2176814F8(char a1)
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

uint64_t sub_21768158C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176815E0(uint64_t a1)
{
  v2 = sub_217683C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21768161C(uint64_t a1)
{
  v2 = sub_217683C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyModelCodablePlaylistEntry.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C070, &qword_21778F888);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_87_2();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217683C84();
  sub_2177532F8();
  v19 = *v4;
  v23 = v4[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_4_111();
  sub_217752F88();
  if (!v2)
  {
    v14 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
    v15 = v14[5];
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    OUTLINED_FUNCTION_34_37();
    sub_217680340(v16, v17);
    sub_217752F88();
    v20 = *(v4 + v14[6]);
    sub_21733C0C8();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
    v21 = *(v4 + v14[7]);
    sub_21733C074();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
    v22 = *(v4 + v14[8]);
    sub_2174D77D0();
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t LegacyModelCodablePlaylistEntry.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_217751FF8();
  v4 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v5 = v0 + v4[5];
  LegacyModelCodablePlaylistEntry.Attributes.hash(into:)();
  v6 = *(v1 + v4[6]);
  sub_217753208();
  v7 = *(v1 + v4[7]);
  sub_217753208();
  v8 = *(v1 + v4[8]);
  return sub_217753208();
}

uint64_t sub_217681938(void (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void LegacyModelCodablePlaylistEntry.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v36[1] = v3;
  v4 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C080, &unk_21778F890);
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v36[2] = v14;
  v36[3] = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = v36 - v19;
  v21 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v22 = OUTLINED_FUNCTION_43(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  OUTLINED_FUNCTION_1();
  v28 = (v27 - v26);
  v30 = v2[3];
  v29 = v2[4];
  v37 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v30);
  sub_217683C84();
  v36[4] = v20;
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v31 = v39;
    *v28 = v38;
    v28[1] = v31;
    v36[0] = v31;
    LOBYTE(v38) = 1;
    OUTLINED_FUNCTION_34_37();
    sub_217680340(v32, v33);
    sub_217752EA8();
    sub_217683CD8(v11, v28 + v21[5]);
    sub_217683D3C();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    *(v28 + v21[6]) = v38;
    sub_217683D90();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    *(v28 + v21[7]) = v38;
    sub_217683DE4();
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    v34 = OUTLINED_FUNCTION_10_0();
    v35(v34);
    *(v28 + v21[8]) = v38;
    sub_217683E38();
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_217683E90(v28, type metadata accessor for LegacyModelCodablePlaylistEntry);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217681D68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

void Playlist.Entry.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v205 = v2;
  v229 = v4;
  v230 = v3;
  v6 = v5;
  v226 = v7;
  v231 = v8;
  v228 = *(v8 - 8);
  v9 = *(v228 + 64);
  MEMORY[0x28223BE20](v5, v3);
  OUTLINED_FUNCTION_1();
  v204 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  v223 = v202 - v17;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  v18 = OUTLINED_FUNCTION_43(v222);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_6_1();
  v202[2] = v22 - v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  v203 = v202 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_6_1();
  v208 = v32 - v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_99();
  v224 = v36;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v37, v38);
  OUTLINED_FUNCTION_99();
  v225 = v39;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_99();
  v207 = v42;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_99();
  v219 = v45;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v46, v47);
  OUTLINED_FUNCTION_99();
  v220 = v48;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_99();
  v206 = v51;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v52, v53);
  OUTLINED_FUNCTION_99();
  v235 = v54;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v55, v56);
  v217 = v202 - v57;
  v234 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v58 = OUTLINED_FUNCTION_43(v234);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58, v61);
  OUTLINED_FUNCTION_1();
  v236 = v63 - v62;
  v64 = type metadata accessor for PlaylistEntryPropertyProvider();
  v65 = OUTLINED_FUNCTION_43(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65, v68);
  OUTLINED_FUNCTION_1();
  v71 = v70 - v69;
  v252 = 0;
  v72 = 0uLL;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  v253 = -1;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
    v72 = 0uLL;
  }

  v254[0] = v72;
  v254[1] = v72;
  v254[2] = v72;
  v254[3] = v72;
  v254[4] = v72;
  v254[5] = v72;
  v254[6] = v72;
  *&v254[7] = 0;
  sub_2172DABC4();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v74 = v73[10];
  v75 = v6 + v73[9];
  v76 = *(v75 + 8);
  v233 = *v75;
  v214 = *(v75 + 16);
  v77 = *(v6 + v73[12]);
  v78 = *(v6 + v73[13]);
  v79 = v73[15];
  v209 = *(v6 + v73[14]);
  v210 = v77;
  v80 = *(v6 + v74 + 8);
  v212 = *(v6 + v74);
  v237 = v6;
  v81 = *(v6 + v79);
  v248 = 0;
  v246 = 0u;
  v247 = 0u;
  sub_2172A497C(v256);
  memcpy(v71, v256, 0x221uLL);
  *(v71 + 552) = 0;
  *(v71 + 560) = 1;
  v82 = v64[8];
  v83 = sub_2177517D8();
  v215 = v82;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v216 = v64[9];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
  v90 = v71 + v64[10];
  *(v90 + 48) = 0;
  *(v90 + 16) = 0u;
  *(v90 + 32) = 0u;
  *v90 = 0u;
  v227 = v90;
  *(v90 + 56) = -1;
  v91 = v71 + v64[11];
  *v91 = 0;
  *(v91 + 8) = 0;
  v218 = v91;
  *(v91 + 16) = 0;
  memcpy((v71 + v64[12]), v254, 0x78uLL);
  v92 = (v71 + v64[14]);
  *v92 = 0;
  v92[1] = 0;
  v221 = v64[15];
  OUTLINED_FUNCTION_5_5();
  v238 = v83;
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v83);
  v96 = v71 + v64[17];
  *(v96 + 32) = 0;
  *v96 = 0u;
  *(v96 + 16) = 0u;
  v97 = qword_280BE3168;
  v213 = v76;
  v98 = v81;
  v100 = v209;
  v99 = v210;
  sub_217751DE8();
  v211 = v80;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v101 = v98;
  sub_217751DE8();
  if (v97 != -1)
  {
    swift_once();
  }

  v102 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    v201 = qword_280C01FB0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FB0 < 0)
    {
      v201 = qword_280C01FB0;
    }

    v202[1] = v201;
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_1024();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_1024();

    v102 = v97;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v71 + v64[18]) = v102;
  v103 = (v71 + v64[21]);
  memcpy((v71 + v64[19]), v255, 0x161uLL);
  v104 = v71 + v64[20];
  v105 = v213;
  *v104 = v233;
  *(v104 + 8) = v105;
  *(v104 + 16) = v214;
  v106 = v211;
  *v103 = v212;
  v103[1] = v106;
  *(v71 + v64[22]) = v99;
  *(v71 + v64[23]) = v78;
  *(v71 + v64[24]) = v100;
  *(v71 + v64[25]) = v101;
  sub_2172E1F3C();
  sub_2172E1F3C();
  v107 = v236;
  sub_217683E38();
  v108 = v107 + *(v234 + 20);
  OUTLINED_FUNCTION_12_33();
  memcpy(v109, v110, v111);
  OUTLINED_FUNCTION_12_33();
  memcpy(v112, v113, v114);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v245) == 1)
  {
    v115 = v256;
  }

  else
  {
    memcpy(v243, v245, 0x1B8uLL);
    memcpy(v239, v244, sizeof(v239));
    OUTLINED_FUNCTION_39_0();
    sub_2172E3D54();
    CloudAttribute<A>.convertToArtwork()(v241);
    memcpy(v240, v243, sizeof(v240));
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v116, v117, v118);
    memcpy(v242, v241, 0x221uLL);
    nullsub_1(v242, v119);
    v115 = v242;
  }

  memcpy(v243, v115, sizeof(v243));
  v120 = v238;
  v121 = v235;
  memcpy(v242, v71, 0x221uLL);
  sub_2171F0738(v242, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v71, v243, 0x221uLL);
  if ((*(v108 + 448) & 1) == 0)
  {
    *(v71 + 552) = *(v108 + 440) / 1000.0;
    *(v71 + 560) = 0;
  }

  v232 = v64;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v122 = type metadata accessor for CloudFormatter();
  v123 = __swift_project_value_buffer(v122, qword_280BE8918);
  v124 = *(v108 + 456);
  v125 = *(v108 + 464);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v120);
  v233 = v123;
  v234 = v122;
  if (v125)
  {
    v129 = *(v123 + *(v122 + 20));
    OUTLINED_FUNCTION_16_0();
    v130 = sub_217751F18();
    v131 = [v129 dateFromString_];

    if (v131)
    {
      v132 = v206;
      sub_2177517C8();

      v133 = 0;
    }

    else
    {
      v133 = 1;
      v132 = v206;
    }

    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v137, v138, v139);
    __swift_storeEnumTagSinglePayload(v132, v133, 1, v120);
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_36();
    sub_2172E21DC();
    v122 = v234;
  }

  else
  {
    sub_2171F0738(v121, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v120);
  }

  sub_2172E1F3C();
  v140 = *(v108 + 472);
  v141 = *(v108 + 480);
  v142 = v219;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v120);
  if (v141)
  {
    v146 = *(v233 + *(v122 + 20));
    OUTLINED_FUNCTION_16_0();
    v147 = sub_217751F18();
    v148 = [v146 dateFromString_];

    if (v148)
    {
      v149 = v207;
      sub_2177517C8();

      v150 = 0;
    }

    else
    {
      v150 = 1;
      v149 = v207;
    }

    v154 = v238;
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v155, v156, v157);
    __swift_storeEnumTagSinglePayload(v149, v150, 1, v154);
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_36();
    sub_2172E21DC();
  }

  else
  {
    sub_2171F0738(v142, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v120);
  }

  sub_2172E1F3C();
  v158 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v159 = v158[8];
  v160 = v223;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v160, 1, v222);
  if (v161)
  {
    sub_2171F0738(v160, &qword_27CB25648, &qword_21775D598);
  }

  else
  {
    v162 = v203;
    sub_2172E21DC();
    sub_2172E3D54();
    (*(v228 + 16))(v204, v230, v231);

    Playlist.Entry.Item.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_2171F0738(v162, &qword_27CB25650, &unk_21778F830);
    sub_2172E1F3C();
  }

  v163 = v224;
  v164 = v234;
  v165 = v232;
  v166 = v71 + v232[13];
  v167 = v108 + v158[9];
  v169 = *v167;
  v168 = *(v167 + 8);
  LOBYTE(v167) = *(v167 + 16);
  v170 = v218;
  v171 = v218[1];
  *v218 = v169;
  v170[1] = v168;
  *(v170 + 16) = v167;
  sub_217751DE8();

  v172 = v108 + v158[11];
  v173 = *v172;
  LOBYTE(v172) = *(v172 + 8);
  *v166 = v173;
  *(v166 + 8) = v172;
  v174 = (v108 + v158[12]);
  v175 = *v174;
  v176 = v174[1];
  OUTLINED_FUNCTION_5_5();
  v177 = v238;
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v238);
  if (v176)
  {
    v181 = *(v233 + *(v164 + 20));
    OUTLINED_FUNCTION_16_0();
    v182 = sub_217751F18();
    v183 = [v181 dateFromString_];

    if (v183)
    {
      v184 = v208;
      sub_2177517C8();

      v185 = 0;
    }

    else
    {
      v185 = 1;
      v184 = v208;
    }

    v190 = v237;
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v191, v192, v193);
    __swift_storeEnumTagSinglePayload(v184, v185, 1, v238);
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    v189 = v190;
    v165 = v232;
  }

  else
  {
    sub_2171F0738(v163, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v177);
    v189 = v237;
  }

  v194 = (v71 + *(v165 + 64));
  sub_2172E1F3C();
  v195 = (v108 + v158[10]);
  v196 = v195[1];
  *v194 = *v195;
  v194[1] = v196;
  v197 = (v108 + v158[13]);
  v198 = v197[1];
  *(v71 + 568) = *v197;
  *(v71 + 576) = v198;
  v199 = (v108 + v158[14]);
  v200 = v199[1];
  *(v71 + 584) = *v199;
  *(v71 + 592) = v200;
  v241[3] = v165;
  v241[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v241);
  sub_217683E38();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  Playlist.Entry.init(propertyProvider:)(v241, v226);

  (*(v228 + 8))(v230, v231);
  sub_2171F0738(v189, &qword_27CB247D8, &qword_217758D60);
  sub_217683E90(v236, type metadata accessor for LegacyModelCodablePlaylistEntry);
  sub_217683E90(v71, type metadata accessor for PlaylistEntryPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Playlist.Entry.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v247 = v3;
  v248 = v4;
  v246 = v5;
  v260 = v6;
  v259 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  v7 = OUTLINED_FUNCTION_43(v259);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v262 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_87_2();
  v18 = sub_2177517D8();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v245 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  OUTLINED_FUNCTION_6_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_99();
  v242 = v29;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v239 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v35 = OUTLINED_FUNCTION_45_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_6_1();
  v243 = v39 - v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_99();
  v256 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v239 - v46;
  MEMORY[0x28223BE20](v48, v49);
  OUTLINED_FUNCTION_99();
  v250 = v50;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v239 - v53;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v239 - v57;
  v258 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v59 = OUTLINED_FUNCTION_43(v258);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v62);
  OUTLINED_FUNCTION_1();
  v257 = (v71 - v70);
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, v63, v64, v65, v66, v67, v68, v69, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, qword_280BE66E0, v255, v256);
  v72 = LOBYTE(v268[7]);
  v73 = sub_2171F0738(v268, &qword_27CB27D20, &qword_217758B80);
  LODWORD(v255) = v72;
  v261 = v1;
  if (v72 == 255)
  {
    v83 = COERCE_DOUBLE(Playlist.Entry.duration.getter(v73));
    HIDWORD(v244) = v84;
    if (v84)
    {
      v253 = 0;
LABEL_11:
      Playlist.Entry.artwork.getter(v84, v85, v86, v87, v88, v89, v90, v267);
      memcpy(v268, v267, 0x221uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v268) == 1)
      {
        sub_2172E22C0(v263);
      }

      else
      {
        memcpy(v263, v268, 0x221uLL);
        Artwork.convertToCloudArtworkAttribute()(v265);
        memcpy(v264, v263, 0x221uLL);
        sub_217284084(v264);
        memcpy(v266, v265, sizeof(v266));
        nullsub_1(v266, v92);
        memcpy(v263, v266, 0x1B8uLL);
      }

      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24();
      }

      v93 = type metadata accessor for CloudFormatter();
      v249 = __swift_project_value_buffer(v93, qword_280BE8918);
      if (qword_280BE6738 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02080, v94, v95, v96, v97, v98, v99, v100, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
      OUTLINED_FUNCTION_185_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v54, 1, v18);
      v240 = v93;
      v241 = v26;
      if (v101)
      {
        sub_2171F0738(v58, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v54, &qword_27CB241C0, &qword_217759480);
        v251 = 0;
        v252 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_59_23();
        v102(v33, v54, v18);
        v103 = *(v249 + *(v93 + 20));
        v104 = sub_2177517A8();
        v105 = [v103 stringFromDate_];

        v106 = sub_217751F48();
        v251 = v107;
        v252 = v106;

        v108 = *(v26 + 8);
        v26 += 8;
        v108(v33, v18);
        sub_2171F0738(v58, &qword_27CB241C0, &qword_217759480);
      }

      v116 = v250;
      v1 = v261;
      if (qword_280BE6700 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02068, v109, v110, v111, v112, v113, v114, v115, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260);
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v47, 1, v18);
      if (v101)
      {
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v117, v118, v119);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v120, v121, v122);
        v249 = 0;
        v250 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_59_23();
        v123 = v242;
        v124(v242, v47, v18);
        v125 = *(v249 + *(v240 + 20));
        v126 = sub_2177517A8();
        v127 = [v125 stringFromDate_];

        v128 = sub_217751F48();
        v249 = v129;
        v250 = v128;

        (*(v26 + 8))(v123, v18);
        sub_2171F0738(v116, &qword_27CB241C0, &qword_217759480);
      }

      v26 = v241;
      memcpy(v269, v263, 0x1B8uLL);
      v82 = v256;
      v81 = HIDWORD(v244);
      goto LABEL_27;
    }

    v91 = v83 * 1000.0;
    if (COERCE__INT64(fabs(v83 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v91 > -9.22337204e18)
    {
      if (v91 < 9.22337204e18)
      {
        v253 = v91;
        goto LABEL_11;
      }

LABEL_54:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_2172E22C0(v269);
  v249 = 0;
  v250 = 0;
  v251 = 0;
  v252 = 0;
  v253 = 0;
  v81 = 1;
  v82 = v256;
LABEL_27:
  sub_2176CA244(v254, v74, v75, v76, v77, v78, v79, v80, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256);
  if (LOBYTE(v268[7]) == 255)
  {
    sub_2171F0738(v268, &qword_27CB27D20, &qword_217758B80);
    v130 = 1;
  }

  else
  {
    Playlist.Entry.Item.convertToLegacyModelCodableResource<A>(configuration:)();
    sub_21729C7F8(v268);
    v130 = 0;
  }

  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  __swift_storeEnumTagSinglePayload(v1, v130, 1, v131);
  if (qword_280BE66B8 != -1)
  {
    swift_once();
  }

  sub_2176CAC5C(qword_280C02038, v132, v133, v134, v135, v136, v137, v138, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258);
  v256 = v266[0];
  v254 = v266[1];
  LODWORD(v248) = LOBYTE(v266[2]);
  v140 = v255;
  if (v255 == 255)
  {
    v141 = Playlist.Entry.title.getter(v139);
    v246 = v142;
    v247 = v141;
  }

  else
  {
    v246 = 0;
    v247 = 0;
  }

  if (qword_280BE66A8 != -1)
  {
    swift_once();
  }

  v143 = sub_2172A3FC8();
  v145 = v144;
  if (v140 == 255)
  {
    HIDWORD(v244) = v81;
    if (qword_280BE8910 != -1)
    {
      OUTLINED_FUNCTION_2_24();
    }

    v147 = type metadata accessor for CloudFormatter();
    v148 = __swift_project_value_buffer(v147, qword_280BE8918);
    Playlist.Entry.releaseDate.getter();
    v149 = v243;
    sub_2172E3D54();
    OUTLINED_FUNCTION_133(v149, 1, v18);
    if (v101)
    {
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v150, v151, v152);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v153, v154, v155);
      v255 = 0;
      v146 = 0;
    }

    else
    {
      v242 = v143;
      OUTLINED_FUNCTION_59_23();
      v156(v26, v149, v18);
      v157 = *(v148 + *(v147 + 20));
      v158 = sub_2177517A8();
      v159 = [v157 stringFromDate_];

      v255 = sub_217751F48();
      v160 = v82;
      v146 = v161;

      v143 = v242;
      (*(v26 + 8))(v26, v18);
      sub_2171F0738(v160, &qword_27CB241C0, &qword_217759480);
    }

    LOBYTE(v81) = BYTE4(v244);
  }

  else
  {
    v255 = 0;
    v146 = 0;
  }

  if (qword_280BE66F8 != -1)
  {
    swift_once();
  }

  v162 = sub_2172A46D8();
  v164 = v163;
  if (qword_280BE6720 != -1)
  {
    swift_once();
  }

  if (v145)
  {
    v143 = 0;
  }

  v165 = sub_2172A46D8();
  v167 = v166;
  v168 = v257;
  memcpy(v257, v269, 0x1B8uLL);
  v168[55] = v253;
  *(v168 + 448) = v81 & 1;
  v169 = v251;
  v168[57] = v252;
  v168[58] = v169;
  v170 = v249;
  v168[59] = v250;
  v168[60] = v170;
  v171 = v258;
  v172 = v258[8];
  sub_2172E21DC();
  v173 = v168 + v171[9];
  v174 = v254;
  *v173 = v256;
  *(v173 + 1) = v174;
  v173[16] = v248;
  v175 = (v168 + v171[10]);
  v176 = v246;
  *v175 = v247;
  v175[1] = v176;
  v177 = v168 + v171[11];
  *v177 = v143;
  v177[8] = 0;
  v178 = (v168 + v171[12]);
  *v178 = v255;
  v178[1] = v146;
  v179 = (v168 + v171[13]);
  *v179 = v162;
  v179[1] = v164;
  v180 = (v168 + v171[14]);
  *v180 = v165;
  v180[1] = v167;
  v182 = *v2;
  v181 = v2[1];
  v183 = v259;
  v184 = v259[5];
  OUTLINED_FUNCTION_32_42();
  v261 = v185;
  v186 = v262;
  sub_217683E38();
  *v186 = v182;
  v186[1] = v181;
  *(v186 + v183[6]) = 1;
  *(v186 + v183[7]) = 1;
  *(v186 + v183[8]) = 1;
  v187 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v188 = *(v187 + 24);
  sub_217751DE8();
  v189 = OUTLINED_FUNCTION_16_0();
  v188(v189);
  nullsub_1(v264, v190);
  memcpy(v267, v264, 0x161uLL);
  v191 = v260;
  sub_217683E38();
  OUTLINED_FUNCTION_19_43();
  v192 = OUTLINED_FUNCTION_40_34();
  v193(v192);
  v194 = v268[4];
  __swift_project_boxed_opaque_existential_1(v268, v268[3]);
  v195 = *(*(v194 + 8) + 48);
  v196 = OUTLINED_FUNCTION_997();
  v197(v196);
  __swift_destroy_boxed_opaque_existential_1(v268);
  v258 = v265[1];
  v259 = v265[0];
  LODWORD(v256) = LOBYTE(v265[2]);
  OUTLINED_FUNCTION_19_43();
  v198 = OUTLINED_FUNCTION_40_34();
  v199(v198);
  __swift_project_boxed_opaque_existential_1(v268, v268[3]);
  OUTLINED_FUNCTION_26_1();
  v201 = *(v200 + 56);
  v202 = OUTLINED_FUNCTION_997();
  v204 = v203(v202);
  v254 = v205;
  v255 = v204;
  __swift_destroy_boxed_opaque_existential_1(v268);
  memcpy(v268, v267, 0x168uLL);
  memset(&v268[45], 0, 24);
  nullsub_1(v268, v206);
  OUTLINED_FUNCTION_19_43();
  v207 = OUTLINED_FUNCTION_40_34();
  v208(v207);
  __swift_project_boxed_opaque_existential_1(v263, v263[3]);
  OUTLINED_FUNCTION_26_1();
  v210 = *(v209 + 64);
  v211 = OUTLINED_FUNCTION_997();
  v253 = v212(v211);
  __swift_destroy_boxed_opaque_existential_1(v263);
  OUTLINED_FUNCTION_19_43();
  v213 = OUTLINED_FUNCTION_40_34();
  v214(v213);
  __swift_project_boxed_opaque_existential_1(v263, v263[3]);
  OUTLINED_FUNCTION_26_1();
  v216 = *(v215 + 72);
  v217 = OUTLINED_FUNCTION_997();
  v219 = v218(v217);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v220 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v221 = *(v220 + 96);
  v222 = OUTLINED_FUNCTION_1024();
  v223(v222, v220);
  __swift_project_boxed_opaque_existential_1(v263, v263[3]);
  OUTLINED_FUNCTION_26_1();
  v225 = *(v224 + 80);
  v226 = OUTLINED_FUNCTION_1024();
  v228 = v227(v226);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v229 = v2[5];
  v230 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v229);
  (*(v230 + 96))(v263, v229, v230);
  v231 = v263[3];
  __swift_project_boxed_opaque_existential_1(v263, v263[3]);
  OUTLINED_FUNCTION_26_1();
  v233 = (*(v232 + 88))(v231);
  sub_217683E90(v262, type metadata accessor for LegacyModelCodablePlaylistEntry);
  sub_217683E90(v168, v261);
  __swift_destroy_boxed_opaque_existential_1(v263);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v235 = v191 + v234[9];
  v236 = v258;
  *v235 = v259;
  *(v235 + 8) = v236;
  *(v235 + 16) = v256;
  v237 = (v191 + v234[10]);
  v238 = v254;
  *v237 = v255;
  v237[1] = v238;
  memcpy((v191 + v234[11]), v268, 0x180uLL);
  *(v191 + v234[12]) = v253;
  *(v191 + v234[13]) = v219;
  *(v191 + v234[14]) = v228;
  *(v191 + v234[15]) = v233;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217683A94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25650, &unk_21778F830);
    sub_217680340(&qword_27CB2C020, type metadata accessor for LegacyModelCodablePlaylistEntryItem);
    sub_217680340(&qword_27CB2C028, type metadata accessor for LegacyModelCodablePlaylistEntryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217683B68()
{
  result = qword_27CB2C048;
  if (!qword_27CB2C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C048);
  }

  return result;
}

unint64_t sub_217683BBC()
{
  result = qword_27CB2C058;
  if (!qword_27CB2C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C058);
  }

  return result;
}

unint64_t sub_217683C10()
{
  result = qword_27CB2C068;
  if (!qword_27CB2C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C068);
  }

  return result;
}

unint64_t sub_217683C84()
{
  result = qword_27CB2C078;
  if (!qword_27CB2C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C078);
  }

  return result;
}

uint64_t sub_217683CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217683D3C()
{
  result = qword_27CB2C090;
  if (!qword_27CB2C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C090);
  }

  return result;
}

unint64_t sub_217683D90()
{
  result = qword_27CB2C098;
  if (!qword_27CB2C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C098);
  }

  return result;
}

unint64_t sub_217683DE4()
{
  result = qword_27CB2C0A0;
  if (!qword_27CB2C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0A0);
  }

  return result;
}

uint64_t sub_217683E38()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_217683E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_217683F34()
{
  result = qword_27CB2C0B0;
  if (!qword_27CB2C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0B0);
  }

  return result;
}

unint64_t sub_217683F8C()
{
  result = qword_27CB2C0B8;
  if (!qword_27CB2C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0B8);
  }

  return result;
}

unint64_t sub_217683FE4()
{
  result = qword_27CB2C0C0;
  if (!qword_27CB2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0C0);
  }

  return result;
}

uint64_t sub_217684038(uint64_t a1)
{
  result = sub_217680340(&qword_27CB2C0C8, type metadata accessor for LegacyModelCodablePlaylistEntry);
  *(a1 + 8) = result;
  return result;
}

void sub_2176841F0()
{
  type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE2FC0);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE2FC8);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE2FB8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21768430C()
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7528);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7598);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2172E2E08(319, &qword_280BE4348, &qword_27CB25650);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_2172E2E58(319, &qword_280BE49B8);
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2172E2E58(319, &qword_280BE5928);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

_BYTE *sub_2176844B8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntry.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217684750()
{
  result = qword_27CB2C0E0;
  if (!qword_27CB2C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0E0);
  }

  return result;
}

unint64_t sub_2176847A8()
{
  result = qword_27CB2C0E8;
  if (!qword_27CB2C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0E8);
  }

  return result;
}

unint64_t sub_217684800()
{
  result = qword_27CB2C0F0;
  if (!qword_27CB2C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0F0);
  }

  return result;
}

unint64_t sub_217684858()
{
  result = qword_27CB2C0F8;
  if (!qword_27CB2C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0F8);
  }

  return result;
}

unint64_t sub_2176848B0()
{
  result = qword_27CB2C100;
  if (!qword_27CB2C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C100);
  }

  return result;
}

unint64_t sub_217684908()
{
  result = qword_27CB2C108;
  if (!qword_27CB2C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C108);
  }

  return result;
}

unint64_t sub_217684960()
{
  result = qword_27CB2C110;
  if (!qword_27CB2C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C110);
  }

  return result;
}

unint64_t sub_2176849B8()
{
  result = qword_27CB2C118;
  if (!qword_27CB2C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C118);
  }

  return result;
}

unint64_t sub_217684A10()
{
  result = qword_27CB2C120;
  if (!qword_27CB2C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C120);
  }

  return result;
}

unint64_t sub_217684A68()
{
  result = qword_27CB2C128;
  if (!qword_27CB2C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C128);
  }

  return result;
}

unint64_t sub_217684AC0()
{
  result = qword_27CB2C130;
  if (!qword_27CB2C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C130);
  }

  return result;
}

unint64_t sub_217684B18()
{
  result = qword_27CB2C138;
  if (!qword_27CB2C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C138);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_70()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_16_65()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 8);
  return result;
}

void *OUTLINED_FUNCTION_18_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, &STACK[0x300], 0x180uLL);
}

void *OUTLINED_FUNCTION_29_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x480], 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_47_28(uint64_t a1)
{
  v3 = *(a1 + 36);
  result = *(v2 + v3);
  v5 = *(v2 + v3 + 8);
  v6 = (v1 + v3);
  v7 = *v6;
  v8 = v6[1];
  return result;
}

void *OUTLINED_FUNCTION_48_20(void *a1)
{

  return memcpy(a1, (v1 + 352), 0x180uLL);
}

void *OUTLINED_FUNCTION_50_30()
{

  return memcpy(&STACK[0x300], &STACK[0xA80], 0x180uLL);
}

void *OUTLINED_FUNCTION_51_24()
{

  return memcpy(&STACK[0x900], &STACK[0xA80], 0x180uLL);
}

void *OUTLINED_FUNCTION_52_27()
{

  return memcpy(&STACK[0x600], (v0 + 384), 0x180uLL);
}

void *OUTLINED_FUNCTION_53_26()
{

  return memcpy(&STACK[0x600], (v0 + 352), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_54_23()
{

  return sub_217751FF8();
}

void *OUTLINED_FUNCTION_57_24(void *a1)
{

  return memcpy(a1, (v1 + 352), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_61_19()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_63_23(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  sub_217261FB0(v4, v5);
}

uint64_t OUTLINED_FUNCTION_64_24()
{

  return static CloudResourceCustomMetadata.== infix(_:_:)(&STACK[0x480], &STACK[0x300]);
}

void *OUTLINED_FUNCTION_65_24(void *a1)
{

  return memcpy(a1, (v1 + 856), 0x180uLL);
}

void *OUTLINED_FUNCTION_67_19(void *a1)
{

  return memcpy(a1, (v1 + 656), 0x180uLL);
}

void *OUTLINED_FUNCTION_68_23(void *a1)
{

  return memcpy(a1, (v1 + 200), 0x180uLL);
}

void OUTLINED_FUNCTION_71_19()
{
  v3 = *(v2 + 40);
  v4 = *(v1 + v3 + 8);
  v5 = *(v0 + v3 + 8);
}

void *OUTLINED_FUNCTION_73_19(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x180uLL);
}

void *OUTLINED_FUNCTION_76_17(void *a1)
{

  return memcpy(a1, (v1 + 224), 0x180uLL);
}

void *OUTLINED_FUNCTION_77_16(void *a1)
{

  return memcpy(a1, (v1 + 656), 0x180uLL);
}

void *OUTLINED_FUNCTION_78_16(void *a1)
{

  return memcpy(a1, (v1 + 200), 0x180uLL);
}

void *OUTLINED_FUNCTION_94_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, &STACK[0x300], 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_99_16()
{

  return type metadata accessor for LegacyModelCodablePlaylistEntry(0);
}

void *OUTLINED_FUNCTION_103_16(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x180uLL);
}

uint64_t AudioVariant.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t AudioVariant.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_2171FF30C(a1, v12);
  sub_2172DF710();
  sub_217685200();
  sub_217752258();
  if (!v2)
  {
    v5 = 0;
    switch(v11)
    {
      case 1:
      case 9:
        goto LABEL_9;
      case 2:
      case 10:
        v5 = 1;
        goto LABEL_9;
      case 3:
        v5 = 2;
        goto LABEL_9;
      case 4:
        v5 = 3;
        goto LABEL_9;
      case 5:
        v5 = 4;
        goto LABEL_9;
      case 6:
        v5 = 5;
LABEL_9:
        *a2 = v5;
        break;
      default:
        v6 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        OUTLINED_FUNCTION_0_94();
        sub_2177532A8();
        __swift_project_boxed_opaque_existential_1(v12, v12[3]);
        OUTLINED_FUNCTION_0_94();
        v8 = sub_217753078();
        v10 = v9;
        sub_217752AA8();

        MEMORY[0x21CEA23B0](v8, v10);

        MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B4A30);
        sub_217752B48();
        swift_allocError();
        sub_217752AF8();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(v12);
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217685200()
{
  result = qword_280BE40F8;
  if (!qword_280BE40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE40F8);
  }

  return result;
}

uint64_t AudioVariant.encode(to:)(void *a1)
{
  v2 = *v1 + 1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2172DF0B0();
  sub_2177530F8();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t AudioVariant.description.getter()
{
  result = 0x744179626C6F642ELL;
  switch(*v0)
  {
    case 1:
      result = 0x754179626C6F642ELL;
      break;
    case 2:
      result = 0x73656C73736F6C2ELL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x74537973736F6C2ELL;
      break;
    case 5:
      result = 0x6C6169746170732ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217685414()
{
  result = qword_27CB2C140;
  if (!qword_27CB2C140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C70, &unk_217759670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C140);
  }

  return result;
}

unint64_t sub_21768547C()
{
  result = qword_27CB2C148;
  if (!qword_27CB2C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C148);
  }

  return result;
}

void *sub_2176854D0@<X0>(const void *a1@<X3>, void *a2@<X8>)
{
  _s6LoaderCMa();
  v4 = OUTLINED_FUNCTION_240();
  a2[13] = sub_2174CD25C(v4, v5, v6);
  return memcpy(a2, a1, 0x68uLL);
}

void *sub_217685554@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = v16;
  v25[1] = v17;
  v25[2] = v18;
  v25[3] = v19;
  _s6LoaderCMa();
  (*(v9 + 16))(v15, a1, a3);
  v20 = sub_2174CD0B4(v15);
  v21 = *(v9 + 8);
  v22 = OUTLINED_FUNCTION_240();
  v23(v22);
  a4[13] = v20;
  return memcpy(a4, a2, 0x68uLL);
}

uint64_t sub_217685674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a2;
  v96 = a1;
  v90 = *(a3 + 16);
  v4 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_6_1();
  v87[0] = v5 - v6;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v7, v8);
  v87[2] = v87 - v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10, v11);
  v87[1] = v87 - v12;
  v14 = *(v13 + 24);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_6_1();
  v91 = v21 - v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23, v24);
  v93 = v87 - v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26, v27);
  v92 = v87 - v28;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v29, v30);
  v32 = v87 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v95 = v87 - v35;
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  v37 = *(*(v36 + 40) + 8);
  v38 = type metadata accessor for MusicItemCollection();
  OUTLINED_FUNCTION_43(v38);
  (*(v39 + 16))(&v105, v3, v38);
  v88 = v3;
  v40 = MusicItemCollection.startIndex.getter(v38);
  v109 = v40;
  if (v40 != MusicItemCollection.endIndex.getter(v38))
  {
    v94 = (v16 + 32);
    v41 = (v16 + 16);
    v42 = (v16 + 8);
    do
    {
      v43 = v95;
      MusicItemCollection.subscript.getter(v40, v38, v95);
      MusicItemCollection.formIndex(after:)(&v109);
      (*v94)(v32, v43, v14);
      v44 = *v41;
      if (v96)
      {
        v45 = OUTLINED_FUNCTION_7_75();
        v44(v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
        if (OUTLINED_FUNCTION_11_71())
        {
          sub_2171F3F0C(v101, &v102);
          __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
          v46 = sub_217753068();
          goto LABEL_9;
        }

        v48 = OUTLINED_FUNCTION_13_63();
        sub_2171F0738(v48, &qword_27CB28B60, &qword_2177711B8);
      }

      v49 = OUTLINED_FUNCTION_7_75();
      v44(v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
      if (!OUTLINED_FUNCTION_11_71())
      {
        v53 = OUTLINED_FUNCTION_13_63();
        sub_2171F0738(v53, &qword_27CB28B50, &qword_2177711A8);
        v54 = OUTLINED_FUNCTION_7_75();
        v44(v54);
        v50 = sub_217751FA8();
        v52 = v55;
        goto LABEL_11;
      }

      sub_2171F3F0C(v101, &v102);
      __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
      v46 = sub_217752FC8();
LABEL_9:
      *&v101[0] = v46;
      *(&v101[0] + 1) = v47;
      v99 = 10;
      v100 = 0xE100000000000000;
      v97 = 2105354;
      v98 = 0xE300000000000000;
      sub_21733A5C8();
      v50 = OUTLINED_FUNCTION_172();
      v52 = v51;

      __swift_destroy_boxed_opaque_existential_1(&v102);
LABEL_11:
      v56 = v110 & 0xFFFFFFFFFFFFLL;
      if ((*(&v110 + 1) & 0x2000000000000000) != 0)
      {
        v56 = HIBYTE(*(&v110 + 1)) & 0xFLL;
      }

      if (v56)
      {
        MEMORY[0x21CEA23B0](44, 0xE100000000000000);
      }

      *&v102 = 2105354;
      *(&v102 + 1) = 0xE300000000000000;
      MEMORY[0x21CEA23B0](v50, v52);

      MEMORY[0x21CEA23B0](v102, *(&v102 + 1));

      (*v42)(v32, v14);
      v57 = MusicItemCollection.endIndex.getter(v38);
      v40 = v109;
    }

    while (v109 != v57);
  }

  swift_getWitnessTable();
  v58 = sub_217752C88();
  OUTLINED_FUNCTION_43(v58);
  (*(v59 + 8))(&v105);
  v60 = v89;
  v61 = v88;
  if ((v96 & 1) != 0 && (v89 & 1) == 0)
  {
    v62 = *(v88 + 104);
    sub_2174CD3C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
    if (OUTLINED_FUNCTION_10_64())
    {
      OUTLINED_FUNCTION_8_78();
      v63 = sub_217753068();
      goto LABEL_23;
    }

    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    sub_2171F0738(&v102, &qword_27CB28B60, &qword_2177711B8);
  }

  v65 = *(v61 + 104);
  sub_2174CD3C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
  if (OUTLINED_FUNCTION_10_64())
  {
    OUTLINED_FUNCTION_8_78();
    v63 = sub_217752FC8();
LABEL_23:
    *&v102 = v63;
    *(&v102 + 1) = v64;
    OUTLINED_FUNCTION_4_112();
    OUTLINED_FUNCTION_3_109();
    v66 = OUTLINED_FUNCTION_172();
    v68 = v67;

    __swift_destroy_boxed_opaque_existential_1(&v105);
    if (v60)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (dynamic_cast_existential_1_conditional(v14))
    {
      (*(v73 + 8))(&v105);
      v75 = v107;
      v74 = v108;
    }

    else
    {
      v75 = sub_217753348();
      v74 = v77;
    }

    v105 = 0;
    v106 = 0xE000000000000000;
    sub_217752AA8();

    v105 = 0xD000000000000014;
    v106 = 0x80000002177B4B00;
    v78 = sub_217753348();
    MEMORY[0x21CEA23B0](v78);

    MEMORY[0x21CEA23B0](8236, 0xE200000000000000);
    MEMORY[0x21CEA23B0](v75, v74);

    MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
    strcpy(&v102, "\n  section: ");
    BYTE13(v102) = 0;
    HIWORD(v102) = -5120;
    v79 = OUTLINED_FUNCTION_240();
    MEMORY[0x21CEA23B0](v79);

    MEMORY[0x21CEA23B0](v102, *(&v102 + 1));

    MEMORY[0x21CEA23B0](0x6D65746920200A2CLL, 0xEC0000005B203A73);
    v80 = HIBYTE(*(&v110 + 1)) & 0xFLL;
    if ((*(&v110 + 1) & 0x2000000000000000) == 0)
    {
      v80 = v110 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      v102 = v110;
      OUTLINED_FUNCTION_4_112();
      OUTLINED_FUNCTION_3_109();
      v81 = OUTLINED_FUNCTION_172();
      v83 = v82;

      MEMORY[0x21CEA23B0](v81, v83);

      v84 = 1562386442;
      v85 = 0xE400000000000000;
    }

    else
    {

      v84 = 93;
      v85 = 0xE100000000000000;
    }

    MEMORY[0x21CEA23B0](v84, v85);
    v70 = 10506;
    goto LABEL_39;
  }

  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  sub_2171F0738(&v102, &qword_27CB28B50, &qword_2177711A8);
  v71 = *(v61 + 104);
  sub_2174CD3C0();
  v66 = sub_217751FA8();
  v68 = v72;
  if ((v60 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  v105 = v66;
  v106 = v68;
  MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
  v69 = HIBYTE(*(&v110 + 1)) & 0xFLL;
  if ((*(&v110 + 1) & 0x2000000000000000) == 0)
  {
    v69 = v110 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {
    MEMORY[0x21CEA23B0]();

    v70 = 23818;
LABEL_39:
    v76 = 0xE200000000000000;
    goto LABEL_40;
  }

  v70 = 93;
  v76 = 0xE100000000000000;
LABEL_40:
  MEMORY[0x21CEA23B0](v70, v76);
  return v105;
}

uint64_t MusicLibrarySection.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(*(a1 + 40) + 8);
  v6 = type metadata accessor for MusicItemCollection();
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2, v7);
}

uint64_t MusicLibrarySection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 104);
  sub_2174CD3C0();
  swift_getAtKeyPath();
  return (*(v5 + 8))(v11, v3);
}

uint64_t sub_217686074()
{
  sub_2177531E8();
  sub_217230408(v2, *v0);
  return sub_217753238();
}

uint64_t MusicLibrarySection.id.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v4, v5);
  v6 = *(v2 + 104);
  sub_2174CD3C0();
  if (swift_dynamicCast())
  {
    v7 = v15[0];
    v8 = v15[1];
    sub_217752AA8();

    strcpy(v15, "titledSection:");
    HIBYTE(v15[1]) = -18;
    MEMORY[0x21CEA23B0](v7, v8);

    return v15[0];
  }

  sub_2174CD3C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(v13, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v9;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_2171F0738(v13, &qword_27CB27590, &qword_21776ADF0);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2176862CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MusicLibrarySection.id.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t static MusicLibrarySection<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (static MusicItemCollection<>.== infix(_:_:)(a1, a2, a4, *(a7 + 8), a8))
  {
    _s6LoaderCMa();
    v10 = sub_2174CE5B4(*(a1 + 104), *(a2 + 104));
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t MusicLibrarySection<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(*(a2 + 40) + 8);
  v6 = type metadata accessor for MusicItemCollection();
  MusicItemCollection<>.hash(into:)(a1, v6);
  v7 = *(v2 + 104);
  OUTLINED_FUNCTION_240();
  return sub_2174CEC2C();
}

uint64_t MusicLibrarySection<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicLibrarySection<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_217686470(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return MusicLibrarySection<>.hashValue.getter(a1);
}

uint64_t sub_21768647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return MusicLibrarySection<>.hash(into:)(a1, a2);
}

uint64_t sub_217686488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicLibrarySection<>.hash(into:)(v7, a2);
  return sub_217753238();
}

uint64_t sub_217686500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_21768654C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217686594(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2176865D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_217686648(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_11_71()
{

  return swift_dynamicCast();
}

void static CloudSong.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = OUTLINED_FUNCTION_186_0(v5) == *v3 && *(v0 + 8) == v4[1];
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_22;
  }

  v7 = type metadata accessor for CloudSong(0);
  v8 = v7[5];
  static CloudSong.Attributes.== infix(_:_:)();
  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = v7[6];
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v11, v12, v13, v14);
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v15, v16, v17, v18);
  if (v88 != 1)
  {
    sub_21726A630(v87, v83, &qword_27CB24A78, &qword_217759040);
    if (v91[2] != 1)
    {
      memcpy(__dst, v91, sizeof(__dst));
      v19 = static CloudSong.Relationships.== infix(_:_:)();
      sub_217284234(__dst);
      sub_217284234(v83);
      sub_2171F0738(v87, &qword_27CB24A78, &qword_217759040);
      if (!v19)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    sub_217284234(v83);
LABEL_12:
    sub_2171F0738(v87, &qword_27CB2C160, &qword_217790520);
    goto LABEL_22;
  }

  if (v91[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v87, &qword_27CB24A78, &qword_217759040);
LABEL_14:
  if (*(v0 + v7[7]) == *(v4 + v7[7]))
  {
    v20 = v7[8];
    v22 = *(v0 + v20);
    v21 = *(v0 + v20 + 8);
    v23 = *(v0 + v20 + 16);
    v24 = *(v0 + v20 + 24);
    v25 = *(v0 + v20 + 32);
    v26 = (v4 + v20);
    v27 = *v26;
    v28 = v26[1];
    v30 = v26[2];
    v29 = v26[3];
    v31 = v26[4];
    if (v24 == 1)
    {
      v32 = OUTLINED_FUNCTION_136_11();
      sub_21733BF2C(v32, v33, v34, v35);
      if (v29 == 1)
      {
        v36 = OUTLINED_FUNCTION_68_24();
        sub_21733BF2C(v36, v37, v38, 1);
        v39 = OUTLINED_FUNCTION_136_11();
        sub_21733BF7C(v39, v40, v41, v42);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_68_24();
      OUTLINED_FUNCTION_166_10();
      sub_21733BF2C(v54, v55, v56, v57);
    }

    else
    {
      v87[0] = v22;
      v87[1] = v21;
      v88 = v23;
      v89 = v24;
      v90 = v25;
      if (v29 != 1)
      {
        v83[0] = v27;
        v83[1] = v28;
        v84 = v30 & 1;
        v85 = v29;
        v86 = v31;
        v66 = OUTLINED_FUNCTION_17_57();
        sub_21733BF2C(v66, v67, v68, v69);
        OUTLINED_FUNCTION_68_24();
        OUTLINED_FUNCTION_166_10();
        sub_21733BF2C(v70, v71, v72, v73);
        v74 = OUTLINED_FUNCTION_17_57();
        sub_21733BF2C(v74, v75, v76, v77);
        static CloudSong.Metadata.== infix(_:_:)(v87, v83);
        sub_217221010(v27);

        sub_217221010(v22);

        v78 = OUTLINED_FUNCTION_17_57();
        sub_21733BF7C(v78, v79, v80, v81);
        goto LABEL_22;
      }

      v43 = OUTLINED_FUNCTION_17_57();
      sub_21733BF2C(v43, v44, v45, v46);
      v47 = OUTLINED_FUNCTION_68_24();
      sub_21733BF2C(v47, v48, v49, 1);
      v50 = OUTLINED_FUNCTION_17_57();
      sub_21733BF2C(v50, v51, v52, v53);
      sub_217221010(v22);
    }

    v58 = OUTLINED_FUNCTION_17_57();
    sub_21733BF7C(v58, v59, v60, v61);
    OUTLINED_FUNCTION_68_24();
    OUTLINED_FUNCTION_166_10();
    sub_21733BF7C(v62, v63, v64, v65);
  }

LABEL_22:
  OUTLINED_FUNCTION_13();
}

void CloudSong.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v35 = v3;
  v36 = type metadata accessor for CloudSong.Attributes(0);
  v4 = OUTLINED_FUNCTION_43(v36);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_81();
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C168, &qword_217790528);
  v38 = OUTLINED_FUNCTION_0_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v14 = OUTLINED_FUNCTION_162_8();
  v15 = type metadata accessor for CloudSong(v14);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v24 = (v21 - v20 + *(v23 + 32));
  *v24 = 0;
  v24[1] = 0;
  v24[2] = 0;
  *(v24 + 3) = xmmword_217790510;
  v25 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_217692668();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v26 = v24[4];
    sub_21733BF7C(*v24, v24[1], v24[2], v24[3]);
  }

  else
  {
    sub_2172E1C68();
    OUTLINED_FUNCTION_154_8();
    OUTLINED_FUNCTION_85_16();
    sub_217752EA8();
    v27 = *(&v41[0] + 1);
    *v22 = *&v41[0];
    v22[1] = v27;
    LOBYTE(v41[0]) = 1;
    OUTLINED_FUNCTION_78_17();
    sub_217692810(v28);
    OUTLINED_FUNCTION_85_16();
    sub_217752EA8();
    sub_217693C54(v37, v22 + v15[5], type metadata accessor for CloudSong.Attributes);
    sub_2176926BC();
    OUTLINED_FUNCTION_154_8();
    sub_217752E58();
    memcpy(v22 + v15[6], v41, 0x600uLL);
    sub_217692710();
    OUTLINED_FUNCTION_154_8();
    OUTLINED_FUNCTION_85_16();
    sub_217752E58();
    *(v22 + v15[7]) = v41[0];
    sub_217692764();
    OUTLINED_FUNCTION_154_8();
    OUTLINED_FUNCTION_85_16();
    sub_217752E58();
    v29 = OUTLINED_FUNCTION_129_12();
    v30(v29, v38);
    v31 = *&v41[2];
    v32 = v24[4];
    v39 = v41[1];
    v40 = v41[0];
    sub_21733BF7C(*v24, v24[1], v24[2], v24[3]);
    *v24 = v40;
    *(v24 + 1) = v39;
    v24[4] = v31;
    OUTLINED_FUNCTION_10_65();
    sub_217693BF8(v22, v35, v33);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_30_39();
    sub_2176927B8(v22, v34);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudSong.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C170, &qword_217790530);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_87_2();
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_160(v15, v16);
  sub_217692668();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v23 = *v4;
  v26 = v4[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_44_2();
  sub_217752F88();
  if (!v2)
  {
    v17 = type metadata accessor for CloudSong(0);
    v18 = v17[5];
    type metadata accessor for CloudSong.Attributes(0);
    OUTLINED_FUNCTION_78_17();
    sub_217692810(v19);
    OUTLINED_FUNCTION_15_62();
    sub_217752F88();
    v20 = v17[6];
    sub_21733C020();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    v24 = *(v4 + v17[7]);
    sub_21733BFCC();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    v21 = (v4 + v17[8]);
    v25 = *v21;
    v27 = v21[1];
    v28 = v21[2];
    v29 = v21[3];
    v30 = v21[4];
    sub_21733BF2C(*v21, v27, v28, v29);
    sub_2174D7A78();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    sub_21733BF7C(v25, v27, v28, v29);
  }

  return (*(v8 + 8))(v3, v6);
}

void Song.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v621 = v3;
  v615 = v4;
  v616 = v5;
  v613 = v7;
  v614 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_6_1();
  v578 = v15 - v16;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17, v18);
  v601 = &v571 - v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20, v21);
  v602 = &v571 - v22;
  v575 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  v23 = *(v575 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v631 = &v571 - v26;
  v27 = type metadata accessor for PreviewAsset();
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v628 = v29;
  v629 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v32);
  OUTLINED_FUNCTION_81();
  v630 = v33;
  v625 = type metadata accessor for SongPropertyProvider();
  v34 = OUTLINED_FUNCTION_43(v625);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_81();
  v626 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25688, &qword_21775D6D8);
  v40 = OUTLINED_FUNCTION_45_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  OUTLINED_FUNCTION_6_1();
  v574 = v44 - v45;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v571 - v48;
  v50 = type metadata accessor for CloudSong(0);
  v51 = OUTLINED_FUNCTION_43(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51, v54);
  OUTLINED_FUNCTION_6_1();
  v572 = v55 - v56;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v57, v58);
  v591 = &v571 - v59;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v60, v61);
  OUTLINED_FUNCTION_91_16();
  OUTLINED_FUNCTION_10_65();
  sub_217693BF8(v9, v0, v62);
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v63 = v0 + *(v50 + 20);
  v623 = type metadata accessor for CloudSong.Attributes(0);
  v624 = v63;
  v627 = v63 + v623[31];
  memcpy(v656, v627, sizeof(v656));
  OUTLINED_FUNCTION_171_1();
  sub_2172DA110();
  v622 = *(v50 + 24);
  OUTLINED_FUNCTION_67_20();
  OUTLINED_FUNCTION_60_30();
  sub_21726A630(v64, v65, v66, v67);
  OUTLINED_FUNCTION_70_19();
  v620 = v0;
  v612 = v50;
  if (v68)
  {
    v69 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    OUTLINED_FUNCTION_130_13();
    sub_21726A630(v72, v73, v74, v75);
    v76 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v76);
    if (v648[2])
    {
      sub_217751DE8();
      sub_2171F0738(v648, &qword_27CB242E8, &unk_21775D6B0);
      sub_2172CE6FC();

      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
      OUTLINED_FUNCTION_133(v49, 1, v77);
      if (v68)
      {
        v70 = &qword_27CB25688;
        v71 = &qword_21775D6D8;
      }

      else
      {
        swift_getKeyPath();
        sub_21735F954();

        v70 = &qword_27CB24748;
        v71 = &unk_217758CD0;
      }

      v69 = v49;
    }

    else
    {
      v70 = &qword_27CB242E0;
      v71 = &unk_21777EEE0;
      v69 = v648;
    }
  }

  sub_2171F0738(v69, v70, v71);
  memcpy(v647, v653, sizeof(v647));
  v619 = v654;
  memcpy(v646, v655, sizeof(v646));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v79 = v78[10];
  v80 = v9 + v78[9];
  v81 = *(v80 + 8);
  v585 = *v80;
  v584 = *(v80 + 16);
  v82 = *(v9 + v79 + 8);
  v583 = *(v9 + v79);
  v83 = v78[13];
  v84 = *(v9 + v78[12]);
  v617 = v9;
  v618 = v84;
  v85 = *(v9 + v83);
  v86 = v78[14];
  v87 = v78[15];
  v573 = v78;
  v88 = *(v9 + v86);
  v579 = v81;
  v580 = v88;
  v581 = *(v9 + v87);
  sub_2172A497C(v648);
  OUTLINED_FUNCTION_130_13();
  v89 = v626;
  memcpy(v626, v90, 0x221uLL);
  sub_21733B708(v649);
  memcpy(v89 + 552, v649, 0x161uLL);
  v91 = v625;
  v92 = v625[8];
  v93 = sub_2177516D8();
  v586 = v92;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  v587 = v91[12];
  v97 = &v89[v587];
  v97[4] = 0;
  *v97 = 512;
  v577 = v91[14];
  v89[v577] = 2;
  v98 = &v89[v91[16]];
  *v98 = 0;
  v576 = v98;
  v98[8] = 1;
  v99 = &v89[v91[18]];
  *v99 = xmmword_2177586D0;
  *(v99 + 1) = 0u;
  *(v99 + 2) = 0u;
  *(v99 + 3) = 0u;
  v588 = v99;
  v89[v91[21]] = 2;
  v100 = &v89[v91[25]];
  *v100 = 0;
  *(v100 + 1) = 0;
  v100[16] = 0;
  v101 = &v89[v91[26]];
  *(v101 + 1) = 0;
  v589 = v101;
  v590 = v101 + 8;
  *v101 = 0;
  *(v101 + 2) = 1;
  v102 = v91[27];
  OUTLINED_FUNCTION_130_13();
  memcpy(v103, v104, 0x221uLL);
  v105 = &v89[v91[32]];
  *(v105 + 14) = 0;
  *(v105 + 5) = 0u;
  *(v105 + 6) = 0u;
  *(v105 + 3) = 0u;
  *(v105 + 4) = 0u;
  *(v105 + 1) = 0u;
  *(v105 + 2) = 0u;
  v592 = v105;
  *v105 = 0u;
  v106 = v91[34];
  v107 = sub_2177517D8();
  v594 = v106;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
  OUTLINED_FUNCTION_111_6(v91[35]);
  v111 = v91[37];
  sub_21733B710(v650);
  v595 = v111;
  memcpy(&v89[v111], v650, 0xB0uLL);
  v112 = v91[41];
  v596 = v112;
  v113 = OUTLINED_FUNCTION_47_1(v112);
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v93);
  v116 = OUTLINED_FUNCTION_47_1(v91[43]);
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v107);
  v89[v91[44]] = 3;
  v89[v91[45]] = 2;
  v89[v91[47]] = 2;
  v89[v91[48]] = 5;
  v89[v91[49]] = 7;
  OUTLINED_FUNCTION_111_6(v91[50]);
  v119 = OUTLINED_FUNCTION_47_1(v91[51]);
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v107);
  v122 = OUTLINED_FUNCTION_47_1(v91[52]);
  v593 = v107;
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v107);
  OUTLINED_FUNCTION_111_6(v91[53]);
  v89[v91[54]] = 2;
  v125 = v89;
  v89[v91[55]] = 10;
  v126 = &v89[v91[56]];
  *v126 = 0;
  v126[8] = 1;
  v127 = &v89[v91[57]];
  v127[6].n128_u64[0] = 0;
  OUTLINED_FUNCTION_1_0(v127, 0);
  v597 = v128;
  OUTLINED_FUNCTION_13_6(v91[58], v129);
  v598 = v130;
  OUTLINED_FUNCTION_13_6(v91[59], v131);
  v600 = v132;
  v133 = &v89[v91[60]];
  v133[6] = v134;
  v133[7] = v134;
  OUTLINED_FUNCTION_1_0(v133, v134);
  v599 = v135;
  OUTLINED_FUNCTION_13_6(v91[61], v136);
  v603 = v137;
  OUTLINED_FUNCTION_13_6(v91[62], v138);
  v604 = v139;
  v140 = &v89[v91[63]];
  v140[6] = v141;
  v140[7] = v141;
  OUTLINED_FUNCTION_1_0(v140, v141);
  v608 = v142;
  v143 = &v89[v91[64]];
  v143[6] = v144;
  v143[7] = v144;
  OUTLINED_FUNCTION_1_0(v143, v144);
  v605 = v145;
  OUTLINED_FUNCTION_13_6(v91[65], v146);
  v606 = v147;
  OUTLINED_FUNCTION_13_6(v91[66], v148);
  v607 = v149;
  OUTLINED_FUNCTION_13_6(v91[67], v150);
  v609 = v151;
  OUTLINED_FUNCTION_13_6(v91[68], v152);
  v611 = v153;
  v582 = v82;
  sub_217751DE8();
  sub_217751DE8();
  v154 = v85;
  sub_217751DE8();
  v155 = v580;
  sub_217751DE8();
  v156 = v581;
  sub_217751DE8();
  v157 = v579;
  sub_217751DE8();
  v158 = sub_217536388();
  if (v158 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v159 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v159 = v158;
  }

  v160 = v620;

  v161 = v625;
  *&v89[v625[72]] = v159;
  v162 = &v89[v161[75]];
  *v162 = 0;
  *(v162 + 1) = 0;
  v163 = v161[73];
  v164 = &v89[v163];
  memcpy(&v125[v163], v647, 0x108uLL);
  *(v164 + 33) = v619;
  v610 = v164;
  memcpy(v164 + 272, v646, 0x51uLL);
  v165 = &v125[v161[74]];
  *v165 = v585;
  *(v165 + 1) = v157;
  v165[16] = v584;
  v166 = v582;
  *v162 = v583;
  *(v162 + 1) = v166;
  *&v125[v161[76]] = v618;
  *&v125[v161[77]] = v154;
  *&v125[v161[78]] = v155;
  *&v125[v161[79]] = v156;
  OUTLINED_FUNCTION_67_20();
  OUTLINED_FUNCTION_60_30();
  sub_21726A630(v167, v168, v169, v170);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v171 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630((v162 + 512), v643, &qword_27CB242E0, &unk_21777EEE0);
    v174 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v174);
    if (v643[2])
    {
      sub_217751DE8();
      v175 = OUTLINED_FUNCTION_159_10();
      sub_2171F0738(v175, v176, v177);
      v178 = v574;
      sub_2172CE6FC();

      OUTLINED_FUNCTION_133(v178, 1, v573);
      if (!v68)
      {
        OUTLINED_FUNCTION_10_65();
        v281 = v572;
        sub_217693BF8(v178, v572, v282);
        sub_2171F0738(v178, &qword_27CB24748, &unk_217758CD0);
        v283 = v281;
        v284 = v591;
        sub_217693C54(v283, v591, type metadata accessor for CloudSong);
        goto LABEL_23;
      }

      v172 = &qword_27CB25688;
      v173 = &qword_21775D6D8;
      v171 = v178;
    }

    else
    {
      v171 = OUTLINED_FUNCTION_159_10();
    }
  }

  sub_2171F0738(v171, v172, v173);
  v284 = v591;
  OUTLINED_FUNCTION_10_65();
  sub_217693BF8(v160, v284, v179);
LABEL_23:
  sub_217693B94(v284, v160);
  OUTLINED_FUNCTION_136_4(v644);
  OUTLINED_FUNCTION_136_4(v645);
  OUTLINED_FUNCTION_104(v645);
  if (v68)
  {
    OUTLINED_FUNCTION_159_10();
    OUTLINED_FUNCTION_130_13();
  }

  else
  {
    v180 = OUTLINED_FUNCTION_50_31();
    memcpy(v180, v645, 0x1B8uLL);
    memcpy(v634, v644, 0x1B8uLL);
    OUTLINED_FUNCTION_39_0();
    sub_21726A630(v181, v182, v183, v184);
    OUTLINED_FUNCTION_67_20();
    CloudAttribute<A>.convertToArtwork()(v185);
    OUTLINED_FUNCTION_60_30();
    memcpy(v186, v187, 0x1B8uLL);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v188, v189, v190);
    v191 = OUTLINED_FUNCTION_50_31();
    memcpy(v191, v642, 0x221uLL);
    v192 = OUTLINED_FUNCTION_50_31();
    nullsub_1(v192, v193);
    OUTLINED_FUNCTION_159_10();
    OUTLINED_FUNCTION_60_30();
  }

  memcpy(v194, v195, 0x221uLL);
  v196 = v625;
  v197 = v625[9];
  v198 = &v125[v625[10]];
  v199 = v625[11];
  memcpy(v642, v125, 0x221uLL);
  sub_2171F0738(v642, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v125, v643, 0x221uLL);
  v201 = v623;
  v200 = v624;
  *(v125 + 114) = *(v624 + 440);
  v202 = *(v200 + 464);
  *(v125 + 920) = *(v200 + 448);
  *(v125 + 117) = v202;
  v203 = v201[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v200 + v203, &v626[v586]);
  *&v626[v197] = *(v200 + v201[18]);
  v204 = (v200 + v201[8]);
  v205 = v204[1];
  *v198 = *v204;
  *(v198 + 1) = v205;
  swift_getKeyPath();
  swift_getKeyPath();
  v591 = v205;
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_36();
  v209 = sub_2172E3DDC(v206, v207, v208);

  v210 = v627;
  *&v626[v199] = v209;
  v211 = v210[1];
  sub_21735D9D8();
  v213 = v212;
  if (v211)
  {
    v214 = 3;
  }

  else
  {
    v214 = 0;
  }

  v215 = v210[1];
  sub_21735D9D8();
  v217 = v216 | (v215 != 0);
  v218 = v210[1];
  sub_21735D9D8();
  v220 = v219 | (v218 != 0);
  v221 = &v626[v196[13]];
  sub_21735D9D8();
  if (v213)
  {
    v223 = 3;
  }

  else
  {
    v223 = v214;
  }

  v224 = v626;
  v225 = 256;
  if ((v217 & 1) == 0)
  {
    v225 = 0;
  }

  v226 = v225 | v223;
  v227 = 0x10000;
  if ((v220 & 1) == 0)
  {
    v227 = 0;
  }

  v228 = &v626[v587];
  *v228 = v226 | v227;
  v228[4] = (v222 & 1) != 0;
  v229 = (v200 + v201[11]);
  v230 = v229[1];
  *v221 = *v229;
  *(v221 + 1) = v230;
  v231 = (v200 + v201[12]);
  if (v231[1])
  {
    v232 = *v231;
    sub_217751DE8();
    v233 = sub_217752DC8();
    if (v233 == 1)
    {
      v234 = 1;
    }

    else
    {
      v234 = 2;
    }

    if (!v233)
    {
      v234 = 0;
    }

    v224[v577] = v234;
  }

  else
  {
    sub_217751DE8();
  }

  v235 = v624;
  v236 = &v224[v625[15]];
  v237 = v623;
  v238 = (v624 + v623[13]);
  v239 = *v238;
  LOBYTE(v238) = *(v238 + 8);
  *v236 = v239;
  v236[8] = v238;
  v240 = v235 + v237[14];
  if ((*(v240 + 8) & 1) == 0)
  {
    v241 = *v240 / 1000.0;
    v242 = v576;
    *v576 = v241;
    *(v242 + 8) = 0;
  }

  v244 = v623;
  v243 = v624;
  *&v224[v625[17]] = *(v624 + v623[15]);
  v245 = (v243 + v244[16]);
  if (v245[8])
  {
    v246 = v245[7];
    v618 = v245[6];
    v247 = v245[4];
    v248 = v245[5];
    v249 = v245[3];
    v586 = v245[2];
    v587 = v247;
    v250 = *v245;
    v251 = v245[1];
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v250 = 0;
    v586 = 0;
    v587 = 0;
    v249 = 0;
    v248 = 0;
    v618 = 0;
    v246 = 0;
    v251 = 1;
  }

  v253 = v625[19];
  v252 = v625[20];
  v254 = v588;
  v255 = v588[1];
  v641[0] = *v588;
  v641[1] = v255;
  v256 = v588[3];
  v641[2] = v588[2];
  v641[3] = v256;
  sub_217751DE8();
  sub_2171F0738(v641, &qword_27CB24B70, &unk_217759460);
  *v254 = v250;
  v254[1] = v251;
  v257 = v587;
  v254[2] = v586;
  v254[3] = v249;
  v254[4] = v257;
  v254[5] = v248;
  v254[6] = v618;
  v254[7] = v246;
  v259 = v623;
  v258 = v624;
  v260 = v626;
  *&v626[v253] = *(v624 + v623[17]);
  *&v260[v252] = *(v258 + v259[19]);
  v261 = *(v258 + v259[20]) | (*(v258 + v259[21]) << 8) | 0x20000;
  v262 = v589;
  v263 = *v589;
  v264 = v589[1];
  v265 = v589[2];
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_171_1();
  sub_21733B290(v266, v267, v268);
  *v262 = v261;
  v269 = v590;
  *v590 = 0;
  v269[1] = 0;
  KeyPath = swift_getKeyPath();
  v271 = swift_getKeyPath();
  if (*(v258 + v259[22]) == 2)
  {
    v272 = *(v258 + v259[23]);
  }

  else
  {
    v272 = *(v258 + v259[22]);
  }

  v618 = KeyPath;
  v273 = sub_2172E3DE0(v258, KeyPath, v271);
  if (v273)
  {
    v588 = v271;
    LODWORD(v589) = v272;
    v274 = *(v273 + 16);
    v590 = v273;
    v275 = (v273 + 32);
    v276 = (v273 + 32);
    while (v274)
    {
      switch(*v276)
      {
        case 1:
        case 8:
          break;
        case 2:
          OUTLINED_FUNCTION_106_12();
          break;
        case 3:
          OUTLINED_FUNCTION_132_13();
          break;
        case 4:
          OUTLINED_FUNCTION_101_14();
          break;
        case 5:
          OUTLINED_FUNCTION_104_14();
          break;
        case 6:
        case 7:
          OUTLINED_FUNCTION_65();
          break;
        case 9:
          OUTLINED_FUNCTION_161_10();
          break;
        case 0xA:
          OUTLINED_FUNCTION_131_12();
          break;
        default:
          goto LABEL_182;
      }

      v277 = sub_217753058();

      ++v276;
      --v274;
      if (v277)
      {
LABEL_77:

        LOBYTE(v279) = 1;
        goto LABEL_79;
      }
    }

    v279 = v590[2];
    while (2)
    {
      if (v279)
      {
        switch(*v275)
        {
          case 2:
            OUTLINED_FUNCTION_106_12();
            goto LABEL_76;
          case 3:
            OUTLINED_FUNCTION_132_13();
            goto LABEL_76;
          case 4:
            OUTLINED_FUNCTION_101_14();
            goto LABEL_76;
          case 5:
            OUTLINED_FUNCTION_104_14();
            goto LABEL_76;
          case 6:
          case 7:
            OUTLINED_FUNCTION_65();
            goto LABEL_76;
          case 8:
LABEL_182:

            LOBYTE(v279) = 1;
            goto LABEL_79;
          case 9:
            OUTLINED_FUNCTION_161_10();
            goto LABEL_76;
          case 0xA:
            OUTLINED_FUNCTION_131_12();
            goto LABEL_76;
          default:
LABEL_76:
            v280 = sub_217753058();

            ++v275;
            --v279;
            if (v280)
            {
              goto LABEL_77;
            }

            continue;
        }
      }

      break;
    }

LABEL_79:

    v278 = v626;
    if (v589 == 2)
    {
      LOBYTE(v272) = v279;
    }

    else
    {
      LOBYTE(v272) = (v279 | v589) & 1;
    }
  }

  else
  {

    v278 = v626;
  }

  v285 = v624;
  v286 = v625;
  v278[v625[22]] = v272;
  v287 = v627;
  v288 = *(v627 + 8);
  sub_21735D9D8();
  v289 = v286[24];
  v290 = &v278[v286[23]];
  v291 = v286[29];
  v292 = &v278[v286[28]];
  v293 = v286[30];
  v294 = v286[31];
  v278[v286[46]] = v295 & 1 | (v288 != 0);
  v296 = &v278[v291];
  v297 = v623;
  v298 = (v285 + v623[25]);
  v299 = v298[1];
  *v290 = *v298;
  *(v290 + 1) = v299;
  v278[v289] = *(v285 + v297[24]);
  v300 = &v278[v293];
  v301 = (v285 + v297[26]);
  v302 = *v301;
  LOBYTE(v301) = *(v301 + 8);
  *v292 = v302;
  v292[8] = v301;
  v303 = (v285 + v297[27]);
  v304 = v303[1];
  *v296 = *v303;
  *(v296 + 1) = v304;
  v305 = (v285 + v297[28]);
  v306 = *v305;
  LOBYTE(v305) = *(v305 + 8);
  *v300 = v306;
  v300[8] = v305;
  *&v278[v294] = *(v285 + v297[30]);
  memcpy(v639, v287, sizeof(v639));
  memcpy(v640, v592, sizeof(v640));
  memcpy(v592, v287, 0x78uLL);
  OUTLINED_FUNCTION_60_30();
  sub_21726A630(v307, v308, &qword_27CB244D0, &unk_21775D620);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v640, &qword_27CB244D0, &unk_21775D620);
  v309 = *(v285 + v297[32]);
  if (v309)
  {
    v310 = *(v309 + 16);
    v311 = MEMORY[0x277D84F90];
    if (v310)
    {
      v638 = MEMORY[0x277D84F90];
      sub_217276450();
      v311 = v638;
      OUTLINED_FUNCTION_46_0();
      v313 = v309 + v312;
      v627 = *(v314 + 72);
      do
      {
        sub_21726A630(v313, v631, &qword_27CB24A68, &qword_217759030);
        OUTLINED_FUNCTION_136_4(v636);
        OUTLINED_FUNCTION_136_4(v637);
        OUTLINED_FUNCTION_104(v637);
        if (v68)
        {
          OUTLINED_FUNCTION_50_31();
          OUTLINED_FUNCTION_130_13();
        }

        else
        {
          v315 = OUTLINED_FUNCTION_50_31();
          memcpy(v315, v637, 0x1B8uLL);
          memcpy(v632, v636, sizeof(v632));
          sub_21726A630(v632, v635, &qword_27CB243F0, &qword_21775D690);
          OUTLINED_FUNCTION_67_20();
          CloudAttribute<A>.convertToArtwork()(v316);
          OUTLINED_FUNCTION_60_30();
          memcpy(v317, v318, 0x1B8uLL);
          OUTLINED_FUNCTION_36();
          sub_2171F0738(v319, v320, v321);
          memcpy(v635, v634, 0x221uLL);
          nullsub_1(v635, v322);
          v323 = OUTLINED_FUNCTION_50_31();
          v324 = v635;
        }

        memcpy(v323, v324, 0x221uLL);
        v325 = type metadata accessor for CloudPreviewAsset();
        v327 = v629;
        v326 = v630;
        v328 = *(v629 + 20);
        v329 = v631;
        OUTLINED_FUNCTION_173_11(*(v325 + 20));
        v330 = *(v327 + 24);
        OUTLINED_FUNCTION_173_11(*(v325 + 24));
        sub_2171F0738(v329, &qword_27CB24A68, &qword_217759030);
        OUTLINED_FUNCTION_60_30();
        memcpy(v326, v331, 0x221uLL);
        v638 = v311;
        v332 = *(v311 + 16);
        if (v332 >= *(v311 + 24) >> 1)
        {
          sub_217276450();
          v326 = v630;
          v311 = v638;
        }

        *(v311 + 16) = v332 + 1;
        OUTLINED_FUNCTION_46_0();
        sub_217693C54(v326, v311 + v333 + *(v334 + 72) * v332, type metadata accessor for PreviewAsset);
        v313 += v627;
        --v310;
      }

      while (v310);
    }
  }

  else
  {
    v311 = 0;
  }

  v335 = v601;
  v336 = v593;
  v337 = v626;
  *&v626[v625[33]] = v311;
  v338 = v337;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v339 = type metadata accessor for CloudFormatter();
  v340 = __swift_project_value_buffer(v339, qword_280BE8918);
  v341 = (v624 + v623[33]);
  v342 = *v341;
  v343 = v341[1];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v344, v345, v346, v336);
  if (v343)
  {
    v347 = *(v340 + *(v339 + 20));
    OUTLINED_FUNCTION_204();
    v348 = sub_217751F18();
    v349 = [v347 dateFromString_];

    if (v349)
    {
      v350 = v578;
      sub_2177517C8();

      v351 = 0;
    }

    else
    {
      v351 = 1;
      v350 = v578;
    }

    OUTLINED_FUNCTION_36();
    sub_2171F0738(v356, v357, v358);
    __swift_storeEnumTagSinglePayload(v350, v351, 1, v336);
    OUTLINED_FUNCTION_39_0();
    sub_21726A594(v359, v360, v361, v362);
    v352 = v602;
    sub_21726A594(v335, v602, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v335, &qword_27CB241C0, &qword_217759480);
    v352 = v602;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v353, v354, v355, v336);
  }

  v363 = v625[36];
  v364 = v625[39];
  v631 = v625[38];
  v365 = v338;
  v366 = &v338[v364];
  v367 = &v365[v625[40]];
  v368 = &v365[v625[42]];
  sub_21733BBDC(v352, &v365[v594], &qword_27CB241C0, &qword_217759480);
  v365[v363] = v591 != 0;
  v370 = v623;
  v369 = v624;
  memcpy(v634, (v624 + v623[34]), 0xB0uLL);
  v371 = v595;
  memcpy(v635, &v365[v595], 0xB0uLL);
  OUTLINED_FUNCTION_60_30();
  OUTLINED_FUNCTION_157(v372, v373);
  OUTLINED_FUNCTION_169_1(v635);
  memcpy(&v365[v371], v634, 0xB0uLL);
  v365[v631] = *(v369 + v370[35]);
  v374 = (v369 + v370[29]);
  v375 = v374[1];
  *v366 = *v374;
  *(v366 + 1) = v375;
  v376 = (v369 + v370[36]);
  v377 = *v376;
  LOBYTE(v376) = *(v376 + 8);
  *v367 = v377;
  v367[8] = v376;
  v378 = v370[37];
  sub_217751DE8();
  sub_2172E1ECC(v369 + v378, &v365[v596]);
  v379 = (v369 + v370[38]);
  v380 = v379[1];
  *v368 = *v379;
  *(v368 + 1) = v380;
  v381 = v620;
  OUTLINED_FUNCTION_60_30();
  sub_21726A630(v382, v383, v384, v385);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    sub_217751DE8();
    v386 = OUTLINED_FUNCTION_50_31();
    sub_2171F0738(v386, v387, v388);
    v390 = v616;
    v389 = v617;
    v391 = v615;
  }

  else
  {
    v392 = OUTLINED_FUNCTION_50_31();
    sub_21726A630(v392, v637, v393, v394);
    sub_217751DE8();
    v395 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v395);
    v390 = v616;
    v389 = v617;
    v391 = v615;
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v396 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v396, v397);
      sub_2172E2038();
      OUTLINED_FUNCTION_34_38();
      v398 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v398, v399, v400, v401, v402, v403, v404, v405, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_108;
    }

    sub_2171F0738(v637, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_6_94();
LABEL_108:
  v406 = sub_21733BBDC(v636, v597, &qword_27CB25318, &qword_2177657C0);
  OUTLINED_FUNCTION_22_54(v406, v407, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v408 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 128, v637, &qword_27CB243B0, &unk_21775D670);
    v411 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v411);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v412 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v412, v413);
      sub_2172E2134();
      OUTLINED_FUNCTION_34_38();
      v414 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v414, v415, v416, v417, v418, v419, v420, v421, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_115;
    }

    v409 = &qword_27CB243B0;
    v410 = &unk_21775D670;
    v408 = v637;
  }

  sub_2171F0738(v408, v409, v410);
  OUTLINED_FUNCTION_6_94();
LABEL_115:
  v422 = sub_21733BBDC(v636, v598, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_22_54(v422, v423, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v424 = OUTLINED_FUNCTION_50_31();
    sub_2171F0738(v424, v425, v426);
    OUTLINED_FUNCTION_36_35();
  }

  else
  {
    sub_21726A630(v380 + 384, v637, &qword_27CB255E0, &unk_2177756D0);
    v427 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v427);
  }

  v428 = sub_21733BBDC(v637, v599, &qword_27CB255E0, &unk_2177756D0);
  OUTLINED_FUNCTION_22_54(v428, v429, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v430 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 256, v637, &qword_27CB24280, &unk_21775D680);
    v433 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v433);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v434 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v434, v435);
      sub_2172E2188();
      OUTLINED_FUNCTION_34_38();
      v436 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v436, v437, v438, v439, v440, v441, v442, v443, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_125;
    }

    v431 = &qword_27CB24280;
    v432 = &unk_21775D680;
    v430 = v637;
  }

  sub_2171F0738(v430, v431, v432);
  OUTLINED_FUNCTION_6_94();
LABEL_125:
  v444 = sub_21733BBDC(v636, v600, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_22_54(v444, v445, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v446 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 512, v637, &qword_27CB242E0, &unk_21777EEE0);
    v449 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v449);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v450 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v450, v451);
      sub_2173626DC();
      OUTLINED_FUNCTION_34_38();
      v452 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v452, v453, v454, v455, v456, v457, v458, v459, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_132;
    }

    v447 = &qword_27CB242E0;
    v448 = &unk_21777EEE0;
    v446 = v637;
  }

  sub_2171F0738(v446, v447, v448);
  OUTLINED_FUNCTION_6_94();
LABEL_132:
  v460 = sub_21733BBDC(v636, v603, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_22_54(v460, v461, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v462 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 640, v637, &qword_27CB24280, &unk_21775D680);
    v465 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v465);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v466 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v466, v467);
      sub_2172E2188();
      OUTLINED_FUNCTION_34_38();
      v468 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v468, v469, v470, v471, v472, v473, v474, v475, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_139;
    }

    v463 = &qword_27CB24280;
    v464 = &unk_21775D680;
    v462 = v637;
  }

  sub_2171F0738(v462, v463, v464);
  OUTLINED_FUNCTION_6_94();
LABEL_139:
  v476 = sub_21733BBDC(v636, v604, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_22_54(v476, v477, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v478 = OUTLINED_FUNCTION_50_31();
    sub_2171F0738(v478, v479, v480);
    OUTLINED_FUNCTION_36_35();
  }

  else
  {
    sub_21726A630(v380 + 896, v637, &qword_27CB255D0, &qword_21775D4A8);
    v481 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v481);
  }

  v482 = sub_21733BBDC(v637, v605, &qword_27CB255D0, &qword_21775D4A8);
  OUTLINED_FUNCTION_22_54(v482, v483, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v484 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 1024, v637, &qword_27CB243B0, &unk_21775D670);
    v487 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v487);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v488 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v488, v489);
      sub_2172E2134();
      OUTLINED_FUNCTION_34_38();
      v490 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v490, v491, v492, v493, v494, v495, v496, v497, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_149;
    }

    v485 = &qword_27CB243B0;
    v486 = &unk_21775D670;
    v484 = v637;
  }

  sub_2171F0738(v484, v485, v486);
  OUTLINED_FUNCTION_6_94();
LABEL_149:
  v498 = sub_21733BBDC(v636, v606, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_22_54(v498, v499, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v500 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 1152, v637, &qword_27CB242E0, &unk_21777EEE0);
    v503 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v503);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v504 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v504, v505);
      sub_2173626DC();
      OUTLINED_FUNCTION_34_38();
      v506 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v506, v507, v508, v509, v510, v511, v512, v513, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_156;
    }

    v501 = &qword_27CB242E0;
    v502 = &unk_21777EEE0;
    v500 = v637;
  }

  sub_2171F0738(v500, v501, v502);
  OUTLINED_FUNCTION_6_94();
LABEL_156:
  v514 = sub_21733BBDC(v636, v607, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_22_54(v514, v515, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v516 = OUTLINED_FUNCTION_50_31();
    sub_2171F0738(v516, v517, v518);
    OUTLINED_FUNCTION_36_35();
  }

  else
  {
    sub_21726A630(v380 + 768, v637, &qword_27CB255D8, &unk_21775D4B0);
    v519 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v519);
  }

  v520 = sub_21733BBDC(v637, v608, &qword_27CB255D8, &unk_21775D4B0);
  OUTLINED_FUNCTION_22_54(v520, v521, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v522 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 1280, v637, &qword_27CB242B0, &unk_21775D630);
    v525 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v525);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v526 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v526, v527);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_34_38();
      v528 = OUTLINED_FUNCTION_8_79();
      OUTLINED_FUNCTION_127_12(v528, v529, v530, v531, v532, v533, v534, v535, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_49_31();
      goto LABEL_166;
    }

    v523 = &qword_27CB242B0;
    v524 = &unk_21775D630;
    v522 = v637;
  }

  sub_2171F0738(v522, v523, v524);
  OUTLINED_FUNCTION_6_94();
LABEL_166:
  v536 = sub_21733BBDC(v636, v609, &qword_27CB25338, &unk_21775D3E0);
  OUTLINED_FUNCTION_22_54(v536, v537, &qword_27CB24A78, &qword_217759040);
  OUTLINED_FUNCTION_70_19();
  if (v68)
  {
    v538 = OUTLINED_FUNCTION_50_31();
  }

  else
  {
    sub_21726A630(v380 + 1408, v637, &qword_27CB242F0, &unk_217797B80);
    v541 = OUTLINED_FUNCTION_50_31();
    sub_217284234(v541);
    if (v637[2])
    {
      OUTLINED_FUNCTION_35_37();
      v542 = OUTLINED_FUNCTION_16_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v542, v543);
      sub_2173692A0();
      OUTLINED_FUNCTION_34_38();
      v544 = OUTLINED_FUNCTION_8_79();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v544, v545, v546, v547, v548, v390, v549, v550, v551, v571);
      sub_2171F0738(v633, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v552, v553, v554);
      goto LABEL_173;
    }

    v539 = &qword_27CB242F0;
    v540 = &unk_217797B80;
    v538 = v637;
  }

  sub_2171F0738(v538, v539, v540);
  OUTLINED_FUNCTION_6_94();
LABEL_173:
  sub_21733BBDC(v636, v611, &qword_27CB255B0, &unk_217793B50);
  v555 = v381 + *(v612 + 32);
  v556 = *(v555 + 24);
  if (v556 == 1)
  {
    v558 = v625;
    v557 = v626;
    *&v626[v625[69]] = 0;
    v559 = &v557[v558[70]];
    *v559 = 0;
    v559[8] = 1;
    *&v557[v558[71]] = 0;
LABEL_180:

    v565 = MEMORY[0x277D84FA0];
    goto LABEL_181;
  }

  if (*v555 == 1)
  {
    v560 = 0;
  }

  else
  {
    v560 = sub_217751DE8();
  }

  v562 = v625;
  v561 = v626;
  *&v626[v625[69]] = v560;
  v563 = *(v555 + 16);
  v564 = &v561[v562[70]];
  *v564 = *(v555 + 8);
  v564[8] = v563;
  *&v561[v562[71]] = v556;
  v565 = *(v555 + 32);
  sub_217751DE8();
  if (!v565)
  {
    goto LABEL_180;
  }

  sub_217751DE8();
LABEL_181:

  *(v610 + 33) = v565;
  v651 = v625;
  v652 = &protocol witness table for SongPropertyProvider;
  v566 = OUTLINED_FUNCTION_50_31();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v566);
  v568 = v626;
  sub_217693BF8(v626, boxed_opaque_existential_0, type metadata accessor for SongPropertyProvider);
  v569 = OUTLINED_FUNCTION_50_31();
  Song.init(propertyProvider:)(v569, v613);

  (*(*(v390 - 8) + 8))(v391, v390);
  sub_2171F0738(v389, &qword_27CB24748, &unk_217758CD0);
  sub_2176927B8(v568, type metadata accessor for SongPropertyProvider);
  OUTLINED_FUNCTION_30_39();
  sub_2176927B8(v381, v570);
  OUTLINED_FUNCTION_13();
}

void Song.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v4 = v0;
  v6 = v5;
  v649 = v7;
  v650 = v8;
  v10 = v9;
  v11 = type metadata accessor for CloudSong(0);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v646 = sub_2177517D8();
  v19 = OUTLINED_FUNCTION_0_0(v646);
  v598 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  OUTLINED_FUNCTION_81();
  v597 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v26 = OUTLINED_FUNCTION_45_0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  OUTLINED_FUNCTION_6_1();
  v645 = v30 - v31;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v594 - v34;
  v659 = type metadata accessor for CloudPreviewAsset();
  v36 = OUTLINED_FUNCTION_43(v659);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_81();
  v658 = v40;
  v657 = type metadata accessor for PreviewAsset();
  v41 = OUTLINED_FUNCTION_0_0(v657);
  v596 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41, v45);
  OUTLINED_FUNCTION_1();
  v48 = (v47 - v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v50 = OUTLINED_FUNCTION_0_0(v49);
  v655 = v51;
  v656 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54, v55);
  v660 = &v594 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60, v61);
  v62 = OUTLINED_FUNCTION_162_8();
  v648 = type metadata accessor for CloudSong.Attributes(v62);
  v63 = OUTLINED_FUNCTION_43(v648);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63, v66);
  OUTLINED_FUNCTION_81();
  v653 = v67;
  if (qword_280BE96D8 != -1)
  {
    swift_once();
  }

  v68 = COERCE_DOUBLE(sub_2172A41F0());
  v647 = v69;
  if (v69)
  {
    v640 = 0;
    goto LABEL_9;
  }

  v76 = v68 * 1000.0;
  if (COERCE__INT64(fabs(v68 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_200;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v76 < 9.22337204e18)
  {
    v640 = v76;
LABEL_9:
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    sub_2176CA860(qword_280C02840, v69, v70, v71, v72, v73, v74, v75, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611);
    memcpy(v708, v707, 0x221uLL);
    OUTLINED_FUNCTION_104(v708);
    if (v77)
    {
      sub_2172E22C0(v706);
    }

    else
    {
      v78 = OUTLINED_FUNCTION_109_9();
      memcpy(v78, v708, 0x221uLL);
      Artwork.convertToCloudArtworkAttribute()(v664);
      OUTLINED_FUNCTION_88_17();
      OUTLINED_FUNCTION_66_19();
      memcpy(v79, v80, 0x221uLL);
      v81 = OUTLINED_FUNCTION_88_17();
      sub_217284084(v81);
      v82 = OUTLINED_FUNCTION_109_9();
      memcpy(v82, v664, 0x1B8uLL);
      v83 = OUTLINED_FUNCTION_109_9();
      nullsub_1(v83, v84);
      OUTLINED_FUNCTION_66_19();
      memcpy(v85, v86, 0x1B8uLL);
    }

    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    v644 = v10;
    v87 = sub_2172A41AC();
    v638 = v88;
    v639 = v87;
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    v651 = v35;
    v89 = sub_2172A41AC();
    if (v90)
    {
      v91 = v89;
    }

    else
    {
      v91 = 0;
    }

    v92 = 0xE000000000000000;
    if (v90)
    {
      v92 = v90;
    }

    v636 = v92;
    v637 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    v93 = sub_2172E3DC0(0x7255747369747261, 0xE90000000000006CLL);
    sub_2176CA560(v93, v94, v95, v96, v97, v98, v99, v100, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);

    if (qword_280BE9920 != -1)
    {
      swift_once();
    }

    v101 = v1;
    v652 = v18;
    v102 = sub_2172A41AC();
    v634 = v103;
    v635 = v102;
    if (qword_280BE9880 != -1)
    {
      swift_once();
    }

    v104 = v11;
    v642 = v6;
    v105 = qword_280BE9888;
    v113 = sub_2172A43DC(qword_280BE9888);
    if (qword_280BE97B8 != -1)
    {
      swift_once();
    }

    v114 = qword_280C02888;
    sub_2172A43D0(qword_280C02888, v106, v107, v108, v109, v110, v111, v112, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    v633 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v113, v115, 0);

    v116 = sub_2172A43DC(v105);
    v654 = v114;
    sub_2172A43D0(v114, v117, v118, v119, v120, v121, v122, v123, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    v632 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v116, v124, 1);

    if (qword_280BE98B0 != -1)
    {
      swift_once();
    }

    v125 = sub_2172A41AC();
    v630 = v126;
    v631 = v125;
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_137_10();
    sub_2176CA5B8(v127, v128, v129, v130, v131, v132, v133, v134, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613);
    v135 = v104;
    if (LOBYTE(v700[0]) == 2)
    {
      v628 = 0;
      v629 = 0;
    }

    else
    {
      if (v700[0])
      {
        v136 = 0x746963696C707865;
      }

      else
      {
        v136 = 0x6E61656C63;
      }

      v137 = 0xE500000000000000;
      if (v700[0])
      {
        v137 = 0xE800000000000000;
      }

      v628 = v137;
      v629 = v136;
    }

    v138 = v101;
    v139 = v651;
    if (qword_280BE9950 != -1)
    {
      swift_once();
    }

    v627 = sub_2172A41C0();
    v626 = v140;
    if (qword_280BE97D0 != -1)
    {
      swift_once();
    }

    v625 = sub_2172A45A4(qword_280C02898);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_137_10();
    sub_2176CA5AC(v141, v142, v143, v144, v145, v146, v147, v148, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611);
    v702 = v700[0];
    v703 = v700[1];
    v704 = v700[2];
    v705 = v700[3];
    v149 = *(&v700[0] + 1);
    if (*(&v700[0] + 1) == 1)
    {
      v618 = 0;
      v619 = 0;
      v149 = 0;
      v620 = 0;
      v621 = 0;
      v622 = 0;
      v623 = 0uLL;
      v617 = 0;
    }

    else
    {
      v623 = v705;
      v150 = *(&v704 + 1);
      v621 = v704;
      v151 = *(&v703 + 1);
      v618 = v702;
      v619 = v703;
      sub_217751DE8();
      sub_217751DE8();
      v620 = v151;
      sub_217751DE8();
      v622 = v150;
      sub_217751DE8();
      v617 = sub_217751DC8();
      sub_2171F0738(&v702, &qword_27CB24B70, &unk_217759460);
    }

    v624 = v149;
    if (qword_280BE9790 != -1)
    {
      swift_once();
    }

    v616 = sub_2172A4588(qword_280C02868);
    if (qword_280BE82C0 != -1)
    {
      swift_once();
    }

    v615 = sub_2172A456C(qword_280C02560);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    v612 = sub_2172A41D4(qword_280C02980);
    if (qword_280BE8260 != -1)
    {
      swift_once();
    }

    v152 = qword_280C02510;
    OUTLINED_FUNCTION_137_10();
    sub_2176CA5A0(v152, v153, v154, v155, v156, v157, v158, v159, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611);
    if (*&v700[1] == 1)
    {
      v614 = 2;
    }

    else
    {
      v614 = *&v700[0];
      sub_21733B290(*&v700[0], *(&v700[0] + 1), *&v700[1]);
    }

    OUTLINED_FUNCTION_137_10();
    sub_2176CA5A0(v152, v160, v161, v162, v163, v164, v165, v166, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611);
    v173 = *&v700[1];
    if (*&v700[1] == 1)
    {
      v613 = 2;
    }

    else
    {
      v613 = *&v700[0] >> 8;
      sub_21733B290(*&v700[0], *(&v700[0] + 1), *&v700[1]);
    }

    v174 = v654;
    sub_2172A43D0(v654, v167, v173, v168, v169, v170, v171, v172, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    HIDWORD(v611) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v175, 1u);
    sub_2172A43D0(v174, v176, v177, v178, v179, v180, v181, v182, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    LODWORD(v611) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v183, 0);
    if (qword_280BE8270 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02520, v184, v185, v186, v187, v188, v189, v190, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    HIDWORD(v599) = v191;
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    v192 = sub_2172A41AC();
    v609 = v193;
    v610 = v192;
    if (qword_280BE9868 != -1)
    {
      swift_once();
    }

    v608 = sub_2172A41C0();
    HIDWORD(v607) = v194;
    if (qword_280BE98A0 != -1)
    {
      swift_once();
    }

    v195 = sub_2172A41AC();
    v605 = v196;
    v606 = v195;
    if (qword_280BE9808 != -1)
    {
      swift_once();
    }

    v604 = sub_2172A41C0();
    HIDWORD(v603) = v197;
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    v198 = sub_2172A41AC();
    if (v199)
    {
      v200 = v198;
    }

    else
    {
      v200 = 0;
    }

    v201 = 0xE000000000000000;
    if (v199)
    {
      v201 = v199;
    }

    v601 = v201;
    v602 = v200;
    if (qword_280BE8258 != -1)
    {
      swift_once();
    }

    v600 = sub_2172A4550(qword_280C02508);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    sub_2176CAA38(qword_280C028C0, v202, v203, v204, v205, v206, v207, v208, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    v209 = sub_2172A4534(qword_280C02900);
    v641 = v138;
    v643 = v135;
    if (v209)
    {
      v210 = v209;
      v211 = *(v209 + 16);
      if (v211)
      {
        v595 = v4;
        v695[0] = MEMORY[0x277D84F90];
        sub_2172766B8(0, v211, 0);
        v212 = v695[0];
        OUTLINED_FUNCTION_46_0();
        v594 = v210;
        v214 = v210 + v213;
        v654 = *(v215 + 72);
        for (i = v211 - 1; ; --i)
        {
          v217 = OUTLINED_FUNCTION_185_0();
          sub_217693BF8(v217, v218, v219);
          v220 = OUTLINED_FUNCTION_109_9();
          memcpy(v220, v48, 0x221uLL);
          v221 = OUTLINED_FUNCTION_88_17();
          memcpy(v221, v48, 0x221uLL);
          v222 = OUTLINED_FUNCTION_88_17();
          OUTLINED_FUNCTION_104(v222);
          if (v77)
          {
            sub_2172E22C0(v666);
          }

          else
          {
            memcpy(v661, v700, 0x221uLL);
            OUTLINED_FUNCTION_66_19();
            memcpy(v223, v224, 0x221uLL);
            sub_217284028(v662, v664);
            Artwork.convertToCloudArtworkAttribute()(v665);
            memcpy(v664, v661, 0x221uLL);
            sub_217284084(v664);
            memcpy(v661, v665, 0x1B8uLL);
            nullsub_1(v661, v225);
            memcpy(v666, v661, 0x1B8uLL);
          }

          v226 = v657;
          v227 = v659;
          v228 = v658;
          sub_21726A630(v48 + *(v657 + 20), v658 + *(v659 + 20), &unk_27CB277C0, &qword_217758DC0);
          sub_21726A630(v48 + *(v226 + 24), v228 + *(v227 + 24), &unk_27CB277C0, &qword_217758DC0);
          memcpy(v228, v666, 0x1B8uLL);
          v229 = v660;
          sub_217693BF8(v228, v660, type metadata accessor for CloudPreviewAsset);
          v230 = sub_217751DC8();
          sub_2176927B8(v228, type metadata accessor for CloudPreviewAsset);
          sub_2176927B8(v48, type metadata accessor for PreviewAsset);
          *(v229 + *(v656 + 28)) = v230;
          v695[0] = v212;
          v232 = *(v212 + 16);
          v231 = *(v212 + 24);
          if (v232 >= v231 >> 1)
          {
            sub_2172766B8(v231 > 1, v232 + 1, 1);
            v212 = v695[0];
          }

          *(v212 + 16) = v232 + 1;
          OUTLINED_FUNCTION_46_0();
          sub_21726A594(v235, v212 + v233 + *(v234 + 72) * v232, &qword_27CB24A68, &qword_217759030);
          if (!i)
          {
            break;
          }

          v214 += v654;
        }

        v4 = v595;
        v139 = v651;
      }

      else
      {

        v212 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v212 = 0;
    }

    v236 = v645;
    v237 = v646;
    if (qword_280BE8910 != -1)
    {
      OUTLINED_FUNCTION_2_24();
    }

    v238 = type metadata accessor for CloudFormatter();
    v246 = __swift_project_value_buffer(v238, qword_280BE8918);
    if (qword_280BE98F0 != -1)
    {
      swift_once();
    }

    sub_2176CA580(qword_280C02950, v239, v240, v241, v242, v243, v244, v245, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    sub_21726A630(v139, v236, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_133(v236, 1, v237);
    if (v77)
    {
      OUTLINED_FUNCTION_169_1(v139);
      OUTLINED_FUNCTION_169_1(v236);
      v660 = 0;
      v659 = 0;
    }

    else
    {
      v247 = v597;
      v248 = v598;
      (*(v598 + 32))(v597, v236, v237);
      v249 = *(v246 + *(v238 + 20));
      v250 = sub_2177517A8();
      v251 = [v249 stringFromDate_];

      v660 = sub_217751F48();
      v659 = v252;

      (*(v248 + 8))(v247, v237);
      sub_2171F0738(v651, &qword_27CB241C0, &qword_217759480);
    }

    if (qword_280BE8288 != -1)
    {
      swift_once();
    }

    sub_2176CAA44(qword_280C02530, v253, v254, v255, v256, v257, v258, v259, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613);
    if (qword_280BE98E8 != -1)
    {
      swift_once();
    }

    v260 = BYTE4(v599) & 1;
    v658 = sub_2172A41C0();
    v268 = v261;
    if (qword_280BE9770 != -1)
    {
      swift_once();
    }

    v269 = v648;
    v270 = v653;
    v271 = v653 + v648[37];
    sub_2176CA560(qword_280C02858, v261, v262, v263, v264, v265, v266, v267, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE96C8 != -1)
    {
      swift_once();
    }

    v272 = sub_2172A41AC();
    v274 = v273;
    v275 = v4;
    if (v612)
    {
      v276 = v612;
    }

    else
    {
      v276 = MEMORY[0x277D84F90];
    }

    memcpy(v270, v706, 0x1B8uLL);
    v277 = v638;
    v270[55] = v639;
    v270[56] = v277;
    v278 = v636;
    v270[57] = v637;
    v270[58] = v278;
    sub_21726A594(v641, v270 + v269[7], &unk_27CB277C0, &qword_217758DC0);
    v279 = (v270 + v269[8]);
    v280 = v634;
    *v279 = v635;
    v279[1] = v280;
    v281 = v632;
    *(v270 + v269[9]) = v633;
    *(v270 + v269[10]) = v281;
    v282 = (v270 + v269[11]);
    v283 = v630;
    *v282 = v631;
    v282[1] = v283;
    v284 = (v270 + v269[12]);
    v285 = v628;
    *v284 = v629;
    v284[1] = v285;
    v286 = (v270 + v269[13]);
    *v286 = v627;
    OUTLINED_FUNCTION_168_7(v286);
    v287 = (v270 + v269[14]);
    *v287 = v640;
    OUTLINED_FUNCTION_168_7(v287);
    *(v270 + v269[15]) = v625;
    v288 = (v270 + v269[16]);
    v289 = v624;
    *v288 = v618;
    v288[1] = v289;
    v290 = v620;
    v288[2] = v619;
    v288[3] = v290;
    v291 = v622;
    v288[4] = v621;
    v288[5] = v291;
    v292 = *(&v623 + 1);
    v288[6] = v623;
    v288[7] = v292;
    v293 = v616;
    v288[8] = v617;
    *(v270 + v269[17]) = v293;
    LOBYTE(v293) = v614;
    *(v270 + v269[18]) = v615;
    *(v270 + v269[19]) = v276;
    *(v270 + v269[20]) = v293;
    *(v270 + v269[21]) = v613;
    LOBYTE(v293) = v611;
    *(v270 + v269[22]) = BYTE4(v611);
    *(v270 + v269[23]) = v293;
    *(v270 + v269[24]) = v260;
    v294 = (v270 + v269[25]);
    v295 = v609;
    *v294 = v610;
    v294[1] = v295;
    v296 = (v270 + v269[26]);
    *v296 = v608;
    OUTLINED_FUNCTION_168_7(v296);
    v297 = (v270 + v269[27]);
    v298 = v605;
    *v297 = v606;
    v297[1] = v298;
    v299 = (v270 + v269[28]);
    *v299 = v604;
    OUTLINED_FUNCTION_168_7(v299);
    v300 = (v270 + v269[29]);
    v301 = v601;
    *v300 = v602;
    v300[1] = v301;
    *(v270 + v269[30]) = v600;
    memcpy(v270 + v269[31], v701, 0x78uLL);
    *(v270 + v269[32]) = v212;
    v302 = (v270 + v269[33]);
    v303 = v659;
    *v302 = v660;
    v302[1] = v303;
    memcpy(v270 + v269[34], v666, 0xB0uLL);
    v311 = v269[35];
    v312 = v270 + v269[36];
    *v312 = v658;
    v312[8] = v268 & 1;
    v313 = (v270 + v269[38]);
    *v313 = v272;
    v313[1] = v274;
    if (qword_280BE8280 != -1)
    {
      swift_once();
    }

    sub_2172A43D0(qword_280C02528, v304, v305, v306, v307, v308, v309, v310, v594, v595, v596, v597, v598, v599, SWORD2(v599), SBYTE6(v599), SHIBYTE(v599), v600, v601, v602, v603, v604, v605, v606, v607);
    *(v270 + v311) = v314;
    v700[0] = 0uLL;
    *&v700[1] = 1;
    OUTLINED_FUNCTION_137_10();
    bzero((v315 + 24), 0x5E8uLL);
    v323 = v275;
    if (qword_280BE9738 != -1)
    {
      swift_once();
    }

    sub_2176CA544(qword_280BE9740, v316, v317, v318, v319, v320, v321, v322, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE82D0 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280C02568, v324, v325, v326, v327, v328, v329, v330, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE9710 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE9718, v331, v332, v333, v334, v335, v336, v337, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE9848 != -1)
    {
      swift_once();
    }

    sub_2176CAAF4(qword_280C028F8, v338, v339, v340, v341, v342, v343, v344, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE98B8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280C02930, v345, v346, v347, v348, v349, v350, v351, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE96B0 != -1)
    {
      swift_once();
    }

    sub_2176CA50C(qword_280BE96B8, v352, v353, v354, v355, v356, v357, v358, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE8250 != -1)
    {
      swift_once();
    }

    sub_2176CAB2C(qword_280C02500, v359, v360, v361, v362, v363, v364, v365, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE9890 != -1)
    {
      swift_once();
    }

    sub_2176CAB48(qword_280C02918, v366, v367, v368, v369, v370, v371, v372, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE9720 != -1)
    {
      swift_once();
    }

    sub_2176CA528(qword_280BE9728, v373, v374, v375, v376, v377, v378, v379, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE96F8 != -1)
    {
      swift_once();
    }

    sub_2176CAB10(qword_280BE9700, v380, v381, v382, v383, v384, v385, v386, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE9900 != -1)
    {
      swift_once();
    }

    sub_2176CAB64(qword_280BE9908, v387, v388, v389, v390, v391, v392, v393, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (qword_280BE96E8 != -1)
    {
      swift_once();
    }

    sub_2176CAB80(qword_280BE96F0, v394, v395, v396, v397, v398, v399, v400, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604, v605, v606, v607, v608, v609, v610, v611, v612, v613, v614, v615);
    if (v699[11] || v698[11] || v697[11] || v665[2] || v696[24] || v696[11] || v695[2] || v694[2] || v693[11] || v692[37] || v692[24] || v692[11])
    {
      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v401, v402, v403, v404);
      if (v680)
      {
        sub_2172E2038();
        OUTLINED_FUNCTION_71_20(v662);
        LOBYTE(v661[0]) = v662[0];
        v405 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v405, v406);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v407 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v407, v408, v409);
        memset(v664, 0, 128);
      }

      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v410, v411, v412, v413);
      if (v680)
      {
        sub_2172E2134();
        OUTLINED_FUNCTION_71_20(v661);
        LOBYTE(v676[0]) = v661[0];
        v414 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v414, v415);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v416 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v416, v417, v418);
        memset(v662, 0, 128);
      }

      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v419, v420, v421, v422);
      if (v680)
      {
        sub_2172E2188();
        OUTLINED_FUNCTION_71_20(v676);
        LOBYTE(v675[0]) = v676[0];
        v423 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v423, v424);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v425 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v425, v426, v427);
        memset(v661, 0, 128);
      }

      sub_21726A630(v665, v676, &qword_27CB255E0, &unk_2177756D0);
      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v428, v429, v430, v431);
      if (v680)
      {
        sub_2173626DC();
        OUTLINED_FUNCTION_71_20(v674);
        v673[0] = v674[0];
        v432 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v432, v433);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v434 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v434, v435, v436);
        memset(v675, 0, sizeof(v675));
      }

      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v437, v438, v439, v440);
      if (v680)
      {
        sub_2172E2188();
        OUTLINED_FUNCTION_71_20(v673);
        v672[0] = v673[0];
        v441 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v441, v442);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v443 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v443, v444, v445);
        memset(v674, 0, sizeof(v674));
      }

      sub_21726A630(v695, v673, &qword_27CB255D8, &unk_21775D4B0);
      sub_21726A630(v694, v672, &qword_27CB255D0, &qword_21775D4A8);
      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v446, v447, v448, v449);
      if (v680)
      {
        sub_2172E2134();
        OUTLINED_FUNCTION_71_20(v670);
        v669[0] = v670[0];
        v450 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v450, v451);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v452 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v452, v453, v454);
        memset(v671, 0, sizeof(v671));
      }

      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v455, v456, v457, v458);
      if (v680)
      {
        sub_2173626DC();
        OUTLINED_FUNCTION_71_20(v669);
        v668[0] = v669[0];
        v459 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v459, v460);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v461 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v461, v462, v463);
        memset(v670, 0, sizeof(v670));
      }

      OUTLINED_FUNCTION_156_11();
      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v464, v465, v466, v467);
      if (v680)
      {
        sub_2172E1FE4();
        OUTLINED_FUNCTION_71_20(v668);
        v667 = v668[0];
        v468 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v468, v469);
        OUTLINED_FUNCTION_16_66();
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v470 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v470, v471, v472);
        memset(v669, 0, sizeof(v669));
      }

      OUTLINED_FUNCTION_66_19();
      sub_21726A630(v473, v474, v475, v476);
      if (v680)
      {
        sub_2173692A0();
        OUTLINED_FUNCTION_71_20(&v667);
        v666[446] = v667;
        v477 = OUTLINED_FUNCTION_204();
        __swift_instantiateConcreteTypeFromMangledNameV2(v477, v478);
        OUTLINED_FUNCTION_16_66();
        v479 = OUTLINED_FUNCTION_88_17();
        sub_2171F0738(v479, v480, v481);
        OUTLINED_FUNCTION_46_30();
      }

      else
      {
        v482 = OUTLINED_FUNCTION_88_17();
        sub_2171F0738(v482, v483, v484);
        v485 = OUTLINED_FUNCTION_109_9();
        sub_2171F0738(v485, v486, v487);
        memset(v668, 0, sizeof(v668));
      }

      v488 = OUTLINED_FUNCTION_109_9();
      memcpy(v488, v664, 0x80uLL);
      memcpy(v681, v662, sizeof(v681));
      memcpy(v682, v661, sizeof(v682));
      memcpy(v683, v676, sizeof(v683));
      memcpy(v684, v675, sizeof(v684));
      memcpy(v685, v674, sizeof(v685));
      memcpy(v686, v673, sizeof(v686));
      memcpy(v687, v672, sizeof(v687));
      memcpy(v688, v671, sizeof(v688));
      memcpy(v689, v670, sizeof(v689));
      memcpy(v690, v669, sizeof(v690));
      memcpy(v691, v668, sizeof(v691));
      OUTLINED_FUNCTION_88_17();
      OUTLINED_FUNCTION_66_19();
      memcpy(v489, v490, 0x600uLL);
    }

    if (qword_280BE8268 != -1)
    {
      swift_once();
    }

    v491 = sub_2172A4518(qword_280C02518);
    if (qword_280BE9938 != -1)
    {
      swift_once();
    }

    v492 = sub_2172A41F0();
    v494 = v493;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25480, &unk_2177756F0);
    swift_allocObject();
    v495 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
    v496 = sub_2172A44FC(v495);

    v664[3] = &type metadata for Song;
    v664[4] = &protocol witness table for Song;
    v664[0] = swift_allocObject();
    sub_217283AFC(v323, v664[0] + 16);
    v497 = __swift_project_boxed_opaque_existential_1(v664, &type metadata for Song);
    sub_21729C5E8((v497 + 2), v661);
    v498 = v661[3];
    v499 = v661[4];
    __swift_project_boxed_opaque_existential_1(v661, v661[3]);
    (*(v499 + 24))(v677, v498, v499);
    sub_21729C644(v661);
    OUTLINED_FUNCTION_66_19();
    memcpy(v500, v501, 0x161uLL);
    __swift_destroy_boxed_opaque_existential_1(v664);
    v502 = v663;
    sub_217751DE8();
    sub_217269F50(v662);
    if (v491 <= 1)
    {
      v503 = 1;
    }

    else
    {
      v503 = v491;
    }

    if (!v491 && (v494 & 1) != 0)
    {
      if (!v496 && !*(v502 + 16))
      {
        v505 = v270;

        v659 = 0;
        v660 = 0;
        v506 = 0;
        v502 = 0;
        v504 = 1;
        goto LABEL_197;
      }

      v503 = 1;
    }

    v659 = v503;
    v504 = v496;
    v660 = v492;
    v505 = v270;
    v506 = v494 & 1;
LABEL_197:
    v507 = *v323;
    v508 = v323[1];
    v509 = v643;
    v510 = v643[5];
    OUTLINED_FUNCTION_29_40();
    v511 = v652;
    sub_217693BF8(v505, v652 + v512, v513);
    v514 = v509[6];
    v515 = OUTLINED_FUNCTION_88_17();
    sub_21726A630(v515, v511 + v516, v517, v518);
    *v511 = v507;
    v511[1] = v508;
    *(v511 + v509[7]) = 1;
    v519 = (v511 + v509[8]);
    v520 = v660;
    *v519 = v659;
    v519[1] = v520;
    v519[2] = v506;
    v519[3] = v504;
    v519[4] = v502;
    OUTLINED_FUNCTION_149_8();
    v521 = v511[3];
    sub_217751DE8();
    v521(v661, v505, v511);
    nullsub_1(v661, v522);
    memcpy(v664, v661, 0x161uLL);
    OUTLINED_FUNCTION_10_65();
    v523 = v644;
    sub_217693BF8(v511, v644, v524);
    OUTLINED_FUNCTION_149_8();
    v525 = OUTLINED_FUNCTION_109_15();
    v526(v525);
    v527 = v678;
    v528 = v679;
    v529 = OUTLINED_FUNCTION_109_9();
    __swift_project_boxed_opaque_existential_1(v529, v527);
    (*(*(v528 + 8) + 48))(v675, v527);
    v530 = OUTLINED_FUNCTION_109_9();
    __swift_destroy_boxed_opaque_existential_1(v530);
    v659 = *(&v675[0] + 1);
    v660 = *&v675[0];
    LODWORD(v658) = LOBYTE(v675[1]);
    OUTLINED_FUNCTION_149_8();
    v531 = OUTLINED_FUNCTION_109_15();
    v532(v531);
    v533 = v678;
    v534 = OUTLINED_FUNCTION_109_9();
    __swift_project_boxed_opaque_existential_1(v534, v533);
    OUTLINED_FUNCTION_26_1();
    v536 = (*(v535 + 56))(v533);
    v656 = v537;
    v657 = v536;
    v538 = OUTLINED_FUNCTION_109_9();
    __swift_destroy_boxed_opaque_existential_1(v538);
    v539 = OUTLINED_FUNCTION_109_9();
    memcpy(v539, v664, 0x168uLL);
    memset(&v682[104], 0, 24);
    v540 = OUTLINED_FUNCTION_109_9();
    nullsub_1(v540, v541);
    v542 = v323[5];
    v543 = v323[6];
    __swift_project_boxed_opaque_existential_1(v323 + 2, v542);
    OUTLINED_FUNCTION_58_21();
    v544(v542, v543);
    v545 = v676[3];
    v546 = OUTLINED_FUNCTION_92_18();
    __swift_project_boxed_opaque_existential_1(v546, v545);
    OUTLINED_FUNCTION_26_1();
    v548 = (*(v547 + 64))(v545);
    v549 = OUTLINED_FUNCTION_100_15();
    __swift_destroy_boxed_opaque_existential_1(v549);
    v550 = v323[5];
    v551 = v323[6];
    __swift_project_boxed_opaque_existential_1(v323 + 2, v550);
    OUTLINED_FUNCTION_58_21();
    v552(v550, v551);
    v553 = v676[3];
    v554 = OUTLINED_FUNCTION_92_18();
    __swift_project_boxed_opaque_existential_1(v554, v553);
    OUTLINED_FUNCTION_26_1();
    v556 = (*(v555 + 72))(v553);
    v557 = OUTLINED_FUNCTION_100_15();
    __swift_destroy_boxed_opaque_existential_1(v557);
    v559 = v323[5];
    v558 = v323[6];
    __swift_project_boxed_opaque_existential_1(v323 + 2, v559);
    OUTLINED_FUNCTION_58_21();
    v560(v559, v558);
    v561 = v676[3];
    v562 = OUTLINED_FUNCTION_92_18();
    __swift_project_boxed_opaque_existential_1(v562, v561);
    OUTLINED_FUNCTION_26_1();
    v564 = (*(v563 + 80))(v561);
    v565 = OUTLINED_FUNCTION_100_15();
    __swift_destroy_boxed_opaque_existential_1(v565);
    v567 = v323[5];
    v566 = v323[6];
    __swift_project_boxed_opaque_existential_1(v323 + 2, v567);
    OUTLINED_FUNCTION_58_21();
    v568(v567, v566);
    v569 = v676[3];
    v570 = OUTLINED_FUNCTION_92_18();
    __swift_project_boxed_opaque_existential_1(v570, v569);
    OUTLINED_FUNCTION_26_1();
    v572 = (*(v571 + 88))(v569);
    OUTLINED_FUNCTION_30_39();
    sub_2176927B8(v652, v573);
    v574 = OUTLINED_FUNCTION_88_17();
    sub_2171F0738(v574, &qword_27CB24A78, &qword_217759040);
    OUTLINED_FUNCTION_31_42();
    sub_2176927B8(v653, v575);
    v576 = OUTLINED_FUNCTION_100_15();
    __swift_destroy_boxed_opaque_existential_1(v576);
    v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
    v578 = v523 + v577[9];
    v579 = v659;
    *v578 = v660;
    *(v578 + 8) = v579;
    *(v578 + 16) = v658;
    v580 = (v523 + v577[10]);
    v581 = v656;
    *v580 = v657;
    v580[1] = v581;
    v582 = v577[11];
    OUTLINED_FUNCTION_66_19();
    memcpy(v583, v584, 0x180uLL);
    *(v523 + v577[12]) = v548;
    *(v523 + v577[13]) = v556;
    *(v523 + v577[14]) = v564;
    *(v523 + v577[15]) = v572;
    sub_2171F0738(v699, &qword_27CB25318, &qword_2177657C0);
    sub_2171F0738(v692, &qword_27CB255B0, &unk_217793B50);
    v585 = OUTLINED_FUNCTION_156_11();
    sub_2171F0738(v585, v586, v587);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v588, v589, v590);
    OUTLINED_FUNCTION_169_1(v693);
    sub_2171F0738(v694, &qword_27CB255D0, &qword_21775D4A8);
    sub_2171F0738(v695, &qword_27CB255D8, &unk_21775D4B0);
    OUTLINED_FUNCTION_176_9(v696);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v591, v592, v593);
    sub_2171F0738(v665, &qword_27CB255E0, &unk_2177756D0);
    OUTLINED_FUNCTION_176_9(v697);
    OUTLINED_FUNCTION_169_1(v698);
    OUTLINED_FUNCTION_13();
    return;
  }

LABEL_201:
  __break(1u);
}

uint64_t CloudSong.Attributes.artwork.getter()
{
  OUTLINED_FUNCTION_136_4(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x1B8uLL);
  return sub_21726A630(v4, v3, &qword_27CB25000, &unk_21776EA00);
}

void static CloudSong.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v3;
  v6 = v5;
  v7 = sub_2177516D8();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_6_1();
  v236 = v22 - v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_91_16();
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v26 = OUTLINED_FUNCTION_43(v237);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  OUTLINED_FUNCTION_6_1();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v229 - v35;
  OUTLINED_FUNCTION_155_10();
  OUTLINED_FUNCTION_149_4();
  memcpy(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_35_20();
  memcpy(v40, v4, 0x1B8uLL);
  OUTLINED_FUNCTION_149_4();
  memcpy(v41, v42, v43);
  memcpy(&v251[27] + 8, v4, 0x1B8uLL);
  OUTLINED_FUNCTION_156_11();
  OUTLINED_FUNCTION_149_4();
  memcpy(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_156_11();
  OUTLINED_FUNCTION_104(v47);
  if (v52)
  {
    OUTLINED_FUNCTION_120_8(v250);
    OUTLINED_FUNCTION_104(v250);
    if (v52)
    {
      v233 = v32;
      v234 = v16;
      v235 = v10;
      v48 = OUTLINED_FUNCTION_157_9();
      memcpy(v48, v251, 0x1B8uLL);
      v49 = OUTLINED_FUNCTION_155_10();
      OUTLINED_FUNCTION_84_15(v49);
      v50 = OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_84_15(v50);
      v51 = OUTLINED_FUNCTION_157_9();
      OUTLINED_FUNCTION_59_19(v51);
      goto LABEL_12;
    }

LABEL_8:
    memcpy(v250, v251, sizeof(v250));
    v53 = OUTLINED_FUNCTION_155_10();
    OUTLINED_FUNCTION_157(v53, v254);
    v54 = OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_157(v54, v254);
    v55 = &unk_27CB25008;
    v56 = &unk_21778F850;
    v57 = v250;
LABEL_9:
    sub_2171F0738(v57, v55, v56);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_120_8(v249);
  OUTLINED_FUNCTION_104(v249);
  if (v52)
  {
    goto LABEL_8;
  }

  v233 = v32;
  v234 = v16;
  v235 = v10;
  OUTLINED_FUNCTION_120_8(v238);
  OUTLINED_FUNCTION_120_8(v250);
  v58 = OUTLINED_FUNCTION_157_9();
  memcpy(v58, v251, 0x1B8uLL);
  v59 = OUTLINED_FUNCTION_155_10();
  sub_21726A630(v59, v239, &qword_27CB25000, &unk_21776EA00);
  v60 = OUTLINED_FUNCTION_35_20();
  sub_21726A630(v60, v239, &qword_27CB25000, &unk_21776EA00);
  OUTLINED_FUNCTION_157_9();
  sub_2172A92BC();
  v62 = v61;
  OUTLINED_FUNCTION_176_9(v238);
  v63 = OUTLINED_FUNCTION_152_12();
  memcpy(v63, v64, 0x1B8uLL);
  OUTLINED_FUNCTION_176_9(v239);
  if ((v62 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v65 = v6[56];
  v66 = v4[56];
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_10;
    }

    v67 = v6[55] == v4[55] && v65 == v66;
    if (!v67 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v66)
  {
    goto LABEL_10;
  }

  v68 = v6[58];
  v69 = v4[58];
  if (v68)
  {
    if (!v69)
    {
      goto LABEL_10;
    }

    v70 = v6[57] == v4[57] && v68 == v69;
    if (!v70 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v69)
  {
    goto LABEL_10;
  }

  v231 = type metadata accessor for CloudSong.Attributes(0);
  v232 = v7;
  v71 = v231[7];
  v72 = *(v237 + 48);
  v73 = &unk_27CB277C0;
  OUTLINED_FUNCTION_253(v6 + v71, v36);
  v74 = v4 + v71;
  v75 = v232;
  OUTLINED_FUNCTION_253(v74, &v36[v72]);
  OUTLINED_FUNCTION_133(v36, 1, v75);
  if (v52)
  {
    OUTLINED_FUNCTION_133(&v36[v72], 1, v75);
    if (v52)
    {
      sub_2171F0738(v36, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v76 = OUTLINED_FUNCTION_83();
  sub_21726A630(v76, v77, v78, v79);
  OUTLINED_FUNCTION_133(&v36[v72], 1, v75);
  if (v80)
  {
    (*(v235 + 8))(v0, v75);
LABEL_38:
    v55 = &qword_27CB24840;
    v56 = &unk_217758DD0;
    v57 = v36;
    goto LABEL_9;
  }

  v73 = v234;
  v81 = v235;
  (*(v235 + 32))(v234, &v36[v72], v75);
  OUTLINED_FUNCTION_7_76();
  sub_217692810(v82);
  HIDWORD(v230) = sub_217751F08();
  v83 = *(v81 + 8);
  v83(v73, v75);
  v83(v0, v75);
  sub_2171F0738(v36, &unk_27CB277C0, &qword_217758DC0);
  if ((v230 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_40:
  v84 = v231;
  v85 = v231[8];
  OUTLINED_FUNCTION_24_3();
  if (v88)
  {
    if (!v86)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v87);
    v91 = v52 && v89 == v90;
    if (!v91 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v86)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_110_14(v84[9]);
  if (v36)
  {
    if (!v0)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_21727208C();
    OUTLINED_FUNCTION_142_11();
    if ((v73 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_110_14(v84[10]);
  if (v36)
  {
    if (!v0)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_21727208C();
    OUTLINED_FUNCTION_142_11();
    if ((v73 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v0)
  {
    goto LABEL_10;
  }

  v92 = v84[11];
  OUTLINED_FUNCTION_24_3();
  if (v95)
  {
    if (!v93)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v94);
    v98 = v52 && v96 == v97;
    if (!v98 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v93)
  {
    goto LABEL_10;
  }

  v99 = v84[12];
  OUTLINED_FUNCTION_24_3();
  if (v102)
  {
    if (!v100)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v101);
    v105 = v52 && v103 == v104;
    if (!v105 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v100)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v84[13]);
  if (v107)
  {
    if (!v106)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v108)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_144_3(v84[14]);
  if (v110)
  {
    if (!v109)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v111)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_110_14(v231[15]);
  if (v36)
  {
    if (!v0)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_217262A00();
    OUTLINED_FUNCTION_142_11();
    if ((v73 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v0)
  {
    goto LABEL_10;
  }

  v112 = v239;
  v113 = (v6 + v231[16]);
  memcpy(v247, v113, sizeof(v247));
  v114 = (v4 + v231[16]);
  memcpy(v248, v114, sizeof(v248));
  v115 = *(v113 + 1);
  v239[0] = *v113;
  v239[1] = v115;
  v116 = *(v113 + 3);
  v239[2] = *(v113 + 2);
  v239[3] = v116;
  v117 = v247[8];
  if (!v247[8])
  {
    if (!v248[8])
    {
      v128 = *(v113 + 1);
      v251[0] = *v113;
      v251[1] = v128;
      v129 = *(v113 + 3);
      v251[2] = *(v113 + 2);
      v251[3] = v129;
      *&v251[4] = 0;
      v112 = &qword_27CB25010;
      OUTLINED_FUNCTION_84_15(v247);
      OUTLINED_FUNCTION_84_15(v248);
      OUTLINED_FUNCTION_59_19(v251);
      goto LABEL_98;
    }

LABEL_95:
    v124 = *(v113 + 1);
    v251[0] = *v113;
    v251[1] = v124;
    v125 = *(v113 + 3);
    v251[2] = *(v113 + 2);
    v251[3] = v125;
    v126 = v114[1];
    *(&v251[4] + 8) = *v114;
    *(&v251[5] + 8) = v126;
    v127 = v114[3];
    *(&v251[6] + 8) = v114[2];
    *(&v251[7] + 8) = v127;
    *&v251[4] = v247[8];
    *(&v251[8] + 1) = v248[8];
    OUTLINED_FUNCTION_157(v247, v249);
    OUTLINED_FUNCTION_157(v248, v249);
    v55 = &unk_27CB25018;
    v56 = &unk_21775B500;
LABEL_96:
    v57 = v251;
    goto LABEL_9;
  }

  if (!v248[8])
  {
    goto LABEL_95;
  }

  v118 = v114[1];
  v249[0] = *v114;
  v249[1] = v118;
  v119 = v114[3];
  v249[2] = v114[2];
  v249[3] = v119;
  *&v249[4] = v248[8];
  memcpy(v253, v249, sizeof(v253));
  v120 = *(v113 + 1);
  v251[55] = *v113;
  v251[56] = v120;
  v121 = *(v113 + 3);
  v251[57] = *(v113 + 2);
  v251[58] = v121;
  v252 = v247[8];
  v113 = &qword_21775B4F8;
  sub_21726A630(v247, v251, &qword_27CB25010, &qword_21775B4F8);
  sub_21726A630(v248, v251, &qword_27CB25010, &qword_21775B4F8);
  sub_2172A9570();
  v123 = v122;
  sub_2171F0738(v249, &qword_27CB25010, &qword_21775B4F8);
  v251[0] = v239[0];
  v251[1] = v239[1];
  v251[2] = v239[2];
  v251[3] = v239[3];
  *&v251[4] = v117;
  sub_2171F0738(v251, &qword_27CB25010, &qword_21775B4F8);
  if ((v123 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_98:
  OUTLINED_FUNCTION_110_14(v231[17]);
  if (v114)
  {
    if (!v113)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_217262CB4();
    OUTLINED_FUNCTION_142_11();
    if ((v112 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v113)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_110_14(v231[18]);
  if (v114)
  {
    if (!v113)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_83();
    sub_2172630B0();
    OUTLINED_FUNCTION_142_11();
    if ((v112 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v113)
  {
    goto LABEL_10;
  }

  v130 = v231[19];
  v131 = *(v6 + v130);
  v132 = *(v4 + v130);
  if (v131)
  {
    if (!v132 || (sub_217270790(v131, v132) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v132)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_13(v231[20]);
  if (v52)
  {
    if (v133 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v133 == 2 || ((v133 ^ v134) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_13(v231[21]);
  if (v52)
  {
    if (v135 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v135 == 2 || ((v135 ^ v136) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_13(v231[22]);
  if (v52)
  {
    if (v137 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v137 == 2 || ((v137 ^ v138) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_13(v231[23]);
  if (v52)
  {
    if (v139 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v139 == 2 || ((v139 ^ v140) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_13(v231[24]);
  if (v52)
  {
    if (v141 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v141 == 2 || ((v141 ^ v142) & 1) != 0)
  {
    goto LABEL_10;
  }

  v143 = v231[25];
  OUTLINED_FUNCTION_24_3();
  if (v146)
  {
    if (!v144)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v145);
    v149 = v52 && v147 == v148;
    if (!v149 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v144)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v231[26]);
  if (v151)
  {
    if (!v150)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v152)
    {
      goto LABEL_10;
    }
  }

  v153 = v231[27];
  OUTLINED_FUNCTION_24_3();
  if (v156)
  {
    if (!v154)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v155);
    v159 = v52 && v157 == v158;
    if (!v159 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v154)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v231[28]);
  if (v161)
  {
    if (!v160)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v162)
    {
      goto LABEL_10;
    }
  }

  v163 = v231[29];
  OUTLINED_FUNCTION_24_3();
  if (v166)
  {
    if (!v164)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v165);
    v169 = v52 && v167 == v168;
    if (!v169 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v164)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_110_14(v231[30]);
  if (v114)
  {
    if (!v113)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    v170 = OUTLINED_FUNCTION_83();
    sub_2172711A8(v170, v171);
    OUTLINED_FUNCTION_142_11();
    if ((v112 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v113)
  {
    goto LABEL_10;
  }

  v172 = v231[31];
  v173 = (v6 + v172);
  memcpy(v245, v6 + v172, sizeof(v245));
  v174 = v4 + v172;
  memcpy(v246, v4 + v172, sizeof(v246));
  v175 = *v245;
  v176 = *&v245[8];
  memcpy(v243, v6 + v172 + 16, 0x68uLL);
  v177 = v246[0];
  v178 = v246[1];
  memcpy(v242, v4 + v172 + 16, 0x68uLL);
  if (!*&v245[8])
  {
    if (!v246[1])
    {
      v251[0] = *v245;
      OUTLINED_FUNCTION_171_10();
      v178 = &qword_27CB244D0;
      OUTLINED_FUNCTION_84_15(v245);
      OUTLINED_FUNCTION_84_15(v246);
      OUTLINED_FUNCTION_59_19(v251);
      goto LABEL_192;
    }

    OUTLINED_FUNCTION_157(v245, v251);
    OUTLINED_FUNCTION_157(v246, v251);
    goto LABEL_190;
  }

  v251[0] = *v245;
  OUTLINED_FUNCTION_171_10();
  memcpy(v249, v251, 0x78uLL);
  if (!v178)
  {
    v180 = OUTLINED_FUNCTION_152_12();
    memcpy(v180, v181, 0x78uLL);
    OUTLINED_FUNCTION_157(v245, v238);
    OUTLINED_FUNCTION_157(v246, v238);
    OUTLINED_FUNCTION_157(v251, v238);
    sub_2172848C0(v239);
LABEL_190:
    *&v251[0] = v175;
    *(&v251[0] + 1) = v176;
    memcpy(&v251[1], v243, 0x68uLL);
    *(&v251[7] + 1) = v177;
    *&v251[8] = v178;
    memcpy(&v251[8] + 8, v242, 0x68uLL);
    v55 = &qword_27CB24AE8;
    v56 = &unk_2177590C0;
    goto LABEL_96;
  }

  memcpy(&v239[1], v174 + 16, 0x68uLL);
  *&v239[0] = v177;
  *(&v239[0] + 1) = v178;
  v173 = &qword_27CB244D0;
  v174 = &unk_21775D620;
  OUTLINED_FUNCTION_148_7(v245);
  OUTLINED_FUNCTION_148_7(v246);
  OUTLINED_FUNCTION_148_7(v251);
  static PlayParameters.== infix(_:_:)(v249, v239);
  LOBYTE(v178) = v179;
  memcpy(v244, v239, 0x78uLL);
  sub_2172848C0(v244);
  memcpy(v238, v249, 0x78uLL);
  sub_2172848C0(v238);
  *&v239[0] = v175;
  *(&v239[0] + 1) = v176;
  memcpy(&v239[1], v243, 0x68uLL);
  sub_2171F0738(v239, &qword_27CB244D0, &unk_21775D620);
  if ((v178 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_192:
  OUTLINED_FUNCTION_110_14(v231[32]);
  if (v174)
  {
    if (!v173)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    v182 = OUTLINED_FUNCTION_83();
    sub_2172723E0(v182, v183, v184, v185, v186, v187, v188, v189, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238[0], v238[1], v238[2]);
    OUTLINED_FUNCTION_142_11();
    if ((v178 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v173)
  {
    goto LABEL_10;
  }

  v190 = v231[33];
  OUTLINED_FUNCTION_24_3();
  if (v193)
  {
    if (!v191)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v192);
    v196 = v52 && v194 == v195;
    if (!v196 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v191)
  {
    goto LABEL_10;
  }

  v197 = v231[34];
  memcpy(v243, v6 + v197, sizeof(v243));
  v198 = v231[34];
  memcpy(v244, v4 + v198, sizeof(v244));
  memcpy(v251, v6 + v197, 0xB0uLL);
  memcpy(&v251[11], v4 + v198, 0xB0uLL);
  memcpy(v238, v6 + v197, 0xB0uLL);
  if (sub_21753BA74(v238) == 1)
  {
    OUTLINED_FUNCTION_177_7(v249);
    if (sub_21753BA74(v249) == 1)
    {
      v199 = OUTLINED_FUNCTION_152_12();
      memcpy(v199, v200, 0xB0uLL);
      OUTLINED_FUNCTION_253(v243, v242);
      OUTLINED_FUNCTION_253(v244, v242);
      OUTLINED_FUNCTION_59_19(v239);
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  OUTLINED_FUNCTION_177_7(v242);
  if (sub_21753BA74(v242) == 1)
  {
LABEL_210:
    memcpy(v249, v251, 0x160uLL);
    OUTLINED_FUNCTION_157(v243, v239);
    OUTLINED_FUNCTION_157(v244, v239);
    v55 = &unk_27CB291D0;
    v56 = &unk_217775A60;
    v57 = v249;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_7(v240);
  OUTLINED_FUNCTION_177_7(v249);
  v201 = OUTLINED_FUNCTION_152_12();
  memcpy(v201, v202, 0xB0uLL);
  OUTLINED_FUNCTION_253(v243, v241);
  OUTLINED_FUNCTION_253(v244, v241);
  sub_2172A9384();
  v204 = v203;
  OUTLINED_FUNCTION_59_19(v240);
  memcpy(v241, v251, sizeof(v241));
  OUTLINED_FUNCTION_59_19(v241);
  if ((v204 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_212:
  OUTLINED_FUNCTION_31_13(v231[35]);
  if (v52)
  {
    if (v205 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v205 == 2 || ((v205 ^ v206) & 1) != 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v231[36]);
  if (v208)
  {
    if (!v207)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v209)
    {
      goto LABEL_10;
    }
  }

  v210 = v231[37];
  v211 = *(v237 + 48);
  v212 = v233;
  OUTLINED_FUNCTION_253(v6 + v210, v233);
  OUTLINED_FUNCTION_253(v4 + v210, v212 + v211);
  v213 = v212;
  OUTLINED_FUNCTION_133(v212, 1, v232);
  if (!v52)
  {
    sub_21726A630(v212, v236, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_133(v212 + v211, 1, v232);
    if (!v214)
    {
      v215 = v235;
      v216 = v232;
      (*(v235 + 32))(v234, v213 + v211, v232);
      OUTLINED_FUNCTION_7_76();
      sub_217692810(v217);
      v218 = v236;
      v219 = sub_217751F08();
      v220 = *(v215 + 8);
      v221 = OUTLINED_FUNCTION_5_3();
      v220(v221);
      (v220)(v218, v216);
      sub_2171F0738(v213, &unk_27CB277C0, &qword_217758DC0);
      if ((v219 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_232;
    }

    (*(v235 + 8))(v236, v232);
    goto LABEL_230;
  }

  OUTLINED_FUNCTION_133(v212 + v211, 1, v232);
  if (!v52)
  {
LABEL_230:
    v55 = &qword_27CB24840;
    v56 = &unk_217758DD0;
    v57 = v212;
    goto LABEL_9;
  }

  sub_2171F0738(v212, &unk_27CB277C0, &qword_217758DC0);
LABEL_232:
  v222 = v231[38];
  OUTLINED_FUNCTION_24_3();
  if (v225 && v223)
  {
    OUTLINED_FUNCTION_59_0(v224);
    if (v52)
    {
      v228 = v226 == v227;
    }

    else
    {
      v228 = 0;
    }

    if (!v228)
    {
      sub_217753058();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21768CF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6172546F69647561 && a2 == 0xEB00000000737469;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7261566F69647561 && a2 == 0xED000073746E6169;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7265736F706D6F63 && a2 == 0xEC000000656D614ELL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626D754E63736964 && a2 == 0xEA00000000007265;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000002177ABFE0 == a2;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x80000002177B4B20 == a2;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000013 && 0x80000002177AD140 == a2;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000014 && 0x80000002177AB8B0 == a2;
                                      if (v23 || (sub_217753058() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000013 && 0x80000002177AA7E0 == a2;
                                        if (v24 || (sub_217753058() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000019 && 0x80000002177B4B40 == a2;
                                          if (v25 || (sub_217753058() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 1668445033 && a2 == 0xE400000000000000;
                                            if (v26 || (sub_217753058() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E656D65766F6DLL && a2 == 0xED0000746E756F43;
                                              if (v27 || (sub_217753058() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x746E656D65766F6DLL && a2 == 0xEC000000656D614ELL;
                                                if (v28 || (sub_217753058() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x746E656D65766F6DLL && a2 == 0xEE007265626D754ELL;
                                                  if (v29 || (sub_217753058() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                                    if (v30 || (sub_217753058() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                                      if (v31 || (sub_217753058() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                                        if (v32 || (sub_217753058() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                                          if (v33 || (sub_217753058() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                                            if (v34 || (sub_217753058() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x4F6C616974617073 && a2 == 0xEE00737465736666;
                                                              if (v35 || (sub_217753058() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000018 && 0x80000002177B4B60 == a2;
                                                                if (v36 || (sub_217753058() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                                                  if (v37 || (sub_217753058() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 7107189 && a2 == 0xE300000000000000;
                                                                    if (v38 || (sub_217753058() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                                                    {

                                                                      return 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      v40 = sub_217753058();

                                                                      if (v40)
                                                                      {
                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        return 35;
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

uint64_t sub_21768D9D4(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6D614E6D75626C61;
      break;
    case 2:
      result = 0x614E747369747261;
      break;
    case 3:
      result = 0x7255747369747261;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      v3 = 0x546F69647561;
      goto LABEL_19;
    case 6:
      result = 0x7261566F69647561;
      break;
    case 7:
      result = 0x7265736F706D6F63;
      break;
    case 8:
      result = 0x52746E65746E6F63;
      break;
    case 9:
      result = 0x626D754E63736964;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
    case 13:
      result = 0x6169726F74696465;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x6D614E65726E6567;
      break;
    case 16:
      result = 0x636972794C736168;
      break;
    case 17:
    case 19:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
      result = 1668445033;
      break;
    case 22:
    case 24:
      result = 0x746E656D65766F6DLL;
      break;
    case 23:
      result = 0x746E656D65766F6DLL;
      break;
    case 25:
      result = 1701667182;
      break;
    case 26:
      result = 0x73726566666FLL;
      break;
    case 27:
      v3 = 0x615079616C70;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      break;
    case 28:
      result = 0x7377656976657270;
      break;
    case 29:
      result = 0x44657361656C6572;
      break;
    case 30:
      result = 0x4F6C616974617073;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    case 32:
      result = 0x6D754E6B63617274;
      break;
    case 33:
      result = 7107189;
      break;
    case 34:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21768DDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21768CF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21768DE0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21768D9CC();
  *a1 = result;
  return result;
}

uint64_t sub_21768DE34(uint64_t a1)
{
  v2 = sub_217693CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21768DE70(uint64_t a1)
{
  v2 = sub_217693CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudSong.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C178, &qword_217790598);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v33 - v12;
  v14 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217693CB0();
  sub_2177532F8();
  memcpy(v49, v2, 0x1B8uLL);
  memcpy(v48, v2, sizeof(v48));
  v47[447] = 0;
  sub_21726A630(v49, v47, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_37_8();
  memcpy(v47, v48, 0x1B8uLL);
  sub_2171F0738(v47, &qword_27CB25000, &unk_21776EA00);
  if (!v1)
  {
    v15 = v2[55];
    v16 = v2[56];
    OUTLINED_FUNCTION_9_79(1);
    sub_217752EF8();
    v17 = v2[57];
    v18 = v2[58];
    OUTLINED_FUNCTION_9_79(2);
    sub_217752EF8();
    v50 = type metadata accessor for CloudSong.Attributes(0);
    v19 = v50[7];
    LOBYTE(v37[0]) = 3;
    v20 = sub_2177516D8();
    OUTLINED_FUNCTION_7_76();
    v22 = sub_217692810(v21);
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v33[1] = v22;
    OUTLINED_FUNCTION_143_1(v50[8]);
    OUTLINED_FUNCTION_9_79(4);
    sub_217752EF8();
    v33[0] = v20;
    v37[0] = *(v2 + v50[9]);
    v36[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF02C();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v37[0] = *(v2 + v50[10]);
    v36[0] = 6;
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v50[11]);
    OUTLINED_FUNCTION_9_79(7);
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v50[12]);
    OUTLINED_FUNCTION_9_79(8);
    sub_217752EF8();
    OUTLINED_FUNCTION_64_25(v50[13]);
    OUTLINED_FUNCTION_9_79(9);
    sub_217752F28();
    OUTLINED_FUNCTION_64_25(v50[14]);
    OUTLINED_FUNCTION_9_79(10);
    sub_217752F28();
    v46 = *(v2 + v50[15]);
    v45[79] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_217361D3C(&unk_280BE23A0);
    OUTLINED_FUNCTION_37_8();
    v23 = v50[16];
    memcpy(v45, v2 + v23, 0x48uLL);
    memcpy(v44, v2 + v23, sizeof(v44));
    v43[79] = 12;
    sub_21726A630(v45, v37, &qword_27CB25010, &qword_21775B4F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF104();
    OUTLINED_FUNCTION_37_8();
    memcpy(v43, v44, 0x48uLL);
    sub_2171F0738(v43, &qword_27CB25010, &qword_21775B4F8);
    OUTLINED_FUNCTION_151_9(v50[17]);
    v36[0] = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_217693EF4(&qword_280BE23B0);
    OUTLINED_FUNCTION_38_35();
    OUTLINED_FUNCTION_151_9(v50[18]);
    v36[0] = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C60, &qword_217759660);
    sub_217693D04();
    OUTLINED_FUNCTION_38_35();
    OUTLINED_FUNCTION_151_9(v50[19]);
    v36[0] = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_38_35();
    v24 = *(v2 + v50[20]);
    LOBYTE(v37[0]) = 16;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    v25 = *(v2 + v50[21]);
    LOBYTE(v37[0]) = 17;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    v26 = *(v2 + v50[22]);
    LOBYTE(v37[0]) = 18;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    v27 = *(v2 + v50[23]);
    LOBYTE(v37[0]) = 19;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    v28 = *(v2 + v50[24]);
    LOBYTE(v37[0]) = 20;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    OUTLINED_FUNCTION_143_1(v50[25]);
    OUTLINED_FUNCTION_9_79(21);
    sub_217752EF8();
    OUTLINED_FUNCTION_64_25(v50[26]);
    OUTLINED_FUNCTION_9_79(22);
    sub_217752F28();
    OUTLINED_FUNCTION_143_1(v50[27]);
    OUTLINED_FUNCTION_9_79(23);
    sub_217752EF8();
    OUTLINED_FUNCTION_64_25(v50[28]);
    OUTLINED_FUNCTION_9_79(24);
    sub_217752F28();
    OUTLINED_FUNCTION_143_1(v50[29]);
    OUTLINED_FUNCTION_9_79(25);
    sub_217752EF8();
    v42 = *(v2 + v50[30]);
    v41[127] = 26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DF398();
    OUTLINED_FUNCTION_37_8();
    v29 = v50[31];
    memcpy(v41, v2 + v29, 0x78uLL);
    memcpy(v40, v2 + v29, sizeof(v40));
    v39[127] = 27;
    sub_21726A630(v41, v37, &qword_27CB244D0, &unk_21775D620);
    sub_2172DF550();
    OUTLINED_FUNCTION_47_29();
    sub_217752F38();
    memcpy(v39, v40, 0x78uLL);
    sub_2171F0738(v39, &qword_27CB244D0, &unk_21775D620);
    OUTLINED_FUNCTION_151_9(v50[32]);
    v36[0] = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361BD0();
    OUTLINED_FUNCTION_38_35();
    OUTLINED_FUNCTION_143_1(v50[33]);
    v38 = 29;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    v30 = v50[34];
    memcpy(v37, v2 + v30, sizeof(v37));
    memcpy(v36, v2 + v30, sizeof(v36));
    v35[183] = 30;
    sub_21726A630(v37, v35, &qword_27CB25690, &qword_21775D720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C70, &unk_217775710);
    sub_217693DC0();
    OUTLINED_FUNCTION_37_8();
    memcpy(v35, v36, 0xB0uLL);
    sub_2171F0738(v35, &qword_27CB25690, &qword_21775D720);
    v31 = *(v2 + v50[35]);
    v34 = 31;
    OUTLINED_FUNCTION_47_29();
    sub_217752F08();
    OUTLINED_FUNCTION_64_25(v50[36]);
    v34 = 32;
    OUTLINED_FUNCTION_49_0();
    sub_217752F28();
    v32 = v50[37];
    v34 = 33;
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v50[38]);
    v34 = 34;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
  }

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_170();
}

void CloudSong.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v5 = sub_2177516D8();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v67 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_6_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_91_16();
  memcpy(v73, v0, sizeof(v73));
  v24 = v0[54];
  memcpy(v74, v0, sizeof(v74));
  v75 = v24;
  OUTLINED_FUNCTION_104(v74);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v72, v73, sizeof(v72));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v4);
    sub_217751DE8();
    sub_217265A08(v4, v24);
  }

  if (v0[56])
  {
    v26 = v0[55];
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[58])
  {
    v27 = v0[57];
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v28 = type metadata accessor for CloudSong.Attributes(0);
  sub_21726A630(v0 + v28[7], v1, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v1, 1, v5);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v67 + 32))(v13, v1, v5);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_7_76();
    sub_217692810(v29);
    OUTLINED_FUNCTION_147();
    (*(v67 + 8))(v13, v5);
  }

  OUTLINED_FUNCTION_153_1(v28[8]);
  if (v1)
  {
    OUTLINED_FUNCTION_59(v30);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v28[9]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v31 = *(v0 + v28[10]);
  if (v31)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217281490();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1(v28[11]);
  if (v31)
  {
    OUTLINED_FUNCTION_59(v32);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1(v28[12]);
  if (v31)
  {
    OUTLINED_FUNCTION_59(v33);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0(v28[13]);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v35 = *v34;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v35);
  }

  OUTLINED_FUNCTION_189_0(v28[14]);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v37 = *v36;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v37);
  }

  if (*(v0 + v28[15]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v38 = v0 + v28[16];
  if (*(v38 + 8))
  {
    v39 = *(v38 + 1);
    v72[0] = *v38;
    v72[1] = v39;
    v40 = *(v38 + 3);
    v72[2] = *(v38 + 2);
    v72[3] = v40;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)();
    sub_217751DE8();
    v41 = OUTLINED_FUNCTION_185_0();
    sub_217265A08(v41, v42);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v28[17]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v28[18]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217265D30();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v43 = *(v0 + v28[19]);
  if (v43)
  {
    OUTLINED_FUNCTION_119();
    v44 = OUTLINED_FUNCTION_185_0();
    sub_217281100(v44, v45);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_177_6(v28[20]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_177_6(v28[21]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_177_6(v28[22]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_177_6(v28[23]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_177_6(v28[24]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_153_1(v28[25]);
  if (v43)
  {
    OUTLINED_FUNCTION_59(v46);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0(v28[26]);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v43 = *v47;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v43);
  }

  OUTLINED_FUNCTION_153_1(v28[27]);
  if (v43)
  {
    OUTLINED_FUNCTION_59(v48);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0(v28[28]);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v43 = *v49;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v43);
  }

  OUTLINED_FUNCTION_153_1(v28[29]);
  if (v43)
  {
    OUTLINED_FUNCTION_59(v50);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v28[30]))
  {
    OUTLINED_FUNCTION_119();
    v51 = OUTLINED_FUNCTION_185_0();
    sub_217280F7C(v51, v52);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v53 = (v0 + v28[31]);
  v54 = *v53;
  v55 = v53[1];
  memcpy(v71, v53 + 2, sizeof(v71));
  if (v55)
  {
    memcpy(&v70[2], v53 + 2, 0x68uLL);
    v70[0] = v54;
    v70[1] = v55;
    OUTLINED_FUNCTION_119();
    v68[0] = v54;
    v68[1] = v55;
    memcpy(&v68[2], v71, 0x68uLL);
    sub_2172DF5A4(v68, v72);
    PlayParameters.hash(into:)(v4);
    memcpy(v72, v70, 0x78uLL);
    sub_2172848C0(v72);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v56 = *(v2 + v28[32]);
  if (v56)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217280BBC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_153_1(v28[33]);
  if (v56)
  {
    OUTLINED_FUNCTION_59(v57);
    OUTLINED_FUNCTION_76_18();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v58 = (v2 + v28[34]);
  memcpy(v69, v58, sizeof(v69));
  v59 = v58[21];
  memcpy(v72, v58, 0xA8uLL);
  *(&v72[10] + 1) = v59;
  if (sub_21753BA74(v72) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    memcpy(v68, v69, 0xA1uLL);
    CloudSpatialTimingInformation.hash(into:)();
    sub_217751DE8();
    v60 = OUTLINED_FUNCTION_185_0();
    sub_217265A08(v60, v61);
  }

  OUTLINED_FUNCTION_177_6(v28[35]);
  if (!v25)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_189_0(v28[36]);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v63 = *v62;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v63);
  }

  sub_21726A630(v2 + v28[37], v21, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v21, 1, v5);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v67 + 32))(v13, v21, v5);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_7_76();
    sub_217692810(v64);
    OUTLINED_FUNCTION_147();
    (*(v67 + 8))(v13, v5);
  }

  v65 = (v2 + v28[38]);
  if (v65[1])
  {
    v66 = *v65;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

void CloudSong.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v80 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_6_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_91_16();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C1A0, &qword_2177905A0);
  OUTLINED_FUNCTION_0_0(v81);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_87_2();
  v84 = type metadata accessor for CloudSong.Attributes(0);
  v19 = OUTLINED_FUNCTION_43(v84);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_81();
  v82 = v3;
  v83 = v23;
  v24 = v3[3];
  v25 = v3[4];
  v26 = OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_160(v26, v27);
  sub_217693CB0();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_106();
  sub_2177532C8();
  if (v0)
  {
    OUTLINED_FUNCTION_197_1();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v12)
    {
      sub_2171F0738(v83 + v84[7], &unk_27CB277C0, &qword_217758DC0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_191_2(v84[8]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DF600();
    sub_217752E58();
    memcpy(v83, v88, 0x1B8uLL);
    OUTLINED_FUNCTION_61_20(1);
    v83[55] = sub_217752E18();
    v83[56] = v28;
    OUTLINED_FUNCTION_61_20(2);
    v83[57] = sub_217752E18();
    v83[58] = v29;
    sub_2177516D8();
    LOBYTE(v85[0]) = 3;
    OUTLINED_FUNCTION_7_76();
    sub_217692810(v30);
    OUTLINED_FUNCTION_166_10();
    sub_217752E58();
    sub_21726A594(v1, v83 + v84[7], &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_61_20(4);
    v31 = sub_217752E18();
    v32 = (v83 + v84[8]);
    *v32 = v31;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25028, &qword_21775B510);
    v86[0] = 5;
    sub_2172DF68C();
    sub_217752E58();
    *(v83 + v84[9]) = v85[0];
    v86[0] = 6;
    sub_217752E58();
    *(v83 + v84[10]) = v85[0];
    OUTLINED_FUNCTION_61_20(7);
    v34 = sub_217752E18();
    v35 = (v83 + v84[11]);
    *v35 = v34;
    v35[1] = v36;
    OUTLINED_FUNCTION_61_20(8);
    v37 = sub_217752E18();
    v38 = (v83 + v84[12]);
    *v38 = v37;
    v38[1] = v39;
    OUTLINED_FUNCTION_61_20(9);
    v40 = sub_217752E48();
    OUTLINED_FUNCTION_24_45(v40, v41, v84[13]);
    OUTLINED_FUNCTION_27_46(10);
    v42 = sub_217752E48();
    OUTLINED_FUNCTION_24_45(v42, v43, v84[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v86[0] = 11;
    sub_217361D3C(&unk_280BE2398);
    OUTLINED_FUNCTION_28_48();
    v44 = v84[15];
    OUTLINED_FUNCTION_164_9(v85[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF7DC();
    OUTLINED_FUNCTION_48_21();
    memcpy(v83 + v84[16], v87, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v86[0] = 13;
    sub_217693EF4(&qword_280BE23A8);
    OUTLINED_FUNCTION_28_48();
    v45 = v84[17];
    OUTLINED_FUNCTION_164_9(v85[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C60, &qword_217759660);
    v86[0] = 14;
    sub_217693F64();
    OUTLINED_FUNCTION_28_48();
    v46 = v84[18];
    OUTLINED_FUNCTION_164_9(v85[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    v86[0] = 15;
    sub_2172DF950(&unk_280BE2318);
    OUTLINED_FUNCTION_28_48();
    *(v83 + v84[19]) = v85[0];
    OUTLINED_FUNCTION_27_46(16);
    v47 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v47, v84[20]);
    OUTLINED_FUNCTION_27_46(17);
    v48 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v48, v84[21]);
    OUTLINED_FUNCTION_27_46(18);
    v49 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v49, v84[22]);
    OUTLINED_FUNCTION_27_46(19);
    v50 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v50, v84[23]);
    OUTLINED_FUNCTION_27_46(20);
    v51 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v51, v84[24]);
    OUTLINED_FUNCTION_27_46(21);
    sub_217752E18();
    OUTLINED_FUNCTION_93_16(v84[25]);
    *v54 = v52;
    v54[1] = v53;
    OUTLINED_FUNCTION_27_46(22);
    v55 = sub_217752E48();
    OUTLINED_FUNCTION_24_45(v55, v56, v84[26]);
    OUTLINED_FUNCTION_27_46(23);
    sub_217752E18();
    OUTLINED_FUNCTION_93_16(v84[27]);
    *v59 = v57;
    v59[1] = v58;
    OUTLINED_FUNCTION_27_46(24);
    v60 = sub_217752E48();
    OUTLINED_FUNCTION_24_45(v60, v61, v84[28]);
    OUTLINED_FUNCTION_27_46(25);
    sub_217752E18();
    OUTLINED_FUNCTION_93_16(v84[29]);
    *v64 = v62;
    v64[1] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
    v86[0] = 26;
    sub_2172DF9B8();
    OUTLINED_FUNCTION_28_48();
    v65 = v84[30];
    OUTLINED_FUNCTION_164_9(v85[0]);
    sub_2172DFAC8();
    sub_217752E58();
    memcpy(v83 + v84[31], v86, 0x78uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361DAC();
    OUTLINED_FUNCTION_48_21();
    *(v83 + v84[32]) = v85[0];
    OUTLINED_FUNCTION_27_46(29);
    sub_217752E18();
    OUTLINED_FUNCTION_93_16(v84[33]);
    *v68 = v66;
    v68[1] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C70, &unk_217775710);
    sub_217694020();
    OUTLINED_FUNCTION_48_21();
    memcpy(v83 + v84[34], v85, 0xB0uLL);
    OUTLINED_FUNCTION_125_9(31);
    v69 = sub_217752E28();
    OUTLINED_FUNCTION_118_12(v69, v84[35]);
    OUTLINED_FUNCTION_125_9(32);
    v70 = sub_217752E48();
    OUTLINED_FUNCTION_24_45(v70, v71, v84[36]);
    sub_217752E58();
    sub_21726A594(v12, v83 + v84[37], &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_125_9(34);
    v72 = sub_217752E18();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_19_44();
    v76(v75);
    v77 = (v83 + v84[38]);
    *v77 = v72;
    v77[1] = v74;
    OUTLINED_FUNCTION_29_40();
    sub_217693BF8(v83, v80, v78);
    __swift_destroy_boxed_opaque_existential_1(v82);
    OUTLINED_FUNCTION_31_42();
    sub_2176927B8(v83, v79);
  }

LABEL_8:
  OUTLINED_FUNCTION_170();
}

MusicKit::CloudSong::Relationships::CodingKeys_optional __swiftcall CloudSong.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudSong::Relationships::CodingKeys_optional __swiftcall CloudSong.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudSong.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_217690334()
{
  result = 0x736D75626C61;
  switch(*v0)
  {
    case 1:
      result = 0x726E65672D776172;
      break;
    case 2:
      result = 0x6E612D6F69647561;
      break;
    case 3:
      v2 = 0x747369747261;
      goto LABEL_11;
    case 4:
      result = 0x676F6C61746163;
      break;
    case 5:
      result = 0x7265736F706D6F63;
      break;
    case 6:
      v2 = 0x746964657263;
LABEL_11:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 7:
      result = 0x612D6C6D78656C66;
      break;
    case 8:
      result = 0x7365726E6567;
      break;
    case 9:
      result = 0x7972617262696CLL;
      break;
    case 0xA:
      result = 0x69762D636973756DLL;
      break;
    case 0xB:
      result = 0x6E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176904BC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudSong.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217690500(uint64_t a1)
{
  v2 = sub_21738C45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21769053C(uint64_t a1)
{
  v2 = sub_21738C45C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudSong.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v0, v1, v2, v3);
  OUTLINED_FUNCTION_39_0();
  v8 = sub_21726A630(v4, v5, v6, v7);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v76 = &unk_27CB25070;
    v77 = &unk_21777EF10;
LABEL_63:
    sub_2171F0738(v492, v76, v77);
    return 0;
  }

  v14 = OUTLINED_FUNCTION_101_0(v8, v9, &qword_27CB24270, &unk_21775D640, v10, v11, v12, v13, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v22 = OUTLINED_FUNCTION_75(v14, v15, v16, v17, v18, v19, v20, v21, v460);
  v30 = OUTLINED_FUNCTION_87_1(v22, v23, v24, v25, v26, v27, v28, v29, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v31 = sub_2172DDD44(v30);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v32, v33, v34);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v35, v36, v37);
  sub_2171F0738(v492, &qword_27CB24270, &unk_21775D640);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v38, v39, v40, v41);
  OUTLINED_FUNCTION_39_0();
  v46 = sub_21726A630(v42, v43, v44, v45);
  if (v493)
  {
    v52 = OUTLINED_FUNCTION_101_0(v46, v47, &qword_27CB243B0, &unk_21775D670, v48, v49, v50, v51, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
    if (!v494)
    {
LABEL_61:
      sub_2171F0738(v476, &qword_27CB243B8, &qword_2177586B0);
      goto LABEL_62;
    }

    v60 = OUTLINED_FUNCTION_75(v52, v53, v54, v55, v56, v57, v58, v59, v460);
    v68 = OUTLINED_FUNCTION_87_1(v60, v61, v62, v63, v64, v65, v66, v67, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
    v69 = sub_2172DDD5C(v68);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v70, v71, v72);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v73, v74, v75);
    sub_2171F0738(v492, &qword_27CB243B0, &unk_21775D670);
    if ((v69 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v494)
    {
LABEL_62:
      v76 = &unk_27CB25078;
      v77 = &unk_21775B530;
      goto LABEL_63;
    }

    sub_2171F0738(v492, &qword_27CB243B0, &unk_21775D670);
  }

  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v78, v79, v80, v81);
  OUTLINED_FUNCTION_39_0();
  v86 = sub_21726A630(v82, v83, v84, v85);
  if (v493)
  {
    v92 = OUTLINED_FUNCTION_101_0(v86, v87, &qword_27CB24280, &unk_21775D680, v88, v89, v90, v91, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
    if (!v494)
    {
LABEL_39:
      sub_2171F0738(v476, &qword_27CB24288, &qword_217758F80);
      goto LABEL_40;
    }

    v100 = OUTLINED_FUNCTION_75(v92, v93, v94, v95, v96, v97, v98, v99, v460);
    v108 = OUTLINED_FUNCTION_87_1(v100, v101, v102, v103, v104, v105, v106, v107, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
    v110 = sub_2172DE010(v108, v109);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v111, v112, v113);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v114, v115, v116);
    sub_2171F0738(v492, &qword_27CB24280, &unk_21775D680);
    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v494)
    {
LABEL_40:
      v76 = &qword_27CB25068;
      v77 = &qword_21775B528;
      goto LABEL_63;
    }

    sub_2171F0738(v492, &qword_27CB24280, &unk_21775D680);
  }

  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v117, v118, v119, v120);
  OUTLINED_FUNCTION_39_0();
  v125 = sub_21726A630(v121, v122, v123, v124);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB255E0, &unk_2177756D0);
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  v131 = OUTLINED_FUNCTION_101_0(v125, v126, &qword_27CB255E0, &unk_2177756D0, v127, v128, v129, v130, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB25C78, &unk_21775EFE0);
LABEL_32:
    v76 = &unk_27CB291D8;
    v77 = &unk_217775A80;
    goto LABEL_63;
  }

  v139 = OUTLINED_FUNCTION_75(v131, v132, v133, v134, v135, v136, v137, v138, v460);
  v147 = OUTLINED_FUNCTION_87_1(v139, v140, v141, v142, v143, v144, v145, v146, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v149 = sub_2172DE028(v147, v148);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v150, v151, v152);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v153, v154, v155);
  sub_2171F0738(v492, &qword_27CB255E0, &unk_2177756D0);
  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v156, v157, v158, v159);
  OUTLINED_FUNCTION_39_0();
  v164 = sub_21726A630(v160, v161, v162, v163);
  if (v493)
  {
    v170 = OUTLINED_FUNCTION_101_0(v164, v165, &qword_27CB242E0, &unk_21777EEE0, v166, v167, v168, v169, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
    if (!v494)
    {
LABEL_74:
      sub_2171F0738(v476, &qword_27CB242E8, &unk_21775D6B0);
      goto LABEL_75;
    }

    v178 = OUTLINED_FUNCTION_75(v170, v171, v172, v173, v174, v175, v176, v177, v460);
    v186 = OUTLINED_FUNCTION_87_1(v178, v179, v180, v181, v182, v183, v184, v185, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
    v187 = sub_2172DE040(v186);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v188, v189, v190);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v191, v192, v193);
    sub_2171F0738(v492, &qword_27CB242E0, &unk_21777EEE0);
    if ((v187 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v494)
    {
LABEL_75:
      v76 = &unk_27CB25D00;
      v77 = &unk_21775F668;
      goto LABEL_63;
    }

    sub_2171F0738(v492, &qword_27CB242E0, &unk_21777EEE0);
  }

  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v194, v195, v196, v197);
  OUTLINED_FUNCTION_39_0();
  v202 = sub_21726A630(v198, v199, v200, v201);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB24280, &unk_21775D680);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v208 = OUTLINED_FUNCTION_101_0(v202, v203, &qword_27CB24280, &unk_21775D680, v204, v205, v206, v207, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    goto LABEL_39;
  }

  v216 = OUTLINED_FUNCTION_75(v208, v209, v210, v211, v212, v213, v214, v215, v460);
  v224 = OUTLINED_FUNCTION_87_1(v216, v217, v218, v219, v220, v221, v222, v223, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v226 = sub_2172DE010(v224, v225);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v227, v228, v229);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v230, v231, v232);
  sub_2171F0738(v492, &qword_27CB24280, &unk_21775D680);
  if ((v226 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v233, v234, v235, v236);
  OUTLINED_FUNCTION_39_0();
  v241 = sub_21726A630(v237, v238, v239, v240);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB255D8, &unk_21775D4B0);
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  v247 = OUTLINED_FUNCTION_101_0(v241, v242, &qword_27CB255D8, &unk_21775D4B0, v243, v244, v245, v246, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB25C80, &unk_217775700);
LABEL_54:
    v76 = &unk_27CB291E0;
    v77 = &unk_217775A90;
    goto LABEL_63;
  }

  v255 = OUTLINED_FUNCTION_75(v247, v248, v249, v250, v251, v252, v253, v254, v460);
  v263 = OUTLINED_FUNCTION_87_1(v255, v256, v257, v258, v259, v260, v261, v262, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v265 = sub_2172DE058(v263, v264);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v266, v267, v268);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v269, v270, v271);
  sub_2171F0738(v492, &qword_27CB255D8, &unk_21775D4B0);
  if ((v265 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v272, v273, v274, v275);
  OUTLINED_FUNCTION_39_0();
  v280 = sub_21726A630(v276, v277, v278, v279);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB255D0, &qword_21775D4A8);
      goto LABEL_57;
    }

LABEL_67:
    v76 = &unk_27CB291E8;
    v77 = &unk_217775A98;
    goto LABEL_63;
  }

  v286 = OUTLINED_FUNCTION_101_0(v280, v281, &qword_27CB255D0, &qword_21775D4A8, v282, v283, v284, v285, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB25C88, &unk_21775EFF0);
    goto LABEL_67;
  }

  v294 = OUTLINED_FUNCTION_75(v286, v287, v288, v289, v290, v291, v292, v293, v460);
  v302 = OUTLINED_FUNCTION_87_1(v294, v295, v296, v297, v298, v299, v300, v301, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v304 = sub_2172DE070(v302, v303);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v305, v306, v307);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v308, v309, v310);
  sub_2171F0738(v492, &qword_27CB255D0, &qword_21775D4A8);
  if ((v304 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v311, v312, v313, v314);
  OUTLINED_FUNCTION_39_0();
  v319 = sub_21726A630(v315, v316, v317, v318);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_70;
    }

    goto LABEL_62;
  }

  v325 = OUTLINED_FUNCTION_101_0(v319, v320, &qword_27CB243B0, &unk_21775D670, v321, v322, v323, v324, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    goto LABEL_61;
  }

  v333 = OUTLINED_FUNCTION_75(v325, v326, v327, v328, v329, v330, v331, v332, v460);
  v341 = OUTLINED_FUNCTION_87_1(v333, v334, v335, v336, v337, v338, v339, v340, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v342 = sub_2172DDD5C(v341);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v343, v344, v345);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v346, v347, v348);
  sub_2171F0738(v492, &qword_27CB243B0, &unk_21775D670);
  if ((v342 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v350, v351, v352, v353);
  OUTLINED_FUNCTION_39_0();
  v358 = sub_21726A630(v354, v355, v356, v357);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB242E0, &unk_21777EEE0);
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v364 = OUTLINED_FUNCTION_101_0(v358, v359, &qword_27CB242E0, &unk_21777EEE0, v360, v361, v362, v363, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    goto LABEL_74;
  }

  v372 = OUTLINED_FUNCTION_75(v364, v365, v366, v367, v368, v369, v370, v371, v460);
  v380 = OUTLINED_FUNCTION_87_1(v372, v373, v374, v375, v376, v377, v378, v379, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v381 = sub_2172DE040(v380);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v382, v383, v384);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v385, v386, v387);
  sub_2171F0738(v492, &qword_27CB242E0, &unk_21777EEE0);
  if ((v381 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v388, v389, v390, v391);
  OUTLINED_FUNCTION_39_0();
  v396 = sub_21726A630(v392, v393, v394, v395);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_84;
    }

    goto LABEL_89;
  }

  v402 = OUTLINED_FUNCTION_101_0(v396, v397, &qword_27CB242B0, &unk_21775D630, v398, v399, v400, v401, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB242B8, &unk_21777EEA0);
LABEL_89:
    v76 = &unk_27CB251A0;
    v77 = &unk_21777EF30;
    goto LABEL_63;
  }

  v410 = OUTLINED_FUNCTION_75(v402, v403, v404, v405, v406, v407, v408, v409, v460);
  v418 = OUTLINED_FUNCTION_87_1(v410, v411, v412, v413, v414, v415, v416, v417, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v420 = sub_2172DE088(v418, v419);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v421, v422, v423);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v424, v425, v426);
  sub_2171F0738(v492, &qword_27CB242B0, &unk_21775D630);
  if ((v420 & 1) == 0)
  {
    return 0;
  }

LABEL_84:
  OUTLINED_FUNCTION_39_0();
  sub_21726A630(v427, v428, v429, v430);
  OUTLINED_FUNCTION_39_0();
  v435 = sub_21726A630(v431, v432, v433, v434);
  if (!v493)
  {
    if (!v494)
    {
      sub_2171F0738(v492, &qword_27CB242F0, &unk_217797B80);
      return 1;
    }

    goto LABEL_94;
  }

  v441 = OUTLINED_FUNCTION_101_0(v435, v436, &qword_27CB242F0, &unk_217797B80, v437, v438, v439, v440, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0], v477, v478, v479, v480, v481, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491, v492[0]);
  if (!v494)
  {
    sub_2171F0738(v476, &qword_27CB242F8, &qword_21775D6C0);
LABEL_94:
    v76 = &unk_27CB29080;
    v77 = &unk_21777EF50;
    goto LABEL_63;
  }

  v449 = OUTLINED_FUNCTION_75(v441, v442, v443, v444, v445, v446, v447, v448, v460);
  v457 = OUTLINED_FUNCTION_87_1(v449, v450, v451, v452, v453, v454, v455, v456, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, v470, v471, v472, v473, v474, v475, v476[0]);
  v459 = sub_2172DE0A0(v457, v458);
  OUTLINED_FUNCTION_169_1(&v460);
  OUTLINED_FUNCTION_169_1(v476);
  sub_2171F0738(v492, &qword_27CB242F0, &unk_217797B80);
  return (v459 & 1) != 0;
}

void CloudSong.Relationships.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C1B0, &qword_2177905A8);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_87_2();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_160(v13, v14);
  sub_21738C45C();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_15_62();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C78, &unk_21775EFE0);
    sub_2176940AC();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217361F8C();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C80, &unk_217775700);
    sub_217694264();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C88, &unk_21775EFF0);
    sub_21769441C();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    sub_21752BDEC();
    OUTLINED_FUNCTION_15_62();
    sub_217752F38();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudSong.Relationships.hash(into:)()
{
  v1 = sub_21726A630(v0, v126, &qword_27CB24270, &unk_21775D640);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v1, v2, v3, v4, v5, v6, v7, v8, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v9 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v9);
    sub_2171F0738(&v110, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v10 = sub_21726A630(v0 + 128, v126, &qword_27CB243B0, &unk_21775D670);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v10, v11, v12, v13, v14, v15, v16, v17, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v18 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v18);
    sub_2171F0738(&v110, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v19 = sub_21726A630(v0 + 256, v126, &qword_27CB24280, &unk_21775D680);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v19, v20, v21, v22, v23, v24, v25, v26, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v27 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v27);
    sub_2171F0738(&v110, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v28 = sub_21726A630(v0 + 384, v126, &qword_27CB255E0, &unk_2177756D0);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v28, v29, v30, v31, v32, v33, v34, v35, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v36 = OUTLINED_FUNCTION_11_7();
    sub_2172DE874(v36);
    sub_2171F0738(&v110, &qword_27CB25C78, &unk_21775EFE0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v37 = sub_21726A630(v0 + 512, v126, &qword_27CB242E0, &unk_21777EEE0);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v37, v38, v39, v40, v41, v42, v43, v44, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v45 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6AC(v45);
    sub_2171F0738(&v110, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v46 = sub_21726A630(v0 + 640, v126, &qword_27CB24280, &unk_21775D680);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v46, v47, v48, v49, v50, v51, v52, v53, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v54 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v54);
    sub_2171F0738(&v110, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v55 = sub_21726A630(v0 + 768, v126, &qword_27CB255D8, &unk_21775D4B0);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v55, v56, v57, v58, v59, v60, v61, v62, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v63 = OUTLINED_FUNCTION_11_7();
    sub_2172DE85C(v63);
    sub_2171F0738(&v110, &qword_27CB25C80, &unk_217775700);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v64 = sub_21726A630(v0 + 896, v126, &qword_27CB255D0, &qword_21775D4A8);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v64, v65, v66, v67, v68, v69, v70, v71, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v72 = OUTLINED_FUNCTION_11_7();
    sub_2172DE844(v72);
    sub_2171F0738(&v110, &qword_27CB25C88, &unk_21775EFF0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v73 = sub_21726A630(v0 + 1024, v126, &qword_27CB243B0, &unk_21775D670);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v73, v74, v75, v76, v77, v78, v79, v80, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v81 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v81);
    sub_2171F0738(&v110, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v82 = sub_21726A630(v0 + 1152, v126, &qword_27CB242E0, &unk_21777EEE0);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v82, v83, v84, v85, v86, v87, v88, v89, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v90 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6AC(v90);
    sub_2171F0738(&v110, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v91 = sub_21726A630(v0 + 1280, v126, &qword_27CB242B0, &unk_21775D630);
  if (v127)
  {
    OUTLINED_FUNCTION_10_1(v91, v92, v93, v94, v95, v96, v97, v98, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
    OUTLINED_FUNCTION_24();
    v99 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v99);
    sub_2171F0738(&v110, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v100 = sub_21726A630(v0 + 1408, v126, &qword_27CB242F0, &unk_217797B80);
  if (!v127)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v100, v101, v102, v103, v104, v105, v106, v107, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126[0]);
  OUTLINED_FUNCTION_24();
  v108 = OUTLINED_FUNCTION_11_7();
  sub_2172DE664(v108);
  return sub_2171F0738(&v110, &qword_27CB242F8, &qword_21775D6C0);
}