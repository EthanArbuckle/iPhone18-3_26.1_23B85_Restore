uint64_t sub_1B251813C()
{
  v0 = sub_1B256D9BC();
  v2 = v1;
  if (v0 == sub_1B256D9BC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6_23();
  }

  return v5 & 1;
}

uint64_t sub_1B25181B4(char a1, char a2)
{
  if (a1)
  {
    v2 = 104;
  }

  else
  {
    v2 = 119;
  }

  if (a2)
  {
    v3 = 104;
  }

  else
  {
    v3 = 119;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B256EB5C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B251821C(unsigned __int8 a1, char a2)
{
  v2 = 6778480;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6778480;
  switch(v4)
  {
    case 1:
      v5 = 6778986;
      break;
    case 2:
      v5 = 6711655;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1885496695;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1718183272;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 6778986;
      break;
    case 2:
      v2 = 6711655;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1885496695;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1718183272;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_23();
  }

  return v8 & 1;
}

uint64_t sub_1B2518360()
{
  OUTLINED_FUNCTION_1_36();
  v3 = "requestReferenceId";
  v4 = v2;
  v5 = v0;
  v6 = "consistencyToken";
  switch(v7)
  {
    case 1:
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_20_12(v2, v1, v2);
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_2_34();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_21_14();
      break;
    case 5:
      v5 = 0xE600000000000000;
      v4 = OUTLINED_FUNCTION_83_1();
      break;
    case 6:
      v5 = 0x80000001B258DD10;
      v4 = 0xD000000000000012;
      break;
    case 7:
      v4 = OUTLINED_FUNCTION_27_11() & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    default:
      v4 = 0xD000000000000010;
      v5 = 0x80000001B258DCD0;
      break;
  }

  switch(v1)
  {
    case 1:
      break;
    case 2:
      v0 = 7565935;
      goto LABEL_14;
    case 3:
      OUTLINED_FUNCTION_4_24();
LABEL_14:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_26_11();
      break;
    case 5:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_8_26();
      break;
    case 6:
      v0 = (v3 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
    case 7:
      OUTLINED_FUNCTION_24_12();
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    default:
      v2 = 0xD000000000000010;
      v0 = (v6 - 32) | 0x8000000000000000;
      break;
  }

  if (v4 == v2 && v5 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_12_22();
  }

  return v10 & 1;
}

uint64_t sub_1B25184CC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2)
  {
    v4 = "requestReferenceId";
  }

  else
  {
    v4 = "subscriptionGroupIdentifier";
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    v6 = "subscriptionGroupIdentifier";
  }

  else
  {
    v6 = "requestReferenceId";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_23();
  }

  return v8 & 1;
}

uint64_t sub_1B2518568(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x737574617473;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001B258DD90;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x80000001B258DD70;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x737574617473;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001B258DD90;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0x80000001B258DD70;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_23();
  }

  return v8 & 1;
}

uint64_t sub_1B2518648(unsigned __int8 a1, char a2)
{
  v2 = 0x79654B676F6CLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x79654B676F6CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x49746375646F7270;
      v3 = 0xE900000000000044;
      break;
    case 2:
      v5 = 0x69666F725079656BLL;
      v3 = 0xEA0000000000656CLL;
      break;
    case 3:
      v5 = 0x736D61726170;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x49746375646F7270;
      v6 = 0xE900000000000044;
      break;
    case 2:
      v2 = 0x69666F725079656BLL;
      v6 = 0xEA0000000000656CLL;
      break;
    case 3:
      v2 = 0x736D61726170;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_23();
  }

  return v8 & 1;
}

uint64_t sub_1B25187B4(char a1)
{
  OUTLINED_FUNCTION_19_17(a1);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B256EB5C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B2518810(char a1)
{
  OUTLINED_FUNCTION_19_17(a1);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1B256EB5C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1B2518884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_6_23();
  }

  return v10 & 1;
}

uint64_t sub_1B2518908()
{
  v0 = 0xEC000000746E756FLL;
  OUTLINED_FUNCTION_10_20();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6D41000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEC000000746E756FLL;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_90_1() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      v7 = 0xEA00000000006574;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_90_1() & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      v7 = 0xEC0000006E6F7361;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_90_1() & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      v7 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_10_20();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      v0 = 0xEA00000000006574;
      break;
    case 2:
      OUTLINED_FUNCTION_10_20();
      v3 = v9 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      v0 = 0xEC0000006E6F7361;
      break;
    case 3:
      OUTLINED_FUNCTION_10_20();
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      v0 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_12_22();
  }

  return v12 & 1;
}

uint64_t sub_1B2518A40()
{
  OUTLINED_FUNCTION_8_26();
  v2 = 0xE600000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_83_1() & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      v2 = 0xEB00000000746E75;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x6563697270;
      break;
    case 3:
      v5 = 0x6E6F73616572;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_26();
      v1 = v7 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      v6 = 0xEB00000000746E75;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x6563697270;
      break;
    case 3:
      v1 = 0x6E6F73616572;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_23();
  }

  return v9 & 1;
}

uint64_t sub_1B2518B5C()
{
  OUTLINED_FUNCTION_1_36();
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_2_34();
      break;
    case 2:
      v4 = 0xE500000000000000;
      v3 = 0x726566666FLL;
      break;
    case 3:
      v4 = 0xE500000000000000;
      v3 = 0x6563697270;
      break;
    case 4:
      v4 = 0xE300000000000000;
      v3 = 5589843;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_4_24();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      v2 = 0x726566666FLL;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x6563697270;
      break;
    case 4:
      v0 = 0xE300000000000000;
      v2 = 5589843;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_12_22();
  }

  return v7 & 1;
}

uint64_t sub_1B2518C7C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x697461636F766572;
  }

  else
  {
    v3 = 0x73646E75666572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEE00657461446E6FLL;
  }

  if (a2)
  {
    v5 = 0x697461636F766572;
  }

  else
  {
    v5 = 0x73646E75666572;
  }

  if (a2)
  {
    v6 = 0xEE00657461446E6FLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_23();
  }

  return v8 & 1;
}

uint64_t sub_1B2518D1C()
{
  OUTLINED_FUNCTION_1_36();
  v3 = "taxExclusivePrice";
  v4 = v2;
  v5 = v0;
  v6 = "requestReferenceId";
  switch(v7)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_20_12(v2, v1, v2);
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_2_34();
      break;
    case 3:
      v4 = 0x6574616D69747365;
      v5 = 0xEC00000078615464;
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_21_14();
      break;
    case 5:
      v5 = 0xE600000000000000;
      v4 = OUTLINED_FUNCTION_83_1();
      break;
    case 6:
      v5 = 0x80000001B258DD10;
      v4 = 0xD000000000000012;
      break;
    case 7:
      v8 = OUTLINED_FUNCTION_27_11();
      goto LABEL_8;
    case 8:
      v4 = 0xD000000000000011;
      v5 = 0x80000001B258DDE0;
      break;
    case 9:
      v5 = 0xE700000000000000;
      v8 = 0x746152786174;
LABEL_8:
      v4 = v8 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 7565935;
      goto LABEL_17;
    case 2:
      OUTLINED_FUNCTION_4_24();
LABEL_17:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 3:
      v2 = 0x6574616D69747365;
      v0 = 0xEC00000078615464;
      break;
    case 4:
      OUTLINED_FUNCTION_26_11();
      break;
    case 5:
      v0 = 0xE600000000000000;
      OUTLINED_FUNCTION_8_26();
      break;
    case 6:
      v0 = (v6 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
    case 7:
      OUTLINED_FUNCTION_24_12();
      goto LABEL_20;
    case 8:
      v2 = 0xD000000000000011;
      v0 = (v3 - 32) | 0x8000000000000000;
      break;
    case 9:
      v0 = 0xE700000000000000;
      v9 = 0x746152786174;
LABEL_20:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    default:
      break;
  }

  if (v4 == v2 && v5 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_12_22();
  }

  return v11 & 1;
}

uint64_t sub_1B2518EF0(uint64_t a1)
{
  v3 = v1;
  v55 = type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_5();
  v54 = v6 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_5();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_14();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v12 + 16);
  v18(&v51 - v19, v3, a1);
  if (swift_dynamicCast())
  {
    v20 = v56 == 11;
    goto LABEL_3;
  }

  v51 = v15;
  v18(v2, v3, a1);
  OUTLINED_FUNCTION_23_10();
  v23 = sub_1B256EAEC();
  v52 = v11;
  v53 = v12;
  if (v23)
  {
    v24 = v23;
    v25 = OUTLINED_FUNCTION_23_10();
    v26(v25);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_5();
    (*(v12 + 32))(v27, v2, a1);
  }

  v28 = sub_1B256D0CC();

  v29 = [v28 domain];
  v30 = sub_1B256D9BC();
  v32 = v31;

  v33 = v30 == 0x726F727245534D41 && v32 == 0xEE006E69616D6F44;
  if (!v33 && (OUTLINED_FUNCTION_18_14() & 1) == 0)
  {
    v35 = v30 == OUTLINED_FUNCTION_22_11() && v32 == 0xEE006E69616D6F44;
    if (v35 || (OUTLINED_FUNCTION_18_14() & 1) != 0)
    {

      v36 = [v28 code];

      v21 = (v36 - 907) < 2;
      return v21 & 1;
    }

    if (v30 == 0xD000000000000019 && 0x80000001B25917B0 == v32)
    {
    }

    else
    {
      v38 = OUTLINED_FUNCTION_18_14();

      if ((v38 & 1) == 0)
      {
        v18(v51, v3, a1);
        v39 = v52;
        if (swift_dynamicCast())
        {
          sub_1B24D1250();
          v40 = v54;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_38();
          sub_1B2519E38(v41, v42);
          v43 = OUTLINED_FUNCTION_5();
          sub_1B2519D24(v40, v44);
          v45 = sub_1B256D0CC();
          v21 = sub_1B256E21C();

          sub_1B2519D88(v39);
          v46 = OUTLINED_FUNCTION_23_10();
          v47(v46);
          return v21 & 1;
        }

        v49 = OUTLINED_FUNCTION_23_10();
        v50(v49);
        goto LABEL_18;
      }
    }

    v48 = [v28 code];

    v20 = v48 == 600;
LABEL_3:
    v21 = v20;
    return v21 & 1;
  }

  v34 = [v28 code];

  v21 = 1;
  if (v34 != 6 && v34 != 100 && v34 != 508)
  {
LABEL_18:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1B2519388()
{
  v1 = [v0 domain];
  v2 = sub_1B256D9BC();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001B25917D0 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1B256EB5C();
  }

  return v6 & 1;
}

uint64_t sub_1B251942C(void *a1)
{
  v1 = a1;
  v2 = sub_1B2519388();

  return v2 & 1;
}

uint64_t sub_1B2519460()
{
  if (![v0 _isSKInternalError])
  {
    return -1;
  }

  v1 = sub_1B2529C00([v0 code]) - 2;
  if (v1 > 9u)
  {
    return 0;
  }

  else
  {
    return qword_1B2584808[v1];
  }
}

uint64_t sub_1B25194CC(void *a1)
{
  v1 = a1;
  v2 = sub_1B2519460();

  return v2;
}

uint64_t type metadata accessor for StoreKitError()
{
  result = qword_1EB7CD4B0;
  if (!qword_1EB7CD4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B251954C(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1B256E4FC();
  return 0;
}

uint64_t sub_1B2519594(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1B25195E0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05F8);
  v2 = sub_1B256E8DC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1B2519F50(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1B2519718(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1B244AA0C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B2519718(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  v4 = sub_1B256ED7C();

  return sub_1B24557A0(a1, a2, v4);
}

uint64_t sub_1B25197B8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B2519814(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1B2519814(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B25198D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B2456DAC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B25198D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B25199D8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B256E5FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B25199D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B2519A24(a1, a2);
  sub_1B2519B3C(&unk_1F29AE640);
  return v3;
}

uint64_t sub_1B2519A24(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B256DAFC())
  {
    result = sub_1B243E74C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B256E4BC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B256E5FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B2519B3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1B2519C20(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B2519C20(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D00F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1B2519D14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B2519D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreKitError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2519D88(uint64_t a1)
{
  v2 = type metadata accessor for StoreKitError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B2519DE4()
{
  result = qword_1EB7D2628;
  if (!qword_1EB7D2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2628);
  }

  return result;
}

uint64_t sub_1B2519E38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B2519E80()
{
  result = sub_1B256D56C();
  if (v1 <= 0x3F)
  {
    result = sub_1B2519EF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B2519EF4()
{
  result = qword_1EB7CD280;
  if (!qword_1EB7CD280)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB7CD280);
  }

  return result;
}

uint64_t sub_1B2519F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB7D2630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_34()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_18_14()
{

  return sub_1B256EB5C();
}

id OUTLINED_FUNCTION_28_11()
{
  *(v1 - 96) = v0;

  return v0;
}

uint64_t sub_1B251A1F0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    sub_1B256D03C();
    swift_allocObject();
    v1 = sub_1B256D02C();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1B251A29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B251A2F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B251A344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer();
  OUTLINED_FUNCTION_1_9();
  v13 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  (*(v7 + 16))(v10, a1, a2);
  (*(v7 + 32))(v16, v10, a2);
  sub_1B251A1F0();
  v19[3] = a3;
  swift_getWitnessTable();
  v17 = sub_1B256D01C();
  (*(v13 + 8))(v16, v11);

  return v17;
}

uint64_t sub_1B251A518()
{

  return v0;
}

uint64_t sub_1B251A540()
{
  sub_1B251A518();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B251A598()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1B251A5A4(void *a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer.CodingKeys();
  OUTLINED_FUNCTION_1_37();
  swift_getWitnessTable();
  v4 = sub_1B256EA7C();
  OUTLINED_FUNCTION_1_9();
  v6 = v5;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDFC();
  sub_1B256EA5C();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1B251A6F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  OUTLINED_FUNCTION_1_9();
  v29 = v6;
  v30 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer.CodingKeys();
  OUTLINED_FUNCTION_1_37();
  swift_getWitnessTable();
  sub_1B256E9DC();
  OUTLINED_FUNCTION_1_9();
  v27 = v10;
  v28 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for MerchandisingUICoder.TopLevelPropertyListContainer();
  OUTLINED_FUNCTION_1_9();
  v25 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v32;
  sub_1B256EDBC();
  if (!v19)
  {
    v32 = v14;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    sub_1B256E9AC();
    (*(v20 + 8))(v13, v21);
    (*(v22 + 32))(v18, v31, a2);
    (*(v25 + 32))(v26, v18, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *sub_1B251A9F4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B251AA90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_1B251ABCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t StoreKitError.errorDescription.getter()
{
  v1 = sub_1B256D56C();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_20_13(v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      sub_1B243C5DC();
      if (OUTLINED_FUNCTION_7_24())
      {
        v6 = v27;

        goto LABEL_6;
      }

      result = sub_1B256EB4C();
      __break(1u);
      return result;
    case 2u:
    case 5u:
    case 6u:
      v9 = OUTLINED_FUNCTION_21_15();
      OUTLINED_FUNCTION_108_0(v6, v10, v11, v9);
      v12 = OUTLINED_FUNCTION_19_18();
      goto LABEL_10;
    case 3u:
      v20 = OUTLINED_FUNCTION_21_15();
      OUTLINED_FUNCTION_108_0(v6, v21, v22, v20);
      v12 = 0xD000000000000014;
      goto LABEL_9;
    case 4u:
      v23 = OUTLINED_FUNCTION_21_15();
      OUTLINED_FUNCTION_108_0(v6, v24, v25, v23);
      v12 = 0xD000000000000015;
LABEL_9:
      v13 = v1 | 0x8000000000000000;
LABEL_10:
      v19 = sub_1B24E41B8(v12, v13, v6);
      break;
    default:
      v14 = OUTLINED_FUNCTION_18_15();
      v15(v14);
      sub_1B243C5DC();
      swift_dynamicCast();
      v16 = OUTLINED_FUNCTION_17_15();
      v17(v16);
LABEL_6:
      v18 = [v6 localizedDescription];

      v19 = sub_1B256D9BC();
      break;
  }

  return v19;
}

uint64_t sub_1B251B0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreKitError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StoreKitError.failureReason.getter()
{
  v2 = sub_1B256D56C();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34_2();
  type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_20_13(v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      sub_1B243C5DC();
      if (OUTLINED_FUNCTION_7_24())
      {
        v14 = v20;

        goto LABEL_6;
      }

      result = sub_1B256EB4C();
      __break(1u);
      return result;
    case 2u:
    case 6u:
      v10 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v10);
      v11 = 0xD00000000000001BLL;
      goto LABEL_9;
    case 3u:
      v19 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_1_38(v19);
      v11 = 0xD000000000000016;
      goto LABEL_10;
    case 4u:
      v16 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v16);
      v11 = 0xD000000000000017;
      goto LABEL_9;
    case 5u:
      v17 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v17);
      v11 = 0xD000000000000019;
LABEL_9:
      v18 = v2 | 0x8000000000000000;
LABEL_10:
      result = sub_1B24E41B8(v11, v18, v0);
      break;
    default:
      v12 = OUTLINED_FUNCTION_18_15();
      v13(v12);
      sub_1B243C5DC();
      swift_dynamicCast();
      v14 = v21;
      (*(v4 + 8))(v1, v2);
LABEL_6:
      result = sub_1B248C050(v14, &selRef_localizedFailureReason);
      break;
  }

  return result;
}

uint64_t StoreKitError.recoverySuggestion.getter()
{
  v1 = v0;
  v2 = sub_1B256D56C();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v9);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  type metadata accessor for StoreKitError();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = (v15 - v14);
  sub_1B251B0E0(v1, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v27 = *v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      sub_1B243C5DC();
      if (OUTLINED_FUNCTION_7_24())
      {
        v8 = v26;

        goto LABEL_6;
      }

      result = sub_1B256EB4C();
      __break(1u);
      break;
    case 2:
    case 3:
      v19 = OUTLINED_FUNCTION_21_15();
      OUTLINED_FUNCTION_108_0(v12, v20, v21, v19);
      v22 = OUTLINED_FUNCTION_19_18();
      result = sub_1B24E41B8(v22, v23, v12);
      break;
    case 4:
    case 5:
    case 6:
      return result;
    default:
      (*(v4 + 16))(v8, v16, v2);
      sub_1B243C5DC();
      swift_dynamicCast();
      v24 = OUTLINED_FUNCTION_17_15();
      v25(v24);
LABEL_6:
      result = sub_1B248C050(v8, &selRef_localizedRecoverySuggestion);
      break;
  }

  return result;
}

uint64_t Product.PurchaseError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = *v0;
  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  v5 = "ERROR_CANCELLED_REASON";
  if (v3 == 1)
  {
    v5 = "UNABLE_TO_COMPLETE_DESC";
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  return OUTLINED_FUNCTION_15_19(v6, v5);
}

uint64_t Product.PurchaseError.failureReason.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = *v1;
  v5 = 0xD000000000000015;
  v6 = "ERROR_UNAVAILABLE_REASON";
  switch(v4)
  {
    case 1:
      v7 = "ERROR_UNAVAILABLE_REASON";
      goto LABEL_8;
    case 2:
      v7 = "ERROR_NOT_ALLOWED_REASON";
LABEL_8:
      v6 = v7 - 32;
      v5 = 0xD000000000000018;
      break;
    case 3:
      v8 = "ERROR_INELIGIBLE_OFFER_REASON";
      goto LABEL_6;
    case 4:
    case 5:
      v6 = "ERROR_OFFER_SIGNATURE_REASON";
      v5 = 0xD000000000000012;
      break;
    case 6:
      v6 = "ERROR_OFFER_PARAMETERS_REASON";
      v5 = 0xD00000000000001CLL;
      break;
    case 7:
      v8 = "ERROR_OFFER_PARAMETERS_REASON";
LABEL_6:
      v6 = v8 - 32;
      v5 = 0xD00000000000001DLL;
      break;
    default:
      break;
  }

  v9 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v9);
  return sub_1B24E41B8(v5, v6 | 0x8000000000000000, v0);
}

uint64_t Product.PurchaseError.recoverySuggestion.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = *v1;
  v5 = 0xD000000000000017;
  v6 = "ERROR_UNAVAILABLE_RECOVERY";
  result = 0;
  switch(v4)
  {
    case 1:
      v6 = "ERROR_INELIGIBLE_OFFER_RECOVERY";
      v5 = 0xD00000000000001ALL;
      goto LABEL_3;
    case 2:
      return result;
    case 3:
      v6 = "ERROR_OFFER_RECOVERY";
      v5 = 0xD00000000000001FLL;
      goto LABEL_3;
    case 4:
    case 5:
    case 6:
    case 7:
      v6 = "ERROR_QUANTITY_REASON";
      v5 = 0xD000000000000014;
      goto LABEL_3;
    default:
LABEL_3:
      v8 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v8);
      return sub_1B24E41B8(v5, v6 | 0x8000000000000000, v0);
  }
}

uint64_t Transaction.RefundRequestError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_38(v3);
  return sub_1B24E41B8(0xD000000000000011, v4, v0);
}

uint64_t Transaction.RefundRequestError.failureReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = *v0;
  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  v5 = "ERROR_REFUND_DESC";
  if (v3)
  {
    v5 = "Failed in XPC to ";
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xD00000000000001DLL;
  }

  return OUTLINED_FUNCTION_15_19(v6, v5);
}

uint64_t Transaction.RefundRequestError.recoverySuggestion.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  if (*v1 != 1)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_38(v4);
  v5 = OUTLINED_FUNCTION_19_18();
  return sub_1B24E41B8(v5, v6, v0);
}

uint64_t VerificationResult.VerificationError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = *v0;
  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  v5 = 0xD000000000000012;
  v6 = "ERROR_INVALID_CHAIN_DESC";
  switch(v3)
  {
    case 1:
      v7 = "ERROR_INVALID_CHAIN_DESC";
      goto LABEL_7;
    case 2:
      v6 = "ERROR_ENCODING_DESC";
      v5 = 0xD00000000000001ELL;
      break;
    case 3:
      v6 = "ERROR_SIGNATURE_DESC";
      v5 = 0xD000000000000013;
      break;
    case 4:
      v6 = "ERROR_MISSING_PROPS_DESC";
      v5 = 0xD000000000000014;
      break;
    case 5:
      v7 = "ERROR_MISSING_PROPS_DESC";
LABEL_7:
      v6 = v7 - 32;
      v5 = 0xD000000000000018;
      break;
    default:
      return OUTLINED_FUNCTION_15_19(v5, v6);
  }

  return OUTLINED_FUNCTION_15_19(v5, v6);
}

uint64_t VerificationResult.VerificationError.failureReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34_2();
  v3 = *v0;
  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  v5 = 0xD000000000000014;
  v6 = "ERROR_INVALID_CHAIN_REASON";
  switch(v3)
  {
    case 1:
      v7 = "ERROR_INVALID_CHAIN_REASON";
      goto LABEL_7;
    case 2:
      v6 = "ERROR_ENCODING_REASON";
      v5 = 0xD000000000000020;
      break;
    case 3:
      v6 = "ERROR_SIGNATURE_REASON";
      v5 = 0xD000000000000015;
      break;
    case 4:
      v6 = "ERROR_MISSING_PROPS_REASON";
      v5 = 0xD000000000000016;
      break;
    case 5:
      v7 = "ERROR_MISSING_PROPS_REASON";
LABEL_7:
      v6 = v7 - 32;
      v5 = 0xD00000000000001ALL;
      break;
    default:
      return OUTLINED_FUNCTION_15_19(v5, v6);
  }

  return OUTLINED_FUNCTION_15_19(v5, v6);
}

uint64_t VerificationResult.VerificationError.recoverySuggestion.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  if (*v1)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_38(v5);
  v6 = OUTLINED_FUNCTION_19_18();
  return sub_1B24E41B8(v6, v7, v0);
}

uint64_t Product.ProductType.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0x62616D75736E6F43 && v4 == 0xEA0000000000656CLL;
  if (v6 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v7 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v7);
    v8 = 0x42414D55534E4F43;
    v9 = 0xEA0000000000454CLL;
    return sub_1B24E41B8(v8, v9, v0);
  }

  v11 = v5 == 0x736E6F432D6E6F4ELL && v4 == 0xEE00656C62616D75;
  if (v11 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v12 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v12);
    v8 = 0x534E4F435F4E4F4ELL;
    v9 = 0xEE00454C42414D55;
    return sub_1B24E41B8(v8, v9, v0);
  }

  v13 = v5 == 0xD000000000000019 && 0x80000001B2590760 == v4;
  if (v13 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v14 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v14);
    v8 = 0x454E45525F4E4F4ELL;
    v9 = 0xEC000000474E4957;
    return sub_1B24E41B8(v8, v9, v0);
  }

  v15 = v5 == 0xD00000000000001BLL && 0x80000001B258FD90 == v4;
  if (v15 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v16 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v16);
    v8 = 0x4E45525F4F545541;
    v9 = 0xEE00454C42415745;
    return sub_1B24E41B8(v8, v9, v0);
  }

  return OUTLINED_FUNCTION_10_0();
}

uint64_t Product.SubscriptionInfo.RenewalState.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  switch(*v1)
  {
    case 1:
    case 2:
      v10 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_1_38(v10);
      v5 = 0xD000000000000014;
      goto LABEL_7;
    case 3:
      v7 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v7);
      v5 = OUTLINED_FUNCTION_16_18();
      v8 = 0x5952544552;
      goto LABEL_5;
    case 4:
      v9 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v9);
      v5 = OUTLINED_FUNCTION_16_18();
      v8 = 0x4543415247;
LABEL_5:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      goto LABEL_7;
    case 5:
      v4 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v4);
      v5 = 0x525F535345434341;
      v6 = 0xEE0044454B4F5645;
LABEL_7:
      result = sub_1B24E41B8(v5, v6, v0);
      break;
    default:
      result = OUTLINED_FUNCTION_10_0();
      break;
  }

  return result;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.ExpirationReason.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  switch(*v1)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_1_38(v4);
      v6 = 0xD000000000000013;
      goto LABEL_8;
    case 2:
      v10 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v10);
      v6 = 0xD00000000000001ALL;
      goto LABEL_7;
    case 3:
      v8 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v8);
      v6 = 0xD000000000000019;
      goto LABEL_7;
    case 4:
      v9 = OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_2_35(v9);
      v6 = 0xD000000000000018;
LABEL_7:
      v5 = v1 | 0x8000000000000000;
      goto LABEL_8;
    case 5:
      v7 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v7);
      v6 = 0x4E574F4E4B4E55;
      v5 = 0xE700000000000000;
LABEL_8:
      result = sub_1B24E41B8(v6, v5, v0);
      break;
    default:
      result = OUTLINED_FUNCTION_10_0();
      break;
  }

  return result;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.PriceIncreaseStatus.localizedDescription.getter(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v4);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = "INCREASE_ACCEPTED";
    }

    else
    {
      v5 = "INCREASE_NOT_PENDING";
    }

    if (a1 == 1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000011;
    }
  }

  else
  {
    v5 = "AUTO_RENEW_DISABLED";
    v6 = 0xD000000000000014;
  }

  return OUTLINED_FUNCTION_15_19(v6, v5);
}

uint64_t Product.SubscriptionOffer.OfferType.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0x66664F6F72746E49 && v4 == 0xEA00000000007265;
  if (v6 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v7 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v7);
    v8 = 1381256777;
LABEL_7:
    v9 = OUTLINED_FUNCTION_14_16(v8);
    return sub_1B24E41B8(v9, v10, v0);
  }

  v12 = v5 == 0x66664F636F686441 && v4 == 0xEA00000000007265;
  if (v12 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v13 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v13);
    v8 = 1297044048;
    goto LABEL_7;
  }

  v14 = v5 == 0x6B6361626E6957 && v4 == 0xE700000000000000;
  if (v14 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v15 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v15);
    v9 = OUTLINED_FUNCTION_11_19();
    return sub_1B24E41B8(v9, v10, v0);
  }

  return OUTLINED_FUNCTION_10_0();
}

uint64_t Transaction.OfferType.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  switch(*v1)
  {
    case 1:
      v4 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v4);
      v5 = 1381256777;
      goto LABEL_6;
    case 2:
      v10 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v10);
      v5 = 1297044048;
LABEL_6:
      v7 = OUTLINED_FUNCTION_14_16(v5);
      goto LABEL_7;
    case 3:
      v6 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v6);
      v7 = 0x4F435F524546464FLL;
      v8 = 0xEA00000000004544;
      goto LABEL_7;
    case 4:
      v9 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v9);
      v7 = OUTLINED_FUNCTION_11_19();
LABEL_7:
      result = sub_1B24E41B8(v7, v8, v0);
      break;
    default:
      result = OUTLINED_FUNCTION_10_0();
      break;
  }

  return result;
}

uint64_t Product.SubscriptionOffer.PaymentMode.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0x756F597341796150 && v4 == 0xEA00000000006F47;
  if (v6 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v7 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v7);
    v8 = 0xE900000000000047;
    v9 = 0x5941505F45444F4DLL;
    return sub_1B24E41B8(v9, v8, v0);
  }

  v11 = v5 == 0x6F72467055796150 && v4 == 0xEA0000000000746ELL;
  if (v11 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v12 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v12);
    v9 = 0x4655505F45444F4DLL;
    v8 = 0xE800000000000000;
    return sub_1B24E41B8(v9, v8, v0);
  }

  v13 = v5 == 0x6169725465657246 && v4 == 0xE90000000000006CLL;
  if (v13 || (OUTLINED_FUNCTION_6_24() & 1) != 0)
  {
    v14 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v14);
    v8 = 0xE900000000000045;
    v9 = 0x4552465F45444F4DLL;
    return sub_1B24E41B8(v9, v8, v0);
  }

  return OUTLINED_FUNCTION_10_0();
}

uint64_t Product.SubscriptionPeriod.Unit.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = *v1;
  v5 = 0xE300000000000000;
  v6 = 5849412;
  switch(v4)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1262830935;
      break;
    case 2:
      v5 = 0xE500000000000000;
      v6 = 0x48544E4F4DLL;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1380009305;
      break;
    default:
      break;
  }

  v7 = sub_1B256D47C();
  OUTLINED_FUNCTION_2_35(v7);
  return sub_1B24E41B8(v6, v5, v0);
}

uint64_t Transaction.RevocationReason.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  if (!*v1)
  {
    v7 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v7);
    v5 = 0x524548544FLL;
    v6 = 0xE500000000000000;
    return sub_1B24E41B8(v5, v6, v0);
  }

  if (*v1 == 1)
  {
    v4 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v4);
    v5 = 0x45504F4C45564544;
    v6 = 0xEF45555353495F52;
    return sub_1B24E41B8(v5, v6, v0);
  }

  return OUTLINED_FUNCTION_10_0();
}

uint64_t Transaction.OwnershipType.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  v4 = *v1;
  v5 = v1[1];
  v6 = *v1 == 0x4553414843525550 && v5 == 0xE900000000000044;
  if (v6 || (sub_1B256EB5C() & 1) != 0)
  {
    v7 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v7);
    v8 = 0x4553414843525550;
    v9 = 0xE900000000000044;
    return sub_1B24E41B8(v8, v9, v0);
  }

  v11 = v4 == 0x535F594C494D4146 && v5 == 0xED00004445524148;
  if (v11 || (sub_1B256EB5C() & 1) != 0)
  {
    v12 = sub_1B256D47C();
    OUTLINED_FUNCTION_2_35(v12);
    v8 = 0x535F594C494D4146;
    v9 = 0xED00004445524148;
    return sub_1B24E41B8(v8, v9, v0);
  }

  return OUTLINED_FUNCTION_10_0();
}

uint64_t Message.Reason.localizedDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_2_2(v2);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_34_2();
  if (*v1 == 2)
  {
    v6 = OUTLINED_FUNCTION_12_23();
    OUTLINED_FUNCTION_1_38(v6);
    v5 = 0xD000000000000016;
  }

  else
  {
    if (*v1 == 1)
    {
      v4 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v4);
      v5 = 0x5F434952454E4547;
    }

    else
    {
      v8 = sub_1B256D47C();
      OUTLINED_FUNCTION_2_35(v8);
      v5 = 0x5F4E574F4E4B4E55;
    }

    v7 = 0xEB0000000047534DLL;
  }

  return sub_1B24E41B8(v5, v7, v0);
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_12_23()
{

  return sub_1B256D47C();
}

uint64_t OUTLINED_FUNCTION_15_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1B24E41B8(a1, a2 | 0x8000000000000000, v2);
}

uint64_t OUTLINED_FUNCTION_20_13@<X0>(uint64_t a1@<X8>)
{

  return sub_1B251B0E0(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_1B256D47C();
}

uint64_t ExternalPurchaseCustomLink.NoticeResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

StoreKit::ExternalPurchaseCustomLink::NoticeType_optional __swiftcall ExternalPurchaseCustomLink.NoticeType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B251CC98@<X0>(uint64_t *a1@<X8>)
{
  result = ExternalPurchaseCustomLink.NoticeType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ExternalPurchaseCustomLink.Token.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ExternalPurchaseCustomLink.Token.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C();
  }
}

uint64_t ExternalPurchaseCustomLink.Token.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B251CDAC()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 16) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B251CE30, v1, 0);
}

uint64_t sub_1B251CE30()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 24) = sub_1B246F59C();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B251CED0;

  return sub_1B24EB7E4();
}

uint64_t sub_1B251CED0()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t static ExternalPurchaseCustomLink.showNotice(type:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  *(v0 + 128) = v3;
  *(v0 + 136) = type metadata accessor for ExternalGatewayRequest();
  *(v0 + 144) = swift_task_alloc();
  *(v0 + 184) = *v2;
  v4 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B251D050()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(*(v0 + 136) + 28);
  v4 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001B258E560;
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = v1;
  v6 = sub_1B256D8AC();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v7 = *(v0 + 144);
  v8 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v8, qword_1ED69A108);
  sub_1B24D3E10();
  OUTLINED_FUNCTION_8_27();
  *(v7 + 8) = xmmword_1B257BCD0;
  *(v7 + 24) = 1;
  *(v7 + v9) = v6;
  OUTLINED_FUNCTION_7_25(v10, v11);
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v12 = qword_1EB7CDA48;
  *(v0 + 152) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B251D1E4, v12, 0);
}

uint64_t sub_1B251D1E4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1B251D288;
  v3 = v0[18];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B251D288()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_23();
  *v2 = v1;
  *(v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1B251D414;
  }

  else
  {

    v3 = sub_1B251D39C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B251D39C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 144);

  sub_1B2443A74(v1);
  **(v0 + 128) = 1;

  OUTLINED_FUNCTION_14_7();

  return v2();
}

uint64_t sub_1B251D414()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 176);

  v2 = parseError(_:)(v1);
  swift_getErrorValue();
  v3 = sub_1B2518EF0(*(v0 + 104));
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  if (v3)
  {
    sub_1B2443A74(*(v0 + 144));

    **(v0 + 128) = 0;

    OUTLINED_FUNCTION_14_7();
  }

  else
  {
    swift_willThrow();

    sub_1B2443A74(v5);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t static ExternalPurchaseCustomLink.token(for:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v0[5] = type metadata accessor for ExternalGatewayRequest();
  v0[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B251D594()
{
  OUTLINED_FUNCTION_24_5();
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 28);
  v4 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for SKLogger();
  v0[7] = __swift_project_value_buffer(v7, qword_1ED69A108);
  sub_1B24D3E10();
  OUTLINED_FUNCTION_8_27();
  *(v5 + 8) = v6;
  *(v5 + 16) = v2;
  *(v5 + 24) = 0;
  *(v5 + v8) = 0;
  OUTLINED_FUNCTION_7_25(v9, v10);
  v11 = qword_1EB7CDA40;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v12 = qword_1EB7CDA48;
  v0[8] = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B251D6B4, v12, 0);
}

uint64_t sub_1B251D6B4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B251D758;
  v3 = v0[6];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B251D758()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_23();
  *v3 = v2;
  *v3 = *v1;
  v2[11] = v4;
  v2[12] = v5;
  v2[13] = v0;

  if (v0)
  {
    v6 = sub_1B251DA88;
  }

  else
  {
    v6 = sub_1B251D864;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B251D864()
{
  v16 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[6];
    v4 = v0[2];

    sub_1B2443A74(v3);
    *v4 = v2;
    v4[1] = v1;
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    sub_1B256E4FC();

    v15[0] = 0xD00000000000001CLL;
    v15[1] = 0x80000001B2590070;
    MEMORY[0x1B2749D50](v6, v5);
    v7 = sub_1B256E0CC();

    v8 = sub_1B256D5CC();

    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B2519814(0, 0xE000000000000000, v15);
      *(v9 + 12) = 2082;
      v11 = sub_1B2519814(0xD00000000000001CLL, 0x80000001B2590070, v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_1B23EF000, v8, v7, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v10, -1, -1);
      MEMORY[0x1B274BFF0](v9, -1, -1);
    }

    else
    {
    }

    v12 = v0[2];
    sub_1B2443A74(v0[6]);
    *v12 = 0;
    v12[1] = 0;
  }

  OUTLINED_FUNCTION_14_7();

  return v13();
}

uint64_t sub_1B251DA88()
{
  OUTLINED_FUNCTION_24_5();
  v1 = v0[13];
  v2 = v0[6];

  parseError(_:)(v1);
  swift_willThrow();

  sub_1B2443A74(v2);

  v3 = v0[1];

  return v3();
}

unint64_t sub_1B251DB30()
{
  result = qword_1EB7D2738;
  if (!qword_1EB7D2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2738);
  }

  return result;
}

unint64_t sub_1B251DB88()
{
  result = qword_1EB7D2740;
  if (!qword_1EB7D2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2740);
  }

  return result;
}

unint64_t sub_1B251DBE0()
{
  result = qword_1EB7D2748;
  if (!qword_1EB7D2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2748);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalPurchaseCustomLink(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1B251DCE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_7_25(uint64_t result, uint64_t a2)
{
  *v2 = 0;
  v2[1] = 0;
  v5 = (v3 + *(v4 + 40));
  *v5 = result;
  v5[1] = a2;
  return result;
}

uint64_t sub_1B251DDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1B2584DB8;
  v9[5] = v8;
  sub_1B2521150(0, 0, v6, &unk_1B2584DC8, v9);
}

uint64_t sub_1B251DF08()
{
  OUTLINED_FUNCTION_4_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v1[16] = swift_getObjectType();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B251DF7C()
{
  v50 = v0;
  v1 = v0[9];
  if (!v1)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v11 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v11, qword_1ED69A108);
    sub_1B256E0AC();

    v12 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v14 = v0[11];
      v13 = v0[12];
      v15 = "Missing identifier for product lookup";
LABEL_12:
      v17 = v15 - 32;
      v18 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v18 = 136446466;
      OUTLINED_FUNCTION_1_39();
      MEMORY[0x1B2749D50](v14, v13);
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_7_26(v19, v20, v21, v22, v23, v24, v25, v26, v48, v49[0], v49[1], v49[2]);
      OUTLINED_FUNCTION_28_12();
      *(v18 + 4) = v13;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD000000000000025, v17 | 0x8000000000000000, v49);
      OUTLINED_FUNCTION_52_3(&dword_1B23EF000, v27, v28, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

LABEL_13:

    sub_1B251E698();
    OUTLINED_FUNCTION_24_13();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_8_7();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[10];
  if (!v2)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v16 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v16, qword_1ED69A108);
    sub_1B256E0AC();

    v12 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v14 = v0[11];
      v13 = v0[12];
      v15 = "Missing parameters for product lookup";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
  v0[5] = &type metadata for ProductPageLookupRequest.ParameterRequest;
  v0[6] = sub_1B252184C();
  v8 = swift_allocObject();
  v0[2] = v8;
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v1;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v2;

  v9 = sub_1B251E6D8(v0 + 2);
  v0[17] = v9;
  v0[18] = v10;
  v29 = v9;
  v30 = v10;
  v31 = v0[16];
  v33 = v0[11];
  v32 = v0[12];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v34 = swift_task_alloc();
  v0[19] = v34;
  v34[2] = v33;
  v34[3] = v32;
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v35 = swift_task_alloc();
  v0[20] = v35;
  sub_1B252172C();
  *v35 = v0;
  v35[1] = sub_1B251E4B0;
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_7();

  return MEMORY[0x1EEE6DE38](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1B251E4B0()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B251E5D8()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2443AE4(v0[17], v0[18]);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B251E63C()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B2443AE4(*(v0 + 136), *(v0 + 144));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

id sub_1B251E698()
{
  v0 = [swift_getObjCClassFromMetadata() _unavailableErrorWithUserInfo_];

  return v0;
}

uint64_t sub_1B251E6D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256CEAC();
  swift_allocObject();
  sub_1B256CE9C();
  v1 = sub_1B256CE8C();

  return v1;
}

id sub_1B251E76C()
{
  v0 = [swift_getObjCClassFromMetadata() _unknownErrorWithUserInfo_];

  return v0;
}

void sub_1B251E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v38 = a4;
  v39 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v40 = [objc_opt_self() defaultBroker];
  v14 = *(v10 + 16);
  v43 = a1;
  v36 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v41 = a2;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v10 + 32);
  v37 = v15;
  v18(v17 + v15, v13, v9);
  *(v17 + v16) = v44;
  v50 = sub_1B25218D0;
  v51 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v35 = &v48;
  v48 = sub_1B244BD28;
  v49 = &block_descriptor_49;
  v19 = _Block_copy(&aBlock);
  v42 = a3;

  v20 = v40;
  v21 = [v40 productLookupServiceWithErrorHandler_];
  _Block_release(v19);

  if (v21)
  {
    v22 = v18;
    v23 = sub_1B256D1FC();
    v36(v13, v43, v9);
    v24 = swift_allocObject();
    v25 = v42;
    *(v24 + 16) = v41;
    *(v24 + 24) = v25;
    v22(v24 + v37, v13, v9);
    *(v24 + v16) = v44;
    v50 = sub_1B2521A48;
    v51 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B243BA98;
    v49 = &block_descriptor_55;
    v26 = _Block_copy(&aBlock);

    [v21 lookupProductWithParametersProductRequest:v23 reply:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v41;
    v27 = v42;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v29, qword_1ED69A108);
    v30 = sub_1B256E0AC();

    v31 = sub_1B256D5CC();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136446466;
      v45 = v33;
      aBlock = 91;
      v47 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v28, v27);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v34 = sub_1B2519814(aBlock, v47, &v45);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_1B2519814(0xD000000000000039, 0x80000001B2591FE0, &v45);
      _os_log_impl(&dword_1B23EF000, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v33, -1, -1);
      MEMORY[0x1B274BFF0](v32, -1, -1);
    }

    aBlock = sub_1B251E76C();
    sub_1B256DCFC();
  }
}

BOOL sub_1B251ECA4()
{
  v1 = [v0 domain];
  v2 = sub_1B256D9BC();
  v4 = v3;

  if (v2 == sub_1B256D9BC() && v4 == v5)
  {

    return [v0 code] == 512;
  }

  v7 = sub_1B256EB5C();

  result = 0;
  if (v7)
  {
    return [v0 code] == 512;
  }

  return result;
}

uint64_t sub_1B251EE28(uint64_t a1, uint64_t a2, int a3, int a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  if (a1)
  {
    sub_1B256D9BC();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v6[4] = v11;
  if (a2)
  {
    a2 = sub_1B256D87C();
  }

  v6[5] = a2;
  sub_1B256D9BC();
  v6[6] = v12;
  sub_1B256D9BC();
  v6[7] = v13;
  a6;
  v14 = swift_task_alloc();
  v6[8] = v14;
  *v14 = v6;
  v14[1] = sub_1B251EF9C;

  return sub_1B251DF08();
}

uint64_t sub_1B251EF9C(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_6_1();
  v6 = v5;
  OUTLINED_FUNCTION_3_10();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *(v8 + 16);
  v11 = *v2;
  OUTLINED_FUNCTION_0_8();
  *v12 = v11;

  if (v3)
  {
    if (v9)
    {
      v13 = *(v6 + 24);
      v14 = sub_1B256D0CC();

      (v13)[2](v13, 0, v14);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v9)
  {
    v15 = *(v6 + 24);
    (v15)[2](v15, a1, 0);

    _Block_release(v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v16();
}

uint64_t sub_1B251F1C8()
{
  OUTLINED_FUNCTION_4_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[14] = swift_getObjectType();
  v1[15] = type metadata accessor for ProductPageLookupRequest.URLRequest();
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  v1[17] = swift_task_alloc();
  v7 = sub_1B256D14C();
  v1[18] = v7;
  OUTLINED_FUNCTION_26_7(v7);
  v1[19] = v8;
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B251F2F4()
{
  v76 = v0;
  v1 = v0[17];
  v2 = v0[18];
  sub_1B2521654(v0[8], v1, &qword_1EB7D0018);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1B246E8B0(v0[17], &qword_1EB7D0018);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v3 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v3, qword_1ED69A108);
    sub_1B256E0AC();

    v4 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v6 = v0[9];
      v5 = v0[10];
      v7 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v7 = 136446466;
      OUTLINED_FUNCTION_1_39();
      MEMORY[0x1B2749D50](v6, v5);
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_7_26(v8, v9, v10, v11, v12, v13, v14, v15, v72, v73, v74, v75);
      OUTLINED_FUNCTION_28_12();
      *(v7 + 4) = v5;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_1B2519814(0xD00000000000001ELL, 0x80000001B2591F30, &v73);
      OUTLINED_FUNCTION_52_3(&dword_1B23EF000, v16, v17, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    sub_1B251E698();
    OUTLINED_FUNCTION_24_13();
    goto LABEL_18;
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v18 = sub_1B248EBE8();
  if (!v19)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v31 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v31, qword_1ED69A108);
    OUTLINED_FUNCTION_6_25();
    sub_1B256E4FC();

    OUTLINED_FUNCTION_112_0();
    v74 = 0xD000000000000022;
    v75 = v32;
    v33 = sub_1B256D0EC();
    MEMORY[0x1B2749D50](v33);

    v34 = v75;
    v35 = sub_1B256E0AC();

    v36 = sub_1B256D5CC();

    if (OUTLINED_FUNCTION_29_11())
    {
      v38 = v0[9];
      v37 = v0[10];
      v39 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v39 = 136446466;
      OUTLINED_FUNCTION_1_39();
      MEMORY[0x1B2749D50](v38, v37);
      OUTLINED_FUNCTION_5_29();
      v48 = OUTLINED_FUNCTION_7_26(v40, v41, v42, v43, v44, v45, v46, v47, v72, v73, v74, v75);

      *(v39 + 4) = v48;
      *(v39 + 12) = 2082;
      v49 = sub_1B2519814(0xD000000000000022, v34, &v73);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_1B23EF000, v36, v35, "%{public}s%{public}s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v67 = v0[19];
    v66 = v0[20];
    v68 = v0[18];
    sub_1B251E698();
    OUTLINED_FUNCTION_24_13();
    (*(v67 + 8))(v66, v68);
LABEL_18:

    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_8_7();

    __asm { BRAA            X1, X16 }
  }

  v20 = v18;
  v21 = v19;
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[12];
  v25 = v0[10];
  v26 = v0[11];
  v27 = v0[9];
  (*(v0[19] + 16))(v22 + *(v23 + 28), v0[20], v0[18]);
  v22[2] = v27;
  v22[3] = v25;
  v22[4] = v26;
  v22[5] = v24;
  *v22 = v20;
  v22[1] = v21;
  v0[5] = v23;
  v0[6] = sub_1B25216BC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B248F7E8(v22, boxed_opaque_existential_1);

  v29 = sub_1B251E6D8(v0 + 2);
  v0[21] = v29;
  v0[22] = v30;
  v50 = v29;
  v51 = v30;
  v52 = v0[14];
  v54 = v0[9];
  v53 = v0[10];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v55 = swift_task_alloc();
  v0[23] = v55;
  v55[2] = v54;
  v55[3] = v53;
  v55[4] = v50;
  v55[5] = v51;
  v55[6] = v52;
  v56 = swift_task_alloc();
  v0[24] = v56;
  sub_1B252172C();
  *v56 = v0;
  v56[1] = sub_1B251FA38;
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_8_7();

  return MEMORY[0x1EEE6DE38](v57, v58, v59, v60, v61, v62, v63, v64);
}

uint64_t sub_1B251FA38()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B251FB60()
{
  OUTLINED_FUNCTION_24_5();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  sub_1B2443AE4(v0[21], v0[22]);
  sub_1B248F84C(v4);
  (*(v2 + 8))(v1, v3);
  v5 = v0[7];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1B251FC1C()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  sub_1B2443AE4(v0[21], v0[22]);
  sub_1B248F84C(v4);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_7_2();

  return v5();
}

void sub_1B251FCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v38 = a4;
  v39 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v40 = [objc_opt_self() defaultBroker];
  v14 = *(v10 + 16);
  v43 = a1;
  v36 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v41 = a2;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v10 + 32);
  v37 = v15;
  v18(v17 + v15, v13, v9);
  *(v17 + v16) = v44;
  v50 = sub_1B2521B0C;
  v51 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v35 = &v48;
  v48 = sub_1B244BD28;
  v49 = &block_descriptor_22;
  v19 = _Block_copy(&aBlock);
  v42 = a3;

  v20 = v40;
  v21 = [v40 productLookupServiceWithErrorHandler_];
  _Block_release(v19);

  if (v21)
  {
    v22 = v18;
    v23 = sub_1B256D1FC();
    v36(v13, v43, v9);
    v24 = swift_allocObject();
    v25 = v42;
    *(v24 + 16) = v41;
    *(v24 + 24) = v25;
    v22(v24 + v37, v13, v9);
    *(v24 + v16) = v44;
    v50 = sub_1B2521B10;
    v51 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B243BA98;
    v49 = &block_descriptor_33;
    v26 = _Block_copy(&aBlock);

    [v21 lookupProductWithURLProductRequest:v23 reply:v26];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v41;
    v27 = v42;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v29, qword_1ED69A108);
    v30 = sub_1B256E0AC();

    v31 = sub_1B256D5CC();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136446466;
      v45 = v33;
      aBlock = 91;
      v47 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v28, v27);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v34 = sub_1B2519814(aBlock, v47, &v45);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2082;
      *(v32 + 14) = sub_1B2519814(0xD000000000000039, 0x80000001B2591FE0, &v45);
      _os_log_impl(&dword_1B23EF000, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v33, -1, -1);
      MEMORY[0x1B274BFF0](v32, -1, -1);
    }

    aBlock = sub_1B251E76C();
    sub_1B256DCFC();
  }
}

uint64_t sub_1B25201C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v8 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v8, qword_1ED69A108);
  OUTLINED_FUNCTION_6_25();
  sub_1B256E4FC();

  OUTLINED_FUNCTION_112_0();
  v31 = 0xD000000000000029;
  v32 = v9;
  v10 = sub_1B256D0CC();
  v11 = [v10 description];
  v12 = sub_1B256D9BC();
  v14 = v13;

  MEMORY[0x1B2749D50](v12, v14);

  v15 = v32;
  v16 = sub_1B256E0AC();

  v17 = sub_1B256D5CC();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_20_4();
    *v18 = 136446466;
    OUTLINED_FUNCTION_1_39();
    MEMORY[0x1B2749D50](a2, a3);
    OUTLINED_FUNCTION_5_29();
    v27 = OUTLINED_FUNCTION_7_26(v19, v20, v21, v22, v23, v24, v25, v26, a5, v30, v31, v32);

    *(v18 + 4) = v27;
    *(v18 + 12) = 2082;
    v28 = sub_1B2519814(0xD000000000000029, v15, &v30);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    OUTLINED_FUNCTION_23_11();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  v31 = sub_1B251E76C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  return sub_1B256DCFC();
}

void sub_1B2520414(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v4 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v4, qword_1ED69A108);
    sub_1B256E4FC();

    OUTLINED_FUNCTION_112_0();
    v29 = v5;
    v6 = sub_1B256D0CC();
    v7 = [v6 description];
    v8 = sub_1B256D9BC();
    v10 = v9;

    MEMORY[0x1B2749D50](v8, v10);

    v11 = sub_1B256E0AC();

    v12 = sub_1B256D5CC();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_11_20(4.8752e-34);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v14 = sub_1B2519814(0xD000000000000022, v29, &v30);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2082;
      v15 = sub_1B2519814(0xD000000000000022, v29, &v30);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1B23EF000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v17 = sub_1B256D0CC();
    v18 = sub_1B251ECA4();

    if (v18)
    {
      v19 = sub_1B251E698();
    }

    else
    {
      v19 = sub_1B251E76C();
    }

    v20 = v19;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
    sub_1B256DCFC();
  }

  else if (a1)
  {
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
    sub_1B256DD0C();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v22 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v22, qword_1ED69A108);
    v23 = sub_1B256E0BC();

    v24 = sub_1B256D5CC();

    if (os_log_type_enabled(v24, v23))
    {
      v25 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_11_20(4.8752e-34);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v26 = sub_1B2519814(v27, v28, &v30);

      *(v25 + 4) = v26;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1B2519814(0xD00000000000002FLL, 0x80000001B2592050, &v30);
      _os_log_impl(&dword_1B23EF000, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      OUTLINED_FUNCTION_23_11();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    sub_1B251E76C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
    sub_1B256DCFC();
  }
}

uint64_t sub_1B25208F4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v9 = sub_1B256D14C();
  v10 = *(v9 - 8);
  v11 = swift_task_alloc();
  v5[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0018);
  v12 = swift_task_alloc();
  v5[4] = v12;
  v5[5] = _Block_copy(a4);
  if (a1)
  {
    sub_1B256D12C();
    (*(v10 + 32))(v12, v11, v9);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v9);
  sub_1B256D9BC();
  v5[6] = v14;
  sub_1B256D9BC();
  v5[7] = v15;
  a5;
  v16 = swift_task_alloc();
  v5[8] = v16;
  *v16 = v5;
  v16[1] = sub_1B2520AF4;

  return sub_1B251F1C8();
}

uint64_t sub_1B2520AF4(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_6_1();
  v6 = v5;
  OUTLINED_FUNCTION_3_10();
  *v7 = v6;
  v9 = v8[5];
  v10 = v8[4];
  v11 = v8[2];
  v12 = *v2;
  OUTLINED_FUNCTION_0_8();
  *v13 = v12;

  sub_1B246E8B0(v10, &qword_1EB7D0018);

  if (v3)
  {
    if (v9)
    {
      v14 = *(v6 + 40);
      v15 = sub_1B256D0CC();

      (v14)[2](v14, 0, v15);
      _Block_release(v14);
    }

    else
    {
    }
  }

  else if (v9)
  {
    v16 = *(v6 + 40);
    (v16)[2](v16, a1, 0);

    _Block_release(v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v17();
}

uint64_t sub_1B2520D1C()
{
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_17(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  v3 = OUTLINED_FUNCTION_8_28();

  return v4(v3);
}

uint64_t sub_1B2520DD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B24741E0;

  return v6();
}

uint64_t sub_1B2520EB8()
{
  OUTLINED_FUNCTION_24_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_17(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  v3 = OUTLINED_FUNCTION_8_28();

  return v4(v3);
}

uint64_t sub_1B2520F64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B2445514;

  return v7();
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B252108C()
{
  OUTLINED_FUNCTION_24_5();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_17(v6);
  *v7 = v8;
  v7[1] = sub_1B2445514;

  return sub_1B2520F64(v2, v3, v4, v5);
}

uint64_t sub_1B2521150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1B2521654(a3, v22 - v10, &qword_1EB7D1910);
  v12 = sub_1B256DDAC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B246E8B0(v11, &qword_1EB7D1910);
  }

  else
  {
    sub_1B256DD9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1B256DCEC();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1B256DA3C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1B246E8B0(a3, &qword_1EB7D1910);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B246E8B0(a3, &qword_1EB7D1910);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1B252142C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B2445684;

  return v6(a1);
}

uint64_t sub_1B2521524()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B25215BC()
{
  OUTLINED_FUNCTION_21_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_23(v1);

  return v4(v3);
}

uint64_t sub_1B2521654(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B25216BC()
{
  result = qword_1EB7D2750;
  if (!qword_1EB7D2750)
  {
    type metadata accessor for ProductPageLookupRequest.URLRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2750);
  }

  return result;
}

unint64_t sub_1B252172C()
{
  result = qword_1EB7CD2B0;
  if (!qword_1EB7CD2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7CD2B0);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B2521788()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_17(v0);
  *v1 = v2;
  v1[1] = sub_1B24741E0;
  v3 = OUTLINED_FUNCTION_8_28();

  return v4(v3);
}

unint64_t sub_1B252184C()
{
  result = qword_1EB7CD308;
  if (!qword_1EB7CD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD308);
  }

  return result;
}

uint64_t sub_1B25218D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  OUTLINED_FUNCTION_26_7(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_1B25201C0(a1, *(v1 + 16), *(v1 + 24), v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_26Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1B2521A4C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2758);
  OUTLINED_FUNCTION_26_7(v4);
  sub_1B2520414(a1, a2);
}

void OUTLINED_FUNCTION_5_29()
{

  JUMPOUT(0x1B2749D50);
}

unint64_t OUTLINED_FUNCTION_7_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_1B2519814(v13, v14, &a10);
}

void OUTLINED_FUNCTION_11_20(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1B2749D50);
}

unint64_t OUTLINED_FUNCTION_17_16(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_1B2519814(a1, v1, va);
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_24_13()
{

  return swift_willThrow();
}

void OUTLINED_FUNCTION_26_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_28_12()
{
}

BOOL OUTLINED_FUNCTION_29_11()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1B2521CB4()
{
  v1 = v0;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v12 = sub_1B256EE7C();
  v13 = v3;
  MEMORY[0x1B2749D50](0x74696E696544203ALL, 0xE800000000000000);
  v5 = v12;
  v4 = v13;
  v6 = sub_1B256E09C();

  v7 = sub_1B256D5CC();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B2519814(0, 0xE000000000000000, &v12);
    *(v8 + 12) = 2082;
    v10 = sub_1B2519814(v5, v4, &v12);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  else
  {
  }

  sub_1B24F6FF0();

  return v1;
}

uint64_t sub_1B2521EB8()
{
  sub_1B2521CB4();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1B2521F04()
{
  sub_1B2522004();
  result = sub_1B2521F70();
  qword_1EB7D2760 = result;
  return result;
}

id sub_1B2521F70()
{
  v0 = sub_1B256D98C();

  v1 = sub_1B256D98C();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

unint64_t sub_1B2522004()
{
  result = qword_1EB7D27E8;
  if (!qword_1EB7D27E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D27E8);
  }

  return result;
}

uint64_t sub_1B2522048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1B24AEC70(&unk_1F29AEF28, *a1, v4, v6);
  if (v2)
  {
    return OUTLINED_FUNCTION_4_25();
  }

  v10 = v7;
  v11 = v8;
  v12 = v7 == 0x66664F6F72746E49 && v8 == 0xEA00000000007265;
  if (v12 || (sub_1B256EB5C() & 1) != 0)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_0_39();
    sub_1B24AEC70(v27, v28, v29, v30);
    v13 = v44;
    v14 = v45;
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B24AF3A0(v15, v16, v17, v18, v19, v20, v21, v22, v51, v53, v55, v57, v59, v61, v62, *v63, *&v63[8], *&v63[16], v64, SBYTE8(v64), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v64 = *&v63[4];
  LODWORD(v65) = *&v63[20];
  OUTLINED_FUNCTION_0_39();
  sub_1B24AEC70(v23, v24, v25, v26);
  v60 = v31;
  v68 = v32;
  OUTLINED_FUNCTION_0_39();
  sub_1B24AF05C();
  v58 = v33;
  OUTLINED_FUNCTION_0_39();
  sub_1B24AEC70(v34, v35, v36, v37);
  Product.SubscriptionPeriod.init(from8601String:)(v38, v39, &v61);
  v56 = v61;
  v54 = v62;
  OUTLINED_FUNCTION_0_39();
  sub_1B24AEC70(v40, v41, v42, v43);
  v52 = v46;
  v47 = v5;
  v49 = v48;
  result = sub_1B24472E0(v47, v4, v6);
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v64;
  *(a2 + 48) = v65;
  v50 = v68;
  *(a2 + 56) = v60;
  *(a2 + 64) = v50;
  *(a2 + 72) = v56;
  *(a2 + 80) = v54;
  *(a2 + 88) = v58;
  *(a2 + 96) = v52;
  *(a2 + 104) = v49;
  return result;
}

uint64_t Product.SubscriptionOffer.OfferType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_1B2522390@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, void, void)@<X3>, void *a3@<X8>)
{
  result = a2(v6, *a1, a1[1]);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

void Product.SubscriptionOffer.period.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t static Product.SubscriptionOffer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 36);
  v8 = *(a1 + 38);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v40 = *(a2 + 32);
  v14 = *(a2 + 36);
  v15 = *(a2 + 38);
  v42 = *(a2 + 40);
  v41 = *(a2 + 48);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    v36 = *(a2 + 64);
    v37 = *(a2 + 56);
    v30 = *(a2 + 72);
    v31 = *(a2 + 80);
    v32 = *(a2 + 88);
    v38 = *(a1 + 64);
    v39 = *(a1 + 56);
    v33 = *(a1 + 72);
    v34 = *(a1 + 80);
    v35 = *(a1 + 88);
    v26 = *(a2 + 104);
    v27 = *(a2 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 96);
    v16 = *a1 == *a2 && v3 == v11;
    if (!v16 && (sub_1B256EB5C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v36 = *(a2 + 64);
    v37 = *(a2 + 56);
    v30 = *(a2 + 72);
    v31 = *(a2 + 80);
    v32 = *(a2 + 88);
    v38 = *(a1 + 64);
    v39 = *(a1 + 56);
    v33 = *(a1 + 72);
    v34 = *(a1 + 80);
    v35 = *(a1 + 88);
    v26 = *(a2 + 104);
    v27 = *(a2 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 96);
    if (v11)
    {
      return 0;
    }
  }

  v17 = v4 == v12 && v5 == v13;
  if (!v17 && (sub_1B256EB5C() & 1) == 0 || (MEMORY[0x1B274A4F0](v6 | (v7 << 32) | (v8 << 48), v9, v10, v40 | (v14 << 32) | (v15 << 48), v42, v41) & 1) == 0)
  {
    return 0;
  }

  if (v39 == v37 && v38 == v36)
  {
    if (v33 == v30 && v34 == v31 && v35 == v32)
    {
      goto LABEL_38;
    }

    return 0;
  }

  v19 = sub_1B256EB5C();
  result = 0;
  if (v19)
  {
    v21 = v33 == v30 && v34 == v31;
    if (v21 && v35 == v32)
    {
LABEL_38:
      if (v29 == v27 && v28 == v26)
      {
        return 1;
      }

      else
      {

        return sub_1B256EB5C();
      }
    }
  }

  return result;
}

uint64_t Product.SubscriptionOffer.hash(into:)()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  if (*(v0 + 8))
  {
    sub_1B256ED5C();
    sub_1B256DA7C();
  }

  else
  {
    sub_1B256ED5C();
  }

  sub_1B256DA7C();
  sub_1B256E28C();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v3);
  MEMORY[0x1B274AFC0](v2);

  return sub_1B256DA7C();
}

uint64_t Product.SubscriptionOffer.hashValue.getter()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  sub_1B256ED3C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256DA7C();
  }

  sub_1B256DA7C();
  sub_1B256E28C();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v3);
  MEMORY[0x1B274AFC0](v4);
  MEMORY[0x1B274AFC0](v5);
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2522968()
{
  sub_1B256ED3C();
  Product.SubscriptionOffer.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t Product.SubscriptionOffer.Signature.keyID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Product.SubscriptionOffer.Signature.nonce.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Product.SubscriptionOffer.Signature() + 20);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Product.SubscriptionOffer.Signature()
{
  result = qword_1EB7D2810;
  if (!qword_1EB7D2810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Product.SubscriptionOffer.Signature.nonce.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_27() + 20);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Product.SubscriptionOffer.Signature.timestamp.setter()
{
  result = OUTLINED_FUNCTION_7_27();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Product.SubscriptionOffer.Signature.signature.getter()
{
  type metadata accessor for Product.SubscriptionOffer.Signature();
  v0 = OUTLINED_FUNCTION_22_1();
  sub_1B244784C(v0, v1);
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Product.SubscriptionOffer.Signature.signature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Product.SubscriptionOffer.Signature() + 28);
  result = sub_1B2443AE4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Product.SubscriptionOffer.Signature.init(keyID:nonce:timestamp:signature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for Product.SubscriptionOffer.Signature();
  v13 = v12[5];
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  result = (*(v14 + 32))(&a7[v13], a3);
  *&a7[v12[6]] = a4;
  v16 = &a7[v12[7]];
  *v16 = a5;
  *(v16 + 1) = a6;
  return result;
}

uint64_t static Product.SubscriptionOffer.Signature.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {
    v5 = type metadata accessor for Product.SubscriptionOffer.Signature();
    if ((_s8StoreKit7ProductV19ContingentPriceInfoV2IDV2eeoiySbAG_AGtFZ_0() & 1) != 0 && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)))
    {

      JUMPOUT(0x1B2749490);
    }
  }

  return 0;
}

uint64_t Product.SubscriptionOffer.Signature.hash(into:)()
{
  sub_1B256DA7C();
  v1 = type metadata accessor for Product.SubscriptionOffer.Signature();
  sub_1B256D3CC();
  OUTLINED_FUNCTION_2_36();
  sub_1B25231F4(v2, v3);
  sub_1B256D8FC();
  MEMORY[0x1B274AFC0](*(v0 + *(v1 + 24)));

  return sub_1B256D23C();
}

uint64_t Product.SubscriptionOffer.Signature.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  v1 = type metadata accessor for Product.SubscriptionOffer.Signature();
  sub_1B256D3CC();
  OUTLINED_FUNCTION_2_36();
  sub_1B25231F4(v2, v3);
  sub_1B256D8FC();
  MEMORY[0x1B274AFC0](*(v0 + *(v1 + 24)));
  sub_1B256D23C();
  return sub_1B256ED7C();
}

uint64_t sub_1B2522FD8(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256D3CC();
  sub_1B25231F4(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256D8FC();
  MEMORY[0x1B274AFC0](*(v2 + *(a2 + 24)));
  sub_1B256D23C();
  return sub_1B256ED7C();
}

unint64_t sub_1B25230A8()
{
  result = qword_1EB7D27F0;
  if (!qword_1EB7D27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D27F0);
  }

  return result;
}

unint64_t sub_1B2523100()
{
  result = qword_1EB7D27F8;
  if (!qword_1EB7D27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D27F8);
  }

  return result;
}

unint64_t sub_1B2523158()
{
  result = qword_1EB7D2800;
  if (!qword_1EB7D2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2800);
  }

  return result;
}

uint64_t sub_1B25231F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s17SubscriptionOfferVwxx()
{
}

uint64_t _s17SubscriptionOfferVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t _s17SubscriptionOfferVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t _s17SubscriptionOfferVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;

  return a1;
}

uint64_t _s17SubscriptionOfferVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t _s17SubscriptionOfferVwst(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B25235A4()
{
  result = sub_1B256D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return sub_1B24472E0(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return type metadata accessor for Product.SubscriptionOffer.Signature();
}

void sub_1B25236F8()
{
  sub_1B256D36C();
  if (v0 <= 0x3F)
  {
    sub_1B2441224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B25237EC()
{
  result = type metadata accessor for PurchaseIntentInternal();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B252386C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B256EB5C();

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

uint64_t sub_1B2523930(char a1)
{
  if (a1)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 7105633;
  }
}

void sub_1B252395C()
{
  OUTLINED_FUNCTION_25_7();
  v22 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D28A0);
  OUTLINED_FUNCTION_1_1();
  v20 = v5;
  v21 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D28A8);
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_17();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D28B0);
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  OUTLINED_FUNCTION_24_14(v3);
  sub_1B25255F4();
  sub_1B256EDFC();
  v18 = (v14 + 8);
  if (v22)
  {
    sub_1B2525648();
    sub_1B256E9EC();
    (*(v20 + 8))(v8, v21);
  }

  else
  {
    sub_1B252569C();
    sub_1B256E9EC();
    (*(v10 + 8))(v0, v19);
  }

  (*v18)(v17, v12);
  OUTLINED_FUNCTION_24_6();
}

void sub_1B2523BC8()
{
  OUTLINED_FUNCTION_25_7();
  v40 = v0;
  v3 = v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2880);
  OUTLINED_FUNCTION_1_1();
  v37 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2888);
  OUTLINED_FUNCTION_1_1();
  v36 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_17();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2890);
  OUTLINED_FUNCTION_1_1();
  v38 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  OUTLINED_FUNCTION_24_14(v3);
  sub_1B25255F4();
  v16 = v40;
  sub_1B256EDBC();
  if (v16)
  {
    goto LABEL_8;
  }

  v34 = v8;
  v35 = v1;
  v40 = v3;
  v17 = v39;
  v18 = sub_1B256E9CC();
  sub_1B24AAC2C(v18, 0);
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_1B256E58C();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v29 = &type metadata for PurchaseIntentRequest.Kind;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v15, v11);
    v3 = v40;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_24_6();
    return;
  }

  v33 = 0;
  if (v20 < (v21 >> 1))
  {
    v22 = *(v19 + v20);
    sub_1B24AAC20(v20 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v22)
      {
        LODWORD(v36) = v22;
        sub_1B2525648();
        OUTLINED_FUNCTION_42_2();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v7, v17);
      }

      else
      {
        sub_1B252569C();
        v30 = v35;
        OUTLINED_FUNCTION_42_2();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v30, v34);
      }

      v31 = OUTLINED_FUNCTION_22_6();
      v32(v31);
      __swift_destroy_boxed_opaque_existential_1(v40);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B252402C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x704168636E75616CLL && a2 == 0xE900000000000070;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x796669746F6ELL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

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

uint64_t sub_1B2524188(char a1)
{
  result = 0x746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x704168636E75616CLL;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B25241FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2850);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  OUTLINED_FUNCTION_24_14(a1);
  sub_1B25254A4();
  OUTLINED_FUNCTION_8_11();
  v12[15] = 0;
  type metadata accessor for PurchaseIntentInternal();
  OUTLINED_FUNCTION_3_35();
  sub_1B2524A0C(v9, v10);
  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_7_28();
  sub_1B256EA5C();
  if (!v1)
  {
    type metadata accessor for PurchaseIntentRequest.Add(0);
    OUTLINED_FUNCTION_20_14();
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA3C();
    v12[13] = 2;
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA2C();
    v12[12] = 3;
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA3C();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1B25243BC()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v1;
  v22 = v3;
  type metadata accessor for PurchaseIntentInternal();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D28B8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for PurchaseIntentRequest.Add(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  v23 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1B25254A4();
  sub_1B256EDBC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_3_35();
    sub_1B2524A0C(v14, v15);
    OUTLINED_FUNCTION_19_19();
    sub_1B256E9AC();
    sub_1B2447B14(v7, v13);
    OUTLINED_FUNCTION_20_14();
    OUTLINED_FUNCTION_14_18();
    *(v13 + v9[5]) = sub_1B256E98C() & 1;
    OUTLINED_FUNCTION_14_18();
    v16 = sub_1B256E97C();
    v17 = (v13 + v9[6]);
    *v17 = v16;
    v17[1] = v18;
    OUTLINED_FUNCTION_14_18();
    v19 = sub_1B256E98C();
    v20 = OUTLINED_FUNCTION_10_21();
    v21(v20);
    *(v13 + v9[7]) = v19 & 1;
    sub_1B2525748(v13, v22, type metadata accessor for PurchaseIntentRequest.Add);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1B25256F0(v13, type metadata accessor for PurchaseIntentRequest.Add);
  }

  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B25246E4(uint64_t a1)
{
  v2 = sub_1B252569C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2524720(uint64_t a1)
{
  v2 = sub_1B252569C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B252475C(uint64_t a1)
{
  v2 = sub_1B2525648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2524798(uint64_t a1)
{
  v2 = sub_1B2525648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B25247DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B252386C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2524804(uint64_t a1)
{
  v2 = sub_1B25255F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2524840(uint64_t a1)
{
  v2 = sub_1B25255F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B252487C(_BYTE *a1@<X8>)
{
  sub_1B2523BC8();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t sub_1B25248D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B252402C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B25248F8(uint64_t a1)
{
  v2 = sub_1B25254A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2524934(uint64_t a1)
{
  v2 = sub_1B25254A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2524988(uint64_t a1)
{
  *(a1 + 16) = sub_1B2524A0C(&qword_1EB7D2830, type metadata accessor for PurchaseIntentRequest.Add);
  result = sub_1B2524A0C(&qword_1EB7D1A00, type metadata accessor for PurchaseIntentRequest.Add);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2524A0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B2524A58()
{
  result = qword_1EB7D2838;
  if (!qword_1EB7D2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2838);
  }

  return result;
}

uint64_t sub_1B2524AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746661 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B256EB5C();

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

uint64_t sub_1B2524C1C(char a1)
{
  result = 0x7265746661;
  switch(a1)
  {
    case 1:
      result = 0x764F746E65696C63;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2524C9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2868);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  OUTLINED_FUNCTION_24_14(a1);
  sub_1B25254F8();
  OUTLINED_FUNCTION_8_11();
  v17[15] = 0;
  sub_1B256D36C();
  OUTLINED_FUNCTION_6_26();
  sub_1B2524A0C(v11, v12);
  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_7_28();
  sub_1B256EA5C();
  if (!v2)
  {
    v13 = type metadata accessor for PurchaseIntentRequest.Query(0);
    OUTLINED_FUNCTION_20_14();
    type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_5_30();
    sub_1B2524A0C(v14, v15);
    OUTLINED_FUNCTION_7_28();
    sub_1B256EA0C();
    v17[13] = *(v3 + *(v13 + 24));
    v17[12] = 2;
    sub_1B252554C();
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA5C();
    v17[11] = 3;
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA2C();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1B2524EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12)
{
  OUTLINED_FUNCTION_25_7();
  v55 = v12;
  v15 = v14;
  v49 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v50 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v53 = v24 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2870);
  OUTLINED_FUNCTION_1_1();
  v51 = v26;
  v52 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8_17();
  v28 = type metadata accessor for PurchaseIntentRequest.Query(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v32 = v31 - v30;
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_1B25254F8();
  v54 = v13;
  v33 = v55;
  sub_1B256EDBC();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v55 = v15;
    v48 = v28;
    v34 = v32;
    v35 = v50;
    OUTLINED_FUNCTION_6_26();
    sub_1B2524A0C(v36, v37);
    OUTLINED_FUNCTION_19_19();
    sub_1B256E9AC();
    (*(v35 + 32))(v34, v53, v20);
    type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_20_14();
    OUTLINED_FUNCTION_5_30();
    sub_1B2524A0C(v38, v39);
    sub_1B256E95C();
    sub_1B244394C(v19, v34 + *(v48 + 20));
    sub_1B25255A0();
    sub_1B256E9AC();
    v40 = v48;
    *(v34 + *(v48 + 24)) = a12;
    v41 = sub_1B256E97C();
    v53 = v42;
    v43 = v41;
    v44 = OUTLINED_FUNCTION_1_41();
    v45(v44);
    v46 = (v34 + *(v40 + 28));
    v47 = v53;
    *v46 = v43;
    v46[1] = v47;
    sub_1B2525748(v34, v49, type metadata accessor for PurchaseIntentRequest.Query);
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_1B25256F0(v34, type metadata accessor for PurchaseIntentRequest.Query);
  }

  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B25252F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2524AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2525320(uint64_t a1)
{
  v2 = sub_1B25254F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B252535C(uint64_t a1)
{
  v2 = sub_1B25254F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B25253B0(uint64_t a1)
{
  *(a1 + 16) = sub_1B2524A0C(&qword_1EB7D2840, type metadata accessor for PurchaseIntentRequest.Query);
  result = sub_1B2524A0C(&qword_1EB7CDB10, type metadata accessor for PurchaseIntentRequest.Query);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2525434(uint64_t a1)
{
  result = sub_1B2524A0C(&qword_1EB7D2848, type metadata accessor for PurchaseIntentRequest.Query);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B25254A4()
{
  result = qword_1EB7D2858;
  if (!qword_1EB7D2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2858);
  }

  return result;
}

unint64_t sub_1B25254F8()
{
  result = qword_1EB7CDB28;
  if (!qword_1EB7CDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB28);
  }

  return result;
}

unint64_t sub_1B252554C()
{
  result = qword_1EB7CDB30;
  if (!qword_1EB7CDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB30);
  }

  return result;
}

unint64_t sub_1B25255A0()
{
  result = qword_1EB7D2878;
  if (!qword_1EB7D2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2878);
  }

  return result;
}

unint64_t sub_1B25255F4()
{
  result = qword_1EB7CDB70;
  if (!qword_1EB7CDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB70);
  }

  return result;
}

unint64_t sub_1B2525648()
{
  result = qword_1EB7CDB48;
  if (!qword_1EB7CDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB48);
  }

  return result;
}

unint64_t sub_1B252569C()
{
  result = qword_1EB7D2898;
  if (!qword_1EB7D2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2898);
  }

  return result;
}

uint64_t sub_1B25256F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B2525748(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *sub_1B25257A8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B25258B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B252599C()
{
  result = qword_1EB7D28C0;
  if (!qword_1EB7D28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28C0);
  }

  return result;
}

unint64_t sub_1B25259F4()
{
  result = qword_1EB7D28C8;
  if (!qword_1EB7D28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28C8);
  }

  return result;
}

unint64_t sub_1B2525A4C()
{
  result = qword_1EB7D28D0;
  if (!qword_1EB7D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28D0);
  }

  return result;
}

unint64_t sub_1B2525AA4()
{
  result = qword_1EB7CDB50;
  if (!qword_1EB7CDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB50);
  }

  return result;
}

unint64_t sub_1B2525AFC()
{
  result = qword_1EB7CDB58;
  if (!qword_1EB7CDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB58);
  }

  return result;
}

unint64_t sub_1B2525B54()
{
  result = qword_1EB7CDB38;
  if (!qword_1EB7CDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB38);
  }

  return result;
}

unint64_t sub_1B2525BAC()
{
  result = qword_1EB7CDB40;
  if (!qword_1EB7CDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB40);
  }

  return result;
}

unint64_t sub_1B2525C04()
{
  result = qword_1EB7CDB60;
  if (!qword_1EB7CDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB60);
  }

  return result;
}

unint64_t sub_1B2525C5C()
{
  result = qword_1EB7CDB68;
  if (!qword_1EB7CDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB68);
  }

  return result;
}

unint64_t sub_1B2525CB4()
{
  result = qword_1EB7CDB18;
  if (!qword_1EB7CDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB18);
  }

  return result;
}

unint64_t sub_1B2525D0C()
{
  result = qword_1EB7CDB20;
  if (!qword_1EB7CDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDB20);
  }

  return result;
}

unint64_t sub_1B2525D64()
{
  result = qword_1EB7D28D8;
  if (!qword_1EB7D28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28D8);
  }

  return result;
}

unint64_t sub_1B2525DBC()
{
  result = qword_1EB7D28E0;
  if (!qword_1EB7D28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_19@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t static ExternalPurchaseLink.Option.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = 0, (sub_1B256EB5C() & 1) != 0))
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    sub_1B24472B8(v2, v3, v4);
    sub_1B24472B8(v5, v6, v7);
    v9 = static BackingValue.== infix(_:_:)(&v14, &v11);
    sub_1B24472E0(v11, v12, v13);
    sub_1B24472E0(v14, v15, v16);
  }

  return v9 & 1;
}

uint64_t ExternalPurchaseLink.Option.hashValue.getter()
{
  OUTLINED_FUNCTION_6_27();
  sub_1B256ED3C();
  sub_1B256DA7C();
  OUTLINED_FUNCTION_8_29();
  return sub_1B256ED7C();
}

uint64_t sub_1B2526088()
{
  OUTLINED_FUNCTION_6_27();
  sub_1B256ED3C();
  sub_1B256DA7C();
  OUTLINED_FUNCTION_8_29();
  return sub_1B256ED7C();
}

uint64_t sub_1B25260F4()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 16) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B2526178, v1, 0);
}

uint64_t sub_1B2526178()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 24) = sub_1B246F59C();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B2526218;

  return sub_1B24EB7E4();
}

uint64_t sub_1B2526218()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B2526318()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 16) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B252639C, v1, 0);
}

uint64_t sub_1B252639C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B2526440;

  return sub_1B24EC7E0(0, 0, v1);
}

uint64_t sub_1B2526440()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B252652C()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t static ExternalPurchaseLink.open()()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B24CFB9C;

  return static ExternalPurchaseLink.open(options:)();
}

uint64_t static ExternalPurchaseLink.open(options:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[18] = v1;
  v0[19] = type metadata accessor for ExternalGatewayRequest();
  v0[20] = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B25266A8()
{
  v2 = v1[18];
  v49 = _DYLDProgramSDKAtLeast2023E();
  v3 = sub_1B256D8AC();
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v51 = v8;
  v52 = v2;
  v53 = v1;
  for (i = v2 + 56; ; v4 = i)
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v11 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v10 = v3;
            v9 = v11;
            goto LABEL_10;
          }
        }

        v4 = v3;
        v36 = v1[19];
        v35 = v1[20];

        LOBYTE(v2) = 1;
        if (v49)
        {
          v0 = 1;
        }

        else
        {
          v0 = 2;
        }

        v37 = *(v36 + 28);
        v38 = type metadata accessor for ClientOverride(0);
        __swift_storeEnumTagSinglePayload(v35 + v37, 1, 1, v38);
        if (qword_1ED699E80 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      v10 = v3;
LABEL_10:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(v2 + 48) + 40 * (v12 | (v9 << 6));
      v14 = *v13;
      v0 = *(v13 + 8);
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = *(v13 + 32);

      v55 = v15;
      v54 = v17;
      sub_1B24472B8(v16, v15, v17);
      BackingValue.xpcAllowed.getter();
      if (v18)
      {
        break;
      }

      v3 = v10;
      v32 = sub_1B2455488();
      if (v33)
      {
        v0 = v32;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
        sub_1B256E80C();
        v3 = v10;

        v1 = v53;
        sub_1B244AA0C((*(v10 + 56) + 32 * v0), v53 + 3);
        sub_1B256E82C();
      }

      else
      {
        v1 = v53;
        *(v53 + 3) = 0u;
        *(v53 + 4) = 0u;
      }

      v8 = v51;
      v2 = v52;
      sub_1B2475424((v1 + 6));

      sub_1B24472E0(v16, v55, v54);
    }

    v19 = v18;
    v53[5] = sub_1B24D1250();
    v53[2] = v19;
    sub_1B244AA0C(v53 + 1, v53 + 5);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v10;
    v1 = v14;
    v4 = v0;
    v20 = sub_1B2455488();
    v22 = *(v10 + 16);
    v23 = (v21 & 1) == 0;
    LOBYTE(v2) = v22 + v23;
    if (__OFADD__(v22, v23))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_28:
      v40 = v1[19];
      v39 = v1[20];
      v41 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v41, qword_1ED69A108);
      v42 = sub_1B24D3E10();
      v43 = v40[8];
      v44 = (v39 + v40[9]);
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 16) = v0;
      *(v39 + 24) = v2;
      *(v39 + v43) = v4;
      *v44 = 0;
      v44[1] = 0;
      v45 = (v39 + v40[10]);
      *v45 = v42;
      v45[1] = v46;
      if (qword_1EB7CDA40 != -1)
      {
        OUTLINED_FUNCTION_0_20();
      }

      v47 = qword_1EB7CDA48;
      v1[21] = qword_1EB7CDA48;

      return MEMORY[0x1EEE6DFA0](sub_1B2526BBC, v47, 0);
    }

    v24 = v20;
    v25 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
    if (sub_1B256E80C())
    {
      break;
    }

    v2 = v56;
    if (v25)
    {
LABEL_20:
      v3 = v2;
      v34 = (*(v2 + 56) + 32 * v24);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v1 = v53;
      sub_1B244AA0C(v53 + 5, v34);

      goto LABEL_21;
    }

LABEL_15:
    v3 = v2;
    *(v2 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v28 = (*(v2 + 48) + 16 * v24);
    *v28 = v1;
    v28[1] = v0;
    v1 = v53;
    sub_1B244AA0C(v53 + 5, (*(v2 + 56) + 32 * v24));
    v29 = *(v2 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_38;
    }

    *(v2 + 16) = v31;
LABEL_21:
    sub_1B24472E0(v16, v55, v54);
    v8 = v51;
    v2 = v52;
  }

  v2 = v56;
  v26 = sub_1B2455488();
  if ((v25 & 1) == (v27 & 1))
  {
    v24 = v26;
    if (v25)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  return sub_1B256EC9C();
}

uint64_t sub_1B2526BBC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_1B2526C60;
  v3 = v0[20];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B2526C60()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_1B2526DE0;
  }

  else
  {

    v7 = sub_1B2526D70;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B2526D70()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 160);

  sub_1B2443A74(v1);

  OUTLINED_FUNCTION_7_2();

  return v2();
}

uint64_t sub_1B2526DE0()
{
  v1 = v0[24];

  v2 = parseError(_:)(v1);
  swift_getErrorValue();
  v3 = sub_1B2518EF0(v0[15]);
  v4 = v0[24];
  v5 = v0[20];
  if (v3)
  {
    sub_1B2443A74(v5);
  }

  else
  {
    swift_willThrow();

    sub_1B2443A74(v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B2526EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D28E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  v2 = sub_1B256D0EC();
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001B258E580;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(v0 + 96) = sub_1B2503854(inited);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1B2526FF4;

  return static ExternalPurchaseLink.open(options:)();
}

uint64_t sub_1B2526FF4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B252711C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_7_2();

    return v7();
  }
}

uint64_t sub_1B252711C()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

unint64_t sub_1B252717C()
{
  result = qword_1EB7D28F0;
  if (!qword_1EB7D28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalPurchaseLink(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B252727C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1B25272BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_8_29()
{

  BackingValue.hash(into:)();
}

uint64_t sub_1B2527344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v5[0] = a1;
  v5[1] = a2;
  return a4(v5, a3);
}

uint64_t sub_1B2527380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B2527398()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_22(v3);
  *(v1 + 72) = v4;
  v4[2] = v2;
  v4[3] = sub_1B2528D38;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_30(v5);
  *v6 = v7;
  v6[1] = sub_1B2527470;
  v8 = OUTLINED_FUNCTION_0_40();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1B2527470()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2527578()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[11];
  v2 = sub_1B2528280();
  v3 = sub_1B2443AE4(v0[2], v0[3]);
  v4 = v0[1];
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1B2527604()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2527668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B2527680()
{
  OUTLINED_FUNCTION_21_5();
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_22(v3);
  *(v1 + 72) = v4;
  v4[2] = v2;
  v4[3] = sub_1B2528CCC;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_30(v5);
  *v6 = v7;
  v6[1] = sub_1B2527758;
  v8 = OUTLINED_FUNCTION_0_40();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1B2527758()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2527860()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0[11];
  v2 = sub_1B25284D8();
  if (v1)
  {
    sub_1B2443AE4(v0[2], v0[3]);
    OUTLINED_FUNCTION_7_2();

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    sub_1B2443AE4(v0[2], v0[3]);
    v8 = v0[1];

    return v8(v6, v7);
  }
}

uint64_t sub_1B2527930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B2527958, 0, 0);
}

uint64_t sub_1B2527958()
{
  OUTLINED_FUNCTION_21_5();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v4[2] = v2;
  v4[3] = sub_1B2528BA0;
  v4[4] = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1B2527A50;
  v6 = OUTLINED_FUNCTION_0_40();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1B2527A50()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B2527B58()
{
  OUTLINED_FUNCTION_21_5();
  sub_1B252872C();
  sub_1B2443AE4(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B2527BDC()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2527C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_3_18();
}

uint64_t sub_1B2527C58()
{
  OUTLINED_FUNCTION_4_0();
  v1 = v0[8];
  v0[5] = type metadata accessor for StorefrontRequest();
  v0[6] = sub_1B2528C18(&qword_1EB7CDCB0, type metadata accessor for StorefrontRequest);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B2528BB8(v1, boxed_opaque_existential_1, type metadata accessor for StorefrontRequest);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_30(v3);
  *v4 = v5;
  v4[1] = sub_1B2527D84;
  v6 = v0[9];
  v7 = v0[7];

  return sub_1B2527930(v7, (v0 + 2), sub_1B25289B0, 0, v6);
}

uint64_t sub_1B2527D84()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t sub_1B2527EA0()
{
  OUTLINED_FUNCTION_4_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B2527EFC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[1] = a6;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v25 = a2;
  v24 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v26 = a1;
  sub_1B256CEAC();
  swift_allocObject();
  sub_1B256CE9C();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v14 = sub_1B256CE8C();
  v16 = v15;
  (*(v11 + 16))(v13, v25, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v13, v10);
  v23(&v26, v14, v16, v21, v18);
  sub_1B2443AE4(v14, v16);
}

uint64_t sub_1B2528280()
{
  v1 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v1, qword_1ED69A108);
  sub_1B2528BB8(v4, v3, type metadata accessor for SKLogger);
  v5 = sub_1B256D5CC();
  v6 = sub_1B256D5EC();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = sub_1B256E09C();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B2519814(0x54746E756F636341, 0xEB00000000657079, &v12);
    _os_log_impl(&dword_1B23EF000, v5, v7, "Decoding service response to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  sub_1B256CE7C();
  swift_allocObject();
  sub_1B256CE6C();
  sub_1B2528D50();
  sub_1B256CE5C();

  if (!v0)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1B25284D8()
{
  v1 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v1, qword_1ED69A108);
  sub_1B2528BB8(v4, v3, type metadata accessor for SKLogger);
  v5 = sub_1B256D5CC();
  v6 = sub_1B256D5EC();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = sub_1B256E09C();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B2519814(0xD000000000000017, 0x80000001B25921D0, &v12);
    _os_log_impl(&dword_1B23EF000, v5, v7, "Decoding service response to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  sub_1B256CE7C();
  swift_allocObject();
  sub_1B256CE6C();
  sub_1B2528CE4();
  sub_1B256CE5C();

  if (!v0)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1B252872C()
{
  v0 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v3 = __swift_project_value_buffer(v0, qword_1ED69A108);
  sub_1B2528BB8(v3, v2, type metadata accessor for SKLogger);
  v4 = sub_1B256D5CC();
  v5 = sub_1B256D5EC();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = sub_1B256E09C();
  if (os_log_type_enabled(v4, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B2519814(0xD000000000000012, 0x80000001B25921B0, &v11);
    _os_log_impl(&dword_1B23EF000, v4, v6, "Decoding service response to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B274BFF0](v8, -1, -1);
    MEMORY[0x1B274BFF0](v7, -1, -1);
  }

  sub_1B256CE7C();
  swift_allocObject();
  sub_1B256CE6C();
  type metadata accessor for StorefrontInternal();
  sub_1B2528C18(&qword_1EB7CDC80, type metadata accessor for StorefrontInternal);
  sub_1B256CE5C();
}

void sub_1B25289B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  v9 = sub_1B256D1FC();
  v11[4] = sub_1B2528C78;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B2444748;
  v11[3] = &block_descriptor_23;
  v10 = _Block_copy(v11);

  [v7 storefront:v9 reply:v10];
  _Block_release(v10);
}

uint64_t sub_1B2528ABC(void (*a1)(void))
{
  a1();

  return sub_1B256EE7C();
}

uint64_t sub_1B2528BB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B2528C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B2528C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  return v4(v6, a3);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B2528CE4()
{
  result = qword_1EB7D28F8;
  if (!qword_1EB7D28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D28F8);
  }

  return result;
}

unint64_t sub_1B2528D50()
{
  result = qword_1EB7D2900;
  if (!qword_1EB7D2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2900);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B2528E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t OUTLINED_FUNCTION_9_22(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(a1 + 16) = *(v2 + 32);
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

uint64_t type metadata accessor for FinishTransactionTask()
{
  result = qword_1EB7D2908;
  if (!qword_1EB7D2908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2529048()
{
  sub_1B2441224();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B25290C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B256EB5C();

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

uint64_t sub_1B25291E0(char a1)
{
  if (!a1)
  {
    return 0x764F746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x79654B676F6CLL;
  }

  return 0x746361736E617274;
}

uint64_t sub_1B252924C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2938);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B25298F4();
  sub_1B256EDFC();
  v12[15] = 0;
  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_0_41();
  sub_1B25299AC(v9, v10);
  sub_1B256EA0C();
  if (!v1)
  {
    type metadata accessor for FinishTransactionTask();
    v12[14] = 1;
    sub_1B256EA2C();
    v12[13] = 2;
    sub_1B256EA2C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B2529420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2928);
  OUTLINED_FUNCTION_1_1();
  v30 = v8;
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for FinishTransactionTask();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B25298F4();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v13;
  v15 = v30;
  type metadata accessor for ClientOverride(0);
  v34 = 0;
  OUTLINED_FUNCTION_0_41();
  sub_1B25299AC(v16, v17);
  v18 = v31;
  sub_1B256E95C();
  sub_1B244394C(v6, v14);
  v33 = 1;
  v19 = sub_1B256E97C();
  v20 = (v14 + *(v11 + 20));
  *v20 = v19;
  v20[1] = v21;
  v32 = 2;
  v22 = sub_1B256E97C();
  v23 = v10;
  v25 = v24;
  (*(v15 + 8))(v23, v18);
  v26 = (v14 + *(v11 + 24));
  *v26 = v22;
  v26[1] = v25;
  sub_1B2529948(v14, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B24D3598(v14);
}

uint64_t sub_1B2529748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B25290C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2529770(uint64_t a1)
{
  v2 = sub_1B25298F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B25297AC(uint64_t a1)
{
  v2 = sub_1B25298F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2529818(uint64_t a1)
{
  result = sub_1B25299AC(&qword_1EB7D1B38, type metadata accessor for FinishTransactionTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B2529870(uint64_t a1)
{
  *(a1 + 16) = sub_1B25299AC(&qword_1EB7D2918, type metadata accessor for FinishTransactionTask);
  result = sub_1B25299AC(&qword_1EB7D2920, type metadata accessor for FinishTransactionTask);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B25298F4()
{
  result = qword_1EB7D2930;
  if (!qword_1EB7D2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2930);
  }

  return result;
}

uint64_t sub_1B2529948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinishTransactionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B25299AC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for FinishTransactionTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B2529AD4()
{
  result = qword_1EB7D2940;
  if (!qword_1EB7D2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2940);
  }

  return result;
}

unint64_t sub_1B2529B2C()
{
  result = qword_1EB7D2948;
  if (!qword_1EB7D2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2948);
  }

  return result;
}

unint64_t sub_1B2529B84()
{
  result = qword_1EB7D2950;
  if (!qword_1EB7D2950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2950);
  }

  return result;
}

unint64_t sub_1B2529C00(unint64_t result)
{
  if (result >= 0x13)
  {
    return 19;
  }

  return result;
}

uint64_t sub_1B2529C10(uint64_t result)
{
  v1 = (result - 1001) > 5 || result == 1002;
  if (v1 && ((result - 3004) > 0x38 || ((1 << (result + 68)) & 0x180000400800001) == 0) && (result - 3900) >= 5 && ((result - 2002) > 0x35 || ((1 << (result + 46)) & 0x20000100000001) == 0))
  {
    v2 = (result - 3603) < 2 || result == -1;
    if (!v2 && result != 3504 && result != 3513 && result != 3705 && result != 500317 && result != 500328 && result != 4000029)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B2529CF8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B2529C00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B2529D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B252A3E8();
  v5 = sub_1B2437B0C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1B2529DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B252A43C();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B2529E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B2529C10(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B2529E7C(uint64_t a1)
{
  v2 = sub_1B252A43C();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B2529ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B252A43C();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id sub_1B2529F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B2529FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvalidRequestServerError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for StoreKitInternalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoreKitInternalError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B252A1DC()
{
  result = qword_1EB7D2958;
  if (!qword_1EB7D2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2958);
  }

  return result;
}

unint64_t sub_1B252A234()
{
  result = qword_1EB7D2960;
  if (!qword_1EB7D2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2960);
  }

  return result;
}

unint64_t sub_1B252A28C()
{
  result = qword_1EB7D2968;
  if (!qword_1EB7D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2968);
  }

  return result;
}

unint64_t sub_1B252A2E4()
{
  result = qword_1EB7D2970;
  if (!qword_1EB7D2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2970);
  }

  return result;
}

unint64_t sub_1B252A33C()
{
  result = qword_1EB7D2978;
  if (!qword_1EB7D2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2978);
  }

  return result;
}

unint64_t sub_1B252A394()
{
  result = qword_1EB7D2980;
  if (!qword_1EB7D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2980);
  }

  return result;
}

unint64_t sub_1B252A3E8()
{
  result = qword_1EB7D2988;
  if (!qword_1EB7D2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2988);
  }

  return result;
}

unint64_t sub_1B252A43C()
{
  result = qword_1EB7D2990;
  if (!qword_1EB7D2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2990);
  }

  return result;
}

uint64_t static ExternalPurchase.Option.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = 0, (sub_1B256EB5C() & 1) != 0))
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    sub_1B24472B8(v2, v3, v4);
    sub_1B24472B8(v5, v6, v7);
    v9 = static BackingValue.== infix(_:_:)(&v14, &v11);
    sub_1B24472E0(v11, v12, v13);
    sub_1B24472E0(v14, v15, v16);
  }

  return v9 & 1;
}

uint64_t ExternalPurchase.Option.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  BackingValue.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B252A650()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  BackingValue.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t static ExternalPurchase.NoticeResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1B2443890(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1B2443890(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v13 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v15 = sub_1B256EB5C();
      v16 = OUTLINED_FUNCTION_116_0();
      OUTLINED_FUNCTION_2_37(v16, v17);
      v18 = OUTLINED_FUNCTION_116_0();
      sub_1B2443890(v18, v19);
      return v15 & 1;
    }

    OUTLINED_FUNCTION_2_37(v13, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_2_37(v9, v10);
    v11 = OUTLINED_FUNCTION_116_0();
    sub_1B2443890(v11, v12);
    return 0;
  }

  v6 = 1;
  sub_1B2443890(*a1, 1uLL);
  sub_1B2443890(v4, 1uLL);
  return v6;
}

uint64_t sub_1B252A7C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t ExternalPurchase.NoticeResult.hash(into:)()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1B274AFC0](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1B274AFC0](v2);
  }

  MEMORY[0x1B274AFC0](2);

  return sub_1B256DA7C();
}

uint64_t ExternalPurchase.NoticeResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B256ED3C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B274AFC0](2);
      sub_1B256DA7C();
      return sub_1B256ED7C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B274AFC0](v2);
  return sub_1B256ED7C();
}

uint64_t sub_1B252A904()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 16) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B252A988, v1, 0);
}

uint64_t sub_1B252A988()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 24) = sub_1B246F59C();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B246EF48;

  return sub_1B24EB7E4();
}

uint64_t static ExternalPurchase.presentNoticeSheet()()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B252AAC4;

  return static ExternalPurchase.presentNoticeSheet(options:)();
}

uint64_t sub_1B252AAC4()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t static ExternalPurchase.presentNoticeSheet(options:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[18] = v1;
  v0[19] = v2;
  v0[20] = type metadata accessor for ExternalGatewayRequest();
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B252AC40, 0, 0);
}

uint64_t sub_1B252AC40()
{
  v3 = *(v1 + 152);
  v47 = _DYLDProgramSDKAtLeast2023E();
  *(v1 + 224) = v47;
  v4 = sub_1B256D8AC();
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;

  v10 = 0;
  v48 = v3 + 56;
  v49 = v9;
  v50 = v3;
  while (1)
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v11 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v11);
          ++v10;
          if (v8)
          {
            v54 = v4;
            v10 = v11;
            goto LABEL_10;
          }
        }

        v9 = v4;
        v0 = *(v1 + 160);
        v34 = *(v1 + 168);

        if (v47)
        {
          v2 = 0;
        }

        else
        {
          v2 = 2;
        }

        v35 = *(v0 + 28);
        v36 = type metadata accessor for ClientOverride(0);
        LOBYTE(v0) = 1;
        __swift_storeEnumTagSinglePayload(v34 + v35, 1, 1, v36);
        if (qword_1ED699E80 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_39;
      }

      v54 = v4;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(v3 + 48) + 40 * (v12 | (v10 << 6));
      v14 = *v13;
      v2 = *(v13 + 8);
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      LOBYTE(v0) = *(v13 + 32);

      v53 = v15;
      v52 = v0;
      sub_1B24472B8(v16, v15, v0);
      BackingValue.xpcAllowed.getter();
      if (v17)
      {
        break;
      }

      v4 = v54;
      v28 = sub_1B2455488();
      if (v29)
      {
        v0 = v28;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
        sub_1B256E80C();

        sub_1B244AA0C((v54[7] + 32 * v0), (v1 + 48));
        sub_1B256E82C();
      }

      else
      {
        *(v1 + 48) = 0u;
        *(v1 + 64) = 0u;
      }

      v9 = v49;
      v3 = v50;
      sub_1B2475424(v1 + 48);

      sub_1B24472E0(v16, v53, v52);
    }

    v18 = v17;
    v51 = v16;
    *(v1 + 40) = sub_1B24D1250();
    *(v1 + 16) = v18;
    sub_1B244AA0C((v1 + 16), (v1 + 80));
    swift_isUniquelyReferenced_nonNull_native();
    v19 = v14;
    v20 = sub_1B2455488();
    v22 = v54[2];
    v23 = (v21 & 1) == 0;
    v9 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_28:
      v38 = *(v1 + 160);
      v37 = *(v1 + 168);
      v39 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v39, qword_1ED69A108);
      v40 = sub_1B24D3E10();
      v41 = v38[8];
      v42 = (v37 + v38[9]);
      *v37 = v0;
      *(v37 + 8) = 0;
      *(v37 + 16) = v2;
      *(v37 + 24) = v0;
      *(v37 + v41) = v9;
      *v42 = 0;
      v42[1] = 0;
      v43 = (v37 + v38[10]);
      *v43 = v40;
      v43[1] = v44;
      if (qword_1EB7CDA40 != -1)
      {
        OUTLINED_FUNCTION_0_20();
      }

      v45 = qword_1EB7CDA48;
      *(v1 + 176) = qword_1EB7CDA48;

      return MEMORY[0x1EEE6DFA0](sub_1B252B12C, v45, 0);
    }

    v0 = v20;
    v24 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
    v4 = v54;
    if ((sub_1B256E80C() & 1) == 0)
    {
      goto LABEL_15;
    }

    v25 = sub_1B2455488();
    if ((v24 & 1) != (v26 & 1))
    {
      break;
    }

    v0 = v25;
LABEL_15:
    v3 = v50;
    if (v24)
    {
      v27 = (v54[7] + 32 * v0);
      __swift_destroy_boxed_opaque_existential_1(v27);
      sub_1B244AA0C((v1 + 80), v27);

      v5 = v48;
    }

    else
    {
      v54[(v0 >> 6) + 8] |= 1 << v0;
      v30 = (v54[6] + 16 * v0);
      *v30 = v19;
      v30[1] = v2;
      sub_1B244AA0C((v1 + 80), (v54[7] + 32 * v0));
      v31 = v54[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      v5 = v48;
      if (v32)
      {
        goto LABEL_38;
      }

      v54[2] = v33;
    }

    sub_1B24472E0(v51, v53, v52);
    v9 = v49;
  }

  return sub_1B256EC9C();
}

uint64_t sub_1B252B12C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[23] = v1;
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1B252B1D0;
  v3 = v0[21];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B252B1D0()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  v2[25] = v3;
  v2[26] = v4;
  v2[27] = v0;

  if (v0)
  {
    v5 = sub_1B252B480;
  }

  else
  {
    v5 = sub_1B252B2E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B252B2E4()
{
  v1 = *(v0 + 208);
  if (*(v0 + 224) != 1)
  {
    v4 = *(v0 + 144);
    sub_1B2443A74(*(v0 + 168));

    *v4 = 0;
    v4[1] = 0;
    goto LABEL_5;
  }

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 144);
    sub_1B2443A74(*(v0 + 168));

    *v3 = v2;
    v3[1] = v1;
LABEL_5:

    OUTLINED_FUNCTION_7_2();
    goto LABEL_6;
  }

  type metadata accessor for StoreKitError();
  sub_1B243A51C();
  v7 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v8 = parseError(_:)(v7);
  swift_getErrorValue();
  v9 = sub_1B2518EF0(*(v0 + 120));
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = *(v0 + 144);
    sub_1B2443A74(*(v0 + 168));

    *v11 = xmmword_1B2580A90;
    goto LABEL_5;
  }

  swift_willThrow();

  sub_1B2443A74(v10);

  OUTLINED_FUNCTION_7_2();
LABEL_6:

  return v5();
}

uint64_t sub_1B252B480()
{

  v1 = v0[27];
  v2 = parseError(_:)(v1);
  swift_getErrorValue();
  v3 = sub_1B2518EF0(v0[15]);
  v4 = v0[21];
  if (v3)
  {
    v5 = v0[18];
    sub_1B2443A74(v0[21]);

    *v5 = xmmword_1B2580A90;
  }

  else
  {
    swift_willThrow();

    sub_1B2443A74(v4);
  }

  OUTLINED_FUNCTION_7_2();

  return v6();
}

unint64_t sub_1B252B580()
{
  result = qword_1EB7D2998;
  if (!qword_1EB7D2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2998);
  }

  return result;
}

unint64_t sub_1B252B5D8()
{
  result = qword_1EB7D29A0;
  if (!qword_1EB7D29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalPurchase(_BYTE *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_8StoreKit16ExternalPurchaseO12NoticeResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1, unint64_t a2)
{
  sub_1B252A7C0(a1, a2);
  sub_1B252A7C0(v2, v3);

  return sub_1B2443890(v2, v3);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B252B750(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B252B790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B252B7E4(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B252B808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B256EB5C();

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

uint64_t sub_1B252B928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = a5;
  v15[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D29D0);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B252BFD4();
  sub_1B256EDFC();
  v20 = 0;
  sub_1B256EA2C();
  if (!v5)
  {
    v13 = v16;
    v19 = 1;
    sub_1B256EA6C();
    v18 = v13 & 1;
    v17 = 2;
    sub_1B252C07C();
    sub_1B256EA5C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1B252BADC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D29B8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B252BFD4();
  sub_1B256EDBC();
  if (!v1)
  {
    v4 = sub_1B256E97C();
    sub_1B256E9BC();
    sub_1B252C028();
    sub_1B256E9AC();
    v6 = OUTLINED_FUNCTION_0_43();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B252BCF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B252B7E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B252BD1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B252B7FC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B252BE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B252B808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B252BE28(uint64_t a1)
{
  v2 = sub_1B252BFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B252BE64(uint64_t a1)
{
  v2 = sub_1B252BFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B252BEA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B252BADC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_1B252BEFC(uint64_t a1)
{
  *(a1 + 16) = sub_1B252BF2C();
  result = sub_1B252BF80();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1B252BF2C()
{
  result = qword_1EB7D29A8;
  if (!qword_1EB7D29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29A8);
  }

  return result;
}

unint64_t sub_1B252BF80()
{
  result = qword_1EB7D29B0;
  if (!qword_1EB7D29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29B0);
  }

  return result;
}

unint64_t sub_1B252BFD4()
{
  result = qword_1EB7D29C0;
  if (!qword_1EB7D29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29C0);
  }

  return result;
}

unint64_t sub_1B252C028()
{
  result = qword_1EB7D29C8;
  if (!qword_1EB7D29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29C8);
  }

  return result;
}

unint64_t sub_1B252C07C()
{
  result = qword_1EB7D29D8;
  if (!qword_1EB7D29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D29D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetLastStoreActionTask.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StoreActionInternal(_BYTE *result, unsigned int a2, unsigned int a3)
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