uint64_t static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  v4 = off_280BEBCD0;

  (v4)(v39, v5);

  v6 = v40;
  v7 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v6, v7, v42);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v8 = v43;
  v9 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v9 + 8))(v39, v8, v9);
  v10 = v39[0];
  v11 = v39[1];
  v13 = v39[2];
  v12 = v40;
  if (qword_27CB23EE8 != -1)
  {
    OUTLINED_FUNCTION_0_160();
  }

  v14 = qword_27CB2E3B8;
  v15 = unk_27CB2E3C0;
  v16 = v10 == qword_27CB2E3A8 && v11 == unk_27CB2E3B0;
  if (!v16 && (sub_217753058() & 1) == 0 || (v13 == v14 ? (v17 = v12 == v15) : (v17 = 0), !v17 && (sub_217753058() & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217270404();
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_17:
    if (a3)
    {
      goto LABEL_30;
    }

    v20 = 0;
    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_30;
  }

  v20 = 1;
LABEL_19:
  if (!a1)
  {
    if (a2 != 2)
    {
      if (a2 & 1) == 0 || (v20)
      {
        sub_21733AB9C(v42);
        return MEMORY[0x277D84F90];
      }

      sub_2172B1EFC(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = v30;
      v29 = *(v30 + 16);
      v28 = *(v30 + 24);
      goto LABEL_39;
    }

LABEL_30:
    sub_21733AB9C(v42);
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v39[0] = MEMORY[0x277D84F90];
    sub_217276D60();
    v22 = v39[0];
    v23 = (a1 + 32);
    do
    {
      v25 = *v23++;
      v24 = v25;
      v39[0] = v22;
      v26 = *(v22 + 16);
      if (v26 >= *(v22 + 24) >> 1)
      {
        sub_217276D60();
        v22 = v39[0];
      }

      *(v22 + 16) = v26 + 1;
      *(v22 + v26 + 32) = v24 + 1;
      --v21;
    }

    while (v21);
  }

  if (a2 == 2 || (a2 & 1) == 0 || (v20 & 1) != 0)
  {
    sub_21733AB9C(v42);
    return v22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = *(v22 + 16);
    v33 = OUTLINED_FUNCTION_17();
    sub_2172B1EFC(v33, v34, v35, v22);
    v22 = v36;
  }

  v29 = *(v22 + 16);
  v28 = *(v22 + 24);
LABEL_39:
  if (v29 >= v28 >> 1)
  {
    sub_2172B1EFC(v28 > 1, v29 + 1, 1, v22);
    v22 = v31;
  }

  sub_21733AB9C(v42);
  *(v22 + 16) = v29 + 1;
  *(v22 + v29 + 32) = 0;
  return v22;
}

uint64_t static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(unsigned int a1, unsigned __int8 a2)
{
  swift_beginAccess();
  v3 = off_280BEBCD0;

  (v3)(v21, v4);

  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v5, v6, v24);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v7 = v25;
  v8 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v8 + 8))(v21, v7, v8);
  v10 = v21[0];
  v9 = v21[1];
  v12 = v21[2];
  v11 = v22;
  if (qword_27CB23EE8 != -1)
  {
    OUTLINED_FUNCTION_0_160();
  }

  v13 = qword_27CB2E3B8;
  v14 = unk_27CB2E3C0;
  v15 = v10 == qword_27CB2E3A8 && v9 == unk_27CB2E3B0;
  if (v15 || (sub_217753058()) && (v12 == v13 ? (v16 = v11 == v14) : (v16 = 0), v16 || (sub_217753058()))
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217270404();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_21733AB9C(v24);
  if ((v18 ^ a2))
  {
    return 2;
  }

  else
  {
    return a1;
  }
}

MusicKit::CloudAudioTrait_optional __swiftcall CloudAudioTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudAudioTrait.rawValue.getter()
{
  result = 0x74612D79626C6F64;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_120_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_117();
      break;
    case 4:
      result = OUTLINED_FUNCTION_116();
      break;
    case 5:
      result = OUTLINED_FUNCTION_118();
      break;
    case 6:
      result = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
      break;
    case 7:
      result = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = OUTLINED_FUNCTION_175();
      break;
    case 0xA:
      result = OUTLINED_FUNCTION_119_3();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_2177151D0@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudAudioTrait.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0xEB00000000736F6DLL;
  v3 = 0x74612D79626C6F64;
  v4 = *a1;
  v5 = *a2;
  v6 = "isMasteredForItunes";
  v7 = 0x74612D79626C6F64;
  v8 = 0xEB00000000736F6DLL;
  v9 = "apple-digital-master";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v7 = OUTLINED_FUNCTION_120_1();
      v8 = 0xEB000000006F6964;
      break;
    case 3:
      v8 = 0xE800000000000000;
      v7 = OUTLINED_FUNCTION_117();
      break;
    case 4:
      v7 = OUTLINED_FUNCTION_116();
      v8 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_118();
      v8 = 0xEC0000006F657265;
      break;
    case 6:
      v7 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
      v8 = 0xED00006F69647561;
      break;
    case 7:
      v8 = 0xE700000000000000;
      v7 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
      break;
    case 8:
      v7 = 0xD000000000000013;
      v8 = 0x80000002177AA7E0;
      break;
    case 9:
      v8 = 0xE500000000000000;
      v7 = OUTLINED_FUNCTION_175();
      break;
    case 10:
      v8 = 0xE800000000000000;
      v7 = OUTLINED_FUNCTION_119_3();
      break;
    default:
      v8 = 0x80000002177AA770;
      v7 = 0xD000000000000014;
      break;
  }

  switch(v5)
  {
    case 1:
      break;
    case 2:
      v3 = 0x75612D79626C6F64;
      v2 = 0xEB000000006F6964;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7373656C73736F6CLL;
      break;
    case 4:
      v3 = 0x6C2D7365722D6968;
      v2 = 0xEF7373656C73736FLL;
      break;
    case 5:
      v3 = 0x74732D7973736F6CLL;
      v2 = 0xEC0000006F657265;
      break;
    case 6:
      v3 = 0x2D6C616974617073;
      v2 = 0xED00006F69647561;
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6C616974617073;
      break;
    case 8:
      v3 = 0xD000000000000013;
      v2 = (v6 - 32) | 0x8000000000000000;
      break;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x736F6D7461;
      break;
    case 10:
      v2 = 0xE800000000000000;
      v3 = 0x646E756F72727573;
      break;
    default:
      v2 = (v9 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_217753058();
  }

  return v11 & 1;
}

BOOL sub_217715590(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return (static CloudAudioTrait.< infix(_:_:)(&v3, &v4) & 1) == 0;
}

BOOL sub_2177155D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return (static CloudAudioTrait.< infix(_:_:)(&v4, &v3) & 1) == 0;
}

uint64_t sub_217715618(unsigned __int8 a1, unsigned __int8 a2)
{
  v4 = a1;
  v3 = a2;
  return static CloudAudioTrait.< infix(_:_:)(&v3, &v4) & 1;
}

uint64_t sub_21771564C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (2)
    {
      v4 = *v2++;
      v5 = 0;
      switch(v4)
      {
        case 7:
          goto LABEL_11;
        case 9:
          v5 = 1;
          goto LABEL_6;
        case 10:
          v5 = 2;
          goto LABEL_6;
        default:
LABEL_6:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = *(v3 + 16);
            v9 = OUTLINED_FUNCTION_17();
            sub_2172B1EFC(v9, v10, v11, v3);
            v3 = v12;
          }

          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_2172B1EFC(v6 > 1, v7 + 1, 1, v3);
            v3 = v13;
          }

          *(v3 + 16) = v7 + 1;
          *(v3 + v7 + 32) = v5;
LABEL_11:
          if (!--v1)
          {
            goto LABEL_14;
          }

          continue;
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_14:
  v14 = sub_2173B1CDC(v3);
  v15 = sub_2173B1970(v14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21750366C(v15);
    v15 = v18;
  }

  v16 = *(v15 + 16);
  v19[0] = v15 + 32;
  v19[1] = v16;
  sub_217715ED4(v19);
  return v15;
}

uint64_t Array<A>.extractAudioVariants()(uint64_t a1)
{
  v1 = sub_21771564C(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3++;
      v6 = 0;
      switch(v5)
      {
        case 1:
        case 9:
          goto LABEL_9;
        case 2:
        case 10:
          v6 = 1;
          goto LABEL_9;
        case 3:
          v6 = 2;
          goto LABEL_9;
        case 4:
          v6 = 3;
          goto LABEL_9;
        case 5:
          v6 = 4;
          goto LABEL_9;
        case 6:
          v6 = 5;
LABEL_9:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = *(v4 + 16);
            v10 = OUTLINED_FUNCTION_17();
            sub_2172B1F24(v10, v11, v12, v4);
            v4 = v13;
          }

          v8 = *(v4 + 16);
          v7 = *(v4 + 24);
          if (v8 >= v7 >> 1)
          {
            sub_2172B1F24(v7 > 1, v8 + 1, 1, v4);
            v4 = v14;
          }

          *(v4 + 16) = v8 + 1;
          *(v4 + v8 + 32) = v6;
          break;
        default:
          break;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_2177158A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v4 = v22;
  if (a3)
  {

    swift_getAtKeyPath();

    if (v22)
    {
      v5 = sub_217751DE8();
      sub_2175436F4(v5);
      v21 = *(v22 + 16);
      if (v21)
      {
        v6 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v7 = *(v22 + 32 + v6++);
          v8 = *(v4 + 16);
          v9 = (v4 + 32);
          while (v8)
          {
            v10 = 0xEB00000000736F6DLL;
            v11 = 0x74612D79626C6F64;
            switch(*v9)
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
            switch(v7)
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

              goto LABEL_41;
            }

            v15 = sub_217753058();

            ++v9;
            --v8;
            if (v15)
            {
              goto LABEL_41;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1EFC(0, *(v4 + 16) + 1, 1, v4);
            v4 = v18;
          }

          v17 = *(v4 + 16);
          v16 = *(v4 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_2172B1EFC(v16 > 1, v17 + 1, 1, v4);
            v4 = v19;
          }

          *(v4 + 16) = v17 + 1;
          *(v4 + v17 + 32) = v7;
LABEL_41:
          ;
        }

        while (v6 != v21);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_217715D40()
{
  result = qword_27CB2D890;
  if (!qword_27CB2D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D890);
  }

  return result;
}

unint64_t sub_217715DA4()
{
  result = qword_280BE4100;
  if (!qword_280BE4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioTrait(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217715ED4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_217752FB8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_217752348();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_217716368(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_217715FC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217715FC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v18 = v5;
      v19 = a3;
      v7 = *(v4 + a3);
      v8 = v6;
      while (1)
      {
        v9 = *(v5 - 1);
        v10 = 0xEB00000000736F6DLL;
        v11 = 0x74612D79626C6F64;
        switch(v7)
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
          case 10:
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
        switch(*(v5 - 1))
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
          case 0xA:
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
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v7 = *v5;
          *v5 = *(v5 - 1);
          *--v5 = v7;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_36;
      }

LABEL_36:
      a3 = v19 + 1;
      v5 = v18 + 1;
      --v6;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_217716368(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_146:
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_187;
    }

    v7 = v102;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_148:
      v86 = v6 + 16;
      v87 = *(v6 + 2);
      while (v87 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_184;
        }

        v88 = v6;
        v89 = &v6[16 * v87];
        v90 = *v89;
        v6 = &v86[2 * v87];
        v91 = *(v6 + 1);
        sub_217716EB0((*a3 + *v89), (*a3 + *v6), (*a3 + v91), v100);
        if (v7)
        {
          break;
        }

        if (v91 < v90)
        {
          goto LABEL_172;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_173;
        }

        *v89 = v90;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_174;
        }

        v87 = *v86 - 1;
        memmove(v6, v6 + 16, 16 * v92);
        *v86 = v87;
        v6 = v88;
      }

LABEL_156:

      return;
    }

LABEL_181:
    v6 = sub_217717044(v6);
    goto LABEL_148;
  }

  v5 = 0;
  v100 = 0x80000002177AA7E0;
  v6 = MEMORY[0x277D84F90];
  while (2)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      goto LABEL_49;
    }

    v9 = *a3;
    v10 = *(*a3 + v5);
    v104 = *(*a3 + v8);
    v103 = v10;
    v11 = static CloudAudioTrait.< infix(_:_:)(&v104, &v103);
    for (i = v7; ; ++i)
    {
      if (i + 2 >= v4)
      {
        v20 = v4 - 1;
        if ((v11 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      v13 = *(v9 + i + 1);
      v14 = 0xEB00000000736F6DLL;
      v15 = 0x74612D79626C6F64;
      switch(*(v9 + i + 2))
      {
        case 1:
          break;
        case 2:
          v15 = 0x75612D79626C6F64;
          v14 = 0xEB000000006F6964;
          break;
        case 3:
          v14 = 0xE800000000000000;
          v15 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v15 = 0x6C2D7365722D6968;
          v14 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v15 = 0x74732D7973736F6CLL;
          v14 = 0xEC0000006F657265;
          break;
        case 6:
          v15 = 0x2D6C616974617073;
          v14 = 0xED00006F69647561;
          break;
        case 7:
          v14 = 0xE700000000000000;
          v15 = 0x6C616974617073;
          break;
        case 8:
          v15 = 0xD000000000000013;
          v14 = 0x80000002177AA7E0;
          break;
        case 9:
          v14 = 0xE500000000000000;
          v15 = 0x736F6D7461;
          break;
        case 0xA:
          v14 = 0xE800000000000000;
          v15 = 0x646E756F72727573;
          break;
        default:
          v15 = 0xD000000000000014;
          v14 = 0x80000002177AA770;
          break;
      }

      v16 = 0x74612D79626C6F64;
      v17 = 0xEB00000000736F6DLL;
      switch(*(v9 + i + 1))
      {
        case 1:
          break;
        case 2:
          v16 = 0x75612D79626C6F64;
          v17 = 0xEB000000006F6964;
          break;
        case 3:
          v17 = 0xE800000000000000;
          v16 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v16 = 0x6C2D7365722D6968;
          v17 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v16 = 0x74732D7973736F6CLL;
          v17 = 0xEC0000006F657265;
          break;
        case 6:
          v16 = 0x2D6C616974617073;
          v17 = 0xED00006F69647561;
          break;
        case 7:
          v17 = 0xE700000000000000;
          v16 = 0x6C616974617073;
          break;
        case 8:
          v16 = 0xD000000000000013;
          v17 = 0x80000002177AA7E0;
          break;
        case 9:
          v17 = 0xE500000000000000;
          v16 = 0x736F6D7461;
          break;
        case 0xA:
          v17 = 0xE800000000000000;
          v16 = 0x646E756F72727573;
          break;
        default:
          v16 = 0xD000000000000014;
          v17 = 0x80000002177AA770;
          break;
      }

      if (v15 != v16 || v14 != v17)
      {
        break;
      }

      if (v11)
      {
        v20 = i + 1;
        v4 = i + 2;
        goto LABEL_41;
      }

LABEL_35:
      ;
    }

    v19 = sub_217753058();

    if (((v11 ^ v19) & 1) == 0)
    {
      goto LABEL_35;
    }

    v20 = i + 1;
    v4 = i + 2;
    if ((v11 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_41:
    if (v4 < v7)
    {
      goto LABEL_178;
    }

    if (v7 <= v20)
    {
      v21 = v4 - 1;
      v22 = v7;
      do
      {
        if (v22 != v21)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_185;
          }

          v24 = *(v23 + v22);
          *(v23 + v22) = *(v23 + v21);
          *(v23 + v21) = v24;
        }
      }

      while (++v22 < v21--);
    }

LABEL_48:
    v8 = v4;
LABEL_49:
    v26 = a3[1];
    if (v8 >= v26)
    {
      goto LABEL_93;
    }

    if (__OFSUB__(v8, v7))
    {
      goto LABEL_177;
    }

    if (v8 - v7 >= a4)
    {
LABEL_93:
      if (v8 < v7)
      {
        goto LABEL_176;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2310(0, *(v6 + 2) + 1, 1, v6);
        v6 = v84;
      }

      v44 = *(v6 + 2);
      v43 = *(v6 + 3);
      v45 = v44 + 1;
      v97 = v8;
      if (v44 >= v43 >> 1)
      {
        sub_2172B2310(v43 > 1, v44 + 1, 1, v6);
        v6 = v85;
      }

      *(v6 + 2) = v45;
      v46 = v6 + 32;
      v47 = &v6[16 * v44 + 32];
      *v47 = v7;
      *(v47 + 1) = v97;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_186;
      }

      if (!v44)
      {
LABEL_142:
        v4 = a3[1];
        v5 = v97;
        if (v97 >= v4)
        {
          goto LABEL_146;
        }

        continue;
      }

      while (1)
      {
        v48 = v45 - 1;
        v49 = &v46[16 * v45 - 16];
        v50 = &v6[16 * v45];
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v51 = *(v6 + 4);
          v52 = *(v6 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_113:
          if (v54)
          {
            goto LABEL_163;
          }

          v66 = *v50;
          v65 = *(v50 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_166;
          }

          v70 = *(v49 + 1);
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_169;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_171;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v45 - 2;
            }

            goto LABEL_135;
          }

          goto LABEL_128;
        }

        if (v45 < 2)
        {
          goto LABEL_165;
        }

        v73 = *v50;
        v72 = *(v50 + 1);
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_128:
        if (v69)
        {
          goto LABEL_168;
        }

        v75 = *v49;
        v74 = *(v49 + 1);
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_170;
        }

        if (v76 < v68)
        {
          goto LABEL_142;
        }

LABEL_135:
        if (v48 - 1 >= v45)
        {
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
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        if (!*a3)
        {
          goto LABEL_183;
        }

        v80 = v6;
        v81 = &v46[16 * v48 - 16];
        v7 = *v81;
        v82 = &v46[16 * v48];
        v6 = *(v82 + 1);
        sub_217716EB0((*a3 + *v81), (*a3 + *v82), &v6[*a3], v99);
        if (v102)
        {
          goto LABEL_156;
        }

        if (v6 < v7)
        {
          goto LABEL_158;
        }

        v83 = *(v80 + 2);
        if (v48 > v83)
        {
          goto LABEL_159;
        }

        *v81 = v7;
        v81[1] = v6;
        if (v48 >= v83)
        {
          goto LABEL_160;
        }

        v45 = v83 - 1;
        memmove(&v46[16 * v48], v82 + 16, 16 * (v83 - 1 - v48));
        v6 = v80;
        *(v80 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_142;
        }
      }

      v55 = &v46[16 * v45];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_161;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_162;
      }

      v62 = *(v50 + 1);
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_164;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_167;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = *(v49 + 1);
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_175;
        }

        if (v53 < v79)
        {
          v48 = v45 - 2;
        }

        goto LABEL_135;
      }

      goto LABEL_113;
    }

    break;
  }

  v27 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_179;
  }

  if (v27 >= v26)
  {
    v27 = a3[1];
  }

  if (v27 < v7)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v8 == v27)
  {
    goto LABEL_93;
  }

  v96 = v6;
  v98 = v27;
  v28 = *a3;
  v29 = (*a3 + v8);
  v93 = v7;
  v30 = v7 - v8;
LABEL_58:
  v31 = v8;
  v32 = *(v28 + v8);
  v33 = v30;
  v34 = v29;
  while (1)
  {
    v35 = *(v34 - 1);
    v36 = 0xEB00000000736F6DLL;
    v37 = 0x74612D79626C6F64;
    switch(v32)
    {
      case 1:
        break;
      case 2:
        v37 = 0x75612D79626C6F64;
        v36 = 0xEB000000006F6964;
        break;
      case 3:
        v36 = 0xE800000000000000;
        v37 = 0x7373656C73736F6CLL;
        break;
      case 4:
        v37 = 0x6C2D7365722D6968;
        v36 = 0xEF7373656C73736FLL;
        break;
      case 5:
        v37 = 0x74732D7973736F6CLL;
        v36 = 0xEC0000006F657265;
        break;
      case 6:
        v37 = 0x2D6C616974617073;
        v36 = 0xED00006F69647561;
        break;
      case 7:
        v36 = 0xE700000000000000;
        v37 = 0x6C616974617073;
        break;
      case 8:
        v37 = 0xD000000000000013;
        v36 = 0x80000002177AA7E0;
        break;
      case 9:
        v36 = 0xE500000000000000;
        v37 = 0x736F6D7461;
        break;
      case 10:
        v36 = 0xE800000000000000;
        v37 = 0x646E756F72727573;
        break;
      default:
        v37 = 0xD000000000000014;
        v36 = 0x80000002177AA770;
        break;
    }

    v38 = 0x74612D79626C6F64;
    v39 = 0xEB00000000736F6DLL;
    switch(*(v34 - 1))
    {
      case 1:
        break;
      case 2:
        v38 = 0x75612D79626C6F64;
        v39 = 0xEB000000006F6964;
        break;
      case 3:
        v39 = 0xE800000000000000;
        v38 = 0x7373656C73736F6CLL;
        break;
      case 4:
        v38 = 0x6C2D7365722D6968;
        v39 = 0xEF7373656C73736FLL;
        break;
      case 5:
        v38 = 0x74732D7973736F6CLL;
        v39 = 0xEC0000006F657265;
        break;
      case 6:
        v38 = 0x2D6C616974617073;
        v39 = 0xED00006F69647561;
        break;
      case 7:
        v39 = 0xE700000000000000;
        v38 = 0x6C616974617073;
        break;
      case 8:
        v38 = 0xD000000000000013;
        v39 = 0x80000002177AA7E0;
        break;
      case 9:
        v39 = 0xE500000000000000;
        v38 = 0x736F6D7461;
        break;
      case 10:
        v39 = 0xE800000000000000;
        v38 = 0x646E756F72727573;
        break;
      default:
        v38 = 0xD000000000000014;
        v39 = 0x80000002177AA770;
        break;
    }

    if (v37 == v38 && v36 == v39)
    {

LABEL_91:
      v8 = v31 + 1;
      ++v29;
      --v30;
      if (v31 + 1 == v98)
      {
        v8 = v98;
        v6 = v96;
        v7 = v93;
        goto LABEL_93;
      }

      goto LABEL_58;
    }

    v41 = sub_217753058();

    if ((v41 & 1) == 0)
    {
      goto LABEL_91;
    }

    if (!v28)
    {
      break;
    }

    v32 = *v34;
    *v34 = *(v34 - 1);
    *--v34 = v32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
}

uint64_t sub_217716EB0(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_217504024(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v4;
      v26 = *v6;
      v25 = v12;
      if (static CloudAudioTrait.< infix(_:_:)(&v26, &v25))
      {
        v11 = v7 >= v6;
        v13 = v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = v7 >= v4;
        v13 = v4++;
        if (!v11 || v7 >= v4)
        {
LABEL_18:
          *v7 = *v13;
        }
      }

      ++v7;
    }
  }

  sub_217504024(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *v16;
    v28 = *(v10 - 1);
    v27 = v18;
    v19 = static CloudAudioTrait.< infix(_:_:)(&v28, &v27);
    v20 = v5 + 1;
    if (v19)
    {
      v22 = v20 < v6 || v5 >= v6;
      --v6;
      if (v22)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if (v20 < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

char *sub_217717058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EB8, &unk_21775A1D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t dispatch thunk of LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_7_94();
  v18 = (*(a13 + 24) + **(a13 + 24));
  v14 = *(*(a13 + 24) + 4);
  v15 = swift_task_alloc();
  *(v13 + 16) = v15;
  *v15 = v13;
  v15[1] = sub_217514FAC;
  v16 = OUTLINED_FUNCTION_2_141();

  return v18(v16);
}

uint64_t dispatch thunk of LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_7_94();
  v15 = (*(a10 + 32) + **(a10 + 32));
  v11 = *(*(a10 + 32) + 4);
  v12 = swift_task_alloc();
  *(v10 + 16) = v12;
  *v12 = v10;
  v12[1] = sub_21769BDC0;
  v13 = OUTLINED_FUNCTION_2_141();

  return v15(v13);
}

uint64_t sub_217717458(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2177174CC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a2 + 32);
  return swift_continuation_throwingResume();
}

uint64_t sub_2177174F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

id sub_217717554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217751F18();

  if (a4)
  {
    v6 = sub_217751F18();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = sub_217751D88();

  v9 = [v7 artworkCatalogWithDataSourceShortDescription:v5 dataSourceIdentifier:v6 tokenParameters:v8];

  return v9;
}

uint64_t sub_21771763C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_217751D98();

  return v4;
}

id sub_2177176A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [a1 musicKit_existingColorAnalysis];
  if (result)
  {
    v4 = result;
    v5 = [result musicKit_backgroundColor];
    v6 = [v4 musicKit_primaryTextColor];
    v7 = [v4 musicKit_secondaryTextColor];
    v8 = [v4 musicKit_tertiaryTextColor];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 1;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_2177177B4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2177178B4;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D908, &qword_21779DD28);
  OUTLINED_FUNCTION_0_162(v3);
  v0[11] = 1107296256;
  v0[12] = sub_217717A2C;
  v0[13] = &block_descriptor_6_1;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestImageDataWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2177178B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2177179C4;
  }

  else
  {
    v3 = sub_217353800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2177179C4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_217717A2C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_217717458(v5, a3);
  }

  v7 = a2;
  v8 = sub_217751768();
  v10 = v9;

  return sub_2177174F8(v5, v8, v10);
}

uint64_t sub_217717AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217717AC0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217717BC0;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D900, &qword_21779DD18);
  OUTLINED_FUNCTION_0_162(v3);
  v0[11] = 1107296256;
  v0[12] = sub_217717DA0;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestColorAnalysisWithCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217717BC0()
{
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_217717C98, 0, 0);
}

uint64_t sub_217717C98()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) musicKit_backgroundColor];
    v3 = [v1 musicKit_primaryTextColor];
    v4 = [v1 musicKit_secondaryTextColor];
    v5 = [v1 musicKit_tertiaryTextColor];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  v6 = *(v0 + 152);
  *v6 = v2;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_217717DA0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();
  return sub_217717530(v3, a2, MEMORY[0x277D85A80]);
}

id sub_217717DF8(void *a1)
{
  v1 = [a1 musicKit_artworkCatalogWithFittingSize_];

  return v1;
}

uint64_t sub_217717E2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = swift_getObjectType();
  *a2 = a1;

  return swift_unknownObjectRetain();
}

id (*sub_217717F68(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[2] = *v1;
  [v3 musicKit_fittingSize];
  *a1 = v4;
  a1[1] = v5;
  return sub_217717FBC;
}

id sub_217717FD4@<X0>(void *a1@<X8>)
{
  result = sub_217717DF8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_217718000()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_217718094;

  return sub_2177177A0(v2);
}

uint64_t sub_217718094()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v5 = v4;
  v6 = *(*v1 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v0)
  {
    v9 = v5;
    v10 = v3;
  }

  return v11(v9, v10);
}

uint64_t sub_217718198(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2172AC7B0;

  return sub_217717AAC(a1, v4);
}

uint64_t MusicCatalogResourceResponse.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for MusicItemCollection();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t MusicCatalogResourceResponse<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for MusicItemCollection();

  return MusicItemCollection<>.hash(into:)(a1, v5);
}

uint64_t MusicCatalogResourceResponse<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogResourceResponse<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_217718398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicCatalogResourceResponse<>.hash(into:)(v6, a2);
  return sub_217753238();
}

uint64_t MusicCatalogResourceResponse<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_2171FF30C(a1, v16);
  CloudResourceCollection<A>.init(from:)();
  if (!v3)
  {
    v7 = type metadata accessor for CloudResourceCollection();
    v8 = *(v7 - 8);
    v18 = a2;
    v9 = v8;
    (*(v8 + 16))(v16, v17, v7);
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = Decoder.sharedRelatedItemStore.getter();
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    Decoder.dataRequestConfiguration.getter(v12, v13);
    sub_2175AFAC0(v16, v11, &v15, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a3);
    (*(v9 + 8))(v17, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217718584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return MusicCatalogResourceResponse<>.init(from:)(a1, *(a2 + 24), a4);
}

uint64_t MusicCatalogResourceResponse<>.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Encoder.dataRequestConfiguration.getter(v4, v5);
  sub_2175AFC7C(a2, v10);
  result = sub_21733AB9C(v9);
  if (!v2)
  {
    v7 = *(a2 + 16);
    v8 = type metadata accessor for CloudResourceCollection();
    CloudResourceCollection<A>.encode(to:)();
    return (*(*(v8 - 8) + 8))(v10, v8);
  }

  return result;
}

unint64_t sub_2177186D0(Swift::Bool a1, uint64_t a2)
{
  to._countAndFlagsBits = 0;
  to._object = 0xE000000000000000;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  type metadata accessor for MusicItemCollection();
  swift_getWitnessTable();
  v5._countAndFlagsBits = 0x736D657469;
  v5._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v5, a1, &to);
  sub_217752AA8();

  v6 = sub_217753348();
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
  v7 = (to._object >> 56) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v7 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x21CEA23B0]();

    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_217718894()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2177188E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  sub_217751DE8();
  result = sub_217586880(v5, v2, a1, a2);
  if (result)
  {
    if (qword_27CB23EE0 != -1)
    {
      swift_once();
    }

    return sub_21773157C();
  }

  return result;
}

uint64_t sub_217718988()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2177189B0()
{
  sub_217718988();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_217718A08()
{
  *(v0 + 16) = 0;
  type metadata accessor for UnfairLock();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_217718A64(uint64_t a1)
{
  v2 = sub_217718B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217718AA0(uint64_t a1)
{
  v2 = sub_217718B20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217718B20()
{
  result = qword_27CB2D918;
  if (!qword_27CB2D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D918);
  }

  return result;
}

uint64_t sub_217718BF4(uint64_t a1)
{
  v2 = sub_217718CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217718C30(uint64_t a1)
{
  v2 = sub_217718CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217718CB0()
{
  result = qword_27CB2D928;
  if (!qword_27CB2D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D928);
  }

  return result;
}

uint64_t sub_217718D24(uint64_t a1)
{
  v2 = sub_217718DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217718D60(uint64_t a1)
{
  v2 = sub_217718DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217718DE0()
{
  result = qword_27CB2D938;
  if (!qword_27CB2D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D938);
  }

  return result;
}

uint64_t sub_217718E54(uint64_t a1)
{
  v2 = sub_21771900C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217718E90(uint64_t a1)
{
  v2 = sub_21771900C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_217718F10()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_161_3();
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_2177532F8();
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_5_3();
  v16(v15);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21771900C()
{
  result = qword_27CB2D948;
  if (!qword_27CB2D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D948);
  }

  return result;
}

uint64_t CloudPersonalRecommendation.Content.id.getter()
{
  v1 = type metadata accessor for CloudPersonalRecommendation.Item();
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v6 = type metadata accessor for CloudPersonalRecommendation.Content();
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  sub_217269C38(v0, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_131();
    sub_21771A720(v13, v0);
    v14 = CloudPersonalRecommendation.Item.id.getter();
    sub_217719560(v0, v6);
  }

  else
  {
    memcpy(v16, v13, sizeof(v16));
    v14 = v16[0];
    sub_217751DE8();
    sub_217269D5C(v16);
  }

  return v14;
}

uint64_t type metadata accessor for CloudPersonalRecommendation.Content()
{
  result = qword_27CB2D9D0;
  if (!qword_27CB2D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static CloudPersonalRecommendation.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CloudPersonalRecommendation.Item();
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for CloudPersonalRecommendation.Content();
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36[-v22 - 8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D950, &qword_21779DFC8);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_25_52();
  v30 = *(v29 + 56);
  sub_217269C38(a1, v2);
  sub_217269C38(a2, v2 + v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217269C38(v2, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_131();
      sub_21771A720(v2 + v30, v12);
      static CloudPersonalRecommendation.Item.== infix(_:_:)();
      v32 = v31;
      sub_217719560(v12, v23);
      sub_217719560(v19, v23);
LABEL_9:
      OUTLINED_FUNCTION_0_163();
      sub_217719560(v2, v33);
      return v32;
    }

    sub_217719560(v19, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    sub_217269C38(v2, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v36, (v2 + v30), sizeof(v36));
      v32 = static CloudPersonalRecommendation.== infix(_:_:)();
      sub_217269D5C(v36);
      sub_217269D5C(v23);
      goto LABEL_9;
    }

    sub_217269D5C(v23);
  }

  sub_2171F0738(v2, &qword_27CB2D950, &qword_21779DFC8);
  return 0;
}

uint64_t sub_217719560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CloudPersonalRecommendation.Content.hash(into:)(const void *a1)
{
  v3 = type metadata accessor for CloudPersonalRecommendation.Item();
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for CloudPersonalRecommendation.Content();
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217269C38(v1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_131();
    sub_21771A720(v1, v10);
    MEMORY[0x21CEA3550](1);
    CloudPersonalRecommendation.Item.hash(into:)();
    return sub_217719560(v10, v1);
  }

  else
  {
    memcpy(v17, v1, sizeof(v17));
    MEMORY[0x21CEA3550](0);
    CloudPersonalRecommendation.hash(into:)(a1);
    return sub_217269D5C(v17);
  }
}

uint64_t CloudPersonalRecommendation.Content.hashValue.getter()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Content.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_217719790()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Content.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudPersonalRecommendation.Content.decodeRawAttributes(from:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_101();
  v3 = type metadata accessor for CloudPersonalRecommendation.Content();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  sub_217269C38(v0, v9 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v10, v11);
    sub_2171FF30C(v0, v17);
    sub_217385D80();
    if (!v1)
    {
      return v12;
    }
  }

  else
  {
    memcpy(v17, v10, sizeof(v17));
    sub_2171FF30C(v0, &v16);
    memcpy(__dst, &v17[16], sizeof(__dst));
    sub_21733C64C(__dst, &v15);
    sub_217385C20();
    v2 = v13;
    sub_217269D5C(v17);
  }

  return v2;
}

uint64_t CloudPersonalRecommendation.Content.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_5_112();
  v2 = type metadata accessor for CloudPersonalRecommendation.Content();
  v3 = OUTLINED_FUNCTION_43(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  v7 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v7, v8);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v1, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v15);
    sub_217719A94(&v16, v14);
    if (v14[2] == 1)
    {
      sub_217269D5C(v15);
      sub_2171F0738(v14, &qword_27CB244B0, &unk_21776DB80);
    }

    else
    {

      sub_2171F0738(v14, &qword_27CB244B0, &unk_21776DB80);
      sub_2171FF30C(v0, v14);
      swift_beginAccess();
      v10 = sub_217751DE8();
      sub_2173838E4(v10);
      OUTLINED_FUNCTION_787();

      OUTLINED_FUNCTION_17_53();
      Dictionary<>.init(from:skippingValuesFor:)(v11, v12);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v15);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

uint64_t sub_217719A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244B0, &unk_21776DB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CloudPersonalRecommendation.Content.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_5_112();
  v2 = type metadata accessor for CloudPersonalRecommendation.Content();
  v3 = OUTLINED_FUNCTION_43(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  v7 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v7, v8);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v1, v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v23);
    if (v24)
    {
      sub_217269D5C(v23);
    }

    else
    {

      sub_2171FF30C(v0, &v19);
      if (qword_27CB23E60 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2CDC8, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7], v23[8], v23[9], v23[10], v23[11], v23[12]);
      Dictionary<>.init(from:skippingValuesFor:)(&v19, v17);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v23);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

void CloudPersonalRecommendation.Content.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v3 = type metadata accessor for CloudPersonalRecommendation.Content();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  sub_217751DC8();
  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v0, v8);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    if (v11 != 1)
    {

      sub_2171FF30C(v2, &v9);
      sub_21733C6A8(v10[36], v10[37], v11);
      sub_217751DE8();
      sub_217387F34();
    }

    sub_217269D5C(v10);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Content.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudPersonalRecommendation.Content();
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v10 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v10, v11);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v12);
    sub_2171FF30C(a2, v20);
    sub_2174D4624(v20);
    if (!v2)
    {
      OUTLINED_FUNCTION_787();
      sub_217751DE8();
      OUTLINED_FUNCTION_17_53();
      sub_2174D37FC(v13, v14);
      OUTLINED_FUNCTION_98();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v20);
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    sub_2171FF30C(a2, &v19);
    sub_21733C64C(__dst, &v18);
    sub_2174D4658();
    if (v2)
    {
      sub_217269D5C(v20);
    }

    else
    {
      OUTLINED_FUNCTION_787();
      sub_217751DE8();
      OUTLINED_FUNCTION_17_53();
      sub_2174D37FC(v15, v16);
      OUTLINED_FUNCTION_98();
      sub_217269D5C(v20);
    }
  }

  return OUTLINED_FUNCTION_9_97();
}

void CloudPersonalRecommendation.Content.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  v2 = v1;
  v3 = type metadata accessor for CloudPersonalRecommendation.Content();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v2 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v0, v8);
  }

  else
  {
    memcpy(v11, v0, sizeof(v11));
    sub_217719A94(&v11[152], v9);
    if (v9[2] == 1)
    {
      sub_217269D5C(v11);
      sub_2171F0738(v9, &qword_27CB244B0, &unk_21776DB80);
    }

    else
    {

      memcpy(v10, v9, sizeof(v10));
      sub_217388B28();
      OUTLINED_FUNCTION_98();
      sub_21728373C(v10);
      sub_217269D5C(v11);
    }
  }

  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Content.mergeAssociations(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudPersonalRecommendation.Content();
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    if ((v13[280] & 1) == 0)
    {

      sub_2171FF30C(v2, v12);
      sub_2174D5898(v12);
      if (!v1)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v10, v11);
      }
    }

    sub_217269D5C(v13);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Content.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_10_78();
  OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudPersonalRecommendation.Content();
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_161_3();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_26_48();
  if (OUTLINED_FUNCTION_25_63() == 1)
  {
    OUTLINED_FUNCTION_0_163();
    sub_217719560(v3, v9);
  }

  else
  {
    OUTLINED_FUNCTION_21_54();
    v10 = v19;
    if (v19 != 1)
    {
      v12 = v17;
      v11 = v18;
      sub_2172E1074(v17, v18, v19);

      sub_2171FF30C(v2, v15);
      sub_2174D6200(v12, v11, v10, v15);
      if (!v1)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v13, v14);
      }
    }

    sub_217269D5C(&v16);
  }

  OUTLINED_FUNCTION_8_93();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21771A33C(uint64_t a1)
{
  v2 = sub_21771A6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21771A378(uint64_t a1)
{
  v2 = sub_21771A6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudPersonalRecommendation.Content.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v31 = v4;
  v5 = type metadata accessor for CloudPersonalRecommendation.Item();
  v6 = OUTLINED_FUNCTION_45_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D958, &qword_21779DFD0);
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v15 = type metadata accessor for CloudPersonalRecommendation.Content();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = (v21 - v20);
  v23 = v3[4];
  v34 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21771A6CC();
  sub_2177532C8();
  if (!v0)
  {
    sub_21733BE84();
    sub_217752EA8();
    if (qword_27CB23E68 != -1)
    {
      swift_once();
    }

    v24 = static Array<A>.~= infix(_:_:)(off_27CB2CDD0, v33);

    if (v24)
    {
      sub_2171FF30C(v3, &v32);
      CloudPersonalRecommendation.init(from:)();
      v25 = OUTLINED_FUNCTION_4_139();
      v26(v25);
      v27 = v31;
      v28 = v22;
      memcpy(v22, v33, 0x138uLL);
    }

    else
    {
      sub_2171FF30C(v3, v33);
      CloudPersonalRecommendation.Item.init(from:)();
      v29 = OUTLINED_FUNCTION_4_139();
      v30(v29);
      v27 = v31;
      v28 = v22;
      sub_21771A720(v1, v22);
    }

    swift_storeEnumTagMultiPayload();
    sub_21771A720(v28, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21771A6CC()
{
  result = qword_27CB2D960;
  if (!qword_27CB2D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D960);
  }

  return result;
}

uint64_t sub_21771A720(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v6 = v5(v4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t CloudPersonalRecommendation.Content.encode(to:)()
{
  OUTLINED_FUNCTION_5_112();
  v2 = type metadata accessor for CloudPersonalRecommendation.Item();
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v7 = type metadata accessor for CloudPersonalRecommendation.Content();
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v12 = OUTLINED_FUNCTION_5_3();
  sub_217269C38(v12, v13);
  if (OUTLINED_FUNCTION_27_54() == 1)
  {
    sub_21771A720(v1, v0);
    CloudPersonalRecommendation.Item.encode(to:)();
    return sub_217719560(v0, type metadata accessor for CloudPersonalRecommendation.Item);
  }

  else
  {
    OUTLINED_FUNCTION_24_54(v15);
    CloudPersonalRecommendation.encode(to:)();
    return sub_217269D5C(v15);
  }
}

unint64_t sub_21771A8AC()
{
  result = qword_27CB2D968;
  if (!qword_27CB2D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D968);
  }

  return result;
}

unint64_t sub_21771A904()
{
  result = qword_27CB2D970;
  if (!qword_27CB2D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D970);
  }

  return result;
}

unint64_t sub_21771A95C()
{
  result = qword_27CB2D978;
  if (!qword_27CB2D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D978);
  }

  return result;
}

unint64_t sub_21771A9B4()
{
  result = qword_27CB2D980;
  if (!qword_27CB2D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D980);
  }

  return result;
}

unint64_t sub_21771AA0C()
{
  result = qword_27CB2D988;
  if (!qword_27CB2D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D988);
  }

  return result;
}

unint64_t sub_21771AA64()
{
  result = qword_27CB2D990;
  if (!qword_27CB2D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D990);
  }

  return result;
}

unint64_t sub_21771AABC()
{
  result = qword_27CB2D998;
  if (!qword_27CB2D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D998);
  }

  return result;
}

unint64_t sub_21771AB14()
{
  result = qword_27CB2D9A0;
  if (!qword_27CB2D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9A0);
  }

  return result;
}

unint64_t sub_21771AB6C()
{
  result = qword_27CB2D9A8;
  if (!qword_27CB2D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9A8);
  }

  return result;
}

unint64_t sub_21771ABC4()
{
  result = qword_27CB2D9B0;
  if (!qword_27CB2D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9B0);
  }

  return result;
}

unint64_t sub_21771AC1C()
{
  result = qword_27CB2D9B8;
  if (!qword_27CB2D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9B8);
  }

  return result;
}

unint64_t sub_21771AC74()
{
  result = qword_27CB2D9C0;
  if (!qword_27CB2D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9C0);
  }

  return result;
}

unint64_t sub_21771ACCC()
{
  result = qword_27CB2D9C8;
  if (!qword_27CB2D9C8)
  {
    type metadata accessor for CloudPersonalRecommendation.Content();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9C8);
  }

  return result;
}

uint64_t sub_21771AD54()
{
  result = type metadata accessor for CloudPersonalRecommendation.Item();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_21771AE00(_BYTE *result, int a2, int a3)
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

unint64_t sub_21771AEF0()
{
  result = qword_27CB2D9E0;
  if (!qword_27CB2D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9E0);
  }

  return result;
}

unint64_t sub_21771AF48()
{
  result = qword_27CB2D9E8;
  if (!qword_27CB2D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9E8);
  }

  return result;
}

unint64_t sub_21771AFA0()
{
  result = qword_27CB2D9F0;
  if (!qword_27CB2D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9F0);
  }

  return result;
}

unint64_t sub_21771AFF8()
{
  result = qword_27CB2D9F8;
  if (!qword_27CB2D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D9F8);
  }

  return result;
}

unint64_t sub_21771B050()
{
  result = qword_27CB2DA00;
  if (!qword_27CB2DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA00);
  }

  return result;
}

unint64_t sub_21771B0A8()
{
  result = qword_27CB2DA08;
  if (!qword_27CB2DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA08);
  }

  return result;
}

unint64_t sub_21771B100()
{
  result = qword_27CB2DA10;
  if (!qword_27CB2DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA10);
  }

  return result;
}

unint64_t sub_21771B158()
{
  result = qword_27CB2DA18;
  if (!qword_27CB2DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA18);
  }

  return result;
}

unint64_t sub_21771B1B0()
{
  result = qword_27CB2DA20;
  if (!qword_27CB2DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA20);
  }

  return result;
}

unint64_t sub_21771B208()
{
  result = qword_27CB2DA28;
  if (!qword_27CB2DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA28);
  }

  return result;
}

unint64_t sub_21771B260()
{
  result = qword_27CB2DA30;
  if (!qword_27CB2DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_56()
{

  return sub_217752D08();
}

void *OUTLINED_FUNCTION_21_54()
{

  return memcpy((v0 + 40), v1, 0x138uLL);
}

uint64_t OUTLINED_FUNCTION_26_48()
{

  return sub_217269C38(v1, v0);
}

uint64_t sub_21771B384(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_21771B3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21779E780;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA40, &qword_21779E930);
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_14_7();
  *(v0 + 32) = sub_2173836F4(v1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA48, &qword_21779E960);
  swift_allocObject();
  v2 = OUTLINED_FUNCTION_14_7();
  *(v0 + 40) = sub_2173836F4(v2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA50, &qword_21779E990);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_14_7();
  *(v0 + 48) = sub_2173836F4(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA58, &qword_21779E9C0);
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_14_7();
  *(v0 + 56) = sub_217383700(v4);
  KeyPath = swift_getKeyPath();
  v6 = sub_21738291C(KeyPath, 33, 25);

  *(v0 + 64) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_217382E10(v7, 33, 29, 11);

  *(v0 + 72) = v8;
  swift_getKeyPath();
  v9 = sub_21738272C();

  *(v0 + 80) = v9;
  qword_27CB8A310 = v0;
  return result;
}

uint64_t sub_21771B5AC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21771B604(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_21771B65C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B6B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B70C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21771B7BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643B0;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA38, &qword_21779E7E8);
  v2 = swift_allocObject();
  v3 = KeyPath;
  v4 = v2;
  *(v0 + 32) = sub_2173836F8(v3, 33, 25);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  *(v0 + 40) = sub_2173836FC(v4, 33, 29, 11);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_12_5();
  *(v0 + 48) = sub_217383704(v5, 7);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_12_5();
  *(v0 + 56) = sub_217383704(v6, 23);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_12_5();
  *(v0 + 64) = sub_217383704(v7, 24);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_12_5();
  *(v0 + 72) = sub_217383704(v8, 25);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_12_5();
  *(v0 + 80) = sub_217383704(v9, 28);
  swift_getKeyPath();
  OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_12_5();
  result = sub_217383704(v10, 29);
  *(v0 + 88) = result;
  qword_27CB8A318 = v0;
  return result;
}

uint64_t sub_21771B970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771B9C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771BA20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21771BA80(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_21771BAD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_21771BB30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21771BB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21771BBE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21771BC48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, &unk_217765A40);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    v2 = qword_280BE6BB0;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_17_0();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v1))
    {
      goto LABEL_8;
    }

    v3 = qword_280BE6B98;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_14_4();
    }

    v4 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v1);

    if (v4)
    {
LABEL_8:
      v5 = Song.LegacyModelSongPropertyKey.rawValue.getter();
    }

    else
    {

      return 0;
    }

    return v5;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC560);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_7_95();
    __break(1u);
  }

  return result;
}

uint64_t sub_21771BE04@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, &unk_217765A40);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = qword_280BE6BB0;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_17_0();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE6BB8, v3))
    {

      v6 = 0;
    }

    else
    {
      v7 = qword_280BE6B58;

      if (v7 != -1)
      {
        OUTLINED_FUNCTION_15_7();
      }

      v8 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6B60, v3);

      if (v8)
      {

        v6 = 34;
      }

      else
      {
        if (qword_280BE6B98 != -1)
        {
          OUTLINED_FUNCTION_14_4();
        }

        v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE6BA0, v3);

        if (v9)
        {
          v6 = 8;
        }

        else
        {
          v6 = 34;
        }
      }
    }

    *a1 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v10 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v10, 0xE900000000000020);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177AE550);
    result = OUTLINED_FUNCTION_7_95();
    __break(1u);
  }

  return result;
}

uint64_t sub_21771BFFC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2216) = v3;
  *(v4 + 2208) = a2;
  *(v4 + 2200) = a1;
  *(v4 + 369) = *a3;
  return MEMORY[0x2822009F8](sub_21771C02C, 0, 0);
}

uint64_t sub_21771C02C()
{
  v1 = *(v0 + 2208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, &unk_217765A40);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v15 = (v0 + 2168);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2168) = v25;
    v16 = (v0 + 2176);
    *(v0 + 2176) = v26;
    v17 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v17, 0xE900000000000020);
    *(v0 + 2192) = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000001FLL, 0x80000002177AE550);
LABEL_12:
    v19 = *v15;
    v20 = *v16;
    return OUTLINED_FUNCTION_7_95();
  }

  v3 = v2;
  v4 = qword_280BE6B58;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_15_7();
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280BE6B60, v3) & 1) == 0)
  {
    v15 = (v0 + 2152);
    v18 = *(v0 + 2208);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2152) = v25;
    v16 = (v0 + 2160);
    *(v0 + 2160) = v26;
    MEMORY[0x21CEA23B0](0xD00000000000002ELL, 0x80000002177B6440);
    *(v0 + 2184) = v18;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    goto LABEL_12;
  }

  *(v0 + 1040) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217759C00;
  if (qword_280BE6BB0 != -1)
  {
    OUTLINED_FUNCTION_17_0();
  }

  v6 = *(v0 + 369);
  v7 = *(v0 + 2216);
  v8 = qword_280BE6BB8;
  *(v0 + 2232) = qword_280BE6BB8;
  *(v5 + 32) = v8;

  sub_217283BAC(v7, v0 + 1656);
  sub_217444BD0(v0 + 1656, v5, 1, v6, v9, v10, v11, v12, v21, v22, v23, v24, v25);
  v13 = swift_task_alloc();
  *(v0 + 2240) = v13;
  *v13 = v0;
  v13[1] = sub_21771C344;

  return sub_217445060(v0 + 1712);
}

uint64_t sub_21771C344()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 2240);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 2248) = v0;

  if (v0)
  {
    v6 = sub_21771C9DC;
  }

  else
  {
    v6 = sub_21771C44C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21771C44C()
{
  v44 = v0;
  v1 = (v0 + 1488);
  v2 = *(v0 + 2232);
  sub_2171F06D8(v0 + 1344, &qword_27CB27D10, &qword_21776BAC8);
  sub_2176CA620(v2, v3, v4, v5, v6, v7, v8, v9, v39, v41, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19]);
  sub_217283C08(v0 + 1712);
  sub_217202078(v0 + 1048, v0 + 736, &qword_27CB25318, &qword_2177657C0);
  if (*(v0 + 824))
  {
    sub_2172CE9F8();
    sub_2171F06D8(v0 + 736, &qword_27CB25388, &unk_21775D410);
    if (*(v0 + 1496))
    {
      v10 = *(v0 + 2224);
      v11 = *(v0 + 1504);
      *(v0 + 1544) = *v1;
      *(v0 + 1560) = v11;
      *(v0 + 1576) = *(v0 + 1520);
      *(v0 + 1592) = *(v0 + 1536);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_217759C00;
      if (qword_280BE9430 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 369);
      v14 = qword_280BE9438;
      *(v0 + 2256) = qword_280BE9438;
      *(v12 + 32) = v14;

      sub_21725CF0C(v0 + 1544, v0 + 1824);
      sub_217444C50(v0 + 1824, v12, 1, v13, v15, v16, v17, v18, v40, v42, __src[0], __src[1], __src[2]);
      v19 = swift_task_alloc();
      *(v0 + 2264) = v19;
      *v19 = v0;
      v19[1] = sub_21771CA6C;

      return sub_2174473A4(v0 + 1768);
    }
  }

  else
  {
    sub_2171F06D8(v0 + 736, &qword_27CB25318, &qword_2177657C0);
    *v1 = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
  }

  v21 = v0 + 1152;
  sub_2171F06D8(v0 + 1488, &unk_27CB275E0, &qword_2177589D0);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v22 = *(v0 + 2216);
  v23 = sub_217751AF8();
  __swift_project_value_buffer(v23, qword_280C02570);
  sub_217283BAC(v22, v0 + 1600);
  sub_217283BAC(v22, v0 + 1432);
  v24 = sub_217751AD8();
  v25 = sub_217752808();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    __src[45] = swift_slowAlloc();
    *v26 = 136446466;
    MusicVideo.description.getter();
    OUTLINED_FUNCTION_12_17();
    sub_217283C08(v0 + 1600);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v26 + 4) = v0 + 1600;
    *(v26 + 12) = 2082;
    *(v0 + 2016) = &type metadata for MusicVideo;
    *(v0 + 2024) = &protocol witness table for MusicVideo;
    v27 = swift_allocObject();
    *(v0 + 1992) = v27;
    sub_217283BAC(v0 + 1432, v27 + 16);
    v28 = __swift_project_boxed_opaque_existential_1((v0 + 1992), &type metadata for MusicVideo);
    sub_21729C5E8((v28 + 2), v0 + 2032);
    v29 = *(v0 + 2064);
    __swift_project_boxed_opaque_existential_1((v0 + 2032), *(v0 + 2056));
    v30 = *(v29 + 24);
    v31 = OUTLINED_FUNCTION_6_23();
    v32(v31, v29);
    sub_21729C644(v0 + 2032);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1992));
    memcpy((v0 + 16), __src, 0x161uLL);
    sub_217751FA8();
    OUTLINED_FUNCTION_12_17();
    sub_217283C08(v0 + 1432);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v26 + 14) = &type metadata for MusicVideo;
    OUTLINED_FUNCTION_13_18(&dword_2171EE000, v33, v34, "Unable to resolve <MusicVideo, Artist> relationship because no albums were found for %{public}s [%{public}s]");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {

    sub_217283C08(v0 + 1432);
    sub_217283C08(v0 + 1600);
  }

  v35 = *(v0 + 2200);
  sub_217202078(v0 + 944, v0 + 1152, &qword_27CB25310, &unk_21775D3D0);
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v35[4] = &protocol witness table for MusicItemCollection<A>;
  v36 = swift_allocObject();
  *v35 = v36;
  v37 = *(v0 + 2208);
  if (*(v0 + 1240))
  {
    memcpy((v36 + 16), (v0 + 1152), 0x68uLL);

    sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
    v21 = v0 + 944;
LABEL_17:
    sub_2171F06D8(v21, &qword_27CB25310, &unk_21775D3D0);
    goto LABEL_18;
  }

  sub_2174AA180();

  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  if (*(v0 + 1240))
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_0();

  return v38();
}

uint64_t sub_21771C9DC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2208);
  sub_2171F06D8(v0 + 1344, &qword_27CB27D10, &qword_21776BAC8);

  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  v2 = *(v0 + 2248);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21771CA6C()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 2264);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 2272) = v0;

  if (v0)
  {
    v6 = sub_217393E68;
  }

  else
  {
    v6 = sub_21771CB74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21771CB74()
{
  v28 = v0;
  v1 = (v0 + 144);
  v2 = v0[282];
  sub_2171F06D8((v0 + 157), &qword_27CB26A10, &qword_21776B000);
  sub_2176CA7B4(v2, v3, v4, v5, v6, v7, v8, v9, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21]);
  sub_21725CE44((v0 + 221));
  if (v0[116])
  {
    sub_21725CE44((v0 + 193));
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    memcpy(v0 + 118, v0 + 105, 0x68uLL);
  }

  else
  {
    sub_2171F06D8((v0 + 105), &qword_27CB25310, &unk_21775D3D0);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v10 = sub_217751AF8();
    __swift_project_value_buffer(v10, qword_280C02570);
    sub_21725CF0C((v0 + 193), (v0 + 235));
    sub_21725CF0C((v0 + 193), (v0 + 242));
    v11 = sub_217751AD8();
    v12 = sub_217752808();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27[45] = swift_slowAlloc();
      *v13 = 136446466;
      Album.description.getter();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 235));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 4) = v0 + 235;
      *(v13 + 12) = 2082;
      v0[262] = &type metadata for Album;
      v0[263] = &protocol witness table for Album;
      v14 = swift_allocObject();
      v0[259] = v14;
      sub_21725CF0C((v0 + 242), v14 + 16);
      v15 = __swift_project_boxed_opaque_existential_1(v0 + 259, &type metadata for Album);
      sub_21729C5E8((v15 + 2), (v0 + 264));
      v16 = v0[268];
      __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
      v17 = *(v16 + 24);
      v18 = OUTLINED_FUNCTION_6_23();
      v19(v18, v16);
      sub_21729C644((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1(v0 + 259);
      memcpy(v0 + 47, v27, 0x161uLL);
      sub_217751FA8();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 242));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 14) = &type metadata for Album;
      OUTLINED_FUNCTION_13_18(&dword_2171EE000, v20, v21, "Unable to resolve <MusicVideo, Artist> relationship because no artists were found for %{public}s [%{public}s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_21725CE44((v0 + 242));
      sub_21725CE44((v0 + 235));
    }

    sub_21725CE44((v0 + 193));
  }

  v22 = v0[275];
  sub_217202078((v0 + 118), (v0 + 144), &qword_27CB25310, &unk_21775D3D0);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v22[4] = &protocol witness table for MusicItemCollection<A>;
  v23 = swift_allocObject();
  *v22 = v23;
  v24 = v0[276];
  if (v0[155])
  {
    memcpy((v23 + 16), v0 + 144, 0x68uLL);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    v1 = (v0 + 118);
  }

  else
  {
    sub_2174AA180();

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    if (!v0[155])
    {
      goto LABEL_13;
    }
  }

  sub_2171F06D8(v1, &qword_27CB25310, &unk_21775D3D0);
LABEL_13:
  OUTLINED_FUNCTION_20_0();

  return v25();
}

uint64_t sub_21771CFE0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21725B86C;

  return sub_21771BFFC(a1, a2, a3);
}

uint64_t MusicPredicateValue<A>.libraryFilterValue.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *v0;
  }

  if (*(v0 + 8))
  {
    LOBYTE(v1) = v2;
  }

  return v1 & 1;
}

{
  sub_217202078(v0, v4, qword_27CB26CB8, &unk_217766C20);
  if (v5 && v5 == 1)
  {
    return *&v4[0];
  }

  sub_21726B918(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EC8, &unk_21775A1F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2177586E0;
  sub_21726B918(v3, v1 + 32);
  return v1;
}

{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 16) && v3 == 1)
  {
    v4 = *v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244C8, &unk_2177589A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2177586E0;
    *(v4 + 32) = v2;
    *(v4 + 40) = v1;
  }

  sub_21722F9A0(v2, v1, v3);
  return v4;
}

{
  memcpy(__dst, v0, 0x162uLL);
  memcpy(v7, v0, 0x162uLL);
  if (sub_2173A8AC0(v7) == 1)
  {
    v2 = *nullsub_1(v7, v1);
  }

  else
  {
    v3 = nullsub_1(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24EA8, &unk_217766C00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2177586E0;
    memcpy((v2 + 32), v3, 0x161uLL);
  }

  sub_217202078(__dst, v5, &qword_27CB2DA60, &qword_21779EA40);
  return v2;
}

uint64_t MusicPredicateValue<A>.libraryFilterValue.getter(char *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4 == 2)
  {
    v5 = 1;
LABEL_4:
    *a1 = v5;
    sub_21722F9A0(v2, v3, v4);
    return v2;
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicPredicateValue.rawLibraryFilterValue.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v12;
  }

  v16 = *(v3 + 32);
  v15 = v3 + 32;
  v16(v6, v12, v2);
  v17 = sub_217275A34(v2, v2);
  v18 = *(v17 + 52);
  v19 = *(v15 + 40);
  v20 = (*(v15 + 48) + *(v17 + 48)) & ~*(v15 + 48);
  swift_allocObject();
  v21 = sub_2177522C8();
  v16(v22, v6, v2);
  result = v21;
  sub_21726B91C();
  return result;
}

uint64_t ForgivingInt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_217752B38();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_6();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    OUTLINED_FUNCTION_2_6();
    v11 = sub_217753088();
    __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForgivingInt.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_84();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2177530E8();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t ForgivingInt.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_21771DB74()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t ForgivingURL.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_43(v4);
  (*(v5 + 32))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t ForgivingURL.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v35 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v35 - v17;
  v19 = type metadata accessor for ForgivingURL();
  v20 = OUTLINED_FUNCTION_45_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    v35[2] = v10;
    v36 = v26;
    v37 = v18;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    v28 = sub_2177516D8();
    OUTLINED_FUNCTION_0_164();
    sub_21771EC14(v29, v30);
    sub_217753098();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
    v31 = v37;
    sub_21751AF10(v14, v37);
    v32 = v38;
    v33 = v36;
    sub_21751AF10(v31, v36);
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_21771EA5C(v33, v32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForgivingURL.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_84();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  sub_21771EAC0();
  sub_2177530F8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

BOOL static ForgivingURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_45_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v36 - v26;
  v29 = *(v28 + 56);
  sub_2175CD0A0(a1, &v36 - v26);
  sub_2175CD0A0(a2, &v27[v29]);
  OUTLINED_FUNCTION_73(v27);
  if (!v30)
  {
    sub_2175CD0A0(v27, v20);
    OUTLINED_FUNCTION_73(&v27[v29]);
    if (!v30)
    {
      (*(v7 + 32))(v13, &v27[v29], v4);
      OUTLINED_FUNCTION_0_164();
      sub_21771EC14(v32, v33);
      v34 = sub_217751F08();
      v35 = *(v7 + 8);
      v35(v13, v4);
      v35(v20, v4);
      sub_2171F0738(v27, &unk_27CB277C0, &qword_217758DC0);
      return (v34 & 1) != 0;
    }

    (*(v7 + 8))(v20, v4);
LABEL_9:
    sub_2171F0738(v27, &qword_27CB24840, &unk_217758DD0);
    return 0;
  }

  OUTLINED_FUNCTION_73(&v27[v29]);
  if (!v30)
  {
    goto LABEL_9;
  }

  sub_2171F0738(v27, &unk_27CB277C0, &qword_217758DC0);
  return 1;
}

uint64_t ForgivingURL.hash(into:)()
{
  v1 = sub_2177516D8();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v21 - v16;
  sub_2175CD0A0(v0, &v21 - v16);
  if (__swift_getEnumTagSinglePayload(v17, 1, v1) == 1)
  {
    return sub_217753208();
  }

  (*(v4 + 32))(v10, v17, v1);
  sub_217753208();
  OUTLINED_FUNCTION_0_164();
  sub_21771EC14(v19, v20);
  sub_217751EB8();
  return (*(v4 + 8))(v10, v1);
}

uint64_t ForgivingURL.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2177516D8();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - v17;
  sub_2177531E8();
  sub_2175CD0A0(v1, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v11, v18, v2);
    sub_217753208();
    OUTLINED_FUNCTION_0_164();
    sub_21771EC14(v19, v20);
    sub_217751EB8();
    (*(v5 + 8))(v11, v2);
  }

  return sub_217753238();
}

uint64_t sub_21771E7BC()
{
  v1 = v0;
  v2 = sub_2177516D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v14 - v11;
  sub_2177531E8();
  sub_2175CD0A0(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_217753208();
    sub_21771EC14(&qword_27CB24320, MEMORY[0x277CC9260]);
    sub_217751EB8();
    (*(v3 + 8))(v7, v2);
  }

  return sub_217753238();
}

uint64_t URL.convertToForgivingURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 16))(a1, v1, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t type metadata accessor for ForgivingURL()
{
  result = qword_27CB2DA80;
  if (!qword_27CB2DA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21771EA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgivingURL();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21771EAC0()
{
  result = qword_27CB2DA68;
  if (!qword_27CB2DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB277C0, &qword_217758DC0);
    sub_21771EC14(&unk_280BE7410, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA68);
  }

  return result;
}

unint64_t sub_21771EB78()
{
  result = qword_27CB2DA70;
  if (!qword_27CB2DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA70);
  }

  return result;
}

uint64_t sub_21771EC14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21771EC94()
{
  sub_2172E2DB0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_11_84()
{

  return sub_2177532E8();
}

uint64_t sub_21771ED20(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84F90];
  v3 = sub_217204DD0(a2);
  v4 = sub_217204DD0(a1);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_21721524C(result, 0);
    v7 = sub_217751DE8();
    sub_217543868(v7);
    v8 = sub_217751DE8();
    sub_217543868(v8);
    return v9;
  }

  return result;
}

uint64_t sub_21771EDB0()
{
  v0 = sub_217752008();
  v1 = sub_217752948();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x21CEA2330](result);
    sub_217285A70();
    sub_217752048();
    sub_217752048();
    return 0;
  }

  return result;
}

unint64_t sub_21771EE94(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_217752038();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_217752118();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MusicEncryption.AESEncrypt(payload:clientKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v71 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA90, &qword_21779EC08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v63 - v7;
  v9 = sub_217751D58();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v64 = v11;
  v65 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_217751CF8();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v67 = v20;
  v68 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  OUTLINED_FUNCTION_1();
  v24 = sub_217751F98();
  v25 = OUTLINED_FUNCTION_0_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  OUTLINED_FUNCTION_1();
  sub_217751F88();
  v31 = sub_217751F58();
  v33 = v32;
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_93();
  v36(v35);
  if (v33 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v37 = sub_217751728();
  if (v38 >> 60 == 15)
  {
    v39 = OUTLINED_FUNCTION_86();
    sub_217275680(v39, v40);
LABEL_4:
    sub_21771F34C();
    OUTLINED_FUNCTION_15_4();
    *v41 = 0;
    swift_willThrow();
    return v24;
  }

  v69 = v37;
  v70 = v38;
  sub_21727591C(v37, v38);
  sub_217751CE8();
  v69 = v31;
  v70 = v33;
  v43 = sub_217751D28();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v43);
  sub_21771F3A0();
  v44 = v66;
  sub_217751D18();
  if (v44)
  {
    v45 = OUTLINED_FUNCTION_140_1();
    sub_217275680(v45, v46);
    sub_21771F3F4(v8);
    v47 = OUTLINED_FUNCTION_6_112();
    v48(v47);
    v49 = OUTLINED_FUNCTION_86();
    sub_217275680(v49, v50);
  }

  else
  {
    sub_21771F3F4(v8);
    v24 = sub_217751D38();
    v52 = v51;
    (*(v64 + 8))(v17, v65);
    if (v52 >> 60 == 15)
    {
      sub_21771F34C();
      OUTLINED_FUNCTION_15_4();
      *v53 = 1;
      swift_willThrow();
      v54 = OUTLINED_FUNCTION_86();
      sub_217275680(v54, v55);
    }

    else
    {
      v60 = v24;
      v24 = sub_217751748();
      v71 = v52;
      v61 = OUTLINED_FUNCTION_86();
      sub_217275680(v61, v62);
      sub_217275680(v60, v71);
    }

    v56 = OUTLINED_FUNCTION_140_1();
    sub_217275680(v56, v57);
    v58 = OUTLINED_FUNCTION_6_112();
    v59(v58);
  }

  return v24;
}

unint64_t sub_21771F34C()
{
  result = qword_27CB2DA98;
  if (!qword_27CB2DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DA98);
  }

  return result;
}

unint64_t sub_21771F3A0()
{
  result = qword_27CB2DAA0;
  if (!qword_27CB2DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAA0);
  }

  return result;
}

uint64_t sub_21771F3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DA90, &qword_21779EC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MusicEncryption.AESDecrypt(encryptedPayload:clientKey:)()
{
  v0 = sub_217751F98();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = sub_217751D58();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v11 = sub_217751CF8();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_86();
  sub_217751728();
  if (v21 >> 60 == 15)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_140_1();
  v22 = sub_217751728();
  if (v23 >> 60 == 15)
  {
    v24 = OUTLINED_FUNCTION_86();
    sub_217275680(v24, v25);
LABEL_4:
    sub_21771F34C();
    OUTLINED_FUNCTION_15_4();
    *v26 = 0;
    swift_willThrow();
    return v5;
  }

  v28 = v23;
  v47 = v11;
  v29 = v22;
  sub_21727591C(v22, v23);
  sub_217751CE8();
  v30 = OUTLINED_FUNCTION_86();
  sub_21727591C(v30, v31);
  v32 = OUTLINED_FUNCTION_86();
  sub_21771F7A4(v32, v33);
  if (v48)
  {
    (*(v14 + 8))(v20, v47);
    v34 = OUTLINED_FUNCTION_86();
    sub_217275680(v34, v35);
    sub_217275680(v29, v28);
  }

  else
  {
    v36 = sub_217751D08();
    v38 = v37;
    v39 = v36;
    sub_217751F88();
    v40 = sub_217751F68();
    if (v41)
    {
      v5 = v40;
    }

    else
    {
      sub_21771F34C();
      OUTLINED_FUNCTION_15_4();
      *v46 = 2;
      swift_willThrow();
    }

    sub_217275694(v39, v38);
    v42 = OUTLINED_FUNCTION_3_132();
    v43(v42);
    v44 = OUTLINED_FUNCTION_10_79();
    v45(v44);
  }

  return v5;
}

uint64_t sub_21771F7A4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v4 = *(result + 16);
      v3 = *(result + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(a2);
LABEL_6:
      if (v2 > 27)
      {
        sub_21771FEF0(result, a2);
        result = sub_217751D48();
      }

      else
      {
LABEL_7:
        sub_217275694(result, a2);
        v6 = sub_217751C98();
        sub_217721060(&qword_27CB2DAD8, MEMORY[0x277CC51E8]);
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277CC51E0], v6);
        result = swift_willThrow();
      }

      break;
  }

  return result;
}

uint64_t static MusicEncryption.sha256(from:)(char *a1, uint64_t a2)
{
  v77 = sub_217751788();
  v4 = OUTLINED_FUNCTION_0_0(v77);
  v73 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v78 = v10 - v9;
  v11 = sub_217751D68();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_217751CD8();
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v74 = v23;
  v75 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v68 - v31;
  v33 = sub_217751F98();
  v34 = OUTLINED_FUNCTION_0_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34, v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  sub_217751F88();
  v72 = a1;
  *&v76 = a2;
  v43 = sub_217751F58();
  v45 = v44;
  (*(v36 + 8))(v42, v33);
  if (v45 >> 60 == 15)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_217752AA8();

    v79 = 0xD00000000000001BLL;
    v80 = 0x80000002177B6500;
    MEMORY[0x21CEA23B0](v72, v76);
    MEMORY[0x21CEA23B0](0x61746144206F7420, 0xE90000000000002ELL);
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    v46 = v45;
    sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540]);
    sub_217751CC8();
    sub_21727591C(v43, v45);
    sub_217720A54(v43, v45);
    sub_217275680(v43, v45);
    sub_217751CB8();
    (*(v14 + 8))(v20, v11);
    (*(v74 + 16))(v28, v32, v75);
    v47 = sub_217720074(v28);
    v49 = v47;
    v50 = v48;
    v70 = v46;
    v71 = v43;
    v72 = v32;
    switch(v48 >> 62)
    {
      case 2uLL:
        v51 = *(v47 + 16);
        break;
      default:
        break;
    }

    sub_21727591C(v47, v48);
    v68 = v50;
    v69 = v49;
    sub_217751798();
    sub_217721060(&qword_27CB2DAB0, MEMORY[0x277CC92E0]);
    v52 = MEMORY[0x277D84F90];
    v76 = xmmword_2177586E0;
    v53 = MEMORY[0x277D84B78];
    v54 = MEMORY[0x277D84BC0];
    while (1)
    {
      sub_217752968();
      if ((v79 & 0x100) != 0)
      {
        break;
      }

      v55 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DA0, &qword_217772590);
      v56 = swift_allocObject();
      *(v56 + 16) = v76;
      *(v56 + 56) = v53;
      *(v56 + 64) = v54;
      *(v56 + 32) = v55;
      v57 = sub_217751F78();
      v59 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = *(v52 + 16);
        sub_2172AFF2C();
        v52 = v63;
      }

      v60 = *(v52 + 16);
      if (v60 >= *(v52 + 24) >> 1)
      {
        sub_2172AFF2C();
        v52 = v64;
      }

      *(v52 + 16) = v60 + 1;
      v61 = v52 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v59;
    }

    (*(v73 + 8))(v78, v77);
    v79 = v52;
    v65 = OUTLINED_FUNCTION_93();
    __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0);
    sub_217751ED8();
    sub_217275680(v71, v70);
    sub_217275694(v69, v68);

    (*(v74 + 8))(v72, v75);
    return OUTLINED_FUNCTION_93();
  }

  return result;
}

uint64_t sub_21771FEF0(uint64_t a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v13[3] = MEMORY[0x277CC9318];
  v13[4] = MEMORY[0x277CC9300];
  v13[0] = a1;
  v13[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_217720CC8(v6, v7, &v12);
      goto LABEL_9;
    case 3uLL:
      memset(v11, 0, 14);
      v5 = v11;
      goto LABEL_5;
    default:
      v11[0] = *v2;
      LOWORD(v11[1]) = v4;
      BYTE2(v11[1]) = BYTE2(v4);
      BYTE3(v11[1]) = BYTE3(v4);
      BYTE4(v11[1]) = BYTE4(v4);
      BYTE5(v11[1]) = BYTE5(v4);
      v5 = v11 + BYTE6(v4);
LABEL_5:
      sub_2177209DC(v11, v5, &v12);
LABEL_9:
      v8 = v12;
      __swift_destroy_boxed_opaque_existential_1(v13);
      v9 = *MEMORY[0x277D85DE8];
      return v8;
  }
}

uint64_t sub_217720074(uint64_t a1)
{
  v2 = sub_217751CD8();
  v8 = v2;
  v9 = sub_217721060(&qword_27CB2DAD0, MEMORY[0x277CC5290]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_0, a1, v2);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_217751578();
  __swift_destroy_boxed_opaque_existential_1(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t static MusicEncryption.obfuscate(emailAddress:)(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_11_85();
  sub_2174FF994();
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = v4;
  OUTLINED_FUNCTION_11_85();
  v7 = sub_217752118();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_217752948();
  if (v14 < 3)
  {
    v16 = MEMORY[0x21CEA2320](v7, v9, v11, v13);
    v15 = v16;
  }

  else
  {
    sub_2177520E8();
    sub_217751DE8();
    sub_217285954(2);
    v15 = sub_21771EDB0();
  }

  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_11_85();
  v22 = sub_217720AF0(v18, v19, v20, v21);
  if (v23)
  {
    goto LABEL_16;
  }

  v24 = v22;

  if (v24 >> 14 < v6 >> 14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v42 = v15;
  OUTLINED_FUNCTION_11_85();
  v25 = sub_217752118();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_217752948();
  sub_217751DE8();
  v33 = sub_217752008();
  v34 = v14 + v32;
  if (__OFADD__(v14, v32))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v35 = __OFSUB__(v33, v34);
  v36 = v33 - v34;
  if (v35)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = sub_217752D08();
    __break(1u);
    return result;
  }

  sub_21771EE94(v36, a1, a2);
  if (v32 < 4)
  {
    v37 = MEMORY[0x21CEA2320](v25, v27, v29, v31);
    v39 = v40;
  }

  else
  {
    sub_2177520E8();
    sub_2172859D8(3, v25, v27);
    v37 = sub_21771EDB0();
    v39 = v38;
  }

  sub_217751DE8();
  MEMORY[0x21CEA23B0](v37, v39);

  sub_217285A70();
  sub_217752048();

  return v42;
}

uint64_t static MusicEncryption.obfuscate(phoneNumber:)()
{
  sub_217751DE8();
  while (1)
  {
    result = sub_217752068();
    if (!v1)
    {
      break;
    }

    v2 = v1;
    v3 = HIBYTE(v1) & 0xF;
    v4 = result & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_2175B1ECC(result, v2, 10);
        v23 = v25;
        goto LABEL_70;
      }

      if ((v2 & 0x2000000000000000) != 0)
      {
        if (result == 43)
        {
          if (!v3)
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (v3 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_140();
              if (!v8 & v7)
              {
                break;
              }

              OUTLINED_FUNCTION_2_142();
              if (!v8 || __OFADD__(v17, v16))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v8)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v3)
          {
            goto LABEL_81;
          }

          if (v3 != 1)
          {
            while (1)
            {
              OUTLINED_FUNCTION_4_140();
              if (!v8 & v7)
              {
                break;
              }

              OUTLINED_FUNCTION_2_142();
              if (!v8 || __OFSUB__(v13, v12))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v8)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v8 & v7)
            {
              break;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v8 || __OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v8)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_217752B88();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 < 1)
        {
          goto LABEL_80;
        }

        if (v4 == 1)
        {
          goto LABEL_68;
        }

        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v8 & v7)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v8 || __OFADD__(v15, v14))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_5();
            if (v8)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v6 == 45)
      {
        if (v4 < 1)
        {
          goto LABEL_79;
        }

        if (v4 == 1)
        {
          goto LABEL_68;
        }

        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_140();
            if (!v8 & v7)
            {
              break;
            }

            OUTLINED_FUNCTION_2_142();
            if (!v8 || __OFSUB__(v10, v9))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v8)
            {
              goto LABEL_69;
            }
          }

LABEL_68:
          v11 = 1;
          goto LABEL_69;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_68;
        }

        v18 = 0;
        if (result)
        {
          do
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_68;
            }

            v18 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
          }

          while (--v4);
        }
      }

      v11 = 0;
LABEL_69:
      v23 = v11;
LABEL_70:

      if ((v23 & 1) == 0)
      {
        v24 = sub_217752FC8();
        MEMORY[0x21CEA23B0](v24);
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_93();
  if (sub_217752008() >= 4)
  {
    sub_2177520E8();
    swift_bridgeObjectRetain_n();
    sub_217285954(1);
    sub_21771EDB0();

    sub_21771EE94(2uLL, 0, 0xE000000000000000);
    sub_217285A70();
    sub_217751DE8();
    sub_217752048();
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t MusicEncryption.Error.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_2177209DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
    result = sub_2177516E8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEA1A50]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEA1A60]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_217720A54(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_217720D5C(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_217720BF4();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

unint64_t sub_217720AF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_217752028();
    v13[0] = sub_2177520F8();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_217720BF4()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_217751D68();
  sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540]);
  result = sub_217751CA8();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_217720CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_217751528();
  v7 = result;
  if (result)
  {
    result = sub_217751548();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_217751538();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_2177209DC(v7, v13, a3);
}

uint64_t sub_217720D5C(uint64_t a1, uint64_t a2)
{
  result = sub_217751528();
  if (!result || (result = sub_217751548(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217751538();
      sub_217751D68();
      sub_217721060(&qword_27CB2DAA8, MEMORY[0x277CC5540]);
      return sub_217751CA8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_217720E84()
{
  result = qword_27CB2DAC8;
  if (!qword_27CB2DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicEncryption(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicEncryption.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217721060(unint64_t *a1, void (*a2)(uint64_t))
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

double Playlist.Entry.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<D0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x161uLL);
  sub_21736C814(a3, v10);
  Track.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v12, __dst, a2, v10);
  sub_217638634(a3);
  v7 = v15;
  v8 = v12[1];
  *a4 = v12[0];
  *(a4 + 16) = v8;
  result = *&v13;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *(a4 + 56) = (v7 & 1) == 0;
  return result;
}

uint64_t Playlist.Entry.Item.convertToRawDictionary(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_21729C79C(v1, v6);
  if (v6[56] == 1)
  {
    OUTLINED_FUNCTION_0_165();
    v3 = sub_21753D588();
    sub_217283B58(v5);
  }

  else
  {
    OUTLINED_FUNCTION_0_165();
    v3 = sub_21753D5D0();
    sub_217283C08(v5);
  }

  return v3;
}

uint64_t Playlist.Entry.Item.underlyingLegacyModelObjectType.getter@<X0>(char *a1@<X8>)
{
  sub_21729C79C(v1, v5);
  if (v5[56])
  {
    v3 = 25;
  }

  else
  {
    v3 = 12;
  }

  *a1 = v3;
  return sub_21729C7F8(v5);
}

uint64_t sub_217721240()
{
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217721358;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_88();
  [v1 requestCapabilitiesWithPrivacyPromptPolicy:1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217721358()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_21772233C;
  }

  else
  {
    v3 = sub_217722340;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21772147C()
{
  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_3_3();
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_217721594;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29DC0, &qword_21777BC78);
  OUTLINED_FUNCTION_1047(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_88();
  [v1 requestCapabilitiesWithPrivacyPromptPolicy:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_217721594()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_2177216E0;
  }

  else
  {
    v3 = sub_2177216A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2177216A4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  *v1 = v2 & 1;
  v1[1] = (v2 & 3) == 2;
  v1[2] = BYTE1(v2) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_2177216E0()
{
  v8 = v0;
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = v1;
  sub_21756DBF8(v1, v7);
  v3 = v7[0];
  sub_2173DA3F4();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

MusicKit::MusicSubscription __swiftcall MusicSubscription.init(canPlayCatalogContent:canBecomeSubscriber:hasCloudLibraryEnabled:)(Swift::Bool canPlayCatalogContent, Swift::Bool canBecomeSubscriber, Swift::Bool hasCloudLibraryEnabled)
{
  *v3 = canPlayCatalogContent;
  v3[1] = canBecomeSubscriber;
  v3[2] = hasCloudLibraryEnabled;
  result.canPlayCatalogContent = canPlayCatalogContent;
  return result;
}

unint64_t MusicSubscription.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_2_4();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v4, v5);

  OUTLINED_FUNCTION_5_113();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v6, v7);

  OUTLINED_FUNCTION_5_113();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x21CEA23B0](v8, v9);

  OUTLINED_FUNCTION_5_113();

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_2177219CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002177B6620 == a2;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002177B6640 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x80000002177B6660 == a2)
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

unint64_t sub_217721AE4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000016;
}

uint64_t sub_217721B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177219CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217721B68(uint64_t a1)
{
  v2 = sub_21772206C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217721BA4(uint64_t a1)
{
  v2 = sub_21772206C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicSubscription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t MusicSubscription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2177531E8();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_217721CA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2177531E8();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

uint64_t MusicSubscription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DAE0, &qword_21779ED58);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = v16 - v11;
  v13 = *v1;
  v16[6] = v1[1];
  v16[3] = v1[2];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772206C();
  sub_2177532F8();
  v19 = 0;
  OUTLINED_FUNCTION_6_113();
  if (!v2)
  {
    v18 = 1;
    OUTLINED_FUNCTION_6_113();
    v17 = 2;
    OUTLINED_FUNCTION_6_113();
  }

  return (*(v7 + 8))(v12, v4);
}

uint64_t MusicSubscription.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DAE8, &qword_21779ED60);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772206C();
  sub_2177532C8();
  if (!v2)
  {
    v22 = 0;
    v15 = OUTLINED_FUNCTION_4_141();
    v21 = 1;
    v16 = OUTLINED_FUNCTION_4_141();
    v20 = 2;
    v18 = OUTLINED_FUNCTION_4_141();
    (*(v8 + 8))(v13, v5);
    *a2 = v15 & 1;
    a2[1] = v16 & 1;
    a2[2] = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21772206C()
{
  result = qword_280BE8030;
  if (!qword_280BE8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8030);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicSubscription(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

_BYTE *storeEnumTagSinglePayload for MusicSubscription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217722230()
{
  result = qword_27CB2DAF0;
  if (!qword_27CB2DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DAF0);
  }

  return result;
}

unint64_t sub_217722288()
{
  result = qword_280BE8020;
  if (!qword_280BE8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8020);
  }

  return result;
}

unint64_t sub_2177222E0()
{
  result = qword_280BE8028;
  if (!qword_280BE8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8028);
  }

  return result;
}

uint64_t sub_217722344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 40) = -1;
  v8 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  sub_217722E8C();
  *(v3 + v8) = OUTLINED_FUNCTION_4_142();
  v23 = a1;
  sub_2175C85D0(a1, v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request);
  v24 = v3;
  v9 = (v3 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider);
  *v9 = a2;
  v9[1] = a3;

  v10 = OUTLINED_FUNCTION_4_142();
  for (i = 0; ; ++i)
  {
    if (i == 3)
    {
      sub_217722EE0(v23);

      result = v24;
      *(v24 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_maximumRetryCounts) = v10;
      return result;
    }

    v12 = byte_28295BA58[i + 32];
    swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_2176325CC();
    if (__OFADD__(v10[2], (v14 & 1) == 0))
    {
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F60, &qword_21775A9A8);
    if (sub_217752CB8())
    {
      v17 = sub_2176325CC();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_15;
      }

      v15 = v17;
    }

    if (v16)
    {
      *(v10[7] + 8 * v15) = 1;
    }

    else
    {
      v10[(v15 >> 6) + 8] |= 1 << v15;
      *(v10[6] + v15) = v12;
      *(v10[7] + 8 * v15) = 1;
      v19 = v10[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_14;
      }

      v10[2] = v21;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_217753178();
  __break(1u);
  return result;
}

uint64_t sub_217722554(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v31 = *(a1 + 1);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  sub_217751DE8();
  v10 = sub_2173AC840(v3, v9);
  v12 = v11;

  if (v12)
  {
    v10 = 0;
  }

  v13 = sub_2173AC840(v3, *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_maximumRetryCounts));
  if (v14)
  {
    if (v10 >= 1)
    {
LABEL_5:
      v15 = v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
      v16 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
      v17 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8);
      v18 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 16);
      v19 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 24);
      v20 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 32);
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0;
      v21 = *(v15 + 40);
      *(v15 + 40) = -1;
      sub_2175CB7AC(v16, v17, v18, v19, v20, v21);
      return 0;
    }
  }

  else if (v10 >= v13)
  {
    goto LABEL_5;
  }

  v23 = v3;
  swift_beginAccess();
  v24 = *(v2 + v8);
  swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v2 + v8);
  sub_2172C7E14();
  *(v2 + v8) = v32;
  swift_endAccess();
  v25 = v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
  v26 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext);
  v27 = *(v2 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 32);
  *v25 = v23;
  *(v25 + 8) = v31;
  *(v25 + 16) = v4;
  *(v25 + 24) = v5;
  *(v25 + 32) = v6;
  LOBYTE(v23) = *(v25 + 40);
  *(v25 + 40) = v7;
  sub_21758E1D4(v31, v4, v5, v6, v7);
  sub_2175CB7AC(v26, v27, v28, v29, v30, v23);
  return 1;
}

uint64_t sub_217722710()
{
  sub_217722EE0(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_request);
  v1 = *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_tokenProvider);

  sub_2175CB7AC(*(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 8), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 16), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 24), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 32), *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 40));
  v2 = *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_maximumRetryCounts);

  v3 = *(v0 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts);

  return v0;
}

uint64_t sub_217722788()
{
  sub_217722710();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _s7ContextCMa()
{
  result = qword_27CB2DB08;
  if (!qword_27CB2DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217722834()
{
  result = type metadata accessor for MusicDataRequest();
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

unint64_t sub_2177228E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v46 - v5;
  v54 = 0;
  v55 = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_currentRetryCounts;
  swift_beginAccess();
  if (*(*(v0 + v7) + 16))
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v51 = 0xD000000000000018;
    v52 = v8;
    v9 = *(v0 + v7);
    sub_217722E8C();
    sub_217751DE8();
    v10 = sub_217751DA8();
    v12 = v11;

    MEMORY[0x21CEA23B0](v10, v12);

    MEMORY[0x21CEA23B0](v51, v52);
  }

  v13 = v1 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext;
  if (*(v1 + OBJC_IVAR____TtCV8MusicKit16MusicDataRequest7Context_activeRetryContext + 40) != 255)
  {
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v17 = *(v13 + 24);
    v16 = *(v13 + 32);
    v18 = *v13;
    strcpy(v53, "RetryContext(");
    HIWORD(v53[1]) = -4864;
    v51 = 0x6F7361657220200ALL;
    v52 = 0xEB00000000203A6ELL;
    v19 = sub_2175FA42C(v18);
    MEMORY[0x21CEA23B0](v19);

    MEMORY[0x21CEA23B0](44, 0xE100000000000000);
    OUTLINED_FUNCTION_2_143();

    OUTLINED_FUNCTION_1_147();
    v20 = sub_2176510AC();
    v22 = v21;
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v51 = 0xD000000000000013;
    v52 = v23;
    v49 = v20;
    v50 = v22;
    v47 = 10;
    v48 = 0xE100000000000000;
    v46[0] = 2105354;
    v46[1] = 0xE300000000000000;
    sub_21733A5C8();
    v24 = OUTLINED_FUNCTION_0_166();
    v26 = v25;

    MEMORY[0x21CEA23B0](v24, v26);

    OUTLINED_FUNCTION_2_143();

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
    v28 = v53[0];
    v27 = v53[1];
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v51 = 0xD000000000000018;
    v52 = v29;
    v53[0] = v28;
    v53[1] = v27;
    v49 = 10;
    v50 = 0xE100000000000000;
    v47 = 2105354;
    v48 = 0xE300000000000000;
    sub_21733A5C8();
    v30 = OUTLINED_FUNCTION_0_166();
    v32 = v31;

    MEMORY[0x21CEA23B0](v30, v32);

    MEMORY[0x21CEA23B0](v51, v52);
  }

  v51 = 0x22203A6C7275;
  v52 = 0xE600000000000000;
  sub_2177512C8();
  v33 = sub_2177516D8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v33) == 1)
  {
    sub_21735436C(v6);
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {
    v34 = sub_217751668();
    v35 = v36;
    (*(*(v33 - 8) + 8))(v6, v33);
  }

  MEMORY[0x21CEA23B0](v34, v35);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  v38 = v51;
  v37 = v52;
  OUTLINED_FUNCTION_2_4();
  v51 = 0xD000000000000019;
  v52 = v39;
  v41 = v54;
  v40 = v55;
  v42 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v42 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v53[0] = 2105354;
    v53[1] = 0xE300000000000000;
    MEMORY[0x21CEA23B0](v38, v37);

    MEMORY[0x21CEA23B0](v53[0], v53[1]);

    MEMORY[0x21CEA23B0](v41, v40);

    v43 = 10506;
    v44 = 0xE200000000000000;
  }

  else
  {

    MEMORY[0x21CEA23B0](v38, v37);

    v43 = 41;
    v44 = 0xE100000000000000;
  }

  MEMORY[0x21CEA23B0](v43, v44);
  return v51;
}

unint64_t sub_217722E8C()
{
  result = qword_27CB2DB18;
  if (!qword_27CB2DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB18);
  }

  return result;
}

uint64_t sub_217722EE0(uint64_t a1)
{
  v2 = type metadata accessor for MusicDataRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217722F3C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB28, &qword_21779F028);
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217723450();
  sub_2177532C8();
  v15 = 0;
  sub_2172E1C68();
  OUTLINED_FUNCTION_0_167();
  v13 = v14;
  v15 = 1;
  OUTLINED_FUNCTION_0_167();
  (*(v5 + 8))(v10, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_2177230F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB20, &qword_21779F020);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217723450();
  sub_2177532F8();
  v22 = a2;
  v23 = a3;
  v24 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_1_148();
  if (!v5)
  {
    v22 = v20;
    v23 = v21;
    v24 = 1;
    OUTLINED_FUNCTION_1_148();
  }

  return (*(v12 + 8))(v17, v9);
}

uint64_t sub_217723254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xEA00000000004449)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_217723320(char a1)
{
  if (a1)
  {
    return 0x6573616261746164;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_217723360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217723254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217723388(uint64_t a1)
{
  v2 = sub_217723450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177233C4(uint64_t a1)
{
  v2 = sub_217723450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217723400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_217722F3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_217723450()
{
  result = qword_280BE8348;
  if (!qword_280BE8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableMusicDeviceLocalID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217723594()
{
  result = qword_27CB2DB30;
  if (!qword_27CB2DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB30);
  }

  return result;
}

unint64_t sub_2177235EC()
{
  result = qword_27CB2DB38;
  if (!qword_27CB2DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB38);
  }

  return result;
}

unint64_t sub_217723644()
{
  result = qword_280BE8338;
  if (!qword_280BE8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8338);
  }

  return result;
}

unint64_t sub_21772369C()
{
  result = qword_280BE8340;
  if (!qword_280BE8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8340);
  }

  return result;
}

uint64_t sub_217723770(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  v2 = sub_2172A41AC();
  return OUTLINED_FUNCTION_41_35(v2, v3);
}

uint64_t Song.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static Song.== infix(_:_:)(void *a1, void *a2)
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

uint64_t Song.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_6_1();
  v297 = v5 - v6;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v7, v8);
  v298 = &v294 - v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10, v11);
  v301 = &v294 - v12;
  v302 = sub_2177517D8();
  v13 = OUTLINED_FUNCTION_0_0(v302);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  OUTLINED_FUNCTION_6_1();
  v296 = v19 - v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21, v22);
  *&v306 = &v294 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  OUTLINED_FUNCTION_6_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = (&v294 - v32);
  v34 = sub_2177516D8();
  v35 = OUTLINED_FUNCTION_0_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35, v40);
  OUTLINED_FUNCTION_6_1();
  v300 = v41 - v42;
  OUTLINED_FUNCTION_79_2();
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v294 - v46;
  v342 = 0x28676E6F53;
  v343 = 0xE500000000000000;
  *&v327 = 0x22203A646920200ALL;
  *(&v327 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v45);
  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  OUTLINED_FUNCTION_24_0();
  *&v327 = v48 | 0x6C74697400000000;
  *(&v327 + 1) = 0xEC00000022203A65;
  if (qword_280BE9750 == -1)
  {
    goto LABEL_2;
  }

LABEL_217:
  OUTLINED_FUNCTION_18_2();
LABEL_2:
  v299 = v15;
  *&v304 = v29;
  v49 = sub_2172A41AC();
  v51 = OUTLINED_FUNCTION_41_35(v49, v50);
  if (v117)
  {
    v53 = 0xE000000000000000;
  }

  else
  {
    v53 = v52;
  }

  MEMORY[0x21CEA23B0](v51, v53);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  if (qword_280BE9960 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_58_24();
  sub_2172A41AC();
  if (v54)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15;
    *(&v327 + 1) = v55;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_47();
  }

  OUTLINED_FUNCTION_2_4();
  *&v327 = v15;
  *(&v327 + 1) = v56;
  if (qword_280BE9958 != -1)
  {
    OUTLINED_FUNCTION_17_18();
  }

  v57 = sub_2172A41AC();
  v59 = OUTLINED_FUNCTION_41_35(v57, v58);
  if (v117)
  {
    v61 = 0xE000000000000000;
  }

  else
  {
    v61 = v60;
  }

  MEMORY[0x21CEA23B0](v59, v61);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
  OUTLINED_FUNCTION_31_11();
  v62 = OUTLINED_FUNCTION_30_3();
  v63 = sub_2172E3DC0(v62 & 0xFFFFFFFFFFFFLL | 0x7255000000000000, 0xE90000000000006CLL);
  sub_2176CA560(v63, v64, v65, v66, v67, v68, v69, v70, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312);

  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_2171F06D8(v33, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (v37[4])(v47, v33, v34);
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15 - 1;
    *(&v327 + 1) = v71;
    sub_21736C310();
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();

    (v37[1])(v47, v34);
  }

  v47 = v306;
  if (qword_280BE9920 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v72)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v73);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE98B0 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v74)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v75);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9878 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5B8(v76, v77, v78, v79, v80, v81, v82, v83, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310);
  v84 = v327;
  if (v327 != 2)
  {
    *&v327 = 0;
    *(&v327 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](v15 + 3, 0x80000002177AC060);
    LOBYTE(v334) = v84 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9950 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v85 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15 - 1;
    *(&v327 + 1) = v86;
    v334 = v87;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE96D8 != -1)
  {
    swift_once();
  }

  sub_2172A41F0();
  if ((v88 & 1) == 0)
  {
    *&v327 = 0;
    *(&v327 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9838 != -1)
  {
    OUTLINED_FUNCTION_125();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5AC(v89, v90, v91, v92, v93, v94, v95, v96, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308);
  v338[0] = v327;
  v338[1] = v328;
  v338[2] = v329;
  v338[3] = v330;
  v339 = v328;
  v340 = v329;
  v341 = v330;
  if (*(&v327 + 1) != 1)
  {
    v334 = v15 + 3;
    v335 = 0x80000002177AB940;
    v328 = v339;
    v329 = v340;
    v330 = v341;
    v97 = EditorialNotes.debugDescription.getter();
    v99 = v98;
    sub_2171F06D8(v338, &qword_27CB24B70, &unk_217759460);
    *&v326[0] = v97;
    *(&v326[0] + 1) = v99;
    *&v313 = 10;
    *(&v313 + 1) = 0xE100000000000000;
    *&v318 = 2105354;
    *(&v318 + 1) = 0xE300000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v294 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v100 = OUTLINED_FUNCTION_49_30();
    v102 = v101;

    v103 = v100;
    v47 = v306;
    MEMORY[0x21CEA23B0](v103, v102);

    MEMORY[0x21CEA23B0](v334, v335);
  }

  v336 = 0;
  v337 = 0xE000000000000000;
  if (qword_280BE9948 != -1)
  {
    OUTLINED_FUNCTION_124();
  }

  v104 = sub_2172A41D4(qword_280C02980);
  if (v104)
  {
    v105 = v104;
  }

  else
  {
    v105 = MEMORY[0x277D84F90];
  }

  v29 = *(v105 + 16);
  v303 = v1;
  *&v305 = v34;
  if (v29)
  {
    v106 = (v105 + 40);
    v15 = 0x22202020200ALL;
    do
    {
      v108 = *(v106 - 1);
      v107 = *v106;
      if ((v337 & 0x2000000000000000) != 0)
      {
        v109 = HIBYTE(v337) & 0xF;
      }

      else
      {
        v109 = v336 & 0xFFFFFFFFFFFFLL;
      }

      v110 = *v106;
      sub_217751DE8();
      if (v109)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v327 = 0x22202020200ALL;
      *(&v327 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v108, v107);

      OUTLINED_FUNCTION_18_53();
      MEMORY[0x21CEA23B0](v327, *(&v327 + 1));

      v106 += 2;
      --v29;
    }

    while (v29);

    v111 = v337;
    OUTLINED_FUNCTION_58_24();
    v34 = v305;
    v47 = v306;
  }

  else
  {

    v112 = 0;
    v111 = 0xE000000000000000;
  }

  v113 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v113 = v112 & 0xFFFFFFFFFFFFLL;
  }

  if (v113)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15;
    *(&v327 + 1) = v114;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_70();
  }

  OUTLINED_FUNCTION_24_0();
  *&v327 = v115 | 0x4C73616800000000;
  *(&v327 + 1) = 0xEF203A7363697279;
  v116 = Song.hasLyrics.getter();
  v117 = (v116 & 1) == 0;
  if (v116)
  {
    v118 = 1702195828;
  }

  else
  {
    v118 = 0x65736C6166;
  }

  if (v117)
  {
    v119 = 0xE500000000000000;
  }

  else
  {
    v119 = 0xE400000000000000;
  }

  MEMORY[0x21CEA23B0](v118, v119);

  OUTLINED_FUNCTION_15_70();

  if (qword_280BE9760 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v120)
  {
    OUTLINED_FUNCTION_24_0();
    *&v327 = v121 | 0x6372736900000000;
    *(&v327 + 1) = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9868 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v122 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15 + 2;
    *(&v327 + 1) = v123;
    v334 = v124;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE98A0 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v125)
  {
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53_31(v126);
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_70();
  }

  if (qword_280BE9808 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v127 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15 + 3;
    *(&v327 + 1) = v134;
    v334 = v135;
    sub_217752FC8();
    OUTLINED_FUNCTION_70_21();

    OUTLINED_FUNCTION_15_70();
  }

  v136 = v301;
  if (qword_280BE98F0 != -1)
  {
    swift_once();
  }

  sub_2176CA580(qword_280C02950, v127, v128, v129, v130, v131, v132, v133, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  v137 = v302;
  if (__swift_getEnumTagSinglePayload(v136, 1, v302) == 1)
  {
    sub_2171F06D8(v136, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v295 = v37;
    v138 = v299;
    v29 = v299 + 32;
    v139 = *(v299 + 32);
    v139(v47, v136, v137);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for CloudFormatter();
    v301 = __swift_project_value_buffer(v140, qword_280BE8918);
    v141 = v298;
    (*(v138 + 16))(v298, v47, v137);
    v142 = OUTLINED_FUNCTION_45_3();
    __swift_storeEnumTagSinglePayload(v142, v143, 1, v137);
    v144 = v47;
    v47 = v297;
    sub_217202078(v141, v297, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v47, 1, v137) == 1)
    {
      v15 = &qword_217759480;
      sub_2171F06D8(v141, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v47, &qword_27CB241C0, &qword_217759480);
      (*(v138 + 8))(v144, v137);
      OUTLINED_FUNCTION_58_24();
    }

    else
    {
      v145 = v296;
      v139(v296, v47, v137);
      v146 = *(v301 + *(v140 + 20));
      v147 = sub_2177517A8();
      v15 = [v146 stringFromDate_];

      v29 = sub_217751F48();
      v47 = v148;

      v149 = *(v138 + 8);
      v149(v145, v137);
      sub_2171F06D8(v141, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_53_31(v150);
      MEMORY[0x21CEA23B0](v29, v47);

      OUTLINED_FUNCTION_18_53();
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_58_24();

      v149(v306, v137);
    }

    v37 = v295;
    v34 = v305;
  }

  if (qword_280BE98E8 != -1)
  {
    swift_once();
  }

  sub_2172A41C0();
  if ((v151 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_4();
    *&v327 = v15;
    *(&v327 + 1) = v152;
    v334 = v153;
    v154 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v154);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE96C8 != -1)
  {
    swift_once();
  }

  sub_2172A41AC();
  if (v155)
  {
    OUTLINED_FUNCTION_24_0();
    *&v327 = v162 | 0x6B726F7700000000;
    *(&v327 + 1) = 0xEF22203A656D614ELL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE9770 != -1)
  {
    swift_once();
  }

  v163 = v304;
  sub_2176CA560(qword_280C02858, v155, v156, v157, v158, v159, v160, v161, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  if (__swift_getEnumTagSinglePayload(v163, 1, v34) == 1)
  {
    sub_2171F06D8(v163, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v29 = v300;
    (v37[4])(v300, v163, v34);
    OUTLINED_FUNCTION_24_0();
    *&v327 = v164 | 0x3A6C727500000000;
    *(&v327 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v165 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v165);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    v166 = v37[1];
    ++v37;
    v166(v29, v34);
  }

  if (qword_280BE9738 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA544(v167, v168, v169, v170, v171, v172, v173, v174, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  if (v331)
  {
    OUTLINED_FUNCTION_36_0();
    *&v318 = 0;
    *(&v318 + 1) = 0xE000000000000000;
    v15 = &unk_21775D410;
    v175 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v175, v176, v177, &unk_21775D410);
    v178 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v178, v179, v180, &unk_21775D410);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v29 = BYTE8(v327);
    v33 = (v34 + 32);
    v1 = &unk_27CB276C0;
    v37 = &qword_217758A00;
    if (BYTE8(v327))
    {
LABEL_109:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v117)
      {

        sub_217294574();
        goto LABEL_115;
      }
    }

    else
    {
      while (1)
      {
        v181 = *(v34 + 16);
        if (v15 == v181)
        {
          break;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (v15 >= v181)
        {
          goto LABEL_204;
        }

        OUTLINED_FUNCTION_56();
        v182 = OUTLINED_FUNCTION_45_3();
        v184 = sub_217283C5C(v182, v183);
        sub_2172940A0(v184, v185, v186, v187, v188, v189, v190, v191);
        sub_2171F06D8(v326, &unk_27CB276C0, &qword_217758A00);
LABEL_115:
        OUTLINED_FUNCTION_16_64();
        v47 = __OFADD__(v15, 1);
        if (v29)
        {
          sub_21725CF00(v34, 1);
          if (v47)
          {
            goto LABEL_203;
          }
        }

        else
        {
          sub_21725CF00(v34, 0);
          if (v47)
          {
            goto LABEL_202;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v192)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v193 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v193);

        v47 = *(&v313 + 1);
        MEMORY[0x21CEA23B0](v313, *(&v313 + 1));

        sub_21725CE44(v326);
        ++v15;
        v33 += 8;
        if (v29)
        {
          goto LABEL_109;
        }
      }
    }

    v332 = v15;
    sub_2171F06D8(&v327, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v327 = v194 | 0x75626C6100000000;
    *(&v327 + 1) = 0xED00005B203A736DLL;
    v326[0] = v318;
    OUTLINED_FUNCTION_2_118();
    v322 = v196;
    v323 = v195;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v34, v33);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v334, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    sub_2171F06D8(&v327, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE9710 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA50C(v197, v198, v199, v200, v201, v202, v203, v204, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  if (v331)
  {
    OUTLINED_FUNCTION_36_0();
    *&v318 = 0;
    *(&v318 + 1) = 0xE000000000000000;
    v15 = &unk_21776C4F0;
    v205 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v205, v206, v207, &unk_21776C4F0);
    v208 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v208, v209, v210, &unk_21776C4F0);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v29 = BYTE8(v327);
    v33 = (v34 + 32);
    v1 = &qword_27CB27BD0;
    v37 = &qword_21776B8C0;
    if (BYTE8(v327))
    {
LABEL_132:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v117)
      {

        sub_2172945D4();
        goto LABEL_138;
      }
    }

    else
    {
      while (1)
      {
        v211 = *(v34 + 16);
        if (v15 == v211)
        {
          break;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_205;
        }

        if (v15 >= v211)
        {
          goto LABEL_208;
        }

        OUTLINED_FUNCTION_56();
        v212 = OUTLINED_FUNCTION_45_3();
        v214 = sub_217283C5C(v212, v213);
        sub_217294118(v214, v215, v216, v217, v218, v219, v220, v221);
        sub_2171F06D8(v326, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_138:
        OUTLINED_FUNCTION_16_64();
        v47 = __OFADD__(v15, 1);
        if (v29)
        {
          sub_21725CF00(v34, 1);
          if (v47)
          {
            goto LABEL_207;
          }
        }

        else
        {
          sub_21725CF00(v34, 0);
          if (v47)
          {
            goto LABEL_206;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v222)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v223 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v223);

        v47 = *(&v313 + 1);
        MEMORY[0x21CEA23B0](v313, *(&v313 + 1));

        sub_217284498(v326);
        ++v15;
        v33 += 8;
        if (v29)
        {
          goto LABEL_132;
        }
      }
    }

    v332 = v15;
    sub_2171F06D8(&v327, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v327 = v224 | 0x6974726100000000;
    *(&v327 + 1) = 0xEE005B203A737473;
    v326[0] = v318;
    OUTLINED_FUNCTION_2_118();
    v322 = v226;
    v323 = v225;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v34, v33);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v334, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v327, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE9720 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA528(v227, v228, v229, v230, v231, v232, v233, v234, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  if (v331)
  {
    OUTLINED_FUNCTION_36_0();
    *&v333 = 0;
    *(&v333 + 1) = 0xE000000000000000;
    v15 = &unk_21775D420;
    v235 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v235, v236, v237, &unk_21775D420);
    v238 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v238, v239, v240, &unk_21775D420);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v1 = BYTE8(v327);
    v33 = (v34 + 32);
    v47 = 10;
    v37 = &qword_217778790;
    if (BYTE8(v327))
    {
LABEL_155:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v117)
      {

        sub_21729464C();
        goto LABEL_164;
      }
    }

    else
    {
      while (1)
      {
        v241 = *(v34 + 16);
        if (v15 == v241)
        {
          break;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_209;
        }

        if (v15 >= v241)
        {
          goto LABEL_212;
        }

        sub_217202078(v33, v326, &qword_27CB24618, &qword_217778790);
        sub_217202078(v326, &v313, &qword_27CB24618, &qword_217778790);
        if (v317)
        {
          v242 = *(v313 + 16);
          v243 = *(v313 + 24);
          v244 = *(v313 + 32);
          v245 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v245, v246);
          sub_217751DE8();

          sub_2172937E4(v242, v243, v247, v248, v249, v250, v251, v252, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1), v315, *(&v315 + 1), v316, v317, v318, *(&v318 + 1), v319, *(&v319 + 1));
          v47 = 10;
        }

        else
        {
          v318 = v313;
          v319 = v314;
          v320 = v315;
          v321 = v316;
          v253 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v253, v254);
        }

        sub_2171F06D8(v326, &qword_27CB24618, &qword_217778790);
LABEL_164:
        v305 = v319;
        v306 = v318;
        v304 = v320;
        v29 = __OFADD__(v15, 1);
        if (v1)
        {
          sub_21725CF00(v34, 1);
          if (v29)
          {
            goto LABEL_211;
          }
        }

        else
        {
          sub_21725CF00(v34, 0);
          if (v29)
          {
            goto LABEL_210;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v255)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v313 = 10;
        *(&v313 + 1) = 0xE100000000000000;
        v256 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v256);

        v29 = *(&v313 + 1);
        MEMORY[0x21CEA23B0](v313, *(&v313 + 1));

        sub_21728418C(v326);
        ++v15;
        v33 += 8;
        if (v1)
        {
          goto LABEL_155;
        }
      }
    }

    v332 = v15;
    sub_2171F06D8(&v327, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v327 = v257 | 0x726E656700000000;
    *(&v327 + 1) = 0xED00005B203A7365;
    v326[0] = v333;
    OUTLINED_FUNCTION_2_118();
    *&v318 = v259;
    *(&v318 + 1) = v258;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v15, v34);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v327, *(&v327 + 1));

    sub_2171F06D8(&v334, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v327, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE96B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA50C(v260, v261, v262, v263, v264, v265, v266, v267, v298, v299, v300, v301, v302, v303, v304, *(&v304 + 1), v305, *(&v305 + 1), v306, *(&v306 + 1), v307, v308, v309, v310, v311, v312, v313, *(&v313 + 1), v314, *(&v314 + 1));
  if (v331)
  {
    OUTLINED_FUNCTION_36_0();
    *&v333 = 0;
    *(&v333 + 1) = 0xE000000000000000;
    v268 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v268, v269, v270, &unk_21776C4F0);
    v271 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v271, v272, v273, &unk_21776C4F0);
    v274 = *&v326[0];
    v275 = BYTE8(v326[0]);
    sub_217283C5C(*&v326[0], SBYTE8(v326[0]));
    sub_2171F06D8(v326, &qword_27CB25398, &unk_21776C4F0);
    sub_21725CF00(v274, v275);
    v29 = 0;
    v332 = 0;
    v15 = v327;
    v47 = BYTE8(v327);
    v34 = v327 + 32;
    v33 = &qword_27CB27BD0;
    v1 = &qword_21776B8C0;
    if (BYTE8(v327))
    {
LABEL_181:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v29 != *(*(v15 + 56) + 16))
      {

        sub_2172945D4();
        goto LABEL_187;
      }
    }

    else
    {
      while (1)
      {
        v276 = *(v15 + 16);
        if (v29 == v276)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_213;
        }

        if (v29 >= v276)
        {
          goto LABEL_216;
        }

        sub_217202078(v34, v326, &qword_27CB27BD0, &qword_21776B8C0);
        v277 = sub_217283C5C(v15, 0);
        sub_217294118(v277, v278, v279, v280, v281, v282, v283, v284);
        sub_2171F06D8(v326, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_187:
        OUTLINED_FUNCTION_16_64();
        v37 = __OFADD__(v29, 1);
        if (v47)
        {
          sub_21725CF00(v15, 1);
          if (v37)
          {
            goto LABEL_215;
          }
        }

        else
        {
          sub_21725CF00(v15, 0);
          if (v37)
          {
            goto LABEL_214;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v285)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v286 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v286);

        v37 = *(&v313 + 1);
        MEMORY[0x21CEA23B0](v313, *(&v313 + 1));

        sub_217284498(v326);
        ++v29;
        v34 += 64;
        if (v47)
        {
          goto LABEL_181;
        }
      }
    }

    v332 = v29;
    sub_2171F06D8(&v327, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_2_4();
    *&v327 = 0xD000000000000010;
    *(&v327 + 1) = v287;
    v326[0] = v333;
    OUTLINED_FUNCTION_2_118();
    v324 = v289;
    v325 = v288;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v298 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v15, v34);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v327, *(&v327 + 1));

    v290 = &qword_27CB25398;
    v291 = &unk_21776C4F0;
    v292 = &v334;
  }

  else
  {
    v290 = &qword_27CB25310;
    v291 = &unk_21775D3D0;
    v292 = &v327;
  }

  sub_2171F06D8(v292, v290, v291);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v342;
}

void Song.albumIdentifierSet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE82A8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02548;

  sub_2176CB598(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Song.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9838 != -1)
  {
    OUTLINED_FUNCTION_125();
  }

  v26 = qword_280C028E8;

  sub_2176CA5AC(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Song.genreNames.getter()
{
  if (qword_280BE9948 != -1)
  {
    OUTLINED_FUNCTION_124();
  }

  result = sub_2172A41D4(qword_280C02980);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void Song.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9780 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02860;

  sub_2176CA960(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void Song.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9800 != -1)
  {
    swift_once();
  }

  v26 = qword_280C028C0;

  sub_2176CAA38(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217725CB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_71_21();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

uint64_t Song.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2173626DC();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2173626DC();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2173626DC();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

void Song.lyrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE8260 != -1)
  {
    OUTLINED_FUNCTION_24_4();
  }

  v26 = qword_280C02510;

  sub_2176CA5A0(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2177261F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A41AC();
}

uint64_t sub_21772629C(uint64_t *a1)
{
  OUTLINED_FUNCTION_34_10(a1);
  if (!v3)
  {
    swift_once();
  }

  return v1(*v2);
}

void Song._spatialTimingInformation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE8288 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02530;

  sub_2176CAA44(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21772648C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_71_21();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

uint64_t sub_217726554(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_71_21();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

void Song.catalogAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE98C8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02938;

  sub_2176CA86C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217726764(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    OUTLINED_FUNCTION_71_21();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

void Song.localFileAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9818 != -1)
  {
    swift_once();
  }

  v28 = qword_280C028D0;

  sub_2176CA974(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_2177268C0(uint64_t *a1)
{
  OUTLINED_FUNCTION_34_10(a1);
  if (!v3)
  {
    swift_once();
  }

  return v1(*v2);
}

uint64_t Song.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

void sub_217726B30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  sub_2176CA860(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Song.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Song.hashValue.getter()
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

uint64_t sub_217726DD8@<X0>(uint64_t *a1@<X8>)
{
  result = Song.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217726E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB48, &qword_21779F5F8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02840 = result;
  return result;
}

uint64_t sub_217726E74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E6D75626C61, 0xE900000000000065, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02998 = result;
  return result;
}

uint64_t sub_217726EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v0 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02990 = result;
  return result;
}

uint64_t sub_217726F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7475626972747461, 0xEB000000006E6F69, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02968 = result;
  return result;
}

uint64_t sub_217726FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC30, &qword_21779F710);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x676F6C617461635FLL, 0xED00007465737341, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02938 = result;
  return result;
}

uint64_t sub_217727058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_62_25();
  result = OUTLINED_FUNCTION_26(v0, 0xEC000000656D614ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02928 = result;
  return result;
}

uint64_t sub_2177270C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC40, &unk_21779F720);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02910 = result;
  return result;
}

uint64_t sub_217727148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x626D754E63736964, 0xEA00000000007265, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02988 = result;
  return result;
}

uint64_t sub_2177271C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE8, &qword_21779F6C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  v0 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02838 = result;
  return result;
}

uint64_t sub_217727230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBD8, &qword_21779F6B0);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_44_29();
  result = sub_21722FB54(v0, v1, v2, 0xE700000000000000, v3);
  qword_280C02898 = result;
  return result;
}

uint64_t sub_2177272A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBD0, &qword_21779F6A8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028E8 = result;
  return result;
}

uint64_t sub_217727318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBC8, &qword_21779F6A0);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_21722FB54(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C02868 = result;
  return result;
}

uint64_t sub_217727390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBC0, &unk_21779F690);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02980 = result;
  return result;
}

uint64_t sub_217727408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x636972794C736168, 0xE900000000000073, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02828 = result;
  return result;
}

uint64_t sub_217727480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC20, &qword_21779F700);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028A8 = result;
  return result;
}

uint64_t sub_2177274F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1668445033, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02850 = result;
  return result;
}

uint64_t sub_217727560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF8, &qword_21779F6D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x69466C61636F6C5FLL, 0xEF7465737341656CLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C028D0 = result;
  return result;
}

uint64_t sub_2177275E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB48, &qword_21779F5F8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C028B0 = result;
  return result;
}

uint64_t sub_217727660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v0, 0xED0000746E756F43, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02908 = result;
  return result;
}

uint64_t sub_2177276D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v0, 0xEC000000656D614ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02920 = result;
  return result;
}

uint64_t sub_217727744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_33_49();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007265626D754ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028C8 = result;
  return result;
}

uint64_t sub_2177277B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBA8, &qword_21779F678);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C028C0 = result;
  return result;
}

uint64_t sub_217727830()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBA0, &qword_21779F670);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7377656976657270, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02900 = result;
  return result;
}

uint64_t sub_2177278A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02950 = result;
  return result;
}

uint64_t sub_217727920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02940 = result;
  return result;
}

uint64_t sub_21772799C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02848 = result;
  return result;
}

uint64_t sub_217727A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D754E6B63617274, 0xEB00000000726562, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02948 = result;
  return result;
}

uint64_t sub_217727A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB98, &unk_21779F660);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02858 = result;
  return result;
}

uint64_t sub_217727AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB8, &qword_21779F688);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D614E6B726F77, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02830 = result;
  return result;
}

uint64_t sub_217727B64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEE00657461446465, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028F0 = result;
  return result;
}

uint64_t sub_217727BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC18, &qword_21779F6F8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEF73757461745365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028B8 = result;
  return result;
}

uint64_t sub_217727C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C028E0 = result;
  return result;
}

uint64_t sub_217727CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02880 = result;
  return result;
}

uint64_t sub_217727D40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC10, &qword_21779F6F0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02878 = result;
  return result;
}

uint64_t sub_217727DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC08, &qword_21779F6E8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02870 = result;
  return result;
}

uint64_t sub_217727E28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC00, &qword_21779F6E0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02860 = result;
  return result;
}

uint64_t sub_217727E9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02890 = result;
  return result;
}

uint64_t sub_217727F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC28, &qword_21779F708);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x745364756F6C635FLL, 0xEC00000073757461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02958 = result;
  return result;
}

uint64_t sub_217727F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE8, &qword_21779F6C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746152726573755FLL, 0xEB00000000676E69, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02970 = result;
  return result;
}

uint64_t sub_217728008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v0 = OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_26_49(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, 1, 0, v8, v9, v10);
  qword_280C02918 = result;
  return result;
}

uint64_t sub_2177280B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v0 = OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_26_49(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v1, v2, v3, v4, v5, v6, 1, 0, v8, v9, v10);
  qword_280C028F8 = result;
  return result;
}

uint64_t sub_21772815C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, &unk_217775A50);
  v0 = OUTLINED_FUNCTION_31_11();
  OUTLINED_FUNCTION_26_49(v0);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_6();
  result = sub_2173C381C(v1, v2, v3, v4, 0xD000000000000013, v5, 1, 0, v7, v8, v9);
  qword_280C02500 = result;
  return result;
}

uint64_t sub_2177281F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC38, &qword_21779F718);
  OUTLINED_FUNCTION_60();
  result = sub_21769A070(0x736D75626C61, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE9740 = result;
  return result;
}

uint64_t sub_217728278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB88, &qword_21779F648);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A074(v0, v1, v2);
  qword_280BE9718 = result;
  return result;
}

uint64_t sub_2177282F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB80, &unk_21779F638);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A078(v0, v1, v2, v3);
  qword_280C02930 = result;
  return result;
}

uint64_t sub_217728354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB90, &unk_21779F650);
  OUTLINED_FUNCTION_60();
  result = sub_21769A06C(0x7365726E6567, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE9728 = result;
  return result;
}

uint64_t sub_2177283D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB70, &qword_21779F628);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A080();
  qword_280BE96F0 = result;
  return result;
}

uint64_t sub_21772845C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB88, &qword_21779F648);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_62_25();
  result = sub_21769A074(v0, 0xE900000000000073, 0);
  qword_280BE96B8 = result;
  return result;
}

uint64_t sub_2177284DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB80, &unk_21779F638);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_54_28();
  result = sub_21769A078(v0, v1, v2, v3);
  qword_280BE9700 = result;
  return result;
}

uint64_t sub_217728560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB78, &qword_21779F630);
  OUTLINED_FUNCTION_60();
  result = sub_21769A07C(0x69762D636973756DLL, 0xEC000000736F6564, 0, &unk_282959AF8);
  qword_280BE9908 = result;
  return result;
}

uint64_t sub_217728644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C348, &qword_217791BE0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697BF0(a2, a3, 0, 0xD000000000000013, 0x80000002177B4C90, &unk_282959AD0);
  *a4 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.audioVariants.getter()
{
  return sub_2177286EC(&qword_280BE9880);
}

{
  return sub_2177286EC(&qword_280BE9600);
}

uint64_t sub_2177286EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = *v1;
}

uint64_t sub_217728730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000014, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02888 = result;
  return result;
}

uint64_t sub_2177287A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C028D8 = result;
  return result;
}

uint64_t sub_217728824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBF0, &unk_21779F6C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C028A0 = result;
  return result;
}

uint64_t sub_217728898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBE0, &qword_21779F6B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F4379616C705FLL, 0xEA0000000000746ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02820 = result;
  return result;
}

uint64_t sub_217728910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB60, &qword_21779F618);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x6972616C75706F70, 0xEA00000000007974);
  qword_280C02978 = result;
  return result;
}

uint64_t sub_21772896C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C360, &qword_217791BF8);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697C34(0xD000000000000011, 0x80000002177B4B20, 0, 0xD000000000000017, 0x80000002177B4CE0, &unk_282959AF8);
  qword_280C02560 = result;
  return result;
}

uint64_t sub_2177289F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C340, &qword_21779F5F0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697AE0(0x4C6D6F747375635FLL, 0xED00007363697279, 0, 0x676E69727453, 0xE600000000000000, &unk_28295A918);
  qword_280C02558 = result;
  return result;
}

uint64_t sub_217728A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  v0 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02550 = result;
  return result;
}

uint64_t sub_217728AE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02538 = result;
  return result;
}

uint64_t sub_217728B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C378, &unk_217791C10);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697BAC(0x73636972796C5FLL, 0xE700000000000000, 0, 0x72794C636973754DLL, 0xEB00000000736369, &unk_28295A918);
  qword_280C02510 = result;
  return result;
}

uint64_t sub_217728BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DBB0, &qword_21779F680);
  OUTLINED_FUNCTION_31_11();
  result = sub_21722FB54(0x73726566666FLL, 0xE600000000000000, 0xD000000000000011, 0x80000002177B68C0, &unk_282959AF8);
  qword_280C02508 = result;
  return result;
}

uint64_t sub_217728C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C350, &qword_217791BE8);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697B24(0xD000000000000018, 0x80000002177B4B60, 0, 1819242306, 0xE400000000000000, &unk_282959AF8);
  qword_280C02528 = result;
  return result;
}

uint64_t sub_217728CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB68, &qword_21779F620);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x702D6C6169636F73, 0xEF73656C69666F72);
  qword_280C02518 = result;
  return result;
}

uint64_t sub_217728D28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02540 = result;
  return result;
}

uint64_t sub_217728D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656E6E695073695FLL, 0xE900000000000064, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C024F8 = result;
  return result;
}

uint64_t sub_217728E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB90, &unk_21779F650);
  OUTLINED_FUNCTION_60();
  result = sub_21769A06C(0x726E65672D776172, 0xEA00000000007365, 0, &unk_282959AF8);
  qword_280C02568 = result;
  return result;
}

uint64_t sub_217728E7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C358, &qword_217791BF0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697B68(0x4F6C616974617073, 0xEE00737465736666, 0, 0xD00000000000002DLL, 0x80000002177B4CB0, &unk_282959AF8);
  qword_280C02530 = result;
  return result;
}

uint64_t sub_217728F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB50, &unk_21779F600);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000019, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02520 = result;
  return result;
}

uint64_t sub_217728F78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DB58, &qword_21779F610);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02548 = result;
  return result;
}

uint64_t static Song.catalogFilterID(for:)@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = OUTLINED_FUNCTION_59_22();

  if (v2)
  {
    v3 = 0xE200000000000000;
    v4 = 25705;
LABEL_5:
    *a1 = v4;
    a1[1] = v3;
    return sub_217751DE8();
  }

  swift_getKeyPath();
  v5 = OUTLINED_FUNCTION_59_22();

  if (v5)
  {
    v3 = 0xE400000000000000;
    v4 = 1668445033;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217729168@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2177291C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t Song.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE688();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Song.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE9750 != -1)
  {
    OUTLINED_FUNCTION_18_2();
  }

  v2 = sub_2172A41AC();
  v4 = OUTLINED_FUNCTION_41_35(v2, v3);
  if (!v6)
  {
    v1 = v5;
  }

  MEMORY[0x21CEA23B0](v4, v1);

  v7 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v7);
  if (qword_280BE9958 != -1)
  {
    OUTLINED_FUNCTION_17_18();
  }

  v8 = sub_2172A41AC();
  v10 = OUTLINED_FUNCTION_41_35(v8, v9);
  if (v6)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = v11;
  }

  MEMORY[0x21CEA23B0](v10, v12);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0x3A646928676E6F53;
}

uint64_t static Song.typeValue.getter()
{
  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BEB238);

  return sub_217751DE8();
}

uint64_t sub_2177294F8()
{
  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11();
  }

  xmmword_280BEB140 = xmmword_280BEB238;
  qword_280BEB150 = qword_280BEB248;
  unk_280BEB158 = unk_280BEB250;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.song.getter()
{
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BEB140);

  return sub_217751DE8();
}

unint64_t sub_2177295CC()
{
  result = qword_27CB2DB40;
  if (!qword_27CB2DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DB40);
  }

  return result;
}

void OUTLINED_FUNCTION_15_70()
{
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_26_49(uint64_t result)
{
  *(result + 104) = 0;
  *(result + 112) = 1;
  return result;
}

void OUTLINED_FUNCTION_70_21()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_71_21()
{

  return swift_once();
}

uint64_t get_enum_tag_for_layout_string_8MusicKit07CodableA9CatalogIDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217729958(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_217729998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217729A48()
{
  result = qword_27CB2DC48;
  if (!qword_27CB2DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC48);
  }

  return result;
}

uint64_t sub_217729A9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC68, &qword_21779F978);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  v15 = &v72 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21772D294();
  sub_2177532C8();
  if (v2)
  {
    v168 = v2;
    LOBYTE(v15) = 0;
    v19 = 0;
    v10 = 0;
    v3 = 0;
    v20 = 0;
    LODWORD(v107) = 0;
    LODWORD(v108) = 0;
    OUTLINED_FUNCTION_5_115();
  }

  else
  {
    v18 = a2;
    LOBYTE(v117[0]) = 0;
    v19 = sub_2172E1C68();
    OUTLINED_FUNCTION_0_168();
    sub_217752EA8();
    v23 = v118;
    v105 = v119;
    LOBYTE(v117[0]) = 1;
    sub_21772D44C();
    OUTLINED_FUNCTION_6_114();
    sub_217752E58();
    OUTLINED_FUNCTION_24_55();
    v101 = v25;
    v102 = v24;
    OUTLINED_FUNCTION_29_49();
    v103 = v27;
    v104 = v26;
    LOBYTE(v117[0]) = 2;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    OUTLINED_FUNCTION_28_56();
    v100 = v28;
    LOBYTE(v117[0]) = 3;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v116 = 0;
    OUTLINED_FUNCTION_28_56();
    v99 = v29;
    LOBYTE(v117[0]) = 4;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v115 = 0;
    OUTLINED_FUNCTION_28_56();
    v98 = v30;
    LOBYTE(v117[0]) = 5;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v114 = v118;
    v97 = v119;
    LOBYTE(v117[0]) = 6;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v111 = v118;
    v112 = 0;
    v96 = v119;
    LOBYTE(v117[0]) = 7;
    OUTLINED_FUNCTION_0_168();
    sub_217752E58();
    v110 = v118;
    v95 = v119;
    LOBYTE(v117[0]) = 8;
    sub_21772D4A0();
    OUTLINED_FUNCTION_6_114();
    v113 = v31;
    v20 = v15;
    sub_217752E58();
    v168 = 0;
    OUTLINED_FUNCTION_24_55();
    v91 = v33;
    v92 = v32;
    OUTLINED_FUNCTION_29_49();
    v93 = v35;
    v94 = v34;
    LOBYTE(v117[0]) = 9;
    OUTLINED_FUNCTION_0_168();
    v36 = v168;
    sub_217752E58();
    v168 = v36;
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_7_96();
      v38(v37);
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v17) = 0;
      OUTLINED_FUNCTION_1_149();
      LODWORD(v108) = v39;
      LODWORD(v109) = v39;
      LODWORD(v110) = v39;
    }

    else
    {
      OUTLINED_FUNCTION_28_56();
      v90 = v40;
      LOBYTE(v117[0]) = 10;
      OUTLINED_FUNCTION_6_114();
      OUTLINED_FUNCTION_16_75();
      sub_217752E58();
      v168 = 0;
      OUTLINED_FUNCTION_24_55();
      v86 = v42;
      v87 = v41;
      OUTLINED_FUNCTION_29_49();
      v88 = v44;
      v89 = v43;
      LOBYTE(v117[0]) = 11;
      OUTLINED_FUNCTION_0_168();
      v45 = v168;
      sub_217752E58();
      v168 = v45;
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_7_96();
        v47(v46);
        LODWORD(v116) = 0;
        LODWORD(v17) = 0;
        OUTLINED_FUNCTION_1_149();
        OUTLINED_FUNCTION_10_80(v48);
      }

      else
      {
        v109 = v118;
        v85 = v119;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
        LOBYTE(v117[0]) = 12;
        sub_21772D4F4(&qword_280BE84A8, sub_2172E1C68);
        OUTLINED_FUNCTION_16_75();
        sub_217752E58();
        v168 = 0;
        v84 = v118;
        LOBYTE(v117[0]) = 13;
        OUTLINED_FUNCTION_0_168();
        v49 = v168;
        sub_217752E58();
        v168 = v49;
        if (!v49)
        {
          v108 = v118;
          v83 = v119;
          LOBYTE(v118) = 14;
          OUTLINED_FUNCTION_16_75();
          LODWORD(v107) = sub_217752E78();
          v168 = 0;
          LOBYTE(v117[0]) = 15;
          LOBYTE(v19) = sub_21759C8F8();
          OUTLINED_FUNCTION_0_168();
          v54 = v168;
          sub_217752EA8();
          LODWORD(v113) = v54 == 0;
          v168 = v54;
          if (!v54)
          {
            OUTLINED_FUNCTION_24_55();
            v75 = v55;
            v76 = v56;
            v74 = v120;
            v82 = v121;
            LOBYTE(v117[0]) = 16;
            OUTLINED_FUNCTION_0_168();
            v57 = v168;
            sub_217752E58();
            v168 = v57;
            if (!v57)
            {
              OUTLINED_FUNCTION_24_55();
              v80 = v61;
              v81 = v62;
              OUTLINED_FUNCTION_29_49();
              v78 = v63;
              v79 = v64;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC60, &qword_21779F970);
              LOBYTE(v117[0]) = 17;
              sub_21772D390(&qword_280BE7580, sub_21772D55C);
              OUTLINED_FUNCTION_16_75();
              sub_217752EA8();
              v168 = 0;
              v77 = v118;
              v164 = 18;
              sub_2176A0A9C();
              OUTLINED_FUNCTION_16_75();
              sub_217752E58();
              v168 = 0;
              LODWORD(v113) = v107 & 1;
              v65 = OUTLINED_FUNCTION_7_96();
              v66(v65);
              *(&v117[33] + 1) = v167[0];
              HIDWORD(v117[33]) = *(v167 + 3);
              v107 = v165;
              v73 = v166;
              v117[0] = v23;
              v117[1] = v105;
              v117[2] = v101;
              v117[3] = v102;
              v117[4] = v103;
              v117[5] = v104;
              v117[6] = v116;
              v117[7] = v100;
              v117[8] = v115;
              v117[9] = v99;
              v117[10] = v112;
              v117[11] = v98;
              v117[12] = v114;
              v117[13] = v97;
              v117[14] = v111;
              v117[15] = v96;
              v117[16] = v110;
              v117[17] = v95;
              v117[18] = v91;
              v117[19] = v92;
              v117[20] = v93;
              v117[21] = v94;
              v117[22] = 0;
              v67 = v89;
              v117[23] = v90;
              v68 = v87;
              v117[24] = v86;
              v117[25] = v87;
              v69 = v88;
              v117[26] = v88;
              v117[27] = v89;
              v117[28] = v109;
              v71 = v84;
              v70 = v85;
              v117[29] = v85;
              v117[30] = v84;
              v117[31] = v108;
              v117[32] = v83;
              LOBYTE(v117[33]) = v113;
              v117[34] = v76;
              v117[35] = v75;
              v117[36] = v74;
              v117[37] = v82;
              v117[38] = v81;
              v117[39] = v80;
              v117[40] = v79;
              v117[41] = v78;
              v117[42] = v77;
              v117[43] = v165;
              v117[44] = v166;
              memcpy(v18, v117, 0x168uLL);
              sub_21772D5B0(v117, &v118);
              __swift_destroy_boxed_opaque_existential_1(v106);
              v118 = v23;
              v119 = v105;
              v120 = v101;
              v121 = v102;
              v122 = v103;
              v123 = v104;
              v124 = v116;
              v125 = v100;
              v126 = v115;
              v127 = v99;
              v128 = v112;
              v129 = v98;
              v130 = v114;
              v131 = v97;
              v132 = v111;
              v133 = v96;
              v134 = v110;
              v135 = v95;
              v136 = v91;
              v137 = v92;
              v138 = v93;
              v139 = v94;
              v140 = 0;
              v141 = v90;
              v142 = v86;
              v143 = v68;
              v144 = v69;
              v145 = v67;
              v146 = v109;
              v147 = v70;
              v148 = v71;
              v149 = v108;
              v150 = v83;
              v151 = v113;
              *v152 = v167[0];
              *&v152[3] = *(v167 + 3);
              v153 = v76;
              v154 = v75;
              v155 = v74;
              v156 = v82;
              v157 = v81;
              v158 = v80;
              v159 = v79;
              v160 = v78;
              v161 = v77;
              v162 = v107;
              v163 = v73;
              return sub_217503D9C(&v118);
            }
          }

          v58 = OUTLINED_FUNCTION_7_96();
          v59(v58);
          LODWORD(v111) = 0;
          LODWORD(v112) = 0;
          __swift_destroy_boxed_opaque_existential_1(v106);
          OUTLINED_FUNCTION_2_144();
          OUTLINED_FUNCTION_13_77(v60);
          LODWORD(v17) = 1;
          v22 = 1;
LABEL_6:

          if (v19)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

        v50 = OUTLINED_FUNCTION_7_96();
        v51(v50);
        OUTLINED_FUNCTION_1_149();
        OUTLINED_FUNCTION_10_80(v52);
        LODWORD(v116) = v53;
        LODWORD(v17) = 1;
      }
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v106);
  if (v15)
  {
    LODWORD(v113) = 0;
    LODWORD(v111) = 0;
    LODWORD(v112) = 0;
    v22 = v4;
    goto LABEL_6;
  }

  LODWORD(v112) = 0;
  LODWORD(v111) = 0;
  LODWORD(v113) = 0;
  v22 = v4;
  if (v19)
  {
LABEL_7:
    result = sub_2172B8404(v101, v102);
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v10)
  {
LABEL_8:
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (v3)
  {
LABEL_9:

    if ((v20 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v20)
  {
LABEL_10:
    if (v107)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (v107)
  {
LABEL_11:

    if ((v108 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v108)
  {
LABEL_12:
    if (v109)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:

  if (v109)
  {
LABEL_13:

    if ((v110 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v110)
  {
LABEL_14:
    if (v114)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_2172B8404(v91, v92);
  if (v114)
  {
LABEL_15:

    if ((v115 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v115)
  {
LABEL_16:
    if (v116)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = sub_2172B8404(v86, v87);
  if (v116)
  {
LABEL_17:

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v17)
  {
LABEL_18:
    if (v22)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v22)
  {
LABEL_19:

    if ((v113 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v113)
  {
LABEL_20:
    if (v111)
    {
      goto LABEL_21;
    }

LABEL_38:
    if (!v112)
    {
      return result;
    }
  }

LABEL_37:

  if ((v111 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_21:
  result = sub_2172AC65C(v81);
  if ((v112 & 1) == 0)
  {
    return result;
  }
}

double sub_21772A7F4@<D0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v91, __src, 0x168uLL);
  v83 = *(&v91[1] + 1);
  if (*(&v91[1] + 1))
  {
    v3 = v91[2];
    v82 = *&v91[1];
    sub_217751DE8();
    sub_217751DE8();
    sub_217713E24(v3, *(&v3 + 1), &v90);
    v81 = v90;
  }

  else
  {
    v82 = 0;
    v81 = 0;
  }

  v4 = *(&v91[10] + 1);
  v5 = *&v91[10];
  v6 = *(&v91[12] + 1);
  v7 = *&v91[12];
  v8 = *&v91[13];
  v9 = *&v91[22];
  v85 = *(&v91[9] + 1);
  v89 = *&v91[9];
  v78 = *(&v91[13] + 1);
  if (*&v91[22])
  {
    v10 = *(&v91[21] + 1);
    OUTLINED_FUNCTION_23_33();
    sub_2172A5428(v11, v12);
    OUTLINED_FUNCTION_31_47();
    sub_217751DE8();
    sub_21758AC1C(v10, v9, &v90);
    v14 = v90;
  }

  else
  {
    OUTLINED_FUNCTION_23_33();
    sub_2172A5428(v15, v16);
    OUTLINED_FUNCTION_31_47();
    v14 = 4;
  }

  v80 = v14;
  v86 = v8;
  v84 = v6;
  v17 = *&v91[21];
  v18 = *(*&v91[21] + 16);
  if (v18)
  {
    v74 = v4;
    v76 = v5;
    v19 = (sub_217751DE8() + 40);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_217751DE8();
      v23 = sub_2175DA0F4(v21, v22, &v90);
      v24 = v90;
      MEMORY[0x28223BE20](v23, v25);
      if (sub_2173DDA80())
      {
        sub_21726B8A0(v24, *(&v24 + 1));
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_26_50();
          v20 = v27;
        }

        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          sub_2172B1F4C();
          v20 = v28;
        }

        *(v20 + 16) = v26 + 1;
        *(v20 + 16 * v26 + 32) = v24;
      }

      v19 += 2;
      --v18;
    }

    while (v18);

    v4 = v74;
    v5 = v76;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v90 = xmmword_21779F730;
  MEMORY[0x28223BE20](v17, v13);
  if (!sub_2173DDA80())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_26_50();
      v20 = v48;
    }

    v29 = *(v20 + 16);
    if (v29 >= *(v20 + 24) >> 1)
    {
      sub_2172B1F4C();
      v20 = v49;
    }

    *(v20 + 16) = v29 + 1;
    *(v20 + 16 * v29 + 32) = xmmword_21779F730;
  }

  v30 = v78;
  v31 = MEMORY[0x277D84FA0];
  if (!v84)
  {
    v30 = 0;
  }

  v79 = v30;
  if (v84)
  {
    v32 = v86;
  }

  else
  {
    v32 = 0;
  }

  if (v84)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  v75 = v33;
  v77 = v32;
  v55 = *(&v91[0] + 1);
  if (v85)
  {
    v34 = v4;
  }

  else
  {
    v34 = 0;
  }

  if (v85)
  {
    v35 = v5;
  }

  else
  {
    v35 = 0;
  }

  v72 = v35;
  v73 = v34;
  v36 = v89;
  if (!v85)
  {
    v36 = 0;
  }

  v71 = v36;
  if (*&v91[15])
  {
    v31 = *&v91[15];
  }

  v69 = *&v91[0];
  v70 = v31;
  v65 = *&v91[4];
  v66 = *&v91[3];
  v59 = *(&v91[4] + 1);
  v60 = *(&v91[3] + 1);
  v58 = *(&v91[5] + 1);
  v63 = *&v91[6];
  v64 = *&v91[5];
  v56 = *(&v91[6] + 1);
  v62 = *&v91[8];
  v37 = v91[7];
  v50 = *(&v91[8] + 1);
  v38 = v91[11];
  v67 = *(&v91[15] + 1);
  v68 = BYTE8(v91[16]);
  v39 = v91[18];
  v61 = *&v91[16];
  v53 = *(&v91[19] + 1);
  v54 = *&v91[19];
  v87 = *&v91[14];
  v51 = *(&v91[20] + 1);
  v52 = *&v91[20];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v40 = sub_217751DE8();
  *&v41 = v87;
  *(&v41 + 1) = v40;
  v88 = v41;
  v57 = v91[17];
  sub_2172AC64C(v54);

  v42 = OUTLINED_FUNCTION_4_4();
  sub_2172B8404(v42, v43);
  v44 = OUTLINED_FUNCTION_4_4();
  sub_2172B8404(v44, v45);
  sub_217503D9C(v91);
  v46 = OUTLINED_FUNCTION_4_4();
  sub_2172AC65C(v46);
  *a2 = v69;
  *(a2 + 8) = v55;
  *(a2 + 16) = v82;
  *(a2 + 24) = v83;
  *(a2 + 32) = v81;
  *(a2 + 40) = v66;
  *(a2 + 48) = v60;
  *(a2 + 56) = v65;
  *(a2 + 64) = v59;
  *(a2 + 72) = v64;
  *(a2 + 80) = v58;
  *(a2 + 88) = v63;
  *(a2 + 96) = v56;
  *(a2 + 104) = v37;
  *(a2 + 120) = v62;
  *(a2 + 128) = v50;
  *(a2 + 136) = v71;
  *(a2 + 144) = v85;
  *(a2 + 152) = v72;
  *(a2 + 160) = v73;
  *(a2 + 168) = v75;
  *(a2 + 176) = v84;
  *(a2 + 184) = v77;
  *(a2 + 192) = v79;
  *(a2 + 216) = v88;
  *(a2 + 200) = v38;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = v67;
  *(a2 + 256) = v61;
  *(a2 + 264) = v70;
  *(a2 + 272) = v68;
  *(a2 + 280) = v20;
  result = *&v57;
  *(a2 + 288) = v57;
  *(a2 + 304) = v39;
  *(a2 + 320) = v54;
  *(a2 + 328) = v53;
  *(a2 + 336) = v52;
  *(a2 + 344) = v51;
  *(a2 + 352) = v80;
  return result;
}

void sub_21772AD94(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v44 = *v1;
  v4 = v1[5];
  v69 = *(v1 + 4);
  v70 = *(v1 + 3);
  v67 = *(v1 + 6);
  v68 = *(v1 + 5);
  v66 = *(v1 + 7);
  v65 = v1[16];
  v56 = v1[17];
  v64 = v1[18];
  v54 = v1[20];
  v55 = v1[19];
  v5 = v1[22];
  v52 = v1[23];
  v53 = v1[21];
  v51 = v1[24];
  v46 = v1[25];
  v57 = v1[26];
  v50 = v1[27];
  v63 = v1[28];
  v6 = v1[31];
  v7 = v1[32];
  v8 = v1[33];
  v49 = *(v1 + 272);
  v9 = v1[35];
  v48 = *(v1 + 18);
  v47 = v1[38];
  v61 = v1[40];
  v62 = v1[39];
  v10 = v1[42];
  v59 = v10;
  v60 = v1[41];
  v58 = v1[43];
  v39 = *(v1 + 352);
  if (v1[3])
  {
    v71 = v1[2];
    v73 = *(v1 + 32);
    v11 = sub_217713B68();
    v40 = v12;
    v41 = v11;
    v42 = v14;
    v43 = v13;
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  if (*(v8 + 16))
  {
    sub_217751DE8();
  }

  else
  {
    v8 = 0;
  }

  v45 = v8;
  v15 = sub_2173C2FA0(0, *(v9 + 16), v9);
  if (v15)
  {
    v16 = v15;
    v35 = v4;
    v36 = v6;
    v37 = v7;
    v38 = v5;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A5428(v56, v64);
    sub_217751DE8();
    sub_2172A5428(v53, v5);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172AC64C(v61);
    v72 = MEMORY[0x277D84F90];
    sub_217276EF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = v72;
      v19 = (v9 + 40);
      while (v17 < *(v9 + 16))
      {
        v20 = 0xE700000000000000;
        v21 = 0x676F6C61746163;
        switch(*v19)
        {
          case 0uLL:
            break;
          case 1uLL:
            v22 = 0x4C64756F6C63;
            goto LABEL_19;
          case 2uLL:
            v21 = 0x656C6261646F63;
            break;
          case 3uLL:
            v21 = 0x616C5065726F7473;
            v20 = 0xED00006D726F6674;
            break;
          case 4uLL:
            v21 = 0xD000000000000010;
            v20 = 0x80000002177B2610;
            break;
          case 5uLL:
            v21 = 0x6F4D79636167656CLL;
            v20 = 0xEB000000006C6564;
            break;
          case 6uLL:
            v22 = 0x4C6C61636F6CLL;
LABEL_19:
            v21 = v22 & 0xFFFFFFFFFFFFLL | 0x6269000000000000;
            v20 = 0xEC00000079726172;
            break;
          case 7uLL:
            v21 = 0xD000000000000012;
            v20 = 0x80000002177B25F0;
            break;
          case 8uLL:
            v21 = 0xD000000000000013;
            v20 = 0x80000002177B25D0;
            break;
          default:
            v21 = *(v19 - 1);
            v20 = *v19;
            break;
        }

        sub_21726B87C(*(v19 - 1), *v19);
        v23 = *(v72 + 16);
        if (v23 >= *(v72 + 24) >> 1)
        {
          sub_217276EF4();
        }

        ++v17;
        *(v72 + 16) = v23 + 1;
        v24 = v72 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v20;
        v19 += 2;
        if (v16 == v17)
        {
          v7 = v37;
          v5 = v38;
          v4 = v35;
          v6 = v36;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A5428(v56, v64);
    sub_217751DE8();
    sub_2172A5428(v53, v5);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172AC64C(v61);
    v18 = MEMORY[0x277D84F90];
LABEL_27:
    v25 = 0xE900000000000044;
    v26 = 0x49676F6C61746163;
    v27 = 0;
    v28 = 0;
    switch(v39)
    {
      case 1:
        v25 = 0xED000044496C6163;
        v26 = 0x6F4C656369766564;
        goto LABEL_31;
      case 2:
        v26 = 0x497972617262696CLL;
        goto LABEL_31;
      case 3:
        v25 = 0xEC00000044496563;
        v26 = 0x6E6572727563636FLL;
        goto LABEL_31;
      case 4:
        goto LABEL_32;
      default:
LABEL_31:
        v27 = v26;
        v28 = v25;
LABEL_32:
        *a1 = v44;
        *(a1 + 8) = v3;
        *(a1 + 16) = v41;
        *(a1 + 24) = v40;
        v29 = v51;
        v30 = v52;
        if (!v5)
        {
          v29 = 0;
          v30 = 0;
        }

        v31 = v53;
        v32 = v54;
        if (!v5)
        {
          v31 = 0;
        }

        if (!v64)
        {
          v32 = 0;
        }

        v33 = v55;
        v34 = v56;
        if (!v64)
        {
          v33 = 0;
          v34 = 0;
        }

        *(a1 + 32) = v43;
        *(a1 + 40) = v42;
        *(a1 + 48) = v4;
        *(a1 + 56) = v70;
        *(a1 + 72) = v69;
        *(a1 + 88) = v68;
        *(a1 + 104) = v67;
        *(a1 + 120) = v66;
        *(a1 + 136) = v65;
        *(a1 + 144) = v34;
        *(a1 + 152) = v64;
        *(a1 + 160) = v33;
        *(a1 + 168) = v32;
        *(a1 + 176) = v46;
        *(a1 + 184) = v57;
        *(a1 + 192) = v31;
        *(a1 + 200) = v5;
        *(a1 + 208) = v30;
        *(a1 + 216) = v29;
        *(a1 + 224) = v50;
        *(a1 + 232) = v63;
        *(a1 + 240) = v45;
        *(a1 + 248) = v6;
        *(a1 + 256) = v7;
        *(a1 + 264) = v49;
        *(a1 + 272) = v48;
        *(a1 + 288) = v47;
        *(a1 + 296) = v62;
        *(a1 + 304) = v61;
        *(a1 + 312) = v60;
        *(a1 + 320) = v59;
        *(a1 + 328) = v58;
        *(a1 + 336) = v18;
        *(a1 + 344) = v27;
        *(a1 + 352) = v28;
        break;
    }
  }
}

uint64_t sub_21772B3EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC58, &unk_21779F960);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v37 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 1);
  v66 = *(v1 + 2);
  v67 = v15;
  v16 = v1[6];
  v64 = v1[7];
  v65 = v16;
  v17 = v1[9];
  *&v63 = v1[8];
  *(&v63 + 1) = v17;
  v18 = v1[11];
  *&v62 = v1[10];
  *(&v62 + 1) = v18;
  v19 = v1[13];
  *&v61 = v1[12];
  *(&v61 + 1) = v19;
  v20 = v1[15];
  *&v60 = v1[14];
  *(&v60 + 1) = v20;
  v21 = v1[17];
  v58 = v1[16];
  v59 = v21;
  v22 = *(v1 + 9);
  v56 = *(v1 + 10);
  v57 = v22;
  v23 = v1[23];
  v54 = v1[22];
  v55 = v23;
  v24 = *(v1 + 12);
  v52 = *(v1 + 13);
  v53 = v24;
  v25 = v1[29];
  v50 = v1[28];
  v51 = v25;
  v26 = v1[31];
  v49 = v1[30];
  v47 = v26;
  v48 = v1[32];
  v71 = *(v1 + 264);
  v46 = *(v1 + 17);
  v27 = v1[37];
  *&v45 = v1[36];
  *(&v45 + 1) = v27;
  v28 = v1[39];
  v41 = v1[38];
  v44 = v28;
  v29 = v1[41];
  v43 = v1[40];
  v42 = v29;
  v30 = v1[43];
  v38 = v1[42];
  v39 = v30;
  v40 = v1[44];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772D294();
  sub_217751DE8();
  sub_2177532F8();
  *&v69 = v13;
  *(&v69 + 1) = v14;
  v72 = 0;
  sub_2172E1B18();
  OUTLINED_FUNCTION_15_71();
  v32 = v68;
  sub_217752F88();
  if (v32)
  {

    return (*(v7 + 8))(v12, v2);
  }

  else
  {
    v33 = v64;
    v34 = v65;

    v69 = v67;
    v70 = v66;
    v72 = 1;
    sub_21772D2E8();
    OUTLINED_FUNCTION_15_71();
    sub_217752F38();
    *&v69 = v34;
    *(&v69 + 1) = v33;
    v72 = 2;
    OUTLINED_FUNCTION_9_99();
    v69 = v63;
    v72 = 3;
    OUTLINED_FUNCTION_9_99();
    v69 = v62;
    v72 = 4;
    OUTLINED_FUNCTION_9_99();
    v69 = v61;
    v72 = 5;
    OUTLINED_FUNCTION_9_99();
    v69 = v60;
    v72 = 6;
    OUTLINED_FUNCTION_9_99();
    OUTLINED_FUNCTION_22_64(&v74);
    v72 = 7;
    OUTLINED_FUNCTION_9_99();
    v69 = v57;
    v70 = v56;
    v72 = 8;
    sub_21772D33C();
    OUTLINED_FUNCTION_15_71();
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v73);
    v72 = 9;
    OUTLINED_FUNCTION_9_99();
    v69 = v53;
    v70 = v52;
    v72 = 10;
    OUTLINED_FUNCTION_15_71();
    v68 = v2;
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v70 + 8);
    v72 = 11;
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    *&v69 = v49;
    v72 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C268, &qword_2177905C8);
    sub_21772D4F4(&qword_280BE7530, sub_2172E1B18);
    OUTLINED_FUNCTION_15_71();
    OUTLINED_FUNCTION_8_1();
    sub_217752F38();
    OUTLINED_FUNCTION_22_64(&v69);
    v72 = 13;
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    LOBYTE(v69) = 14;
    OUTLINED_FUNCTION_8_1();
    sub_217752F58();
    v69 = v46;
    v70 = v45;
    v72 = 15;
    sub_21759C94C();
    sub_217751DE8();
    OUTLINED_FUNCTION_12_72();
    sub_217752F88();

    *&v69 = v41;
    *(&v69 + 1) = v44;
    *&v70 = v43;
    *(&v70 + 1) = v42;
    v72 = 16;
    sub_2172AC64C(v41);
    OUTLINED_FUNCTION_12_72();
    sub_217752F38();
    sub_2172AC65C(v69);
    *&v69 = v38;
    v72 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC60, &qword_21779F970);
    sub_21772D390(&qword_280BE7588, sub_21772D3F8);
    OUTLINED_FUNCTION_15_71();
    OUTLINED_FUNCTION_8_1();
    sub_217752F88();
    OUTLINED_FUNCTION_22_64(&v62 + 8);
    v72 = 18;
    sub_2176A0C2C();
    OUTLINED_FUNCTION_15_71();
    v36 = v68;
    OUTLINED_FUNCTION_8_1();
    sub_217752F38();
    return (*(v7 + 8))(v12, v36);
  }
}

uint64_t sub_21772BB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v150 = *(a1 + 48);
  v156 = *(a1 + 56);
  v148 = *(a1 + 64);
  v154 = *(a1 + 72);
  v143 = *(a1 + 80);
  v155 = *(a1 + 88);
  v139 = *(a1 + 96);
  v144 = *(a1 + 104);
  v136 = *(a1 + 112);
  v141 = *(a1 + 120);
  v133 = *(a1 + 128);
  v138 = *(a1 + 136);
  v130 = *(a1 + 144);
  v135 = *(a1 + 152);
  v131 = *(a1 + 160);
  v132 = *(a1 + 168);
  v122 = *(a1 + 176);
  v126 = *(a1 + 184);
  v118 = *(a1 + 192);
  v124 = *(a1 + 200);
  v119 = *(a1 + 208);
  v120 = *(a1 + 216);
  v110 = *(a1 + 224);
  v114 = *(a1 + 232);
  v112 = *(a1 + 240);
  v100 = *(a1 + 248);
  v108 = *(a1 + 256);
  v103 = *(a1 + 264);
  v97 = *(a1 + 296);
  v98 = *(a1 + 288);
  v94 = *(a1 + 312);
  v104 = *(a1 + 320);
  v105 = *(a1 + 328);
  v106 = *(a1 + 304);
  v90 = *(a1 + 336);
  v86 = *(a1 + 344);
  v88 = *(a1 + 352);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v147 = *(a2 + 64);
  v151 = *(a2 + 72);
  v142 = *(a2 + 80);
  v149 = *(a2 + 88);
  v145 = *(a2 + 104);
  v152 = *(a2 + 96);
  v153 = *(a2 + 112);
  v140 = *(a2 + 120);
  v146 = *(a2 + 128);
  v137 = *(a2 + 136);
  v134 = *(a2 + 152);
  v127 = *(a2 + 144);
  v128 = *(a2 + 160);
  v129 = *(a2 + 168);
  v121 = *(a2 + 176);
  v125 = *(a2 + 184);
  v123 = *(a2 + 200);
  v115 = *(a2 + 192);
  v116 = *(a2 + 208);
  v117 = *(a2 + 216);
  v109 = *(a2 + 224);
  v113 = *(a2 + 232);
  v111 = *(a2 + 240);
  v99 = *(a2 + 248);
  v107 = *(a2 + 256);
  v102 = *(a2 + 264);
  v95 = *(a2 + 296);
  v96 = *(a2 + 288);
  v101 = *(a2 + 304);
  v91 = *(a2 + 312);
  v92 = *(a2 + 320);
  v93 = *(a2 + 328);
  v89 = *(a2 + 336);
  v85 = *(a2 + 344);
  v87 = *(a2 + 352);
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (!v7)
  {
LABEL_20:
    v21 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v21, v22);
    v23 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v23, v24);
    v25 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v25, v26);
    v27 = OUTLINED_FUNCTION_14_72();
LABEL_21:
    sub_2172B8404(v27, v28);
    return 0;
  }

  v13 = v2 == v8 && v3 == v7;
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    v39 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v39, v40);
    v41 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v41, v42);

    v27 = OUTLINED_FUNCTION_8_94();
    goto LABEL_21;
  }

  if (v4 == v9 && v5 == v10)
  {
    sub_2172A5428(v8, v7);
    v30 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v30, v31);

    v32 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v32, v33);
  }

  else
  {
    v84 = sub_217753058();
    v15 = OUTLINED_FUNCTION_14_72();
    sub_2172A5428(v15, v16);
    v17 = OUTLINED_FUNCTION_8_94();
    sub_2172A5428(v17, v18);

    v19 = OUTLINED_FUNCTION_8_94();
    sub_2172B8404(v19, v20);
    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  if (v156)
  {
    if (!v12)
    {
      return 0;
    }

    v34 = v150 == v11 && v156 == v12;
    if (!v34 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v154)
  {
    v35 = v155;
    v37 = v152;
    v36 = v153;
    if (!v151)
    {
      return 0;
    }

    v38 = v148 == v147 && v154 == v151;
    if (!v38 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = v155;
    v37 = v152;
    v36 = v153;
    if (v151)
    {
      return 0;
    }
  }

  if (v35)
  {
    if (!v149)
    {
      return 0;
    }

    v43 = v143 == v142 && v35 == v149;
    if (!v43 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  if (v144)
  {
    v44 = v146;
    if (!v145)
    {
      return 0;
    }

    v45 = v139 == v37 && v144 == v145;
    if (!v45 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v44 = v146;
    if (v145)
    {
      return 0;
    }
  }

  if (v141)
  {
    if (!v140)
    {
      return 0;
    }

    v46 = v136 == v36 && v141 == v140;
    if (!v46 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v140)
  {
    return 0;
  }

  if (v138)
  {
    if (!v137)
    {
      return 0;
    }

    v47 = v133 == v44 && v138 == v137;
    if (!v47 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v137)
  {
    return 0;
  }

  if (!v135)
  {
    v48 = v134;
    if (!v134)
    {
      goto LABEL_87;
    }

LABEL_85:
    v157 = v130;
    v158 = v135;
    v159 = v131;
    v160 = v132;
    v53 = v127;
    v161 = v127;
    v162 = v48;
    v163 = v128;
    v54 = v129;
LABEL_86:
    v164 = v54;
    sub_2172A5428(v53, v48);
    v55 = OUTLINED_FUNCTION_18_62();
    sub_2172A5428(v55, v56);
    sub_21772D22C(&v157);
    return 0;
  }

  v48 = v134;
  if (!v134)
  {
    goto LABEL_85;
  }

  sub_2174E42B8(v130, v135, v131, v132, v127, v134, v128, v129);
  OUTLINED_FUNCTION_25_64();
  v49 = OUTLINED_FUNCTION_11_87();
  sub_2172A5428(v49, v50);

  v51 = OUTLINED_FUNCTION_11_87();
  sub_2172B8404(v51, v52);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  if (v126)
  {
    if (!v125)
    {
      return 0;
    }

    v57 = v122 == v121 && v126 == v125;
    if (!v57 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  if (!v124)
  {
    v48 = v123;
    if (!v123)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  v48 = v123;
  if (!v123)
  {
LABEL_101:
    v157 = v118;
    v158 = v124;
    v159 = v119;
    v160 = v120;
    v53 = v115;
    v161 = v115;
    v162 = v48;
    v163 = v116;
    v54 = v117;
    goto LABEL_86;
  }

  sub_2174E42B8(v118, v124, v119, v120, v115, v123, v116, v117);
  OUTLINED_FUNCTION_25_64();
  v58 = OUTLINED_FUNCTION_11_87();
  sub_2172A5428(v58, v59);

  v60 = OUTLINED_FUNCTION_11_87();
  sub_2172B8404(v60, v61);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_102:
  if (v114)
  {
    if (!v113)
    {
      return 0;
    }

    v62 = v110 == v109 && v114 == v113;
    if (!v62 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v113)
  {
    return 0;
  }

  if (v112)
  {
    if (!v111)
    {
      return 0;
    }

    sub_217751DE8();
    v63 = sub_2172A9110(v112, v111);

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  if (v108)
  {
    if (!v107)
    {
      return 0;
    }

    if (v100 == v99 && v108 == v107)
    {
      if (v103 != v102)
      {
        return 0;
      }

LABEL_128:
      v66 = v98 == v96 && v97 == v95;
      if (!v66 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }

      if (v106)
      {
        if (v101)
        {
          if (v104 != v92 || v105 != v93)
          {
            OUTLINED_FUNCTION_23_33();
            v68 = sub_217753058();
            sub_2172AC64C(v106);
            OUTLINED_FUNCTION_23_33();
            sub_2172AC64C(v69);
            v70 = OUTLINED_FUNCTION_11_87();
            sub_2172AC64C(v70);
            OUTLINED_FUNCTION_23_33();
            sub_2172AC65C(v71);

            v72 = OUTLINED_FUNCTION_11_87();
            sub_2172AC65C(v72);
            if ((v68 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_148;
          }

          OUTLINED_FUNCTION_742();
          sub_2172AC64C(v78);
          OUTLINED_FUNCTION_742();
          sub_2172AC64C(v79);
          v80 = OUTLINED_FUNCTION_18_62();
          sub_2172AC64C(v80);
          OUTLINED_FUNCTION_742();
          sub_2172AC65C(v81);

LABEL_147:
          sub_2172AC65C(v106);
LABEL_148:
          if (sub_2172849CC(v90, v89))
          {
            if (v88)
            {
              if (v87)
              {
                v83 = v86 == v85 && v88 == v87;
                if (v83 || (sub_217753058() & 1) != 0)
                {
                  return 1;
                }
              }
            }

            else if (!v87)
            {
              return 1;
            }
          }

          return 0;
        }

        OUTLINED_FUNCTION_742();
        sub_2172AC64C(v74);
        OUTLINED_FUNCTION_27_55();
        sub_2172AC64C(v75);
        v76 = OUTLINED_FUNCTION_18_62();
        sub_2172AC64C(v76);
      }

      else
      {
        sub_2172AC64C(0);
        if (!v101)
        {
          OUTLINED_FUNCTION_27_55();
          sub_2172AC64C(v82);
          v106 = 0;
          goto LABEL_147;
        }

        OUTLINED_FUNCTION_27_55();
        sub_2172AC64C(v73);
      }

      sub_2172AC65C(v106);
      OUTLINED_FUNCTION_27_55();
      sub_2172AC65C(v77);
      return 0;
    }

    v65 = sub_217753058();
    result = 0;
    if ((v65 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v107)
    {
      return result;
    }
  }

  if (((v103 ^ v102) & 1) == 0)
  {
    goto LABEL_128;
  }

  return result;
}

uint64_t sub_21772C470(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x497972617262696CLL && a2 == 0xE900000000000044;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000002177B6900 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x444964756F6C63 && a2 == 0xE700000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6974726F706572 && a2 == 0xEF44496D61644167;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573616863727570 && a2 == 0xEF44496D61644164;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6164417465737361 && a2 == 0xEB0000000044496DLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F4C656369766564 && a2 == 0xED000044496C6163;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6572727563636FLL && a2 == 0xEC00000044496563;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000002177B6920 == a2;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x4449636E7973 && a2 == 0xE600000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x444972656D726F66 && a2 == 0xE900000000000073;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x444972657375 && a2 == 0xE600000000000000;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x72617262694C7369 && a2 == 0xE900000000000079;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701869940 && a2 == 0xE400000000000000;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x70795472656E6E69 && a2 == 0xE900000000000065;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x72756F5361746164 && a2 == 0xEB00000000736563;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000017 && 0x80000002177B6940 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_217753058();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_21772CA24(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x49676F6C61746163;
      break;
    case 2:
      result = 0x497972617262696CLL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x444964756F6C63;
      break;
    case 5:
      result = 0x6E6974726F706572;
      break;
    case 6:
      result = 0x6573616863727570;
      break;
    case 7:
      result = 0x6164417465737361;
      break;
    case 8:
      result = 0x6F4C656369766564;
      break;
    case 9:
      result = 0x6E6572727563636FLL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 1668184435;
      goto LABEL_17;
    case 12:
      result = 0x444972656D726F66;
      break;
    case 13:
      v3 = 1919251317;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x444900000000;
      break;
    case 14:
      result = 0x72617262694C7369;
      break;
    case 15:
      result = 1701869940;
      break;
    case 16:
      result = 0x70795472656E6E69;
      break;
    case 17:
      result = 0x72756F5361746164;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772CC60(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v17 = v2[2];
  v7 = v2[5];
  v39 = v2[4];
  v8 = v2[7];
  v18 = v2[6];
  v9 = v2[9];
  v19 = v2[8];
  v20 = v2[10];
  v37 = v2[11];
  v21 = v2[12];
  v38 = v2[13];
  v22 = v2[14];
  v40 = v2[15];
  v23 = v2[16];
  v41 = v2[17];
  v24 = v2[18];
  v42 = v2[19];
  v25 = v2[21];
  v26 = v2[20];
  v10 = v2[23];
  v27 = v2[22];
  v28 = v2[24];
  v43 = v2[25];
  v29 = v2[27];
  v30 = v2[26];
  v11 = v2[29];
  v12 = v2[30];
  v31 = v2[28];
  v32 = v2[31];
  v13 = v2[32];
  v44 = *(v2 + 264);
  v45 = v2[37];
  v46 = v2[36];
  v14 = v2[38];
  v34 = v2[40];
  v35 = v2[39];
  v33 = v2[41];
  v47 = v2[42];
  v36 = v2[43];
  v15 = v2[44];
  sub_217751FF8();
  sub_217753208();
  if (v6)
  {
    sub_217751FF8();
    sub_217751FF8();
  }

  sub_217753208();
  if (v8)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v9)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v37)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v38)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v40)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v41)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v42)
  {
    sub_217751FF8();
    sub_217751FF8();
  }

  if (v10)
  {
    sub_217753208();
    sub_217751FF8();
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_217753208();
    if (v43)
    {
LABEL_19:
      sub_217753208();
      sub_217751FF8();
      sub_217751FF8();
      if (v11)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  sub_217753208();
  if (v11)
  {
LABEL_20:
    sub_217753208();
    sub_217751FF8();
    if (v12)
    {
      goto LABEL_21;
    }

LABEL_26:
    sub_217753208();
    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_25:
  sub_217753208();
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_21:
  sub_217753208();
  sub_2172A98C8(a1, v12);
  if (v13)
  {
LABEL_22:
    sub_217753208();
    sub_217751FF8();
    goto LABEL_28;
  }

LABEL_27:
  sub_217753208();
LABEL_28:
  sub_217753208();
  sub_217751FF8();
  sub_217753208();
  if (v14)
  {
    sub_217751DE8();
    sub_217751FF8();
    sub_2172AC65C(v14);
  }

  sub_2172849D8(a1, v47);
  if (!v15)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21772D0A4()
{
  sub_2177531E8();
  sub_21772CC60(v1);
  return sub_217753238();
}

uint64_t sub_21772D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772C470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772D114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21772CA1C();
  *a1 = result;
  return result;
}

uint64_t sub_21772D13C(uint64_t a1)
{
  v2 = sub_21772D294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772D178(uint64_t a1)
{
  v2 = sub_21772D294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772D1F0()
{
  sub_2177531E8();
  sub_21772CC60(v1);
  return sub_217753238();
}

uint64_t sub_21772D22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC50, &qword_21779F958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21772D294()
{
  result = qword_280BE8320;
  if (!qword_280BE8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8320);
  }

  return result;
}

unint64_t sub_21772D2E8()
{
  result = qword_280BE82E0;
  if (!qword_280BE82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82E0);
  }

  return result;
}

unint64_t sub_21772D33C()
{
  result = qword_280BE8330;
  if (!qword_280BE8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8330);
  }

  return result;
}

uint64_t sub_21772D390(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DC60, &qword_21779F970);
    a2();
    result = OUTLINED_FUNCTION_30_48();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21772D3F8()
{
  result = qword_280BE82F8;
  if (!qword_280BE82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82F8);
  }

  return result;
}

unint64_t sub_21772D44C()
{
  result = qword_280BE82D8;
  if (!qword_280BE82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82D8);
  }

  return result;
}

unint64_t sub_21772D4A0()
{
  result = qword_280BE8328;
  if (!qword_280BE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8328);
  }

  return result;
}

uint64_t sub_21772D4F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2C268, &qword_2177905C8);
    a2();
    result = OUTLINED_FUNCTION_30_48();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21772D55C()
{
  result = qword_280BE82E8;
  if (!qword_280BE82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE82E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableMusicIdentifierSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CodableMusicIdentifierSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21772D750()
{
  result = qword_27CB2DC70;
  if (!qword_27CB2DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC70);
  }

  return result;
}

unint64_t sub_21772D7A8()
{
  result = qword_280BE8310;
  if (!qword_280BE8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8310);
  }

  return result;
}

unint64_t sub_21772D800()
{
  result = qword_280BE8318;
  if (!qword_280BE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8318);
  }

  return result;
}

void OUTLINED_FUNCTION_22_64(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 128) = v1;
  *(v2 - 120) = v3;
}

void OUTLINED_FUNCTION_26_50()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1F4C();
}

uint64_t CloudAttribute<A>.convertToEditorialNotes()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = *(v1 + 40);
  *(a1 + 56) = v2;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t EditorialNotes.convertToCloudEditorialNotesAttribute()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  result = sub_217751DC8();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v10;
  a1[7] = v9;
  a1[8] = result;
  return result;
}

uint64_t CloudEditorialNotes.short.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudEditorialNotes.standard.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudEditorialNotes.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudEditorialNotes.tagline.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t static CloudEditorialNotes.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_217753058();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_217753058();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_217753058();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v32 = v7 == v14 && v9 == v16;
      if (v32 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21772DC54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
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

      else if (a1 == 0x656E696C676174 && a2 == 0xE700000000000000)
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

uint64_t sub_21772DDA8(char a1)
{
  result = 0x74726F6873;
  switch(a1)
  {
    case 1:
      result = 0x647261646E617473;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x656E696C676174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772DC54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772DE50(uint64_t a1)
{
  v2 = sub_21772E084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772DE8C(uint64_t a1)
{
  v2 = sub_21772E084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudEditorialNotes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC78, &qword_21779FAA0);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = v20 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v20[5] = v1[3];
  v20[6] = v14;
  v15 = v1[4];
  v20[3] = v1[5];
  v20[4] = v15;
  v16 = v1[6];
  v20[1] = v1[7];
  v20[2] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772E084();
  sub_2177532F8();
  v24 = 0;
  v18 = v20[7];
  sub_217752EF8();
  if (!v18)
  {
    v23 = 1;
    OUTLINED_FUNCTION_2_145();
    v22 = 2;
    OUTLINED_FUNCTION_2_145();
    v21 = 3;
    OUTLINED_FUNCTION_2_145();
  }

  return (*(v6 + 8))(v11, v3);
}

unint64_t sub_21772E084()
{
  result = qword_280BE3B68;
  if (!qword_280BE3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B68);
  }

  return result;
}

uint64_t CloudEditorialNotes.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  if (v0[1])
  {
    v7 = *v0;
    sub_217753208();
    sub_217751FF8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_217753208();
    if (v3)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_217753208();
      if (v6)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_217753208();
  sub_217751FF8();
  if (!v6)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudEditorialNotes.hashValue.getter()
{
  sub_2177531E8();
  CloudEditorialNotes.hash(into:)();
  return sub_217753238();
}

uint64_t CloudEditorialNotes.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC80, &qword_21779FAA8);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v29 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772E084();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  OUTLINED_FUNCTION_1_150();
  v15 = sub_217752E18();
  v33 = v16;
  LOBYTE(v38[0]) = 1;
  OUTLINED_FUNCTION_1_150();
  v17 = sub_217752E18();
  v32 = v18;
  v30 = v17;
  LOBYTE(v38[0]) = 2;
  OUTLINED_FUNCTION_1_150();
  v29 = sub_217752E18();
  v31 = v19;
  v39 = 3;
  v20 = sub_217752E18();
  v22 = v21;
  (*(v8 + 8))(v13, v5);
  v23 = v33;
  *&v34 = v15;
  *(&v34 + 1) = v33;
  v25 = v30;
  v24 = v31;
  *&v35 = v30;
  *(&v35 + 1) = v32;
  *&v36 = v29;
  *(&v36 + 1) = v31;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  v26 = v35;
  *a2 = v34;
  a2[1] = v26;
  v27 = v37;
  a2[2] = v36;
  a2[3] = v27;
  sub_2175B7B74(&v34, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v15;
  v38[1] = v23;
  v38[2] = v25;
  v38[3] = v32;
  v38[4] = v29;
  v38[5] = v24;
  v38[6] = v20;
  v38[7] = v22;
  return sub_2174D7974(v38);
}

uint64_t sub_21772E520()
{
  sub_2177531E8();
  CloudEditorialNotes.hash(into:)();
  return sub_217753238();
}

unint64_t sub_21772E560()
{
  result = qword_27CB2DC88;
  if (!qword_27CB2DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialNotes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21772E6A4()
{
  result = qword_27CB2DC90;
  if (!qword_27CB2DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DC90);
  }

  return result;
}

unint64_t sub_21772E6FC()
{
  result = qword_280BE3B58;
  if (!qword_280BE3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B58);
  }

  return result;
}

unint64_t sub_21772E754()
{
  result = qword_280BE3B60;
  if (!qword_280BE3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B60);
  }

  return result;
}

Swift::Int __swiftcall CloudStatus.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForCloudStatus_];
}

uint64_t sub_21772E804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616863727570 && a2 == 0xE900000000000064;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465686374616DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646564616F6C7075 && a2 == 0xE800000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C6E4F6C61636F6CLL && a2 == 0xE900000000000079;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746163696C707564 && a2 == 0xE900000000000065;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x64656B6F766572 && a2 == 0xE700000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_217753058();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_21772EB14(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6573616863727570;
      break;
    case 2:
      result = 0x6465686374616DLL;
      break;
    case 3:
      v3 = 0x64616F6C7075;
      goto LABEL_7;
    case 4:
      v3 = 0x7463656A6572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 5:
      result = 0x6C6E4F6C61636F6CLL;
      break;
    case 6:
      result = 0x726F727265;
      break;
    case 7:
      result = 0x746163696C707564;
      break;
    case 8:
      result = 0x7069726373627573;
      break;
    case 9:
      result = 0x64656B6F766572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21772EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21772E804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21772EC64(uint64_t a1)
{
  v2 = sub_21772F97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772ECA0(uint64_t a1)
{
  v2 = sub_21772F97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772ECDC(uint64_t a1)
{
  v2 = sub_21772FA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772ED18(uint64_t a1)
{
  v2 = sub_21772FA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772ED54(uint64_t a1)
{
  v2 = sub_21772FACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772ED90(uint64_t a1)
{
  v2 = sub_21772FACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772EDCC(uint64_t a1)
{
  v2 = sub_21772FB20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772EE08(uint64_t a1)
{
  v2 = sub_21772FB20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772EE44(uint64_t a1)
{
  v2 = sub_21772FC1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772EE80(uint64_t a1)
{
  v2 = sub_21772FC1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772EEBC(uint64_t a1)
{
  v2 = sub_21772FC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772EEF8(uint64_t a1)
{
  v2 = sub_21772FC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772EF34(uint64_t a1)
{
  v2 = sub_21772FB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772EF70(uint64_t a1)
{
  v2 = sub_21772FB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772EFAC(uint64_t a1)
{
  v2 = sub_21772F9D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772EFE8(uint64_t a1)
{
  v2 = sub_21772F9D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772F024(uint64_t a1)
{
  v2 = sub_21772FA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772F060(uint64_t a1)
{
  v2 = sub_21772FA24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772F09C(uint64_t a1)
{
  v2 = sub_21772FCC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772F0D8(uint64_t a1)
{
  v2 = sub_21772FCC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21772F114(uint64_t a1)
{
  v2 = sub_21772FBC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21772F150(uint64_t a1)
{
  v2 = sub_21772FBC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudStatus.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DC98, &qword_21779FCF0);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v123 = v6;
  v124 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_150();
  v122 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCA0, &qword_21779FCF8);
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v120 = v14;
  v121 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_150();
  v119 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCA8, &qword_21779FD00);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v117 = v22;
  v118 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_150();
  v116 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCB0, &qword_21779FD08);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v114 = v30;
  v115 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_150();
  v113 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCB8, &qword_21779FD10);
  v37 = OUTLINED_FUNCTION_0_0(v36);
  v111 = v38;
  v112 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_150();
  v110 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCC0, &qword_21779FD18);
  v45 = OUTLINED_FUNCTION_0_0(v44);
  v108 = v46;
  v109 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_150();
  v107 = v51;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCC8, &qword_21779FD20);
  OUTLINED_FUNCTION_0_0(v106);
  v105 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55, v56);
  OUTLINED_FUNCTION_150();
  v104 = v57;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCD0, &qword_21779FD28);
  OUTLINED_FUNCTION_0_0(v103);
  v102 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_150();
  v101 = v63;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCD8, &qword_21779FD30);
  OUTLINED_FUNCTION_0_0(v100);
  v99[2] = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v67, v68);
  v70 = v99 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCE0, &qword_21779FD38);
  OUTLINED_FUNCTION_0_0(v71);
  v99[1] = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v75, v76);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DCE8, &qword_21779FD40);
  OUTLINED_FUNCTION_0_0(v125);
  v78 = v77;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v81, v82);
  v84 = v99 - v83;
  v85 = *v2;
  v86 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21772F97C();
  sub_2177532F8();
  v87 = (v78 + 8);
  switch(v85)
  {
    case 1:
      v127 = 1;
      sub_21772FC70();
      v96 = v125;
      sub_217752EE8();
      OUTLINED_FUNCTION_12_1(&v129);
      v97(v70, v100);
      return (*v87)(v84, v96);
    case 2:
      v128[0] = 2;
      sub_21772FC1C();
      v93 = v101;
      OUTLINED_FUNCTION_1_85();
      OUTLINED_FUNCTION_12_1(&v130);
      v88 = v93;
      v94 = &v131;
      goto LABEL_7;
    case 3:
      v128[1] = 3;
      sub_21772FBC8();
      v95 = v104;
      OUTLINED_FUNCTION_1_85();
      OUTLINED_FUNCTION_12_1(&v132);
      v88 = v95;
      v94 = &v133;
LABEL_7:
      v90 = *(v94 - 32);
      break;
    case 4:
      v128[2] = 4;
      sub_21772FB74();
      v91 = v107;
      OUTLINED_FUNCTION_1_85();
      v92 = v108;
      v90 = v109;
      goto LABEL_13;
    case 5:
      v128[3] = 5;
      sub_21772FB20();
      v91 = v110;
      OUTLINED_FUNCTION_1_85();
      v92 = v111;
      v90 = v112;
      goto LABEL_13;
    case 6:
      v128[4] = 6;
      sub_21772FACC();
      v91 = v113;
      OUTLINED_FUNCTION_1_85();
      v92 = v114;
      v90 = v115;
      goto LABEL_13;
    case 7:
      v128[5] = 7;
      sub_21772FA78();
      v91 = v116;
      OUTLINED_FUNCTION_1_85();
      v92 = v117;
      v90 = v118;
      goto LABEL_13;
    case 8:
      v128[6] = 8;
      sub_21772FA24();
      v91 = v119;
      OUTLINED_FUNCTION_1_85();
      v92 = v120;
      v90 = v121;
      goto LABEL_13;
    case 9:
      v128[7] = 9;
      sub_21772F9D0();
      v91 = v122;
      OUTLINED_FUNCTION_1_85();
      v92 = v123;
      v90 = v124;
LABEL_13:
      v89 = *(v92 + 8);
      v88 = v91;
      break;
    default:
      v126 = 0;
      sub_21772FCC4();
      v70 = v125;
      sub_217752EE8();
      v88 = OUTLINED_FUNCTION_4_77(v128);
      v90 = v71;
      break;
  }

  v89(v88, v90);
  return (*v87)(v84, v70);
}

unint64_t sub_21772F97C()
{
  result = qword_27CB2DCF0;
  if (!qword_27CB2DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DCF0);
  }

  return result;
}

unint64_t sub_21772F9D0()
{
  result = qword_27CB2DCF8;
  if (!qword_27CB2DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DCF8);
  }

  return result;
}

unint64_t sub_21772FA24()
{
  result = qword_27CB2DD00;
  if (!qword_27CB2DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD00);
  }

  return result;
}

unint64_t sub_21772FA78()
{
  result = qword_27CB2DD08;
  if (!qword_27CB2DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD08);
  }

  return result;
}

unint64_t sub_21772FACC()
{
  result = qword_27CB2DD10;
  if (!qword_27CB2DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD10);
  }

  return result;
}

unint64_t sub_21772FB20()
{
  result = qword_27CB2DD18;
  if (!qword_27CB2DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD18);
  }

  return result;
}

unint64_t sub_21772FB74()
{
  result = qword_27CB2DD20;
  if (!qword_27CB2DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD20);
  }

  return result;
}

unint64_t sub_21772FBC8()
{
  result = qword_27CB2DD28;
  if (!qword_27CB2DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD28);
  }

  return result;
}

unint64_t sub_21772FC1C()
{
  result = qword_27CB2DD30;
  if (!qword_27CB2DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD30);
  }

  return result;
}

unint64_t sub_21772FC70()
{
  result = qword_27CB2DD38;
  if (!qword_27CB2DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD38);
  }

  return result;
}

unint64_t sub_21772FCC4()
{
  result = qword_27CB2DD40;
  if (!qword_27CB2DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DD40);
  }

  return result;
}

uint64_t CloudStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t CloudStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v155 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD48, &qword_21779FD48);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v148 = v5;
  v149 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_150();
  v154 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD50, &qword_21779FD50);
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v146 = v13;
  v147 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_150();
  v153 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD58, &qword_21779FD58);
  v20 = OUTLINED_FUNCTION_0_0(v19);
  v144 = v21;
  v145 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_150();
  v158 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD60, &qword_21779FD60);
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v142 = v29;
  v143 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_150();
  v157 = v34;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD68, &qword_21779FD68);
  OUTLINED_FUNCTION_0_0(v141);
  v140 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_150();
  v156 = v40;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD70, &qword_21779FD70);
  OUTLINED_FUNCTION_0_0(v139);
  v138 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_150();
  v152 = v46;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD78, &qword_21779FD78);
  OUTLINED_FUNCTION_0_0(v137);
  v136 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50, v51);
  OUTLINED_FUNCTION_150();
  v151 = v52;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD80, &qword_21779FD80);
  OUTLINED_FUNCTION_0_0(v135);
  v134 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v56, v57);
  OUTLINED_FUNCTION_150();
  v150 = v58;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD88, &qword_21779FD88);
  OUTLINED_FUNCTION_0_0(v133);
  v132 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v62, v63);
  v65 = &v125 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD90, &qword_21779FD90);
  OUTLINED_FUNCTION_0_0(v66);
  v131 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v70, v71);
  v73 = &v125 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DD98, &unk_21779FD98);
  OUTLINED_FUNCTION_0_0(v74);
  v76 = v75;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v79, v80);
  v82 = &v125 - v81;
  v84 = a1[3];
  v83 = a1[4];
  v159 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v84);
  sub_21772F97C();
  v85 = v160;
  sub_2177532C8();
  if (v85)
  {
    goto LABEL_11;
  }

  v128 = v73;
  v127 = v66;
  v129 = v65;
  v86 = v156;
  v87 = v157;
  v88 = v158;
  v160 = v76;
  v89 = v82;
  v90 = sub_217752EB8();
  result = sub_21733CF68(v90, 0);
  if (v93 == v94 >> 1)
  {
    v130 = result;
    v95 = v160;
    v96 = v82;
LABEL_10:
    v109 = sub_217752B48();
    swift_allocError();
    v111 = v110;
    v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v111 = &type metadata for CloudStatus;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v109 - 8) + 104))(v111, *MEMORY[0x277D84160], v109);
    swift_willThrow();
    OUTLINED_FUNCTION_20_7();
    (*(v95 + 8))(v96, v74);
LABEL_11:
    v113 = v159;
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v126 = 0;
  if (v93 < (v94 >> 1))
  {
    v97 = v74;
    v98 = *(v92 + v93);
    v99 = sub_21733CF64(v93 + 1);
    v101 = v100;
    v103 = v102;
    swift_unknownObjectRelease();
    v130 = v99;
    v96 = v89;
    if (v101 == v103 >> 1)
    {
      v104 = v98;
      v105 = v155;
      v106 = v126;
      switch(v98)
      {
        case 1:
          v162 = 1;
          sub_21772FC70();
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v114 = OUTLINED_FUNCTION_4_77(v164);
          v116 = &v165;
          goto LABEL_19;
        case 2:
          v164[0] = 2;
          sub_21772FC1C();
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v114 = OUTLINED_FUNCTION_4_77(&v166);
          v116 = &v167;
          goto LABEL_19;
        case 3:
          v164[1] = 3;
          sub_21772FBC8();
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v114 = OUTLINED_FUNCTION_4_77(&v168);
          v116 = &v169;
          goto LABEL_19;
        case 4:
          v164[2] = 4;
          sub_21772FB74();
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v114 = OUTLINED_FUNCTION_4_77(&v170);
          v116 = &v171;
LABEL_19:
          v117 = *(v116 - 32);
          goto LABEL_25;
        case 5:
          v164[3] = 5;
          sub_21772FB20();
          OUTLINED_FUNCTION_3_77();
          OUTLINED_FUNCTION_20_7();
          v114 = OUTLINED_FUNCTION_4_77(&v172);
          v117 = v141;
          goto LABEL_25;
        case 6:
          v164[4] = 6;
          sub_21772FACC();
          v88 = v87;
          OUTLINED_FUNCTION_3_77();
          OUTLINED_FUNCTION_20_7();
          v118 = v142;
          v117 = v143;
          goto LABEL_24;
        case 7:
          v164[5] = 7;
          sub_21772FA78();
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v118 = v144;
          v117 = v145;
          goto LABEL_24;
        case 8:
          v164[6] = 8;
          sub_21772FA24();
          v88 = v153;
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v118 = v146;
          v117 = v147;
          goto LABEL_24;
        case 9:
          v164[7] = 9;
          sub_21772F9D0();
          v88 = v154;
          OUTLINED_FUNCTION_2_86();
          OUTLINED_FUNCTION_20_7();
          v118 = v148;
          v117 = v149;
LABEL_24:
          v115 = *(v118 + 8);
          v114 = v88;
LABEL_25:
          v115(v114, v117);
          v123 = OUTLINED_FUNCTION_12_38();
          v124(v123, v86);
          v113 = v159;
          goto LABEL_26;
        default:
          v161 = 0;
          sub_21772FCC4();
          v107 = v128;
          sub_217752DE8();
          if (v106)
          {
            v108 = OUTLINED_FUNCTION_12_38();
            v119(v108, v97);
            OUTLINED_FUNCTION_20_7();
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_20_7();
          OUTLINED_FUNCTION_12_1(&v163);
          v120(v107, v127);
          v121 = OUTLINED_FUNCTION_12_38();
          v122(v121, v97);
          v113 = v159;
          v104 = v98;
LABEL_26:
          *v105 = v104;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v113);
    }

    v95 = v160;
    v74 = v97;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_217730844()
{
  v2 = *v0;
  sub_2177531E8();
  CloudStatus.hash(into:)();
  return sub_217753238();
}

MusicKit::CloudStatus_optional __swiftcall CloudStatus.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() cloudStatusForRawValue_];
  if ((v3 - 1) < 9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_2177308E4@<X0>(Swift::Int *a1@<X8>)
{
  result = CloudStatus.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_217730910()
{
  result = qword_27CB2DDA0;
  if (!qword_27CB2DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DDA8, &qword_21779FDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDA0);
  }

  return result;
}

unint64_t sub_217730978()
{
  result = qword_27CB2DDB0;
  if (!qword_27CB2DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDB0);
  }

  return result;
}

_BYTE *sub_2177309DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217730B5C()
{
  result = qword_27CB2DDB8;
  if (!qword_27CB2DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDB8);
  }

  return result;
}

unint64_t sub_217730BB4()
{
  result = qword_27CB2DDC0;
  if (!qword_27CB2DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDC0);
  }

  return result;
}

unint64_t sub_217730C0C()
{
  result = qword_27CB2DDC8;
  if (!qword_27CB2DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDC8);
  }

  return result;
}

unint64_t sub_217730C64()
{
  result = qword_27CB2DDD0;
  if (!qword_27CB2DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDD0);
  }

  return result;
}

unint64_t sub_217730CBC()
{
  result = qword_27CB2DDD8;
  if (!qword_27CB2DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDD8);
  }

  return result;
}

unint64_t sub_217730D14()
{
  result = qword_27CB2DDE0;
  if (!qword_27CB2DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDE0);
  }

  return result;
}

unint64_t sub_217730D6C()
{
  result = qword_27CB2DDE8;
  if (!qword_27CB2DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDE8);
  }

  return result;
}

unint64_t sub_217730DC4()
{
  result = qword_27CB2DDF0;
  if (!qword_27CB2DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDF0);
  }

  return result;
}

unint64_t sub_217730E1C()
{
  result = qword_27CB2DDF8;
  if (!qword_27CB2DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DDF8);
  }

  return result;
}

unint64_t sub_217730E74()
{
  result = qword_27CB2DE00;
  if (!qword_27CB2DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE00);
  }

  return result;
}

unint64_t sub_217730ECC()
{
  result = qword_27CB2DE08;
  if (!qword_27CB2DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE08);
  }

  return result;
}

unint64_t sub_217730F24()
{
  result = qword_27CB2DE10;
  if (!qword_27CB2DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE10);
  }

  return result;
}

unint64_t sub_217730F7C()
{
  result = qword_27CB2DE18;
  if (!qword_27CB2DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE18);
  }

  return result;
}

unint64_t sub_217730FD4()
{
  result = qword_27CB2DE20;
  if (!qword_27CB2DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE20);
  }

  return result;
}

unint64_t sub_21773102C()
{
  result = qword_27CB2DE28;
  if (!qword_27CB2DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE28);
  }

  return result;
}

unint64_t sub_217731084()
{
  result = qword_27CB2DE30;
  if (!qword_27CB2DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE30);
  }

  return result;
}

unint64_t sub_2177310DC()
{
  result = qword_27CB2DE38;
  if (!qword_27CB2DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE38);
  }

  return result;
}

unint64_t sub_217731134()
{
  result = qword_27CB2DE40;
  if (!qword_27CB2DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE40);
  }

  return result;
}

unint64_t sub_21773118C()
{
  result = qword_27CB2DE48;
  if (!qword_27CB2DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE48);
  }

  return result;
}

unint64_t sub_2177311E4()
{
  result = qword_27CB2DE50;
  if (!qword_27CB2DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE50);
  }

  return result;
}

unint64_t sub_21773123C()
{
  result = qword_27CB2DE58;
  if (!qword_27CB2DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE58);
  }

  return result;
}

unint64_t sub_217731294()
{
  result = qword_27CB2DE60;
  if (!qword_27CB2DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE60);
  }

  return result;
}

unint64_t sub_2177312EC()
{
  result = qword_27CB2DE68;
  if (!qword_27CB2DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE68);
  }

  return result;
}

uint64_t sub_217731344()
{
  type metadata accessor for GenreCache();
  swift_allocObject();
  result = sub_217731380();
  qword_27CB8A338 = result;
  return result;
}

uint64_t sub_217731380()
{
  v1 = v0;
  if (qword_280BE4A88 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE4A98;
  v3 = byte_280BE4AA0;
  *(v1 + 16) = qword_280BE4A90;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  sub_2172CAE0C();
  sub_217751DE8();
  *(v1 + 40) = sub_217751DC8();
  *(v1 + 48) = 0;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v1 + 56) = v4;
  if (qword_280BEAE60 != -1)
  {
    swift_once();
  }

  v6 = qword_280C029A0;
  v7 = *MEMORY[0x277D7F8F8];
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9 = v7;
  v10 = v6;
  v11 = NotificationObserver.init(name:object:handler:)(v9, v6, sub_217733C14, v8);
  v12 = *(v1 + 48);
  *(v1 + 48) = v11;

  return v1;
}

uint64_t sub_217731524()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21773157C();
  }

  return result;
}

uint64_t sub_21773157C()
{
  v1 = *(v0 + 56);

  v2 = OUTLINED_FUNCTION_93();
  return sub_2175867F8(v2);
}

uint64_t sub_2177315C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v7 = sub_2177516D8();
  v4[22] = v7;
  OUTLINED_FUNCTION_15_3(v7);
  v4[23] = v8;
  v10 = *(v9 + 64);
  v4[24] = OUTLINED_FUNCTION_28_7();
  v11 = sub_2177512F8();
  v4[25] = v11;
  OUTLINED_FUNCTION_15_3(v11);
  v4[26] = v12;
  v14 = *(v13 + 64);
  v4[27] = OUTLINED_FUNCTION_28_7();
  v15 = type metadata accessor for MusicDataRequest();
  v4[28] = v15;
  v16 = *(*(v15 - 8) + 64);
  v4[29] = OUTLINED_FUNCTION_28_7();
  v17 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v18 = *(a4 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v4[33] = v20;
  *v20 = v4;
  v20[1] = sub_2177317F0;

  return v22(a3, a4);
}

uint64_t sub_2177317F0()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 264);
  *v4 = *v1;
  v3[34] = v7;
  v3[35] = v8;

  if (v0)
  {
    v10 = v3[31];
    v9 = v3[32];
    v12 = v3[29];
    v11 = v3[30];
    v13 = v3[27];
    v14 = v3[24];

    OUTLINED_FUNCTION_20_0();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

uint64_t sub_217731968()
{
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_11();
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v26 = v0[29];
  v27 = v0[28];
  v7 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v24 = v0[22];
  v25 = v0[25];
  v28 = v0[20];
  v29 = v0[21];
  v30 = v0[19];
  static MusicAPI.Endpoint.catalogEndpoint<A>(countryCode:pathSuffix:queryItems:configuration:)();

  sub_2172CB230(v3, v4);
  sub_2172CB230(v4, v5);
  (*(v9 + 16))(v8, v5, v24);
  sub_2177512B8();
  sub_2176F88E0(v5, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v7 + 16))(v26, v6, v25);
  v10 = (v26 + *(v27 + 20));
  swift_beginAccess();
  v11 = off_280BEBCD0;

  (v11)(v12);

  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v14 = OUTLINED_FUNCTION_56_0();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v14, v15, v16);
  (*(v7 + 8))(v6, v25);
  sub_2176F88E0(v4, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v28, v29, (v0 + 7));
  sub_2172CA894((v0 + 7), v10);
  v17 = v10[3];
  v18 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v17);
  v19 = *(v18 + 104);
  v31 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[36] = v21;
  *v21 = v0;
  v21[1] = sub_217731C90;
  v22 = v0[29];

  return (v31)(v0 + 15, v22, v17, v18);
}

uint64_t sub_217731C90()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217731D94()
{
  v33 = v0;
  v1 = v0[37];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  v31 = v0[17];
  v8 = sub_217751348();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v3, v2, v32);
  JSONDecoder.dataRequestConfiguration.setter(v32);
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  SharedRelatedItemStore.init()();

  JSONDecoder.sharedRelatedItemStore.setter(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27748, &qword_21776B1B0);
  sub_217733B90();
  OUTLINED_FUNCTION_56_0();
  sub_217751308();
  v12 = v0[32];
  if (v1)
  {
    v13 = v0[29];

    sub_217275694(v6, v7);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v12, v14);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v13, v15);
    v17 = v0[31];
    v16 = v0[32];
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[27];
    v21 = v0[24];
  }

  else
  {
    v24 = v0[30];
    v23 = v0[31];
    v25 = v0[29];
    v26 = v0[27];
    v30 = v0[24];

    sub_217275694(v6, v7);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v12, v27);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v25, v28);
  }

  OUTLINED_FUNCTION_20_0();

  return v22();
}

uint64_t sub_217731FD8()
{
  v1 = v0[32];
  v2 = v0[29];
  OUTLINED_FUNCTION_1_17();
  sub_2176F88E0(v3, v4);
  OUTLINED_FUNCTION_21();
  sub_2176F88E0(v2, v5);
  v6 = v0[37];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v12 = v0[24];

  OUTLINED_FUNCTION_20_0();

  return v13();
}

uint64_t sub_217732098(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v1 + 56) + 16));
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB29D18, &qword_2177A07E0);
  sub_217751E18();
  result = swift_endAccess();
  v25 = *(a1 + 16);
  v24 = *(v25 + 16);
  if (v24)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    v7 = v25 + 32;
    while (v5 < *(v25 + 16))
    {
      sub_217284130(v7, v30);
      v8 = v30[0];
      v26 = v30[0];
      v27 = v30[1];
      v28 = v30[2];
      v29 = v31;
      swift_beginAccess();
      sub_217751DE8();
      v9 = *(v2 + 40);
      swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v2 + 40);
      *(v2 + 40) = 0x8000000000000000;
      v11 = sub_21763246C(v8, *(&v8 + 1));
      if (__OFADD__(v10[2], (v12 & 1) == 0))
      {
        goto LABEL_15;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DE78, &qword_2177A07E8);
      if (sub_217752CB8())
      {
        v15 = sub_21763246C(v8, *(&v8 + 1));
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_17;
        }

        v13 = v15;
      }

      if (v14)
      {

        sub_217733B34(&v26, v10[7] + 56 * v13);
      }

      else
      {
        v10[(v13 >> 6) + 8] |= 1 << v13;
        *(v10[6] + 16 * v13) = v8;
        v17 = v10[7] + 56 * v13;
        v18 = v29;
        v20 = v27;
        v19 = v28;
        *v17 = v26;
        *(v17 + 16) = v20;
        *(v17 + 32) = v19;
        *(v17 + 48) = v18;
        v21 = v10[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_16;
        }

        v10[2] = v23;
      }

      ++v5;
      *(v2 + 40) = v10;
      result = swift_endAccess();
      v7 += 56;
      if (v24 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_217753178();
    __break(1u);
  }

  return result;
}

uint64_t sub_2177322FC()
{
  os_unfair_lock_assert_owner(*(*(v0 + 56) + 16));
  v1 = swift_beginAccess();
  if (!*(*(v0 + 40) + 16))
  {
    return 0;
  }

  MEMORY[0x28223BE20](v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244F8, &qword_2177589E0);
  sub_217733AD0();
  return sub_217752148();
}

uint64_t sub_2177323F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v9 = *(a2 + 40);
  sub_217751DE8();
  sub_2173AC9DC(v7, v8, v9, &v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a4, v10 ^ 1u, 1, a3);
}

uint64_t sub_2177324D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v9 = type metadata accessor for MusicItemCacheResult();
  v7[31] = v9;
  v10 = sub_2177528F8();
  v7[32] = v10;
  OUTLINED_FUNCTION_15_3(v10);
  v7[33] = v11;
  v13 = *(v12 + 64);
  v7[34] = OUTLINED_FUNCTION_28_7();
  v14 = *(a5 - 8);
  v7[35] = v14;
  v15 = *(v14 + 64);
  v7[36] = OUTLINED_FUNCTION_28_7();
  v16 = *(v9 - 8);
  v7[37] = v16;
  v17 = *(v16 + 64);
  v7[38] = OUTLINED_FUNCTION_28_7();
  v18 = sub_2177528F8();
  v7[39] = v18;
  OUTLINED_FUNCTION_15_3(v18);
  v7[40] = v19;
  v21 = *(v20 + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2177326AC()
{
  v165 = v0;
  v3 = *(v0 + 200);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v163[0] = MEMORY[0x277D84F90];
    sub_217276568();
    v5 = v163[0];
    v1 = *(v163[0] + 16);
    v6 = 16 * v1;
    v7 = (v3 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v163[0] = v5;
      v2 = *(v5 + 24);
      sub_217751DE8();
      if (v1 >= v2 >> 1)
      {
        sub_217276568();
        v5 = v163[0];
      }

      *(v5 + 16) = v1 + 1;
      v10 = v5 + v6;
      *(v10 + 32) = v9;
      *(v10 + 40) = v8;
      v6 += 16;
      v7 += 2;
      ++v1;
      --v4;
    }

    while (v4);
  }

  v11 = *(v0 + 240);
  v161 = *(v0 + 224);
  v12 = sub_2172C3638(v5);
  v14 = v13;
  *(v0 + 344) = v12;
  *(v0 + 352) = v13;
  v15 = sub_217752338();
  *(v0 + 360) = v15;
  *(v0 + 176) = v15;
  *(v0 + 368) = *(v11 + 56);
  v16 = swift_task_alloc();
  *(v16 + 16) = v161;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  *(v16 + 48) = v14;
  *(v0 + 376) = sub_217752418();
  sub_2177528F8();
  v17 = 0;
  UnfairLock.locked<A>(_:)(sub_2177338F4);

  v18 = *(v0 + 184);
  if (v18)
  {

    *(v0 + 176) = v18;
    v19 = *(v0 + 352);
    v20 = *(v0 + 248);
    OUTLINED_FUNCTION_28_57();
    v21 = sub_217752338();
    sub_2172CAE0C();
    v163[0] = OUTLINED_FUNCTION_24_56();
    v163[1] = v22;
    v163[2] = v23;
    v139 = *(v19 + 16);
    if (v139)
    {
      OUTLINED_FUNCTION_9_100();
      v162 = v24;
      OUTLINED_FUNCTION_18_63();
      v120 = v25;
      v125 = v26;
      v115 = v19;
      while (1)
      {
        v27 = OUTLINED_FUNCTION_12_73();
        v35 = OUTLINED_FUNCTION_26_51(v27, v28, v29, v30, v31, v32, v33, v34, v110, v115, v120, v125, v130);
        OUTLINED_FUNCTION_17_68(v35, v36, v37, v38, v39, v40, v41, v42, v111, v116, v121, v126, v131, v135, v139, v143, v147, v151, v155, v158, v160);
        OUTLINED_FUNCTION_10_81();
        OUTLINED_FUNCTION_6_115();

        v51 = OUTLINED_FUNCTION_21_56(v43, v44, v45, v46, v47, v48, v49, v50, v112, v117, v122, v127, v132, v136, v140, v144, v148, v152, v156);
        v53 = v52(v51);
        v61 = OUTLINED_FUNCTION_36_40(v53, v54, v55, v56, v57, v58, v59, v60, v113, v118, v123, v128, v133, v137, v141, v145, v149, v153, v157, v159, v160);
        if (v70)
        {
          v155 = v17;
          v71 = *(v0 + 304);
          v72 = *(v0 + 248);
          v73 = v119;
          (*v119)(v69, *(v0 + 312));
          OUTLINED_FUNCTION_56_0();
          v74 = swift_storeEnumTagMultiPayload();
          goto LABEL_33;
        }

        v82 = OUTLINED_FUNCTION_15_72(v61, v62, v63, v64, v65, v66, v67, v68, v114);
        MEMORY[0](v82);
        v83 = sub_217204DD0(v20);
        if (!v83)
        {
          v155 = v17;
          v95 = OUTLINED_FUNCTION_22_65();
          MEMORY[0](v95);
          goto LABEL_31;
        }

        v2 = v83;
        v84 = 0;
        v164 = MEMORY[0x277D84F90];
        while (v2 != v84)
        {
          OUTLINED_FUNCTION_34_43();
          if (v21)
          {
            result = MEMORY[0x21CEA2E30](v84, *(v0 + 208));
          }

          else
          {
            v85 = *(v162 + 8 * v84);
          }

          if (__OFADD__(v84, 1))
          {
            __break(1u);
            return result;
          }

          sub_2173C3C48();
          if (*(v87 + 16))
          {
            if (qword_280BE4A88 != -1)
            {
              OUTLINED_FUNCTION_11();
              swift_once();
            }

            v88 = *algn_280BE4A98;
            *(v0 + 160) = qword_280BE4A90;
            *(v0 + 168) = v88;
            v89 = swift_task_alloc();
            v1 = OUTLINED_FUNCTION_7_97(v89, v0 + 160);

            if ((v1 & 1) == 0)
            {

              goto LABEL_25;
            }
          }

          else
          {
          }

          sub_217752BC8();
          v90 = *(v164 + 16);
          sub_217752C08();
          sub_217752C18();
          sub_217752BD8();
LABEL_25:
          ++v84;
        }

        v91 = v164;
        v92 = sub_217204DD0(v164);

        OUTLINED_FUNCTION_33_50();
        v155 = v17;
        if (v92)
        {
          v93 = *(v0 + 208);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
          v1 = *(swift_getTupleTypeMetadata2() + 48);
          v94 = OUTLINED_FUNCTION_4_144();
          MEMORY[0](v94);
          *(v91 + v1) = v93;
          OUTLINED_FUNCTION_56_0();
          swift_storeEnumTagMultiPayload();
          v74 = sub_217751DE8();
          goto LABEL_32;
        }

        v96 = OUTLINED_FUNCTION_4_144();
        MEMORY[0](v96);
LABEL_31:
        OUTLINED_FUNCTION_56_0();
        v74 = swift_storeEnumTagMultiPayload();
LABEL_32:
        v73 = v119;
LABEL_33:
        v97 = *(v0 + 304);
        v158 = *(v0 + 312);
        *&v160 = *(v0 + 336);
        OUTLINED_FUNCTION_20_57(v74, v75, v76, v77, v78, v79, v80, v81, v114, v119, v124, v129, v134, v138, v142, v146, v150, v154);
        sub_217751AC8();
        v20 = v163;
        sub_217751A78();
        (*v125)(v1, v2);
        v98 = OUTLINED_FUNCTION_32_52();
        v99(v98);
        (*v73)(v160, v158);

        v17 = v155;
        if (v139 == 1)
        {
          v100 = *(v0 + 352);

          goto LABEL_39;
        }
      }
    }

    OUTLINED_FUNCTION_35_41();
LABEL_39:
    OUTLINED_FUNCTION_25_65();
    v106 = *(v0 + 176);

    v107 = *(v0 + 8);
    v108 = OUTLINED_FUNCTION_56_0();

    return v109(v108);
  }

  else
  {
    v101 = *(v0 + 216);
    v103 = v101[3];
    v102 = v101[4];
    v104 = __swift_project_boxed_opaque_existential_1(v101, v103);
    v105 = swift_task_alloc();
    *(v0 + 384) = v105;
    *v105 = v0;
    v105[1] = sub_217732CD8;

    return sub_2177315C0(v0 + 16, v104, v103, v102);
  }
}

uint64_t sub_217732CD8()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217732DDC()
{
  v148 = v0;
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 240);
  v7 = swift_task_alloc();
  *(v7 + 16) = *(v0 + 224);
  *(v7 + 32) = v6;
  *(v7 + 40) = v0 + 16;
  *(v7 + 48) = v0 + 176;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  sub_21720BA7C();

  sub_217733964(v0 + 16);
  v8 = *(v0 + 352);
  v9 = *(v0 + 248);
  OUTLINED_FUNCTION_28_57();
  v10 = sub_217752338();
  sub_2172CAE0C();
  v146[0] = OUTLINED_FUNCTION_24_56();
  v146[1] = v11;
  v146[2] = v12;
  v123 = *(v8 + 16);
  if (!v123)
  {
    OUTLINED_FUNCTION_35_41();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_9_100();
  v145 = v13;
  OUTLINED_FUNCTION_18_63();
  v99 = v14;
  v104 = v15;
  v109 = v8;
  do
  {
    v16 = OUTLINED_FUNCTION_12_73();
    v24 = OUTLINED_FUNCTION_26_51(v16, v17, v18, v19, v20, v21, v22, v23, v94, v99, v104, v109, v114);
    OUTLINED_FUNCTION_17_68(v24, v25, v26, v27, v28, v29, v30, v31, v95, v100, v105, v110, v115, v119, v123, v127, v131, v135, v139, v142, v144);
    OUTLINED_FUNCTION_10_81();
    OUTLINED_FUNCTION_6_115();

    v40 = OUTLINED_FUNCTION_21_56(v32, v33, v34, v35, v36, v37, v38, v39, v96, v101, v106, v111, v116, v120, v124, v128, v132, v136, v140);
    v42 = v41(v40);
    v50 = OUTLINED_FUNCTION_36_40(v42, v43, v44, v45, v46, v47, v48, v49, v97, v102, v107, v112, v117, v121, v125, v129, v133, v137, v141, v143, v144);
    if (v59)
    {
      *&v144 = v2;
      v60 = *(v0 + 304);
      v61 = *(v0 + 248);
      v62 = v113;
      (*v113)(v58, *(v0 + 312));
      OUTLINED_FUNCTION_56_0();
      v63 = swift_storeEnumTagMultiPayload();
      goto LABEL_27;
    }

    v71 = OUTLINED_FUNCTION_15_72(v50, v51, v52, v53, v54, v55, v56, v57, v98);
    MEMORY[0](v71);
    v72 = sub_217204DD0(v9);
    if (!v72)
    {
      *&v144 = v2;
      v84 = OUTLINED_FUNCTION_22_65();
      MEMORY[0](v84);
      goto LABEL_25;
    }

    v1 = v72;
    v73 = 0;
    v147 = MEMORY[0x277D84F90];
    while (v1 != v73)
    {
      OUTLINED_FUNCTION_34_43();
      if (v10)
      {
        result = MEMORY[0x21CEA2E30](v73, *(v0 + 208));
      }

      else
      {
        v74 = *(v145 + 8 * v73);
      }

      if (__OFADD__(v73, 1))
      {
        __break(1u);
        return result;
      }

      sub_2173C3C48();
      if (*(v76 + 16))
      {
        if (qword_280BE4A88 != -1)
        {
          OUTLINED_FUNCTION_11();
          swift_once();
        }

        v77 = *algn_280BE4A98;
        *(v0 + 160) = qword_280BE4A90;
        *(v0 + 168) = v77;
        v78 = swift_task_alloc();
        v6 = OUTLINED_FUNCTION_7_97(v78, v0 + 160);

        if ((v6 & 1) == 0)
        {

          goto LABEL_19;
        }
      }

      else
      {
      }

      sub_217752BC8();
      v79 = *(v147 + 16);
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
LABEL_19:
      ++v73;
    }

    v80 = v147;
    v81 = sub_217204DD0(v147);

    OUTLINED_FUNCTION_33_50();
    *&v144 = v2;
    if (v81)
    {
      v82 = *(v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
      v6 = *(swift_getTupleTypeMetadata2() + 48);
      v83 = OUTLINED_FUNCTION_4_144();
      MEMORY[0](v83);
      *(v80 + v6) = v82;
      OUTLINED_FUNCTION_56_0();
      swift_storeEnumTagMultiPayload();
      v63 = sub_217751DE8();
      goto LABEL_26;
    }

    v85 = OUTLINED_FUNCTION_4_144();
    MEMORY[0](v85);
LABEL_25:
    OUTLINED_FUNCTION_56_0();
    v63 = swift_storeEnumTagMultiPayload();
LABEL_26:
    v62 = v113;
LABEL_27:
    v86 = *(v0 + 304);
    v139 = *(v0 + 312);
    v142 = *(v0 + 336);
    OUTLINED_FUNCTION_20_57(v63, v64, v65, v66, v67, v68, v69, v70, v98, v103, v108, v113, v118, v122, v126, v130, v134, v138);
    sub_217751AC8();
    v9 = v146;
    sub_217751A78();
    (*v104)(v6, v1);
    v87 = OUTLINED_FUNCTION_32_52();
    v88(v87);
    (*v62)(v142, v139);

    v2 = v144;
  }

  while (v123 != 1);
  v89 = *(v0 + 352);

LABEL_30:
  OUTLINED_FUNCTION_25_65();
  v90 = *(v0 + 176);

  v91 = *(v0 + 8);
  v92 = OUTLINED_FUNCTION_56_0();

  return v93(v92);
}

uint64_t sub_21773326C()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[36];
  v8 = v0[34];

  OUTLINED_FUNCTION_20_0();
  v10 = v0[49];

  return v9();
}

uint64_t sub_217733330(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_217732098(a2);
  v4 = sub_2177322FC();
  if (!v4)
  {
    v4 = sub_217752338();
  }

  v5 = *a3;
  *a3 = v4;
}

uint64_t sub_2177333BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 8))(a4, a5) == a2 && v6 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217753058();
  }

  return v8 & 1;
}

void *sub_21773344C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return v0;
}

uint64_t sub_217733484()
{
  sub_21773344C();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_2177334DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 16 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    sub_217751DE8();
    return OUTLINED_FUNCTION_93();
  }

  __break(1u);
  return result;
}

unint64_t sub_217733524(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 16 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return OUTLINED_FUNCTION_93();
  }

  __break(1u);
  return result;
}

unint64_t sub_2177335D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

unint64_t sub_217733620@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

unint64_t sub_2177336E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_2174A87A0(a2 + (result << 6) + 32, a5, a3, a4);
  }

  __break(1u);
  return result;
}

unint64_t sub_217733730@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return OUTLINED_FUNCTION_23_60(result, a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}

uint64_t sub_21773387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_14_73();
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_5_116();
}

uint64_t sub_2177338F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[4];
  result = sub_2177322FC();
  *a1 = result;
  return result;
}

uint64_t sub_21773393C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  return sub_217733330(*(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t sub_217733964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27748, &qword_21776B1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2177339F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v10;
  return OUTLINED_FUNCTION_5_116();
}

uint64_t sub_217733A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_170(a1, a2, a3);
  sub_217504048(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_14_73();
  }

  else
  {
    OUTLINED_FUNCTION_13_78();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_5_116();
}

unint64_t sub_217733AD0()
{
  result = qword_27CB2DE70;
  if (!qword_27CB2DE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244F8, &qword_2177589E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE70);
  }

  return result;
}

unint64_t sub_217733B90()
{
  result = qword_27CB27D00;
  if (!qword_27CB27D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27748, &qword_21776B1B0);
    sub_217499CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27D00);
  }

  return result;
}

uint64_t sub_217733C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24520, &unk_217758A10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_217733CC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
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
      if (v11 >= 3)
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

  return (v5 | v10) + 254;
}

void sub_217733DF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
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

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
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

uint64_t OUTLINED_FUNCTION_14_73()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_15_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  result = v9[36];
  v11 = v9[28];
  v12 = v9[26];
  v13 = *a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18[34];
  v20 = v18[31];
  v21 = v18[32];
  v18[18] = a17;
  v18[19] = a18;
  return 0;
}

uint64_t OUTLINED_FUNCTION_22_65()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[28];
  return v0[38];
}

uint64_t OUTLINED_FUNCTION_26_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 192) = a13;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_34_43()
{
  v4 = *(v0 + 208);

  return sub_217504048(v2, v1 == 0, v4);
}

void Playlist.Entry.Item.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v126 = v0;
  v127 = v1;
  v3 = v2;
  v128 = v4;
  v6 = v5;
  v130 = v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v8 = OUTLINED_FUNCTION_43(v117);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_6_1();
  v119 = v12 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v110 - v16;
  v18 = type metadata accessor for CloudMusicVideo(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v121 = v24 - v23;
  v129 = v3;
  v125 = *(v3 - 8);
  v25 = *(v125 + 64);
  MEMORY[0x28223BE20](v26, v27);
  OUTLINED_FUNCTION_1();
  v123 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v31 = OUTLINED_FUNCTION_43(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_6_1();
  v118 = v35 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v110 - v39;
  v41 = type metadata accessor for CloudSong(0);
  v42 = OUTLINED_FUNCTION_45_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  OUTLINED_FUNCTION_1();
  v120 = v47 - v46;
  v48 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v49 = OUTLINED_FUNCTION_43(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49, v52);
  OUTLINED_FUNCTION_6_1();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v110 - v58;
  OUTLINED_FUNCTION_11_88();
  v60 = v6;
  sub_2177375CC(v6, v59);
  v122 = v59;
  sub_2177375CC(v59, v55);
  OUTLINED_FUNCTION_85();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v85 = v121;
    sub_217737678(v55, v121);
    sub_2177375CC(v85, v17);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v87 = v86[10];
    v88 = v6 + v86[9];
    v89 = *v88;
    v116 = *(v88 + 8);
    v90 = v116;
    LODWORD(v111) = *(v88 + 16);
    v91 = v6 + v87;
    v92 = *(v6 + v87);
    v93 = *(v91 + 8);
    v112 = v89;
    v113 = v92;
    v94 = v117;
    v114 = v93;
    v110 = v86[11];
    memcpy(v133, (v6 + v110), 0x180uLL);
    v95 = v86[13];
    v115 = *(v6 + v86[12]);
    v96 = v115;
    v97 = *(v6 + v95);
    v98 = v86[15];
    v118 = *(v6 + v86[14]);
    v99 = v118;
    v120 = *(v6 + v98);
    v100 = v120;
    v101 = &v17[v117[9]];
    *v101 = v112;
    *(v101 + 1) = v90;
    v101[16] = v111;
    v102 = &v17[v94[10]];
    *v102 = v113;
    *(v102 + 1) = v93;
    memcpy(&v17[v94[11]], (v6 + v110), 0x180uLL);
    *&v17[v94[12]] = v96;
    *&v17[v94[13]] = v97;
    *&v17[v94[14]] = v99;
    *&v17[v94[15]] = v100;
    sub_21738C4B0(v17, v119, &qword_27CB24808, &qword_217758D90);
    v103 = v125;
    (*(v125 + 16))(v123, v128, v129);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v133, v131, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    v104 = *(v103 + 8);
    v105 = OUTLINED_FUNCTION_173();
    v106(v105);
    sub_2171F0738(v6, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v17, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_0_171();
    v84 = v121;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v55, v120);
    v61 = OUTLINED_FUNCTION_204();
    sub_2177375CC(v61, v62);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v64 = v63[10];
    v65 = v6;
    v66 = v6 + v63[9];
    v67 = *v66;
    v117 = *(v66 + 8);
    v68 = v117;
    LODWORD(v112) = *(v66 + 16);
    v69 = v6 + v64;
    v70 = *(v6 + v64);
    v71 = *(v69 + 8);
    v113 = v67;
    v114 = v70;
    v115 = v71;
    v111 = v63[11];
    memcpy(v133, (v60 + v111), 0x180uLL);
    v72 = v63[13];
    v73 = *(v60 + v63[12]);
    v116 = v73;
    v74 = *(v65 + v72);
    v75 = v63[15];
    v119 = *(v65 + v63[14]);
    v76 = v119;
    v121 = *(v65 + v75);
    v77 = v121;
    v78 = &v40[v30[9]];
    *v78 = v113;
    *(v78 + 1) = v68;
    v78[16] = v112;
    v79 = &v40[v30[10]];
    *v79 = v114;
    *(v79 + 1) = v71;
    memcpy(&v40[v30[11]], (v65 + v111), 0x180uLL);
    *&v40[v30[12]] = v73;
    *&v40[v30[13]] = v74;
    *&v40[v30[14]] = v76;
    *&v40[v30[15]] = v77;
    sub_21738C4B0(v40, v118, &qword_27CB24748, &unk_217758CD0);
    v80 = v125;
    v82 = v128;
    v81 = v129;
    (*(v125 + 16))(v123, v128, v129);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v133, v131, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v80 + 8))(v82, v81);
    sub_2171F0738(v65, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v40, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_1_151();
    v84 = v120;
  }

  sub_2177347F0(v84, v83);
  OUTLINED_FUNCTION_12_74();
  sub_2177347F0(v122, v107);
  v108 = v131[1];
  v109 = v130;
  *v130 = v131[0];
  v109[1] = v108;
  v109[2] = v131[2];
  *(v109 + 6) = v132;
  *(v109 + 56) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for LegacyModelCodablePlaylistEntryItem()
{
  result = qword_280BE2E10;
  if (!qword_280BE2E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2177347F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void Playlist.Entry.Item.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v49 - v15;
  sub_21729C79C(v0, v54);
  if (v54[56] == 1)
  {
    OUTLINED_FUNCTION_8_2();
    Song.convertToCloudResource<A>(configuration:)();
    sub_217283B58(v53);
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v16, v2);
    type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    swift_storeEnumTagMultiPayload();
    v17 = v10[10];
    v18 = &v16[v10[9]];
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = v18[16];
    v22 = *&v16[v10[12]];
    v51 = v10[11];
    v52 = v22;
    v23 = v10[14];
    v50 = *&v16[v10[13]];
    v25 = *&v16[v17];
    v24 = *&v16[v17 + 8];
    v26 = *&v16[v23];
    v27 = *&v16[v10[15]];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v29 = v2 + *(v28 + 36);
    *v29 = v19;
    *(v29 + 8) = v20;
    *(v29 + 16) = v21;
    v30 = OUTLINED_FUNCTION_23_35(v28);
    memcpy(v30, &v16[v31], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v32) = v27;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    MusicVideo.convertToCloudResource<A>(configuration:)();
    sub_217283C08(v53);
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v9, v2);
    type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    swift_storeEnumTagMultiPayload();
    v33 = v3[10];
    v34 = &v9[v3[9]];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = v34[16];
    v38 = *&v9[v3[12]];
    v51 = v3[11];
    v52 = v38;
    v39 = v3[14];
    v50 = *&v9[v3[13]];
    v41 = *&v9[v33];
    v40 = *&v9[v33 + 8];
    v42 = *&v9[v39];
    v43 = *&v9[v3[15]];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v45 = v2 + *(v44 + 36);
    *v45 = v35;
    *(v45 + 8) = v36;
    *(v45 + 16) = v37;
    v46 = OUTLINED_FUNCTION_23_35(v44);
    memcpy(v46, &v9[v47], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v48) = v43;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217734AC4(uint64_t a1)
{
  v2 = sub_217734B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217734B00(uint64_t a1)
{
  v2 = sub_217734B80();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217734B80()
{
  result = qword_27CB2DE88;
  if (!qword_27CB2DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE88);
  }

  return result;
}

uint64_t sub_217734C54(uint64_t a1)
{
  v2 = sub_217734D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217734C90(uint64_t a1)
{
  v2 = sub_217734D10();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217734D10()
{
  result = qword_27CB2DE98;
  if (!qword_27CB2DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DE98);
  }

  return result;
}

uint64_t sub_217734D84(uint64_t a1)
{
  v2 = sub_217734E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217734DC0(uint64_t a1)
{
  v2 = sub_217734E40();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217734E40()
{
  result = qword_27CB2DEA8;
  if (!qword_27CB2DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEA8);
  }

  return result;
}

uint64_t sub_217734EB4(uint64_t a1)
{
  v2 = sub_217735070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217734EF0(uint64_t a1)
{
  v2 = sub_217735070();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_217734F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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

unint64_t sub_217735070()
{
  result = qword_27CB2DEB8;
  if (!qword_27CB2DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEB8);
  }

  return result;
}

uint64_t LegacyModelCodablePlaylistEntryItem.id.getter()
{
  v2 = type metadata accessor for CloudMusicVideo(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  v10 = type metadata accessor for CloudSong(0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v15 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v1);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v1, v9);
    v20 = *v9;
    v21 = v9[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_0_171();
    v23 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    v24 = OUTLINED_FUNCTION_173();
    sub_217737678(v24, v25);
    v20 = *v0;
    v26 = v0[1];
    sub_217751DE8();
    OUTLINED_FUNCTION_1_151();
    v23 = v0;
  }

  sub_2177347F0(v23, v22);
  return v20;
}

void static LegacyModelCodablePlaylistEntryItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for CloudMusicVideo(0);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  v32 = type metadata accessor for CloudSong(0);
  v33 = OUTLINED_FUNCTION_45_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v40 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v41 = OUTLINED_FUNCTION_43(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  OUTLINED_FUNCTION_6_1();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48, v49);
  v51 = &a9 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DEC0, &qword_2177A0860);
  OUTLINED_FUNCTION_45_0(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55, v56);
  v58 = &a9 - v57;
  v60 = *(v59 + 56);
  OUTLINED_FUNCTION_11_88();
  sub_2177375CC(v26, v58);
  sub_2177375CC(v24, &v58[v60]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_145();
    sub_2177375CC(v58, v47);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_3_134();
      sub_217737678(&v58[v60], v20);
      OUTLINED_FUNCTION_173();
      static CloudMusicVideo.== infix(_:_:)();
      sub_2177347F0(v20, type metadata accessor for CloudMusicVideo);
      v61 = v47;
      v62 = type metadata accessor for CloudMusicVideo;
LABEL_9:
      sub_2177347F0(v61, v62);
      OUTLINED_FUNCTION_12_74();
      sub_2177347F0(v58, v65);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_171();
    v64 = v47;
  }

  else
  {
    OUTLINED_FUNCTION_4_145();
    sub_2177375CC(v58, v51);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_2_146();
      sub_217737678(&v58[v60], v39);
      static CloudSong.== infix(_:_:)();
      sub_2177347F0(v39, type metadata accessor for CloudSong);
      v61 = v51;
      v62 = type metadata accessor for CloudSong;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_151();
    v64 = v51;
  }

  sub_2177347F0(v64, v63);
  sub_2171F0738(v58, &qword_27CB2DEC0, &qword_2177A0860);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

void LegacyModelCodablePlaylistEntryItem.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_5_55();
  v10 = type metadata accessor for CloudSong(0);
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_69();
  v15 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v22, v1);
    MEMORY[0x21CEA3550](1);
    v23 = *v1;
    v24 = v1[1];
    sub_217751FF8();
    v25 = v1 + v5[5];
    CloudMusicVideo.Attributes.hash(into:)();
    v26 = v1 + v5[6];
    sub_217264574(v4);
    sub_21738C4B0(v1 + v5[7], v36, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v36[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v35, v36, 0x100uLL);
      sub_217753208();
      sub_217264414(v4);
      sub_217264414(v4);
      sub_2172844EC(v35);
    }

    sub_217264490(v4, *(v1 + v5[8]), *(v1 + v5[8] + 8), *(v1 + v5[8] + 16), *(v1 + v5[8] + 24));
    OUTLINED_FUNCTION_0_171();
    v31 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v22, v2);
    MEMORY[0x21CEA3550](0);
    v27 = *v2;
    v28 = v2[1];
    sub_217751FF8();
    v29 = v2 + v10[5];
    CloudSong.Attributes.hash(into:)();
    sub_21738C4B0(v2 + v10[6], v36, &qword_27CB24A78, &qword_217759040);
    if (*&v36[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v35, v36, sizeof(v35));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v35);
    }

    v32 = *(v2 + v10[7]);
    sub_217753208();
    v33 = v2 + v10[8];
    v34 = *(v33 + 1);
    v36[0] = *v33;
    v36[1] = v34;
    *&v36[2] = *(v33 + 4);
    sub_217263F54();
    OUTLINED_FUNCTION_1_151();
    v31 = v2;
  }

  sub_2177347F0(v31, v30);
  OUTLINED_FUNCTION_13();
}

uint64_t LegacyModelCodablePlaylistEntryItem.hashValue.getter()
{
  sub_2177531E8();
  LegacyModelCodablePlaylistEntryItem.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217735900()
{
  sub_2177531E8();
  LegacyModelCodablePlaylistEntryItem.hash(into:)();
  return sub_217753238();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v0;
  v41 = v5;
  v6 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_5_55();
  v11 = type metadata accessor for CloudMusicVideo(0);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_60_0();
  v17 = type metadata accessor for CloudSong.Attributes(v16);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_37_10();
  v23 = type metadata accessor for CloudSong(v22);
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v4, v38);
  OUTLINED_FUNCTION_93();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v38, v2);
    sub_2171FF30C(v41, v42);
    sub_2177375CC(v2 + *(v11 + 20), v1);
    sub_21738598C();
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_0_171();
    v40 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v38, v30);
    sub_2171FF30C(v41, v42);
    sub_2177375CC(v30 + *(v23 + 20), v3);
    sub_217385938();
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_1_151();
    v40 = v30;
  }

  sub_2177347F0(v40, v39);
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v31 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_69();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_13_16();
  v16 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v3, v0);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v0, v2);
    sub_21738C4B0(v2 + *(v11 + 24), v32, &qword_27CB24A78, &qword_217759040);
    if (v33 == 1)
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v2, v24);
      v22 = &qword_27CB24A78;
      v23 = &qword_217759040;
      goto LABEL_6;
    }

    sub_2171F0738(v32, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v31, v32);
    OUTLINED_FUNCTION_84();
    v29 = sub_217751DE8();
    v30 = sub_217383824(v29);

    Dictionary<>.init(from:skippingValuesFor:)(v32, v30);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_151();
    v28 = v2;
LABEL_9:
    sub_2177347F0(v28, v27);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_134();
  sub_217737678(v0, v1);
  sub_21738C4B0(v1 + *(v5 + 24), v32, &qword_27CB243A8, &unk_217777720);
  if (v33 != 1)
  {

    sub_2171F0738(v32, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v31, v32);
    OUTLINED_FUNCTION_84();
    v25 = sub_217751DE8();
    v26 = sub_217383844(v25);

    Dictionary<>.init(from:skippingValuesFor:)(v32, v26);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_171();
    v28 = v1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v1, v21);
  v22 = &qword_27CB243A8;
  v23 = &unk_217777720;
LABEL_6:
  sub_2171F0738(v32, v22, v23);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  *&v34 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_43(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_69();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_13_16();
  v16 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v3, v0);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v0, v2);
    if (*(v2 + *(v11 + 28)))
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v2, v22);
      goto LABEL_11;
    }

    sub_2171FF30C(v34, &v34 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    Dictionary<>.init(from:skippingValuesFor:)(&v34 + 1, v33);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_151();
    v25 = v2;
LABEL_10:
    sub_2177347F0(v25, v24);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_134();
  sub_217737678(v0, v1);
  sub_21738C4B0(v1 + *(v5 + 28), &v34 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v36 != 1)
  {

    sub_2171F0738(&v34 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v34, &v34 + 8);
    v23 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v34 + 1, v23);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_171();
    v25 = v1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v1, v21);
  sub_2171F0738(&v34 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v0;
  v39 = v5;
  v6 = type metadata accessor for CloudMusicVideo(0);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_60_0();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_13_16();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_5_55();
  sub_217751DC8();
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v4, v1);
  OUTLINED_FUNCTION_173();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    v27 = OUTLINED_FUNCTION_85();
    sub_217737678(v27, v28);
    v29 = v3 + *(v12 + 32);
    if (*(v29 + 24) == 1)
    {
      OUTLINED_FUNCTION_1_151();
      v26 = v3;
      goto LABEL_6;
    }

    sub_2171FF30C(v39, v41);
    v38 = *(v29 + 16);
    v42[0] = *v29;
    v42[1] = v38;
    v43 = *(v29 + 32);
    sub_21738C4B0(v42, &v40, &qword_27CB25748, &qword_21775D870);
    sub_217751DE8();
    sub_217387700();
    OUTLINED_FUNCTION_1_151();
    v37 = v3;
LABEL_9:
    sub_2177347F0(v37, v36);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_134();
  v22 = OUTLINED_FUNCTION_204();
  sub_217737678(v22, v23);
  v24 = (v2 + *(v6 + 32));
  if (v24[3] != 1)
  {

    sub_2171FF30C(v39, v41);
    v30 = *v24;
    v31 = v24[1];
    v32 = v24[2];
    v33 = v24[3];
    sub_217751DE8();
    v34 = OUTLINED_FUNCTION_154();
    sub_21733C3CC(v34, v35, v32, v33);
    sub_2173878F0();
    OUTLINED_FUNCTION_0_171();
    v37 = v2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_171();
  v26 = v2;
LABEL_6:
  sub_2177347F0(v26, v25);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_60_0();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_13_16();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v24, v1);
    sub_2173886A0(v1 + *(v6 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_0_171();
    v26 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v24, v2);
    sub_21738864C(v2 + *(v12 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_1_151();
    v26 = v2;
  }

  sub_2177347F0(v26, v25);
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = OUTLINED_FUNCTION_13_16();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_37_10();
  v17 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v4, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v1, v3);
    sub_21738C4B0(v3 + *(v12 + 24), v30, &qword_27CB24A78, &qword_217759040);
    if (v30[2] == 1)
    {
      OUTLINED_FUNCTION_1_151();
      sub_2177347F0(v3, v27);
      v25 = &qword_27CB24A78;
      v26 = &qword_217759040;
      goto LABEL_8;
    }

    memcpy(v31, v30, 0x600uLL);
    OUTLINED_FUNCTION_27_4();
    sub_2173888E8();
    sub_217284234(v31);
    OUTLINED_FUNCTION_1_151();
    v29 = v3;
LABEL_11:
    sub_2177347F0(v29, v28);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_134();
  v22 = OUTLINED_FUNCTION_85();
  sub_217737678(v22, v23);
  sub_21738C4B0(v2 + *(v6 + 24), v30, &qword_27CB243A8, &unk_217777720);
  if (v30[2] != 1)
  {

    memcpy(v31, v30, 0x300uLL);
    OUTLINED_FUNCTION_27_4();
    sub_217388950();
    sub_21726A3FC(v31);
    OUTLINED_FUNCTION_0_171();
    v29 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_0_171();
  sub_2177347F0(v2, v24);
  v25 = &qword_27CB243A8;
  v26 = &unk_217777720;
LABEL_8:
  sub_2171F0738(v30, v25, v26);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v41 = v15;
  v16 = OUTLINED_FUNCTION_101();
  v17 = type metadata accessor for CloudMusicVideo(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v22 = OUTLINED_FUNCTION_13_16();
  v23 = type metadata accessor for CloudSong(v22);
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_37_10();
  v28 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_5_55();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v33 = OUTLINED_FUNCTION_85();
    sub_217737678(v33, v34);
    sub_21738C4B0(v12 + *(v17 + 28), v42, &qword_27CB24A90, &unk_21775D5B0);
    if (v42[2] == 1)
    {
      OUTLINED_FUNCTION_0_171();
      sub_2177347F0(v12, v35);
      sub_2171F0738(v42, &qword_27CB24A90, &unk_21775D5B0);
    }

    else
    {

      memcpy(v43, v42, 0x100uLL);
      OUTLINED_FUNCTION_27_4();
      sub_217388CF8();
      sub_2172844EC(v43);
      OUTLINED_FUNCTION_0_171();
      sub_2177347F0(v12, v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v11, v13);
    if ((*(v13 + *(v23 + 28)) & 1) == 0)
    {

      sub_2171FF30C(v41, v43);
      v37 = sub_2174D5760(v43);
      if (!a10)
      {
        v38 = v37;
        v39 = sub_217751DE8();
        sub_2174D37FC(v39, v38);
      }
    }

    OUTLINED_FUNCTION_1_151();
    sub_2177347F0(v13, v40);
  }

  OUTLINED_FUNCTION_170();
}

void LegacyModelCodablePlaylistEntryItem.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v42 = v5;
  v6 = OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  v8 = OUTLINED_FUNCTION_43(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_60_0();
  v13 = type metadata accessor for CloudSong(v12);
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_69();
  v18 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    v23 = OUTLINED_FUNCTION_204();
    sub_217737678(v23, v24);
    v25 = v3 + *(v7 + 32);
    v26 = *(v25 + 24);
    if (v26 != 1)
    {
      v29 = *(v25 + 16);
      v31 = *v25;
      v30 = *(v25 + 8);
      sub_217221020(*v25);
      sub_217751DE8();

      sub_2171FF30C(v42, v43);
      v32 = sub_2174D5C54(v31, v30, v29 & 1, v26, v43);
      if (!v1)
      {
        v38 = v32;
        v39 = sub_217751DE8();
        sub_2174D37FC(v39, v38);
      }
    }

    OUTLINED_FUNCTION_0_171();
    v34 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v2, v4);
    v27 = v4 + *(v13 + 32);
    v28 = *(v27 + 24);
    if (v28 != 1)
    {
      v35 = *(v27 + 32);
      v36 = *(v27 + 16);
      v44 = *v27;
      v45 = v36 & 1;
      v46 = v28;
      v47 = v35;
      sub_217221020(v44);
      sub_217751DE8();
      sub_217751DE8();

      sub_2171FF30C(v42, v43);
      v37 = sub_2174D5DD4(&v44);
      if (!v1)
      {
        v40 = v37;
        v41 = sub_217751DE8();
        sub_2174D37FC(v41, v40);
      }
    }

    OUTLINED_FUNCTION_1_151();
    v34 = v4;
  }

  sub_2177347F0(v34, v33);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217736D20(uint64_t a1)
{
  v2 = sub_217737624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217736D5C(uint64_t a1)
{
  v2 = sub_217737624();

  return MEMORY[0x2821FE720](a1, v2);
}

void LegacyModelCodablePlaylistEntryItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v73 = v3;
  v69 = sub_217752B38();
  v4 = OUTLINED_FUNCTION_0_0(v69);
  v71 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v70 = v10 - v9;
  v11 = type metadata accessor for CloudMusicVideo(0);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v72 = v17 - v16;
  v18 = type metadata accessor for CloudSong(0);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DEC8, &unk_2177A0868);
  OUTLINED_FUNCTION_0_0(v26);
  v74 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v66 - v32;
  v34 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v35 = OUTLINED_FUNCTION_43(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = v2[4];
  v43 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_217737624();
  sub_2177532C8();
  if (!v0)
  {
    v67 = v41;
    v68 = v25;
    v80 = v34;
    v44 = v74;
    sub_21733BE84();
    sub_217752EA8();
    v45 = v26;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    v75 = v46;
    v76 = v47;
    v77 = v48;
    if (static Array<A>.~= infix(_:_:)(off_280BE7628, &v75))
    {
      goto LABEL_12;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v49 = qword_280BE24F0 == v46 && *algn_280BE24F8 == v47;
    if (v49 || (sub_217753058() & 1) != 0)
    {
LABEL_12:

      sub_2171FF30C(v43, &v75);
      v50 = v68;
      CloudSong.init(from:)();
      (*(v44 + 8))(v33, v26);
      OUTLINED_FUNCTION_2_146();
      sub_217737678(v50, v67);
    }

    else
    {
      if (qword_280BE6EA0 != -1)
      {
        swift_once();
      }

      v75 = v46;
      v76 = v47;
      v77 = v48;
      v53 = static Array<A>.~= infix(_:_:)(off_280BE6EA8, &v75);
      v54 = v72;
      if (!v53)
      {
        if (qword_280BE6EC8 != -1)
        {
          swift_once();
        }

        v55 = qword_280BE6ED0 == v46 && *algn_280BE6ED8 == v47;
        if (!v55 && (sub_217753058() & 1) == 0)
        {
          v56 = v43[4];
          __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          v57 = v46;
          v58 = v44;
          OUTLINED_FUNCTION_204();
          sub_217753298();
          v75 = 0;
          v76 = 0xE000000000000000;
          sub_217752AA8();
          v73 = v33;
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v78 = 34;
          v79 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v57, v47);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v78, v79);

          MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B6B20);
          v59 = v70;
          sub_217752B08();
          v60 = sub_217752B48();
          swift_allocError();
          v62 = v61;
          v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v62 = v80;
          v64 = v71;
          v65 = v69;
          (*(v71 + 16))(v62 + v63, v59, v69);
          (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
          swift_willThrow();
          (*(v64 + 8))(v59, v65);
          (*(v58 + 8))(v73, v45);
          goto LABEL_14;
        }
      }

      sub_2171FF30C(v43, &v75);
      CloudMusicVideo.init(from:)();
      (*(v44 + 8))(v33, v45);
      OUTLINED_FUNCTION_3_134();
      sub_217737678(v54, v67);
    }

    swift_storeEnumTagMultiPayload();
    v51 = OUTLINED_FUNCTION_154();
    sub_217737678(v51, v52);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_170();
}

uint64_t LegacyModelCodablePlaylistEntryItem.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudMusicVideo(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_5_55();
  v9 = type metadata accessor for CloudSong(0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_60_0();
  v14 = type metadata accessor for LegacyModelCodablePlaylistEntryItem();
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_4_145();
  sub_2177375CC(v0, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_134();
    sub_217737678(v21, v1);
    CloudMusicVideo.encode(to:)();
    OUTLINED_FUNCTION_0_171();
    v23 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_2_146();
    sub_217737678(v21, v2);
    CloudSong.encode(to:)(v0);
    OUTLINED_FUNCTION_1_151();
    v23 = v2;
  }

  return sub_2177347F0(v23, v22);
}

uint64_t sub_2177375CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_217737624()
{
  result = qword_27CB2DED0;
  if (!qword_27CB2DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DED0);
  }

  return result;
}

uint64_t sub_217737678(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_2177376D4()
{
  result = qword_27CB2DED8;
  if (!qword_27CB2DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DED8);
  }

  return result;
}

unint64_t sub_21773772C()
{
  result = qword_27CB2DEE0;
  if (!qword_27CB2DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEE0);
  }

  return result;
}

unint64_t sub_217737784()
{
  result = qword_27CB2DEE8;
  if (!qword_27CB2DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEE8);
  }

  return result;
}

unint64_t sub_2177377DC()
{
  result = qword_27CB2DEF0;
  if (!qword_27CB2DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DEF0);
  }

  return result;
}

uint64_t sub_217737830(uint64_t a1)
{
  result = sub_217737B9C(&qword_27CB2DEF8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2177378AC()
{
  result = qword_27CB2DF08;
  if (!qword_27CB2DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF08);
  }

  return result;
}

unint64_t sub_217737904()
{
  result = qword_27CB2DF10;
  if (!qword_27CB2DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF10);
  }

  return result;
}

unint64_t sub_21773795C()
{
  result = qword_27CB2DF18;
  if (!qword_27CB2DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF18);
  }

  return result;
}

unint64_t sub_2177379B4()
{
  result = qword_27CB2DF20;
  if (!qword_27CB2DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF20);
  }

  return result;
}

unint64_t sub_217737A0C()
{
  result = qword_27CB2DF28;
  if (!qword_27CB2DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF28);
  }

  return result;
}

unint64_t sub_217737A64()
{
  result = qword_27CB2DF30;
  if (!qword_27CB2DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF30);
  }

  return result;
}

unint64_t sub_217737ABC()
{
  result = qword_27CB2DF38;
  if (!qword_27CB2DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF38);
  }

  return result;
}

unint64_t sub_217737B14()
{
  result = qword_27CB2DF40;
  if (!qword_27CB2DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF40);
  }

  return result;
}

uint64_t sub_217737B9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyModelCodablePlaylistEntryItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_217737C20(_BYTE *result, int a2, int a3)
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

unint64_t sub_217737D10()
{
  result = qword_27CB2DF50;
  if (!qword_27CB2DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF50);
  }

  return result;
}

unint64_t sub_217737D68()
{
  result = qword_27CB2DF58;
  if (!qword_27CB2DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF58);
  }

  return result;
}

unint64_t sub_217737DC0()
{
  result = qword_27CB2DF60;
  if (!qword_27CB2DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF60);
  }

  return result;
}

unint64_t sub_217737E18()
{
  result = qword_27CB2DF68;
  if (!qword_27CB2DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF68);
  }

  return result;
}

unint64_t sub_217737E70()
{
  result = qword_27CB2DF70;
  if (!qword_27CB2DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF70);
  }

  return result;
}

unint64_t sub_217737EC8()
{
  result = qword_27CB2DF78;
  if (!qword_27CB2DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF78);
  }

  return result;
}

unint64_t sub_217737F20()
{
  result = qword_27CB2DF80;
  if (!qword_27CB2DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF80);
  }

  return result;
}

unint64_t sub_217737F78()
{
  result = qword_27CB2DF88;
  if (!qword_27CB2DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF88);
  }

  return result;
}

unint64_t sub_217737FD0()
{
  result = qword_27CB2DF90;
  if (!qword_27CB2DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF90);
  }

  return result;
}

unint64_t sub_217738028()
{
  result = qword_27CB2DF98;
  if (!qword_27CB2DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DF98);
  }

  return result;
}

unint64_t sub_217738080()
{
  result = qword_27CB2DFA0;
  if (!qword_27CB2DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFA0);
  }

  return result;
}

void sub_217738170(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217751F98();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  if ([v10 statusCode] < 400)
  {
    goto LABEL_2;
  }

  v13 = sub_217751348();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_13_2();
  sub_21727591C(v16, v17);
  sub_217751338();
  sub_217738C20();
  sub_217751308();
  if (!v41[2])
  {

    v26 = OUTLINED_FUNCTION_13_2();
    sub_217275694(v26, v27);
LABEL_2:
    v11 = OUTLINED_FUNCTION_13_2();
    sub_217275694(v11, v12);

    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v37 = v41[5];
  v38 = v41[4];
  v36 = v41[6];
  v18 = v41[11];
  v34 = v41[8];
  v35 = v41[10];
  v30 = v41[12];
  v31 = v41[13];
  v20 = v41[14];
  v19 = v41[15];
  v21 = v41[17];
  v39 = v41[16];
  v40 = v41[7];
  v33 = v41[9];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172838F8(v30, v31);
  v32 = v21;
  sub_2171FB568(v39, v21);

  v22 = OUTLINED_FUNCTION_13_2();
  sub_217275694(v22, v23);
  if (v31 >= 2)
  {
    sub_217751DE8();
    v24 = v30;
    v25 = v31;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (v33)
  {
    v28 = v34;
  }

  else
  {
    v28 = 0;
  }

  if (v33)
  {
    v29 = v33;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  sub_217283940(v30, v31);
  sub_217283988(v39, v32);
  *a2 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v36;
  *(a2 + 24) = v40;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v35;
  *(a2 + 56) = v18;
  *(a2 + 64) = v24;
  *(a2 + 72) = v25;
  *(a2 + 80) = v9;
  *(a2 + 88) = v8;
  *(a2 + 96) = v10;
}

uint64_t MusicDataRequest.Error.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.detailText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.id.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.Error.source.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  return sub_217751DE8();
}

id MusicDataRequest.Error.originalResponse.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v5 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  sub_21727591C(v2, v3);

  return v5;
}

uint64_t static MusicDataRequest.Error.Source.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

unint64_t MusicDataRequest.Error.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v17 = v0[6];
  v16 = v0[7];
  v6 = v0[9];
  v15 = v0[8];
  v20 = v0[10];
  v19 = v0[11];
  v18 = v0[12];
  v21 = *v0;
  v7 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v7);

  MEMORY[0x21CEA23B0](44, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0x757461747320200ALL, 0xEB00000000203A73);

  v8 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](44, 0xE100000000000000);
  OUTLINED_FUNCTION_1_152();

  MEMORY[0x21CEA23B0](v2, v3);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  sub_217752AA8();

  MEMORY[0x21CEA23B0](v4, v5);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  MEMORY[0x21CEA23B0](v17, v16);
  OUTLINED_FUNCTION_3_135();
  OUTLINED_FUNCTION_1_152();

  if (v6)
  {
    sub_217752AA8();

    OUTLINED_FUNCTION_2_147();
    v22 = v9;
    v23 = v10;
    MEMORY[0x21CEA23B0](v15, v6);
    MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
    MEMORY[0x21CEA23B0](v22, v23);

    OUTLINED_FUNCTION_1_152();
  }

  sub_217752AA8();

  sub_2175AA670(0);
  sub_21733A5C8();
  v11 = sub_217752998();
  v13 = v12;

  MEMORY[0x21CEA23B0](v11, v13);

  MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177B6BA0);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return 0xD000000000000017;
}

uint64_t MusicDataRequest.Error.Source.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217752AA8();

  OUTLINED_FUNCTION_2_147();
  v5 = v3;
  MEMORY[0x21CEA23B0](v1, v2);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v5;
}

uint64_t sub_217738B68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_217738BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217738C20()
{
  result = qword_27CB2DFA8;
  if (!qword_27CB2DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFA8);
  }

  return result;
}

uint64_t CloudVideoArtwork.init(previewFrame:video:videoFile:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  memcpy(a4, __src, 0x1B8uLL);
  v7 = type metadata accessor for CloudVideoArtwork();
  result = sub_21751AF10(a2, &a4[*(v7 + 20)]);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for CloudVideoArtwork()
{
  result = qword_280BE88D8;
  if (!qword_280BE88D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CloudVideoArtwork.previewFrame.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1B8uLL);
  memcpy(a1, v1, 0x1B8uLL);
  return sub_2171F5110(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudVideoArtwork.videoFile.getter()
{
  v1 = *(v0 + *(type metadata accessor for CloudVideoArtwork() + 24));

  return sub_217751DE8();
}

BOOL static CloudVideoArtwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v48 - v26;
  memcpy(v58, v5, sizeof(v58));
  memcpy(v59, v3, sizeof(v59));
  memcpy(v56, v5, 0x1B8uLL);
  memcpy(&v56[440], v3, 0x1B8uLL);
  memcpy(v60, v5, 0x1B8uLL);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v60) == 1)
  {
    OUTLINED_FUNCTION_176(v55);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v55) == 1)
    {
      v50 = v15;
      v51 = v9;
      memcpy(v57, v56, sizeof(v57));
      sub_2171F5110(v58, v54, &qword_27CB25000, &unk_21776EA00);
      sub_2171F5110(v59, v54, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v57, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(v55, v56, sizeof(v55));
    sub_2171F5110(v58, v57, &qword_27CB25000, &unk_21776EA00);
    sub_2171F5110(v59, v57, &qword_27CB25000, &unk_21776EA00);
    v28 = &unk_27CB25008;
    v29 = &unk_21778F850;
    v30 = v55;
LABEL_16:
    sub_2171F0738(v30, v28, v29);
    return 0;
  }

  OUTLINED_FUNCTION_176(v54);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v54) == 1)
  {
    goto LABEL_5;
  }

  v50 = v15;
  v51 = v9;
  OUTLINED_FUNCTION_176(v52);
  OUTLINED_FUNCTION_176(v55);
  memcpy(v57, v56, sizeof(v57));
  sub_2171F5110(v58, v53, &qword_27CB25000, &unk_21776EA00);
  sub_2171F5110(v59, v53, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v32 = v31;
  sub_2171F0738(v52, &qword_27CB25000, &unk_21776EA00);
  memcpy(v53, v56, sizeof(v53));
  sub_2171F0738(v53, &qword_27CB25000, &unk_21776EA00);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  v49 = type metadata accessor for CloudVideoArtwork();
  v33 = *(v49 + 20);
  v34 = *(v21 + 48);
  sub_2171F5110(&v5[v33], v27, &unk_27CB277C0, &qword_217758DC0);
  sub_2171F5110(&v3[v33], &v27[v34], &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(v27);
  if (v35)
  {
    OUTLINED_FUNCTION_73(&v27[v34]);
    if (v35)
    {
      sub_2171F0738(v27, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_2171F5110(v27, v20, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_73(&v27[v34]);
  if (v35)
  {
    (*(v51 + 8))(v20, v6);
LABEL_15:
    v28 = &qword_27CB24840;
    v29 = &unk_217758DD0;
    v30 = v27;
    goto LABEL_16;
  }

  v37 = v51;
  v38 = &v27[v34];
  v39 = v50;
  (*(v51 + 32))(v50, v38, v6);
  OUTLINED_FUNCTION_0_172();
  sub_21773A258(v40);
  v41 = sub_217751F08();
  v42 = *(v37 + 8);
  v42(v39, v6);
  v42(v20, v6);
  sub_2171F0738(v27, &unk_27CB277C0, &qword_217758DC0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v43 = *(v49 + 24);
  v44 = *&v3[v43];
  if (*&v5[v43])
  {
    if (v44)
    {
      v45 = *&v3[v43];
      sub_217751DE8();
      sub_217271848();
      v47 = v46;

      if (v47)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v44;
}

uint64_t sub_217739334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4677656976657270 && a2 == 0xEC000000656D6172;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F65646976 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C69466F65646976 && a2 == 0xE900000000000065)
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

uint64_t sub_21773944C(char a1)
{
  if (!a1)
  {
    return 0x4677656976657270;
  }

  if (a1 == 1)
  {
    return 0x6F65646976;
  }

  return 0x6C69466F65646976;
}

uint64_t sub_2177394B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217739334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2177394DC(uint64_t a1)
{
  v2 = sub_217739820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217739518(uint64_t a1)
{
  v2 = sub_217739820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudVideoArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB0, &unk_2177A1240);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217739820();
  sub_2177532F8();
  memcpy(v23, v3, 0x1B8uLL);
  memcpy(v22, v3, sizeof(v22));
  v23[463] = 0;
  sub_2171F5110(v23, v21, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21773A058(&qword_280BE42D8);
  OUTLINED_FUNCTION_11_10();
  if (v2)
  {
    memcpy(v21, v22, sizeof(v21));
    sub_2171F0738(v21, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v21, v22, sizeof(v21));
    sub_2171F0738(v21, &qword_27CB25000, &unk_21776EA00);
    v15 = type metadata accessor for CloudVideoArtwork();
    v16 = *(v15 + 20);
    LOBYTE(v20) = 1;
    sub_2177516D8();
    OUTLINED_FUNCTION_0_172();
    sub_21773A258(v17);
    OUTLINED_FUNCTION_11_10();
    v20 = *&v3[*(v15 + 24)];
    v23[462] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB8, &unk_2177A1250);
    sub_21773A0CC(&unk_27CB2DFC0);
    OUTLINED_FUNCTION_11_10();
  }

  return (*(v7 + 8))(v13, v5);
}

unint64_t sub_217739820()
{
  result = qword_280BE3CD8[0];
  if (!qword_280BE3CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3CD8);
  }

  return result;
}

unint64_t sub_217739874(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24838, &qword_217758DC8);
    sub_21773A258(&unk_280BE3CB8);
    sub_21773A258(&unk_280BE3CC0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void CloudVideoArtwork.hash(into:)(const void *a1)
{
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
  v17 = &v22[-v16 - 8];
  memcpy(v23, v1, sizeof(v23));
  v18 = v1[54];
  memcpy(v24, v1, sizeof(v24));
  v25 = v18;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v24) == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    sub_217753208();
    CloudArtwork.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v18);
  }

  v19 = type metadata accessor for CloudVideoArtwork();
  sub_2171F5110(v1 + *(v19 + 20), v17, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v6 + 32))(v12, v17, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_172();
    sub_21773A258(v20);
    sub_217751EB8();
    (*(v6 + 8))(v12, v3);
  }

  if (*(v1 + *(v19 + 24)))
  {
    sub_217753208();
    sub_21728115C();
  }

  else
  {
    sub_217753208();
  }
}

uint64_t CloudVideoArtwork.hashValue.getter()
{
  sub_2177531E8();
  CloudVideoArtwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t CloudVideoArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFD0, &qword_2177A1260);
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v32 = v11;
  v33 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  v16 = type metadata accessor for CloudVideoArtwork();
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  v25 = a1[3];
  v24 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_217739820();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v36[463] = 0;
  sub_21773A058(&qword_280BE42D0);
  OUTLINED_FUNCTION_6_116();
  sub_217752E58();
  memcpy(v23, v36, 0x1B8uLL);
  sub_2177516D8();
  LOBYTE(v35) = 1;
  OUTLINED_FUNCTION_0_172();
  sub_21773A258(v26);
  OUTLINED_FUNCTION_6_116();
  sub_217752E58();
  sub_21751AF10(v8, &v23[*(v16 + 20)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFB8, &unk_2177A1250);
  v36[462] = 2;
  sub_21773A0CC(&unk_280BE2368);
  OUTLINED_FUNCTION_6_116();
  v30 = 0;
  sub_217752E58();
  v27 = OUTLINED_FUNCTION_2_148();
  v28(v27);
  *&v23[*(v16 + 24)] = v35;
  sub_21773A150(v23, v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_21773A1B4(v23);
}

uint64_t sub_21773A01C()
{
  sub_2177531E8();
  CloudVideoArtwork.hash(into:)(v1);
  return sub_217753238();
}

unint64_t sub_21773A058(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DEF40();
    sub_2172DEF94();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21773A0CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2DFB8, &unk_2177A1250);
    sub_217739874(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21773A150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudVideoArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21773A1B4(uint64_t a1)
{
  v2 = type metadata accessor for CloudVideoArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21773A258(uint64_t a1)
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

void sub_21773A2C4()
{
  sub_217351B44(319, &qword_280BE7DF0, &qword_27CB243F0, &qword_21775D690);
  if (v0 <= 0x3F)
  {
    sub_2172E2DB0();
    if (v1 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7560, &qword_27CB2DFB8, &unk_2177A1250);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudVideoArtwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21773A470()
{
  result = qword_27CB2DFE0;
  if (!qword_27CB2DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFE0);
  }

  return result;
}

unint64_t sub_21773A4C8()
{
  result = qword_280BE3CC8;
  if (!qword_280BE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CC8);
  }

  return result;
}

unint64_t sub_21773A520()
{
  result = qword_280BE3CD0;
  if (!qword_280BE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CD0);
  }

  return result;
}

uint64_t CloudDisplayTextContainer.stringForDisplay.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t static CloudDisplayTextContainer.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21773A600(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002177B6BC0 == a2)
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

uint64_t sub_21773A6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21773A600(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21773A6CC(uint64_t a1)
{
  v2 = sub_21773A870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21773A708(uint64_t a1)
{
  v2 = sub_21773A870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudDisplayTextContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFE8, &qword_2177A1470);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21773A870();
  sub_2177532F8();
  sub_217752EF8();
  return (*(v7 + 8))(v12, v2);
}

unint64_t sub_21773A870()
{
  result = qword_27CB2DFF0;
  if (!qword_27CB2DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2DFF0);
  }

  return result;
}

uint64_t CloudDisplayTextContainer.hash(into:)()
{
  if (!v0[1])
  {
    return sub_217753208();
  }

  v1 = *v0;
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudDisplayTextContainer.hashValue.getter()
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

uint64_t CloudDisplayTextContainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2DFF8, &qword_2177A1478);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v20 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21773A870();
  sub_2177532C8();
  if (!v2)
  {
    v16 = sub_217752E18();
    v18 = v17;
    (*(v9 + 8))(v14, v3);
    *a2 = v16;
    a2[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21773AB50()
{
  result = qword_27CB2E000;
  if (!qword_27CB2E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudDisplayTextContainer.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21773AC64()
{
  result = qword_27CB2E008;
  if (!qword_27CB2E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E008);
  }

  return result;
}

unint64_t sub_21773ACBC()
{
  result = qword_27CB2E010;
  if (!qword_27CB2E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E010);
  }

  return result;
}

unint64_t sub_21773AD14()
{
  result = qword_27CB2E018;
  if (!qword_27CB2E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E018);
  }

  return result;
}

uint64_t Album.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void Album.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9580 != -1)
  {
    OUTLINED_FUNCTION_100();
  }

  v26 = qword_280C027C0;

  sub_2176CA810(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Album.genreNames.getter()
{
  if (qword_280BE9670 != -1)
  {
    OUTLINED_FUNCTION_97_11();
  }

  result = sub_2172A43B4(qword_280C02810);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_21773B1B0(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  v2 = sub_2172A4380();
  return OUTLINED_FUNCTION_41_35(v2, v3);
}

void Album.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE9568 != -1)
  {
    swift_once();
  }

  v26 = qword_280C027A8;

  sub_2176CAFA0(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Album.trackCount.getter()
{
  if (qword_280BE9648 != -1)
  {
    OUTLINED_FUNCTION_117_14();
  }

  result = sub_2172A4394();
  if (v1)
  {
    return 0;
  }

  return result;
}

void Album._friendsWhoListened.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE9518 != -1)
  {
    swift_once();
  }

  v30 = qword_280C02770;

  sub_2176CB000(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void Album._pivotMetadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE8218 != -1)
  {
    swift_once();
  }

  v28 = qword_280C024D8;

  sub_2176CB01C(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21773B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BE7F08 != -1)
  {
    swift_once();
  }

  if (*(off_280BE7F10 + 2))
  {
    v14 = *(off_280BE7F10 + 4);
    v15 = *(off_280BE7F10 + 5);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](58, 0xE100000000000000);
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v9, v10);

    *(v4 + 104) = 0;
    *(v4 + 112) = 1;
    *&v13 = MEMORY[0x277D84F90];
    *(&v13 + 1) = MEMORY[0x277D84F90];
    v11 = sub_2173C381C(a1, a2, v14, v15, 2, 0, 2, 0, v13, MEMORY[0x277D84F90], a4);

    return v11;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000034, 0x80000002177AD6F0);
    MEMORY[0x21CEA23B0](0x6D75626C41, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD730);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21773BB2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

void Album.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE9490 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02720;

  sub_2176CA9F0(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21773BC30(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t sub_21773BCA8(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A4394();
}

uint64_t static Album.== infix(_:_:)(void *a1, void *a2)
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

uint64_t Album.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_31();
  v314 = v5;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v6, v7);
  v313 = &v311 - v8;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v311 - v11;
  *&v319 = sub_2177517D8();
  v13 = OUTLINED_FUNCTION_0_0(v319);
  v317 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  OUTLINED_FUNCTION_31();
  v312 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  *&v321 = &v311 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  OUTLINED_FUNCTION_31();
  *&v320 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v311 - v28;
  *&v322 = sub_2177516D8();
  v30 = OUTLINED_FUNCTION_0_0(v322);
  v316 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30, v34);
  OUTLINED_FUNCTION_31();
  v315 = v35;
  OUTLINED_FUNCTION_79_2();
  v38 = MEMORY[0x28223BE20](v36, v37);
  v40 = &v311 - v39;
  v356 = 0x286D75626C41;
  v357 = 0xE600000000000000;
  *&v341 = 0x22203A646920200ALL;
  *(&v341 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v38);
  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  OUTLINED_FUNCTION_24_0();
  *&v341 = v41 | 0x6C74697400000000;
  *(&v341 + 1) = 0xEC00000022203A65;
  if (qword_280BE9470 == -1)
  {
    goto LABEL_2;
  }

LABEL_197:
  OUTLINED_FUNCTION_118_10();
LABEL_2:
  v42 = sub_2172A4380();
  v44 = OUTLINED_FUNCTION_41_35(v42, v43);
  if (v46)
  {
    v47 = 0xE000000000000000;
  }

  else
  {
    v47 = v45;
  }

  MEMORY[0x21CEA23B0](v44, v47);

  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  *&v341 = 0xD000000000000011;
  *(&v341 + 1) = 0x80000002177B4760;
  if (qword_280BE9680 != -1)
  {
    OUTLINED_FUNCTION_108_11();
  }

  v48 = sub_2172A4380();
  v50 = OUTLINED_FUNCTION_41_35(v48, v49);
  if (v46)
  {
    v52 = 0xE000000000000000;
  }

  else
  {
    v52 = v51;
  }

  MEMORY[0x21CEA23B0](v50, v52);

  OUTLINED_FUNCTION_17_69();
  OUTLINED_FUNCTION_51_29();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  OUTLINED_FUNCTION_31_11();
  v53 = OUTLINED_FUNCTION_30_3();
  v54 = sub_2172E3DC0(v53 & 0xFFFFFFFFFFFFLL | 0x7255000000000000, 0xE90000000000006CLL);
  sub_2176CA7D0(v54, v55, v56, v57, v58, v59, v60, v61, v311, v312, v313, v314, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328);

  if (__swift_getEnumTagSinglePayload(v29, 1, v322) == 1)
  {
    sub_2171F06D8(v29, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v62 = v316;
    v63 = v322;
    (*(v316 + 32))(v40, v29, v322);
    OUTLINED_FUNCTION_207();
    *&v341 = v65;
    *(&v341 + 1) = v64;
    sub_21736C310();
    v66 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v66);

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();

    (*(v62 + 8))(v40, v63);
  }

  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA81C(v67, v68, v69, v70, v71, v72, v73, v74, v311, v312, v313, v314, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326);
  v75 = v341;
  if (v341 != 2)
  {
    *&v341 = 0;
    *(&v341 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v348) = v75 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  sub_2172A4380();
  if (v76)
  {
    OUTLINED_FUNCTION_24_0();
    *&v341 = v77 | 0x79706F6300000000;
    *(&v341 + 1) = 0xEF203A7468676972;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE9580 != -1)
  {
    OUTLINED_FUNCTION_100();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA810(v78, v79, v80, v81, v82, v83, v84, v85, v311, v312, v313, v314, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324);
  v352[0] = v341;
  v352[1] = v342;
  v352[2] = v343;
  v352[3] = v344;
  v353 = v342;
  v354 = v343;
  v355 = v344;
  if (*(&v341 + 1) != 1)
  {
    v348 = 0xD000000000000014;
    v349 = 0x80000002177AB940;
    v342 = v353;
    v343 = v354;
    v344 = v355;
    v86 = EditorialNotes.debugDescription.getter();
    v88 = v87;
    sub_2171F06D8(v352, &qword_27CB24B70, &unk_217759460);
    *&v338[0] = v86;
    *(&v338[0] + 1) = v88;
    *&v329 = 10;
    *(&v329 + 1) = 0xE100000000000000;
    *&v335 = 2105354;
    *(&v335 + 1) = 0xE300000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_4_146();
    v311 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v89 = OUTLINED_FUNCTION_49_30();
    v91 = v90;

    MEMORY[0x21CEA23B0](v89, v91);

    MEMORY[0x21CEA23B0](v348, v349);
  }

  v350 = 0;
  v351 = 0xE000000000000000;
  if (qword_280BE9670 != -1)
  {
    OUTLINED_FUNCTION_97_11();
  }

  v318 = v1;
  v92 = sub_2172A43B4(qword_280C02810);
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
  }

  v94 = *(v93 + 16);
  if (v94)
  {
    v95 = (v93 + 40);
    do
    {
      v97 = *(v95 - 1);
      v96 = *v95;
      if ((v351 & 0x2000000000000000) != 0)
      {
        v98 = HIBYTE(v351) & 0xF;
      }

      else
      {
        v98 = v350 & 0xFFFFFFFFFFFFLL;
      }

      v99 = *v95;
      sub_217751DE8();
      if (v98)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v341 = 0x22202020200ALL;
      *(&v341 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v97, v96);

      OUTLINED_FUNCTION_17_69();
      MEMORY[0x21CEA23B0](v341, *(&v341 + 1));

      v95 += 2;
      --v94;
    }

    while (v94);

    v100 = v350;
    v101 = v351;
  }

  else
  {

    v100 = 0;
    v101 = 0xE000000000000000;
  }

  v102 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v102 = v100 & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {
    OUTLINED_FUNCTION_207();
    *&v341 = v104 + 1;
    *(&v341 + 1) = v103;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v105, v106, v107, v108, v109, v110, v111, v315, v316, v317, v318, v319, SDWORD2(v319), SWORD6(v319), SBYTE14(v319), SHIBYTE(v319), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324);
  if (v119 != 2)
  {
    OUTLINED_FUNCTION_207();
    *&v341 = v121 + 3;
    *(&v341 + 1) = v120;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
  }

  v122 = v321;
  if (qword_280BE9660 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02808, v112, v113, v114, v115, v116, v117, v118, v315, v316, v317, v318, v319, SDWORD2(v319), SWORD6(v319), SBYTE14(v319), SHIBYTE(v319), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324);
  if (v130 != 2)
  {
    OUTLINED_FUNCTION_207();
    *&v341 = v132;
    *(&v341 + 1) = v131;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
    v122 = v321;
  }

  if (qword_280BE9400 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C026F0, v123, v124, v125, v126, v127, v128, v129, v315, v316, v317, v318, v319, SDWORD2(v319), SWORD6(v319), SBYTE14(v319), SHIBYTE(v319), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324);
  if (v140 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v341 = v141 | 0x6953736900000000;
    *(&v341 + 1) = 0xEE00203A656C676ELL;
    OUTLINED_FUNCTION_61_23();

    OUTLINED_FUNCTION_14_74();
    v122 = v321;
  }

  if (qword_280BE9628 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027E8, v133, v134, v135, v136, v137, v138, v139, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  v142 = v319;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v319);
  v40 = v317;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v12, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v311 = *(v317 + 32);
    v311(v122, v12, v142);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for CloudFormatter();
    v145 = __swift_project_value_buffer(v144, qword_280BE8918);
    v12 = v313;
    (*(v40 + 16))(v313, v122, v142);
    v146 = OUTLINED_FUNCTION_45_3();
    __swift_storeEnumTagSinglePayload(v146, v147, 1, v142);
    v148 = v314;
    sub_217202078(v12, v314, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v148, 1, v142) == 1)
    {
      sub_2171F06D8(v12, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v148, &qword_27CB241C0, &qword_217759480);
      v149 = *(v40 + 8);
      v40 += 8;
      v149(v122, v142);
    }

    else
    {
      v122 = v312;
      v311(v312, v148, v142);
      v150 = *(v145 + *(v144 + 20));
      v151 = sub_2177517A8();
      v152 = [v150 stringFromDate_];

      v153 = sub_217751F48();
      v155 = v154;

      v156 = *(v40 + 8);
      v40 += 8;
      v156(v122, v142);
      LOBYTE(v122) = v156;
      sub_2171F06D8(v12, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_207();
      *&v341 = v158 + 2;
      *(&v341 + 1) = v157;
      MEMORY[0x21CEA23B0](v153, v155);

      OUTLINED_FUNCTION_17_69();
      OUTLINED_FUNCTION_14_74();

      v156(v321, v142);
    }
  }

  OUTLINED_FUNCTION_207();
  *&v341 = v160;
  *(&v341 + 1) = v159;
  if (qword_280BE9648 != -1)
  {
    OUTLINED_FUNCTION_117_14();
  }

  v161 = sub_2172A4394();
  if (v162)
  {
    v163 = 0;
  }

  else
  {
    v163 = v161;
  }

  v348 = v163;
  v164 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v164);

  OUTLINED_FUNCTION_14_74();

  if (qword_280BE9480 != -1)
  {
    swift_once();
  }

  sub_2172A4380();
  if (v165)
  {
    OUTLINED_FUNCTION_24_0();
    *&v341 = v172 | 0x3A63707500000000;
    *(&v341 + 1) = 0xEA00000000002220;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();
  }

  if (qword_280BE9478 != -1)
  {
    swift_once();
  }

  v29 = v320;
  sub_2176CA7D0(qword_280C02708, v165, v166, v167, v168, v169, v170, v171, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  if (__swift_getEnumTagSinglePayload(v29, 1, v322) == 1)
  {
    sub_2171F06D8(v29, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v122 = v315;
    v173 = v316;
    v174 = v322;
    (*(v316 + 32))(v315, v29, v322);
    OUTLINED_FUNCTION_24_0();
    *&v341 = v175 | 0x3A6C727500000000;
    *(&v341 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v176 = sub_217752FC8();
    v29 = v177;
    MEMORY[0x21CEA23B0](v176);

    OUTLINED_FUNCTION_17_69();
    OUTLINED_FUNCTION_14_74();

    v178 = *(v173 + 8);
    v12 = (v173 + 8);
    v178(v122, v174);
  }

  if (qword_280BE9430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA7B4(v179, v180, v181, v182, v183, v184, v185, v186, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  if (v345)
  {
    OUTLINED_FUNCTION_35_42();
    *&v335 = 0;
    *(&v335 + 1) = 0xE000000000000000;
    v29 = &unk_21776C4F0;
    v187 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v187, v188, v189, &unk_21776C4F0);
    v190 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v190, v191, v192, &unk_21776C4F0);
    OUTLINED_FUNCTION_49_36();
    sub_21725CF00(v12, v122);
    OUTLINED_FUNCTION_41_42();
    v193 = BYTE8(v341);
    v194 = (v12 + 32);
    v1 = &qword_27CB27BD0;
    if (BYTE8(v341))
    {
LABEL_83:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v46)
      {

        sub_2172945D4();
        goto LABEL_89;
      }
    }

    else
    {
      while (1)
      {
        v195 = *(v12 + 2);
        if (v29 == v195)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
          goto LABEL_197;
        }

        if (v29 >= v195)
        {
          goto LABEL_184;
        }

        sub_217202078(v194, v338, &qword_27CB27BD0, &qword_21776B8C0);
        v196 = OUTLINED_FUNCTION_45_3();
        v198 = sub_217283C5C(v196, v197);
        sub_217294118(v198, v199, v200, v201, v202, v203, v204, v205);
        sub_2171F06D8(v338, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_89:
        v321 = v330;
        v322 = v329;
        v320 = v331[0];
        v40 = __OFADD__(v29, 1);
        if (v193)
        {
          sub_21725CF00(v12, 1);
          if (v40)
          {
            goto LABEL_183;
          }
        }

        else
        {
          sub_21725CF00(v12, 0);
          if (v40)
          {
            goto LABEL_182;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v206)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v329 = 10;
        *(&v329 + 1) = 0xE100000000000000;
        v207 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v207);

        v40 = *(&v329 + 1);
        MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

        sub_217284498(v338);
        ++v29;
        v194 += 64;
        if (v193)
        {
          goto LABEL_83;
        }
      }
    }

    v346 = v29;
    sub_2171F06D8(&v341, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v341 = v208 | 0x6974726100000000;
    *(&v341 + 1) = 0xEE005B203A737473;
    v29 = *(&v335 + 1);
    v338[0] = v335;
    OUTLINED_FUNCTION_2_118();
    *&v332 = v210;
    *(&v332 + 1) = v209;
    v313 = sub_21733A5C8();
    v314 = v313;
    v312 = v313;
    v311 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v12 = OUTLINED_FUNCTION_49_30();
    v122 = v211;

    MEMORY[0x21CEA23B0](v12, v122);

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_14_74();

    sub_2171F06D8(&v348, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v341, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE9460 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3F4(v212, v213, v214, v215, v216, v217, v218, v219, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  if (v345)
  {
    OUTLINED_FUNCTION_35_42();
    *&v332 = 0;
    *(&v332 + 1) = 0xE000000000000000;
    v29 = &unk_21775D420;
    v220 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v220, v221, v222, &unk_21775D420);
    v223 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v223, v224, v225, &unk_21775D420);
    OUTLINED_FUNCTION_49_36();
    sub_21725CF00(v12, v122);
    OUTLINED_FUNCTION_41_42();
    v1 = BYTE8(v341);
    v226 = (v12 + 32);
    v40 = 10;
    if (BYTE8(v341))
    {
LABEL_106:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v46)
      {

        sub_21729464C();
        goto LABEL_115;
      }
    }

    else
    {
      while (1)
      {
        v227 = *(v12 + 2);
        if (v29 == v227)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_185;
        }

        if (v29 >= v227)
        {
          goto LABEL_188;
        }

        sub_217202078(v226, v338, &qword_27CB24618, &qword_217778790);
        sub_217202078(v338, &v329, &qword_27CB24618, &qword_217778790);
        if (BYTE8(v331[1]))
        {
          v228 = *(v329 + 16);
          v229 = *(v329 + 24);
          v230 = *(v329 + 32);
          v231 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v231, v232);
          sub_217751DE8();

          sub_2172937E4(v228, v229, v233, v234, v235, v236, v237, v238, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1), *&v331[0], *(&v331[0] + 1), *&v331[1], *(&v331[1] + 1), v332, *(&v332 + 1), v333, *(&v333 + 1));
          v40 = 10;
        }

        else
        {
          OUTLINED_FUNCTION_34_44();
          v239 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v239, v240);
        }

        sub_2171F06D8(v338, &qword_27CB24618, &qword_217778790);
LABEL_115:
        OUTLINED_FUNCTION_46_36();
        v241 = __OFADD__(v29, 1);
        if (v1)
        {
          sub_21725CF00(v12, 1);
          if (v241)
          {
            goto LABEL_187;
          }
        }

        else
        {
          sub_21725CF00(v12, 0);
          if (v241)
          {
            goto LABEL_186;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v242)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v329 = 10;
        *(&v329 + 1) = 0xE100000000000000;
        v243 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v243);

        MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

        sub_21728418C(v338);
        ++v29;
        v226 += 64;
        if (v1)
        {
          goto LABEL_106;
        }
      }
    }

    v346 = v29;
    sub_2171F06D8(&v341, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v341 = v244 | 0x726E656700000000;
    *(&v341 + 1) = 0xED00005B203A7365;
    v338[0] = v332;
    OUTLINED_FUNCTION_2_118();
    *&v335 = v246;
    *(&v335 + 1) = v245;
    sub_21733A5C8();
    OUTLINED_FUNCTION_4_146();
    v315 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_52_32();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_50_36();

    sub_2171F06D8(&v348, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v341, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE9448 != -1)
  {
    OUTLINED_FUNCTION_8_5();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3D8(v247, v248, v249, v250, v251, v252, v253, v254, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  if (v345)
  {
    OUTLINED_FUNCTION_35_42();
    *&v347 = 0;
    *(&v347 + 1) = 0xE000000000000000;
    v255 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v255, v256, v257, &unk_21775D400);
    v258 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v258, v259, v260, &unk_21775D400);
    OUTLINED_FUNCTION_48_27();
    sub_21725CF00(v29, v12);
    OUTLINED_FUNCTION_41_42();
    LODWORD(v322) = BYTE8(v341);
    for (i = (v12 + 32); ; i += 64)
    {
      v1 = &unk_2177589C0;
      if (v322)
      {
        OUTLINED_FUNCTION_6();
        swift_beginAccess();
        OUTLINED_FUNCTION_38_34();
        if (v46)
        {
          goto LABEL_152;
        }

        sub_217294634();
      }

      else
      {
        v262 = *(v12 + 2);
        if (v29 == v262)
        {
LABEL_152:
          sub_2171F06D8(&v341, &qword_27CB27E10, &qword_21776BCB0);
          OUTLINED_FUNCTION_24_0();
          *&v341 = v277 | 0x6361727400000000;
          *(&v341 + 1) = 0xED00005B203A736BLL;
          v338[0] = v347;
          OUTLINED_FUNCTION_2_118();
          *&v335 = v279;
          *(&v335 + 1) = v278;
          sub_21733A5C8();
          OUTLINED_FUNCTION_4_146();
          v315 = MEMORY[0x277D837D0];
          OUTLINED_FUNCTION_1_125();
          OUTLINED_FUNCTION_49_30();
          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_52_32();

          OUTLINED_FUNCTION_16_76();
          OUTLINED_FUNCTION_50_36();

          sub_2171F06D8(&v348, &qword_27CB240D0, &unk_21775D400);
          goto LABEL_154;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_189;
        }

        if (v29 >= v262)
        {
          goto LABEL_192;
        }

        sub_217202078(i, v338, &dword_27CB27E20, &unk_2177589C0);
        sub_217202078(v338, &v329, &dword_27CB27E20, &unk_2177589C0);
        if (BYTE9(v331[1]))
        {
          v264 = *(v329 + 16);
          v263 = *(v329 + 24);
          v265 = *(v329 + 32);
          v266 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v266, v267);
          sub_217751DE8();
          sub_21729366C(v264);

          sub_2171F06D8(v338, &dword_27CB27E20, &unk_2177589C0);
        }

        else
        {
          v268 = OUTLINED_FUNCTION_45_3();
          sub_217283C5C(v268, v269);
          sub_2171F06D8(v338, &dword_27CB27E20, &unk_2177589C0);
          v332 = v329;
          v333 = v330;
          v334[0] = v331[0];
          *(v334 + 9) = *(v331 + 9);
        }

        v335 = v332;
        v336 = v333;
        v337[0] = v334[0];
        *(v337 + 9) = *(v334 + 9);
      }

      v320 = v336;
      v321 = v335;
      v319 = v337[0];
      v270 = *&v337[1];
      v40 = v29 + 1;
      v271 = __OFADD__(v29, 1);
      v272 = BYTE8(v337[1]);
      if (v322)
      {
        sub_21725CF00(v12, 1);
        if (v271)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v273 = OUTLINED_FUNCTION_45_3();
        sub_21725CF00(v273, v274);
        if (v271)
        {
          goto LABEL_190;
        }
      }

      v346 = v29 + 1;
      v338[0] = v321;
      v338[1] = v320;
      v338[2] = v319;
      v339 = v270;
      v340 = v272;
      OUTLINED_FUNCTION_4_6();
      if (v275)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v329 = 10;
      *(&v329 + 1) = 0xE100000000000000;
      v276 = Track.debugDescription.getter();
      MEMORY[0x21CEA23B0](v276);

      MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

      sub_21727576C(v338);
      ++v29;
    }
  }

  sub_2171F06D8(&v341, &unk_27CB28A60, &qword_217770B60);
LABEL_154:
  if (qword_280BE9618 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_36_41();
  sub_2176CA3BC(v280, v281, v282, v283, v284, v285, v286, v287, v315, v316, v317, v318, v319, *(&v319 + 1), v320, *(&v320 + 1), v321, *(&v321 + 1), v322, *(&v322 + 1), v323, v324, v325, v326, v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
  if (v345)
  {
    OUTLINED_FUNCTION_35_42();
    *&v347 = 0;
    *(&v347 + 1) = 0xE000000000000000;
    v288 = OUTLINED_FUNCTION_24_57();
    sub_217202078(v288, v289, v290, &qword_217771CA0);
    v291 = OUTLINED_FUNCTION_27_57();
    sub_217202078(v291, v292, v293, &qword_217771CA0);
    OUTLINED_FUNCTION_48_27();
    sub_21725CF00(v29, v12);
    v294 = 0;
    v346 = 0;
    v29 = v341;
    v295 = BYTE8(v341);
    v12 = (v341 + 32);
    v40 = 10;
    v1 = &qword_217758C20;
    if (BYTE8(v341))
    {
LABEL_158:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v294 != *(*(v29 + 56) + 16))
      {

        sub_2172945EC();
        goto LABEL_167;
      }
    }

    else
    {
      while (1)
      {
        v296 = *(v29 + 16);
        if (v294 == v296)
        {
          break;
        }

        if ((v294 & 0x8000000000000000) != 0)
        {
          goto LABEL_193;
        }

        if (v294 >= v296)
        {
          goto LABEL_196;
        }

        sub_217202078(v12, v338, &qword_27CB27FD0, &qword_217758C20);
        sub_217202078(v338, &v329, &qword_27CB27FD0, &qword_217758C20);
        if (BYTE8(v331[1]))
        {
          v297 = *(v329 + 16);
          v298 = *(v329 + 24);
          v299 = *(v329 + 32);
          sub_217283C5C(v29, 0);
          sub_217751DE8();

          sub_2172931EC(v297);

          v40 = 10;
        }

        else
        {
          OUTLINED_FUNCTION_34_44();
          sub_217283C5C(v29, 0);
        }

        sub_2171F06D8(v338, &qword_27CB27FD0, &qword_217758C20);
LABEL_167:
        OUTLINED_FUNCTION_46_36();
        v300 = __OFADD__(v294, 1);
        if (v295)
        {
          sub_21725CF00(v29, 1);
          if (v300)
          {
            goto LABEL_195;
          }
        }

        else
        {
          sub_21725CF00(v29, 0);
          if (v300)
          {
            goto LABEL_194;
          }
        }

        OUTLINED_FUNCTION_15_73();
        OUTLINED_FUNCTION_4_6();
        if (v301)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v329 = 10;
        *(&v329 + 1) = 0xE100000000000000;
        v302 = RecordLabel.debugDescription.getter();
        MEMORY[0x21CEA23B0](v302);

        MEMORY[0x21CEA23B0](v329, *(&v329 + 1));

        sub_217283CC4(v338);
        ++v294;
        v12 += 64;
        if (v295)
        {
          goto LABEL_158;
        }
      }
    }

    v346 = v294;
    sub_2171F06D8(&v341, &qword_27CB27FC0, &qword_21776BF30);
    OUTLINED_FUNCTION_207();
    *&v341 = v304 + 3;
    *(&v341 + 1) = v303;
    v338[0] = v347;
    OUTLINED_FUNCTION_2_118();
    *&v335 = v306;
    *(&v335 + 1) = v305;
    sub_21733A5C8();
    OUTLINED_FUNCTION_4_146();
    v315 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_52_32();

    OUTLINED_FUNCTION_16_76();
    OUTLINED_FUNCTION_50_36();

    v307 = &qword_27CB25390;
    v308 = &qword_217771CA0;
    v309 = &v348;
  }

  else
  {
    v307 = &qword_27CB25328;
    v308 = &unk_21775D3F0;
    v309 = &v341;
  }

  sub_2171F06D8(v309, v307, v308);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v356;
}

uint64_t Album.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_21773D988(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

void sub_21773DA0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  sub_2176CA9A8(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21773DB00(uint64_t *a1)
{
  OUTLINED_FUNCTION_17_67(a1);
  if (!v1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_61_22();
  return sub_2172A4380();
}

uint64_t sub_21773DC30(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

uint64_t Album.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t Album.hashValue.getter()
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

uint64_t sub_21773DD84@<X0>(uint64_t *a1@<X8>)
{
  result = Album.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Album.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2172E2038();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2172E2038();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2172E2038();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_21773DF5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E038, &unk_2177A1A48);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026F8 = result;
  return result;
}

uint64_t sub_21773DFD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v0 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02818 = result;
  return result;
}

uint64_t sub_21773E040()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E100, &unk_2177A1B20);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027D8 = result;
  return result;
}

uint64_t sub_21773E0C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6867697279706F63, 0xE900000000000074, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026E8 = result;
  return result;
}

uint64_t sub_21773E138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0F8, &qword_2177A1B18);
  OUTLINED_FUNCTION_31_11();
  result = sub_217729830(0xD000000000000010, 0x80000002177AB890, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8);
  qword_280C02778 = result;
  return result;
}

uint64_t sub_21773E1B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0F0, &qword_2177A1B10);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027C0 = result;
  return result;
}

uint64_t sub_21773E224()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0E8, &qword_2177A1B08);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C02738 = result;
  return result;
}

uint64_t sub_21773E29C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0E0, &qword_2177A1B00);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02810 = result;
  return result;
}

uint64_t sub_21773E314()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6C69706D6F437369, 0xED00006E6F697461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027D0 = result;
  return result;
}

uint64_t sub_21773E394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C706D6F437369, 0xEA00000000006574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02808 = result;
  return result;
}

uint64_t sub_21773E40C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64726F6572507369, 0xEA00000000007265, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02800 = result;
  return result;
}

uint64_t sub_21773E484()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C676E69537369, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C026F0 = result;
  return result;
}

uint64_t sub_21773E4F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E038, &unk_2177A1A48);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02790 = result;
  return result;
}

uint64_t sub_21773E578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0D8, &qword_2177A1AF8);
  OUTLINED_FUNCTION_31_11();
  result = sub_217729830(0x73726566666FLL, 0xE600000000000000, 0xD000000000000011, 0x80000002177B68C0, &unk_282959AF8);
  qword_280C02498 = result;
  return result;
}

uint64_t sub_21773E5EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0D0, &qword_2177A1AF0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027A8 = result;
  return result;
}

uint64_t sub_21773E664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x614C64726F636572, 0xEB000000006C6562, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02788 = result;
  return result;
}

uint64_t sub_21773E6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027E8 = result;
  return result;
}

uint64_t sub_21773E75C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02700 = result;
  return result;
}

uint64_t sub_21773E7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F436B63617274, 0xEA0000000000746ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027F8 = result;
  return result;
}

uint64_t sub_21773E840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(6516853, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02710 = result;
  return result;
}

uint64_t sub_21773E8AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C8, &qword_2177A1AE8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02708 = result;
  return result;
}

uint64_t sub_21773E918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C024F0 = result;
  return result;
}

uint64_t sub_21773E994()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEE00657461446465, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C027C8 = result;
  return result;
}

uint64_t sub_21773EA08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E070, &qword_2177A1A88);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEF73757461745365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02798 = result;
  return result;
}

uint64_t sub_21773EA7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027B8 = result;
  return result;
}

uint64_t sub_21773EAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02760 = result;
  return result;
}

uint64_t sub_21773EB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024B8 = result;
  return result;
}

uint64_t sub_21773EBE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E068, &qword_2177A1A80);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02748 = result;
  return result;
}

uint64_t sub_21773EC58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E060, &qword_2177A1A78);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02740 = result;
  return result;
}

uint64_t sub_21773ECCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E058, &qword_2177A1A70);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02720 = result;
  return result;
}

uint64_t sub_21773ED40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616F6C6E776F645FLL, 0xEF65746144646564, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027A0 = result;
  return result;
}

uint64_t sub_21773EDC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001CLL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02728 = result;
  return result;
}

uint64_t sub_21773EE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000025, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02718 = result;
  return result;
}

uint64_t sub_21773EEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E028, &qword_2177A1A38);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000019, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02730 = result;
  return result;
}

uint64_t sub_21773EF1C()
{
  if (qword_280BE9448 != -1)
  {
    OUTLINED_FUNCTION_8_5();
  }

  v0 = qword_280BE9450;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E048, &qword_2177A1A60);
  OUTLINED_FUNCTION_31_11();

  result = sub_21773B6F4(0x6972616C75706F70, 0xEA00000000007974, v0, &unk_282959AD0);
  qword_280C024C8 = result;
  return result;
}

uint64_t sub_21773EFB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C0, &unk_2177A1AD8);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_30_3();
  result = sub_21769A074(v0 & 0xFFFFFFFFFFFFLL | 0x73000000000000, 0xE700000000000000, 0);
  qword_280BE9438 = result;
  return result;
}

uint64_t sub_21773F034()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A070(0x676F6C61746163, 0xE700000000000000, 0, &unk_282959AF8);
  qword_280C027E0 = result;
  return result;
}

uint64_t sub_21773F098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0B8, &qword_2177A1AD0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A06C(0x7365726E6567, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE9468 = result;
  return result;
}

uint64_t sub_21773F11C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E020, &qword_2177A1A30);
  OUTLINED_FUNCTION_60();
  result = sub_21769A088(0x736B63617274, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE9450 = result;
  return result;
}

uint64_t sub_21773F1A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A070(0x7972617262696CLL, 0xE700000000000000, 0, &unk_282959AF8);
  qword_280BE9418 = result;
  return result;
}

uint64_t sub_21773F228()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0B0, &qword_2177A1AC8);
  OUTLINED_FUNCTION_60();
  result = sub_217698420(0x6C2D64726F636572, 0xED0000736C656261, 0);
  qword_280BE9620 = result;
  return result;
}

uint64_t sub_21773F2BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E020, &qword_2177A1A30);
  OUTLINED_FUNCTION_60();
  result = sub_21769A088(0xD000000000000015, 0x80000002177B6C80, 0, &unk_282959AF8);
  qword_280C02750 = result;
  return result;
}

uint64_t sub_21773F324()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A8, &qword_2177A1AC0);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3EC(0x2D73726165707061, 0xEA00000000006E6FLL, 1);
  qword_280BE93F0 = result;
  return result;
}

uint64_t sub_21773F3A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3E8(0x65762D726568746FLL, 0xEE00736E6F697372, 1);
  qword_280BE95C8 = result;
  return result;
}

uint64_t sub_21773F434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0A0, &qword_2177A1AB8);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_45_37();
  result = sub_21736C3E8(v0, 0xEE00736D75626C61, 1);
  qword_280BE95B0 = result;
  return result;
}

uint64_t sub_21773F4B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E098, &qword_2177A1AB0);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_45_37();
  result = sub_21736C3E4(v0, 0xEE00736F65646976, 1);
  qword_280BE9598 = result;
  return result;
}

uint64_t sub_21773F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C338, &unk_217791BD0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697A9C(a2, a3, 0, 0xD000000000000013, 0x80000002177B4C90, &unk_282959AD0);
  *a4 = result;
  return result;
}

uint64_t sub_21773F628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000014, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02768 = result;
  return result;
}

uint64_t sub_21773F69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C027B0 = result;
  return result;
}

uint64_t sub_21773F71C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E050, &qword_2177A1A68);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02780 = result;
  return result;
}

uint64_t sub_21773F790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E078, &qword_2177A1A90);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x6E6F73616572, 0xE600000000000000);
  qword_280C02758 = result;
  return result;
}

uint64_t sub_21773F7E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E090, &qword_2177A1AA8);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000014, 0x80000002177AA520);
  qword_280C02770 = result;
  return result;
}

uint64_t sub_21773F840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C398, &qword_217791C30);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697A58(0x486E6F6973726576, 0xEB00000000687361, 0, 0x676E69727453, 0xE600000000000000, &unk_282959AF8);
  qword_280C024E8 = result;
  return result;
}

uint64_t sub_21773F8BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E0C8, &qword_2177A1AE8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6163697373616C63, 0xEC0000006C72556CLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C024E0 = result;
  return result;
}

uint64_t sub_21773F938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024A0 = result;
  return result;
}

uint64_t sub_21773F9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E080, &qword_2177A1A98);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x746F766970, 0xE500000000000000);
  qword_280C024D8 = result;
  return result;
}

uint64_t sub_21773FA00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E088, &qword_2177A1AA0);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000018, 0x80000002177AA540);
  qword_280C024B0 = result;
  return result;
}

uint64_t sub_21773FA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172546E61656C63, 0xEF746E756F436B63, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C024D0 = result;
  return result;
}

uint64_t sub_21773FADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024C0 = result;
  return result;
}

uint64_t sub_21773FB50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E040, &qword_2177A1A58);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ALL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C024A8 = result;
  return result;
}

uint64_t sub_21773FBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E030, &qword_2177A1A40);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x64656E6E69507369, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02490 = result;
  return result;
}

uint64_t static Album.catalogFilterID(for:)@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = OUTLINED_FUNCTION_59_22();

  if (v2)
  {
    v3 = 0xE200000000000000;
    v4 = 25705;
LABEL_5:
    *a1 = v4;
    a1[1] = v3;
    return sub_217751DE8();
  }

  swift_getKeyPath();
  v5 = OUTLINED_FUNCTION_59_22();

  if (v5)
  {
    v3 = 0xE300000000000000;
    v4 = 6516853;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21773FDB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21773FE0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void static Album.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  if (a4 != &type metadata for Track && a4 != &type metadata for MusicVideo && a4 != &type metadata for Song)
  {
    sub_2173546F8();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }
}

uint64_t Album.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE540();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Album.description.getter()
{
  sub_217752AA8();

  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE9470 != -1)
  {
    OUTLINED_FUNCTION_118_10();
  }

  v1 = sub_2172A4380();
  v3 = OUTLINED_FUNCTION_41_35(v1, v2);
  if (v5)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x21CEA23B0](v3, v6);

  MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177B4860);
  if (qword_280BE9680 != -1)
  {
    OUTLINED_FUNCTION_108_11();
  }

  v7 = sub_2172A4380();
  v9 = OUTLINED_FUNCTION_41_35(v7, v8);
  if (v5)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v10;
  }

  MEMORY[0x21CEA23B0](v9, v11);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0x6469286D75626C41;
}

double sub_217740164()
{
  v0 = sub_217753348();
  v2 = v1;
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v3 = off_280BEB7A8;
  v4 = *(off_280BEB7A8 + 2);
  sub_217751DE8();
  os_unfair_lock_lock(v4);
  sub_21770FA7C(v0, v2, &type metadata for Album, &protocol witness table for Album, &v6);
  os_unfair_lock_unlock(v3[2]);
  swift_bridgeObjectRelease_n();
  result = *&v6;
  xmmword_280BE85C0 = v6;
  qword_280BE85D0 = v7;
  unk_280BE85D8 = v8;
  return result;
}

uint64_t static Album.typeValue.getter()
{
  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE85C0);

  return sub_217751DE8();
}

uint64_t sub_2177402A4()
{
  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1();
  }

  xmmword_280BE62F8 = xmmword_280BE85C0;
  qword_280BE6308 = qword_280BE85D0;
  unk_280BE6310 = unk_280BE85D8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.album.getter()
{
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62F8);

  return sub_217751DE8();
}

unint64_t sub_217740378()
{
  result = qword_280BE2B28;
  if (!qword_280BE2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B28);
  }

  return result;
}

void OUTLINED_FUNCTION_14_74()
{
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_15_73()
{
  v2 = *(v0 + 96);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v2;
  result = *(v0 + 80);
  *(v0 + 432) = result;
  *(v0 + 448) = v1;
  return result;
}

void OUTLINED_FUNCTION_16_76()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_34_44()
{
  v1 = *(v0 + 192);
  *(v0 + 304) = *(v0 + 176);
  *(v0 + 320) = v1;
  result = *(v0 + 208);
  *(v0 + 336) = result;
  *(v0 + 352) = *(v0 + 224);
  return result;
}

__n128 OUTLINED_FUNCTION_46_36()
{
  v1 = *(v0 + 304);
  *(v0 + 96) = *(v0 + 320);
  *(v0 + 112) = v1;
  result = *(v0 + 336);
  *(v0 + 80) = result;
  v3 = *(v0 + 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_27()
{
  sub_217283C5C(*(v0 + 400), *(v0 + 408));

  return sub_2171F06D8(v0 + 400, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_36()
{
  sub_217283C5C(*(v0 + 400), *(v0 + 408));

  return sub_2171F06D8(v0 + 400, v1, v2);
}

void OUTLINED_FUNCTION_50_36()
{
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_51_29()
{
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_52_32()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_61_23()
{

  JUMPOUT(0x21CEA23B0);
}

BOOL sub_2177406B0()
{
  v0 = sub_217752DC8();

  return v0 != 0;
}

BOOL sub_217740704@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2177406B0();
  *a2 = result;
  return result;
}

BOOL sub_217740784@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2177406B0();
  *a1 = result;
  return result;
}

uint64_t sub_2177407C0(uint64_t a1)
{
  v2 = sub_217740A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2177407FC(uint64_t a1)
{
  v2 = sub_217740A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static CloudContributors.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2 && (sub_2172849CC() & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t CloudContributors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E108, &unk_2177A1B30);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217740A10();
  sub_217751DE8();
  sub_2177532F8();
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C40, &qword_217759640);
  sub_217740D78(&qword_27CB2E118, sub_2172E1B18);
  sub_217752F38();

  return (*(v6 + 8))(v11, v3);
}

unint64_t sub_217740A10()
{
  result = qword_27CB2E110;
  if (!qword_27CB2E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E110);
  }

  return result;
}

uint64_t CloudContributors.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_2172849D8(a1, v3);
}

uint64_t CloudContributors.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_2172849D8(v3, v1);
  }

  return sub_217753238();
}

uint64_t CloudContributors.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E120, &qword_2177A1B40);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217740A10();
  sub_2177532C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C40, &qword_217759640);
    sub_217740D78(&qword_27CB2E128, sub_2172E1C68);
    sub_217752E58();
    (*(v8 + 8))(v13, v5);
    *a2 = v16[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217740D18()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_2172849D8(v3, v1);
  }

  return sub_217753238();
}

uint64_t sub_217740D78(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C40, &qword_217759640);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217740DF4()
{
  result = qword_27CB2E130;
  if (!qword_27CB2E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudContributors.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_217740F08()
{
  result = qword_27CB2E138;
  if (!qword_27CB2E138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E140, qword_2177A1CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E138);
  }

  return result;
}

unint64_t sub_217740F70()
{
  result = qword_27CB2E148;
  if (!qword_27CB2E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E148);
  }

  return result;
}

unint64_t sub_217740FC8()
{
  result = qword_27CB2E150;
  if (!qword_27CB2E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E150);
  }

  return result;
}

unint64_t sub_217741020()
{
  result = qword_27CB2E158[0];
  if (!qword_27CB2E158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB2E158);
  }

  return result;
}

double MusicItemCollection.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  OUTLINED_FUNCTION_171_1();
  v4 = sub_217751DC8();
  OUTLINED_FUNCTION_171_1();
  v5 = sub_217751DC8();

  *a2 = a1;
  *(a2 + 8) = 1;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  return result;
}

double MusicItemCollection.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v10 = type metadata accessor for RelatedItem();
  v12 = sub_21726C3E4(sub_217747F88, v17, a3, v10, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v11);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_57_29();
  v13 = sub_217751DC8();
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_57_29();
  v14 = sub_217751DC8();
  OUTLINED_FUNCTION_41_0(a3);
  (*(v15 + 8))(a1, a3);
  *a6 = v12;
  *(a6 + 8) = 0;
  result = 0.0;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0;
  *(a6 + 88) = v13;
  *(a6 + 96) = v14;
  return result;
}

BOOL MusicItemCollection.hasNextBatch.getter()
{
  sub_217747ECC(v0 + 16, v3, &qword_27CB24188, &dword_217758930);
  v1 = v4 != 0;
  sub_2171F0790(v3, &qword_27CB24188, &dword_217758930);
  return v1;
}

uint64_t sub_2177412C4(uint64_t a1, void (*a2)(uint64_t, _OWORD *), char a3)
{
  v5 = *(a1 + 16);
  v6 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v5; --v5)
  {
    a2(v6, v17);
    v18[24] = a3;
    v14 = v17[0];
    v15 = v17[1];
    *v16 = *v18;
    *&v16[9] = *&v18[9];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(i + 16);
      OUTLINED_FUNCTION_17();
      sub_2172B2B30();
      i = v11;
    }

    v8 = *(i + 16);
    if (v8 >= *(i + 24) >> 1)
    {
      sub_2172B2B30();
      i = v12;
    }

    *(i + 16) = v8 + 1;
    v9 = (i + (v8 << 6));
    *(v9 + 73) = *&v16[9];
    v9[3] = v15;
    v9[4] = *v16;
    v9[2] = v14;
    v6 += 56;
  }

  return i;
}

uint64_t sub_2177413D8(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21)
      {
        sub_217283F28(&v17);
      }

      else
      {
        sub_2171F0790(&v22, &unk_27CB275E0, &qword_2177589D0);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB275E0, &qword_2177589D0);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_2172B146C();
      v4 = v14;
    }

    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_2172B146C();
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v8 + 1;
    v9 = v4 + 56 * v8;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    *(v9 + 80) = v20;
    *(v9 + 48) = v11;
    *(v9 + 64) = v12;
    *(v9 + 32) = v10;
  }

  return v4;
}

uint64_t sub_217741580(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21 == 1)
      {
        sub_2171F0790(&v22, &unk_27CB28A90, &qword_217758F90);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      else
      {
        sub_217283F28(&v17);
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB28A90, &qword_217758F90);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_2172B10DC();
      v4 = v14;
    }

    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_2172B10DC();
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v8 + 1;
    v9 = v4 + 56 * v8;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    *(v9 + 80) = v20;
    *(v9 + 48) = v11;
    *(v9 + 64) = v12;
    *(v9 + 32) = v10;
  }

  return v4;
}

uint64_t sub_21774172C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = ~v1;
    v6 = v3 + (v1 << 6);
    v7 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      sub_217283ECC(v6, &v17);
      if (v21 == 2)
      {
        sub_2171F0790(&v22, &unk_27CB2AF80, &qword_217758C30);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        v25 = v20;
      }

      else
      {
        sub_217283F28(&v17);
      }

      if (*(&v22 + 1))
      {
        break;
      }

      sub_2171F0790(&v22, &unk_27CB2AF80, &qword_217758C30);
      --v5;
      v6 += 64;
      if (!--v7)
      {
        return v4;
      }
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = *(v4 + 16);
      sub_2172B2878();
      v4 = v14;
    }

    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_2172B2878();
      v4 = v15;
    }

    v1 = -v5;
    *(v4 + 16) = v8 + 1;
    v9 = v4 + 56 * v8;
    v10 = v17;
    v11 = v18;
    v12 = v19;
    *(v9 + 80) = v20;
    *(v9 + 48) = v11;
    *(v9 + 64) = v12;
    *(v9 + 32) = v10;
  }

  return v4;
}

double MusicItemCollection.init<A>(updatedItems:existingCollection:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v12 = type metadata accessor for RelatedItem();
  v26 = sub_21726C3E4(sub_217744428, v27, a4, v12, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v13);
  OUTLINED_FUNCTION_41_0(a4);
  (*(v14 + 8))(a1, a4);
  sub_217747ECC((a2 + 2), v32, &qword_27CB24188, &dword_217758930);
  v16 = a2[7];
  v15 = a2[8];
  v17 = a2[10];
  v25 = a2[9];
  v18 = a2[11];
  v19 = a2[12];
  v20 = type metadata accessor for MusicItemCollection();
  OUTLINED_FUNCTION_41_0(v20);
  v22 = *(v21 + 8);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v22(a2, v20);
  *a7 = v26;
  *(a7 + 8) = 0;
  result = *v32;
  v24 = v32[1];
  *(a7 + 16) = v32[0];
  *(a7 + 32) = v24;
  *(a7 + 48) = v33;
  *(a7 + 56) = v16;
  *(a7 + 64) = v15;
  *(a7 + 72) = v25;
  *(a7 + 80) = v17;
  *(a7 + 88) = v18;
  *(a7 + 96) = v19;
  return result;
}

double MusicItemCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v7 = sub_217752418();
  WitnessTable = swift_getWitnessTable();
  return MusicItemCollection.init<A>(_:)(&v10, a2, v7, a3, WitnessTable, a4);
}

uint64_t static MusicItemCollection<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = *(a1 + 56) == *(a2 + 56) && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v9)
  {
    goto LABEL_17;
  }

  sub_217747ECC(a1 + 16, v41, &qword_27CB24188, &dword_217758930);
  sub_217747ECC(a2 + 16, &v43, &qword_27CB24188, &dword_217758930);
  if (v42)
  {
    sub_217747ECC(v41, v40, &qword_27CB24188, &dword_217758930);
    if (*(&v44 + 1))
    {
      v38[0] = v43;
      v38[1] = v44;
      v39 = v45;
      v11 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      v12 = *(v11 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_57_29();
      v18 = v12(v13, v14, v15, v16, v17);
      sub_217283154(v38);
      sub_217283154(v40);
      sub_2171F0790(v41, &qword_27CB24188, &dword_217758930);
      goto LABEL_18;
    }

    sub_217283154(v40);
  }

  else if (!*(&v44 + 1))
  {
    sub_2171F0790(v41, &qword_27CB24188, &dword_217758930);
    v18 = 1;
    goto LABEL_18;
  }

  sub_2171F0790(v41, &qword_27CB24928, &unk_21775E020);
LABEL_17:
  v18 = 0;
LABEL_18:
  v19 = *a1;
  v20 = *a2;
  v21 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      OUTLINED_FUNCTION_91_17();
      type metadata accessor for LegacySectionedCollectionItemLoader();
      v22 = OUTLINED_FUNCTION_965();
      sub_217283C5C(v22, 1);
      v23 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v23, v24);
      v25 = static LegacySectionedCollectionItemLoader.== infix(_:_:)(v19, v20);
      sub_21725CF00(v20, 1);
      v26 = OUTLINED_FUNCTION_188_1();
LABEL_25:
      sub_21725CF00(v26, v27);
      return v25 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    if ((v18 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }

    v31 = OUTLINED_FUNCTION_84_11();
    sub_217283C5C(v31, v32);
    v33 = OUTLINED_FUNCTION_1479();
    sub_217283C5C(v33, v34);
    OUTLINED_FUNCTION_91_17();
    type metadata accessor for RelatedItem();
    v46 = a5;
    swift_getWitnessTable();
    v25 = sub_217752448();
    v35 = OUTLINED_FUNCTION_1479();
    sub_21725CF00(v35, v36);
    v26 = OUTLINED_FUNCTION_84_11();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_91_17();
  v28 = type metadata accessor for MusicItemCollection();
  MusicItemCollection.items.getter(v28, v29);
  MusicItemCollection.items.getter(v28, v30);
  OUTLINED_FUNCTION_55_16();
  v25 = sub_217752448();

  return v25 & 1;
}

__n128 sub_217741DEC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v11;
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t MusicItemCollection.items.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v4 = *v2;

    v5 = sub_21774DFE8();
    v6 = v3;
    v7 = 1;
  }

  else
  {
    v20 = *v2;
    MEMORY[0x28223BE20](a1, a2);
    OUTLINED_FUNCTION_36_27();
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    *(v11 - 16) = v10;
    *(v11 - 8) = v9;
    swift_getKeyPath();
    type metadata accessor for RelatedItem();
    sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_171_1();
    v5 = sub_2175FA70C(v12, v13, v14, v10, v15, v16, v17, v18);

    v6 = OUTLINED_FUNCTION_99_17();
  }

  sub_21725CF00(v6, v7);
  return v5;
}

uint64_t sub_217741F40(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2177473CC(a1, sub_217747ADC, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_217741FC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for Album;
    *(v8 - 8) = &protocol witness table for Album;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554A88();

    v12 = sub_2177412C4(v11, sub_21725CF0C, 0);

    if (*(v12 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v45);
        OUTLINED_FUNCTION_36_42();
        if (v14)
        {
          OUTLINED_FUNCTION_53_32(v13);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v15);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v37 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v37, v38);
    }

LABEL_27:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v39 = v0;
    v16 = *(v2 + 16);
    sub_217751DE8();
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (!v16)
      {
        sub_21725CF00(v2, 0);
        v0 = v39;
        goto LABEL_27;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v41)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_217292A88(v24, v22, v23);

        OUTLINED_FUNCTION_24_58();
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v42 = v40[6];
      }

      OUTLINED_FUNCTION_7_98();
      v25 = OUTLINED_FUNCTION_48_28();
      sub_21725CF0C(v25, v26);
      v44 = 0;
      sub_21725CE44(v40);
      if (v44 == 255)
      {
        sub_2171F0790(&v43, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        OUTLINED_FUNCTION_171_1();
        sub_2171F0790(v27, v28, v29);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v45[57] == 255)
      {
        OUTLINED_FUNCTION_171_1();
        sub_2171F0790(v30, v31, v32);
        OUTLINED_FUNCTION_92_19();
      }

      else
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          v34 = *(v17 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
          v17 = v35;
        }

        OUTLINED_FUNCTION_88_20();
        if (v14)
        {
          OUTLINED_FUNCTION_11_1(v33);
          sub_2172B2B60();
          v17 = v36;
        }

        OUTLINED_FUNCTION_12_75();
      }
    }

    __break(1u);
  }
}

void sub_2177422CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for Playlist;
    *(v8 - 8) = &protocol witness table for Playlist;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554ACC();

    v12 = sub_2177412C4(v11, sub_2172757C0, 1);

    if (*(v12 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v40);
        OUTLINED_FUNCTION_36_42();
        if (v14)
        {
          OUTLINED_FUNCTION_53_32(v13);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v15);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v31 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v31, v32);
    }

LABEL_27:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v33 = v0;
    v16 = *(v2 + 16);
    sub_217751DE8();
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (!v16)
      {
        sub_21725CF00(v2, 0);
        v0 = v33;
        goto LABEL_27;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v35)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_21729290C(v24, v22, v23);

        OUTLINED_FUNCTION_24_58();
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v36 = v34[6];
      }

      OUTLINED_FUNCTION_7_98();
      v25 = OUTLINED_FUNCTION_48_28();
      sub_2172757C0(v25, v26);
      v38 = 1;
      sub_21726B8C4(v34);
      if (v38 == 255)
      {
        sub_2171F0790(&v37, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        sub_2171F0790(&v39, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v40[57] == 255)
      {
        sub_2171F0790(v40, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_92_19();
      }

      else
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          v28 = *(v17 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
          v17 = v29;
        }

        OUTLINED_FUNCTION_88_20();
        if (v14)
        {
          OUTLINED_FUNCTION_11_1(v27);
          sub_2172B2B60();
          v17 = v30;
        }

        OUTLINED_FUNCTION_12_75();
      }
    }

    __break(1u);
  }
}

void sub_2177425D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_23_61(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for Station;
    *(v8 - 8) = &protocol witness table for Station;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_93_10();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554B10();

    v12 = sub_2177412C4(v11, sub_217283D6C, 2);

    if (*(v12 + 16))
    {
      OUTLINED_FUNCTION_55_29(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_89_21();
      do
      {
        sub_217283ECC(v1, v38);
        OUTLINED_FUNCTION_36_42();
        if (v14)
        {
          OUTLINED_FUNCTION_53_32(v13);
        }

        OUTLINED_FUNCTION_11_89();
      }

      while (!v15);
      OUTLINED_FUNCTION_112_16();
    }

    else
    {

      v29 = OUTLINED_FUNCTION_93_10();
      sub_21725CF00(v29, v30);
    }

LABEL_27:
    sub_217747ECC(v3 + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_15_74();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v31 = v0;
    v16 = *(v2 + 16);
    sub_217751DE8();
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if (!v16)
      {
        sub_21725CF00(v2, 0);
        v0 = v31;
        goto LABEL_27;
      }

      if (!*(v2 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_57_29();
      sub_217747ECC(v18, v19, v20, v21);
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_40_40();
      if (v33)
      {
        OUTLINED_FUNCTION_18_65();

        v22 = OUTLINED_FUNCTION_49_37();
        sub_217292790(v22);

        OUTLINED_FUNCTION_24_58();
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v34 = v32[6];
      }

      OUTLINED_FUNCTION_7_98();
      v23 = OUTLINED_FUNCTION_48_28();
      sub_217283D6C(v23, v24);
      v36 = 2;
      sub_217283DC8(v32);
      if (v36 == 255)
      {
        sub_2171F0790(&v35, &unk_27CB2AEA0, &unk_21775A260);
      }

      else
      {
        sub_2171F0790(&v37, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_93_17();
      }

      OUTLINED_FUNCTION_20_58();
      if (v38[57] == 255)
      {
        sub_2171F0790(v38, &qword_27CB2E268, &qword_2177A2560);
        OUTLINED_FUNCTION_92_19();
      }

      else
      {
        if ((OUTLINED_FUNCTION_32_53() & 1) == 0)
        {
          v26 = *(v17 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B2B60();
          v17 = v27;
        }

        OUTLINED_FUNCTION_88_20();
        if (v14)
        {
          OUTLINED_FUNCTION_11_1(v25);
          sub_2172B2B60();
          v17 = v28;
        }

        OUTLINED_FUNCTION_12_75();
      }
    }

    __break(1u);
  }
}

void sub_2177428E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v8 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554E94();

    v12 = sub_2177413D8(v11);

    if (*(v12 + 16))
    {
      v31 = v2;
      v13 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_2172762D8(v13, v14, v15);
      do
      {
        sub_21725CF0C(v12 + 32, &v42);
        OUTLINED_FUNCTION_37_41();
        if (v17)
        {
          v19 = OUTLINED_FUNCTION_35_43(v16);
          sub_2172762D8(v19, v20, v21);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v18);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v31;
    }

    else
    {

      v28 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v28, v29);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v22 = v3 + 32;
    v32 = MEMORY[0x277D84F90];
    v30 = v3 + 32;
LABEL_10:
    for (i = v22 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v36)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v33;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E280;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v38 = v35;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v38))
      {
        sub_217283F28(&v37);
      }

      else
      {
        sub_2171F0790(v39, &unk_27CB275E0, &qword_2177589D0);
        OUTLINED_FUNCTION_21_57();
      }

      sub_217283F28(v34);
      if (v39[1])
      {
        sub_2171F0790(&v40, &qword_27CB2E280, &qword_2177A2588);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v39, &unk_27CB275E0, &qword_2177589D0);
      }

      OUTLINED_FUNCTION_19_54();
      if (v41[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v22 = v30;
          v24 = v32;
        }

        else
        {
          v26 = *(v32 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B3260();
          v22 = v30;
        }

        OUTLINED_FUNCTION_54_29(v24);
        if (v17)
        {
          OUTLINED_FUNCTION_11_1(v25);
          sub_2172B3260();
          v32 = v27;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v41, &qword_27CB2E280, &qword_2177A2588);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217742C00()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v8 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554E94();

    v12 = sub_217741580(v11);

    if (*(v12 + 16))
    {
      v31 = v2;
      v13 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_217276258(v13, v14, v15);
      do
      {
        sub_2172757C0(v12 + 32, &v42);
        OUTLINED_FUNCTION_37_41();
        if (v17)
        {
          v19 = OUTLINED_FUNCTION_35_43(v16);
          sub_217276258(v19, v20, v21);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v18);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v31;
    }

    else
    {

      v28 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v28, v29);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v22 = v3 + 32;
    v32 = MEMORY[0x277D84F90];
    v30 = v3 + 32;
LABEL_10:
    for (i = v22 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v36)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v33;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E278;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v38 = v35;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v38) == 1)
      {
        sub_2171F0790(v39, &unk_27CB28A90, &qword_217758F90);
        OUTLINED_FUNCTION_21_57();
      }

      else
      {
        sub_217283F28(&v37);
      }

      sub_217283F28(v34);
      if (v39[1])
      {
        sub_2171F0790(&v40, &qword_27CB2E278, &unk_2177A2578);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v39, &unk_27CB28A90, &qword_217758F90);
      }

      OUTLINED_FUNCTION_19_54();
      if (v41[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v22 = v30;
          v24 = v32;
        }

        else
        {
          v26 = *(v32 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B3314();
          v22 = v30;
        }

        OUTLINED_FUNCTION_54_29(v24);
        if (v17)
        {
          OUTLINED_FUNCTION_11_1(v25);
          sub_2172B3314();
          v32 = v27;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v41, &qword_27CB2E278, &unk_2177A2578);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217742F20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_22_66(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_77_18();
    MEMORY[0x28223BE20](v6, v7);
    OUTLINED_FUNCTION_36_27();
    *(v8 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v8 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath();
    OUTLINED_FUNCTION_84_16();
    v9 = OUTLINED_FUNCTION_78_13();
    OUTLINED_FUNCTION_133_13(v9, v10);
    OUTLINED_FUNCTION_70_22();
    v11 = sub_217554E94();

    v12 = sub_21774172C(v11);

    if (*(v12 + 16))
    {
      v31 = v2;
      v13 = OUTLINED_FUNCTION_38_38(MEMORY[0x277D84F90]);
      sub_2172761D8(v13, v14, v15);
      do
      {
        sub_217283D6C(v12 + 32, &v42);
        OUTLINED_FUNCTION_37_41();
        if (v17)
        {
          v19 = OUTLINED_FUNCTION_35_43(v16);
          sub_2172761D8(v19, v20, v21);
        }

        OUTLINED_FUNCTION_5_117();
      }

      while (!v18);
      OUTLINED_FUNCTION_87_21();
LABEL_31:
      v2 = v31;
    }

    else
    {

      v28 = OUTLINED_FUNCTION_78_13();
      sub_21725CF00(v28, v29);
    }

    sub_217747ECC(v2 + 16, v1 + 16, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_14_75();
    OUTLINED_FUNCTION_108_14();
    sub_217751DE8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_106_14();
    v1 = 0;
    v22 = v3 + 32;
    v32 = MEMORY[0x277D84F90];
    v30 = v3 + 32;
LABEL_10:
    for (i = v22 + (v1 << 6); ; i += 64)
    {
      if (v0 == v1)
      {
        OUTLINED_FUNCTION_132_14();
        goto LABEL_31;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_69_23();
      OUTLINED_FUNCTION_9_101();
      OUTLINED_FUNCTION_56_21();
      if (v36)
      {
        OUTLINED_FUNCTION_34_45();

        OUTLINED_FUNCTION_50_37();
        v3 = v33;

        OUTLINED_FUNCTION_107_13();
        v0 = &qword_27CB2E270;
      }

      else
      {
        OUTLINED_FUNCTION_8_95();
        v38 = v35;
      }

      OUTLINED_FUNCTION_7_98();
      OUTLINED_FUNCTION_25_66();
      if (HIBYTE(v38) == 2)
      {
        sub_2171F0790(v39, &unk_27CB2AF80, &qword_217758C30);
        OUTLINED_FUNCTION_21_57();
      }

      else
      {
        sub_217283F28(&v37);
      }

      sub_217283F28(v34);
      if (v39[1])
      {
        sub_2171F0790(&v40, &qword_27CB2E270, &unk_2177A2568);
        OUTLINED_FUNCTION_6_118();
        OUTLINED_FUNCTION_90_19();
      }

      else
      {
        sub_2171F0790(v39, &unk_27CB2AF80, &qword_217758C30);
      }

      OUTLINED_FUNCTION_19_54();
      if (v41[56] != 255)
      {
        if (OUTLINED_FUNCTION_33_51())
        {
          v22 = v30;
          v24 = v32;
        }

        else
        {
          v26 = *(v32 + 16);
          OUTLINED_FUNCTION_17();
          sub_2172B33C8();
          v22 = v30;
        }

        OUTLINED_FUNCTION_54_29(v24);
        if (v17)
        {
          OUTLINED_FUNCTION_11_1(v25);
          sub_2172B33C8();
          v32 = v27;
        }

        OUTLINED_FUNCTION_3_136();
        goto LABEL_10;
      }

      sub_2171F0790(v41, &qword_27CB2E270, &unk_2177A2568);
      ++v1;
    }

    __break(1u);
  }
}

void sub_217743240()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v4 = v2;
  v5 = v1;
  v111 = v6;
  v7 = *v1;
  v8 = *(v1 + 8);
  if (*(v0 + 8))
  {
    v109 = v1;
    if (v8)
    {
      sub_217283C5C(v7, 1);
      v9 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v9, v10);
      sub_21774DFE8();
      sub_21774DFE8();
      v11 = *(v4 + 16);
      v12 = sub_217752318();

      v110 = v108;
      *&v112[0] = v12;
      MEMORY[0x28223BE20](v13, v14);
      v107 = *(v4 + 24);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      OUTLINED_FUNCTION_83_20();
      type metadata accessor for RelatedItem();
      OUTLINED_FUNCTION_33();
      WitnessTable = swift_getWitnessTable();
      v20 = OUTLINED_FUNCTION_109_17(WitnessTable, v16, v17, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);
      v21 = OUTLINED_FUNCTION_79_22();
      sub_21725CF00(v21, v22);
      v23 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v23, v24);
    }

    else
    {
      sub_217283C5C(v7, 0);
      v52 = OUTLINED_FUNCTION_188_1();
      sub_217283C5C(v52, v53);
      v54 = sub_21774DFE8();
      *&v112[0] = v7;
      MEMORY[0x28223BE20](v54, v55);
      OUTLINED_FUNCTION_36_27();
      v57 = *(v4 + 16);
      v56 = *(v4 + 24);
      *(v58 - 16) = v57;
      *(v58 - 8) = v56;
      KeyPath = swift_getKeyPath();
      v60 = type metadata accessor for RelatedItem();
      v61 = OUTLINED_FUNCTION_130_14(v60);
      OUTLINED_FUNCTION_33();
      v108[1] = v62;
      v63 = swift_getWitnessTable();
      v64 = v61;
      v65 = MEMORY[0x277D84AC0];
      sub_2175FA70C(sub_217747F48, KeyPath, v64, v57, MEMORY[0x277D84A98], v63, MEMORY[0x277D84AC0], v66);
      OUTLINED_FUNCTION_965();

      v67 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v67, v68);
      v69 = sub_217752318();

      *&v112[0] = v69;
      MEMORY[0x28223BE20](v70, v71);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      swift_getWitnessTable();
      v72 = OUTLINED_FUNCTION_82_16();
      v20 = sub_2175FA70C(v72, v73, v74, v75, MEMORY[0x277D84A98], v76, v65, v77);
      v78 = OUTLINED_FUNCTION_188_1();
      sub_21725CF00(v78, v79);
    }

    v110 = v20;
    sub_217751DE8();
    v5 = v109;
  }

  else
  {
    if (*(v1 + 8))
    {
      *&v112[0] = *v0;
      MEMORY[0x28223BE20](v1, v2);
      OUTLINED_FUNCTION_36_27();
      v25 = *(v4 + 24);
      *(v26 - 16) = *(v4 + 16);
      *(v26 - 8) = v25;
      swift_getKeyPath();
      v27 = OUTLINED_FUNCTION_79_22();
      sub_217283C5C(v27, v28);
      v29 = OUTLINED_FUNCTION_1479();
      sub_217283C5C(v29, v30);
      v31 = type metadata accessor for RelatedItem();
      OUTLINED_FUNCTION_130_14(v31);
      OUTLINED_FUNCTION_33();
      v109 = v32;
      v33 = swift_getWitnessTable();
      OUTLINED_FUNCTION_109_17(v33, v34, v35, v36, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v37);

      v38 = OUTLINED_FUNCTION_1479();
      sub_21725CF00(v38, v39);
      sub_21774DFE8();
      OUTLINED_FUNCTION_965();
      v40 = sub_217752318();

      *&v112[0] = v40;
      MEMORY[0x28223BE20](v41, v42);
      OUTLINED_FUNCTION_83_20();
      sub_217752418();
      swift_getWitnessTable();
      v43 = OUTLINED_FUNCTION_82_16();
      v49 = sub_2175FA70C(v43, v44, v45, v46, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v48);
      v50 = OUTLINED_FUNCTION_79_22();
      sub_21725CF00(v50, v51);
    }

    else
    {
      v80 = OUTLINED_FUNCTION_61_24();
      sub_217283C5C(v80, v81);
      v82 = OUTLINED_FUNCTION_1479();
      sub_217283C5C(v82, v83);
      v84 = *(v4 + 16);
      v85 = *(v4 + 24);
      type metadata accessor for RelatedItem();
      v49 = sub_217752318();
      v86 = OUTLINED_FUNCTION_1479();
      sub_21725CF00(v86, v87);
      v88 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v88, v89);
    }

    v110 = v49;
    sub_217751DE8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25660, &unk_21775D5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217759200;
  sub_217747ECC((v3 + 2), inited + 32, &qword_27CB24188, &dword_217758930);
  sub_217747ECC((v5 + 2), inited + 72, &qword_27CB24188, &dword_217758930);
  sub_2174D3370(inited, v112);
  swift_setDeallocating();
  sub_217275BEC();
  if (v3[8])
  {
    v91 = v3[7];
    v92 = v3[8];
  }

  else
  {
    v91 = v5[7];
    v92 = v5[8];
    sub_217751DE8();
  }

  if (v3[10])
  {
    v93 = v3[9];
    v94 = v3[10];
  }

  else
  {
    v93 = v5[9];
    v94 = v5[10];
    sub_217751DE8();
  }

  v95 = v3[11];
  v96 = v5;
  v97 = v5[11];
  sub_217751DE8();
  sub_217751DE8();
  swift_bridgeObjectRetain_n();
  sub_217751DE8();
  v98 = sub_217741F40(v97, v95);
  v99 = v96[12];
  v100 = sub_217751DE8();
  v101 = sub_217741F40(v100, v95);
  v102 = v110;
  v103 = OUTLINED_FUNCTION_99_17();
  sub_21725CF00(v103, v104);
  v105 = v111;
  *v111 = v102;
  *(v105 + 8) = 0;
  v106 = v112[1];
  *(v105 + 1) = v112[0];
  *(v105 + 2) = v106;
  v105[6] = v113;
  v105[7] = v91;
  v105[8] = v92;
  v105[9] = v93;
  v105[10] = v94;
  v105[11] = v98;
  v105[12] = v101;
  OUTLINED_FUNCTION_13();
}

uint64_t MusicItemCollection.identifiers.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v2 + 8))
  {
    v4 = *v2;

    v5 = sub_21774E0E4();
    v6 = v3;
    v7 = 1;
  }

  else
  {
    v16 = *v2;
    MEMORY[0x28223BE20](a1, a2);
    OUTLINED_FUNCTION_36_27();
    v9 = *(v8 + 24);
    *(v10 - 16) = *(v8 + 16);
    *(v10 - 8) = v9;
    KeyPath = swift_getKeyPath();
    type metadata accessor for RelatedItem();
    v12 = sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    WitnessTable = swift_getWitnessTable();
    v5 = sub_2175FA70C(sub_217635EDC, KeyPath, v12, &type metadata for MusicIdentifierSet, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

    v6 = OUTLINED_FUNCTION_99_17();
  }

  sub_21725CF00(v6, v7);
  return v5;
}

void *sub_2177439E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for RelatedItem();
  MusicItem.identifierSet.getter(v7, &off_28297DE10, __src);
  return memcpy(a3, __src, 0x161uLL);
}

uint64_t MusicItemCollection.title.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_217743A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for RelatedItem();
  return sub_2176F36CC(v7, a3);
}

void static MusicItemCollection.+= infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = v0;
  v4 = *v1;
  if ((*(v0 + 8) & 1) == 0)
  {
    if ((v1[1] & 1) == 0)
    {
      v49 = OUTLINED_FUNCTION_61_24();
      sub_217283C5C(v49, v50);
      v51 = OUTLINED_FUNCTION_45_3();
      sub_217283C5C(v51, v52);
      OUTLINED_FUNCTION_219_0();
      type metadata accessor for RelatedItem();
      OUTLINED_FUNCTION_47_2();
      v15 = sub_217752318();
      v53 = OUTLINED_FUNCTION_45_3();
      sub_21725CF00(v53, v54);
      v55 = OUTLINED_FUNCTION_61_24();
      sub_21725CF00(v55, v56);
      v57 = OUTLINED_FUNCTION_45_3();
      sub_21725CF00(v57, v58);
      goto LABEL_9;
    }

    v70 = *v0;
    v22 = OUTLINED_FUNCTION_79_22();
    sub_217283C5C(v22, v23);
    v24 = OUTLINED_FUNCTION_45_3();
    sub_217283C5C(v24, v25);
    v67 = sub_21774DFE8();
    v68 = &v66;
    v69 = v67;
    MEMORY[0x28223BE20](v67, v26);
    OUTLINED_FUNCTION_41_43();
    OUTLINED_FUNCTION_219_0();
    type metadata accessor for RelatedItem();
    OUTLINED_FUNCTION_33();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_102_15(sub_217747F2C, v28, v29, v30, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v31);

    sub_217752368();
    v32 = OUTLINED_FUNCTION_79_22();
    sub_21725CF00(v32, v33);

    v34 = OUTLINED_FUNCTION_45_3();
LABEL_7:
    sub_21725CF00(v34, v35);
    *v3 = v70;
    goto LABEL_10;
  }

  v5 = *v1;
  if ((v1[1] & 1) == 0)
  {
    sub_217283C5C(v5, 0);
    v36 = OUTLINED_FUNCTION_62_26();
    sub_217283C5C(v36, v37);
    v67 = sub_21774DFE8();
    v68 = &v66;
    v70 = v67;
    MEMORY[0x28223BE20](v67, v38);
    OUTLINED_FUNCTION_41_43();
    OUTLINED_FUNCTION_219_0();
    type metadata accessor for RelatedItem();
    OUTLINED_FUNCTION_33();
    v39 = swift_getWitnessTable();
    v44 = OUTLINED_FUNCTION_102_15(sub_217746AF0, v40, v41, v42, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v43);

    v70 = v44;
    sub_217752368();
    v45 = OUTLINED_FUNCTION_61_24();
    sub_21725CF00(v45, v46);
    v47 = OUTLINED_FUNCTION_62_26();
    sub_21725CF00(v47, v48);
    v34 = OUTLINED_FUNCTION_62_26();
    goto LABEL_7;
  }

  sub_217283C5C(v5, 1);
  v6 = OUTLINED_FUNCTION_62_26();
  sub_217283C5C(v6, v7);
  sub_21774DFE8();
  sub_21774DFE8();
  v67 = sub_217752318();

  v68 = &v66;
  v70 = v67;
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_41_43();
  OUTLINED_FUNCTION_219_0();
  type metadata accessor for RelatedItem();
  OUTLINED_FUNCTION_33();
  v10 = swift_getWitnessTable();
  v15 = OUTLINED_FUNCTION_102_15(sub_217747F2C, v11, v12, v13, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v14);
  v16 = OUTLINED_FUNCTION_79_22();
  sub_21725CF00(v16, v17);
  v18 = OUTLINED_FUNCTION_62_26();
  sub_21725CF00(v18, v19);

  v20 = OUTLINED_FUNCTION_62_26();
  sub_21725CF00(v20, v21);
LABEL_9:
  *v3 = v15;
LABEL_10:
  *(v3 + 8) = 0;
  sub_217746B10((v2 + 2), v3 + 16);
  v59 = v2[10];
  v60 = *(v3 + 80);
  *(v3 + 72) = v2[9];
  *(v3 + 80) = v59;
  sub_217751DE8();

  if (!*(v3 + 64))
  {
    v61 = v2[8];
    *(v3 + 56) = v2[7];
    *(v3 + 64) = v61;
    sub_217751DE8();
  }

  v62 = v2[11];
  v63 = sub_217751DE8();
  sub_217747A30(v63, sub_217747ADC, 0, (v3 + 88));
  v64 = v2[12];
  v65 = sub_217751DE8();
  sub_217747A30(v65, sub_217747ADC, 0, (v3 + 96));
  OUTLINED_FUNCTION_13();
}

uint64_t MusicItemCollection.nextBatch(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 104) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217743E98()
{
  OUTLINED_FUNCTION_10();
  sub_217747ECC(*(v0 + 80) + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 88) = v3;
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    *v3 = v6;
    v3[1] = sub_217743FB4;
    v7 = OUTLINED_FUNCTION_124_11();

    return AnyMusicItemCollectionIncrementalLoader.nextItemBatch<A>(limit:)(v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = *(v0 + 56);
    sub_2171F0790(v0 + 16, &qword_27CB24188, &dword_217758930);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0;
    OUTLINED_FUNCTION_0_2();

    return v14();
  }
}

uint64_t sub_217743FB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    v9 = sub_2177440BC;
  }

  else
  {
    sub_217283154(v3 + 16);
    v9 = sub_21763AD84;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2177440BC()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 16);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 96);

  return v1();
}

uint64_t MusicItemCollection.nextBatch<>(limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 112) = a3;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217744138()
{
  OUTLINED_FUNCTION_10();
  sub_217747ECC(*(v0 + 88) + 16, v0 + 16, &qword_27CB24188, &dword_217758930);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 112);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 96) = v3;
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    *v3 = v6;
    v3[1] = sub_217744258;
    v7 = *(v0 + 80);
    v8 = OUTLINED_FUNCTION_124_11();

    return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = *(v0 + 56);
    sub_2171F0790(v0 + 16, &qword_27CB24188, &dword_217758930);
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 96) = 0;
    OUTLINED_FUNCTION_0_2();

    return v16();
  }
}

uint64_t sub_217744258()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (v0)
  {
    v9 = sub_217744360;
  }

  else
  {
    sub_217283154(v3 + 16);
    v9 = sub_217747F7C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_217744360()
{
  OUTLINED_FUNCTION_10();
  sub_217283154(v0 + 16);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_2177443C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_52(a1, a2);
  (*(v3 + 16))(v2);
  OUTLINED_FUNCTION_110_15();
  return OUTLINED_FUNCTION_111_16();
}

uint64_t sub_217744428(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_2177443C8(a1, v1[2]);
}

uint64_t MusicItemCollection.indices.getter(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v3 = *v1;

    v4 = LegacySectionedCollectionItemLoader.indices.getter();
    sub_21725CF00(v2, 1);
  }

  else
  {
    v9 = *v1;
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    type metadata accessor for RelatedItem();
    sub_217752418();
    swift_getWitnessTable();
    sub_217752658();
    return v8;
  }

  return v4;
}

void MusicItemCollection.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = *v0;
  if (*(v0 + 8))
  {
    v3 = *v0;

    v4 = OUTLINED_FUNCTION_25_0();
    LegacySectionedCollectionItemLoader.subscript.getter(v4, v5);
    v6 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v6, v7);
LABEL_6:
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_13();
    return;
  }

  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  type metadata accessor for RelatedItem();
  sub_217751DE8();
  OUTLINED_FUNCTION_25_0();
  sub_217752478();
  v10 = sub_21725CF00(v2, 0);
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_36_27();
  *(v12 - 16) = v8;
  *(v12 - 8) = v9;
  KeyPath = swift_getKeyPath();
  v14 = sub_2177529E8();
  WitnessTable = swift_getWitnessTable();
  sub_2175FA70C(sub_217747F48, KeyPath, v14, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2E3E0, &qword_2177A2FE0);
  sub_21759CA0C();
  sub_2177527D8();
  sub_2177527C8();
  if (__OFSUB__(v18, v17))
  {
    __break(1u);
  }

  else if (((v18 - v17) & 0x8000000000000000) == 0)
  {
    sub_217752478();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t MusicItemCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_101_15(a1, a2);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - v12;
  v14 = *v3;
  if (v3[1])
  {

    LegacySectionedCollectionItemLoader.subscript.getter();
    v15 = OUTLINED_FUNCTION_62_26();
    return sub_21725CF00(v15, v16);
  }

  else
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_25_0();
    sub_217752488();
    v18 = OUTLINED_FUNCTION_45_3();
    sub_21725CF00(v18, v19);
    sub_2176F36CC(v5, a3);
    return (*(v7 + 8))(v13, v5);
  }
}

uint64_t sub_2177448B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v4 = *v3;
  v5 = *(v3 + 8);
  if (v5)
  {
    v7 = *v3;

    v9 = a3(v8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = type metadata accessor for RelatedItem();
    v14 = sub_217751DE8();
    v9 = a2(v14, v13);
  }

  v15 = v9;
  sub_21725CF00(v4, v5);
  return v15;
}

uint64_t sub_2177449C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  if (v7)
  {
    v9 = *v4;

    v10 = a4(a1);
  }

  else
  {
    OUTLINED_FUNCTION_101_15(a1, a2);
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    v10 = a3(a1, v6, v4);
  }

  v12 = v10;
  sub_21725CF00(v6, v7);
  return v12;
}

uint64_t sub_217744A88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  if (v7)
  {
    v9 = *v4;

    a4(a1);
  }

  else
  {
    OUTLINED_FUNCTION_101_15(a1, a2);
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    a3(a1, v6, v4);
  }

  return sub_21725CF00(v6, v7);
}

Swift::Int_optional __swiftcall MusicItemCollection.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  if (v9)
  {
    v10 = *v4;

    v17 = LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
  }

  else
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    type metadata accessor for RelatedItem();
    OUTLINED_FUNCTION_55_16();
    sub_217751DE8();
    v17.value = sub_217752398();
  }

  value = v17.value;
  is_nil = v17.is_nil;
  sub_21725CF00(v8, v9);
  v15 = is_nil;
  v16 = value;
  result.value = v16;
  result.is_nil = v15;
  return result;
}

uint64_t sub_217744C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = *(v5 + 8);
  if (v9)
  {
    v11 = *v5;

    v12 = a5(a1, a2);
  }

  else
  {
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);
    v16 = type metadata accessor for RelatedItem();
    sub_217751DE8();
    v12 = a4(a1, a2, v8, v16);
  }

  v17 = v12;
  sub_21725CF00(v8, v9);
  return v17;
}

Swift::Int sub_217744CCC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemCollection.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_217744CFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicItemCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_217744D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicItemCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_217744D4C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_217744DC0(v6, *a2, a3);
  return sub_21759C398;
}

void (*sub_217744DC0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  *a1 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  *(v6 + 8) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  a1[2] = v9;
  MusicItemCollection.subscript.getter(a2, a3, v9);
  return sub_217744E74;
}

void sub_217744E74(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void sub_217744EC0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  MusicItemCollection.subscript.getter();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
}

uint64_t sub_217744EF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicItemCollection.indices.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int sub_217744F34@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = MusicItemCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_217744F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  v6 = MusicItemCollection.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 104) = v6;
  return result;
}

uint64_t sub_217745020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_217745074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t MusicItemCollection<>.AsyncCollectionIterator.next()()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v4;
  v1[59] = *(v2 + 16);
  OUTLINED_FUNCTION_0();
  v1[60] = v5;
  v7 = *(v6 + 64) + 15;
  v1[61] = swift_task_alloc();
  v1[62] = *(v3 + 24);
  v8 = type metadata accessor for RelatedItem();
  v1[63] = v8;
  v9 = *(v8 - 8);
  v1[64] = v9;
  v10 = *(v9 + 64) + 15;
  v1[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2177451F0, 0, 0);
}

void sub_2177451F0()
{
  v2 = *(v0 + 464);
  v3 = *v2;
  *(v0 + 528) = *v2;
  if ((*(v2 + 8) & 1) == 0)
  {
    v13 = *(v0 + 504);
    *(v0 + 416) = v3;
    *(v0 + 424) = v3;
    sub_217283C5C(v3, 0);
    *(v0 + 536) = sub_217752418();
    sub_217751DE8();
    OUTLINED_FUNCTION_33();
    *(v0 + 544) = swift_getWitnessTable();
    if (sub_217752738())
    {
      sub_217747ECC(*(v0 + 464) + 16, v0 + 344, &qword_27CB24188, &dword_217758930);
      if (*(v0 + 368))
      {
        v14 = *(v0 + 464);
        sub_21725CF00(v3, 0);
        *(v0 + 336) = *(v0 + 376);
        v15 = *(v0 + 360);
        *(v0 + 304) = *(v0 + 344);
        *(v0 + 320) = v15;
        v16 = *(v14 + 64);
        OUTLINED_FUNCTION_31_48(*(v14 + 56));
        v18 = *(v17 + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_36_1();
        *(v0 + 560) = v19;
        *v19 = v20;
        v19[1] = sub_2177456B8;
LABEL_8:
        OUTLINED_FUNCTION_120_0();

        __asm { BRAA            X2, X16 }
      }

      sub_2171F0790(v0 + 344, &qword_27CB24188, &dword_217758930);
    }

    v35 = OUTLINED_FUNCTION_103_17();
    v36 = OUTLINED_FUNCTION_99_17();
    v38 = sub_21725CF00(v36, v37);
    if (v35)
    {
      v39 = 1;
    }

    else
    {
      v40 = *(v0 + 536);
      v41 = *(v0 + 520);
      v42 = *(v0 + 504);
      v43 = *(v0 + 512);
      v44 = *(v0 + 448);
      OUTLINED_FUNCTION_1_153();
      OUTLINED_FUNCTION_131_13();
      sub_2176F36CC(v42, v44);
      v38 = (*(v43 + 8))(v41, v42);
      v39 = 0;
    }

    OUTLINED_FUNCTION_86_18(v38, v39);
LABEL_24:
    v45 = *(v0 + 520);
    v46 = *(v0 + 488);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_120_0();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 504);

  v5 = sub_217752338();
  *(v0 + 552) = v5;
  *(v0 + 384) = v5;
  if (LegacySectionedCollectionItemLoader.isEmpty.getter())
  {
    sub_217747ECC(*(v0 + 464) + 16, v0 + 264, &qword_27CB24188, &dword_217758930);
    if (*(v0 + 288))
    {
      v6 = *(v0 + 464);
      v7 = *(v0 + 280);
      *(v0 + 224) = *(v0 + 264);
      *(v0 + 240) = v7;
      *(v0 + 256) = *(v0 + 296);
      v8 = *(v6 + 64);
      OUTLINED_FUNCTION_31_48(*(v6 + 56));
      v10 = *(v9 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_36_1();
      *(v0 + 576) = v11;
      *v11 = v12;
      v11[1] = sub_2177459CC;
      goto LABEL_8;
    }

    sub_2171F0790(v0 + 264, &qword_27CB24188, &dword_217758930);
  }

  v23 = *(v0 + 528);
  if (LegacySectionedCollectionItemLoader.isEmpty.getter())
  {
    v24 = *(v0 + 504);
    *(v0 + 400) = v5;
    sub_217752418();
    OUTLINED_FUNCTION_33();
    swift_getWitnessTable();
    if (sub_217752738())
    {
      v25 = *(v0 + 472);
      v26 = *(v0 + 448);
      sub_21725CF00(*(v0 + 528), 1);
      v27 = OUTLINED_FUNCTION_66_21();
      __swift_storeEnumTagSinglePayload(v27, v28, 1, v25);

      goto LABEL_24;
    }
  }

  v29 = *(v0 + 528);
  if ((LegacySectionedCollectionItemLoader.isEmpty.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_105_17();
    v31 = OUTLINED_FUNCTION_121_14();
    v32(v31);
    v33 = OUTLINED_FUNCTION_61_24();
    OUTLINED_FUNCTION_122_11(v33, v34);
    *v1 = v29;
    *(v1 + 8) = 1;
    goto LABEL_24;
  }

  v30 = *(v0 + 504);
  *(v0 + 392) = v5;
  sub_217752418();
  OUTLINED_FUNCTION_33();
  swift_getWitnessTable();
  if ((sub_217752738() & 1) == 0)
  {
    v49 = *(v0 + 528);
    v50 = *(v0 + 520);
    v51 = *(v0 + 504);
    v52 = *(v0 + 512);
    v54 = *(v0 + 464);
    v53 = *(v0 + 472);
    v55 = *(v0 + 448);
    OUTLINED_FUNCTION_1_153();
    OUTLINED_FUNCTION_129_14();
    sub_2176F36CC(v51, v55);
    v56 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v56, v57);
    v58 = *(v52 + 8);
    v59 = OUTLINED_FUNCTION_47_2();
    v60(v59);
    v61 = OUTLINED_FUNCTION_84_11();
    __swift_storeEnumTagSinglePayload(v61, v62, 1, v53);
    v63 = OUTLINED_FUNCTION_66_21();
    sub_21725CF00(v63, v64);
    *v54 = *(v0 + 384);
    *(v54 + 8) = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_123_13();
  OUTLINED_FUNCTION_76_20();
  OUTLINED_FUNCTION_120_0();
}

uint64_t sub_2177456B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 560);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 568) = v0;

  if (v0)
  {
    sub_21725CF00(*(v3 + 528), 0);
    v9 = sub_217745DE0;
  }

  else
  {
    v9 = sub_2177457C4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_2177457C4()
{
  v27 = v0[71];
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[57];
  v6 = type metadata accessor for MusicItemCollection();
  v0[55] = MusicItemCollection.items.getter(v6, v7);
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = *(v5 + 32);
  v9 = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  sub_2175FA70C(sub_217747F60, v8, v9, v1, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  OUTLINED_FUNCTION_965();

  sub_217283154((v0 + 38));

  v0[52] = v0 + 55;
  sub_2171F0790(v4 + 16, &qword_27CB24188, &dword_217758930);
  sub_217747ECC((v0 + 17), v4 + 16, &qword_27CB24188, &dword_217758930);
  OUTLINED_FUNCTION_41_0(v6);
  (*(v12 + 8))(v0 + 15, v6);
  v13 = OUTLINED_FUNCTION_103_17();
  v14 = OUTLINED_FUNCTION_99_17();
  v16 = sub_21725CF00(v14, v15);
  if (v13)
  {
    v17 = 1;
  }

  else
  {
    v18 = v0[67];
    v19 = v0[65];
    v20 = v0[63];
    v21 = v0[64];
    v22 = v0[56];
    OUTLINED_FUNCTION_1_153();
    OUTLINED_FUNCTION_131_13();
    sub_2176F36CC(v20, v22);
    v16 = (*(v21 + 8))(v19, v20);
    v17 = 0;
  }

  OUTLINED_FUNCTION_86_18(v16, v17);
  v23 = v0[65];
  v24 = v0[61];

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_120_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2177459CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  if (v0)
  {
    v9 = sub_217745E50;
  }

  else
  {
    v9 = sub_217745ACC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_217745ACC()
{
  v1 = v0[73];
  v46 = v0[69];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[59];
  v5 = v0[57];
  sub_217746B10((v0 + 4), v0[58] + 16);
  OUTLINED_FUNCTION_83_20();
  v6 = type metadata accessor for MusicItemCollection();
  v0[51] = MusicItemCollection.items.getter(v6, v7);
  v8 = swift_task_alloc();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = *(v5 + 32);
  OUTLINED_FUNCTION_83_20();
  v9 = sub_217752418();
  OUTLINED_FUNCTION_33();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_2175FA70C(sub_217747B14, v8, v9, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  OUTLINED_FUNCTION_41_0(v6);
  (*(v13 + 8))(v0 + 2, v6);
  sub_217283154((v0 + 28));

  v0[48] = v12;
  v14 = v0[66];
  if (LegacySectionedCollectionItemLoader.isEmpty.getter() & 1) != 0 && (v15 = v0[63], v0[50] = v12, sub_217752418(), OUTLINED_FUNCTION_33(), swift_getWitnessTable(), (sub_217752738()))
  {
    v16 = v0[59];
    v17 = v0[56];
    sub_21725CF00(v0[66], 1);
    v18 = OUTLINED_FUNCTION_66_21();
    __swift_storeEnumTagSinglePayload(v18, v19, 1, v16);
  }

  else
  {
    v20 = v0[66];
    if (LegacySectionedCollectionItemLoader.isEmpty.getter())
    {
      v21 = v0[63];
      v0[49] = v12;
      sub_217752418();
      OUTLINED_FUNCTION_33();
      swift_getWitnessTable();
      if (sub_217752738())
      {
        OUTLINED_FUNCTION_123_13();
        return OUTLINED_FUNCTION_76_20();
      }

      v27 = v0[66];
      v28 = v0[65];
      v29 = v0[63];
      v30 = v0[64];
      v32 = v0[58];
      v31 = v0[59];
      v33 = v0[56];
      OUTLINED_FUNCTION_1_153();
      OUTLINED_FUNCTION_129_14();
      sub_2176F36CC(v29, v33);
      v34 = OUTLINED_FUNCTION_66_21();
      sub_21725CF00(v34, v35);
      v36 = *(v30 + 8);
      v37 = OUTLINED_FUNCTION_47_2();
      v38(v37);
      v39 = OUTLINED_FUNCTION_84_11();
      __swift_storeEnumTagSinglePayload(v39, v40, 1, v31);
      v41 = OUTLINED_FUNCTION_66_21();
      sub_21725CF00(v41, v42);
      *v32 = v0[48];
      *(v32 + 8) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_105_17();
      v23 = OUTLINED_FUNCTION_121_14();
      v24(v23);
      v25 = OUTLINED_FUNCTION_61_24();
      OUTLINED_FUNCTION_122_11(v25, v26);
      *v9 = v20;
      *(v9 + 8) = 1;
    }
  }

  v43 = v0[65];
  v44 = v0[61];

  OUTLINED_FUNCTION_0_2();

  return v45();
}

uint64_t sub_217745DE0()
{
  OUTLINED_FUNCTION_10();
  sub_217283154((v0 + 38));
  v1 = v0[71];
  v2 = v0[65];
  v3 = v0[61];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217745E50()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[69];
  sub_21725CF00(v0[66], 1);
  sub_217283154((v0 + 28));

  v2 = v0[73];
  v3 = v0[65];
  v4 = v0[61];

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_217745ED8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_52(a1, a2);
  (*(v3 + 16))(v2);
  OUTLINED_FUNCTION_110_15();
  return OUTLINED_FUNCTION_111_16();
}

uint64_t sub_217745F38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return MusicItemCollection<>.AsyncCollectionIterator.next()();
}

uint64_t sub_217745FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_2177460B4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_2177460B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t MusicItemCollection<>.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  sub_217747ECC(v3 + 16, v12, &qword_27CB24188, &dword_217758930);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = a2;
  *a3 = v7;
  *(a3 + 8) = v8;
  v10 = v12[1];
  *(a3 + 16) = v12[0];
  *(a3 + 32) = v10;
  *(a3 + 48) = v13;
  *(a3 + 56) = &unk_2177A1E60;
  *(a3 + 64) = v9;
  return sub_217283C5C(v7, v8);
}

uint64_t sub_217746268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2172849C8;

  return AnyMusicItemCollectionIncrementalLoader.nextDecodableItemBatch<A>(limit:)(a1, 0, 1, a3, a4, a5);
}

uint64_t sub_21774633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MusicItemCollection<>.makeAsyncIterator()(a1, *(a2 - 8), a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t MusicItemCollection<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (v2[8])
  {
    v4 = v2[7];
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217747ECC((v2 + 2), &v23, &qword_27CB24188, &dword_217758930);
  if (*(&v24 + 1))
  {
    v20 = v23;
    v21 = v24;
    v22 = v25;
    sub_217753208();
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v6 = *(v5 + 40);
    v7 = OUTLINED_FUNCTION_145_0();
    v8(v7);
    sub_217283154(&v20);
  }

  else
  {
    sub_217753208();
  }

  v9 = *v2;
  if (v2[1])
  {
    v10 = *v2;

    v11 = LegacySectionedCollectionItemLoader.count.getter();
    MEMORY[0x21CEA3550](v11);
    v12 = OUTLINED_FUNCTION_62_26();
    return sub_21725CF00(v12, v13);
  }

  else
  {
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    type metadata accessor for RelatedItem();
    sub_217751DE8();
    v17 = sub_217752388();
    v18 = OUTLINED_FUNCTION_45_3();
    sub_21725CF00(v18, v19);
    return MEMORY[0x21CEA3550](v17);
  }
}

uint64_t MusicItemCollection<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicItemCollection<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_21774656C(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  MusicItemCollection<>.hash(into:)(v4, a2);
  return sub_217753238();
}

uint64_t MusicItemCollection<>.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v16);
  CloudResourceCollection<A>.init(from:)();
  if (!v1)
  {
    v3 = type metadata accessor for CloudResourceCollection();
    OUTLINED_FUNCTION_0();
    v5 = v4;
    (*(v6 + 16))(v16, v17, v3);
    v7 = a1[3];
    v8 = a1[4];
    v9 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    Decoder.dataRequestConfiguration.getter(v7, v8);
    v11 = a1[3];
    v12 = a1[4];
    v13 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    Decoder.sharedRelatedItemStore.getter();
    sub_2174D0DD8();
    (*(v5 + 8))(v17, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217746740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  return MusicItemCollection<>.init(from:)(a1);
}

uint64_t MusicItemCollection<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  sub_2174D10C0(a2, v7);
  v3 = *(a2 + 16);
  v4 = type metadata accessor for CloudResourceCollection();
  CloudResourceCollection<A>.encode(to:)();
  OUTLINED_FUNCTION_41_0(v4);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_21774682C(char a1, uint64_t a2)
{
  to._countAndFlagsBits = 0;
  to._object = 0xE000000000000000;
  if (*(v2 + 64))
  {
    v5 = *(v2 + 56);
    v13 = 0x656C74697420200ALL;
    v14 = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0](v5);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0x656C74697420200ALL, 0xEB0000000022203ALL);
  }

  swift_getWitnessTable();
  v6._countAndFlagsBits = 0x736D657469;
  v6._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v6, a1 & 1, &to);
  if (MusicItemCollection.hasNextBatch.getter())
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  if (dynamic_cast_existential_1_conditional(*(a2 + 16)))
  {
    (*(v7 + 8))(&v13);
    v9 = v15;
    v8 = v16;
  }

  else
  {
    v9 = sub_217753348();
    v8 = v10;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_217752AA8();

  v13 = 0xD000000000000014;
  v14 = 0x80000002177B6E00;
  MEMORY[0x21CEA23B0](v9, v8);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
  v11 = (to._object >> 56) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v11 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    MEMORY[0x21CEA23B0]();

    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  else
  {
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v13;
}

uint64_t sub_217746B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24188, &dword_217758930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_217746F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_226_0();
  a34 = v40;
  a35 = v41;
  OUTLINED_FUNCTION_75_20(v42);
  v70 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AC80, &unk_2177973B0);
  v43 = sub_217752D58();
  if (!*(v36 + 16))
  {
LABEL_30:

    *v35 = v43;
    OUTLINED_FUNCTION_225_1();
    return;
  }

  v44 = 0;
  OUTLINED_FUNCTION_2_149();
  OUTLINED_FUNCTION_119_14();
  if (!v38)
  {
LABEL_4:
    v46 = v44;
    while (1)
    {
      v44 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v44 >= v35)
      {
        break;
      }

      ++v46;
      if (*(v36 + 8 * v44))
      {
        OUTLINED_FUNCTION_18_6();
        v38 = v48 & v47;
        goto LABEL_9;
      }
    }

    if (v70)
    {
      v66 = *(v36 + 32);
      OUTLINED_FUNCTION_59_28();
      if (v68 != v69)
      {
        OUTLINED_FUNCTION_58_25(v67);
      }

      else
      {
        OUTLINED_FUNCTION_45_38(v67);
      }

      *(v36 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_118_14();
LABEL_9:
    v49 = v45 | (v44 << 6);
    v50 = (*(v36 + 48) + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    v53 = (*(v36 + 56) + 32 * v49);
    if (v70)
    {
      sub_2172124CC(v53, &a21);
    }

    else
    {
      sub_21721E0AC(v53, &a21);
      sub_217751DE8();
    }

    v54 = v43[5];
    sub_2177531E8();
    sub_217751FF8();
    v55 = sub_217753238();
    OUTLINED_FUNCTION_13_79(v55);
    v57 = *(v39 + 8 * v56);
    OUTLINED_FUNCTION_114_11();
    if (v58)
    {
      break;
    }

    OUTLINED_FUNCTION_30_49();
LABEL_22:
    OUTLINED_FUNCTION_27_58();
    *(v39 + v62) |= v63;
    v65 = (v43[6] + 16 * v64);
    *v65 = v51;
    v65[1] = v52;
    sub_2172124CC(&a21, (v43[7] + 32 * v64));
    OUTLINED_FUNCTION_46_37();
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_29_50();
  while (1)
  {
    OUTLINED_FUNCTION_116_15();
    if (v58)
    {
      if (v60)
      {
        break;
      }
    }

    if (v59 == v61)
    {
      v59 = 0;
    }

    if (*(v39 + 8 * v59) != -1)
    {
      OUTLINED_FUNCTION_28_58();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_217747120(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E260, &unk_2177A2538);
  v47 = a2;
  v7 = sub_217752D58();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v45 = v2;
  v46 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_2_149();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  v16 = 24;
  if (!v12)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_18_6();
        v48 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_32;
    }

    v41 = *(v5 + 32);
    OUTLINED_FUNCTION_59_28();
    v3 = v45;
    if (v43 != v44)
    {
      OUTLINED_FUNCTION_58_25(v42);
    }

    else
    {
      OUTLINED_FUNCTION_45_38(v42);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v48 = (v12 - 1) & v12;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = v22[1];
    v49 = *v22;
    v24 = *(v5 + 56) + v21 * v16;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    if ((v47 & 1) == 0)
    {
      sub_217751DE8();
      sub_21726A5E0(v25, v26, v27);
    }

    v28 = v7[5];
    sub_2177531E8();
    sub_217751FF8();
    v29 = sub_217753238();
    OUTLINED_FUNCTION_13_79(v29);
    v31 = v15[v30];
    OUTLINED_FUNCTION_114_11();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_30_49();
LABEL_23:
    OUTLINED_FUNCTION_27_58();
    *(v15 + v36) |= v37;
    v39 = (v7[6] + 16 * v38);
    *v39 = v49;
    v39[1] = v23;
    v40 = v7[7] + 24 * v38;
    *v40 = v25;
    *(v40 + 8) = v26;
    *(v40 + 16) = v27;
    OUTLINED_FUNCTION_46_37();
    v5 = v46;
    v12 = v48;
    if (!v48)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_29_50();
  while (1)
  {
    OUTLINED_FUNCTION_116_15();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (v15[v33] != -1)
    {
      OUTLINED_FUNCTION_28_58();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_217747368(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2177586D0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2177473CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_94_18(a1, a2, a3, a4, a5);
  v8 = v93;
  v9 = v94;
  OUTLINED_FUNCTION_80_19();
  v11 = v10 >> 6;
  v71 = v5;
  sub_217751DE8();
  v69 = v6;

  v75 = v11;
  v77 = v93;
  while (1)
  {
    v12 = v7;
    v13 = v9;
    if (!v7)
    {
      break;
    }

LABEL_7:
    OUTLINED_FUNCTION_74_19(__rbit64(v12), v65, v67, v69, v71, v73, v75, v77, v79, v81);
    v17 = v16 + 24 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v87 = v21;
    sub_217751DE8();
    v22 = sub_21726A5E0(v19, v18, v20);
    v30 = OUTLINED_FUNCTION_120_12(v22, v23, v24, v25, v26, v27, v28, v29, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v87);
    v31(v30);

    v32 = OUTLINED_FUNCTION_93();
    sub_21726A608(v32, v33, v20);
    if (!v89)
    {
LABEL_19:
      sub_2172303F0();
    }

    LODWORD(v85) = v92;
    v34 = *v95;
    v35 = OUTLINED_FUNCTION_25_0();
    v37 = sub_21763246C(v35, v36);
    v39 = OUTLINED_FUNCTION_117_17(v37, v38);
    if (v41)
    {
      goto LABEL_21;
    }

    v42 = v40;
    if (v34[3] >= v39)
    {
      if ((v86 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v39, v86 & 1);
      v43 = *v95;
      v44 = OUTLINED_FUNCTION_25_0();
      v46 = sub_21763246C(v44, v45);
      if ((v42 & 1) != (v47 & 1))
      {
        goto LABEL_23;
      }

      v37 = v46;
    }

    v84 = (v12 - 1) & v12;
    v48 = *v95;
    if (v42)
    {
      v49 = 3 * v37;
      v50 = v48[7] + 8 * v49;
      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *(v50 + 16);
      v54 = OUTLINED_FUNCTION_93();
      sub_21726A5E0(v54, v55, v53);
      sub_21726A608(v90, v91, v92);

      v56 = v48[7] + 8 * v49;
      v57 = *v56;
      v58 = *(v56 + 8);
      *v56 = v51;
      *(v56 + 8) = v52;
      v59 = *(v56 + 16);
      *(v56 + 16) = v53;
      sub_21726A608(v57, v58, v59);
    }

    else
    {
      v48[(v37 >> 6) + 8] |= 1 << v37;
      v60 = (v48[6] + 16 * v37);
      *v60 = v88;
      v60[1] = v89;
      v61 = v48[7] + 24 * v37;
      *v61 = v90;
      *(v61 + 8) = v91;
      *(v61 + 16) = v92;
      v62 = v48[2];
      v41 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v48[2] = v63;
    }

    HIDWORD(v85) = 1;
    v9 = v13;
    v11 = v75;
    v8 = v77;
    v7 = v84;
  }

  v14 = v9;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_19;
    }

    v12 = *(v8 + 8 * v13);
    ++v14;
    if (v12)
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

uint64_t sub_217747694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_94_18(a1, a2, a3, a4, a5);
  v8 = v83;
  v9 = v84;
  OUTLINED_FUNCTION_80_19();
  v11 = v10 >> 6;
  v61 = v5;
  sub_217751DE8();
  v59 = v6;

  v65 = v11;
  for (i = v83; ; v8 = i)
  {
    v12 = v9;
    v74 = v7;
    if (!v7)
    {
      break;
    }

LABEL_7:
    OUTLINED_FUNCTION_74_19(__rbit64(v7), v55, v57, v59, v61, v63, v65, i, v69, v71);
    v16 = v15 + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v76 = v20;
    v77 = *v16;
    sub_217751DE8();
    v21 = sub_21726A5E0(v18, v17, v19);
    v29 = OUTLINED_FUNCTION_120_12(v21, v22, v23, v24, v25, v26, v27, v28, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v74, v75, v76);
    v30(v29);

    sub_21726A608(v77, v17, v19);
    if (!v79)
    {
LABEL_19:
      sub_2172303F0();
    }

    v31 = *v85;
    v32 = OUTLINED_FUNCTION_145_0();
    v34 = sub_21763246C(v32, v33);
    v36 = OUTLINED_FUNCTION_117_17(v34, v35);
    if (v38)
    {
      goto LABEL_21;
    }

    v39 = v37;
    if (v31[3] >= v36)
    {
      if ((v75 & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217747120(v36, BYTE4(v75) & 1);
      v40 = *v85;
      v41 = OUTLINED_FUNCTION_145_0();
      v43 = sub_21763246C(v41, v42);
      if ((v39 & 1) != (v44 & 1))
      {
        goto LABEL_23;
      }

      v34 = v43;
    }

    v7 &= v7 - 1;
    v45 = *v85;
    if (v39)
    {

      v46 = v45[7] + 24 * v34;
      v47 = *v46;
      v48 = *(v46 + 8);
      *v46 = v80;
      *(v46 + 8) = v81;
      v49 = *(v46 + 16);
      *(v46 + 16) = v82;
      sub_21726A608(v47, v48, v49);
    }

    else
    {
      v45[(v34 >> 6) + 8] |= 1 << v34;
      v50 = (v45[6] + 16 * v34);
      *v50 = v78;
      v50[1] = v79;
      v51 = v45[7] + 24 * v34;
      *v51 = v80;
      *(v51 + 8) = v81;
      *(v51 + 16) = v82;
      v52 = v45[2];
      v38 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      v45[2] = v53;
    }

    HIDWORD(v75) = 1;
    v9 = v12;
    v11 = v65;
  }

  v13 = v9;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_19;
    }

    v7 = *(v8 + 8 * v12);
    ++v13;
    if (v7)
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

uint64_t sub_217747930(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = a5;
  a1[3] = a6;
  *a2 = a7;
  return sub_217751DE8();
}

uint64_t sub_217747944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  sub_217751DE8();
}

uint64_t sub_217747988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21721E0AC(a4, a1);
  sub_217751DE8();
  return a2;
}

uint64_t sub_2177479C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  sub_217751DE8();
  sub_21726A5E0(a4, a5, a6);
  return a2;
}

uint64_t sub_217747A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  v7 = OUTLINED_FUNCTION_25_0();
  result = sub_217747694(v7, v8, a3, v9, v10);
  *a4 = v12;
  return result;
}

uint64_t sub_217747AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_217747ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2177479C8((a2 + 2), *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_217747B14(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_217745ED8(a1, v1[2]);
}

uint64_t sub_217747B38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_217282D8C;

  return sub_217746268(a1, a2, v6, v7, v8);
}

uint64_t sub_217747D04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217747D40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_217747D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217747DE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217747E24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_217747E64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_217747ECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_41_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

__n128 OUTLINED_FUNCTION_11_89()
{
  *(v1 + 16) = v3;
  v5 = v1 + (v2 << 6);
  result = *(v4 - 176);
  v7 = *(v4 - 160);
  v8 = *(v4 - 144);
  *(v5 + 74) = *(v0 + 234);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_75()
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v2 + 64);
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v6;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_15_74()
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *v1 = v0;
  *(v1 + 8) = 0;
  *(v1 + 56) = v4;
  *(v1 + 64) = *(v2 + 64);
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v6;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_18_65()
{
  v2 = *(v0 + 48);
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_20_58()
{
  v6 = v0[16];
  *(v4 - 176) = v0[15];
  *(v4 - 160) = v6;
  *(v4 - 144) = v0[17];
  *(v1 + 234) = *(v1 + 106);

  return sub_2171F0790(v4 - 240, v2, v3);
}

__n128 OUTLINED_FUNCTION_21_57()
{
  v1 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v1;
  result = *(v0 + 144);
  *(v0 + 208) = result;
  *(v0 + 224) = *(v0 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_66(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_45()
{
  v2 = *(v0 + 48);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_40_40()
{
  *(v0 + 296) = -256;

  return sub_217747ECC(v3 - 240, v0 + 48, v1, v2);
}

uint64_t OUTLINED_FUNCTION_41_43()
{

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_45_38@<X0>(uint64_t a1@<X8>)
{

  return sub_217747368(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_49_37()
{
  result = v1;
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_37()
{

  return sub_217292624(v0);
}

uint64_t OUTLINED_FUNCTION_53_32@<X0>(unint64_t a1@<X8>)
{

  return sub_217276318(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_54_29(uint64_t result)
{
  v3 = *(result + 16);
  v2 = *(result + 24);
  *(v1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_29@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 240) = a1;

  return sub_217276318(0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_56_21()
{
  *(v0 + 296) = v2;

  return sub_217747ECC(v4 - 168, v0 + 48, v1, v3);
}

uint64_t OUTLINED_FUNCTION_69_23()
{

  return sub_217747ECC(v2, v3 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_19@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 56);
  v12 = (*(a10 + 48) + 16 * (__clz(a1) | (v10 << 6)));
  v14 = *v12;
  return v12[1];
}

uint64_t OUTLINED_FUNCTION_76_20()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_82_16()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_86_18(uint64_t a1, uint64_t a2)
{
  v3 = v2[66];
  v4 = v2[58];
  __swift_storeEnumTagSinglePayload(v2[56], a2, 1, v2[59]);
  result = sub_21725CF00(v3, 0);
  *v4 = v2[52];
  *(v4 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_87_21()
{
  *(v0 + 32) = v1;
  sub_21725CF00(*(v0 + 40), 1);
}

__n128 OUTLINED_FUNCTION_93_17()
{
  result = *(v1 + 41);
  *(v1 + 105) = result;
  *(v0 + 297) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return sub_217747AA0(a1, a2, a3, (v5 - 144));
}

uint64_t OUTLINED_FUNCTION_102_15(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(a1, v10, v9, v8, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_103_17()
{
  v2 = v0[68];
  v3 = v0[67];
  v0[54] = v0[66];

  return sub_217752738();
}

uint64_t OUTLINED_FUNCTION_105_17()
{
  v2 = v0[66];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[56];

  return LegacySectionedCollectionItemLoader.removeFirst()();
}

uint64_t OUTLINED_FUNCTION_106_14()
{
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v5 = *(v3 + 16);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_107_13()
{
}

uint64_t OUTLINED_FUNCTION_108_14()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_109_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_2175FA70C(v8, v11, v9, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_110_15()
{

  return type metadata accessor for RelatedItem();
}

uint64_t OUTLINED_FUNCTION_111_16()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_112_16()
{
  sub_21725CF00(*(v0 + 32), 1);
}

__n128 OUTLINED_FUNCTION_113_14@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  result = a6;
  *(*(v6 + 48) + 32 * a1) = a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_11(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v3);
  sub_21725CF00(v2, 1);
}

uint64_t OUTLINED_FUNCTION_124_11()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_129_14()
{

  return sub_217752778();
}

uint64_t OUTLINED_FUNCTION_130_14(uint64_t a1)
{
  *(v1 - 264) = a1;

  return sub_217752418();
}

uint64_t OUTLINED_FUNCTION_131_13()
{

  return sub_217752778();
}

uint64_t OUTLINED_FUNCTION_132_14()
{
  result = sub_21725CF00(v1, 0);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_133_13(uint64_t a1, char a2)
{
  sub_217283C5C(a1, a2);
}

uint64_t CatalogSearchSuggestionsRawResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BD0, &qword_217771970);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_131_0();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298();
  sub_2177532C8();
  if (!v2)
  {
    sub_21750B2EC();
    sub_217752E58();
    (*(v8 + 8))(v3, v6);
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CatalogSearchSuggestionsRawResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BE8, &qword_217771978);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_131_0();
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298();
  sub_217751DE8();
  sub_2177532F8();
  sub_21750B340();
  sub_217752F38();

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2177489E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_217748A84(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2E8, &unk_2177A28B0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A2FC();
  sub_2177532F8();
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2D0, &qword_2177A28A8);
  sub_21774A39C(&qword_27CB2E2F0, &qword_27CB2E2F8);
  sub_217752F88();
  return (*(v6 + 8))(v12, v4);
}

uint64_t sub_217748C0C()
{
  OUTLINED_FUNCTION_238();
  sub_21727CEF4();
  return sub_217753238();
}

void *sub_217748C4C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2C0, &qword_2177A28A0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_131_0();
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A2FC();
  sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E2D0, &qword_2177A28A8);
    sub_21774A39C(&qword_27CB2E2D8, &qword_27CB2E2E0);
    sub_217752EA8();
    (*(v6 + 8))(v2, v4);
    v12 = v14;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v12;
}

uint64_t sub_217748DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2177489E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_217748E20(uint64_t a1)
{
  v2 = sub_21774A2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217748E5C(uint64_t a1)
{
  v2 = sub_21774A2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_217748E98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_217748C4C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_217748EFC()
{
  v1 = *v0;
  sub_2177531E8();
  sub_21727CEF4();
  return sub_217753238();
}

uint64_t static CatalogSearchSuggestionsRawResponse.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;
      sub_217751DE8();
      sub_21726FC24();
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

uint64_t sub_217748FA0(uint64_t a1)
{
  v2 = sub_21750B298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217748FDC(uint64_t a1)
{
  v2 = sub_21750B298();

  return MEMORY[0x2821FE720](a1, v2);
}

void CatalogSearchSuggestionsRawResponse.hash(into:)()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_119();

    sub_21727CEF4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }
}

uint64_t CatalogSearchSuggestionsRawResponse.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  sub_217753208();
  if (v1)
  {
    sub_21727CEF4();
  }

  return sub_217753238();
}

BOOL sub_2177490D4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v44 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24718, &qword_217758CA0);
  OUTLINED_FUNCTION_43(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - v21;
  v23 = *a2;
  if (*a1)
  {
    v24 = 0x6C75736552706F74;
  }

  else
  {
    v24 = 0x736D726574;
  }

  if (*a1)
  {
    v25 = 0xEA00000000007374;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  if (*a2)
  {
    v26 = 0x6C75736552706F74;
  }

  else
  {
    v26 = 0x736D726574;
  }

  if (*a2)
  {
    v27 = 0xEA00000000007374;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  v28 = v24 == v26 && v25 == v27;
  if (v28)
  {
  }

  else
  {
    v29 = sub_217753058();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = *(a1 + 16);
  v31 = *(a2 + 2);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    v32 = *(a1 + 8) == *(a2 + 1) && v30 == v31;
    if (!v32 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v33 = *(a1 + 32);
  v34 = *(a2 + 4);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    v35 = *(a1 + 24) == *(a2 + 3) && v33 == v34;
    if (!v35 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v36 = *(a1 + 48);
  v37 = *(a2 + 6);
  if (v36)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = *(a1 + 40) == *(a2 + 5) && v36 == v37;
    if (!v38 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v39 = *(type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion() + 32);
  v40 = *(v16 + 48);
  sub_21774A438(a1 + v39, v22);
  sub_21774A438(&a2[v39], &v22[v40]);
  OUTLINED_FUNCTION_29_1(v22);
  if (v28)
  {
    OUTLINED_FUNCTION_29_1(&v22[v40]);
    if (v28)
    {
      sub_2171F0738(v22, &qword_27CB24710, &unk_2177A28C0);
      return 1;
    }
  }

  else
  {
    sub_21774A438(v22, v15);
    OUTLINED_FUNCTION_29_1(&v22[v40]);
    if (!v41)
    {
      sub_21774A90C(&v22[v40], v10, &qword_27CB24708, &unk_217758C90);
      v43 = sub_21767E9A4(v15, v10);
      sub_2171F0738(v10, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v15, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v22, &qword_27CB24710, &unk_2177A28C0);
      return (v43 & 1) != 0;
    }

    sub_2171F0738(v15, &qword_27CB24708, &unk_217758C90);
  }

  sub_2171F0738(v22, &qword_27CB24718, &qword_217758CA0);
  return 0;
}

uint64_t sub_21774944C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5479616C70736964 && a2 == 0xEB000000006D7265;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

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

uint64_t sub_2177495F4(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6554686372616573;
      break;
    case 2:
      result = 0x5479616C70736964;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217749690(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E350, &qword_2177A2AA8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21774A81C();
  sub_2177532F8();
  v23[15] = *v3;
  v23[14] = 0;
  sub_21774AA2C();
  OUTLINED_FUNCTION_72();
  sub_217752F88();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v16 = *(v3 + 16);
    v23[13] = 1;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    v17 = *(v3 + 24);
    v18 = *(v3 + 32);
    v23[12] = 2;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    v19 = *(v3 + 40);
    v20 = *(v3 + 48);
    v23[11] = 3;
    OUTLINED_FUNCTION_72();
    sub_217752EF8();
    v21 = *(type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion() + 32);
    v23[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
    sub_21774AA80(&qword_27CB2A218);
    OUTLINED_FUNCTION_72();
    sub_217752F38();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_2177498AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25[-v8];
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25[-v13];
  *v1;
  *v1;
  sub_217751FF8();

  if (*(v1 + 16))
  {
    v15 = *(v1 + 8);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + 32))
  {
    v16 = *(v1 + 24);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + 48))
  {
    v17 = *(v1 + 40);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_133_1();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v18 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  sub_21774A438(v1 + *(v18 + 32), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    return OUTLINED_FUNCTION_120();
  }

  sub_21774A90C(v14, v9, &qword_27CB24708, &unk_217758C90);
  OUTLINED_FUNCTION_119();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  v20 = &v9[v3[9]];
  v21 = *v20;
  v22 = v20[1];
  sub_217751FF8();
  v23 = &v9[v3[10]];
  if (v23[1])
  {
    v24 = *v23;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  memcpy(v25, &v9[v3[11]], sizeof(v25));
  sub_2172638E8(a1);
  OUTLINED_FUNCTION_221(v3[12]);
  OUTLINED_FUNCTION_221(v3[13]);
  OUTLINED_FUNCTION_221(v3[14]);
  OUTLINED_FUNCTION_221(v3[15]);
  return sub_2171F0738(v9, &qword_27CB24708, &unk_217758C90);
}

uint64_t sub_217749B2C()
{
  OUTLINED_FUNCTION_238();
  sub_2177498AC(v1);
  return sub_217753238();
}

uint64_t sub_217749B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E338, &qword_2177A2AA0);
  OUTLINED_FUNCTION_0_0(v33);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  v13 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  v14 = OUTLINED_FUNCTION_43(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_21774A81C();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v31 = v13;
  v39 = 0;
  sub_21774A870();
  OUTLINED_FUNCTION_5_118();
  sub_217752EA8();
  *v19 = v40;
  v38 = 1;
  OUTLINED_FUNCTION_5_118();
  *(v19 + 1) = sub_217752E18();
  *(v19 + 2) = v22;
  v37 = 2;
  OUTLINED_FUNCTION_5_118();
  *(v19 + 3) = sub_217752E18();
  *(v19 + 4) = v23;
  v36 = 3;
  OUTLINED_FUNCTION_5_118();
  *(v19 + 5) = sub_217752E18();
  v30 = v19;
  *(v19 + 6) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v35 = 4;
  sub_21774AA80(&qword_27CB2A270);
  OUTLINED_FUNCTION_5_118();
  sub_217752E58();
  v25 = OUTLINED_FUNCTION_82();
  v26(v25);
  v27 = v30;
  sub_21774A90C(v8, &v30[*(v31 + 32)], &qword_27CB24710, &unk_2177A28C0);
  sub_21774A96C(v27, v32);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_21774A9D0(v27);
}

uint64_t sub_217749F94()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_21727CEF4();
  }

  return sub_217753238();
}

uint64_t sub_217749FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21774944C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21774A024(uint64_t a1)
{
  v2 = sub_21774A81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21774A060(uint64_t a1)
{
  v2 = sub_21774A81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21774A0D8()
{
  sub_2177531E8();
  sub_2177498AC(v1);
  return sub_217753238();
}

unint64_t sub_21774A118()
{
  result = qword_27CB2E298;
  if (!qword_27CB2E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E298);
  }

  return result;
}

unint64_t sub_21774A1A0()
{
  result = qword_27CB2E2A0;
  if (!qword_27CB2E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2A0);
  }

  return result;
}

unint64_t sub_21774A1F8()
{
  result = qword_27CB2E2A8;
  if (!qword_27CB2E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2A8);
  }

  return result;
}

unint64_t sub_21774A250()
{
  result = qword_27CB2E2B0;
  if (!qword_27CB2E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2B0);
  }

  return result;
}

unint64_t sub_21774A2A8()
{
  result = qword_27CB2E2B8;
  if (!qword_27CB2E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2B8);
  }

  return result;
}

unint64_t sub_21774A2FC()
{
  result = qword_27CB2E2C8;
  if (!qword_27CB2E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E2C8);
  }

  return result;
}

uint64_t type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion()
{
  result = qword_27CB2E300;
  if (!qword_27CB2E300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21774A39C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E2D0, &qword_2177A28A8);
    sub_21774A8C4(a2, type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21774A438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_21774A4A8(_BYTE *result, int a2, int a3)
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

void sub_21774A57C()
{
  sub_21774A618();
  if (v0 <= 0x3F)
  {
    sub_21774A668();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21774A618()
{
  if (!qword_280BE7598)
  {
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7598);
    }
  }
}

void sub_21774A668()
{
  if (!qword_27CB2E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB2E310);
    }
  }
}

unint64_t sub_21774A718()
{
  result = qword_27CB2E320;
  if (!qword_27CB2E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E320);
  }

  return result;
}

unint64_t sub_21774A770()
{
  result = qword_27CB2E328;
  if (!qword_27CB2E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E328);
  }

  return result;
}

unint64_t sub_21774A7C8()
{
  result = qword_27CB2E330;
  if (!qword_27CB2E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E330);
  }

  return result;
}

unint64_t sub_21774A81C()
{
  result = qword_27CB2E340;
  if (!qword_27CB2E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E340);
  }

  return result;
}

unint64_t sub_21774A870()
{
  result = qword_27CB2E348;
  if (!qword_27CB2E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E348);
  }

  return result;
}

uint64_t sub_21774A8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21774A90C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21774A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21774A9D0(uint64_t a1)
{
  v2 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21774AA2C()
{
  result = qword_27CB2E358;
  if (!qword_27CB2E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E358);
  }

  return result;
}

uint64_t sub_21774AA80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24708, &unk_217758C90);
    sub_21774A8C4(&qword_27CB2A220, type metadata accessor for CatalogSearchRawResponse.TopResult);
    sub_21774A8C4(&qword_27CB2A228, type metadata accessor for CatalogSearchRawResponse.TopResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogSearchSuggestionsRawResponse.Suggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21774AC34()
{
  result = qword_27CB2E360;
  if (!qword_27CB2E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E360);
  }

  return result;
}

unint64_t sub_21774AC8C()
{
  result = qword_27CB2E368;
  if (!qword_27CB2E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E368);
  }

  return result;
}

unint64_t sub_21774ACE4()
{
  result = qword_27CB2E370;
  if (!qword_27CB2E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E370);
  }

  return result;
}

uint64_t sub_21774AD3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v67 = *v2;
  v68 = v4;
  v58 = *(v2 + 32);
  v66[0] = *(v2 + 33);
  v5 = *(v2 + 7);
  *(v66 + 15) = *(v2 + 6);
  v70[0] = v67;
  v64 = v5;
  v65 = v5;
  if (!*(v5 + 16))
  {
    sub_21774C5E4(v70, &v59);
    sub_217202078(&v65, &v59, &qword_27CB25590, &qword_21776DFB0);
LABEL_7:
    v18 = 0;
    v57 = 0;
    v19 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_21774C5E4(v70, &v59);
  sub_217202078(&v65, &v59, &qword_27CB25590, &qword_21776DFB0);
  v7 = sub_21763246C(0xD000000000000013, 0x80000002177AC9D0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(v5 + 56) + 24 * v7;
  if (*(v9 + 16))
  {
    goto LABEL_7;
  }

  v10 = *(v9 + 8);
  v56 = *v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 48);
  sub_217751DE8();
  v14 = v13(v11, v12);
  v16 = v15;
  static MusicAuthorization.currentStatus.getter(&v59);
  if (!v16)
  {
    v17 = v59;
    switch(v59)
    {
      case 3:

        goto LABEL_50;
      default:
        v36 = sub_217753058();

        if (v36)
        {
LABEL_50:
          v48 = [objc_opt_self() deviceLibrary];
          v49 = [v48 uniqueIdentifier];

          v14 = sub_217751F48();
          v16 = v50;

          goto LABEL_51;
        }

        if (qword_280BE8358 != -1)
        {
          swift_once();
        }

        v37 = sub_217751AF8();
        __swift_project_value_buffer(v37, qword_280C02570);
        sub_217751DE8();
        v38 = sub_217751AD8();
        v39 = sub_217752808();
        sub_21726A608(v56, v10, 0);
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v69 = v41;
          *v40 = 136315394;
          v42 = sub_21729C0E8(v56, v10, &v69);
          sub_21726A608(v56, v10, 0);
          *(v40 + 4) = v42;
          *(v40 + 12) = 2080;
          v43 = 0xE600000000000000;
          v44 = 0x6465696E6564;
          if (v17 != 1)
          {
            v44 = 0x7463697274736572;
            v43 = 0xEA00000000006465;
          }

          if (v17)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0x7265746544746F6ELL;
          }

          if (v17)
          {
            v46 = v43;
          }

          else
          {
            v46 = 0xED000064656E696DLL;
          }

          *&v59 = 46;
          *(&v59 + 1) = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v45, v46);

          v47 = sub_21729C0E8(v59, *(&v59 + 1), &v69);

          *(v40 + 14) = v47;
          _os_log_impl(&dword_2171EE000, v38, v39, "Cannot correlate database ID from PlayParameters encoded data %s with the database ID of the active user. This process is not authorized to access the user's Apple Music content. Music authorization status: %s.", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CEA4360](v41, -1, -1);
          MEMORY[0x21CEA4360](v40, -1, -1);
        }

        else
        {

          sub_21726A608(v56, v10, 0);
        }

        break;
    }

    goto LABEL_7;
  }

LABEL_51:
  if (v56 == v14 && v10 == v16)
  {
    sub_21726A608(v56, v10, 0);
  }

  else
  {
    v52 = sub_217753058();
    sub_21726A608(v56, v10, 0);
    if ((v52 & 1) == 0)
    {

      goto LABEL_7;
    }
  }

  if (*(v5 + 16) && (v53 = sub_21763246C(0xD000000000000015, 0x80000002177AC9B0), (v54 & 1) != 0) && (v55 = *(v5 + 56) + 24 * v53, !*(v55 + 16)))
  {
    v18 = *v55;
    v57 = *(v55 + 8);
    sub_217751DE8();
    v19 = v14;
  }

  else
  {

    v18 = 0;
    v57 = 0;
    v19 = 0;
    v16 = 0;
  }

  sub_2172A4E08(0xD000000000000015, 0x80000002177AC9B0, &v59);
  sub_2173A4614(v59, *(&v59 + 1), v60);
  sub_2172A4E08(0xD000000000000013, 0x80000002177AC9D0, &v59);
  sub_2173A4614(v59, *(&v59 + 1), v60);
LABEL_8:
  v20 = v64;
  if (*(v64 + 16) && (v21 = sub_21763246C(0xD000000000000012, 0x80000002177AC990), (v22 & 1) != 0) && (v23 = *(v20 + 56) + 24 * v21, !*(v23 + 16)))
  {
    v24 = *v23;
    v25 = *(v23 + 8);
    sub_217751DE8();
    sub_2172A4E08(0xD000000000000012, 0x80000002177AC990, &v59);
    sub_2173A4614(v59, *(&v59 + 1), v60);
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v59 = v68;
  v69 = *(v66 + 7);
  v26 = *(v66 + 15);
  if (*(v66 + 15))
  {
    v27 = v69;
    v28 = v59;
    v29 = v59 == 0x6D75626C61 && *(&v59 + 1) == 0xE500000000000000;
    if (v29 || (sub_217753058() & 1) != 0)
    {
      v30 = 0;
    }

    else
    {
      v34 = v28 == 0x7473696C79616C70 && *(&v28 + 1) == 0xE800000000000000;
      if (v34 || (sub_217753058() & 1) != 0)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
        if (v28 != 0x6E6F6974617473 || *(&v28 + 1) != 0xE700000000000000)
        {
          if (sub_217753058())
          {
            v30 = 3;
          }

          else
          {
            v30 = 6;
          }
        }
      }
    }

    sub_217202078(&v69, v61, &qword_27CB2E388, qword_2177A2D00);
  }

  else
  {
    v27 = 0;
    v30 = 0;
  }

  v31 = v64;
  v32 = v59;
  v62 = v70[0];
  v63 = v59;
  *a2 = v70[0];
  *(a2 + 16) = v32;
  *(a2 + 32) = v58;
  *(a2 + 40) = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v30;
  *(a2 + 64) = v24;
  *(a2 + 72) = v25;
  *(a2 + 80) = v18;
  *(a2 + 88) = v57;
  *(a2 + 96) = v19;
  *(a2 + 104) = v16;
  *(a2 + 112) = v31;
  return sub_21774C640(&v59, v61);
}

__n128 MusicIdentifierSet.playParameters(for:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v18 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v19 = *(v2 + 32);
  v8 = *(v2 + 48);
  v20 = *(v2 + 16);
  v21 = *(v2 + 40);
  v10 = *(v2 + 136);
  v9 = *(v2 + 144);
  v11 = *(v2 + 152);
  v12 = *(v2 + 160);
  v13 = *(v2 + 272);
  if (v13 != 1)
  {
    if (v7)
    {
      sub_217751DE8();
      v17 = v20;
      v6 = v7;
      goto LABEL_7;
    }

LABEL_6:
    v17 = v5;
    sub_217751DE8();

    goto LABEL_7;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  sub_217751DE8();
  v17 = v21;
  v6 = v8;
LABEL_7:
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172A5428(v10, v9);
  v14 = sub_217751DC8();
  *a2 = v17;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 24) = v4;
  *(a2 + 32) = v13;
  *(a2 + 40) = v20;
  *(a2 + 48) = v7;
  result.n128_u64[0] = v21;
  result.n128_u64[1] = v8;
  *&v16 = v10;
  *(&v16 + 1) = v9;
  *(a2 + 56) = v19;
  *(a2 + 64) = result;
  *(a2 + 80) = v16;
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  *(a2 + 112) = v14;
  return result;
}

uint64_t sub_21774B5EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  LODWORD(v10) = *(a1 + 32);
  v11 = a1[8];
  v53 = a1[9];
  v54 = a1[11];
  v55 = a1[12];
  v56 = a1[13];
  v57 = a1[10];
  v12 = a1[14];
  v35 = v3[1];
  v36 = *v3;
  v37 = *(v3 + 32);
  v52 = v3[8];
  v42 = v3[10];
  v39 = v3[9];
  v40 = v3[11];
  if (*(v3[14] + 16) >= *(v12 + 16))
  {
    v13 = v3[14];
  }

  else
  {
    v13 = a1[14];
  }

  v48 = v3[12];
  v49 = v3[13];
  v45 = v13;
  sub_217751DE8();
  v50 = v7;
  v51 = v6;
  v62 = v7;
  v63 = v6;
  v46 = v9;
  v47 = v8;
  v64 = v9;
  v65 = v8;
  v44 = v10;
  v66 = v10;
  *v67 = *(a1 + 33);
  *&v67[15] = *(a1 + 3);
  v38 = v11;
  v68 = v11;
  v69 = v53;
  v70 = v57;
  v71 = v54;
  v72 = v55;
  v73 = v56;
  v74 = v12;
  v14 = v60;
  sub_21774BB14(v60);
  v15 = v61;
  if (v61)
  {
    v16 = v40;
    v17 = v42;
  }

  else
  {
    v58 = *(v3 + 1);
    *v59 = *(v3 + 33);
    *&v59[15] = *(v3 + 3);
    v17 = v42;
    v16 = v40;
    v14 = v75;
    sub_21774BB14(v75);
    v15 = v76;
  }

  v18 = v14[16];
  v19 = *v14;
  v20 = v7;
  if (v53)
  {
    v21 = v38;
    v22 = v53;
    v23 = v6;
    v24 = v16;
    v25 = v49;
  }

  else
  {
    v23 = v6;
    v24 = v16;
    v43 = v18;
    v41 = v19;
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v26 = v39;
      v21 = v52;
      if (!v39)
      {
        if (v37 == 2 || (v37 & 1) == 0)
        {
          v21 = 0;
          v26 = 0;
        }

        else
        {
          v21 = v36;
          v26 = sub_217751DE8();
        }
      }
    }

    else
    {
      v21 = v7;
      v26 = v51;
    }

    sub_217751DE8();
    v25 = v49;
    v20 = v50;
    v18 = v43;
    v19 = v41;
    v22 = v26;
  }

  v28 = v56;
  v27 = v57;
  v29 = v55;
  v30 = v54;
  if (!v54)
  {
    v31 = v18;
    v32 = v19;
    v10 = v20;
    v33 = v22;
    sub_2172A5428(v17, v24);
    v22 = v33;
    v20 = v10;
    LOBYTE(v10) = v44;
    v19 = v32;
    v18 = v31;
    v27 = v17;
    v30 = v24;
    v23 = v51;
    v29 = v48;
    v28 = v25;
  }

  *a2 = v20;
  *(a2 + 8) = v23;
  *(a2 + 16) = v46;
  *(a2 + 24) = v47;
  *(a2 + 32) = v10;
  *(a2 + 40) = v19;
  *(a2 + 48) = v15;
  *(a2 + 56) = v18;
  *(a2 + 64) = v21;
  *(a2 + 72) = v22;
  *(a2 + 80) = v27;
  *(a2 + 88) = v30;
  *(a2 + 96) = v29;
  *(a2 + 104) = v28;
  *(a2 + 112) = v45;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();

  return sub_2172A5428(v57, v54);
}

uint64_t sub_21774B91C()
{
  sub_217751DC8();
  v1 = sub_217751378();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_217751368();
  memcpy(__dst, v0, sizeof(__dst));
  sub_2172DF550();
  v4 = sub_217751358();
  v6 = v5;
  v7 = sub_217751348();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_217751338();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();

  sub_217275694(v4, v6);

  sub_2173A1E08(__dst[0]);

  sub_21774C5A0();
  sub_217751DE8();
  v10 = sub_21774C448();
  if (v10)
  {
    v11 = v10;

    return v11;
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21774BB14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3)
  {
    v4 = v1[5];
    v5 = *(v1 + 56);
    v6 = v3;
  }

  else
  {
    v4 = *v1;
    v6 = v1[1];
    v7 = v1[2];
    v8 = v1[3];
    v9 = *(v1 + 32);
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v10 = v7 == 0x6D75626C61 && v8 == 0xE500000000000000;
      if (v10 || (v11 = v1[2], v12 = v1[3], (sub_217753058() & 1) != 0))
      {
        v5 = 0;
      }

      else
      {
        v14 = v7 == 0x7473696C79616C70 && v8 == 0xE800000000000000;
        if (v14 || (sub_217753058() & 1) != 0)
        {
          v5 = 2;
        }

        else
        {
          v5 = 3;
          if (v7 != 0x6E6F6974617473 || v8 != 0xE700000000000000)
          {
            if (sub_217753058())
            {
              v5 = 3;
            }

            else
            {
              v5 = 6;
            }
          }
        }
      }

      sub_217751DE8();
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v5 = 0;
    }
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;

  return sub_217751DE8();
}

void static PlayParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v71 = *(a1 + 56);
  v69 = *(a1 + 64);
  v73 = *(a1 + 72);
  v64 = *(a1 + 88);
  v65 = *(a1 + 80);
  v66 = *(a1 + 96);
  v67 = *(a1 + 104);
  v59 = *(a1 + 112);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v70 = *(a2 + 56);
  v68 = *(a2 + 64);
  v72 = *(a2 + 72);
  v62 = *(a2 + 88);
  v63 = *(a2 + 80);
  v60 = *(a2 + 96);
  v61 = *(a2 + 104);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v58 = *(a2 + 112);
  if (!v12 && (sub_217753058() & 1) == 0)
  {
    return;
  }

  v13 = v2 == v7 && v3 == v8;
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    return;
  }

  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return;
    }
  }

  else if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
  {
    return;
  }

  if (!v6)
  {
    if (!v11)
    {

      goto LABEL_30;
    }

LABEL_25:
    sub_217751DE8();

    return;
  }

  if (!v11)
  {
    goto LABEL_25;
  }

  if (v5 == v10 && v6 == v11)
  {
    OUTLINED_FUNCTION_3_137();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v15 = sub_217753058();
    OUTLINED_FUNCTION_3_137();
    swift_bridgeObjectRetain_n();
    if ((v15 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_137();
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  OUTLINED_FUNCTION_3_137();
  swift_bridgeObjectRelease_n();
  if (v71 == v70)
  {
LABEL_30:
    if (v73)
    {
      if (!v72)
      {
        return;
      }

      v16 = v69 == v68 && v73 == v72;
      if (!v16 && (sub_217753058() & 1) == 0)
      {
        return;
      }
    }

    else if (v72)
    {
      return;
    }

    if (v64)
    {
      if (v62)
      {
        v17 = v65 == v63 && v64 == v62;
        if (v17 || (sub_217753058() & 1) != 0)
        {
          if (v66 != v60 || v67 != v61)
          {
            v19 = sub_217753058();
            v20 = OUTLINED_FUNCTION_5_1();
            sub_2172A5428(v20, v21);
            v22 = OUTLINED_FUNCTION_1_154();
            sub_2172A5428(v22, v23);
            v24 = OUTLINED_FUNCTION_5_1();
            sub_2172A5428(v24, v25);
            v26 = OUTLINED_FUNCTION_1_154();
            sub_2172B8404(v26, v27);

            v28 = OUTLINED_FUNCTION_5_1();
            sub_2172B8404(v28, v29);
            if ((v19 & 1) == 0)
            {
              return;
            }

            goto LABEL_61;
          }

          v40 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v40, v41);
          v42 = OUTLINED_FUNCTION_2_150();
          sub_2172A5428(v42, v43);
          v44 = OUTLINED_FUNCTION_5_1();
          sub_2172A5428(v44, v45);
          v46 = OUTLINED_FUNCTION_2_150();
          sub_2172B8404(v46, v47);

LABEL_60:
          v48 = OUTLINED_FUNCTION_5_1();
          sub_2172B8404(v48, v49);
LABEL_61:

          sub_217261FB0(v59, v58);
          return;
        }

        v50 = OUTLINED_FUNCTION_5_1();
        sub_2172A5428(v50, v51);
        v52 = OUTLINED_FUNCTION_1_154();
        sub_2172A5428(v52, v53);
        v54 = OUTLINED_FUNCTION_5_1();
        sub_2172A5428(v54, v55);
        v56 = OUTLINED_FUNCTION_1_154();
        sub_2172B8404(v56, v57);

        v38 = OUTLINED_FUNCTION_5_1();
LABEL_56:
        sub_2172B8404(v38, v39);
        return;
      }

      v32 = OUTLINED_FUNCTION_5_1();
      sub_2172A5428(v32, v33);
      OUTLINED_FUNCTION_4_147();
      v34 = OUTLINED_FUNCTION_5_1();
      sub_2172A5428(v34, v35);
    }

    else
    {
      sub_2172A5428(v65, 0);
      if (!v62)
      {
        OUTLINED_FUNCTION_4_147();
        goto LABEL_60;
      }

      v30 = OUTLINED_FUNCTION_1_154();
      sub_2172A5428(v30, v31);
    }

    v36 = OUTLINED_FUNCTION_5_1();
    sub_2172B8404(v36, v37);
    v38 = OUTLINED_FUNCTION_1_154();
    goto LABEL_56;
  }
}

uint64_t PlayParameters.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  v9 = v1[5];
  v8 = v1[6];
  v10 = *(v1 + 56);
  v11 = v1[9];
  v12 = v1[11];
  v14 = v1[8];
  v15 = v1[10];
  v16 = v1[13];
  v17 = v1[12];
  v18 = v1[14];
  sub_217751FF8();
  sub_217751FF8();
  if (v7 != 2)
  {
    OUTLINED_FUNCTION_89();
  }

  sub_217753208();
  if (v8)
  {
    OUTLINED_FUNCTION_89();
    sub_217751FF8();
    MEMORY[0x21CEA3550](v10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_217753208();
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_217753208();
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_5:
  OUTLINED_FUNCTION_89();
  sub_217751FF8();
  if (v12)
  {
LABEL_6:
    OUTLINED_FUNCTION_89();
    sub_217751FF8();
    sub_217751FF8();
    goto LABEL_10;
  }

LABEL_9:
  sub_217753208();
LABEL_10:

  return sub_217265A08(a1, v18);
}

uint64_t PlayParameters.hashValue.getter()
{
  sub_2177531E8();
  PlayParameters.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_21774C1E8()
{
  sub_2177531E8();
  PlayParameters.hash(into:)(v1);
  return sub_217753238();
}

uint64_t PlayParameters.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v16);
  sub_2171FF30C(v16, __src);
  sub_2173A94AC(__src, &v13);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_2171FF30C(v16, v12);
    v21[0] = v13;
    v21[1] = v14;
    v21[2] = *v15;
    v22 = *&v15[16];
    sub_2175B7B18(v21, __src);
    sub_217386444();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17[0] = v13;
    v17[1] = v14;
    v18 = v15[0];
    v19 = *&v15[8];
    v20 = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    Decoder.dataRequestConfiguration.getter(v7, v8);
    sub_21774AD3C(v10, __src);
    sub_21774C4D0(v17);
    sub_21733AB9C(v10);
    memcpy(a2, __src, 0x78uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PlayParameters.encode(to:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_2173A9938(v5);
  sub_2175B37C4(a1);
  return sub_21774C4D0(v5);
}

id sub_21774C448()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_217751D88();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_21774C4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2E378, &qword_2177A2BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21774C53C()
{
  result = qword_27CB2E380;
  if (!qword_27CB2E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E380);
  }

  return result;
}

unint64_t sub_21774C5A0()
{
  result = qword_27CB2AFE0;
  if (!qword_27CB2AFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB2AFE0);
  }

  return result;
}

uint64_t sub_21774C69C(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_217635FD4(), (v3 & 1) == 0))
  {

    return 4;
  }

  sub_21721E0AC(*(a1 + 56) + 32 * v2, v6);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  result = sub_21774C748(v5);
  if (result == 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_21774C748(uint64_t a1)
{
  v1 = [objc_opt_self() typeForRawValue_];
  if (v1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x201000304uLL >> (8 * v1));
  }
}

id sub_21774C7A4(char a1)
{
  v1 = qword_2177A2DC8[a1];
  v2 = objc_opt_self();

  return [v2 rawValueForType_];
}

uint64_t sub_21774C7F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21774C748(*a1);
  *a2 = result;
  return result;
}

id sub_21774C824@<X0>(void *a1@<X8>)
{
  result = sub_21774C7A4(*v1);
  *a1 = result;
  return result;
}

_BYTE *_s4KindOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21774C930()
{
  result = qword_27CB2E390;
  if (!qword_27CB2E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E390);
  }

  return result;
}

unint64_t sub_21774C988()
{
  result = qword_27CB2E398;
  if (!qword_27CB2E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2E3A0, qword_2177A2D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E398);
  }

  return result;
}

void static CloudRealm.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_217753058() & 1) != 0)
  {
    v9 = v2 == v5 && v4 == v6;
    if (v9 || (sub_217753058() & 1) != 0)
    {
      OUTLINED_FUNCTION_93();

      sub_217270404();
    }
  }
}

uint64_t CloudRealm.init(scheme:host:additionalQueryItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t CloudRealm.scheme.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudRealm.host.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void CloudRealm.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_217751FF8();
  sub_217751FF8();
  v6 = OUTLINED_FUNCTION_93();

  sub_21727D208(v6, v7);
}

uint64_t CloudRealm.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_21727D208(v7, v5);
  return sub_217753238();
}

uint64_t sub_21774CBFC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_2177531E8();
  CloudRealm.hash(into:)();
  return sub_217753238();
}

void sub_21774CC54()
{
  qword_27CB2E3A8 = 0x7370747468;
  unk_27CB2E3B0 = 0xE500000000000000;
  qword_27CB2E3B8 = 0xD000000000000013;
  unk_27CB2E3C0 = 0x80000002177B6E90;
  qword_27CB2E3C8 = MEMORY[0x277D84F90];
}

uint64_t static CloudRealm.public.getter@<X0>(void *a1@<X8>)
{
  if (qword_27CB23EE8 != -1)
  {
    swift_once();
  }

  v2 = unk_27CB2E3B0;
  v3 = qword_27CB2E3B8;
  v4 = unk_27CB2E3C0;
  v5 = qword_27CB2E3C8;
  *a1 = qword_27CB2E3A8;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

unint64_t sub_21774CD38()
{
  result = qword_27CB2E3D0;
  if (!qword_27CB2E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E3D0);
  }

  return result;
}

uint64_t sub_21774CD8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21774CDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static MusicItemDataSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v4)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 0);
      v6 = 0;
      goto LABEL_28;
    case 1uLL:
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      v7 = 1;
      v8 = OUTLINED_FUNCTION_1_155(*a1, 1uLL);
      sub_21726B8A0(v8, 1uLL);
      return v7;
    case 2uLL:
      if (v4 != 2)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 2uLL);
      v6 = 2;
      goto LABEL_28;
    case 3uLL:
      if (v4 != 3)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 3uLL);
      v6 = 3;
      goto LABEL_28;
    case 4uLL:
      if (v4 != 4)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 4uLL);
      v6 = 4;
      goto LABEL_28;
    case 5uLL:
      if (v4 != 5)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 5uLL);
      v6 = 5;
      goto LABEL_28;
    case 6uLL:
      if (v4 != 6)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 6uLL);
      v6 = 6;
      goto LABEL_28;
    case 7uLL:
      if (v4 != 7)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 7uLL);
      v6 = 7;
      goto LABEL_28;
    case 8uLL:
      if (v4 != 8)
      {
        goto LABEL_21;
      }

      v5 = OUTLINED_FUNCTION_1_155(*a1, 8uLL);
      v6 = 8;
      goto LABEL_28;
    default:
      if (v4 >= 9)
      {
        v13 = *a1;
        if (v2 != *a2 || v3 != v4)
        {
          v15 = sub_217753058();
          v16 = OUTLINED_FUNCTION_6_7();
          OUTLINED_FUNCTION_0_173(v16, v17);
          v18 = OUTLINED_FUNCTION_6_7();
          sub_21726B8A0(v18, v19);
          return v15 & 1;
        }

        OUTLINED_FUNCTION_0_173(v13, v3);
        v5 = v2;
        v6 = v3;
LABEL_28:
        sub_21726B8A0(v5, v6);
        return 1;
      }

      else
      {
LABEL_21:
        v9 = OUTLINED_FUNCTION_6_7();
        OUTLINED_FUNCTION_0_173(v9, v10);
        v11 = OUTLINED_FUNCTION_6_7();
        sub_21726B8A0(v11, v12);
        return 0;
      }
  }
}

uint64_t MusicItemDataSource.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_11;
    case 1:
      v1 = 1;
      goto LABEL_11;
    case 2:
      v1 = 2;
      goto LABEL_11;
    case 3:
      v1 = 3;
      goto LABEL_11;
    case 4:
      v1 = 4;
      goto LABEL_11;
    case 5:
      v1 = 5;
      goto LABEL_11;
    case 6:
      v1 = 6;
      goto LABEL_11;
    case 7:
      v1 = 7;
      goto LABEL_11;
    case 8:
      v1 = 8;
LABEL_11:
      result = MEMORY[0x21CEA3550](v1);
      break;
    default:
      v3 = *v0;
      MEMORY[0x21CEA3550](9);

      result = sub_217751FF8();
      break;
  }

  return result;
}

uint64_t MusicItemDataSource.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_2177531E8();
  switch(v1)
  {
    case 0:
      v3 = 0;
      goto LABEL_11;
    case 1:
      v3 = 1;
      goto LABEL_11;
    case 2:
      v3 = 2;
      goto LABEL_11;
    case 3:
      v3 = 3;
      goto LABEL_11;
    case 4:
      v3 = 4;
      goto LABEL_11;
    case 5:
      v3 = 5;
      goto LABEL_11;
    case 6:
      v3 = 6;
      goto LABEL_11;
    case 7:
      v3 = 7;
      goto LABEL_11;
    case 8:
      v3 = 8;
LABEL_11:
      MEMORY[0x21CEA3550](v3);
      break;
    default:
      MEMORY[0x21CEA3550](9);
      sub_217751FF8();
      break;
  }

  return sub_217753238();
}

uint64_t sub_21774D1E4()
{
  v2 = *v0;
  sub_2177531E8();
  MusicItemDataSource.hash(into:)();
  return sub_217753238();
}

double MusicItemDataSource.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2171FF30C(a1, v6);
  sub_21772D55C();
  sub_2175DA0A0();
  sub_217752258();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2175DA0F4(v7, v8, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = v6[0];
    *a2 = *v6;
  }

  return result;
}

uint64_t MusicItemDataSource.encode(to:)()
{
  v2 = *v0;
  sub_2175DA3B4();
  sub_21772D3F8();
  sub_2175DA0A0();
  sub_217752208();
}

unint64_t sub_21774D364()
{
  result = qword_27CB2E3D8;
  if (!qword_27CB2E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2E3D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A14ItemDataSourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21774D400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774D458(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_21774D4B8(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v8 = swift_allocObject();
  sub_21774DC90(a1, a2, a3, a4);
  return v8;
}

uint64_t LegacySectionedCollectionItemLoader.indices.getter()
{
  v1 = *v0;
  sub_21774DFA8();
  v2 = *(v1 + 80);
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  sub_217752658();

  return v4;
}

uint64_t LegacySectionedCollectionItemLoader.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(*(*v2 + 80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  result = sub_217752338();
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  if (a2 < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 < a2)
  {
    v7 = a1;
    do
    {
      v8 = v7 + 1;
      LegacySectionedCollectionItemLoader.subscript.getter();
      sub_217752418();
      sub_2177523C8();
      v7 = v8;
    }

    while (a2 != v8);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2E3E0, &qword_2177A2FE0);
    sub_21759CA0C();
    sub_2177527D8();
    result = sub_2177527C8();
    if (__OFSUB__(v11, v10))
    {
      __break(1u);
    }

    else if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      v9 = sub_217752478();

      return v9;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t LegacySectionedCollectionItemLoader.subscript.getter()
{
  v1 = *v0;
  sub_21774DFE0();
  v2 = *(v1 + 80);
  UnfairLock.locked<A>(_:)(sub_21774FB40);
}

uint64_t sub_21774D878(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v2;
  v6 = sub_21774DFA8();
  v7 = *(v5 + 80);
  v8 = sub_2177528F8();
  v9 = a2(a1, v6, v8);

  return v9;
}

uint64_t sub_21774D8FC()
{
  v1 = *v0;
  sub_21774DFA8();
  OUTLINED_FUNCTION_0_174();
  v3 = *(v2 + 80);
  sub_2177528F8();
  sub_2177523E8();
}

Swift::Int_optional __swiftcall LegacySectionedCollectionItemLoader.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v4 = *v3;
  sub_21774DFA8();
  v5 = *(v4 + 80);
  sub_2177528F8();
  v6 = sub_2177523A8();

  v7 = v6;
  v8 = 0;
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t sub_21774DA1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *v3;
  v8 = sub_21774DFA8();
  v9 = *(v7 + 80);
  v10 = sub_2177528F8();
  v11 = a3(a1, a2, v8, v10);

  return v11;
}

uint64_t LegacySectionedCollectionItemLoader.isEmpty.getter()
{
  v1 = *v0;
  sub_21774DFA8();
  v2 = *(v1 + 80);
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  LOBYTE(v1) = sub_217752738();

  return v1 & 1;
}

uint64_t LegacySectionedCollectionItemLoader.removeFirst()()
{
  v1 = *v0;
  sub_21774DFE0();
  OUTLINED_FUNCTION_0_174();
  v3 = *(v2 + 80);
  UnfairLock.locked<A>(_:)(sub_21774FB5C);
}

id static LegacySectionedCollectionItemLoader.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    return [*(a1 + 16) hasSameContentAsSectionedCollection_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774DC28(uint64_t (*a1)(uint64_t, uint64_t))
{
  v4 = *v1;
  sub_21774DFA8();
  OUTLINED_FUNCTION_0_174();
  v6 = *(v5 + 80);
  v7 = sub_2177528F8();
  v8 = a1(v2, v7);

  return v8;
}

uint64_t *sub_21774DC90(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 80);
  v26 = sub_2177528F8();
  v11 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v12);
  v14 = &v26 - v13;
  v15 = *a2;
  LODWORD(a2) = *(a2 + 8);
  v16 = *a3;
  v17 = *a4;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *(v18 + 16) = v19;
  *v19 = 0;
  v4[8] = v18;
  v4[2] = a1;
  v4[3] = v15;
  *(v4 + 32) = a2;
  v4[5] = v16;
  *(v4 + 48) = v17;
  v27 = v15;
  v28 = a2;
  v20 = *(v9 + 88);
  v21 = a1;
  sub_217290154(v21, &v27, &v29);
  v22 = v31;
  v23 = v32;
  v4[9] = v29;
  *(v4 + 5) = v30;
  *(v4 + 96) = v22;
  v4[13] = v23;
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v10);
  if (a2 == 1)
  {
    [v21 totalItemCount];
  }

  else
  {
    [v21 numberOfItemsInSection_];
  }

  v24 = sub_217752408();

  v4[7] = v24;
  return v4;
}

uint64_t LegacySectionedCollectionItemLoader.__allocating_init(legacySectionedCollection:kind:dataSources:propertyProviderSource:)(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v12 = v6;
    v13 = v4;
    LOBYTE(v14) = v5;
    v11 = v7;
    v9 = sub_21774D4B8(v8, &v13, &v12, &v11);
    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000001CLL, 0x80000002177B6EB0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD00000000000004ALL, 0x80000002177B6ED0);
    result = OUTLINED_FUNCTION_4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21774DFA8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  return sub_217751DE8();
}

uint64_t sub_21774DFE8()
{
  v1 = *v0;
  v8 = *(*v0 + 80);
  v9 = *(v1 + 88);
  v7[2] = v9;
  v7[3] = swift_getKeyPath();
  v2 = type metadata accessor for LegacySectionedCollectionItemLoader();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_2175FA70C(sub_2174D32F0, v7, v2, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);

  return v5;
}

uint64_t sub_21774E0E4()
{
  v1 = dynamic_cast_existential_1_conditional(*(*v0 + 80));
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v19 = MEMORY[0x277D84F90];
    v5 = v0[2];
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v4;
    v6[4] = v0;
    v6[5] = &v19;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_21774FD90;
    *(v7 + 24) = v6;
    v17 = sub_2172AC5D8;
    v18 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2177094CC;
    v16 = &block_descriptor_21;
    v8 = _Block_copy(&aBlock);

    [v5 enumerateItemIdentifiersUsingBlock_];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v10 = v19;

      return v10;
    }

    __break(1u);
  }

  aBlock = 0;
  v14 = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  v12 = sub_217753348();
  MEMORY[0x21CEA23B0](v12);

  MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
  result = OUTLINED_FUNCTION_4();
  __break(1u);
  return result;
}

void *sub_21774E338(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = *(a5 + 8);
  swift_unknownObjectRetain();
  v12(&v21, a4, a5);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  v17 = *(a6 + 40);
  v16 = 4;
  sub_217751DE8();
  sub_2172B6904(a2, &v18, &v17, &v16, __src);
  sub_21770B8AC();
  v13 = *(*a7 + 16);
  sub_21770BBDC(v13);
  v14 = *a7;
  *(v14 + 16) = v13 + 1;
  return memcpy((v14 + 360 * v13 + 32), __src, 0x161uLL);
}

uint64_t sub_21774E428()
{
  v1 = *(*v0 + 80);
  v2 = sub_2177528F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  sub_21774DFE0();
  UnfairLock.locked<A>(_:)(sub_21774FDA4);

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_21774E538(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  sub_2177528F8();
  sub_217752418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2177527B8();
  return swift_endAccess();
}

BOOL static LegacySectionedCollectionItemLoader.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t LegacySectionedCollectionItemLoader.Kind.hash(into:)()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x21CEA3550](1);
  }

  return MEMORY[0x21CEA3550](v1);
}

uint64_t LegacySectionedCollectionItemLoader.Kind.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.Kind.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774E700()
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.Kind.hash(into:)();
  return sub_217753238();
}

uint64_t LegacySectionedCollectionItemLoader.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  v5 = *(v0 + 104);

  return v0;
}

uint64_t LegacySectionedCollectionItemLoader.__deallocating_deinit()
{
  LegacySectionedCollectionItemLoader.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_21774E7C0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v87 = a3;
  v81 = *a1;
  v5 = v81[10];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v85 = &v69 - v8;
  v9 = sub_217751968();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v82 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v88 = &v69 - v15;
  v16 = sub_2177528F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v84 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v83 = &v69 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v69 - v26;
  v28 = a1;
  sub_21774DFA8();
  v86 = a2;
  sub_217752488();

  v103 = v5;
  if (__swift_getEnumTagSinglePayload(v27, 1, v5) != 1)
  {
    return (*(v6 + 32))(v87, v27, v103);
  }

  v70 = *(v17 + 8);
  v71 = v17 + 8;
  v70(v27, v16);
  v29 = dynamic_cast_existential_1_conditional(v103);
  if (v29)
  {
    v74 = v30;
    v75 = v29;
    v31 = dynamic_cast_existential_1_conditional(v103);
    if (v31)
    {
      v76 = v32;
      v77 = v31;
      v78 = v17;
      v79 = v16;
      v80 = v6;
      v33 = dynamic_cast_existential_1_conditional(v103);
      if (v33)
      {
        v35 = v33;
        v36 = v34;
        swift_beginAccess();
        v37 = v81[11];
        _s16PositionProviderVMa();
        v38 = v88;
        sub_2172902F0(v86, v88);
        swift_endAccess();
        v39 = a1[2];
        v72 = a1;
        v73 = v39;
        v40 = sub_217751938();
        v41 = [v39 identifiersForItemAtIndexPath_];

        v42 = *(v36 + 8);
        swift_unknownObjectRetain();
        v42(v101, v35, v36);
        v98 = *v101;
        v99 = *&v101[16];
        *&v95 = v28[5];
        LOBYTE(v92) = 4;
        sub_217751DE8();
        v81 = v41;
        sub_2172B6904(v41, &v98, &v95, &v92, v102);
        memcpy(v101, v102, sizeof(v101));
        (*(v89 + 16))(v82, v38, v90);
        sub_217269EF4(v102, &v98);
        v43 = [v73 itemAtIndexPathBlock];
        *(swift_allocObject() + 16) = v43;
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        v44 = v36;
        v45 = v72;
        v42(&v95, v35, v44);
        v92 = v95;
        v93 = v96;
        v94 = v97;
        v91 = *(v45 + 48);
        v46 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        swift_allocObject();
        LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
        *(&v99 + 1) = v46;
        v100 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
        *&v98 = v49;
        v50 = *(v74 + 8);
        v82 = v49;

        v50(&v95);
        v52 = v76;
        v51 = v77;
        v53 = *(v76 + 24);
        *&v101[24] = v77;
        *&v101[32] = v76;
        __swift_allocate_boxed_opaque_existential_0(v101);
        v53(&v98, &v95, v51, v52);
        sub_2171FF30C(v101, &v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
        v54 = v83;
        if (swift_dynamicCast())
        {
          sub_217269F50(v102);
          v55 = v103;
          __swift_storeEnumTagSinglePayload(v54, 0, 1, v103);
          v56 = v80;
          v57 = v85;
          (*(v80 + 32))(v85, v54, v55);
          v58 = *(v56 + 16);
          v59 = v87;
          v58(v87, v57, v55);
          v60 = v84;
          v58(v84, v59, v55);
          __swift_storeEnumTagSinglePayload(v60, 0, 1, v55);
          swift_beginAccess();
          v61 = v79;
          sub_217752418();
          sub_217752328();
          v62 = v45[7];
          v63 = v86;
          sub_21774FD3C(v86, v62);
          (*(v78 + 40))(v62 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v63, v60, v61);
          swift_endAccess();
          swift_unknownObjectRelease();

          (*(v56 + 8))(v57, v55);
          (*(v89 + 8))(v88, v90);
          return __swift_destroy_boxed_opaque_existential_1(v101);
        }

        __swift_storeEnumTagSinglePayload(v54, 1, 1, v103);
        v70(v54, v79);
        *&v98 = 0;
        *(&v98 + 1) = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
        sub_217752C78();
        MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
        v68 = sub_217753348();
        MEMORY[0x21CEA23B0](v68);
      }

      else
      {
        v102[0] = 0;
        v102[1] = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
        v67 = sub_217753348();
        MEMORY[0x21CEA23B0](v67);

        MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      }
    }

    else
    {
      v102[0] = 0;
      v102[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      v66 = sub_217753348();
      MEMORY[0x21CEA23B0](v66);

      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
    }
  }

  else
  {
    v102[0] = 0;
    v102[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
    v65 = sub_217753348();
    MEMORY[0x21CEA23B0](v65);

    MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21774F228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_2177528F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v19 - v14;
  v19[1] = a1;
  v16 = *(v4 + 88);
  type metadata accessor for LegacySectionedCollectionItemLoader();
  swift_getWitnessTable();
  sub_217752728();
  v17 = *(v7 + 8);
  v17(v15, v6);
  swift_beginAccess();
  sub_217752418();
  swift_getWitnessTable();
  sub_217752778();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v11, v5);
  }

  v17(v11, v6);
  result = sub_217752D08();
  __break(1u);
  return result;
}

Swift::Int sub_21774F4B0@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v4 = *v2;
  result = LegacySectionedCollectionItemLoader.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21774F4E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = LegacySectionedCollectionItemLoader.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21774F50C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = LegacySectionedCollectionItemLoader.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_21774F538(void *a1, uint64_t *a2))(void *a1)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v6 = *a2;
  v7 = *v2;
  v5[4] = sub_21774F5A0(v5);
  return sub_21759C398;
}

void (*sub_21774F5A0(void *a1))(void *a1)
{
  v2 = *(*v1 + 80);
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  LegacySectionedCollectionItemLoader.subscript.getter();
  return sub_217744E74;
}

uint64_t sub_21774F65C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = LegacySectionedCollectionItemLoader.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_21774F694@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = LegacySectionedCollectionItemLoader.indices.getter();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21774F73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a3 + 80);
  v9 = *(a3 + 88);
  v10 = type metadata accessor for LegacySectionedCollectionItemLoader();

  return a5(a1, a2, v10, a4);
}

void sub_21774F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for LegacySectionedCollectionItemLoader();

  JUMPOUT(0x21CEA2A50);
}

Swift::Int sub_21774F808@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  v4 = *v2;
  result = LegacySectionedCollectionItemLoader.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21774F838@<X0>(void *a1@<X8>)
{
  *a1 = *v1;

  v3 = LegacySectionedCollectionItemLoader.startIndex.getter();

  a1[1] = v3;
  return result;
}

uint64_t sub_21774F884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21774F8D8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  v3 = type metadata accessor for LegacySectionedCollectionItemLoader();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](v3, WitnessTable);
}

void sub_21774F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for LegacySectionedCollectionItemLoader();

  JUMPOUT(0x21CEA24B0);
}

uint64_t sub_21774F9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for LegacySectionedCollectionItemLoader();
  return sub_217752188();
}

uint64_t LegacySectionedCollectionItemLoader.hashValue.getter()
{
  sub_2177531E8();
  LegacySectionedCollectionItemLoader.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774FB00()
{
  sub_2177531E8();
  v1 = *v0;
  LegacySectionedCollectionItemLoader.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21774FCB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21774FCE8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21774FD04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_21774FD3C(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x282202968](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}