uint64_t AirQuality.expirationDate.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 20);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t AirQuality.expirationDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.scaleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AirQuality() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQuality.scaleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AirQuality() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AirQuality.scaleIdentifier.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.scale.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for AirQuality() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x78uLL);
  return sub_23B3C8520(__dst, &v4);
}

void *AirQuality.scale.setter()
{
  OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for AirQuality();
  memcpy(__dst, (v0 + *(v1 + 28)), sizeof(__dst));
  sub_23B3C8B4C(__dst);
  v2 = OUTLINED_FUNCTION_64();
  return memcpy(v2, v3, 0x78uLL);
}

uint64_t AirQuality.scale.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.index.setter()
{
  OUTLINED_FUNCTION_19();
  result = type metadata accessor for AirQuality();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t AirQuality.index.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.currentScaleCategory.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for AirQuality() + 36);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x58uLL);
  return sub_23B3C8AD4(__dst, &v4);
}

void *AirQuality.currentScaleCategory.setter()
{
  OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for AirQuality();
  memcpy(__dst, (v0 + *(v1 + 36)), sizeof(__dst));
  sub_23B3FD324(__dst);
  v2 = OUTLINED_FUNCTION_64();
  return memcpy(v2, v3, 0x58uLL);
}

uint64_t AirQuality.currentScaleCategory.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.isSignificant.setter(char a1)
{
  result = type metadata accessor for AirQuality();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AirQuality.isSignificant.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.providerAttribution.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 44);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3C2510(v1, v2, v3, v4);
}

uint64_t AirQuality.providerAttribution.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.learnMoreURL.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for AirQuality() + 48);
  v3 = sub_23B50AB34();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AirQuality.learnMoreURL.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 48);
  v1 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t AirQuality.learnMoreURL.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.pollutants.getter()
{
  v1 = *(v0 + *(type metadata accessor for AirQuality() + 52));
}

uint64_t AirQuality.pollutants.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for AirQuality() + 52);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AirQuality.pollutants.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.primaryPollutant.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = type metadata accessor for AirQuality();
  return sub_23B3CE510(v1 + *(v2 + 56), v0, &qword_27E131FB8, &qword_23B50F6D0);
}

uint64_t AirQuality.primaryPollutant.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 56);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3C2510(v1, v2, v3, v4);
}

uint64_t AirQuality.primaryPollutant.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.previousDayComparison.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for AirQuality();
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t AirQuality.previousDayComparison.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AirQuality();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t AirQuality.previousDayComparison.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.source.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for AirQuality() + 64);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t AirQuality.source.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for AirQuality() + 64);
  v6 = *(v5 + 16);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AirQuality.source.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.metadata.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *(type metadata accessor for AirQuality() + 68);
  OUTLINED_FUNCTION_18_19();
  return sub_23B4A0AD0(v1 + v3, v0);
}

uint64_t AirQuality.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 68);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B407020(v1, v2);
}

uint64_t AirQuality.metadata.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirQuality() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.init(measurementDate:expirationDate:scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16)
{
  v47 = *a14;
  v50 = *a15;
  v48 = *(a15 + 2);
  v49 = *(a15 + 1);
  v20 = type metadata accessor for AirQuality();
  v21 = v20[11];
  type metadata accessor for ProviderAttribution();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v20[14];
  type metadata accessor for AirPollutant();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v31);
  v33 = *(v32 + 32);
  v33(a9, a1, v31);
  v33(a9 + v20[5], a2, v31);
  v34 = (a9 + v20[6]);
  *v34 = a3;
  v34[1] = a4;
  memcpy((a9 + v20[7]), a5, 0x78uLL);
  *(a9 + v20[8]) = a6;
  memcpy((a9 + v20[9]), a7, 0x58uLL);
  *(a9 + v20[10]) = a8;
  sub_23B3C2510(a10, a9 + v21, &qword_27E131FC8, &qword_23B510180);
  v35 = v20[12];
  v36 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v36);
  (*(v37 + 32))(a9 + v35, a11);
  *(a9 + v20[13]) = a12;
  sub_23B3C2510(a13, a9 + v26, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v20[15]) = v47;
  v38 = a9 + v20[16];
  *v38 = v50;
  *(v38 + 8) = v49;
  *(v38 + 16) = v48;
  v39 = v20[17];
  OUTLINED_FUNCTION_16_14();
  return sub_23B49FC88(a16, a9 + v40);
}

uint64_t AirQuality.init(measurementDate:expirationDate:scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unsigned __int8 *a15)
{
  LODWORD(v102) = a8;
  v100 = a6;
  v101 = a7;
  v98 = a4;
  v99 = a5;
  v97 = a3;
  v111 = a2;
  v112 = a1;
  v109 = a11;
  v110 = a10;
  v108 = a13;
  v103 = a12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  v92 = v22;
  MEMORY[0x28223BE20](v23);
  v104 = &v86 - v24;
  v25 = sub_23B50AB34();
  v26 = OUTLINED_FUNCTION_5(v25);
  v107 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_1();
  v105 = v32;
  MEMORY[0x28223BE20](v33);
  v106 = &v86 - v34;
  v35 = sub_23B50AD24();
  v36 = OUTLINED_FUNCTION_5(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v86 - v45;
  v93 = *a14;
  v96 = *a15;
  v47 = *(a15 + 1);
  v94 = *(a15 + 2);
  v95 = v47;
  v48 = type metadata accessor for AirQuality();
  v49 = v48[11];
  type metadata accessor for ProviderAttribution();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = v48[14];
  type metadata accessor for AirPollutant();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v87 = v38;
  v59 = *(v38 + 16);
  v59(a9, v112, v35);
  v59(a9 + v48[5], v111, v35);
  v60 = (a9 + v48[6]);
  v61 = v98;
  *v60 = v97;
  v60[1] = v61;
  memcpy((a9 + v48[7]), v99, 0x78uLL);
  v62 = v101;
  *(a9 + v48[8]) = v100;
  memcpy((a9 + v48[9]), v62, 0x58uLL);
  *(a9 + v48[10]) = v102;
  v63 = a9 + v49;
  v64 = v107;
  sub_23B49CBB0(v110, v63, &qword_27E131FC8, &qword_23B510180);
  (*(v64 + 16))(a9 + v48[12], v109, v25);
  *(a9 + v48[13]) = v103;
  sub_23B49CBB0(v108, a9 + v54, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v48[15]) = v93;
  v65 = a9 + v48[16];
  *v65 = v96;
  v66 = v94;
  *(v65 + 8) = v95;
  *(v65 + 16) = v66;
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50B994();
  v67 = a9 + v48[17];
  v68 = type metadata accessor for WeatherMetadata();
  v101 = v68[8];
  v102 = v46;
  *(v101 + v67) = 0;
  v59(v67, v46, v35);
  v69 = v67 + v68[5];
  v103 = v43;
  v70 = v43;
  v71 = v104;
  v59(v69, v70, v35);
  *(v67 + v68[6]) = 0;
  *(v67 + v68[7]) = 0;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v71, 1, v25);
  if (v73)
  {
    __break(1u);
    goto LABEL_7;
  }

  v74 = *(v64 + 32);
  v74(v106, v71, v25);
  v75 = v92;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v75, 1, v25);
  if (v73)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v74(v105, v75, v25);
  v76 = v89;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v76, 1, v25);
  v77 = v91;
  if (v73)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v74(v90, v76, v25);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v77, 1, v25);
  if (!v73)
  {
    sub_23B398890(v108, &qword_27E131FB8, &qword_23B50F6D0);
    (*(v107 + 8))(v109, v25);
    sub_23B398890(v110, &qword_27E131FC8, &qword_23B510180);
    v78 = *(v87 + 8);
    v78(v111, v35);
    v78(v112, v35);
    v78(v103, v35);
    v78(v102, v35);
    v74(v88, v77, v25);
    v79 = type metadata accessor for WeatherAttribution.Storage();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    sub_23B42E3E8();
    v83 = v82;
    v84 = v101;
    v85 = *(v101 + v67);

    *&v84[v67] = v83;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23B49CBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return v4;
}

uint64_t sub_23B49CBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6572757361656DLL && a2 == 0xEF65746144746E65;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656449656C616373 && a2 == 0xEF7265696669746ELL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023B537CF0 == a2;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x66696E6769537369 && a2 == 0xED0000746E616369;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000023B537D10 == a2;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6174756C6C6F70 && a2 == 0xEA00000000007374;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000023B537D30 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x800000023B537D50 == a2;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_23B50D834();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_23B49D054(char a1)
{
  result = 0x6D6572757361656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x656449656C616373;
      break;
    case 3:
      result = 0x656C616373;
      break;
    case 4:
      result = 0x7865646E69;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x66696E6769537369;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x726F4D6E7261656CLL;
      break;
    case 9:
      result = 0x6E6174756C6C6F70;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x656372756F73;
      break;
    case 13:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B49D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B49CBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49D248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B49D04C();
  *a1 = result;
  return result;
}

uint64_t sub_23B49D270(uint64_t a1)
{
  v2 = sub_23B49FCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B49D2AC(uint64_t a1)
{
  v2 = sub_23B49FCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static AirQuality.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for AirPollutant();
  v5 = OUTLINED_FUNCTION_6(v93);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v91 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v92 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341F8, &qword_23B51D178);
  OUTLINED_FUNCTION_6(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_17();
  v19 = type metadata accessor for ProviderAttribution();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  v31 = (&v88 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134200, &qword_23B51D180);
  OUTLINED_FUNCTION_6(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v90 = v15;
  v38 = type metadata accessor for AirQuality();
  v39 = *(v38 + 20);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v89 = v38;
  v40 = *(v38 + 24);
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v41 == *v43 && v42 == v43[1];
  if (!v44 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v88 = v2;
  v45 = v89;
  v46 = v89[7];
  memcpy(v101, (a1 + v46), sizeof(v101));
  memcpy(v100, (a1 + v46), sizeof(v100));
  v47 = v89[7];
  memcpy(v102, (a2 + v47), sizeof(v102));
  memcpy(v99, (a2 + v47), sizeof(v99));
  LOBYTE(v47) = static AirQualityScale.== infix(_:_:)(v100, v99);
  memcpy(v103, v99, sizeof(v103));
  sub_23B3C8520(v101, v98);
  sub_23B3C8520(v102, v98);
  sub_23B3C8B4C(v103);
  memcpy(__dst, v100, 0x78uLL);
  sub_23B3C8B4C(__dst);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v45[8]) != *(a2 + v45[8]))
  {
    return 0;
  }

  v48 = v45[9];
  memcpy(v97, (a1 + v48), sizeof(v97));
  memcpy(v96, (a1 + v48), sizeof(v96));
  v49 = v45[9];
  memcpy(v98, (a2 + v49), 0x58uLL);
  memcpy(v95, (a2 + v49), sizeof(v95));
  LOBYTE(v49) = static AirQualityScaleCategory.== infix(_:_:)(v96, v95);
  memcpy(v99, v95, 0x58uLL);
  sub_23B3C8AD4(v97, v94);
  sub_23B3C8AD4(v98, v94);
  sub_23B3FD324(v99);
  memcpy(v100, v96, 0x58uLL);
  sub_23B3FD324(v100);
  if ((v49 & 1) == 0 || *(a1 + v45[10]) != *(a2 + v45[10]))
  {
    return 0;
  }

  v50 = v45[11];
  v51 = *(v32 + 48);
  sub_23B3CE510(a1 + v50, v37, &qword_27E131FC8, &qword_23B510180);
  sub_23B3CE510(a2 + v50, &v37[v51], &qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_51(v37, 1, v19);
  if (v44)
  {
    OUTLINED_FUNCTION_51(&v37[v51], 1, v19);
    v52 = v90;
    if (v44)
    {
      sub_23B398890(v37, &qword_27E131FC8, &qword_23B510180);
      goto LABEL_23;
    }

LABEL_20:
    v55 = &qword_27E134200;
    v56 = &qword_23B51D180;
    v57 = v37;
LABEL_21:
    sub_23B398890(v57, v55, v56);
    return 0;
  }

  sub_23B3CE510(v37, v31, &qword_27E131FC8, &qword_23B510180);
  v53 = v51;
  OUTLINED_FUNCTION_51(&v37[v51], 1, v19);
  v52 = v90;
  if (v54)
  {
    OUTLINED_FUNCTION_17_17();
    sub_23B4A0B28();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_15_20();
  sub_23B49FC88(&v37[v53], v25);
  v58 = static ProviderAttribution.== infix(_:_:)(v31, v25);
  sub_23B4A0B28();
  sub_23B4A0B28();
  sub_23B398890(v37, &qword_27E131FC8, &qword_23B510180);
  if (!v58)
  {
    return 0;
  }

LABEL_23:
  v59 = v89;
  v60 = v89[12];
  if ((sub_23B50AAF4() & 1) == 0)
  {
    return 0;
  }

  sub_23B49DAA4(*(a1 + v59[13]), *(a2 + v59[13]));
  if ((v61 & 1) == 0)
  {
    return 0;
  }

  v62 = v59[14];
  v63 = *(v52 + 48);
  v64 = v88;
  sub_23B3CE510(a1 + v62, v88, &qword_27E131FB8, &qword_23B50F6D0);
  v65 = a2 + v62;
  v66 = v64;
  sub_23B3CE510(v65, v64 + v63, &qword_27E131FB8, &qword_23B50F6D0);
  v67 = v93;
  OUTLINED_FUNCTION_51(v64, 1, v93);
  if (v44)
  {
    OUTLINED_FUNCTION_51(v64 + v63, 1, v67);
    if (v44)
    {
      sub_23B398890(v64, &qword_27E131FB8, &qword_23B50F6D0);
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v79 = v92;
  sub_23B3CE510(v64, v92, &qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_51(v64 + v63, 1, v67);
  if (v80)
  {
    OUTLINED_FUNCTION_23_14();
    sub_23B4A0B28();
LABEL_41:
    v55 = &qword_27E1341F8;
    v56 = &qword_23B51D178;
LABEL_47:
    v57 = v66;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_13();
  v81 = v64 + v63;
  v82 = v91;
  sub_23B49FC88(v81, v91);
  if (*v79 != *v82 || (static AirPollutantMeasurement.== infix(_:_:)(&v79[*(v67 + 20)], &v82[*(v67 + 20)]) & 1) == 0)
  {
    sub_23B4A0B28();
    sub_23B4A0B28();
    v55 = &qword_27E131FB8;
    v56 = &qword_23B50F6D0;
    goto LABEL_47;
  }

  v83 = *(v67 + 24);
  v84 = v79[v83];
  v85 = v82[v83];
  sub_23B4A0B28();
  sub_23B4A0B28();
  sub_23B398890(v66, &qword_27E131FB8, &qword_23B50F6D0);
  if (v84 != v85)
  {
    return 0;
  }

LABEL_30:
  if (*(a1 + v89[15]) == *(a2 + v89[15]))
  {
    v68 = v89[16];
    v69 = (a1 + v68);
    v71 = *(a1 + v68 + 8);
    v70 = *(a1 + v68 + 16);
    v72 = a2 + v68;
    v74 = *(v72 + 8);
    v73 = *(v72 + 16);
    v75 = *v72;
    v76 = *v69;

    if (sub_23B3E59D8(v76, v75))
    {
      if (v71 == v74 && v70 == v73)
      {

        return static WeatherMetadata.== infix(_:_:)(a1 + v89[17], a2 + v89[17]);
      }

      v78 = sub_23B50D834();

      if (v78)
      {
        return static WeatherMetadata.== infix(_:_:)(a1 + v89[17], a2 + v89[17]);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_23B49DAA4(uint64_t a1, uint64_t a2)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  v4 = *(v95 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v83 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v83 - v9;
  v101 = type metadata accessor for AirPollutantMeasurement();
  v10 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320F0, &qword_23B50FCE0);
  v16 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v18 = &v83 - v17;
  v19 = type metadata accessor for AirPollutant();
  v20 = *(v19 - 8);
  v105 = v19;
  v106 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v107 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = &v83 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v83 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v102 = (&v83 - v32);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v89 = v15;
    v90 = v12;
    v97 = a2;
    v33 = 0;
    v91 = a1;
    v34 = a1 + 64;
    v35 = 1 << *(a1 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a1 + 64);
    v84 = (v35 + 63) >> 6;
    v86 = (v7 + 32);
    v88 = (v7 + 8);
    v85 = (v4 + 32);
    v87 = (v4 + 8);
    v38 = v98;
    v96 = v30;
    while (v37)
    {
      v39 = v38;
      v104 = (v37 - 1) & v37;
      v40 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_13:
      v44 = (*(v91 + 48) + 16 * v40);
      v46 = *v44;
      v45 = v44[1];
      v47 = v99;
      sub_23B4A0AD0(*(v91 + 56) + *(v106 + 72) * v40, v99);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      v49 = *(v48 + 48);
      *v30 = v46;
      v30[1] = v45;
      sub_23B49FC88(v47, v30 + v49);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v48);

      v41 = v102;
      v38 = v39;
LABEL_14:
      sub_23B4A0A60(v30, v41);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v50);
      v52 = EnumTagSinglePayload == 1;
      if (EnumTagSinglePayload == 1)
      {
        return;
      }

      v53 = *(v50 + 48);
      v54 = *v41;
      v55 = v41[1];
      sub_23B49FC88(v41 + v53, v38);
      v56 = v54;
      v57 = v97;
      v58 = sub_23B3A7084(v56, v55);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        goto LABEL_32;
      }

      v61 = *(v57 + 56) + *(v106 + 72) * v58;
      v62 = v107;
      sub_23B4A0AD0(v61, v107);
      if (*v62 != *v38)
      {
        goto LABEL_31;
      }

      v63 = v105;
      v64 = *(v105 + 20);
      v65 = *(v100 + 48);
      sub_23B4A0AD0(&v62[v64], v18);
      sub_23B4A0AD0(&v38[v64], &v18[v65]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v103 = v52;
      if (EnumCaseMultiPayload == 1)
      {
        v67 = v90;
        sub_23B4A0AD0(v18, v90);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v87)(v67, v95);
          goto LABEL_30;
        }

        v68 = v93;
        v69 = v95;
        (*v85)(v93, &v18[v65], v95);
        sub_23B3F1C50(&qword_27E1320F8, &qword_27E1320E0, &qword_23B50FCD0);
        v70 = sub_23B50D134();
        v71 = *v87;
        (*v87)(v68, v69);
        v71(v67, v69);
        v38 = v98;
        if ((v70 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v72 = v18;
        v73 = v18;
        v74 = v89;
        sub_23B4A0AD0(v72, v89);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v88)(v74, v94);
          v18 = v73;
LABEL_30:
          sub_23B398890(v18, &qword_27E1320F0, &qword_23B50FCE0);
          goto LABEL_31;
        }

        v75 = v92;
        v76 = v94;
        (*v86)(v92, &v73[v65], v94);
        sub_23B3F1C50(&qword_280B42B90, &qword_27E1320E8, &qword_23B50FCD8);
        v77 = sub_23B50D134();
        v78 = *v88;
        (*v88)(v75, v76);
        v78(v74, v76);
        v18 = v73;
        v63 = v105;
        if ((v77 & 1) == 0)
        {
LABEL_27:
          sub_23B4A0B28();
LABEL_31:
          sub_23B4A0B28();
LABEL_32:
          sub_23B4A0B28();
          return;
        }
      }

      sub_23B4A0B28();
      v79 = v107[*(v63 + 24)];
      sub_23B4A0B28();
      v80 = v38[*(v63 + 24)];
      sub_23B4A0B28();
      v81 = v79 == v80;
      v30 = v96;
      v37 = v104;
      if (!v81)
      {
        return;
      }
    }

    v41 = v102;
    while (1)
    {
      v42 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v42 >= v84)
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
        __swift_storeEnumTagSinglePayload(v30, 1, 1, v82);
        v104 = 0;
        goto LABEL_14;
      }

      v43 = *(v34 + 8 * v42);
      ++v33;
      if (v43)
      {
        v39 = v38;
        v104 = (v43 - 1) & v43;
        v40 = __clz(__rbit64(v43)) | (v42 << 6);
        v33 = v42;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t AirQuality.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134208, &qword_23B51D188);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B49FCE0();
  sub_23B50D974();
  __dst[0] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v13, v14);
  v42 = v2;
  v15 = v4;
  v16 = v43;
  sub_23B50D7F4();
  if (v16)
  {
    return (*(v6 + 8))(v11, v4);
  }

  v43 = v6;
  v18 = type metadata accessor for AirQuality();
  v19 = v18[5];
  __dst[0] = 1;
  sub_23B50D7F4();
  v20 = (v42 + v18[6]);
  v21 = *v20;
  v22 = v20[1];
  v57 = 2;
  sub_23B50D7A4();
  v23 = v18[7];
  memcpy(__dst, (v42 + v23), 0x78uLL);
  memcpy(v51, (v42 + v23), sizeof(v51));
  v56 = 3;
  sub_23B3C8520(__dst, v50);
  sub_23B49FD34();
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7F4();
  memcpy(v50, v51, sizeof(v50));
  sub_23B3C8B4C(v50);
  v24 = *(v42 + v18[8]);
  v55 = 4;
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7E4();
  v25 = v18[9];
  memcpy(v49, (v42 + v25), sizeof(v49));
  memcpy(v48, (v42 + v25), sizeof(v48));
  v54 = 5;
  sub_23B3C8AD4(v49, v47);
  sub_23B495F4C();
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7F4();
  memcpy(v47, v48, sizeof(v47));
  sub_23B3FD324(v47);
  v26 = *(v42 + v18[10]);
  LOBYTE(v44) = 6;
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7B4();
  v27 = v18[11];
  OUTLINED_FUNCTION_48_4(7);
  type metadata accessor for ProviderAttribution();
  OUTLINED_FUNCTION_24_12();
  sub_23B4A07AC(v28, v29);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D794();
  v30 = v18[12];
  OUTLINED_FUNCTION_48_4(8);
  sub_23B50AB34();
  OUTLINED_FUNCTION_3_42();
  sub_23B4A07AC(v31, v32);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D7F4();
  v44 = *(v42 + v18[13]);
  v53 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134210, &qword_23B51D190);
  sub_23B49FD88();
  sub_23B50D7F4();
  v33 = v18[14];
  OUTLINED_FUNCTION_48_4(10);
  type metadata accessor for AirPollutant();
  OUTLINED_FUNCTION_20_17();
  sub_23B4A07AC(v34, v35);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D794();
  LOBYTE(v44) = *(v42 + v18[15]);
  v53 = 11;
  sub_23B49FE44();
  sub_23B50D7F4();
  v36 = v42 + v18[16];
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  LOBYTE(v44) = *v36;
  v45 = v37;
  v46 = v38;
  v53 = 12;
  sub_23B49FE98();

  sub_23B50D7F4();

  v39 = v18[17];
  OUTLINED_FUNCTION_48_4(13);
  type metadata accessor for WeatherMetadata();
  OUTLINED_FUNCTION_19_16();
  sub_23B4A07AC(v40, v41);
  sub_23B50D7F4();
  return (*(v43 + 8))(v11, v15);
}

uint64_t AirQuality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v93 = type metadata accessor for WeatherMetadata();
  v5 = OUTLINED_FUNCTION_6(v93);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v14);
  v100 = sub_23B50AB34();
  v15 = OUTLINED_FUNCTION_5(v100);
  v99 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v25);
  v26 = sub_23B50AD24();
  v27 = OUTLINED_FUNCTION_5(v26);
  v102 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_55(v91 - v35);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134218, &qword_23B51D198);
  OUTLINED_FUNCTION_5(v104);
  v98 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_17();
  v40 = type metadata accessor for AirQuality();
  v41 = OUTLINED_FUNCTION_6(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27();
  v46 = v45 - v44;
  v48 = *(v47 + 44);
  v49 = type metadata accessor for ProviderAttribution();
  v109 = v48;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  v111 = v40;
  v53 = *(v40 + 56);
  v54 = type metadata accessor for AirPollutant();
  v106 = v53;
  v108 = v46;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  v58 = a1[3];
  v59 = a1[4];
  v105 = a1;
  v60 = __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_23B49FCE0();
  v103 = v3;
  OUTLINED_FUNCTION_36_9();
  sub_23B50D964();
  v107 = v26;
  if (!v2)
  {
    v61 = v33;
    v110 = v49;
    v62 = v97;
    v91[1] = v54;
    __dst[0] = 0;
    OUTLINED_FUNCTION_2_40();
    sub_23B4A07AC(v63, v64);
    OUTLINED_FUNCTION_32_9();
    sub_23B50D734();
    v67 = v108;
    v68 = *(v102 + 32);
    v68(v108, v101, v26);
    __dst[0] = 1;
    OUTLINED_FUNCTION_32_9();
    sub_23B50D734();
    v69 = v111;
    v68(v67 + v111[5], v61, v26);
    __dst[0] = 2;
    OUTLINED_FUNCTION_13_21();
    v70 = sub_23B50D6E4();
    v71 = (v67 + v69[6]);
    *v71 = v70;
    v71[1] = v72;
    v119 = 3;
    sub_23B49FEEC();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    memcpy((v67 + v69[7]), __dst, 0x78uLL);
    __src[0] = 4;
    OUTLINED_FUNCTION_13_21();
    *(v67 + v69[8]) = sub_23B50D724();
    v118 = 5;
    sub_23B496618();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    memcpy((v67 + v69[9]), __src, 0x58uLL);
    OUTLINED_FUNCTION_38_7(6);
    OUTLINED_FUNCTION_13_21();
    *(v67 + v69[10]) = sub_23B50D6F4() & 1;
    OUTLINED_FUNCTION_38_7(7);
    OUTLINED_FUNCTION_24_12();
    sub_23B4A07AC(v73, v74);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D6D4();
    sub_23B3C2510(v62, v67 + v109, &qword_27E131FC8, &qword_23B510180);
    OUTLINED_FUNCTION_38_7(8);
    OUTLINED_FUNCTION_3_42();
    sub_23B4A07AC(v75, v76);
    OUTLINED_FUNCTION_42_8();
    v77 = v96;
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    (*(v99 + 32))(v67 + v111[12], v77, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134210, &qword_23B51D190);
    v117 = 9;
    sub_23B49FF40();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    *(v108 + v111[13]) = v112;
    OUTLINED_FUNCTION_38_7(10);
    OUTLINED_FUNCTION_20_17();
    sub_23B4A07AC(v78, v79);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D6D4();
    OUTLINED_FUNCTION_35_11();
    sub_23B3C2510(v95, v108 + v106, &qword_27E131FB8, &qword_23B50F6D0);
    v117 = 11;
    sub_23B49FFFC();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    *(v108 + v111[15]) = v112;
    v117 = 12;
    sub_23B4A0050();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    v80 = v113;
    v81 = v114;
    v82 = v108 + v111[16];
    *v82 = v112;
    *(v82 + 8) = v80;
    *(v82 + 16) = v81;
    OUTLINED_FUNCTION_38_7(13);
    OUTLINED_FUNCTION_19_16();
    sub_23B4A07AC(v83, v84);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    v85 = OUTLINED_FUNCTION_0_48(&__dst[32]);
    v86(v85);
    v87 = v111[17];
    OUTLINED_FUNCTION_16_14();
    v88 = v108;
    sub_23B49FC88(v94, v108 + v89);
    sub_23B4A0AD0(v88, v92);
    OUTLINED_FUNCTION_49_4();
    return sub_23B4A0B28();
  }

  v110 = v2;
  OUTLINED_FUNCTION_12_22();
  v65 = v108;
  OUTLINED_FUNCTION_49_4();
  v66 = v111;
  if (v3)
  {
    memcpy(__dst, (v65 + v111[7]), sizeof(__dst));
    sub_23B3C8B4C(__dst);
    if ((v60 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v60)
  {
LABEL_8:
    memcpy(__dst, (v65 + v66[9]), 0x58uLL);
    sub_23B3FD324(__dst);
  }

LABEL_9:
  sub_23B398890(v65 + v109, &qword_27E131FC8, &qword_23B510180);
  if (v104)
  {
    (*(v99 + 8))(v65 + v66[12], v100);
  }

  return sub_23B398890(v65 + v106, &qword_27E131FB8, &qword_23B50F6D0);
}

void AirQuality.hash(into:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_19();
  v71 = type metadata accessor for AirPollutant();
  v3 = OUTLINED_FUNCTION_6(v71);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v68 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v70 = v12;
  v69 = sub_23B50AB34();
  v13 = OUTLINED_FUNCTION_5(v69);
  v67 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v66 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v25 = type metadata accessor for ProviderAttribution();
  v26 = OUTLINED_FUNCTION_6(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_27();
  v31 = (v30 - v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v66 - v36;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v38, v39);
  sub_23B50D0E4();
  v40 = type metadata accessor for AirQuality();
  v41 = v1 + v40[5];
  sub_23B50D0E4();
  v42 = (v2 + v40[6]);
  v43 = *v42;
  v44 = v42[1];
  sub_23B50D1C4();
  memcpy(__dst, (v2 + v40[7]), sizeof(__dst));
  AirQualityScale.hash(into:)(v0);
  MEMORY[0x23EE9DB40](*(v2 + v40[8]));
  memcpy(__dst, (v2 + v40[9]), 0x58uLL);
  AirQualityScaleCategory.hash(into:)();
  v45 = *(v2 + v40[10]);
  sub_23B50D8E4();
  sub_23B3CE510(v2 + v40[11], v37, &qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_51(v37, 1, v25);
  if (v50)
  {
    sub_23B50D8E4();
    v46 = v71;
  }

  else
  {
    OUTLINED_FUNCTION_15_20();
    sub_23B49FC88(v37, v31);
    sub_23B50D8E4();
    v47 = *v31;
    v48 = v31[1];
    sub_23B50D1C4();
    sub_23B3CE510(v31 + *(v25 + 20), v24, &qword_27E131FC0, &qword_23B515170);
    v49 = v69;
    OUTLINED_FUNCTION_51(v24, 1, v69);
    if (v50)
    {
      sub_23B50D8E4();
    }

    else
    {
      v52 = v66;
      v51 = v67;
      (*(v67 + 32))(v66, v24, v49);
      sub_23B50D8E4();
      OUTLINED_FUNCTION_3_42();
      sub_23B4A07AC(v53, v54);
      sub_23B50D0E4();
      (*(v51 + 8))(v52, v49);
    }

    v46 = v71;
    OUTLINED_FUNCTION_17_17();
    sub_23B4A0B28();
  }

  v55 = v40[12];
  OUTLINED_FUNCTION_3_42();
  sub_23B4A07AC(v56, v57);
  sub_23B50D0E4();
  sub_23B4A00A4(v0, *(v2 + v40[13]));
  v58 = v70;
  sub_23B3CE510(v2 + v40[14], v70, &qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_51(v58, 1, v46);
  if (v50)
  {
    sub_23B50D8E4();
  }

  else
  {
    OUTLINED_FUNCTION_22_13();
    v59 = v68;
    sub_23B49FC88(v58, v68);
    sub_23B50D8E4();
    MEMORY[0x23EE9DB40](*v59);
    v60 = &v59[*(v46 + 20)];
    AirPollutantMeasurement.hash(into:)();
    MEMORY[0x23EE9DB40](v59[*(v46 + 24)]);
    OUTLINED_FUNCTION_23_14();
    sub_23B4A0B28();
  }

  MEMORY[0x23EE9DB40](*(v2 + v40[15]));
  v61 = (v2 + v40[16]);
  v62 = *(v61 + 1);
  v63 = *(v61 + 2);
  v64 = *&aModeled_3[8 * *v61];
  sub_23B50D1C4();

  OUTLINED_FUNCTION_65();
  sub_23B50D1C4();
  v65 = v2 + v40[17];
  WeatherMetadata.hash(into:)();
}

uint64_t AirQuality.hashValue.getter()
{
  sub_23B50D8C4();
  AirQuality.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B49FC4C()
{
  sub_23B50D8C4();
  AirQuality.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B49FC88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

unint64_t sub_23B49FCE0()
{
  result = qword_280B42670;
  if (!qword_280B42670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42670);
  }

  return result;
}

unint64_t sub_23B49FD34()
{
  result = qword_280B42538;
  if (!qword_280B42538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42538);
  }

  return result;
}

unint64_t sub_23B49FD88()
{
  result = qword_280B41A48;
  if (!qword_280B41A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134210, &qword_23B51D190);
    sub_23B4A07AC(&qword_280B42590, type metadata accessor for AirPollutant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A48);
  }

  return result;
}

unint64_t sub_23B49FE44()
{
  result = qword_280B41C20;
  if (!qword_280B41C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C20);
  }

  return result;
}

unint64_t sub_23B49FE98()
{
  result = qword_280B423D0;
  if (!qword_280B423D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423D0);
  }

  return result;
}

unint64_t sub_23B49FEEC()
{
  result = qword_27E134220;
  if (!qword_27E134220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134220);
  }

  return result;
}

unint64_t sub_23B49FF40()
{
  result = qword_27E134230;
  if (!qword_27E134230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134210, &qword_23B51D190);
    sub_23B4A07AC(&qword_27E134238, type metadata accessor for AirPollutant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134230);
  }

  return result;
}

unint64_t sub_23B49FFFC()
{
  result = qword_27E134240;
  if (!qword_27E134240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134240);
  }

  return result;
}

unint64_t sub_23B4A0050()
{
  result = qword_27E134248;
  if (!qword_27E134248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134248);
  }

  return result;
}

uint64_t sub_23B4A00A4(const void *a1, uint64_t a2)
{
  v67 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v52 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - v8;
  v65 = type metadata accessor for AirPollutantMeasurement();
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for AirPollutant();
  v62 = *(v69 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v68 = (&v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v66 = (&v52 - v20);
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 64);
  v25 = (v22 + 63) >> 6;
  v55 = (v6 + 32);
  v54 = v6 + 8;
  v53 = (v3 + 32);
  v52 = v3 + 8;
  v63 = a2;

  v27 = 0;
  v28 = 0;
  v60 = v13;
  if (v24)
  {
    while (1)
    {
      v29 = v27;
      v30 = v28;
LABEL_10:
      v32 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v33 = v32 | (v30 << 6);
      v34 = (*(v63 + 48) + 16 * v33);
      v36 = *v34;
      v35 = v34[1];
      v37 = v61;
      sub_23B4A0AD0(*(v63 + 56) + *(v62 + 72) * v33, v61);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      v39 = *(v38 + 48);
      v40 = v68;
      *v68 = v36;
      v40[1] = v35;
      v31 = v40;
      sub_23B49FC88(v37, v40 + v39);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v38);

      v27 = v29;
      v13 = v60;
LABEL_11:
      v41 = v31;
      v42 = v66;
      sub_23B4A0A60(v41, v66);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
      {
        break;
      }

      v44 = *(v43 + 48);
      v45 = *v42;
      v46 = v42[1];
      sub_23B49FC88(v42 + v44, v13);
      memcpy(__dst, v67, sizeof(__dst));
      sub_23B50D1C4();

      MEMORY[0x23EE9DB40](*v13);
      v47 = v64;
      sub_23B4A0AD0(&v13[*(v69 + 20)], v64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v58;
        v48 = v59;
        (*v53)(v58, v47, v59);
        MEMORY[0x23EE9DB40](1);
        sub_23B3F1C50(&qword_27E132130, &qword_27E1320E0, &qword_23B50FCD0);
        sub_23B50D0E4();
        v50 = &v71;
      }

      else
      {
        v49 = v56;
        v48 = v57;
        (*v55)(v56, v47, v57);
        MEMORY[0x23EE9DB40](0);
        sub_23B3F1C50(&qword_280B42B98, &qword_27E1320E8, &qword_23B50FCD8);
        sub_23B50D0E4();
        v50 = &v72;
      }

      (**(v50 - 32))(v49, v48);
      MEMORY[0x23EE9DB40](v13[*(v69 + 24)]);
      sub_23B4A0B28();
      result = sub_23B50D914();
      v27 ^= result;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x23EE9DB40](v27);
  }

  else
  {
LABEL_5:
    v31 = v68;
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v25)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v51);
        v24 = 0;
        goto LABEL_11;
      }

      v24 = *(v21 + 8 * v30);
      ++v28;
      if (v24)
      {
        v29 = v27;
        v28 = v30;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23B4A07AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AirQuality.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirQuality.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4A095C()
{
  result = qword_27E134258;
  if (!qword_27E134258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134258);
  }

  return result;
}

unint64_t sub_23B4A09B4()
{
  result = qword_280B42660;
  if (!qword_280B42660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42660);
  }

  return result;
}

unint64_t sub_23B4A0A0C()
{
  result = qword_280B42668;
  if (!qword_280B42668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42668);
  }

  return result;
}

uint64_t sub_23B4A0A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4A0AD0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

uint64_t sub_23B4A0B28()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t HourTemperatureStatistics.init(hour:percentiles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for HourTemperatureStatistics() + 20);

  return sub_23B4A0BC8(a2, v4);
}

uint64_t sub_23B4A0BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HourTemperatureStatistics.percentiles.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HourTemperatureStatistics() + 20);

  return sub_23B4A0CAC(v3, a1);
}

uint64_t sub_23B4A0CAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HourTemperatureStatistics.percentiles.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HourTemperatureStatistics() + 20);

  return sub_23B4A0D60(a1, v3);
}

uint64_t sub_23B4A0D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static HourTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for HourTemperatureStatistics() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B78, &qword_27E131E30, &qword_23B511AC0);
  result = 0;
  if (sub_23B50D134())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
    v4 = *(v3 + 28);
    if (OUTLINED_FUNCTION_1_35())
    {
      v5 = *(v3 + 32);
      if (OUTLINED_FUNCTION_1_35())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_23B4A0F1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E6563726570 && a2 == 0xEB0000000073656CLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4A0FE8(char a1)
{
  if (a1)
  {
    return 0x69746E6563726570;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_23B4A1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A0F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A1050(uint64_t a1)
{
  v2 = sub_23B4A1280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A108C(uint64_t a1)
{
  v2 = sub_23B4A1280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134270, &qword_23B51D420);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A1280();
  sub_23B50D974();
  v14 = *v3;
  v19 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15 = *(type metadata accessor for HourTemperatureStatistics() + 20);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
    sub_23B3F1C50(&qword_27E134280, &qword_27E131E38, &unk_23B510240);
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B4A1280()
{
  result = qword_27E134278;
  if (!qword_27E134278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134278);
  }

  return result;
}

uint64_t HourTemperatureStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v21 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134288, &qword_23B51D428);
  v7 = OUTLINED_FUNCTION_5(v26);
  v24 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  v13 = type metadata accessor for HourTemperatureStatistics();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A1280();
  sub_23B50D964();
  if (!v2)
  {
    v22 = v13;
    v18 = v24;
    v28 = 0;
    v19 = v26;
    *v16 = sub_23B50D724();
    v27 = 1;
    sub_23B3F1C50(&qword_27E134290, &qword_27E131E38, &unk_23B510240);
    sub_23B50D734();
    (*(v18 + 8))(v12, v19);
    sub_23B4A0BC8(v6, v16 + *(v22 + 20));
    sub_23B4A1570(v16, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B4A1570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourTemperatureStatistics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HourTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A1710()
{
  result = qword_27E134298;
  if (!qword_27E134298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134298);
  }

  return result;
}

unint64_t sub_23B4A1768()
{
  result = qword_27E1342A0;
  if (!qword_27E1342A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342A0);
  }

  return result;
}

unint64_t sub_23B4A17C0()
{
  result = qword_27E1342A8;
  if (!qword_27E1342A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342A8);
  }

  return result;
}

__n128 AirQualityScaleCategory.init(description:number:color:recommendation:range:glyph:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t AirQualityScaleCategory.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScaleCategory.description.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AirQualityScaleCategory.color.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScaleCategory.color.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t AirQualityScaleCategory.recommendation.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScaleCategory.recommendation.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AirQualityScaleCategory.range.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t AirQualityScaleCategory.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t AirQualityScaleCategory.glyph.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQualityScaleCategory.glyph.setter()
{
  OUTLINED_FUNCTION_4();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_23B4A1A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6D6F636572 && a2 == 0xEE006E6F69746164;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6870796C67 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B4A1C84(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x7265626D756ELL;
      break;
    case 2:
      result = 0x726F6C6F63;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x6870796C67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A1A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A1D6C(uint64_t a1)
{
  v2 = sub_23B4A21FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A1DA8(uint64_t a1)
{
  v2 = sub_23B4A21FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScaleCategory.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v27 = a1[7];
  v28 = a1[8];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v24 = a1[10];
  v25 = a2[7];
  v26 = a2[8];
  v21 = a2[9];
  v22 = a1[9];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v23 = a2[10];
  if (v12)
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_23B50D834();
    result = 0;
    if ((v13 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  v15 = v3 == v7 && v4 == v9;
  if (!v15 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v5 == v10 && v6 == v11)
    {
      if (v27 != v25 || v28 != v26)
      {
        return 0;
      }

      goto LABEL_33;
    }

    v17 = sub_23B50D834();
    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11)
    {
      return result;
    }
  }

  if (v27 == v25 && v28 == v26)
  {
LABEL_33:
    if (v24)
    {
      if (v23)
      {
        v20 = v22 == v21 && v24 == v23;
        if (v20 || (sub_23B50D834() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v23)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AirQualityScaleCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342B0, &unk_23B51D5F0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v21 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v27 = v1[3];
  v28 = v13;
  v14 = v1[4];
  v25 = v1[5];
  v26 = v14;
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[9];
  v23 = v1[8];
  v24 = v15;
  v21[0] = v17;
  v21[1] = v1[10];
  v22 = v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A21FC();
  sub_23B50D974();
  LOBYTE(v30) = 0;
  v19 = v29;
  sub_23B50D7A4();
  if (!v19)
  {
    LOBYTE(v30) = 1;
    sub_23B50D7E4();
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D7A4();
    LOBYTE(v30) = 3;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D774();
    v30 = v22;
    v31 = v23;
    v32 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_280B41A10);
    sub_23B50D7F4();
    LOBYTE(v30) = 5;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D774();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B4A21FC()
{
  result = qword_280B42328;
  if (!qword_280B42328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42328);
  }

  return result;
}

uint64_t AirQualityScaleCategory.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342B8, &qword_23B51D600);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A21FC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_0_49();
    v14 = sub_23B50D6E4();
    v37 = v15;
    LOBYTE(v39) = 1;
    OUTLINED_FUNCTION_0_49();
    v35 = sub_23B50D724();
    v36 = v14;
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_0_49();
    v16 = sub_23B50D6E4();
    v18 = v17;
    v33 = v16;
    v34 = a2;
    LOBYTE(v39) = 3;
    OUTLINED_FUNCTION_0_49();
    v19 = sub_23B50D6B4();
    v21 = v20;
    v32 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    LOBYTE(__src[0]) = 4;
    sub_23B496534(&qword_27E134178);
    sub_23B50D734();
    v31 = v39;
    v30 = v40;
    v50 = 5;
    v22 = sub_23B50D6B4();
    v24 = v23;
    (*(v8 + 8))(v12, v5);
    v25 = v36;
    __src[0] = v36;
    v26 = v35;
    __src[1] = v37;
    __src[2] = v35;
    v27 = v33;
    __src[3] = v33;
    __src[4] = v18;
    __src[5] = v32;
    __src[6] = v21;
    __src[7] = v31;
    __src[8] = v30;
    __src[9] = v22;
    __src[10] = v24;
    memcpy(v34, __src, 0x58uLL);
    sub_23B3C8AD4(__src, &v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39 = v25;
    v40 = v37;
    v41 = v26;
    v42 = v27;
    v43 = v18;
    v44 = v32;
    v45 = v21;
    v46 = v31;
    v47 = v30;
    v48 = v22;
    v49 = v24;
    return sub_23B3FD324(&v39);
  }
}

uint64_t AirQualityScaleCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  sub_23B50D1C4();
  MEMORY[0x23EE9DB40](v3);
  sub_23B50D1C4();
  sub_23B50D8E4();
  if (v8)
  {
    sub_23B50D1C4();
  }

  MEMORY[0x23EE9DB40](v7);
  MEMORY[0x23EE9DB40](v10);
  if (!v11)
  {
    return sub_23B50D8E4();
  }

  sub_23B50D8E4();

  return sub_23B50D1C4();
}

uint64_t AirQualityScaleCategory.hashValue.getter()
{
  sub_23B50D8C4();
  AirQualityScaleCategory.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B4A279C()
{
  sub_23B50D8C4();
  AirQualityScaleCategory.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4A27DC()
{
  result = qword_27E1342C0;
  if (!qword_27E1342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342C0);
  }

  return result;
}

uint64_t sub_23B4A2838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23B4A2878(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AirQualityScaleCategory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A29AC()
{
  result = qword_27E1342C8;
  if (!qword_27E1342C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342C8);
  }

  return result;
}

unint64_t sub_23B4A2A04()
{
  result = qword_280B42318;
  if (!qword_280B42318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42318);
  }

  return result;
}

unint64_t sub_23B4A2A5C()
{
  result = qword_280B42320;
  if (!qword_280B42320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42320);
  }

  return result;
}

void static DayPartForecast.mock()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Wind();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v39 - v9;
  v10 = objc_opt_self();
  v11 = [v10 celsius];
  v12 = type metadata accessor for DayPartForecast();
  v13 = v12[9];
  sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  OUTLINED_FUNCTION_1_37();
  v14 = [v10 celsius];
  v15 = a1 + v12[10];
  sub_23B50A9B4();
  static PrecipitationAmountByType.mock()(a1 + v12[12]);
  v16 = objc_opt_self();
  v17 = [v16 miles];
  v18 = v12[21];
  sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  OUTLINED_FUNCTION_1_37();
  v19 = [v16 miles];
  v20 = a1 + v12[22];
  sub_23B50A9B4();
  v42 = objc_opt_self();
  v21 = [v42 degrees];
  v22 = (a1 + v12[23]);
  v23 = v3[7];
  v41 = sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  v24 = objc_opt_self();
  v25 = [v24 kilometersPerHour];
  v26 = v3[8];
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v27 = [v24 kilometersPerHour];
  v28 = v40;
  sub_23B50A9B4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2_43();
  v30 = v3[9];
  __swift_storeEnumTagSinglePayload(&v22[v30], 1, 1, v29);
  *v22 = 4;
  sub_23B4983E4(v28, &v22[v30]);
  v31 = [v42 degrees];
  v32 = &v6[v3[7]];
  sub_23B50A9B4();
  v33 = [v24 kilometersPerHour];
  v34 = v3[8];
  sub_23B50A9B4();
  v35 = [v24 kilometersPerHour];
  sub_23B50A9B4();
  OUTLINED_FUNCTION_2_43();
  v36 = v3[9];
  __swift_storeEnumTagSinglePayload(&v6[v36], 1, 1, v29);
  *v6 = 4;
  sub_23B4983E4(v28, &v6[v36]);
  (*(*(v29 - 8) + 16))(a1 + v12[24], &v6[v34], v29);
  sub_23B49ADC8(v6);
  sub_23B50B9D4();
  sub_23B50B994();
  v37 = a1 + v12[5];
  sub_23B50B994();
  *(a1 + v12[6]) = 0;
  v38 = (a1 + v12[7]);
  *v38 = 0;
  v38[1] = 0;
  v38[2] = 0;
  *(a1 + v12[8]) = 4;
  *(a1 + v12[11]) = 0;
  *(a1 + v12[13]) = 0;
  OUTLINED_FUNCTION_0_50(v12[14]);
  OUTLINED_FUNCTION_0_50(v12[15]);
  *(a1 + v12[16]) = 1;
  OUTLINED_FUNCTION_0_50(v12[17]);
  OUTLINED_FUNCTION_0_50(v12[18]);
  *(a1 + v12[19]) = 0;
  *(a1 + v12[20]) = 0;
  *(a1 + v12[25]) = 0;
}

uint64_t AQIScaleStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AQIScaleStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t static AQIScaleStore.locationPath.getter()
{
  if (qword_280B43210 != -1)
  {
    swift_once();
  }

  v0 = sub_23B50D014();
  __swift_project_value_buffer(v0, qword_280B4E9B8);
  return sub_23B50D004();
}

uint64_t WeatherServiceFetchOptionsProvider.__allocating_init(geocodeManager:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_37();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.__allocating_init(geocodeManager:updateCacheAsynchronously:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_7_37();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.init(geocodeManager:updateCacheAsynchronously:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t WeatherServiceFetchOptionsProvider.provideFetchOptions(for:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_23(v1);

  return WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)();
}

uint64_t WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 136) = v3;
  *(v1 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_13_22();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_13_22();
  v11 = type metadata accessor for ReverseGeocodeResult();
  *(v1 + 104) = v11;
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_13_22();

  return MEMORY[0x2822009F8](sub_23B4A3208, 0, 0);
}

uint64_t sub_23B4A3208()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0[10] + 16);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_23B4A32A8;
  v3 = v0[14];
  v4 = v0[9];

  return GeocodeManager.reverseGeocode(location:)(v3, v4);
}

uint64_t sub_23B4A32A8()
{
  OUTLINED_FUNCTION_71();
  v2 = *(*v1 + 120);
  v3 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;
  *(v5 + 128) = v0;

  if (v0)
  {
    v6 = sub_23B4A3614;
  }

  else
  {
    v6 = sub_23B4A33B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23B4A33B0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v1 + 20);
  v7 = (v2 + *(v1 + 24));
  v8 = v7[1];
  v50 = *v7;
  v9 = sub_23B50AEF4();
  (*(*(v9 - 8) + 16))(v3, v2 + v6, v9);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v9);
  v10 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v51 = *(v5 + 24);
  v14 = qword_280B42708;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_0_52();
  }

  v15 = *(v0 + 112);
  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 64);
  v19 = OUTLINED_FUNCTION_4_34(&xmmword_280B42710);
  v20 = v19[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
  v24 = v18 + v19[6];
  *v24 = 0;
  *(v24 + 4) = 768;
  v25 = v19[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v10);
  v29 = v19[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = v19[14];
  sub_23B437A6C(v15);
  v35 = MEMORY[0x277D84F90];
  *(v18 + v34) = MEMORY[0x277D84F90];
  *v18 = v50;
  v18[1] = v8;
  sub_23B3C24A8(v17, v18 + v20, &qword_27E131F68, &unk_23B50F2A0);
  *v24 = 3;
  *(v24 + 4) = 512;
  *(v18 + v19[7]) = 0;
  *(v18 + v19[8]) = v35;
  sub_23B3C24A8(v43, v18 + v25, &qword_27E1338B0, &unk_23B519390);
  v36 = *(v0 + 112);
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 64);
  *(v39 + v19[10]) = *(v0 + 136);
  *(v39 + v19[11]) = 0;
  OUTLINED_FUNCTION_2_44(v19[13], v43, v44, v45, v46, v47, v48, v49);
  *(v40 + v19[15]) = v51;

  OUTLINED_FUNCTION_67_1();

  return v41();
}

uint64_t sub_23B4A3614()
{
  v68 = v0;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);
  v4 = v2;
  v5 = v1;
  v6 = sub_23B50CDD4();
  v7 = sub_23B50D4B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v67 = v11;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    [v9 coordinate];
    *(v0 + 40) = v12;
    *(v0 + 48) = v13;
    type metadata accessor for CLLocationCoordinate2D();
    v14 = sub_23B50D184();
    v16 = sub_23B391F1C(v14, v15, &v67);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v18 = *(*(v0 + 24) - 8);
    v19 = *(v18 + 64);
    OUTLINED_FUNCTION_13_22();
    (*(v18 + 16))();
    v20 = sub_23B50D184();
    v22 = v21;

    v23 = sub_23B391F1C(v20, v22, &v67);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_23B38D000, v6, v7, "failed to reverse geocode. location=%{private,mask.hash}s, error=%{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v11, -1, -1);
    MEMORY[0x23EE9E260](v10, -1, -1);
  }

  v24 = *(v0 + 88);
  v25 = *(v0 + 96);
  v26 = *(v0 + 80);
  sub_23B50AEE4();
  v27 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
  v28 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v66 = *(v26 + 24);
  if (qword_280B42708 != -1)
  {
    OUTLINED_FUNCTION_0_52();
  }

  v32 = *(v0 + 128);
  v33 = *(v0 + 88);
  v34 = *(v0 + 96);
  v35 = *(v0 + 64);
  v36 = OUTLINED_FUNCTION_4_34(&xmmword_280B42710);
  v37 = v36[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v27);
  v41 = v35 + v36[6];
  *v41 = 0;
  *(v41 + 4) = 768;
  v42 = v36[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v28);
  v46 = v36[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);

  v51 = MEMORY[0x277D84F90];
  *(v35 + v36[14]) = MEMORY[0x277D84F90];
  *v35 = 0;
  v35[1] = 0;
  sub_23B3C24A8(v34, v35 + v37, &qword_27E131F68, &unk_23B50F2A0);
  *v41 = 0;
  *(v41 + 4) = 768;
  *(v35 + v36[7]) = 0;
  *(v35 + v36[8]) = v51;
  sub_23B3C24A8(v59, v35 + v42, &qword_27E1338B0, &unk_23B519390);
  v52 = *(v0 + 112);
  v54 = *(v0 + 88);
  v53 = *(v0 + 96);
  v55 = *(v0 + 64);
  *(v55 + v36[10]) = *(v0 + 136);
  *(v55 + v36[11]) = 0;
  OUTLINED_FUNCTION_2_44(v36[13], v59, v60, v61, v62, v63, v64, v65);
  *(v56 + v36[15]) = v66;

  OUTLINED_FUNCTION_67_1();

  return v57();
}

uint64_t WeatherServiceFetchOptionsProvider.provideMarineFetchOptions(for:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_23(v1);

  return WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)();
}

uint64_t sub_23B4A3AF4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;

  OUTLINED_FUNCTION_67_1();

  return v4();
}

id WeatherServiceFetchOptionsProvider.provideFetchOptionsWithouReverseGeocoding(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v16 = sub_23B391C9C(result);
    v47 = v17;
    v48 = v16;
    sub_23B50AEE4();
    v18 = sub_23B50AEF4();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v18);
    v19 = type metadata accessor for WeatherNetworkActivity();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v49 = *(v1 + 24);
    if (qword_280B42708 != -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    v45 = xmmword_280B42710;
    v23 = qword_280B42720;
    v46 = dword_280B42728;
    v44 = word_280B4272C;
    v24 = byte_280B4272E;
    Options = type metadata accessor for WeatherServiceFetchOptions();
    v26 = Options[5];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
    v30 = a1 + Options[6];
    *v30 = 0;
    *(v30 + 4) = 768;
    v31 = Options[9];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v19);
    v35 = Options[12];
    sub_23B50AD24();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = MEMORY[0x277D84F90];
    *(a1 + Options[14]) = MEMORY[0x277D84F90];
    v41 = v47;
    *a1 = v48;
    a1[1] = v41;
    sub_23B3C24A8(v14, a1 + v26, &qword_27E131F68, &unk_23B50F2A0);
    *v30 = 3;
    *(v30 + 4) = 512;
    *(a1 + Options[7]) = 0;
    *(a1 + Options[8]) = v40;
    result = sub_23B3C24A8(v8, a1 + v31, &qword_27E1338B0, &unk_23B519390);
    *(a1 + Options[10]) = 0;
    *(a1 + Options[11]) = 0;
    v42 = a1 + Options[13];
    *v42 = v45;
    *(v42 + 2) = v23;
    v42[30] = v24;
    *(v42 + 14) = v44;
    *(v42 + 6) = v46;
    *(a1 + Options[15]) = v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WeatherServiceFetchOptionsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_7_37();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_23B4A3EDC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B4A42B4;

  return WeatherServiceFetchOptionsProvider.provideFetchOptions(for:)();
}

uint64_t sub_23B4A3FAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B4A42B4;

  return WeatherServiceFetchOptionsProvider.provideMarineFetchOptions(for:)();
}

uint64_t dispatch thunk of WeatherServiceFetchOptionsProviderType.provideFetchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (OUTLINED_FUNCTION_9_27(a1, a2, a3, a4) + 8);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_43(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_27(v6);

  return v9(v8);
}

uint64_t dispatch thunk of WeatherServiceFetchOptionsProviderType.provideMarineFetchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (OUTLINED_FUNCTION_9_27(a1, a2, a3, a4) + 24);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_43(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_5_27(v6);

  return v9(v8);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B4A42C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B4A4304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B4A4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a6;
  v82 = a4;
  v83 = a5;
  v81 = a3;
  v78 = a1;
  v79 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v84 = &v76 - v10;
  v80 = type metadata accessor for ReverseGeocodeResult();
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322A8, &unk_23B51DBB0);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v77 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v19 = OUTLINED_FUNCTION_3(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v29 = OUTLINED_FUNCTION_3(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1(v40);
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v41 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1(v50);
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1(v59);
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v33);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v33);
  v66 = *(v40 + 48);
  v67 = *(v40 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  v86 = v78;
  v87 = v79;

  sub_23B50CF64();

  v68 = v81;
  sub_23B3FE9CC(v81, v76);
  sub_23B4A5B9C(&qword_280B43008);
  sub_23B4A5B9C(qword_280B43010);
  v69 = v77;
  sub_23B50CEB4();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322D0, &qword_23B510460);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  sub_23B50CF64();

  v86 = v82;
  v87 = v83;
  sub_23B50CF64();

  v71 = sub_23B50AD24();
  v72 = *(v71 - 8);
  v73 = v84;
  v74 = v85;
  (*(v72 + 16))(v84, v85, v71);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v71);
  sub_23B50CF64();

  (*(v72 + 8))(v74, v71);
  sub_23B437A6C(v68);
  return v41;
}

uint64_t sub_23B4A48E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1(v22);
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v23 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1(v32);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1(v41);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v15);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v15);
  v48 = *(v22 + 48);
  v49 = *(v22 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  return v23;
}

uint64_t sub_23B4A4BCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73657269707865 && a2 == 0xE700000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000023B537E10 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B529AB0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

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

unint64_t sub_23B4A4D28(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73657269707865;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A4DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134308, &unk_23B51DBA0);
  OUTLINED_FUNCTION_5(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A5B48();
  sub_23B50D974();
  v23 = a2;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_2_45(&qword_27E133530);
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_16_15();
  if (!v5)
  {
    v19 = a4;
    v23 = v21;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_2_45(&qword_27E133538);
    OUTLINED_FUNCTION_8_25();
    sub_23B50D7F4();
    v23 = v19;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
    OUTLINED_FUNCTION_2_45(&qword_27E134310);
    OUTLINED_FUNCTION_8_25();
    sub_23B50D7F4();
    v23 = v20;
    v22 = 3;
    OUTLINED_FUNCTION_8_25();
    OUTLINED_FUNCTION_16_15();
  }

  return (*(v11 + 8))(v16, v9);
}

uint64_t sub_23B4A4FE8(uint64_t *a1)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342F0, &qword_23B51DB98);
  v2 = OUTLINED_FUNCTION_5(v1);
  v65 = v3;
  v66 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v71 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v68 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1(v32);
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v67 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1(v41);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v69 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1(v50);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v51 = sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v25);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v25);
  v58 = *(v32 + 48);
  v59 = *(v32 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v60 = sub_23B50CF44();
  v61 = v72[4];
  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  sub_23B4A5B48();
  v62 = v70;
  sub_23B50D964();
  if (v62)
  {
  }

  else
  {
    v68 = v60;
    v70 = v51;
    v73 = 0;
    OUTLINED_FUNCTION_3_30(&qword_27E133510, &qword_27E1334D8, &unk_23B51DB70);
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_15_21();

    v51 = v74;
    v73 = 1;
    OUTLINED_FUNCTION_3_30(&qword_27E133518, &qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_12_24();
    sub_23B50D734();

    v73 = 2;
    OUTLINED_FUNCTION_3_30(&qword_27E134300, &qword_27E1322C0, &qword_23B51DB90);
    OUTLINED_FUNCTION_12_24();
    sub_23B50D734();

    v73 = 3;
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_15_21();
    (*(v65 + 8))(v71, v66);
  }

  __swift_destroy_boxed_opaque_existential_1(v72);
  return v51;
}

uint64_t sub_23B4A55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A4BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A561C(uint64_t a1)
{
  v2 = sub_23B4A5B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A5658(uint64_t a1)
{
  v2 = sub_23B4A5B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A56C4(uint64_t a1)
{
  v2 = sub_23B3FFFF0();

  return MEMORY[0x2821D1398](a1, v2);
}

uint64_t sub_23B4A5710(uint64_t a1)
{
  v2 = sub_23B3FFFF0();

  return MEMORY[0x2821D13A8](a1, v2);
}

uint64_t sub_23B4A575C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3FFFF0();

  return MEMORY[0x2821D13A0](a1, a2, a3, v6);
}

uint64_t sub_23B4A57C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B4A48E4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_23B4A57EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B4A4FE8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_23B4A583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B3FFFF0();

  return MEMORY[0x2821D13C0](a1, a2, v4);
}

uint64_t sub_23B4A5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3FFFF0();

  return MEMORY[0x2821D13B8](a1, a2, a3, v6);
}

uint64_t sub_23B4A58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B3FFFF0();

  return MEMORY[0x2821D13B0](a1, a2, a3, a4, v8);
}

unint64_t sub_23B4A5940()
{
  result = qword_280B43120;
  if (!qword_280B43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43120);
  }

  return result;
}

unint64_t sub_23B4A5994()
{
  result = qword_280B43128;
  if (!qword_280B43128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43128);
  }

  return result;
}

unint64_t sub_23B4A59EC()
{
  result = qword_280B43138;
  if (!qword_280B43138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43138);
  }

  return result;
}

unint64_t sub_23B4A5A44()
{
  result = qword_280B42FD0;
  if (!qword_280B42FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42FD0);
  }

  return result;
}

unint64_t sub_23B4A5A9C()
{
  result = qword_280B43130;
  if (!qword_280B43130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43130);
  }

  return result;
}

unint64_t sub_23B4A5AF4()
{
  result = qword_280B43140;
  if (!qword_280B43140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43140);
  }

  return result;
}

unint64_t sub_23B4A5B48()
{
  result = qword_27E1342F8;
  if (!qword_27E1342F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342F8);
  }

  return result;
}

uint64_t sub_23B4A5B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReverseGeocodeResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeResultEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A5CC0()
{
  result = qword_27E134318;
  if (!qword_27E134318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134318);
  }

  return result;
}

unint64_t sub_23B4A5D18()
{
  result = qword_27E134320;
  if (!qword_27E134320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134320);
  }

  return result;
}

unint64_t sub_23B4A5D70()
{
  result = qword_27E134328;
  if (!qword_27E134328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134328);
  }

  return result;
}

uint64_t PrecipitationShift.init(date:nextDate:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for PrecipitationShift();
  v13 = *(v12 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  sub_23B3CF890(a1, a4);
  result = sub_23B3CF890(a2, a4 + v13);
  *(a4 + *(v12 + 24)) = v7;
  return result;
}

uint64_t PrecipitationShift.nextDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrecipitationShift() + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t PrecipitationShift.nextDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for PrecipitationShift() + 20);

  return sub_23B3CF890(v0, v2);
}

double (*PrecipitationShift.nextDate.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for PrecipitationShift() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t PrecipitationShift.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrecipitationShift();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PrecipitationShift.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PrecipitationShift();
  *(v1 + *(result + 24)) = v2;
  return result;
}

double (*PrecipitationShift.kind.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for PrecipitationShift() + 24);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B4A6024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656C626973736F70 && a2 == 0xEF656C7A7A697244;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000023B537E30 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B537E50 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000023B537E70 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x800000023B537E90 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C7A7A697264 && a2 == 0xE700000000000000;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x53656C7A7A697264 && a2 == 0xEC00000074726174;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x53656C7A7A697264 && a2 == 0xEB00000000706F74;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000023B537EB0 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000023B537ED0 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1852399986 && a2 == 0xE400000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x726174536E696172 && a2 == 0xE900000000000074;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x706F74536E696172 && a2 == 0xE800000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x726174536E696172 && a2 == 0xED0000706F745374;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x706F74536E696172 && a2 == 0xED00007472617453;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6961527976616568 && a2 == 0xE90000000000006ELL;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6961527976616568 && a2 == 0xEE0074726174536ELL;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6961527976616568 && a2 == 0xED0000706F74536ELL;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000023B537EF0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x800000023B537F10 == a2;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x800000023B537F30 == a2;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000012 && 0x800000023B537F50 == a2;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65486F546E696172 && a2 == 0xEF6E696152797661;
                                              if (v27 || (sub_23B50D834() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6961527976616568 && a2 == 0xEF6E6961526F546ELL;
                                                if (v28 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000017 && 0x800000023B537F70 == a2;
                                                  if (v29 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000017 && 0x800000023B537F90 == a2;
                                                    if (v30 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x800000023B537FB0 == a2;
                                                      if (v31 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x800000023B537FD0 == a2;
                                                        if (v32 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000016 && 0x800000023B537FF0 == a2;
                                                          if (v33 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000016 && 0x800000023B538010 == a2;
                                                            if (v34 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000013 && 0x800000023B538030 == a2;
                                                              if (v35 || (sub_23B50D834() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000013 && 0x800000023B538050 == a2;
                                                                if (v36 || (sub_23B50D834() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001BLL && 0x800000023B538070 == a2;
                                                                  if (v37 || (sub_23B50D834() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD00000000000001BLL && 0x800000023B538090 == a2;
                                                                    if (v38 || (sub_23B50D834() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000018 && 0x800000023B5380B0 == a2;
                                                                      if (v39 || (sub_23B50D834() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x800000023B5380D0 == a2;
                                                                        if (v40 || (sub_23B50D834() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD00000000000001BLL && 0x800000023B5380F0 == a2;
                                                                          if (v41 || (sub_23B50D834() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD00000000000001BLL && 0x800000023B538110 == a2;
                                                                            if (v42 || (sub_23B50D834() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000018 && 0x800000023B538130 == a2;
                                                                              if (v43 || (sub_23B50D834() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000018 && 0x800000023B538150 == a2;
                                                                                if (v44 || (sub_23B50D834() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000010 && 0x800000023B538170 == a2;
                                                                                  if (v45 || (sub_23B50D834() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000015 && 0x800000023B538190 == a2;
                                                                                    if (v46 || (sub_23B50D834() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000014 && 0x800000023B5381B0 == a2;
                                                                                      if (v47 || (sub_23B50D834() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000019 && 0x800000023B5381D0 == a2;
                                                                                        if (v48 || (sub_23B50D834() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000019 && 0x800000023B5381F0 == a2;
                                                                                          if (v49 || (sub_23B50D834() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x7365697272756C66 && a2 == 0xE800000000000000;
                                                                                            if (v50 || (sub_23B50D834() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0x7365697272756C66 && a2 == 0xED00007472617453;
                                                                                              if (v51 || (sub_23B50D834() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x7365697272756C66 && a2 == 0xEC000000706F7453;
                                                                                                if (v52 || (sub_23B50D834() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD000000000000011 && 0x800000023B538210 == a2;
                                                                                                  if (v53 || (sub_23B50D834() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000011 && 0x800000023B538230 == a2;
                                                                                                    if (v54 || (sub_23B50D834() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 2003791475 && a2 == 0xE400000000000000;
                                                                                                      if (v55 || (sub_23B50D834() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0x72617453776F6E73 && a2 == 0xE900000000000074;
                                                                                                        if (v56 || (sub_23B50D834() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0x706F7453776F6E73 && a2 == 0xE800000000000000;
                                                                                                          if (v57 || (sub_23B50D834() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0x72617453776F6E73 && a2 == 0xED0000706F745374;
                                                                                                            if (v58 || (sub_23B50D834() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x706F7453776F6E73 && a2 == 0xED00007472617453;
                                                                                                              if (v59 || (sub_23B50D834() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0x6F6E537976616568 && a2 == 0xE900000000000077;
                                                                                                                if (v60 || (sub_23B50D834() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0x6F6E537976616568 && a2 == 0xEE00747261745377;
                                                                                                                  if (v61 || (sub_23B50D834() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0x6F6E537976616568 && a2 == 0xED0000706F745377;
                                                                                                                    if (v62 || (sub_23B50D834() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000012 && 0x800000023B538250 == a2;
                                                                                                                      if (v63 || (sub_23B50D834() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000012 && 0x800000023B538270 == a2;
                                                                                                                        if (v64 || (sub_23B50D834() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000013 && 0x800000023B538290 == a2;
                                                                                                                          if (v65 || (sub_23B50D834() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD000000000000013 && 0x800000023B5382B0 == a2;
                                                                                                                            if (v66 || (sub_23B50D834() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0x65486F54776F6E73 && a2 == 0xEF776F6E53797661;
                                                                                                                              if (v67 || (sub_23B50D834() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0x6F6E537976616568 && a2 == 0xEF776F6E536F5477;
                                                                                                                                if (v68 || (sub_23B50D834() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD000000000000018 && 0x800000023B5382D0 == a2;
                                                                                                                                  if (v69 || (sub_23B50D834() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD000000000000018 && 0x800000023B5382F0 == a2;
                                                                                                                                    if (v70 || (sub_23B50D834() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000014 && 0x800000023B538310 == a2;
                                                                                                                                      if (v71 || (sub_23B50D834() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000014 && 0x800000023B538330 == a2;
                                                                                                                                        if (v72 || (sub_23B50D834() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000017 && 0x800000023B538350 == a2;
                                                                                                                                          if (v73 || (sub_23B50D834() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000017 && 0x800000023B538370 == a2;
                                                                                                                                            if (v74 || (sub_23B50D834() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD000000000000013 && 0x800000023B538390 == a2;
                                                                                                                                              if (v75 || (sub_23B50D834() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD000000000000013 && 0x800000023B5383B0 == a2;
                                                                                                                                                if (v76 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD00000000000001CLL && 0x800000023B5383D0 == a2;
                                                                                                                                                  if (v77 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD00000000000001CLL && 0x800000023B5383F0 == a2;
                                                                                                                                                    if (v78 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v79 = a1 == 0xD000000000000018 && 0x800000023B538410 == a2;
                                                                                                                                                      if (v79 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v80 = a1 == 0xD000000000000018 && 0x800000023B538430 == a2;
                                                                                                                                                        if (v80 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v81 = a1 == 0xD00000000000001CLL && 0x800000023B538450 == a2;
                                                                                                                                                          if (v81 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v82 = a1 == 0xD00000000000001CLL && 0x800000023B538470 == a2;
                                                                                                                                                            if (v82 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v83 = a1 == 0xD000000000000018 && 0x800000023B538490 == a2;
                                                                                                                                                              if (v83 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v84 = a1 == 0xD000000000000018 && 0x800000023B5384B0 == a2;
                                                                                                                                                                if (v84 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v85 = a1 == 0x656C626973736F70 && a2 == 0xED00007465656C53;
                                                                                                                                                                  if (v85 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v86 = a1 == 0xD000000000000012 && 0x800000023B5384D0 == a2;
                                                                                                                                                                    if (v86 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v87 = a1 == 0xD000000000000011 && 0x800000023B5384F0 == a2;
                                                                                                                                                                      if (v87 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v88 = a1 == 0xD000000000000016 && 0x800000023B538510 == a2;
                                                                                                                                                                        if (v88 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          return 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v89 = a1 == 0xD000000000000016 && 0x800000023B538530 == a2;
                                                                                                                                                                          if (v89 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            return 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v90 = a1 == 0x7465656C73 && a2 == 0xE500000000000000;
                                                                                                                                                                            if (v90 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              return 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v91 = a1 == 0x6174537465656C73 && a2 == 0xEA00000000007472;
                                                                                                                                                                              if (v91 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                return 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v92 = a1 == 0x6F74537465656C73 && a2 == 0xE900000000000070;
                                                                                                                                                                                if (v92 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  return 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v93 = a1 == 0x6174537465656C73 && a2 == 0xEE00706F74537472;
                                                                                                                                                                                  if (v93 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    return 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v94 = a1 == 0x6F74537465656C73 && a2 == 0xEE00747261745370;
                                                                                                                                                                                    if (v94 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      return 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v95 = a1 == 0x656C626973736F70 && a2 == 0xEC0000006C696148;
                                                                                                                                                                                      if (v95 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        return 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v96 = a1 == 0xD000000000000011 && 0x800000023B538550 == a2;
                                                                                                                                                                                        if (v96 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          return 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v97 = a1 == 0xD000000000000010 && 0x800000023B538570 == a2;
                                                                                                                                                                                          if (v97 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            return 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v98 = a1 == 0xD000000000000015 && 0x800000023B538590 == a2;
                                                                                                                                                                                            if (v98 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              return 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v99 = a1 == 0xD000000000000015 && 0x800000023B5385B0 == a2;
                                                                                                                                                                                              if (v99 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                return 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v100 = a1 == 1818845544 && a2 == 0xE400000000000000;
                                                                                                                                                                                                if (v100 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  return 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v101 = a1 == 0x726174536C696168 && a2 == 0xE900000000000074;
                                                                                                                                                                                                  if (v101 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    return 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v102 = a1 == 0x706F74536C696168 && a2 == 0xE800000000000000;
                                                                                                                                                                                                    if (v102 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      return 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v103 = a1 == 0x726174536C696168 && a2 == 0xED0000706F745374;
                                                                                                                                                                                                      if (v103 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        return 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v104 = a1 == 0x706F74536C696168 && a2 == 0xED00007472617453;
                                                                                                                                                                                                        if (v104 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 100;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v106 = sub_23B50D834();

                                                                                                                                                                                                          if (v106)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            return 100;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            return 101;
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

uint64_t sub_23B4A7DE0(char a1)
{
  result = 0x656C626973736F70;
  switch(a1)
  {
    case 1:
    case 26:
    case 27:
    case 42:
    case 66:
    case 67:
      return 0xD000000000000014;
    case 2:
    case 30:
    case 31:
    case 60:
    case 61:
    case 70:
    case 71:
      return 0xD000000000000013;
    case 3:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000018;
    case 5:
      return 0x656C7A7A697264;
    case 6:
    case 7:
      return 0x53656C7A7A697264;
    case 8:
    case 9:
    case 40:
    case 92:
      return 0xD000000000000010;
    case 10:
      return 1852399986;
    case 11:
      v3 = 1852399986;
      goto LABEL_56;
    case 12:
      v6 = 1852399986;
      goto LABEL_64;
    case 13:
      v4 = 1852399986;
      goto LABEL_29;
    case 14:
      v5 = 1852399986;
      goto LABEL_66;
    case 15:
      return 0x6961527976616568;
    case 16:
      return 0x6961527976616568;
    case 17:
      return 0x6961527976616568;
    case 18:
    case 19:
    case 20:
    case 21:
    case 58:
    case 59:
    case 81:
      return 0xD000000000000012;
    case 22:
      v7 = 1852399986;
      goto LABEL_38;
    case 23:
      return 0x6961527976616568;
    case 24:
    case 25:
    case 68:
    case 69:
      return 0xD000000000000017;
    case 28:
    case 29:
    case 83:
    case 84:
      return 0xD000000000000016;
    case 32:
    case 33:
    case 36:
    case 37:
      return 0xD00000000000001BLL;
    case 34:
      return 0xD000000000000018;
    case 35:
      return 0xD000000000000018;
    case 38:
      return 0xD000000000000018;
    case 39:
      return 0xD000000000000018;
    case 41:
    case 93:
    case 94:
      return 0xD000000000000015;
    case 43:
    case 44:
      return 0xD000000000000019;
    case 45:
    case 47:
      return 0x7365697272756C66;
    case 46:
      return 0x7365697272756C66;
    case 48:
    case 49:
    case 82:
    case 91:
      return 0xD000000000000011;
    case 50:
      return 2003791475;
    case 51:
      v3 = 2003791475;
      goto LABEL_56;
    case 52:
      v6 = 2003791475;
      goto LABEL_64;
    case 53:
      v4 = 2003791475;
      goto LABEL_29;
    case 54:
      v5 = 2003791475;
      goto LABEL_66;
    case 55:
      return 0x6F6E537976616568;
    case 56:
      return 0x6F6E537976616568;
    case 57:
      return 0x6F6E537976616568;
    case 62:
      v7 = 2003791475;
LABEL_38:
      result = v7 | 0x65486F5400000000;
      break;
    case 63:
      result = 0x6F6E537976616568;
      break;
    case 64:
      result = 0xD000000000000018;
      break;
    case 65:
      result = 0xD000000000000018;
      break;
    case 72:
    case 73:
    case 76:
    case 77:
      result = 0xD00000000000001CLL;
      break;
    case 74:
      result = 0xD000000000000018;
      break;
    case 75:
      result = 0xD000000000000018;
      break;
    case 78:
      result = 0xD000000000000018;
      break;
    case 79:
      result = 0xD000000000000018;
      break;
    case 85:
      result = 0x7465656C73;
      break;
    case 86:
    case 88:
      result = 0x6174537465656C73;
      break;
    case 87:
      result = 0x6F74537465656C73;
      break;
    case 89:
      result = 0x6F74537465656C73;
      break;
    case 95:
      result = 1818845544;
      break;
    case 96:
      v3 = 1818845544;
LABEL_56:
      result = v3 | 0x7261745300000000;
      break;
    case 97:
      v6 = 1818845544;
LABEL_64:
      result = v6 | 0x706F745300000000;
      break;
    case 98:
      v4 = 1818845544;
LABEL_29:
      result = v4 | 0x7261745300000000;
      break;
    case 99:
      v5 = 1818845544;
LABEL_66:
      result = v5 | 0x706F745300000000;
      break;
    case 100:
      result = 0x7261656C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A85F4(uint64_t a1)
{
  v2 = sub_23B4AF9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8630(uint64_t a1)
{
  v2 = sub_23B4AF9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A6024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A869C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4A7DD8();
  *a1 = result;
  return result;
}

uint64_t sub_23B4A86C4(uint64_t a1)
{
  v2 = sub_23B4AF980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8700(uint64_t a1)
{
  v2 = sub_23B4AF980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A873C(uint64_t a1)
{
  v2 = sub_23B4B1900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8778(uint64_t a1)
{
  v2 = sub_23B4B1900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A87B4(uint64_t a1)
{
  v2 = sub_23B4B18AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A87F0(uint64_t a1)
{
  v2 = sub_23B4B18AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A882C(uint64_t a1)
{
  v2 = sub_23B4B1804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8868(uint64_t a1)
{
  v2 = sub_23B4B1804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A88A4(uint64_t a1)
{
  v2 = sub_23B4B1858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A88E0(uint64_t a1)
{
  v2 = sub_23B4B1858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A891C(uint64_t a1)
{
  v2 = sub_23B4B17B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8958(uint64_t a1)
{
  v2 = sub_23B4B17B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8994(uint64_t a1)
{
  v2 = sub_23B4B1414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A89D0(uint64_t a1)
{
  v2 = sub_23B4B1414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8A0C(uint64_t a1)
{
  v2 = sub_23B4B12C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8A48(uint64_t a1)
{
  v2 = sub_23B4B12C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8A84(uint64_t a1)
{
  v2 = sub_23B4B1024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8AC0(uint64_t a1)
{
  v2 = sub_23B4B1024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8AFC(uint64_t a1)
{
  v2 = sub_23B4B1174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8B38(uint64_t a1)
{
  v2 = sub_23B4B1174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8B74(uint64_t a1)
{
  v2 = sub_23B4B0ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8BB0(uint64_t a1)
{
  v2 = sub_23B4B0ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8BEC(uint64_t a1)
{
  v2 = sub_23B4B0BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8C28(uint64_t a1)
{
  v2 = sub_23B4B0BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8C64(uint64_t a1)
{
  v2 = sub_23B4B0B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8CA0(uint64_t a1)
{
  v2 = sub_23B4B0B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8CDC(uint64_t a1)
{
  v2 = sub_23B4B0AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8D18(uint64_t a1)
{
  v2 = sub_23B4B0AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8D54(uint64_t a1)
{
  v2 = sub_23B4B0B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8D90(uint64_t a1)
{
  v2 = sub_23B4B0B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8DCC(uint64_t a1)
{
  v2 = sub_23B4B0A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8E08(uint64_t a1)
{
  v2 = sub_23B4B0A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8E44(uint64_t a1)
{
  v2 = sub_23B4B06F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8E80(uint64_t a1)
{
  v2 = sub_23B4B06F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8EBC(uint64_t a1)
{
  v2 = sub_23B4B05A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8EF8(uint64_t a1)
{
  v2 = sub_23B4B05A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8F34(uint64_t a1)
{
  v2 = sub_23B4B0304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8F70(uint64_t a1)
{
  v2 = sub_23B4B0304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8FAC(uint64_t a1)
{
  v2 = sub_23B4B0454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8FE8(uint64_t a1)
{
  v2 = sub_23B4B0454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9024(uint64_t a1)
{
  v2 = sub_23B4B01B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9060(uint64_t a1)
{
  v2 = sub_23B4B01B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A909C(uint64_t a1)
{
  v2 = sub_23B4AFB78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A90D8(uint64_t a1)
{
  v2 = sub_23B4AFB78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9114(uint64_t a1)
{
  v2 = sub_23B4AFB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9150(uint64_t a1)
{
  v2 = sub_23B4AFB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A918C(uint64_t a1)
{
  v2 = sub_23B4AFA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A91C8(uint64_t a1)
{
  v2 = sub_23B4AFA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9204(uint64_t a1)
{
  v2 = sub_23B4AFAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9240(uint64_t a1)
{
  v2 = sub_23B4AFAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A927C(uint64_t a1)
{
  v2 = sub_23B4AFA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A92B8(uint64_t a1)
{
  v2 = sub_23B4AFA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A92F4(uint64_t a1)
{
  v2 = sub_23B4B15B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9330(uint64_t a1)
{
  v2 = sub_23B4B15B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A936C(uint64_t a1)
{
  v2 = sub_23B4B1564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A93A8(uint64_t a1)
{
  v2 = sub_23B4B1564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A93E4(uint64_t a1)
{
  v2 = sub_23B4B1468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9420(uint64_t a1)
{
  v2 = sub_23B4B1468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A945C(uint64_t a1)
{
  v2 = sub_23B4B1510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9498(uint64_t a1)
{
  v2 = sub_23B4B1510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A94D4(uint64_t a1)
{
  v2 = sub_23B4B14BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9510(uint64_t a1)
{
  v2 = sub_23B4B14BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A954C(uint64_t a1)
{
  v2 = sub_23B4B13C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9588(uint64_t a1)
{
  v2 = sub_23B4B13C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A95C4(uint64_t a1)
{
  v2 = sub_23B4B1270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9600(uint64_t a1)
{
  v2 = sub_23B4B1270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A963C(uint64_t a1)
{
  v2 = sub_23B4B0FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9678(uint64_t a1)
{
  v2 = sub_23B4B0FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A96B4(uint64_t a1)
{
  v2 = sub_23B4B1120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A96F0(uint64_t a1)
{
  v2 = sub_23B4B1120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A972C(uint64_t a1)
{
  v2 = sub_23B4B0E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9768(uint64_t a1)
{
  v2 = sub_23B4B0E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A97A4(uint64_t a1)
{
  v2 = sub_23B4B1318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A97E0(uint64_t a1)
{
  v2 = sub_23B4B1318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A981C(uint64_t a1)
{
  v2 = sub_23B4B11C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9858(uint64_t a1)
{
  v2 = sub_23B4B11C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9894(uint64_t a1)
{
  v2 = sub_23B4B0F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A98D0(uint64_t a1)
{
  v2 = sub_23B4B0F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A990C(uint64_t a1)
{
  v2 = sub_23B4B1078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9948(uint64_t a1)
{
  v2 = sub_23B4B1078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9984(uint64_t a1)
{
  v2 = sub_23B4B0DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A99C0(uint64_t a1)
{
  v2 = sub_23B4B0DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A99FC(uint64_t a1)
{
  v2 = sub_23B4B0898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9A38(uint64_t a1)
{
  v2 = sub_23B4B0898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9A74(uint64_t a1)
{
  v2 = sub_23B4B0844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9AB0(uint64_t a1)
{
  v2 = sub_23B4B0844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9AEC(uint64_t a1)
{
  v2 = sub_23B4B0748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9B28(uint64_t a1)
{
  v2 = sub_23B4B0748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9B64(uint64_t a1)
{
  v2 = sub_23B4B07F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9BA0(uint64_t a1)
{
  v2 = sub_23B4B07F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9BDC(uint64_t a1)
{
  v2 = sub_23B4B079C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9C18(uint64_t a1)
{
  v2 = sub_23B4B079C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9C54(uint64_t a1)
{
  v2 = sub_23B4B06A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9C90(uint64_t a1)
{
  v2 = sub_23B4B06A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9CCC(uint64_t a1)
{
  v2 = sub_23B4B0550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9D08(uint64_t a1)
{
  v2 = sub_23B4B0550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9D44(uint64_t a1)
{
  v2 = sub_23B4B02B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9D80(uint64_t a1)
{
  v2 = sub_23B4B02B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9DBC(uint64_t a1)
{
  v2 = sub_23B4B0400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9DF8(uint64_t a1)
{
  v2 = sub_23B4B0400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9E34(uint64_t a1)
{
  v2 = sub_23B4B0160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9E70(uint64_t a1)
{
  v2 = sub_23B4B0160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9EAC(uint64_t a1)
{
  v2 = sub_23B4B05F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9EE8(uint64_t a1)
{
  v2 = sub_23B4B05F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9F24(uint64_t a1)
{
  v2 = sub_23B4B04A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9F60(uint64_t a1)
{
  v2 = sub_23B4B04A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9F9C(uint64_t a1)
{
  v2 = sub_23B4B0208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9FD8(uint64_t a1)
{
  v2 = sub_23B4B0208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA014(uint64_t a1)
{
  v2 = sub_23B4B0358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA050(uint64_t a1)
{
  v2 = sub_23B4B0358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA08C(uint64_t a1)
{
  v2 = sub_23B4B00B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA0C8(uint64_t a1)
{
  v2 = sub_23B4B00B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA104(uint64_t a1)
{
  v2 = sub_23B4B1AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA140(uint64_t a1)
{
  v2 = sub_23B4B1AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA17C(uint64_t a1)
{
  v2 = sub_23B4B1A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA1B8(uint64_t a1)
{
  v2 = sub_23B4B1A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA1F4(uint64_t a1)
{
  v2 = sub_23B4B19A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA230(uint64_t a1)
{
  v2 = sub_23B4B19A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA26C(uint64_t a1)
{
  v2 = sub_23B4B19FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA2A8(uint64_t a1)
{
  v2 = sub_23B4B19FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA2E4(uint64_t a1)
{
  v2 = sub_23B4B1954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA320(uint64_t a1)
{
  v2 = sub_23B4B1954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA35C(uint64_t a1)
{
  v2 = sub_23B4B0D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA398(uint64_t a1)
{
  v2 = sub_23B4B0D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA3D4(uint64_t a1)
{
  v2 = sub_23B4B0D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA410(uint64_t a1)
{
  v2 = sub_23B4B0D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA44C(uint64_t a1)
{
  v2 = sub_23B4B0C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA488(uint64_t a1)
{
  v2 = sub_23B4B0C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA4C4(uint64_t a1)
{
  v2 = sub_23B4B0CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA500(uint64_t a1)
{
  v2 = sub_23B4B0CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA53C(uint64_t a1)
{
  v2 = sub_23B4B0C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA578(uint64_t a1)
{
  v2 = sub_23B4B0C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA5B4(uint64_t a1)
{
  v2 = sub_23B4AFD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA5F0(uint64_t a1)
{
  v2 = sub_23B4AFD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA62C(uint64_t a1)
{
  v2 = sub_23B4AFCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA668(uint64_t a1)
{
  v2 = sub_23B4AFCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA6A4(uint64_t a1)
{
  v2 = sub_23B4AFC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA6E0(uint64_t a1)
{
  v2 = sub_23B4AFC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA71C(uint64_t a1)
{
  v2 = sub_23B4AFC74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA758(uint64_t a1)
{
  v2 = sub_23B4AFC74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA794(uint64_t a1)
{
  v2 = sub_23B4AFBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA7D0(uint64_t a1)
{
  v2 = sub_23B4AFBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA80C(uint64_t a1)
{
  v2 = sub_23B4B0064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA848(uint64_t a1)
{
  v2 = sub_23B4B0064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA884(uint64_t a1)
{
  v2 = sub_23B4B0010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA8C0(uint64_t a1)
{
  v2 = sub_23B4B0010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA8FC(uint64_t a1)
{
  v2 = sub_23B4AFF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA938(uint64_t a1)
{
  v2 = sub_23B4AFF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA974(uint64_t a1)
{
  v2 = sub_23B4AFFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA9B0(uint64_t a1)
{
  v2 = sub_23B4AFFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA9EC(uint64_t a1)
{
  v2 = sub_23B4AFF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAA28(uint64_t a1)
{
  v2 = sub_23B4AFF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAA64(uint64_t a1)
{
  v2 = sub_23B4B175C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAAA0(uint64_t a1)
{
  v2 = sub_23B4B175C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAADC(uint64_t a1)
{
  v2 = sub_23B4B1708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAB18(uint64_t a1)
{
  v2 = sub_23B4B1708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAB54(uint64_t a1)
{
  v2 = sub_23B4B1660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAB90(uint64_t a1)
{
  v2 = sub_23B4B1660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AABCC(uint64_t a1)
{
  v2 = sub_23B4B16B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAC08(uint64_t a1)
{
  v2 = sub_23B4B16B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAC44(uint64_t a1)
{
  v2 = sub_23B4B160C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAC80(uint64_t a1)
{
  v2 = sub_23B4B160C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AACBC(uint64_t a1)
{
  v2 = sub_23B4B136C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AACF8(uint64_t a1)
{
  v2 = sub_23B4B136C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAD34(uint64_t a1)
{
  v2 = sub_23B4B121C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAD70(uint64_t a1)
{
  v2 = sub_23B4B121C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AADAC(uint64_t a1)
{
  v2 = sub_23B4B0F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AADE8(uint64_t a1)
{
  v2 = sub_23B4B0F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAE24(uint64_t a1)
{
  v2 = sub_23B4B10CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAE60(uint64_t a1)
{
  v2 = sub_23B4B10CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAE9C(uint64_t a1)
{
  v2 = sub_23B4B0E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAED8(uint64_t a1)
{
  v2 = sub_23B4B0E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAF14(uint64_t a1)
{
  v2 = sub_23B4AFEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAF50(uint64_t a1)
{
  v2 = sub_23B4AFEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAF8C(uint64_t a1)
{
  v2 = sub_23B4AFE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAFC8(uint64_t a1)
{
  v2 = sub_23B4AFE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB004(uint64_t a1)
{
  v2 = sub_23B4AFDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB040(uint64_t a1)
{
  v2 = sub_23B4AFDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB07C(uint64_t a1)
{
  v2 = sub_23B4AFE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB0B8(uint64_t a1)
{
  v2 = sub_23B4AFE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB0F4(uint64_t a1)
{
  v2 = sub_23B4AFD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB130(uint64_t a1)
{
  v2 = sub_23B4AFD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB16C(uint64_t a1)
{
  v2 = sub_23B4B0A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB1A8(uint64_t a1)
{
  v2 = sub_23B4B0A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB1E4(uint64_t a1)
{
  v2 = sub_23B4B09E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB220(uint64_t a1)
{
  v2 = sub_23B4B09E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB25C(uint64_t a1)
{
  v2 = sub_23B4B0940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB298(uint64_t a1)
{
  v2 = sub_23B4B0940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB2D4(uint64_t a1)
{
  v2 = sub_23B4B0994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB310(uint64_t a1)
{
  v2 = sub_23B4B0994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB34C(uint64_t a1)
{
  v2 = sub_23B4B08EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB388(uint64_t a1)
{
  v2 = sub_23B4B08EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB3C4(uint64_t a1)
{
  v2 = sub_23B4B064C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB400(uint64_t a1)
{
  v2 = sub_23B4B064C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB43C(uint64_t a1)
{
  v2 = sub_23B4B04FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB478(uint64_t a1)
{
  v2 = sub_23B4B04FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB4B4(uint64_t a1)
{
  v2 = sub_23B4B025C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB4F0(uint64_t a1)
{
  v2 = sub_23B4B025C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB52C(uint64_t a1)
{
  v2 = sub_23B4B03AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB568(uint64_t a1)
{
  v2 = sub_23B4B03AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB5A4(uint64_t a1)
{
  v2 = sub_23B4B010C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB5E0(uint64_t a1)
{
  v2 = sub_23B4B010C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrecipitationShift.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_107();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134330, &qword_23B51DCD8);
  v27 = OUTLINED_FUNCTION_5(v26);
  v927 = v28;
  v928 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  v926 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134338, &qword_23B51DCE0);
  v34 = OUTLINED_FUNCTION_5(v33);
  v924 = v35;
  v925 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  v923 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134340, &qword_23B51DCE8);
  v41 = OUTLINED_FUNCTION_5(v40);
  v921 = v42;
  v922 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  v920 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134348, &qword_23B51DCF0);
  v48 = OUTLINED_FUNCTION_5(v47);
  v918 = v49;
  v919 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  v917 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134350, &qword_23B51DCF8);
  v55 = OUTLINED_FUNCTION_5(v54);
  v915 = v56;
  v916 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  v914 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134358, &qword_23B51DD00);
  v62 = OUTLINED_FUNCTION_5(v61);
  v912 = v63;
  v913 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  v911 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134360, &qword_23B51DD08);
  OUTLINED_FUNCTION_2_0(v68, &a18);
  v909 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134368, &qword_23B51DD10);
  OUTLINED_FUNCTION_2_0(v74, &a15);
  v906 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134370, &qword_23B51DD18);
  OUTLINED_FUNCTION_2_0(v80, &a12);
  v903 = v81;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134378, &qword_23B51DD20);
  OUTLINED_FUNCTION_2_0(v86, &a9);
  v900 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134380, &qword_23B51DD28);
  OUTLINED_FUNCTION_2_0(v92, &v930);
  v897 = v93;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134388, &qword_23B51DD30);
  OUTLINED_FUNCTION_2_0(v98, &v927);
  v894 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v103);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134390, &qword_23B51DD38);
  OUTLINED_FUNCTION_2_0(v104, &v924);
  v891 = v105;
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134398, &qword_23B51DD40);
  OUTLINED_FUNCTION_2_0(v110, &v921);
  v888 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v115);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343A0, &qword_23B51DD48);
  OUTLINED_FUNCTION_2_0(v116, &v918);
  v885 = v117;
  v119 = *(v118 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343A8, &qword_23B51DD50);
  OUTLINED_FUNCTION_2_0(v122, &v915);
  v882 = v123;
  v125 = *(v124 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343B0, &qword_23B51DD58);
  OUTLINED_FUNCTION_2_0(v128, &v912);
  v879 = v129;
  v131 = *(v130 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343B8, &qword_23B51DD60);
  OUTLINED_FUNCTION_2_0(v134, &v909);
  v876 = v135;
  v137 = *(v136 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v139);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343C0, &qword_23B51DD68);
  OUTLINED_FUNCTION_2_0(v140, &v906);
  v873 = v141;
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v145);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343C8, &qword_23B51DD70);
  OUTLINED_FUNCTION_2_0(v146, &v903);
  v870 = v147;
  v149 = *(v148 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v151);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343D0, &qword_23B51DD78);
  OUTLINED_FUNCTION_2_0(v152, &v900);
  v867 = v153;
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v157);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343D8, &qword_23B51DD80);
  OUTLINED_FUNCTION_2_0(v158, &v897);
  v864 = v159;
  v161 = *(v160 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v163);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343E0, &qword_23B51DD88);
  OUTLINED_FUNCTION_2_0(v164, &v894);
  v861 = v165;
  v167 = *(v166 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343E8, &qword_23B51DD90);
  OUTLINED_FUNCTION_2_0(v170, &v891);
  v858 = v171;
  v173 = *(v172 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v175);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343F0, &qword_23B51DD98);
  OUTLINED_FUNCTION_2_0(v176, &v888);
  v855 = v177;
  v179 = *(v178 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343F8, &qword_23B51DDA0);
  OUTLINED_FUNCTION_2_0(v182, &v885);
  v852 = v183;
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v187);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134400, &qword_23B51DDA8);
  OUTLINED_FUNCTION_2_0(v188, &v882);
  v849 = v189;
  v191 = *(v190 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v193);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134408, &qword_23B51DDB0);
  OUTLINED_FUNCTION_2_0(v194, &v879);
  v846 = v195;
  v197 = *(v196 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v199);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134410, &qword_23B51DDB8);
  OUTLINED_FUNCTION_2_0(v200, &v876);
  v843 = v201;
  v203 = *(v202 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v205);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134418, &qword_23B51DDC0);
  OUTLINED_FUNCTION_2_0(v206, &v873);
  v840 = v207;
  v209 = *(v208 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v211);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134420, &qword_23B51DDC8);
  OUTLINED_FUNCTION_2_0(v212, &v870);
  v837 = v213;
  v215 = *(v214 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v217);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134428, &qword_23B51DDD0);
  OUTLINED_FUNCTION_2_0(v218, &v867);
  v834 = v219;
  v221 = *(v220 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v223);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134430, &qword_23B51DDD8);
  OUTLINED_FUNCTION_2_0(v224, &v864);
  v831 = v225;
  v227 = *(v226 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v229);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134438, &qword_23B51DDE0);
  OUTLINED_FUNCTION_2_0(v230, &v861);
  v828 = v231;
  v233 = *(v232 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v235);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134440, &qword_23B51DDE8);
  OUTLINED_FUNCTION_2_0(v236, &v858);
  v825 = v237;
  v239 = *(v238 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v241);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134448, &qword_23B51DDF0);
  OUTLINED_FUNCTION_2_0(v242, &v855);
  v822 = v243;
  v245 = *(v244 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v247);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134450, &qword_23B51DDF8);
  OUTLINED_FUNCTION_2_0(v248, &v852);
  v819 = v249;
  v251 = *(v250 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v252);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v253);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134458, &qword_23B51DE00);
  OUTLINED_FUNCTION_2_0(v254, &v849);
  v816 = v255;
  v257 = *(v256 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v259);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134460, &qword_23B51DE08);
  OUTLINED_FUNCTION_2_0(v260, &v846);
  v813 = v261;
  v263 = *(v262 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v264);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v265);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134468, &qword_23B51DE10);
  OUTLINED_FUNCTION_2_0(v266, &v843);
  v810 = v267;
  v269 = *(v268 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v270);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v271);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134470, &qword_23B51DE18);
  OUTLINED_FUNCTION_2_0(v272, &v840);
  v807 = v273;
  v275 = *(v274 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v276);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v277);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134478, &qword_23B51DE20);
  OUTLINED_FUNCTION_2_0(v278, &v837);
  v804 = v279;
  v281 = *(v280 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v283);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134480, &qword_23B51DE28);
  OUTLINED_FUNCTION_2_0(v284, &v834);
  v801 = v285;
  v287 = *(v286 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v288);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v289);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134488, &qword_23B51DE30);
  OUTLINED_FUNCTION_2_0(v290, &v831);
  v798 = v291;
  v293 = *(v292 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v295);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134490, &qword_23B51DE38);
  OUTLINED_FUNCTION_2_0(v296, &v828);
  v795 = v297;
  v299 = *(v298 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v300);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v301);
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134498, &qword_23B51DE40);
  OUTLINED_FUNCTION_2_0(v302, &v825);
  v792 = v303;
  v305 = *(v304 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v307);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344A0, &qword_23B51DE48);
  OUTLINED_FUNCTION_2_0(v308, &v822);
  v789 = v309;
  v311 = *(v310 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v312);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v313);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344A8, &qword_23B51DE50);
  OUTLINED_FUNCTION_2_0(v314, &v819);
  v786 = v315;
  v317 = *(v316 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v318);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v319);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344B0, &qword_23B51DE58);
  OUTLINED_FUNCTION_2_0(v320, &v816);
  v783 = v321;
  v323 = *(v322 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v324);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v325);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344B8, &qword_23B51DE60);
  OUTLINED_FUNCTION_2_0(v326, &v813);
  v780 = v327;
  v329 = *(v328 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v331);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344C0, &qword_23B51DE68);
  OUTLINED_FUNCTION_2_0(v332, &v810);
  v777 = v333;
  v335 = *(v334 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v336);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v337);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344C8, &qword_23B51DE70);
  OUTLINED_FUNCTION_2_0(v338, &v807);
  v774 = v339;
  v341 = *(v340 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v342);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v343);
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344D0, &qword_23B51DE78);
  OUTLINED_FUNCTION_2_0(v344, &v804);
  v771 = v345;
  v347 = *(v346 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v348);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v349);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344D8, &qword_23B51DE80);
  OUTLINED_FUNCTION_2_0(v350, &v801);
  v768 = v351;
  v353 = *(v352 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v355);
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344E0, &qword_23B51DE88);
  OUTLINED_FUNCTION_2_0(v356, &v798);
  v765 = v357;
  v359 = *(v358 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v360);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v361);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344E8, &qword_23B51DE90);
  OUTLINED_FUNCTION_2_0(v362, &v795);
  v762 = v363;
  v365 = *(v364 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v367);
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344F0, &qword_23B51DE98);
  OUTLINED_FUNCTION_2_0(v368, &v792);
  v759 = v369;
  v371 = *(v370 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v372);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v373);
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344F8, &qword_23B51DEA0);
  OUTLINED_FUNCTION_2_0(v374, &v789);
  v756 = v375;
  v377 = *(v376 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v379);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134500, &qword_23B51DEA8);
  OUTLINED_FUNCTION_2_0(v380, &v786);
  v753 = v381;
  v383 = *(v382 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v384);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v385);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134508, &qword_23B51DEB0);
  OUTLINED_FUNCTION_2_0(v386, &v783);
  v750 = v387;
  v389 = *(v388 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v390);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v391);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134510, &qword_23B51DEB8);
  OUTLINED_FUNCTION_2_0(v392, &v780);
  v747 = v393;
  v395 = *(v394 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v396);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v397);
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134518, &qword_23B51DEC0);
  OUTLINED_FUNCTION_2_0(v398, &v777);
  v744 = v399;
  v401 = *(v400 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v403);
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134520, &qword_23B51DEC8);
  OUTLINED_FUNCTION_2_0(v404, &v774);
  v741 = v405;
  v407 = *(v406 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v408);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v409);
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134528, &qword_23B51DED0);
  OUTLINED_FUNCTION_2_0(v410, &v771);
  v738 = v411;
  v413 = *(v412 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v415);
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134530, &qword_23B51DED8);
  OUTLINED_FUNCTION_2_0(v416, &v768);
  v735 = v417;
  v419 = *(v418 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v421);
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134538, &qword_23B51DEE0);
  OUTLINED_FUNCTION_2_0(v422, &v765);
  v732 = v423;
  v425 = *(v424 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v427);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134540, &qword_23B51DEE8);
  OUTLINED_FUNCTION_2_0(v428, &v762);
  v729 = v429;
  v431 = *(v430 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v432);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v433);
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134548, &qword_23B51DEF0);
  OUTLINED_FUNCTION_2_0(v434, &v759);
  v726 = v435;
  v437 = *(v436 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v439);
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134550, &qword_23B51DEF8);
  OUTLINED_FUNCTION_2_0(v440, &v756);
  v723 = v441;
  v443 = *(v442 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v444);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v445);
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134558, &qword_23B51DF00);
  OUTLINED_FUNCTION_2_0(v446, &v753);
  v720 = v447;
  v449 = *(v448 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v450);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v451);
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134560, &qword_23B51DF08);
  OUTLINED_FUNCTION_2_0(v452, &v750);
  v717 = v453;
  v455 = *(v454 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v456);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v457);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134568, &qword_23B51DF10);
  OUTLINED_FUNCTION_2_0(v458, &v747);
  v714 = v459;
  v461 = *(v460 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v462);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v463);
  v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134570, &qword_23B51DF18);
  OUTLINED_FUNCTION_2_0(v464, &v744);
  v711 = v465;
  v467 = *(v466 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v468);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v469);
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134578, &qword_23B51DF20);
  OUTLINED_FUNCTION_2_0(v470, &v741);
  v708 = v471;
  v473 = *(v472 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v475);
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134580, &qword_23B51DF28);
  OUTLINED_FUNCTION_2_0(v476, &v738);
  v705 = v477;
  v479 = *(v478 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v480);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v481);
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134588, &qword_23B51DF30);
  OUTLINED_FUNCTION_2_0(v482, &v735);
  v702 = v483;
  v485 = *(v484 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v486);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v487);
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134590, &qword_23B51DF38);
  OUTLINED_FUNCTION_2_0(v488, &v732);
  v699 = v489;
  v491 = *(v490 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v492);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v493);
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134598, &qword_23B51DF40);
  OUTLINED_FUNCTION_2_0(v494, &v729);
  v696 = v495;
  v497 = *(v496 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v498);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v499);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345A0, &qword_23B51DF48);
  OUTLINED_FUNCTION_2_0(v500, &v726);
  v693 = v501;
  v503 = *(v502 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v504);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v505);
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345A8, &qword_23B51DF50);
  OUTLINED_FUNCTION_2_0(v506, &v723);
  v690 = v507;
  v509 = *(v508 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v510);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v511);
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345B0, &qword_23B51DF58);
  OUTLINED_FUNCTION_2_0(v512, &v720);
  v687 = v513;
  v515 = *(v514 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v516);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v517);
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345B8, &qword_23B51DF60);
  OUTLINED_FUNCTION_2_0(v518, &v717);
  v684 = v519;
  v521 = *(v520 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v522);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v523);
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345C0, &qword_23B51DF68);
  OUTLINED_FUNCTION_2_0(v524, &v714);
  v681 = v525;
  v527 = *(v526 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v528);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v529);
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345C8, &qword_23B51DF70);
  OUTLINED_FUNCTION_2_0(v530, &v711);
  v678 = v531;
  v533 = *(v532 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v534);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v535);
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345D0, &qword_23B51DF78);
  OUTLINED_FUNCTION_2_0(v536, &v708);
  v675 = v537;
  v539 = *(v538 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v540);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v541);
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345D8, &qword_23B51DF80);
  OUTLINED_FUNCTION_2_0(v542, &v705);
  v672 = v543;
  v545 = *(v544 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v546);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v547);
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345E0, &qword_23B51DF88);
  OUTLINED_FUNCTION_2_0(v548, &v702);
  v669 = v549;
  v551 = *(v550 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v552);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v553);
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345E8, &qword_23B51DF90);
  OUTLINED_FUNCTION_2_0(v554, &v699);
  v666 = v555;
  v557 = *(v556 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v558);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v559);
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345F0, &qword_23B51DF98);
  OUTLINED_FUNCTION_2_0(v560, &v696);
  v663 = v561;
  v563 = *(v562 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v564);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v565);
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345F8, &qword_23B51DFA0);
  OUTLINED_FUNCTION_2_0(v566, &v693);
  v660[31] = v567;
  v569 = *(v568 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v570);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v571);
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134600, &qword_23B51DFA8);
  OUTLINED_FUNCTION_2_0(v572, &v690);
  v660[28] = v573;
  v575 = *(v574 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v576);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v577);
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134608, &qword_23B51DFB0);
  OUTLINED_FUNCTION_2_0(v578, &v687);
  v660[25] = v579;
  v581 = *(v580 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v582);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v583);
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134610, &qword_23B51DFB8);
  OUTLINED_FUNCTION_2_0(v584, &v684);
  v660[22] = v585;
  v587 = *(v586 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v588);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v589);
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134618, &qword_23B51DFC0);
  OUTLINED_FUNCTION_2_0(v590, &v681);
  v660[19] = v591;
  v593 = *(v592 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v594);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v595);
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134620, &qword_23B51DFC8);
  OUTLINED_FUNCTION_2_0(v596, &v678);
  v660[16] = v597;
  v599 = *(v598 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v600);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v601);
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134628, &qword_23B51DFD0);
  OUTLINED_FUNCTION_2_0(v602, &v675);
  v660[13] = v603;
  v605 = *(v604 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v606);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v607);
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134630, &qword_23B51DFD8);
  OUTLINED_FUNCTION_2_0(v608, &v672);
  v660[10] = v609;
  v611 = *(v610 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v612);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v613);
  v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134638, &qword_23B51DFE0);
  OUTLINED_FUNCTION_2_0(v614, &v669);
  v660[7] = v615;
  v617 = *(v616 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v618);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v619);
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134640, &qword_23B51DFE8);
  OUTLINED_FUNCTION_2_0(v620, &v666);
  v660[4] = v621;
  v623 = *(v622 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v624);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v625);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134648, &qword_23B51DFF0);
  OUTLINED_FUNCTION_2_0(v626, &v663);
  v660[1] = v627;
  v629 = *(v628 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v630);
  v632 = v660 - v631;
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134650, &qword_23B51DFF8);
  OUTLINED_FUNCTION_5(v633);
  v660[0] = v634;
  v636 = *(v635 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v637);
  v639 = v660 - v638;
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134658, &qword_23B51E000);
  OUTLINED_FUNCTION_5(v931);
  v641 = v640;
  v643 = *(v642 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v644);
  v646 = v660 - v645;
  v647 = *v23;
  v648 = v25[4];
  v649 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_23B4AF980();
  v930 = v646;
  sub_23B50D974();
  v650 = (v641 + 8);
  switch(v647)
  {
    case 1:
      HIBYTE(a10) = 1;
      sub_23B4B1A50();
      v649 = v930;
      v639 = v931;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1(&v662);
      v654 = v632;
      v656 = &v663;
      goto LABEL_101;
    case 2:
      HIBYTE(a10) = 2;
      sub_23B4B19FC();
      OUTLINED_FUNCTION_6_24(&v664);
      v654 = OUTLINED_FUNCTION_8_26(&v665);
      v656 = &v666;
      goto LABEL_101;
    case 3:
      HIBYTE(a10) = 3;
      sub_23B4B19A8();
      OUTLINED_FUNCTION_6_24(&v667);
      v654 = OUTLINED_FUNCTION_8_26(&v668);
      v656 = &v669;
      goto LABEL_101;
    case 4:
      HIBYTE(a10) = 4;
      sub_23B4B1954();
      OUTLINED_FUNCTION_6_24(&v670);
      v654 = OUTLINED_FUNCTION_8_26(&v671);
      v656 = &v672;
      goto LABEL_101;
    case 5:
      HIBYTE(a10) = 5;
      sub_23B4B1900();
      OUTLINED_FUNCTION_6_24(&v673);
      v654 = OUTLINED_FUNCTION_8_26(&v674);
      v656 = &v675;
      goto LABEL_101;
    case 6:
      HIBYTE(a10) = 6;
      sub_23B4B18AC();
      OUTLINED_FUNCTION_6_24(&v676);
      v654 = OUTLINED_FUNCTION_8_26(&v677);
      v656 = &v678;
      goto LABEL_101;
    case 7:
      HIBYTE(a10) = 7;
      sub_23B4B1858();
      OUTLINED_FUNCTION_6_24(&v679);
      v654 = OUTLINED_FUNCTION_8_26(&v680);
      v656 = &v681;
      goto LABEL_101;
    case 8:
      HIBYTE(a10) = 8;
      sub_23B4B1804();
      OUTLINED_FUNCTION_6_24(&v682);
      v654 = OUTLINED_FUNCTION_8_26(&v683);
      v656 = &v684;
      goto LABEL_101;
    case 9:
      HIBYTE(a10) = 9;
      sub_23B4B17B0();
      OUTLINED_FUNCTION_6_24(&v685);
      v654 = OUTLINED_FUNCTION_8_26(&v686);
      v656 = &v687;
      goto LABEL_101;
    case 10:
      HIBYTE(a10) = 10;
      sub_23B4B175C();
      OUTLINED_FUNCTION_6_24(&v688);
      v654 = OUTLINED_FUNCTION_8_26(&v689);
      v656 = &v690;
      goto LABEL_101;
    case 11:
      HIBYTE(a10) = 11;
      sub_23B4B1708();
      OUTLINED_FUNCTION_6_24(&v691);
      v654 = OUTLINED_FUNCTION_8_26(&v692);
      v656 = &v693;
      goto LABEL_101;
    case 12:
      HIBYTE(a10) = 12;
      sub_23B4B16B4();
      OUTLINED_FUNCTION_6_24(&v694);
      v654 = OUTLINED_FUNCTION_8_26(&v695);
      v656 = &v696;
      goto LABEL_101;
    case 13:
      HIBYTE(a10) = 13;
      sub_23B4B1660();
      OUTLINED_FUNCTION_6_24(&v697);
      v654 = OUTLINED_FUNCTION_8_26(&v698);
      v656 = &v699;
      goto LABEL_101;
    case 14:
      HIBYTE(a10) = 14;
      sub_23B4B160C();
      OUTLINED_FUNCTION_6_24(&v700);
      v654 = OUTLINED_FUNCTION_8_26(&v701);
      v656 = &v702;
      goto LABEL_101;
    case 15:
      HIBYTE(a10) = 15;
      sub_23B4B15B8();
      OUTLINED_FUNCTION_6_24(&v703);
      v654 = OUTLINED_FUNCTION_8_26(&v704);
      v656 = &v705;
      goto LABEL_101;
    case 16:
      HIBYTE(a10) = 16;
      sub_23B4B1564();
      OUTLINED_FUNCTION_6_24(&v706);
      v654 = OUTLINED_FUNCTION_8_26(&v707);
      v656 = &v708;
      goto LABEL_101;
    case 17:
      HIBYTE(a10) = 17;
      sub_23B4B1510();
      OUTLINED_FUNCTION_6_24(&v709);
      v654 = OUTLINED_FUNCTION_8_26(&v710);
      v656 = &v711;
      goto LABEL_101;
    case 18:
      HIBYTE(a10) = 18;
      sub_23B4B14BC();
      OUTLINED_FUNCTION_6_24(&v712);
      v654 = OUTLINED_FUNCTION_8_26(&v713);
      v656 = &v714;
      goto LABEL_101;
    case 19:
      HIBYTE(a10) = 19;
      sub_23B4B1468();
      OUTLINED_FUNCTION_6_24(&v715);
      v654 = OUTLINED_FUNCTION_8_26(&v716);
      v656 = &v717;
      goto LABEL_101;
    case 20:
      HIBYTE(a10) = 20;
      sub_23B4B1414();
      OUTLINED_FUNCTION_6_24(&v718);
      v654 = OUTLINED_FUNCTION_8_26(&v719);
      v656 = &v720;
      goto LABEL_101;
    case 21:
      HIBYTE(a10) = 21;
      sub_23B4B13C0();
      OUTLINED_FUNCTION_6_24(&v721);
      v654 = OUTLINED_FUNCTION_8_26(&v722);
      v656 = &v723;
      goto LABEL_101;
    case 22:
      HIBYTE(a10) = 22;
      sub_23B4B136C();
      OUTLINED_FUNCTION_6_24(&v724);
      v654 = OUTLINED_FUNCTION_8_26(&v725);
      v656 = &v726;
      goto LABEL_101;
    case 23:
      HIBYTE(a10) = 23;
      sub_23B4B1318();
      OUTLINED_FUNCTION_6_24(&v727);
      v654 = OUTLINED_FUNCTION_8_26(&v728);
      v656 = &v729;
      goto LABEL_101;
    case 24:
      HIBYTE(a10) = 24;
      sub_23B4B12C4();
      OUTLINED_FUNCTION_6_24(&v730);
      v654 = OUTLINED_FUNCTION_8_26(&v731);
      v656 = &v732;
      goto LABEL_101;
    case 25:
      HIBYTE(a10) = 25;
      sub_23B4B1270();
      OUTLINED_FUNCTION_6_24(&v733);
      v654 = OUTLINED_FUNCTION_8_26(&v734);
      v656 = &v735;
      goto LABEL_101;
    case 26:
      HIBYTE(a10) = 26;
      sub_23B4B121C();
      OUTLINED_FUNCTION_6_24(&v736);
      v654 = OUTLINED_FUNCTION_8_26(&v737);
      v656 = &v738;
      goto LABEL_101;
    case 27:
      HIBYTE(a10) = 27;
      sub_23B4B11C8();
      OUTLINED_FUNCTION_6_24(&v739);
      v654 = OUTLINED_FUNCTION_8_26(&v740);
      v656 = &v741;
      goto LABEL_101;
    case 28:
      HIBYTE(a10) = 28;
      sub_23B4B1174();
      OUTLINED_FUNCTION_6_24(&v742);
      v654 = OUTLINED_FUNCTION_8_26(&v743);
      v656 = &v744;
      goto LABEL_101;
    case 29:
      HIBYTE(a10) = 29;
      sub_23B4B1120();
      OUTLINED_FUNCTION_6_24(&v745);
      v654 = OUTLINED_FUNCTION_8_26(&v746);
      v656 = &v747;
      goto LABEL_101;
    case 30:
      HIBYTE(a10) = 30;
      sub_23B4B10CC();
      OUTLINED_FUNCTION_6_24(&v748);
      v654 = OUTLINED_FUNCTION_8_26(&v749);
      v656 = &v750;
      goto LABEL_101;
    case 31:
      HIBYTE(a10) = 31;
      sub_23B4B1078();
      OUTLINED_FUNCTION_6_24(&v751);
      v654 = OUTLINED_FUNCTION_8_26(&v752);
      v656 = &v753;
      goto LABEL_101;
    case 32:
      HIBYTE(a10) = 32;
      sub_23B4B1024();
      OUTLINED_FUNCTION_6_24(&v754);
      v654 = OUTLINED_FUNCTION_8_26(&v755);
      v656 = &v756;
      goto LABEL_101;
    case 33:
      HIBYTE(a10) = 33;
      sub_23B4B0FD0();
      OUTLINED_FUNCTION_6_24(&v757);
      v654 = OUTLINED_FUNCTION_8_26(&v758);
      v656 = &v759;
      goto LABEL_101;
    case 34:
      HIBYTE(a10) = 34;
      sub_23B4B0F7C();
      OUTLINED_FUNCTION_6_24(&v760);
      v654 = OUTLINED_FUNCTION_8_26(&v761);
      v656 = &v762;
      goto LABEL_101;
    case 35:
      HIBYTE(a10) = 35;
      sub_23B4B0F28();
      OUTLINED_FUNCTION_6_24(&v763);
      v654 = OUTLINED_FUNCTION_8_26(&v764);
      v656 = &v765;
      goto LABEL_101;
    case 36:
      HIBYTE(a10) = 36;
      sub_23B4B0ED4();
      OUTLINED_FUNCTION_6_24(&v766);
      v654 = OUTLINED_FUNCTION_8_26(&v767);
      v656 = &v768;
      goto LABEL_101;
    case 37:
      HIBYTE(a10) = 37;
      sub_23B4B0E80();
      OUTLINED_FUNCTION_6_24(&v769);
      v654 = OUTLINED_FUNCTION_8_26(&v770);
      v656 = &v771;
      goto LABEL_101;
    case 38:
      HIBYTE(a10) = 38;
      sub_23B4B0E2C();
      OUTLINED_FUNCTION_6_24(&v772);
      v654 = OUTLINED_FUNCTION_8_26(&v773);
      v656 = &v774;
      goto LABEL_101;
    case 39:
      HIBYTE(a10) = 39;
      sub_23B4B0DD8();
      OUTLINED_FUNCTION_6_24(&v775);
      v654 = OUTLINED_FUNCTION_8_26(&v776);
      v656 = &v777;
      goto LABEL_101;
    case 40:
      HIBYTE(a10) = 40;
      sub_23B4B0D84();
      OUTLINED_FUNCTION_6_24(&v778);
      v654 = OUTLINED_FUNCTION_8_26(&v779);
      v656 = &v780;
      goto LABEL_101;
    case 41:
      HIBYTE(a10) = 41;
      sub_23B4B0D30();
      OUTLINED_FUNCTION_6_24(&v781);
      v654 = OUTLINED_FUNCTION_8_26(&v782);
      v656 = &v783;
      goto LABEL_101;
    case 42:
      HIBYTE(a10) = 42;
      sub_23B4B0CDC();
      OUTLINED_FUNCTION_6_24(&v784);
      v654 = OUTLINED_FUNCTION_8_26(&v785);
      v656 = &v786;
      goto LABEL_101;
    case 43:
      HIBYTE(a10) = 43;
      sub_23B4B0C88();
      OUTLINED_FUNCTION_6_24(&v787);
      v654 = OUTLINED_FUNCTION_8_26(&v788);
      v656 = &v789;
      goto LABEL_101;
    case 44:
      HIBYTE(a10) = 44;
      sub_23B4B0C34();
      OUTLINED_FUNCTION_6_24(&v790);
      v654 = OUTLINED_FUNCTION_8_26(&v791);
      v656 = &v792;
      goto LABEL_101;
    case 45:
      HIBYTE(a10) = 45;
      sub_23B4B0BE0();
      OUTLINED_FUNCTION_6_24(&v793);
      v654 = OUTLINED_FUNCTION_8_26(&v794);
      v656 = &v795;
      goto LABEL_101;
    case 46:
      HIBYTE(a10) = 46;
      sub_23B4B0B8C();
      OUTLINED_FUNCTION_6_24(&v796);
      v654 = OUTLINED_FUNCTION_8_26(&v797);
      v656 = &v798;
      goto LABEL_101;
    case 47:
      HIBYTE(a10) = 47;
      sub_23B4B0B38();
      OUTLINED_FUNCTION_6_24(&v799);
      v654 = OUTLINED_FUNCTION_8_26(&v800);
      v656 = &v801;
      goto LABEL_101;
    case 48:
      HIBYTE(a10) = 48;
      sub_23B4B0AE4();
      OUTLINED_FUNCTION_6_24(&v802);
      v654 = OUTLINED_FUNCTION_8_26(&v803);
      v656 = &v804;
      goto LABEL_101;
    case 49:
      HIBYTE(a10) = 49;
      sub_23B4B0A90();
      OUTLINED_FUNCTION_6_24(&v805);
      v654 = OUTLINED_FUNCTION_8_26(&v806);
      v656 = &v807;
      goto LABEL_101;
    case 50:
      HIBYTE(a10) = 50;
      sub_23B4B0A3C();
      OUTLINED_FUNCTION_6_24(&v808);
      v654 = OUTLINED_FUNCTION_8_26(&v809);
      v656 = &v810;
      goto LABEL_101;
    case 51:
      HIBYTE(a10) = 51;
      sub_23B4B09E8();
      OUTLINED_FUNCTION_6_24(&v811);
      v654 = OUTLINED_FUNCTION_8_26(&v812);
      v656 = &v813;
      goto LABEL_101;
    case 52:
      HIBYTE(a10) = 52;
      sub_23B4B0994();
      OUTLINED_FUNCTION_6_24(&v814);
      v654 = OUTLINED_FUNCTION_8_26(&v815);
      v656 = &v816;
      goto LABEL_101;
    case 53:
      HIBYTE(a10) = 53;
      sub_23B4B0940();
      OUTLINED_FUNCTION_6_24(&v817);
      v654 = OUTLINED_FUNCTION_8_26(&v818);
      v656 = &v819;
      goto LABEL_101;
    case 54:
      HIBYTE(a10) = 54;
      sub_23B4B08EC();
      OUTLINED_FUNCTION_6_24(&v820);
      v654 = OUTLINED_FUNCTION_8_26(&v821);
      v656 = &v822;
      goto LABEL_101;
    case 55:
      HIBYTE(a10) = 55;
      sub_23B4B0898();
      OUTLINED_FUNCTION_6_24(&v823);
      v654 = OUTLINED_FUNCTION_8_26(&v824);
      v656 = &v825;
      goto LABEL_101;
    case 56:
      HIBYTE(a10) = 56;
      sub_23B4B0844();
      OUTLINED_FUNCTION_6_24(&v826);
      v654 = OUTLINED_FUNCTION_8_26(&v827);
      v656 = &v828;
      goto LABEL_101;
    case 57:
      HIBYTE(a10) = 57;
      sub_23B4B07F0();
      OUTLINED_FUNCTION_6_24(&v829);
      v654 = OUTLINED_FUNCTION_8_26(&v830);
      v656 = &v831;
      goto LABEL_101;
    case 58:
      HIBYTE(a10) = 58;
      sub_23B4B079C();
      OUTLINED_FUNCTION_6_24(&v832);
      v654 = OUTLINED_FUNCTION_8_26(&v833);
      v656 = &v834;
      goto LABEL_101;
    case 59:
      HIBYTE(a10) = 59;
      sub_23B4B0748();
      OUTLINED_FUNCTION_6_24(&v835);
      v654 = OUTLINED_FUNCTION_8_26(&v836);
      v656 = &v837;
      goto LABEL_101;
    case 60:
      HIBYTE(a10) = 60;
      sub_23B4B06F4();
      OUTLINED_FUNCTION_6_24(&v838);
      v654 = OUTLINED_FUNCTION_8_26(&v839);
      v656 = &v840;
      goto LABEL_101;
    case 61:
      HIBYTE(a10) = 61;
      sub_23B4B06A0();
      OUTLINED_FUNCTION_6_24(&v841);
      v654 = OUTLINED_FUNCTION_8_26(&v842);
      v656 = &v843;
      goto LABEL_101;
    case 62:
      HIBYTE(a10) = 62;
      sub_23B4B064C();
      OUTLINED_FUNCTION_6_24(&v844);
      v654 = OUTLINED_FUNCTION_8_26(&v845);
      v656 = &v846;
      goto LABEL_101;
    case 63:
      HIBYTE(a10) = 63;
      sub_23B4B05F8();
      OUTLINED_FUNCTION_6_24(&v847);
      v654 = OUTLINED_FUNCTION_8_26(&v848);
      v656 = &v849;
      goto LABEL_101;
    case 64:
      HIBYTE(a10) = 64;
      sub_23B4B05A4();
      OUTLINED_FUNCTION_6_24(&v850);
      v654 = OUTLINED_FUNCTION_8_26(&v851);
      v656 = &v852;
      goto LABEL_101;
    case 65:
      HIBYTE(a10) = 65;
      sub_23B4B0550();
      OUTLINED_FUNCTION_6_24(&v853);
      v654 = OUTLINED_FUNCTION_8_26(&v854);
      v656 = &v855;
      goto LABEL_101;
    case 66:
      HIBYTE(a10) = 66;
      sub_23B4B04FC();
      OUTLINED_FUNCTION_6_24(&v856);
      v654 = OUTLINED_FUNCTION_8_26(&v857);
      v656 = &v858;
      goto LABEL_101;
    case 67:
      HIBYTE(a10) = 67;
      sub_23B4B04A8();
      OUTLINED_FUNCTION_6_24(&v859);
      v654 = OUTLINED_FUNCTION_8_26(&v860);
      v656 = &v861;
      goto LABEL_101;
    case 68:
      HIBYTE(a10) = 68;
      sub_23B4B0454();
      OUTLINED_FUNCTION_6_24(&v862);
      v654 = OUTLINED_FUNCTION_8_26(&v863);
      v656 = &v864;
      goto LABEL_101;
    case 69:
      HIBYTE(a10) = 69;
      sub_23B4B0400();
      OUTLINED_FUNCTION_6_24(&v865);
      v654 = OUTLINED_FUNCTION_8_26(&v866);
      v656 = &v867;
      goto LABEL_101;
    case 70:
      HIBYTE(a10) = 70;
      sub_23B4B03AC();
      OUTLINED_FUNCTION_6_24(&v868);
      v654 = OUTLINED_FUNCTION_8_26(&v869);
      v656 = &v870;
      goto LABEL_101;
    case 71:
      HIBYTE(a10) = 71;
      sub_23B4B0358();
      OUTLINED_FUNCTION_6_24(&v871);
      v654 = OUTLINED_FUNCTION_8_26(&v872);
      v656 = &v873;
      goto LABEL_101;
    case 72:
      HIBYTE(a10) = 72;
      sub_23B4B0304();
      OUTLINED_FUNCTION_6_24(&v874);
      v654 = OUTLINED_FUNCTION_8_26(&v875);
      v656 = &v876;
      goto LABEL_101;
    case 73:
      HIBYTE(a10) = 73;
      sub_23B4B02B0();
      OUTLINED_FUNCTION_6_24(&v877);
      v654 = OUTLINED_FUNCTION_8_26(&v878);
      v656 = &v879;
      goto LABEL_101;
    case 74:
      HIBYTE(a10) = 74;
      sub_23B4B025C();
      OUTLINED_FUNCTION_6_24(&v880);
      v654 = OUTLINED_FUNCTION_8_26(&v881);
      v656 = &v882;
      goto LABEL_101;
    case 75:
      HIBYTE(a10) = 75;
      sub_23B4B0208();
      OUTLINED_FUNCTION_6_24(&v883);
      v654 = OUTLINED_FUNCTION_8_26(&v884);
      v656 = &v885;
      goto LABEL_101;
    case 76:
      HIBYTE(a10) = 76;
      sub_23B4B01B4();
      OUTLINED_FUNCTION_6_24(&v886);
      v654 = OUTLINED_FUNCTION_8_26(&v887);
      v656 = &v888;
      goto LABEL_101;
    case 77:
      HIBYTE(a10) = 77;
      sub_23B4B0160();
      OUTLINED_FUNCTION_6_24(&v889);
      v654 = OUTLINED_FUNCTION_8_26(&v890);
      v656 = &v891;
      goto LABEL_101;
    case 78:
      HIBYTE(a10) = 78;
      sub_23B4B010C();
      OUTLINED_FUNCTION_6_24(&v892);
      v654 = OUTLINED_FUNCTION_8_26(&v893);
      v656 = &v894;
      goto LABEL_101;
    case 79:
      HIBYTE(a10) = 79;
      sub_23B4B00B8();
      OUTLINED_FUNCTION_6_24(&v895);
      v654 = OUTLINED_FUNCTION_8_26(&v896);
      v656 = &v897;
      goto LABEL_101;
    case 80:
      HIBYTE(a10) = 80;
      sub_23B4B0064();
      OUTLINED_FUNCTION_6_24(&v898);
      v654 = OUTLINED_FUNCTION_8_26(&v899);
      v656 = &v900;
      goto LABEL_101;
    case 81:
      HIBYTE(a10) = 81;
      sub_23B4B0010();
      OUTLINED_FUNCTION_6_24(&v901);
      v654 = OUTLINED_FUNCTION_8_26(&v902);
      v656 = &v903;
      goto LABEL_101;
    case 82:
      HIBYTE(a10) = 82;
      sub_23B4AFFBC();
      OUTLINED_FUNCTION_6_24(&v904);
      v654 = OUTLINED_FUNCTION_8_26(&v905);
      v656 = &v906;
      goto LABEL_101;
    case 83:
      HIBYTE(a10) = 83;
      sub_23B4AFF68();
      OUTLINED_FUNCTION_6_24(&v907);
      v654 = OUTLINED_FUNCTION_8_26(&v908);
      v656 = &v909;
      goto LABEL_101;
    case 84:
      HIBYTE(a10) = 84;
      sub_23B4AFF14();
      OUTLINED_FUNCTION_6_24(&v910);
      v654 = OUTLINED_FUNCTION_8_26(&v911);
      v656 = &v912;
      goto LABEL_101;
    case 85:
      HIBYTE(a10) = 85;
      sub_23B4AFEC0();
      OUTLINED_FUNCTION_6_24(&v913);
      v654 = OUTLINED_FUNCTION_8_26(&v914);
      v656 = &v915;
      goto LABEL_101;
    case 86:
      HIBYTE(a10) = 86;
      sub_23B4AFE6C();
      OUTLINED_FUNCTION_6_24(&v916);
      v654 = OUTLINED_FUNCTION_8_26(&v917);
      v656 = &v918;
      goto LABEL_101;
    case 87:
      HIBYTE(a10) = 87;
      sub_23B4AFE18();
      OUTLINED_FUNCTION_6_24(&v919);
      v654 = OUTLINED_FUNCTION_8_26(&v920);
      v656 = &v921;
      goto LABEL_101;
    case 88:
      HIBYTE(a10) = 88;
      sub_23B4AFDC4();
      OUTLINED_FUNCTION_6_24(&v922);
      v654 = OUTLINED_FUNCTION_8_26(&v923);
      v656 = &v924;
      goto LABEL_101;
    case 89:
      HIBYTE(a10) = 89;
      sub_23B4AFD70();
      OUTLINED_FUNCTION_6_24(&v925);
      v654 = OUTLINED_FUNCTION_8_26(&v926);
      v656 = &v927;
      goto LABEL_101;
    case 90:
      HIBYTE(a10) = 90;
      sub_23B4AFD1C();
      OUTLINED_FUNCTION_6_24(&v928);
      v654 = OUTLINED_FUNCTION_8_26(&v929);
      v656 = &v930;
      goto LABEL_101;
    case 91:
      HIBYTE(a10) = 91;
      sub_23B4AFCC8();
      OUTLINED_FUNCTION_6_24(&v931);
      v654 = OUTLINED_FUNCTION_8_26(&v932);
      v656 = &a9;
      goto LABEL_101;
    case 92:
      HIBYTE(a10) = 92;
      sub_23B4AFC74();
      OUTLINED_FUNCTION_6_24(&a10);
      v654 = OUTLINED_FUNCTION_8_26(&a11);
      v656 = &a12;
      goto LABEL_101;
    case 93:
      HIBYTE(a10) = 93;
      sub_23B4AFC20();
      OUTLINED_FUNCTION_6_24(&a13);
      v654 = OUTLINED_FUNCTION_8_26(&a14);
      v656 = &a15;
      goto LABEL_101;
    case 94:
      HIBYTE(a10) = 94;
      sub_23B4AFBCC();
      OUTLINED_FUNCTION_6_24(&a16);
      v654 = OUTLINED_FUNCTION_8_26(&a17);
      v656 = &a18;
LABEL_101:
      v655(v654, *(v656 - 32));
      goto LABEL_102;
    case 95:
      HIBYTE(a10) = 95;
      sub_23B4AFB78();
      v657 = v911;
      OUTLINED_FUNCTION_9_29();
      v659 = v912;
      v658 = v913;
      goto LABEL_106;
    case 96:
      HIBYTE(a10) = 96;
      sub_23B4AFB24();
      v657 = v914;
      OUTLINED_FUNCTION_9_29();
      v659 = v915;
      v658 = v916;
      goto LABEL_106;
    case 97:
      HIBYTE(a10) = 97;
      sub_23B4AFAD0();
      v657 = v917;
      OUTLINED_FUNCTION_9_29();
      v659 = v918;
      v658 = v919;
      goto LABEL_106;
    case 98:
      HIBYTE(a10) = 98;
      sub_23B4AFA7C();
      v657 = v920;
      OUTLINED_FUNCTION_9_29();
      v659 = v921;
      v658 = v922;
      goto LABEL_106;
    case 99:
      HIBYTE(a10) = 99;
      sub_23B4AFA28();
      v657 = v923;
      OUTLINED_FUNCTION_9_29();
      v659 = v924;
      v658 = v925;
      goto LABEL_106;
    case 100:
      HIBYTE(a10) = 100;
      sub_23B4AF9D4();
      v657 = v926;
      OUTLINED_FUNCTION_9_29();
      v659 = v927;
      v658 = v928;
LABEL_106:
      (*(v659 + 8))(v657, v658);
LABEL_102:
      (*v650)(v649, v639);
      break;
    default:
      HIBYTE(a10) = 0;
      sub_23B4B1AA4();
      v651 = v930;
      v652 = v931;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1(&v661);
      v653(v639, v633);
      (*v650)(v651, v652);
      break;
  }

  OUTLINED_FUNCTION_105();
}

unint64_t sub_23B4AF980()
{
  result = qword_27E134660;
  if (!qword_27E134660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134660);
  }

  return result;
}

unint64_t sub_23B4AF9D4()
{
  result = qword_27E134668;
  if (!qword_27E134668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134668);
  }

  return result;
}

unint64_t sub_23B4AFA28()
{
  result = qword_27E134670;
  if (!qword_27E134670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134670);
  }

  return result;
}

unint64_t sub_23B4AFA7C()
{
  result = qword_27E134678;
  if (!qword_27E134678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134678);
  }

  return result;
}

unint64_t sub_23B4AFAD0()
{
  result = qword_27E134680;
  if (!qword_27E134680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134680);
  }

  return result;
}

unint64_t sub_23B4AFB24()
{
  result = qword_27E134688;
  if (!qword_27E134688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134688);
  }

  return result;
}

unint64_t sub_23B4AFB78()
{
  result = qword_27E134690;
  if (!qword_27E134690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134690);
  }

  return result;
}

unint64_t sub_23B4AFBCC()
{
  result = qword_27E134698;
  if (!qword_27E134698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134698);
  }

  return result;
}

unint64_t sub_23B4AFC20()
{
  result = qword_27E1346A0;
  if (!qword_27E1346A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346A0);
  }

  return result;
}

unint64_t sub_23B4AFC74()
{
  result = qword_27E1346A8;
  if (!qword_27E1346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346A8);
  }

  return result;
}

unint64_t sub_23B4AFCC8()
{
  result = qword_27E1346B0;
  if (!qword_27E1346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346B0);
  }

  return result;
}

unint64_t sub_23B4AFD1C()
{
  result = qword_27E1346B8;
  if (!qword_27E1346B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346B8);
  }

  return result;
}

unint64_t sub_23B4AFD70()
{
  result = qword_27E1346C0;
  if (!qword_27E1346C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346C0);
  }

  return result;
}

unint64_t sub_23B4AFDC4()
{
  result = qword_27E1346C8;
  if (!qword_27E1346C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346C8);
  }

  return result;
}

unint64_t sub_23B4AFE18()
{
  result = qword_27E1346D0;
  if (!qword_27E1346D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346D0);
  }

  return result;
}

unint64_t sub_23B4AFE6C()
{
  result = qword_27E1346D8;
  if (!qword_27E1346D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346D8);
  }

  return result;
}

unint64_t sub_23B4AFEC0()
{
  result = qword_27E1346E0;
  if (!qword_27E1346E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346E0);
  }

  return result;
}

unint64_t sub_23B4AFF14()
{
  result = qword_27E1346E8;
  if (!qword_27E1346E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346E8);
  }

  return result;
}

unint64_t sub_23B4AFF68()
{
  result = qword_27E1346F0;
  if (!qword_27E1346F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346F0);
  }

  return result;
}

unint64_t sub_23B4AFFBC()
{
  result = qword_27E1346F8;
  if (!qword_27E1346F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346F8);
  }

  return result;
}

unint64_t sub_23B4B0010()
{
  result = qword_27E134700;
  if (!qword_27E134700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134700);
  }

  return result;
}

unint64_t sub_23B4B0064()
{
  result = qword_27E134708;
  if (!qword_27E134708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134708);
  }

  return result;
}

unint64_t sub_23B4B00B8()
{
  result = qword_27E134710;
  if (!qword_27E134710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134710);
  }

  return result;
}

unint64_t sub_23B4B010C()
{
  result = qword_27E134718;
  if (!qword_27E134718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134718);
  }

  return result;
}

unint64_t sub_23B4B0160()
{
  result = qword_27E134720;
  if (!qword_27E134720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134720);
  }

  return result;
}

unint64_t sub_23B4B01B4()
{
  result = qword_27E134728;
  if (!qword_27E134728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134728);
  }

  return result;
}

unint64_t sub_23B4B0208()
{
  result = qword_27E134730;
  if (!qword_27E134730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134730);
  }

  return result;
}

unint64_t sub_23B4B025C()
{
  result = qword_27E134738;
  if (!qword_27E134738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134738);
  }

  return result;
}

unint64_t sub_23B4B02B0()
{
  result = qword_27E134740;
  if (!qword_27E134740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134740);
  }

  return result;
}

unint64_t sub_23B4B0304()
{
  result = qword_27E134748;
  if (!qword_27E134748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134748);
  }

  return result;
}

unint64_t sub_23B4B0358()
{
  result = qword_27E134750;
  if (!qword_27E134750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134750);
  }

  return result;
}

unint64_t sub_23B4B03AC()
{
  result = qword_27E134758;
  if (!qword_27E134758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134758);
  }

  return result;
}

unint64_t sub_23B4B0400()
{
  result = qword_27E134760;
  if (!qword_27E134760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134760);
  }

  return result;
}

unint64_t sub_23B4B0454()
{
  result = qword_27E134768;
  if (!qword_27E134768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134768);
  }

  return result;
}

unint64_t sub_23B4B04A8()
{
  result = qword_27E134770;
  if (!qword_27E134770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134770);
  }

  return result;
}

unint64_t sub_23B4B04FC()
{
  result = qword_27E134778;
  if (!qword_27E134778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134778);
  }

  return result;
}

unint64_t sub_23B4B0550()
{
  result = qword_27E134780;
  if (!qword_27E134780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134780);
  }

  return result;
}

unint64_t sub_23B4B05A4()
{
  result = qword_27E134788;
  if (!qword_27E134788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134788);
  }

  return result;
}

unint64_t sub_23B4B05F8()
{
  result = qword_27E134790;
  if (!qword_27E134790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134790);
  }

  return result;
}

unint64_t sub_23B4B064C()
{
  result = qword_27E134798;
  if (!qword_27E134798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134798);
  }

  return result;
}

unint64_t sub_23B4B06A0()
{
  result = qword_27E1347A0;
  if (!qword_27E1347A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347A0);
  }

  return result;
}

unint64_t sub_23B4B06F4()
{
  result = qword_27E1347A8;
  if (!qword_27E1347A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347A8);
  }

  return result;
}

unint64_t sub_23B4B0748()
{
  result = qword_27E1347B0;
  if (!qword_27E1347B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347B0);
  }

  return result;
}

unint64_t sub_23B4B079C()
{
  result = qword_27E1347B8;
  if (!qword_27E1347B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347B8);
  }

  return result;
}

unint64_t sub_23B4B07F0()
{
  result = qword_27E1347C0;
  if (!qword_27E1347C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347C0);
  }

  return result;
}

unint64_t sub_23B4B0844()
{
  result = qword_27E1347C8;
  if (!qword_27E1347C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347C8);
  }

  return result;
}

unint64_t sub_23B4B0898()
{
  result = qword_27E1347D0;
  if (!qword_27E1347D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347D0);
  }

  return result;
}

unint64_t sub_23B4B08EC()
{
  result = qword_27E1347D8;
  if (!qword_27E1347D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347D8);
  }

  return result;
}

unint64_t sub_23B4B0940()
{
  result = qword_27E1347E0;
  if (!qword_27E1347E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347E0);
  }

  return result;
}

unint64_t sub_23B4B0994()
{
  result = qword_27E1347E8;
  if (!qword_27E1347E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347E8);
  }

  return result;
}

unint64_t sub_23B4B09E8()
{
  result = qword_27E1347F0;
  if (!qword_27E1347F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347F0);
  }

  return result;
}

unint64_t sub_23B4B0A3C()
{
  result = qword_27E1347F8;
  if (!qword_27E1347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347F8);
  }

  return result;
}

unint64_t sub_23B4B0A90()
{
  result = qword_27E134800;
  if (!qword_27E134800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134800);
  }

  return result;
}

unint64_t sub_23B4B0AE4()
{
  result = qword_27E134808;
  if (!qword_27E134808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134808);
  }

  return result;
}

unint64_t sub_23B4B0B38()
{
  result = qword_27E134810;
  if (!qword_27E134810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134810);
  }

  return result;
}

unint64_t sub_23B4B0B8C()
{
  result = qword_27E134818;
  if (!qword_27E134818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134818);
  }

  return result;
}

unint64_t sub_23B4B0BE0()
{
  result = qword_27E134820;
  if (!qword_27E134820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134820);
  }

  return result;
}

unint64_t sub_23B4B0C34()
{
  result = qword_27E134828;
  if (!qword_27E134828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134828);
  }

  return result;
}

unint64_t sub_23B4B0C88()
{
  result = qword_27E134830;
  if (!qword_27E134830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134830);
  }

  return result;
}

unint64_t sub_23B4B0CDC()
{
  result = qword_27E134838;
  if (!qword_27E134838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134838);
  }

  return result;
}

unint64_t sub_23B4B0D30()
{
  result = qword_27E134840;
  if (!qword_27E134840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134840);
  }

  return result;
}

unint64_t sub_23B4B0D84()
{
  result = qword_27E134848;
  if (!qword_27E134848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134848);
  }

  return result;
}

unint64_t sub_23B4B0DD8()
{
  result = qword_27E134850;
  if (!qword_27E134850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134850);
  }

  return result;
}

unint64_t sub_23B4B0E2C()
{
  result = qword_27E134858;
  if (!qword_27E134858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134858);
  }

  return result;
}

unint64_t sub_23B4B0E80()
{
  result = qword_27E134860;
  if (!qword_27E134860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134860);
  }

  return result;
}

unint64_t sub_23B4B0ED4()
{
  result = qword_27E134868;
  if (!qword_27E134868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134868);
  }

  return result;
}

unint64_t sub_23B4B0F28()
{
  result = qword_27E134870;
  if (!qword_27E134870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134870);
  }

  return result;
}

unint64_t sub_23B4B0F7C()
{
  result = qword_27E134878;
  if (!qword_27E134878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134878);
  }

  return result;
}

unint64_t sub_23B4B0FD0()
{
  result = qword_27E134880;
  if (!qword_27E134880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134880);
  }

  return result;
}

unint64_t sub_23B4B1024()
{
  result = qword_27E134888;
  if (!qword_27E134888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134888);
  }

  return result;
}