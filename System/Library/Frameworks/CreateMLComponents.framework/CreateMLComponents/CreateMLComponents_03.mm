unint64_t sub_237C9A3D4()
{
  result = qword_27DEAE600;
  if (!qword_27DEAE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE600);
  }

  return result;
}

unint64_t sub_237C9A42C()
{
  result = qword_27DEAE608;
  if (!qword_27DEAE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE608);
  }

  return result;
}

unint64_t sub_237C9A484()
{
  result = qword_27DEAE610;
  if (!qword_27DEAE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE610);
  }

  return result;
}

unint64_t sub_237C9A4DC()
{
  result = qword_27DEAE618[0];
  if (!qword_27DEAE618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAE618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000025;
  a2[1] = v2;

  return swift_willThrow();
}

uint64_t LinearTransformer.init(scale:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a3 - 8) + 32);
  v7(a4, a1);
  v8 = type metadata accessor for LinearTransformer();
  return (v7)(a4 + *(v8 + 52), a2, a3);
}

uint64_t LinearTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  LinearTransformer.scale.getter(v15, v11);
  sub_237EF8D30();
  v16 = *(v7 + 8);
  v16(v11, v5);
  LinearTransformer.offset.getter(a4, v11);
  sub_237EF9750();
  v16(v11, v5);
  return v16(v14, v5);
}

uint64_t LinearTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 + 16);
  v11 = a5;
  v12 = *(a4 + 24);
  v13 = *(a4 + 40);
  v14 = a6;
  v15 = a2;
  v16 = a3;
  return sub_237C8FFEC(sub_237C9A9AC, &v9, a5, v10, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], a8);
}

uint64_t static LinearTransformer.== infix(_:_:)()
{
  if (sub_237EF8520())
  {
    type metadata accessor for LinearTransformer();
    v0 = sub_237EF8520();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_237C9AA90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

uint64_t sub_237C9AB50(char a1)
{
  if (a1)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_237C9AB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9AA90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9ABC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9AC1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearTransformer.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 16);
  v14 = v13;
  v15 = v3;
  v16 = v12;
  type metadata accessor for LinearTransformer.CodingKeys();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_8_8();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_9_3();
  v10 = v17;
  sub_237EF9A70();
  if (!v10)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_9_3();
    sub_237EF9A70();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t LinearTransformer.hashValue.getter()
{
  sub_237EFA120();
  LinearTransformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearTransformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v44 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v41 - v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  type metadata accessor for LinearTransformer.CodingKeys();
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_8_8();
  v50 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v45 = v21;
  MEMORY[0x28223BE20](v22);
  v47 = a2;
  v51 = a2;
  v52 = a3;
  v49 = a4;
  v53 = a4;
  v54 = a5;
  v23 = type metadata accessor for LinearTransformer();
  OUTLINED_FUNCTION_1_1();
  v42 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  v28 = v55;
  sub_237EFA190();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v27;
  v55 = v23;
  v30 = v46;
  LOBYTE(v51) = 0;
  v31 = v47;
  OUTLINED_FUNCTION_7_9();
  v32 = *(v30 + 32);
  v41 = v29;
  v33 = v48;
  v48 = v32;
  (v32)(v29, v33, v31);
  LOBYTE(v51) = 1;
  v34 = v44;
  OUTLINED_FUNCTION_7_9();
  v35 = OUTLINED_FUNCTION_6_8();
  v36(v35);
  v37 = v55;
  v38 = v41;
  (v48)(&v41[*(v55 + 52)], v34, v31);
  v39 = v42;
  (*(v42 + 16))(v43, v38, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_237C9B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LinearTransformer.applied(to:eventHandler:)(a2, a2, a3, a5);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237C9B28C()
{
  sub_237EFA120();
  LinearTransformer.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearTransformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFBB70);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0x74657366666F202CLL, 0xEA0000000000203ALL);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237C9B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = sub_237EF7820();
  OUTLINED_FUNCTION_1_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_237EF7730();
  OUTLINED_FUNCTION_1_1();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v46 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v48 = &v41 - v18;
  v19 = *(v9 + 16);
  v20 = OUTLINED_FUNCTION_4_11();
  v19(v20);
  sub_237C65348();
  OUTLINED_FUNCTION_4_11();
  sub_237EF8190();
  v21 = *__dst;
  (v19)(v12, v2 + *(a1 + 52), v7);
  OUTLINED_FUNCTION_4_11();
  sub_237EF8190();
  v22 = v48;
  sub_237CFA100(v21, v50[0]);
  v23 = v41;
  v24 = *(v41 + 16);
  (v24)(v46, v22, v45);
  v25 = v47;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage();
  v27 = v42;
  v28 = v42 + *(v26 + 24);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = v27;
  v24();
  memcpy(__dst, v28, 0x58uLL);
  sub_237C9BD20(__dst);
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  v30 = v43;
  v31 = v44;
  (*(v43 + 16))(v29 + *(v26 + 20), v25, v44);
  v32 = sub_237E34060();
  v34 = v33;
  v35 = sub_237EF7780();
  v37 = v36;
  swift_isUniquelyReferenced_nonNull_native();
  v49 = *v37;
  sub_237C91098(v32, v34, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v37 = v49;
  v35(v50, 0);
  (*(v30 + 8))(v47, v31);
  v38 = *(v23 + 8);
  v39 = v45;
  v38(v46, v45);
  return (v38)(v48, v39);
}

uint64_t sub_237C9B828()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237C9B898(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237C9B9E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
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

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
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
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
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
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237C9BC00(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237C9BD20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_237EF9970();
}

void sub_237C9BE18()
{
  sub_237C9BF28();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AdamWStorage.Moment();
    sub_237EF82B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237C9BF28()
{
  if (!qword_27DEAE7A0[0])
  {
    sub_237EF6580();
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEAE7A0);
    }
  }
}

void sub_237C9BF98()
{
  sub_237C86290();
  if (v0 <= 0x3F)
  {
    sub_237C862E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237C9C044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885697139 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3161746562 && a2 == 0xE500000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x3261746562 && a2 == 0xE500000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F6C69737065 && a2 == 0xE700000000000000;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x8000000237EFBBA0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6544746867696577 && a2 == 0xEB00000000796163;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E656964617267 && a2 == 0xED0000656C616353;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x73746E656D6F6DLL && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_237EF9D40();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_237C9C324(char a1)
{
  result = 1885697139;
  switch(a1)
  {
    case 1:
      result = 0x676E696E7261656CLL;
      break;
    case 2:
      result = 0x3161746562;
      break;
    case 3:
      result = 0x3261746562;
      break;
    case 4:
      result = 0x6E6F6C69737065;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6544746867696577;
      break;
    case 7:
      result = 0x746E656964617267;
      break;
    case 8:
      result = 0x73746E656D6F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237C9C430()
{
  OUTLINED_FUNCTION_13_4();
  v16 = v1;
  v17 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v15[1] = *(v3 + 24);
  v15[2] = v6;
  type metadata accessor for AdamWStorage.CodingKeys();
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237EFA1B0();
  v13 = v16;
  sub_237EF9A50();
  if (!v13)
  {
    OUTLINED_FUNCTION_1_11(1);
    OUTLINED_FUNCTION_1_11(2);
    OUTLINED_FUNCTION_1_11(3);
    OUTLINED_FUNCTION_1_11(4);
    sub_237EF6580();
    sub_237C9D7A4(&qword_27DEAE828);
    sub_237EF9A00();
    OUTLINED_FUNCTION_1_11(6);
    OUTLINED_FUNCTION_1_11(7);
    v20 = 8;
    type metadata accessor for AdamWStorage.Moment();
    sub_237EF82B0();
    WitnessTable = swift_getWitnessTable();
    v18 = MEMORY[0x277D837D8];
    v19 = WitnessTable;
    swift_getWitnessTable();
    sub_237EF9A70();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_12_6();
}

void sub_237C9C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_13_4();
  v54 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v49[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v51 = v20;
  type metadata accessor for AdamWStorage.CodingKeys();
  OUTLINED_FUNCTION_5_9();
  swift_getWitnessTable();
  v52 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v50 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = v49 - v23;
  v49[2] = v14;
  v49[3] = v12;
  v25 = type metadata accessor for AdamWStorage();
  OUTLINED_FUNCTION_1();
  v49[0] = v26;
  OUTLINED_FUNCTION_9();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v49 - v29;
  v31 = *(v28 + 52);
  v32 = sub_237EF6580();
  v56 = v31;
  v33 = v30;
  __swift_storeEnumTagSinglePayload(&v30[v31], 1, 1, v32);
  v34 = v16[3];
  v55 = v16;
  __swift_project_boxed_opaque_existential_1(v16, v34);
  v53 = v24;
  v35 = v54;
  sub_237EFA190();
  if (v35)
  {
    v38 = v56;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_237C65484(&v33[v38], &qword_27DEAD2D8);
  }

  else
  {
    v36 = v50;
    v37 = v51;
    v39 = v33;
    *v33 = sub_237EF9950();
    sub_237EF9940();
    *(v33 + 2) = v40;
    OUTLINED_FUNCTION_2_13(2);
    *(v33 + 3) = v41;
    OUTLINED_FUNCTION_2_13(3);
    *(v33 + 4) = v42;
    OUTLINED_FUNCTION_2_13(4);
    *(v33 + 5) = v43;
    LOBYTE(a10) = 5;
    sub_237C9D7A4(qword_27DEAE830);
    sub_237EF9900();
    sub_237C9D800(v37, &v33[v56], &qword_27DEAD2D8);
    OUTLINED_FUNCTION_2_13(6);
    *&v33[v25[14]] = v44;
    OUTLINED_FUNCTION_2_13(7);
    *&v33[v25[15]] = v45;
    type metadata accessor for AdamWStorage.Moment();
    sub_237EF82B0();
    v59 = 8;
    WitnessTable = swift_getWitnessTable();
    v57 = MEMORY[0x277D83808];
    v58 = WitnessTable;
    swift_getWitnessTable();
    sub_237EF9970();
    (*(v36 + 8))(v53, v52);
    *&v33[v25[16]] = a10;
    v47 = v49[0];
    OUTLINED_FUNCTION_18_5();
    v48();
    __swift_destroy_boxed_opaque_existential_1(v55);
    (*(v47 + 8))(v39, v25);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C9CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9C044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9CC8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C9C31C();
  *a1 = result;
  return result;
}

uint64_t sub_237C9CCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9CD10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C9CD9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x536D756D6978616DLL && a2 == 0xED0000646E6F6365)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

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

uint64_t sub_237C9CEAC(char a1)
{
  if (!a1)
  {
    return 0x7473726966;
  }

  if (a1 == 1)
  {
    return 0x646E6F636573;
  }

  return 0x536D756D6978616DLL;
}

void sub_237C9CF08()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v11 = v3;
  v12 = v0;
  type metadata accessor for AdamWStorage.Moment.CodingKeys();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  OUTLINED_FUNCTION_7_10();
  v10 = v12;
  sub_237EF9A70();
  if (!v10)
  {
    OUTLINED_FUNCTION_7_10();
    sub_237EF9A70();
    OUTLINED_FUNCTION_7_10();
    sub_237EF9A00();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237C9D0E0()
{
  OUTLINED_FUNCTION_13_4();
  v48 = v0;
  v2 = v1;
  v39 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v40 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v41 = v10;
  MEMORY[0x28223BE20](v11);
  v43 = &v37 - v12;
  type metadata accessor for AdamWStorage.Moment.CodingKeys();
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  v47 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v45 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for AdamWStorage.Moment();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_9();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  v24 = *(v21 + 40);
  v49 = v23;
  v50 = v24;
  v44 = v7;
  __swift_storeEnumTagSinglePayload(&v23[v24], 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v46 = v16;
  v25 = v48;
  sub_237EFA190();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_237C65484(&v49[v50], &qword_27DEAD600);
  }

  else
  {
    v37 = v19;
    v38 = v17;
    v48 = v2;
    v26 = sub_237C86400(&qword_27DEADE88);
    v27 = v43;
    v28 = v44;
    sub_237EF9970();
    v29 = *(v42 + 32);
    v30 = v49;
    v29(v49, v27, v28);
    v31 = v41;
    v43 = v26;
    sub_237EF9970();
    v32 = v38;
    v29(&v30[*(v38 + 36)], v31, v28);
    v33 = v40;
    sub_237EF9900();
    v34 = OUTLINED_FUNCTION_11_5();
    v35(v34, v47);
    sub_237C9D800(v33, &v30[v50], &qword_27DEAD600);
    v36 = v37;
    (*(v37 + 16))(v39, v30, v32);
    __swift_destroy_boxed_opaque_existential_1(v48);
    (*(v36 + 8))(v30, v32);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C9D5BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_237EFA120();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_237EFA170();
}

uint64_t sub_237C9D620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C9CD9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C9D67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C6DF34();
  *a1 = result;
  return result;
}

uint64_t sub_237C9D6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C9D700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C9D7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237EF6580();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C9D800(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t sub_237C9D850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a1;
  v104 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v84 = v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v99 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v79 = v14;
  MEMORY[0x28223BE20](v15);
  v94 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v93 = v19;
  OUTLINED_FUNCTION_18_5();
  v20 = type metadata accessor for AdamWStorage.Moment();
  v76 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v75 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v88 = v23;
  v98 = *(v20 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v103 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v26);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v74 - v28;
  OUTLINED_FUNCTION_18_5();
  v30 = sub_237EF67A0();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = &v74 - v34;
  OUTLINED_FUNCTION_18_5();
  v36 = type metadata accessor for AdamWStorage();
  sub_237C9E294(a2 + *(v36 + 52), v29, &qword_27DEAD2D8);
  v90 = v36;
  v91 = a2;
  sub_237EF6770();
  v74 = v32;
  v37 = v30;
  (*(v32 + 32))(v104, v35, v30);
  v86 = a4;
  v38 = sub_237EF6870();
  sub_237EF6C60();
  v89 = a3;
  v39 = v103;
  sub_237EF9650();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = sub_237EF8920();
  v87 = v38 + 32;
  v81 = v98 + 32;
  v100 = (v99 + 16);
  v96 = (v99 + 8);
  v78 = v99 + 32;
  v80 = v98 + 8;
  v101 = v20;
  v83 = v38;
  v82 = TupleTypeMetadata2;
  v95 = v37;
  while (1)
  {
    v41 = sub_237EF8A00();
    v42 = v107;
    if (v107 == v41)
    {
      OUTLINED_FUNCTION_8_9();
      (*(v65 + 8))(v77);

      OUTLINED_FUNCTION_8_9();
      return (*(v66 + 8))(v67, v68);
    }

    v43 = sub_237EF89D0();
    sub_237EF8960();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = (v87 + 24 * v42);
    v46 = *v44;
    v45 = v44[1];
    sub_237EF8260();

    sub_237EF8A40();
    v105 = v46;
    v106 = v45;
    v47 = v88;
    sub_237EF82F0();

    if (__swift_getEnumTagSinglePayload(v47, 1, v20) == 1)
    {

      (*(v75 + 8))(v47, v76);
      sub_237C6514C();
      v70 = swift_allocError();
      *v71 = 0xD000000000000025;
      v71[1] = 0x8000000237EFB480;
      v102 = v70;
      swift_willThrow();

      OUTLINED_FUNCTION_8_9();
      (*(v72 + 8))(v77);
      OUTLINED_FUNCTION_8_9();
      (*(v73 + 8))();
      return (*(v74 + 8))(v104, v37);
    }

    OUTLINED_FUNCTION_19_1();
    v48(v39, v47, v20);
    v98 = *v100;
    v20 = v94;
    v49 = v85;
    (v98)(v94, v39, v85);
    v99 = sub_237C651A0();
    v50 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v97 = v51;
    v52 = v93;
    OUTLINED_FUNCTION_10_7();
    sub_237EF7F00();
    v102 = v5;
    v53 = *v96;
    (*v96)(v20, v49);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v50);
    v54 = sub_237EF6630();
    sub_237EF6650();
    (v98)(v20, v103 + *(v101 + 36), v49);

    OUTLINED_FUNCTION_10_7();
    sub_237EF7F00();
    v55 = OUTLINED_FUNCTION_14_5();
    v97 = v53;
    (v53)(v55);
    v56 = v84;
    v92 = v50;
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v50);
    v37 = v95;
    v39 = v103;
    sub_237EF6650();
    sub_237C9E294(v39 + *(v20 + 40), v56, &qword_27DEAD600);
    if (__swift_getEnumTagSinglePayload(v56, 1, v49) == 1)
    {
      OUTLINED_FUNCTION_19_1();
      v57(v39, v20);

      sub_237C65484(v56, &qword_27DEAD600);
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      v58 = v79;
      v59(v79, v56, v49);
      if (__swift_getEnumTagSinglePayload(v104 + *(v37 + 72), 1, v54))
      {

        v97(v58, v49);
      }

      else
      {
        v20 = v94;
        (v98)(v94, v58, v49);
        OUTLINED_FUNCTION_10();
        v98 = v54;
        v60 = v92;
        v61 = v93;
        OUTLINED_FUNCTION_10_7();
        sub_237EF7F00();
        v62 = OUTLINED_FUNCTION_14_5();
        v63 = v97;
        (v97)(v62);
        __swift_storeEnumTagSinglePayload(v61, 0, 1, v60);
        sub_237EF6650();
        v63(v79, v49);
      }

      OUTLINED_FUNCTION_19_1();
      v39 = v103;
      v64(v103, v20);
      v37 = v95;
    }
  }

  result = sub_237EF93A0();
  __break(1u);
  return result;
}

uint64_t sub_237C9E294(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v3, v4);
  return v3;
}

_BYTE *sub_237C9E2E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237C9E3B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237C9E438(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_11@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9A40();
}

uint64_t OUTLINED_FUNCTION_2_13@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_237EF9940();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

void TimeSeriesClassifier.Model.export(to:)(uint64_t a1, const char *a2)
{
  v5 = type metadata accessor for CoreMLPackage();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_237C9E780(a2, v8 - v7);
  if (!v2)
  {
    sub_237E33BC0(a1);
    OUTLINED_FUNCTION_4_12();
    sub_237C9FF8C(v9, v10);
  }
}

void sub_237C9E780(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a1;
  v132 = a2;
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v133 = v3;
  v134 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_3();
  v153 = v4;
  OUTLINED_FUNCTION_12_1();
  v5 = sub_237EF7D20();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v129 = v7;
  OUTLINED_FUNCTION_12_1();
  v147 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v127 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v128 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  v126 = (&v125 - v13);
  OUTLINED_FUNCTION_12_1();
  sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v156 = v15;
  v157 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v155 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v151 = v18;
  v152 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v154 = v19;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v149 = v21;
  v150 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v148 = v22;
  MEMORY[0x28223BE20](v23);
  v163 = &v125 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938);
  v26 = OUTLINED_FUNCTION_18(v25);
  MEMORY[0x28223BE20](v26);
  v145 = (&v125 - v27);
  OUTLINED_FUNCTION_12_1();
  sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v130 = v29;
  v131 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_3();
  v162 = v30;
  OUTLINED_FUNCTION_12_1();
  sub_237EF64C0();
  OUTLINED_FUNCTION_1();
  v142 = v32;
  v143 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_3();
  v140 = v33;
  v34 = OUTLINED_FUNCTION_12_1();
  v141 = type metadata accessor for LSTMFCN(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_3();
  v160 = v36;
  OUTLINED_FUNCTION_12_1();
  v37 = sub_237EF7B10();
  v137 = v37;
  v166 = *(v37 - 8);
  v38 = v166;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  v135 = v40 - v39;
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v158 = v43;
  v159 = v42;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  v144 = v44;
  v46 = MEMORY[0x28223BE20](v45);
  v165 = &v125 - v47;
  MEMORY[0x28223BE20](v46);
  v164 = &v125 - v48;
  sub_237E651E4(&v175[3]);
  v175[0] = MEMORY[0x277D84F98];
  v175[1] = MEMORY[0x277D84F98];
  v175[2] = MEMORY[0x277D84F90];
  v49 = *MEMORY[0x277D252E0];
  v50 = *(v38 + 104);
  v138 = v38 + 104;
  v139 = v50;
  v50(v41, v49, v37);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370);
  v51 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v53 = v52;
  v55 = *(v54 + 72);
  v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v169 = xmmword_237F04760;
  *(v57 + 16) = xmmword_237F04760;
  v58 = v57 + v56;
  *(v57 + v56) = 0;
  v59 = *(v53 + 104);
  v59(v57 + v56, *MEMORY[0x277D25270], v51);
  v161 = *(v167 + *(v168 + 23));
  *(v58 + v55) = v161;
  v59(v58 + v55, *MEMORY[0x277D25278], v51);
  v60 = v135;
  sub_237EF7CC0();

  v61 = *(v166 + 8);
  v166 += 8;
  v62 = v137;
  v61(v60, v137);
  OUTLINED_FUNCTION_5_10();
  sub_237CF0C9C();
  v139(v60, *MEMORY[0x277D252D0], v62);
  *(swift_allocObject() + 16) = xmmword_237F03530;
  sub_237EF78D0();
  sub_237EF7CC0();

  v61(v60, v62);
  OUTLINED_FUNCTION_3_12();
  sub_237CF0C9C();
  v64 = v142;
  v63 = v143;
  v65 = v140;
  (*(v142 + 104))(v140, *MEMORY[0x277D2CD48], v143);
  sub_237C962B0();
  v66 = v167;
  sub_237EF68D0();
  (*(v64 + 8))(v65, v63);
  __dst[0] = *(v66 + *(v168 + 22));
  v170 = *(v168 + 2);
  v171 = *(v168 + 24);
  v172 = *(v168 + 40);
  v173 = *(v168 + 56);
  v174 = *(v168 + 9);
  sub_237EF8A60();
  sub_237EF8260();
  swift_getWitnessTable();
  v67 = v146;
  sub_237C9339C();
  v69 = v68;
  v166 = v67;

  sub_237D8ECF0(v175, v161, v69);

  sub_237EF7BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940);
  v70 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v70);
  v71 = swift_allocObject();
  v72 = OUTLINED_FUNCTION_10_8(v71);
  v73 = v159;
  v74 = *(v158 + 16);
  v75 = v144;
  v74(v144, v164, v159, v72);
  OUTLINED_FUNCTION_5_10();
  sub_237EF7880();
  (v74)(v75, v165, v73);
  v76 = v161;
  OUTLINED_FUNCTION_3_12();
  sub_237EF7880();
  sub_237EF7B90();
  sub_237EF7B70();
  sub_237EF8260();
  v77 = v145;
  sub_237EF7930();
  v78 = sub_237EF7940();
  __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
  v79 = sub_237EF7B40();
  sub_237E60E08();
  v79(__dst, 0);
  sub_237EF7720();
  v80 = *MEMORY[0x277D25100];
  v145 = *(v156 + 104);
  v146 = v156 + 104;
  v145(v155, v80, v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v81 = swift_allocObject();
  OUTLINED_FUNCTION_10_8(v81);
  v82 = v167;
  v83 = v168;
  v84 = *(v167 + *(v168 + 24));
  *(v85 + 32) = v84;
  *(v85 + 40) = v76;
  v86 = v154;
  sub_237EF6DD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7C0);
  v87 = sub_237EF7D30();
  OUTLINED_FUNCTION_6_1(v87);
  v88 = swift_allocObject();
  OUTLINED_FUNCTION_10_8(v88);
  if (*(v82 + *(v83 + 25)) < v84)
  {
    __break(1u);
  }

  else
  {
    v90 = v89;
    v168 = "dropoutProbability";
    sub_237EF7D40();
    sub_237EF7D40();
    v91 = v126;
    *v126 = v90;
    v92 = *MEMORY[0x277D25110];
    v93 = sub_237EF6DF0();
    OUTLINED_FUNCTION_4();
    (*(v94 + 104))(v91, v92, v93);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v93);
    sub_237EF6E00();
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v95 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v95);
    v143 = *(v96 + 72);
    v161 = ((*(v97 + 80) + 32) & ~*(v97 + 80)) + 2 * v143;
    v98 = swift_allocObject();
    v99 = OUTLINED_FUNCTION_10_8(v98);
    v100 = v128;
    (*(v151 + 16))(v128, v86, v152, v99);
    v101 = *MEMORY[0x277D250A0];
    v144 = *(v127 + 104);
    v144(v100, v101, v147);
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_8_10();
    v102 = v155;
    v103 = v157;
    v145(v155, *MEMORY[0x277D250E8], v157);
    sub_237EF6CF0();
    (*(v156 + 8))(v102, v103);
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_8_10();
    v104 = v163;
    sub_237EF76B0();
    v105 = swift_allocObject();
    OUTLINED_FUNCTION_10_8(v105);
    sub_237EF6DB0();
    v144(v100, *MEMORY[0x277D25130], v147);
    OUTLINED_FUNCTION_8_10();
    sub_237EF6E50();
    OUTLINED_FUNCTION_8_10();
    sub_237EF7700();
    sub_237EF7D10();
    sub_237EF7660();
    sub_237EF7620();
    sub_237EF7600();
    sub_237EF7640();
    sub_237EF75E0();
    v106 = v148;
    v107 = *(v149 + 16);
    v108 = v150;
    v107(v148, v104, v150);
    memcpy(v176, &v175[3], sizeof(v176));
    memcpy(v177, &v175[3], sizeof(v177));
    sub_237C9FEDC(v176, __dst);
    v109 = v153;
    sub_237EF7810();
    v110 = type metadata accessor for CoreMLPackage();
    v111 = v132;
    v112 = (v132 + *(v110 + 24));
    v112[10] = 0;
    *(v112 + 3) = 0u;
    *(v112 + 4) = 0u;
    *(v112 + 1) = 0u;
    *(v112 + 2) = 0u;
    *v112 = 0u;
    v107(v111, v106, v108);
    memcpy(v178, v112, sizeof(v178));
    sub_237C9FEDC(v176, __dst);
    sub_237C9BD20(v178);
    memcpy(v112, v177, 0x58uLL);
    v114 = v133;
    v113 = v134;
    (*(v133 + 16))(v111 + *(v110 + 20), v109, v134);
    v115 = sub_237E34060();
    v117 = v116;
    v118 = sub_237EF7780();
    v120 = v119;
    swift_isUniquelyReferenced_nonNull_native();
    v180 = *v120;
    sub_237C91098(v115, v117, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v120 = v180;
    v118(__dst, 0);
    sub_237C9FF38(v176);
    (*(v114 + 8))(v153, v113);
    v121 = *(v149 + 8);
    v122 = v150;
    v121(v148, v150);
    (*(v151 + 8))(v154, v152);
    v121(v163, v122);
    (*(v130 + 8))(v162, v131);
    sub_237C9FF8C(v160, type metadata accessor for LSTMFCN);
    v123 = v159;
    v124 = *(v158 + 8);
    v124(v165, v159);
    v124(v164, v123);
    memcpy(__dst, v175, 0x70uLL);
    sub_237C9FFE4(__dst);
  }
}

void TimeSeriesClassifier.Model.export(to:metadata:)(uint64_t a1, uint64_t a2, const char *a3)
{
  v15 = a1;
  type metadata accessor for CoreMLPackage();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(a2 + 64);
  sub_237C9E780(a3, v8 - v7);
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
    v11 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v12);
    v11(v14, 0);
    sub_237E33BC0(v15);
    OUTLINED_FUNCTION_4_12();
    sub_237C9FF8C(v9, v13);
  }
}

uint64_t sub_237C9F9DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_237EF85D0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_237C9FAC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_237EF8260();
  sub_237EF8260();
  return a2;
}

uint64_t sub_237C9FB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_237C9FB80(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_237C9FB80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  sub_237E39F80(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v45 = v50[5];
  v46 = v50[0];
  v9 = (v50[2] + 64) >> 6;
  sub_237EF8260();

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;
      sub_237EF8260();
      sub_237EF8260();
      v45(v48, v49);

      v20 = v48[0];
      v19 = v48[1];
      v21 = v48[2];
      v22 = v48[3];
      v23 = *v51;
      v25 = sub_237D2FC30();
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0);
          sub_237EF96C0();
        }
      }

      else
      {
        sub_237D2848C(v28, v47 & 1);
        v30 = sub_237D2FC30();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v51;
      if (v29)
      {
        v33 = (v32[7] + 16 * v25);
        v35 = *v33;
        v34 = v33[1];
        sub_237EF8260();

        v36 = (v32[7] + 16 * v25);
        *v36 = v35;
        v36[1] = v34;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v32[6] + 16 * v25);
        *v37 = v20;
        v37[1] = v19;
        v38 = (v32[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v32[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v32[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_237C9FE9C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237C9FE58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237C9FAC0(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_237C9FF8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_237EF7090();
}

__n128 OUTLINED_FUNCTION_10_8(__n128 *a1)
{
  result = v1[22];
  a1[1] = result;
  return result;
}

void OrdinalEncoder.fitted<A>(to:eventHandler:)()
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
    sub_237D05198(0x456C616E6964724FLL, 0xEE007265646F636ELL);
  }

  (*(v7 + 16))(v11, v3, v1);
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v12 = sub_237EF8D00();
  OrdinalEncoder.Transformer.init(categories:)(v12, v5);
  OUTLINED_FUNCTION_12_6();
}

uint64_t OrdinalEncoder.Transformer.init(categories:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  OUTLINED_FUNCTION_3_13();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF8D00();
  OUTLINED_FUNCTION_7_11();
  result = sub_237E86E14();
  *a2 = a1;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

uint64_t sub_237CA038C()
{
  OrdinalEncoder.fitted<A>(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OrdinalEncoder.makeTransformer()@<X0>(void *a1@<X8>)
{
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  v2 = sub_237EF8130();
  return OrdinalEncoder.Transformer.init(categories:)(v2, a1);
}

void OrdinalEncoder.update<A>(_:with:eventHandler:)()
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
      *v39 = xmmword_237F063A0;
      *(v39 + 16) = v37;
      *(v39 + 24) = v38;
      *(v39 + 32) = 3;
      swift_willThrow();
      (*(v31 + 8))(v32, v11);
    }
  }

  OUTLINED_FUNCTION_12_6();
}

BOOL sub_237CA08A8()
{
  sub_237EF90F0();
  sub_237EF8260();
  swift_getWitnessTable();
  v0 = sub_237EF8CD0();

  return (v0 & 1) == 0;
}

uint64_t sub_237CA094C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_237EF85D0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_237CA0A1C()
{
  OUTLINED_FUNCTION_13_4();
  v29 = v2;
  v30 = v1;
  v31 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v27 = v7;
  v28 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) == 1)
  {
    goto LABEL_5;
  }

  (*(v15 + 32))(v19, v23, v13);
  v30(v19, v11);
  (*(v15 + 8))(v19, v13);
  if (!v0)
  {
    v26 = 0;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v5, v26, 1, v31);
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v11, v28);
LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t OrdinalEncoder.encodeWithOptimizer(_:to:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v9 = *a1;
  v10 = v2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_14_6();
  WitnessTable = swift_getWitnessTable();
  return v5(&v9, v6, WitnessTable, v3, v4);
}

uint64_t OrdinalEncoder.decodeWithOptimizer(from:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_6();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 8);
  WitnessTable = swift_getWitnessTable();
  return v5(v2, v2, WitnessTable, v3, v4);
}

uint64_t sub_237CA0DE4()
{
  OrdinalEncoder.update<A>(_:with:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t OrdinalEncoder.Transformer.categories.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL sub_237CA0EF0()
{
  v0 = sub_237EF9890();

  return v0 != 0;
}

uint64_t sub_237CA0F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CA0FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237CA101C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237CA108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_237CA10FC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_237CA0EF0();
  *a1 = result;
  return result;
}

uint64_t sub_237CA116C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237CA0F38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237CA11A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CA11F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237CA124C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF90F0();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1);
  return sub_237C66C14(v8, a2, a3);
}

void OrdinalEncoder.Transformer.applied(to:eventHandler:)()
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
  sub_237CA1598(v14);
  (*(v11 + 8))(v14, v19);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CA1598(uint64_t a1)
{
  v2 = sub_237EF90F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  type metadata accessor for ComparableOptional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_237E87024();
  if (v7)
  {
    (*(v3 + 16))(v5, a1, v2);
    v8 = sub_237EF85D0();
    v10 = v9;
    sub_237C84150();
    swift_allocError();
    *v11 = xmmword_237F063A0;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t OrdinalEncoder.Transformer.applied<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + 2);
  v13[2] = *(a4 + 16);
  v13[3] = a5;
  v10 = *(a4 + 40);
  v14 = *(a4 + 24);
  v15 = v10;
  v16 = a6;
  v17 = *v6;
  v18 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237C8FFEC(sub_237CA1A3C, v13, a5, MEMORY[0x277D83B88], v11, a6, MEMORY[0x277D84950], &v19);
}

uint64_t sub_237CA1818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v29 = a3;
  v30 = a4;
  v27 = a8;
  v28 = a2;
  v31 = a1;
  v32 = a9;
  v33 = a7;
  v14 = sub_237EF90F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = type metadata accessor for ComparableOptional();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v26 - v20;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  (*(v15 + 16))(v17, v31, v14);
  sub_237C66C14(v17, a5, v21);
  v34 = a5;
  v35 = a6;
  v36 = v33;
  v37 = v32;
  v38 = a10;
  type metadata accessor for OrdinalEncoder.Transformer();
  v22 = v42;
  v23 = sub_237CA1598(v21);
  if (v22)
  {
    result = (*(v19 + 8))(v21, v18);
    *a12 = v22;
  }

  else
  {
    v25 = v23;
    result = (*(v19 + 8))(v21, v18);
    *v27 = v25;
  }

  return result;
}

uint64_t OrdinalEncoder.Transformer.category(at:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_7();
  type metadata accessor for ComparableOptional();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  OUTLINED_FUNCTION_7_11();
  OUTLINED_FUNCTION_3_13();
  swift_getWitnessTable();
  sub_237E8701C();
  OUTLINED_FUNCTION_12_7();
  v5 = sub_237EF90F0();
  return (*(*(v5 - 8) + 32))(a1, v4, v5);
}

uint64_t sub_237CA1B7C(void *a1)
{
  OrdinalEncoder.Transformer.applied(to:eventHandler:)();
  *a1 = v3;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t OrdinalEncoder.Transformer.debugDescription.getter()
{
  sub_237EF8260();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237EFBBE0);
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

void OrdinalEncoder.Transformer.encode(to:)()
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
  type metadata accessor for OrdinalEncoder.Transformer.CodingKeys();
  OUTLINED_FUNCTION_5_11();
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

void OrdinalEncoder.Transformer.init(from:)()
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
  type metadata accessor for OrdinalEncoder.Transformer.CodingKeys();
  OUTLINED_FUNCTION_5_11();
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
    OrdinalEncoder.Transformer.init(categories:)(v24, &v24);
    (*(v13 + 8))(v12, v21);
    v14 = v25;
    v15 = v16;
    *v16 = v24;
    *(v15 + 2) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CA219C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237CA2200()
{
  OUTLINED_FUNCTION_13_4();
  v85 = v1;
  v2 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v7 - v6);
  v83 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v82 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v11 - v10);
  v80 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v79 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v15 - v14);
  v87 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v84 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v86 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  if (swift_dynamicCastMetatype())
  {
    v75 = v4;
    v76 = v2;
    v77 = v0;
    v74 = "ransformer<categories: ";
    sub_237EF7720();
    sub_237EF7620();
    type metadata accessor for ComparableOptional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
    OUTLINED_FUNCTION_3_13();
    swift_getWitnessTable();
    sub_237CA2DC4();
    v22 = sub_237EF9840();
    v23 = 0;
    v25 = v22 + 64;
    v24 = *(v22 + 64);
    *&v92 = v22;
    v26 = 1 << *(v22 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v24;
    v29 = MEMORY[0x277D84F98];
    v30 = (v26 + 63) >> 6;
    v90 = v22 + 64;
    v91 = v21;
    v89 = v30;
    if ((v27 & v24) != 0)
    {
LABEL_9:
      while (1)
      {
        v32 = __clz(__rbit64(v28)) | (v23 << 6);
        v33 = (*(v92 + 48) + 16 * v32);
        v35 = *v33;
        v34 = v33[1];
        v93 = *(*(v92 + 56) + 8 * v32);
        v36 = v34 ? v35 : 0;
        v37 = v34 ? v34 : 0xE000000000000000;
        sub_237EF8260();
        swift_isUniquelyReferenced_nonNull_native();
        v95[0] = v29;
        v38 = sub_237D2FC30();
        if (__OFADD__(v29[2], (v39 & 1) == 0))
        {
          break;
        }

        v40 = v38;
        v41 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8);
        if (sub_237EF96B0())
        {
          v42 = sub_237D2FC30();
          if ((v41 & 1) != (v43 & 1))
          {
            goto LABEL_31;
          }

          v40 = v42;
        }

        if (v41)
        {

          v29 = v95[0];
          *(*(v95[0] + 56) + 8 * v40) = v93;
        }

        else
        {
          v29 = v95[0];
          *(v95[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v44 = (v29[6] + 16 * v40);
          *v44 = v36;
          v44[1] = v37;
          *(v29[7] + 8 * v40) = v93;
          v45 = v29[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_30;
          }

          v29[2] = v47;
        }

        v28 &= v28 - 1;
        v25 = v90;
        v21 = v91;
        v30 = v89;
        if (!v28)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      while (1)
      {
        v31 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v31 >= v30)
        {

          v48 = v78;
          sub_237EF74D0();
          (*(v79 + 104))(v48, *MEMORY[0x277D25360], v80);
          sub_237EF7660();
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
          sub_237EF70E0();
          v49 = swift_allocObject();
          v92 = xmmword_237F03530;
          *(v49 + 16) = xmmword_237F03530;
          v50 = v81;
          sub_237EF6DB0();
          v51 = *(v82 + 104);
          v52 = v83;
          v51(v50, *MEMORY[0x277D25130], v83);
          sub_237EF7090();
          sub_237EF76B0();
          *(swift_allocObject() + 16) = v92;
          sub_237EF6D00();
          v51(v50, *MEMORY[0x277D25118], v52);
          sub_237EF7090();
          sub_237EF7700();
          v53 = v84;
          v54 = *(v84 + 16);
          v55 = v86;
          v56 = v87;
          v54(v86, v21, v87);
          sub_237EF7810();
          v57 = type metadata accessor for CoreMLPackage();
          v58 = v85;
          v59 = &v85[*(v57 + 24)];
          *(v59 + 10) = 0;
          *(v59 + 3) = 0u;
          *(v59 + 4) = 0u;
          *(v59 + 1) = 0u;
          *(v59 + 2) = 0u;
          *v59 = 0u;
          v54(v58, v55, v56);
          memcpy(v95, v59, 0x58uLL);
          sub_237C9BD20(v95);
          *v59 = 0u;
          *(v59 + 1) = 0u;
          *(v59 + 2) = 0u;
          *(v59 + 3) = 0u;
          *(v59 + 4) = 0u;
          *(v59 + 10) = 0;
          v60 = v75;
          v61 = v88;
          v62 = v76;
          (*(v75 + 16))(&v58[*(v57 + 20)], v88, v76);
          v63 = sub_237E34060();
          v65 = v64;
          v93 = sub_237EF7780();
          v67 = v66;
          swift_isUniquelyReferenced_nonNull_native();
          v96 = *v67;
          sub_237C91098(v63, v65, 0xD00000000000001ALL, 0x8000000237EFB6D0);
          *v67 = v96;
          v93(&v94, 0);
          (*(v60 + 8))(v61, v62);
          v68 = *(v53 + 8);
          v69 = v87;
          v68(v86, v87);
          v68(v91, v69);
          goto LABEL_27;
        }

        v28 = *(v25 + 8 * v31);
        ++v23;
        if (v28)
        {
          v23 = v31;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_237EFA020();
    __break(1u);
  }

  else
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    swift_allocError();
    v71 = v70;
    v95[0] = 0;
    v95[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000002DLL, 0x8000000237EFBC30);
    v72 = sub_237EFA220();
    MEMORY[0x2383E0710](v72);

    MEMORY[0x2383E0710](0x64616574736E6920, 0xE90000000000002ELL);
    v73 = v95[1];
    *v71 = v95[0];
    v71[1] = v73;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_27:
    OUTLINED_FUNCTION_12_6();
  }
}

uint64_t sub_237CA2B70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CA2BAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_237CA2BEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for HumanBodyPoseExtractor(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_237CA2C7C(_BYTE *result, int a2, int a3)
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

unint64_t sub_237CA2D6C()
{
  result = qword_280C8E658[0];
  if (!qword_280C8E658[0])
  {
    type metadata accessor for SerializationError();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8E658);
  }

  return result;
}

unint64_t sub_237CA2DC4()
{
  result = qword_27DEAE948[0];
  if (!qword_27DEAE948[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD490);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAE948);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return type metadata accessor for OrdinalEncoder.Transformer();
}

uint64_t sub_237CA2F10(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_237CA46AC(a3, a1);
  OUTLINED_FUNCTION_13_6();
  sub_237EF8D90();
  OUTLINED_FUNCTION_13_6();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (v5)
  {
    return 1;
  }

  v6 = OUTLINED_FUNCTION_14_7();
  v8 = *v7;
  v9 = sub_237EF8260();
  v17 = OUTLINED_FUNCTION_10_9(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v6(v17);
  return v8;
}

uint64_t sub_237CA2FF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return *(a1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA3018@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA68);
  sub_237CA46AC(&qword_27DEAEA70, &qword_27DEAEA68);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v5 = sub_237C6FDA0(v4, a1, &qword_27DEAEA78);
    v13 = OUTLINED_FUNCTION_10_9(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    v3(v13);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78);
  return OUTLINED_FUNCTION_6_10(v14);
}

uint64_t sub_237CA3104@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA80);
  sub_237CA46AC(&qword_27DEAEA88, &qword_27DEAEA80);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v5 = sub_237C6FDA0(v4, a1, &qword_27DEAD600);
    v13 = OUTLINED_FUNCTION_10_9(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    v3(v13);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  return OUTLINED_FUNCTION_6_10(v14);
}

uint64_t sub_237CA31F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA90);
  sub_237CA46AC(&qword_27DEAEA98, &qword_27DEAEA90);
  OUTLINED_FUNCTION_5_12();
  sub_237EF8D90();
  OUTLINED_FUNCTION_5_12();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v5 = sub_237C6FDA0(v4, a1, &qword_27DEAEAA0);
    v13 = OUTLINED_FUNCTION_10_9(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    v3(v13);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0);
  return OUTLINED_FUNCTION_6_10(v14);
}

uint64_t sub_237CA32DC()
{
  v0 = OUTLINED_FUNCTION_5_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_237CA46AC(&qword_27DEAEAB0, &qword_27DEAEAA8);
  OUTLINED_FUNCTION_13_6();
  sub_237EF8D90();
  OUTLINED_FUNCTION_13_6();
  sub_237EF8DE0();
  OUTLINED_FUNCTION_2_14();
  if (v1)
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_14_7();
  v4 = *v3;
  v5 = *v3;
  v13 = OUTLINED_FUNCTION_10_9(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  v2(v13);
  return v4;
}

id sub_237CA338C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_237EF9710();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_237C85538(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x2383E1490](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_237CA3454(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  a2(0);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_237CA3504@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_237CA45BC(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void *sub_237CA35B4(uint64_t a1)
{
  result = sub_237D299E0();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_237CA461C(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_237CA3690(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_9_4();
    v4(v3);
  }

  v5 = OUTLINED_FUNCTION_8_11();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t AnnotatedBatch.features.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t AnnotatedBatch.features.setter(uint64_t a1)
{
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t AnnotatedBatch.annotations.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t AnnotatedBatch.annotations.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  sub_237EF7E90();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t AnnotatedBatch.count.getter()
{
  sub_237EF7E90();
  v0 = sub_237EF7E20();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t AnnotatedBatch.init(features:annotations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237EF7E90();
  v7 = sub_237EF7E20();
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(v7 + 32);

  v9 = sub_237EF7E20();
  if (!*(v9 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = *(v9 + 32);

  if (v8 != v10)
  {
LABEL_9:
    result = sub_237EF9740();
    __break(1u);
    return result;
  }

  v13 = *(*(v6 - 8) + 32);
  v13(a3, a1, v6);
  v11 = a3 + *(type metadata accessor for AnnotatedBatch() + 36);

  return (v13)(v11, a2, v6);
}

uint64_t sub_237CA3ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365727574616566 && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL)
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

uint64_t sub_237CA3B98(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x7365727574616566;
  }
}

uint64_t sub_237CA3BE8()
{
  sub_237EFA120();
  sub_237C5ED64(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237CA3C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CA3ACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CA3C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237CA3CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CA3D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AnnotatedBatch<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  v12 = a2;
  type metadata accessor for AnnotatedBatch.CodingKeys();
  OUTLINED_FUNCTION_3_14();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v14 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v18 = 0;
  sub_237EF7E90();
  v16 = v13;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_8();
  v9 = v15;
  sub_237EF9A70();
  if (v9)
  {
    return (*(v14 + 8))(v8, v4);
  }

  v11 = v14;
  v17 = 1;
  OUTLINED_FUNCTION_12_8();
  sub_237EF9A70();
  return (*(v11 + 8))(v8, v4);
}

uint64_t AnnotatedBatch<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v31 = a2;
  v28 = a3;
  v35 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v30 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v26 - v8;
  type metadata accessor for AnnotatedBatch.CodingKeys();
  OUTLINED_FUNCTION_3_14();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v32 = v9;
  v33 = v10;
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for AnnotatedBatch();
  OUTLINED_FUNCTION_1();
  v27 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v36;
  sub_237EFA190();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v15;
  v26 = v11;
  v17 = v29;
  v18 = v30;
  v39 = 0;
  v37 = v31;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_6();
  v19 = v34;
  v34 = *(v18 + 32);
  (v34)(v36, v19, v35);
  v38 = 1;
  OUTLINED_FUNCTION_11_6();
  v20 = OUTLINED_FUNCTION_4_13();
  v21(v20);
  v22 = v26;
  v23 = v36;
  (v34)(&v36[*(v26 + 36)], v17, v35);
  v24 = v27;
  (*(v27 + 16))(v28, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v23, v22);
}

uint64_t static AnnotatedBatch<>.== infix(_:_:)()
{
  if ((sub_237EF7E80() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnnotatedBatch();

  return sub_237EF7E80();
}

uint64_t sub_237CA4404()
{
  result = sub_237EF7E90();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_237CA449C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237CA45BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void *sub_237CA461C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    sub_237EF8260();
    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_237CA46AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_7_12()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return sub_237EF8F00();
}

uint64_t sub_237CA4820(uint64_t a1, uint64_t a2)
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

  v31 = MEMORY[0x277D84F90];
  sub_237C63670();
  v7 = v6;
  result = v31;
  v29 = a1;
  v30 = a2;
  if (!v6)
  {
    v14 = v4;
    v15 = v5;
    goto LABEL_13;
  }

  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v7;
  v12 = v4;
  v13 = v5;
  v14 = v4;
  v15 = v5;
  while (v12)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    v16 = *v9;
    v17 = *v10;
    v32 = result;
    v18 = *(result + 16);
    v19 = v18 + 1;
    if (v18 >= *(result + 24) >> 1)
    {
      v27 = v7;
      v25 = v15;
      v26 = v14;
      sub_237C63670();
      v19 = v18 + 1;
      v7 = v27;
      v15 = v25;
      v14 = v26;
      result = v32;
    }

    --v13;
    *(result + 16) = v19;
    *(result + 4 * v18 + 32) = v16 / v17;
    --v12;
    ++v10;
    ++v9;
    if (!--v11)
    {
LABEL_13:
      while (v14 != v7)
      {
        if (v7 >= v14)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }

        if (v15 == v7)
        {
          return result;
        }

        if (v7 >= v15)
        {
          goto LABEL_26;
        }

        v20 = *(v29 + 32 + 8 * v7);
        v21 = *(v30 + 32 + 8 * v7);
        v33 = result;
        v22 = *(result + 16);
        if (v22 >= *(result + 24) >> 1)
        {
          v28 = v7;
          v23 = v14;
          v24 = v15;
          sub_237C63670();
          v7 = v28;
          v15 = v24;
          v14 = v23;
          result = v33;
        }

        *(result + 16) = v22 + 1;
        *(result + 4 * v22 + 32) = v20 / v21;
        ++v7;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_237CA4A20(uint64_t a1, uint64_t a2)
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

  v26 = MEMORY[0x277D84F90];
  sub_237C636A4();
  result = v26;
  v24 = a2;
  v25 = v4;
  v23 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v27 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v22 = v12;
      sub_237C636A4();
      v12 = v22;
      result = v27;
    }

    *(result + 16) = v15 + 1;
    v16 = result + 8 * v15;
    --v11;
    *(v16 + 32) = v13;
    *(v16 + 36) = v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v25 != v6)
      {
        if (v6 >= v25)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v17 = *(v23 + 32 + 4 * v6);
        v18 = *(v24 + 32 + 4 * v6);
        v28 = result;
        v19 = *(result + 16);
        if (v19 >= *(result + 24) >> 1)
        {
          v21 = v12;
          sub_237C636A4();
          v12 = v21;
          result = v28;
        }

        *(result + 16) = v19 + 1;
        v20 = result + 8 * v19;
        *(v20 + 32) = v17;
        *(v20 + 36) = v18;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_19_5();
  v62 = v25;
  v63 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v67 = v34;
  v61 = a23;
  v70 = v30;
  v71 = v28;
  v72 = v25;
  v73 = a23;
  sub_237EF9380();
  v35 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v65 = v36;
  v66 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  v69 = &v58 - v39;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_8();
  v68 = v33;
  v59 = v27;
  v41 = type metadata accessor for ClassificationDistribution();
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v42 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v64 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_6();
  v45 = v62;
  v46 = v61;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v23, v35);
  v47 = OUTLINED_FUNCTION_31_0();
  v48(v47);
  v49 = swift_allocObject();
  v50 = v68;
  v49[2] = v68;
  v49[3] = v31;
  v51 = v29;
  v52 = v59;
  v49[4] = v29;
  v49[5] = v52;
  v49[6] = v45;
  v49[7] = v46;
  v53 = v45;
  v54 = v46;
  v55 = swift_allocObject();
  v55[2] = v50;
  v55[3] = v31;
  v55[4] = v51;
  v55[5] = v52;
  v55[6] = v53;
  v55[7] = v54;
  v55[8] = sub_237CA4F38;
  v55[9] = v49;
  swift_getWitnessTable();
  sub_237EF9860();

  v56 = OUTLINED_FUNCTION_31_0();
  v57(v56);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)();
  (*(v64 + 8))(v41, v42);
  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237CA4F50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(a3, a1, *(a1 + 8));
  *(a3 + 8) = result;
  return result;
}

float static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)()
{
  sub_237EF8CF0();
  swift_getWitnessTable();
  sub_237C9339C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = 0.0;
    do
    {
      v4 = *v2++;
      v3 = v3 + v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0.0;
  }

  return v3 / sub_237EF8C70();
}

void static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:)()
{
  OUTLINED_FUNCTION_19_5();
  v41 = v2;
  v42 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v43 = v9;
  v44 = v10;
  v48 = v11;
  v49 = v5;
  v12 = v11;
  v50 = v1;
  v51 = v2;
  sub_237EF9380();
  v13 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v36 = &v36 - v17;
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_8();
  v37 = v8;
  v38 = v4;
  v19 = type metadata accessor for ClassificationDistribution();
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v40 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v45 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_6();
  v22 = v12;
  v23 = v41;
  v24 = v42;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v0, v13);
  v25 = OUTLINED_FUNCTION_31_0();
  v26(v25);
  v27 = swift_allocObject();
  v29 = v37;
  v28 = v38;
  v27[2] = v37;
  v27[3] = v22;
  v27[4] = v6;
  v27[5] = v28;
  v27[6] = v24;
  v27[7] = v23;
  v30 = v23;
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v22;
  v31[4] = v6;
  v31[5] = v28;
  v31[6] = v24;
  v31[7] = v30;
  v31[8] = sub_237CA4F38;
  v31[9] = v27;
  swift_getWitnessTable();
  sub_237EF9860();

  v32 = OUTLINED_FUNCTION_31_0();
  v33(v32);
  OUTLINED_FUNCTION_1_5();
  v34 = v40;
  WitnessTable = swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:)(v19, v29, v34, v28, WitnessTable);
  (*(v45 + 8))(v19, v34);
  OUTLINED_FUNCTION_18_6();
}

float static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237CA5A14(a1, a2, a3, a4, a5);
  v5 = static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A>(_:labels:)();

  return v5;
}

void sub_237CA5454(_DWORD *a1@<X8>)
{
  sub_237CA549C();
  if ((v2 & 0x100000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a1 = v3;
}

void sub_237CA549C()
{
  OUTLINED_FUNCTION_19_5();
  v1 = v0;
  v50 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v54 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DEAEB10);
  v51 = sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v53 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  MEMORY[0x2383E08A0](v4, v1);
  (*(v10 + 16))(v14, v8, v6);
  v23 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v6;
  *(v24 + 3) = v4;
  v25 = v50;
  *(v24 + 4) = v50;
  *(v24 + 5) = v1;
  (*(v10 + 32))(&v24[v23], v14, v6);
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = v4;
  v26[4] = v25;
  v26[5] = v1;
  v26[6] = sub_237CA6EA0;
  v26[7] = v24;
  v27 = v52;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v54 + 8))(v18, v27);
  OUTLINED_FUNCTION_1_5();
  v28 = v51;
  swift_getWitnessTable();
  v29 = sub_237EF8800();
  (*(v53 + 8))(v22, v28);
  v30 = *(v29 + 16);
  if (v30)
  {
    OUTLINED_FUNCTION_12_9();
    sub_237C62DB0();
    v31 = v55;
    v32 = *(v55 + 16);
    v33 = 40;
    do
    {
      v34 = *(v29 + v33);
      v55 = v31;
      if (v32 >= *(v31 + 24) >> 1)
      {
        sub_237C62DB0();
        v31 = v55;
      }

      *(v31 + 16) = v32 + 1;
      *(v31 + 8 * v32 + 32) = v34;
      v33 += 16;
      ++v32;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v35 = sub_237D610C8(v31);

  v36 = sub_237ED81A4(v35);
  if ((v37 & 1) != 0 || (v38 = v36, v36 < 1))
  {

    v48 = 1;
LABEL_17:
    LOBYTE(v55) = v48;
    OUTLINED_FUNCTION_18_6();
    return;
  }

  v39 = *(v35 + 16);
  if (v39)
  {
    v40 = sub_237EC93D0(1, *(v35 + 16));
    v41 = sub_237EF8260();
    v42 = sub_237CA4820(v41, v40);

    OUTLINED_FUNCTION_12_9();
    sub_237C63670();
    v43 = v55;
    v44 = *(v55 + 16);
    v45 = 32;
    do
    {
      v46 = *(v35 + v45);
      v55 = v43;
      if (v44 >= *(v43 + 24) >> 1)
      {
        sub_237C63670();
        v43 = v55;
      }

      *(v43 + 16) = v44 + 1;
      *(v43 + 4 * v44 + 32) = v46 / v38;
      v45 += 8;
      ++v44;
      --v39;
    }

    while (v39);

    v47 = sub_237CA4A20(v42, v43);

    sub_237CA5D3C(v47);

    v48 = 0;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237CA59D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 64))(a2, a1, *(a1 + 8));
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_237CA5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v8 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v18 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_237EF8CF0();
  sub_237EF9640();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v16[1] = swift_getWitnessTable();
  sub_237EF95F0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9340();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x2383E08A0](a3, a5);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v17;
  v14[5] = a5;
  swift_getWitnessTable();
  sub_237EF9870();

  (*(v18 + 8))(v12, v8);
  swift_getWitnessTable();
  return sub_237EF8D00();
}

float sub_237CA5C88()
{
  type metadata accessor for ClassificationDistribution();
  v0 = ClassificationDistribution.subscript.getter();
  if ((v0 & 0x100000000) != 0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = *&v0;
  }

  sub_237EF8CD0();
  return v1;
}

uint64_t sub_237CA5D3C(uint64_t result)
{
  v1 = 0.0;
  if (*(result + 16) >= 2uLL)
  {
    v2 = result;
    v4 = *(result + 32);
    v3 = *(result + 36);
    sub_237EF8260();
    result = sub_237C60B7C(1, v2);
    v8 = (v7 >> 1) - v6;
    if (v7 >> 1 == v6)
    {
      return swift_unknownObjectRelease();
    }

    else if ((v7 >> 1) <= v6)
    {
      __break(1u);
    }

    else
    {
      v9 = (v5 + 8 * v6 + 4);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v1 = v1 + ((v4 + v10) * (*v9 - v3));
        v9 += 2;
        v3 = v11;
        v4 = v10;
        --v8;
      }

      while (v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_237CA5DEC@<X0>(uint64_t *a1@<X8>)
{
  sub_237EF8260();
  type metadata accessor for ClassificationDistribution();
  sub_237D65E6C();
  sub_237EF8CF0();
  swift_getWitnessTable();
  result = sub_237EF8C80();
  *a1 = result;
  return result;
}

uint64_t sub_237CA5F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8);
  result = sub_237EF82F0();
  if (v8)
  {
    v5 = sub_237CA6780(1, 1);
    v6 = sub_237CA61A0(1, a3);
    result = sub_237CA67D4(v7, v8);
    if (__OFADD__(v5, v6))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237CA6020(char a1)
{

  return sub_237CA61A0(a1, sub_237CA6E64);
}

uint64_t sub_237CA60A0(uint64_t a1)
{

  return sub_237CA64D4(a1, sub_237CA6DE4);
}

uint64_t sub_237CA6120(char a1)
{

  return sub_237CA61A0(a1, sub_237CA6E34);
}

uint64_t sub_237CA61A0(char a1, uint64_t a2)
{
  LOBYTE(v6) = a1;
  v56 = *MEMORY[0x277D85DE8];
  HIBYTE(v48) = a1;
  v7 = *(v2 + 8);
  v49 = v7;
  OUTLINED_FUNCTION_6_11(&v48 + 7);
  if (!(!v10 & v9))
  {
    v11 = sub_237C6FDA0(&v49, &v47, &qword_27DEAEB08);
    goto LABEL_3;
  }

  while (1)
  {
    v4 = v8;
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_5_13();
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

    v11 = sub_237C65484(&v49, &qword_27DEAEB08);
LABEL_3:
    v12 = MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_8_12(v12, v13, v14, v15, v16, v17, v18, v19, v46);
    OUTLINED_FUNCTION_9_5();
    v25 = v22 << v24;
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v23;
    while (v27)
    {
      v28 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v29 = v28 | (v21 << 6);
LABEL_13:
      if (*(*(v7 + 48) + v29) != (v6 & 1))
      {
        *(v4 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22 << v29;
        v32 = __OFADD__(v8++, 1);
        if (v32)
        {
          __break(1u);
LABEL_17:
          sub_237E16B0C(v4, v3, v8, v7);
          v3 = v33;
          v7 = 0;
          goto LABEL_18;
        }
      }
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= ((v25 + 63) >> 6))
      {
        goto LABEL_17;
      }

      v31 = *(v20 + 8 * v21);
      ++v30;
      if (v31)
      {
        v27 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v21 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v44 = swift_slowAlloc();
  v3 = OUTLINED_FUNCTION_11_7(v44);
  sub_237C65484(&v49, &qword_27DEAEB08);
  v33 = MEMORY[0x2383E2DF0](v44, -1, -1);
LABEL_18:
  v6 = &v46;
  MEMORY[0x28223BE20](v33);
  sub_237CD1B20(a2, v45, v3, v34, v35, v36, v37, v38, v45[0], v45[1], v2, &v48 + 7, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  a2 = v39;

  v40 = *(a2 + 16);
  if (v40)
  {
    v2 = 0;
    v41 = (a2 + 32);
    while (1)
    {
      v42 = *v41++;
      v32 = __OFADD__(v2, v42);
      v2 += v42;
      if (v32)
      {
        goto LABEL_26;
      }

      if (!--v40)
      {
        goto LABEL_24;
      }
    }
  }

  v2 = 0;
LABEL_24:

  return v2;
}

uint64_t sub_237CA6454(uint64_t a1)
{

  return sub_237CA64D4(a1, sub_237CA6D74);
}

uint64_t sub_237CA64D4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v7 = *(v2 + 8);
  v49 = a1;
  v50[0] = v7;
  OUTLINED_FUNCTION_6_11(&v49);
  if (!(!v10 & v9))
  {
    v11 = sub_237C6FDA0(v50, &v48, &qword_27DEAEB00);
    goto LABEL_3;
  }

  while (1)
  {
    v4 = v8;
    OUTLINED_FUNCTION_5_13();
    OUTLINED_FUNCTION_5_13();
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }

    v11 = sub_237C65484(v50, &qword_27DEAEB00);
LABEL_3:
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_8_12(v12, v13, v14, v15, v16, v17, v18, v19, v47);
    OUTLINED_FUNCTION_9_5();
    v25 = v22 << v24;
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v23;
    v28 = (v25 + 63) >> 6;
    while (v27)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v30 = v29 | (v21 << 6);
LABEL_13:
      if (*(*(v7 + 48) + 8 * v30) != v6)
      {
        *(v4 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22 << v30;
        v33 = __OFADD__(v8++, 1);
        if (v33)
        {
          __break(1u);
LABEL_17:
          sub_237E16CC4(v4, v3, v8, v7);
          v3 = v34;
          v7 = 0;
          goto LABEL_18;
        }
      }
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v21 >= v28)
      {
        goto LABEL_17;
      }

      v32 = *(v20 + 8 * v21);
      ++v31;
      if (v32)
      {
        v27 = (v32 - 1) & v32;
        v30 = __clz(__rbit64(v32)) | (v21 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v45 = swift_slowAlloc();
  v3 = OUTLINED_FUNCTION_11_7(v45);
  sub_237C65484(v50, &qword_27DEAEB00);
  v34 = MEMORY[0x2383E2DF0](v45, -1, -1);
LABEL_18:
  v6 = &v47;
  MEMORY[0x28223BE20](v34);
  sub_237CD1CD0(a2, v46, v3, v35, v36, v37, v38, v39, v46[0], v46[1], v2, &v49, v47, v48, v49, v50[0], v50[1], v50[2], v50[3], v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  a2 = v40;

  v41 = *(a2 + 16);
  if (v41)
  {
    v2 = 0;
    v42 = (a2 + 32);
    while (1)
    {
      v43 = *v42++;
      v33 = __OFADD__(v2, v43);
      v2 += v43;
      if (v33)
      {
        goto LABEL_26;
      }

      if (!--v41)
      {
        goto LABEL_24;
      }
    }
  }

  v2 = 0;
LABEL_24:

  return v2;
}

uint64_t sub_237CA6780(char a1, char a2)
{
  v3 = *(v2 + 40);
  if (*(v3 + 16) && ((a2 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFE | a1 & 1u), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA67D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_237CA6838()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16) && (v2 = sub_237D30020(), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6878(char a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && ((a1 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFE | a3 & 1u), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA68D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(v2 + 16) && (v3 = sub_237D30020(), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6924(char a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 40);
  if (*(v3 + 16) && ((a3 & 1) == 0 ? (v4 = 0) : (v4 = 256), v5 = sub_237D2FFAC(v4 & 0xFFFE | a1 & 1u), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237CA6980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(v2 + 16) && (v3 = sub_237D30020(), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void *sub_237CA69CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void sub_237CA6A6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v22 = *(*(a3 + 48) + v16);
    v17 = a4(&v22);
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_237E16B0C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_237CA6BC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v22 = *(*(a3 + 48) + 8 * v16);
    v17 = a4(&v22);
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_237E16CC4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_237CA6D14@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t (*a4)(void, uint64_t, void)@<X4>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a2, *a3);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237CA6DA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void)@<X4>, uint64_t *a5@<X8>)
{
  result = a4(*a1, a2, *a3);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237CA6EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 48))(a1, *(a1 + 8));
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_237C6FDA0(v1 - 120, v1 - 136, v0);
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237D28F08(0, v9, &a9 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
}

void *OUTLINED_FUNCTION_11_7(void *a1)
{

  return sub_237CA69CC(a1, v3, v2, v4, v5 - 112, v1);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for PreprocessingUpdatableSupervisedTemporalEstimator();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = a8;
  v9[13] = v8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v9[14] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v9[15] = OUTLINED_FUNCTION_27_0();
  v9[16] = *(a4 + 32);
  v9[17] = *(a4 + 16);
  v9[18] = swift_getAssociatedTypeWitness();
  v9[19] = type metadata accessor for PreprocessedFeatureSequence();
  v9[20] = type metadata accessor for AnnotatedFeature();
  v9[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[22] = v11;
  v9[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[24] = v12;
  v9[25] = OUTLINED_FUNCTION_27_0();
  v9[26] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[27] = v13;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v9[31] = v14;
  v9[32] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v9[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[34] = v15;
  v9[35] = OUTLINED_FUNCTION_27_0();
  v9[36] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[37] = v16;
  v9[38] = OUTLINED_FUNCTION_27_0();
  v17 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237CA7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[34];
  v15 = v14[35];
  v17 = v14[9];
  v18 = v14[5];
  v14[2] = sub_237EF8110();
  (*(v16 + 16))(v15, v18, v17);
  sub_237EF86F0();
  v19 = v14[33];
  v20 = v14[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v14[38];
    OUTLINED_FUNCTION_4_14();
    v49 = v14[15];
    (*(v22 + 8))(v21);
    v47 = v14[2];

    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, v47, v49, a12, a13, a14);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_30_5();
    v32 = OUTLINED_FUNCTION_29_4();
    v33(v32);
    OUTLINED_FUNCTION_40_1();
    v51 = v50 + 40;
    OUTLINED_FUNCTION_15_0();
    v48 = v34 + *v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[39] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_10_10(v35);
    OUTLINED_FUNCTION_18_3();

    return v45(v37, v38, v39, v40, v41, v42, v43, v44, a9, v48, v51, a12, a13, a14);
  }
}

uint64_t sub_237CA7890()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {
    v8 = v3[24];
    v7 = v3[25];
    v9 = v3[17];
    (*(v3[22] + 8))(v3[23], v3[10]);
    (*(v8 + 8))(v7, v9);

    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_45();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v15 = v3[28];
    v14 = v3[29];
    v16 = v3[26];
    v17 = v3[27];
    v19 = v3[24];
    v18 = v3[25];
    v20 = v3[17];
    (*(v3[22] + 8))(v3[23], v3[10]);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 16))(v15, v14, v16);
    v21 = swift_task_alloc();
    v3[41] = v21;
    swift_getAssociatedConformanceWitness();
    *v21 = v5;
    v21[1] = sub_237CA7AC0;
    OUTLINED_FUNCTION_45();

    return PreprocessedFeatureSequence.init<A>(_:)(v22, v23, v24, v25, v26);
  }
}

uint64_t sub_237CA7AC0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA7BC4()
{
  v0[4] = v0[3];
  v1 = v0[31];
  v19 = v0[32];
  v24 = v0[29];
  v2 = v0[27];
  v20 = v0[30];
  v21 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  AnnotatedFeature.annotation.getter(v20, v5);
  AnnotatedFeature.init(feature:annotation:)((v0 + 4), v5, v4, v6, v3);
  sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8A20();

  (*(v2 + 8))(v24, v21);
  (*(v1 + 8))(v19, v20);
  v7 = v0[33];
  v8 = v0[30];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v9 = v0[38];
    OUTLINED_FUNCTION_4_14();
    (*(v10 + 8))(v9);
    v22 = v0[2];

    v11 = v0[1];

    return v11(v22);
  }

  else
  {
    OUTLINED_FUNCTION_30_5();
    v13 = OUTLINED_FUNCTION_29_4();
    v14(v13);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_15_0();
    v23 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[39] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_10_10();

    return v23(v18);
  }
}

uint64_t sub_237CA7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v14 = v12[37];
  v13 = v12[38];
  v15 = v12[36];
  (*(v12[31] + 8))(v12[32], v12[30]);
  (*(v14 + 8))(v13, v15);
  v25 = v12[40];
  OUTLINED_FUNCTION_4_14();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_237CA7FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v14 = v12[37];
  v13 = v12[38];
  v15 = v12[36];
  v17 = v12[31];
  v16 = v12[32];
  v18 = v12[30];
  (*(v12[27] + 8))(v12[29], v12[26]);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v28 = v12[42];
  OUTLINED_FUNCTION_4_14();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v4;
  v1[6] = v5;
  v1[3] = v6;
  v1[4] = v7;
  v1[9] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[10] = OUTLINED_FUNCTION_27_0();
  v1[11] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_27_0();
  v1[14] = *(*(v3 + 40) + 8);
  v1[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[16] = v9;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_237CA8210()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[7];
  v2 = v0[4];
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v0[13]);
  v0[2] = v2;
  OUTLINED_FUNCTION_15_0();
  v5 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  v0[20] = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence();
  OUTLINED_FUNCTION_32_4();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_15();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_237CA8400;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA8400()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[11];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237CA8638()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v4;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[4] = v8;
  v1[11] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_27_0();
  v1[16] = *(*(v3 + 40) + 8);
  v1[17] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[18] = v10;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237CA8814()
{
  OUTLINED_FUNCTION_26_2();
  v1 = *(v0 + 72);
  v4 = *(v0 + 40);
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, *(v0 + 120));
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_15_0();
  v5 = v2 + *v2;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *(v0 + 176) = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PreprocessedFeatureSequence();
  OUTLINED_FUNCTION_32_4();
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedFeature();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_15();
  swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_237CA8A1C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA8A1C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237CA8C54()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_3();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_16_6(v6);
  OUTLINED_FUNCTION_45();
  return OUTLINED_FUNCTION_39_2(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_237CA8D68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237CA8E84()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 80) = v4;
    *v4 = v5;
    v4[1] = sub_237CA8F6C;

    return PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237CA8F6C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA9064()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA90C0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v21[10] = a20;
  v21[11] = v20;
  v21[8] = a17;
  v21[9] = a19;
  v21[6] = v22;
  v21[7] = v23;
  v21[4] = v24;
  v21[5] = v25;
  v21[2] = v26;
  v21[3] = v27;
  v28 = swift_task_alloc();
  v21[12] = v28;
  *v28 = v21;
  v28[1] = sub_237CA9200;
  OUTLINED_FUNCTION_45();

  return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_237CA9200()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237CA931C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[14];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_237CA940C;
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(v12, v10, v11, v8, v9, v6, v7, v5);
  }
}

uint64_t sub_237CA940C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237CA950C()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 136);
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 144) = v4;
    *v4 = v5;
    v4[1] = sub_237CA9608;

    return PreprocessingUpdatableSupervisedTemporalEstimator.fitted(toPreprocessed:validateOn:eventHandler:)();
  }
}

uint64_t sub_237CA9608()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237CA9700()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA9768()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237CA97C4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void PreprocessingUpdatableSupervisedTemporalEstimator.makeTransformer()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v22 = v2;
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v21 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  v16 = *(v1 + 16);
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableSupervisedTemporalEstimator.preprocessor.getter(v1, v19 - v18);
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v22);
  OUTLINED_FUNCTION_38_0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[14] = v16;
  v1[15] = v0;
  v1[12] = v2;
  v1[13] = v3;
  v1[10] = v4;
  v1[11] = v5;
  v1[8] = v6;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[16] = *(v4 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_27_0();
  v11 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237CA9AB0()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[10];
  PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v1, v0[18]);
  v2 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(v1 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v2;
  v0[3] = AssociatedTypeWitness;
  v0[4] = v4;
  v0[5] = AssociatedConformanceWitness;
  type metadata accessor for ComposedTemporalTransformer();
  OUTLINED_FUNCTION_15_0();
  v9 = v6 + *v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_237CA9C74;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237CA9C74()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = v5[18];
  v7 = v5[17];
  v8 = v5[16];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 160) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_237CA9E04()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_3();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_16_6(v7);
  OUTLINED_FUNCTION_45();
  return OUTLINED_FUNCTION_39_2(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_237CA9F38()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 128) = v6;
  *(v3 + 136) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237CAA078()
{
  v1 = v0[17];
  sub_237EF8B90();
  if (!v1)
  {
    v4 = v0[16];
    v5 = v0[10];
    PreprocessingUpdatableSupervisedTemporalEstimator.estimator.getter(v5, v0[14]);
    v0[6] = v4;
    v6 = *(v5 + 16);
    OUTLINED_FUNCTION_32_4();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(v5 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[2] = v6;
    v0[3] = AssociatedTypeWitness;
    v0[4] = v8;
    v0[5] = AssociatedConformanceWitness;
    type metadata accessor for ComposedTemporalTransformer();
    OUTLINED_FUNCTION_15_0();
    v12 = v10 + *v10;
    v11 = swift_task_alloc();
    v0[18] = v11;
    swift_getAssociatedTypeWitness();
    type metadata accessor for PreprocessedFeatureSequence();
    OUTLINED_FUNCTION_32_4();
    swift_getAssociatedTypeWitness();
    type metadata accessor for AnnotatedFeature();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_2_15();
    swift_getWitnessTable();
    *v11 = v0;
    v11[1] = sub_237CAA33C;

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237CAA33C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    (*(v3[13] + 8))(v3[14], v3[12]);

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237CAA4A8()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) + 8);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTemporalTransformer();
  return (*(v4 + 56))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v23 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v19 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 64))(a1, v13, v12);
  if (!v24)
  {
    (*(v20 + 16))(v23, v3, v22);
    (*(v19 + 32))(v5, v4, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v23, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTemporalTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingUpdatableSupervisedTemporalEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v20 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v23 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  result = (*(v12 + 40))(a1, v13, v12);
  if (!v25)
  {
    (*(v20 + 16))(v23, v3, v22);
    (*(v16 + 32))(v5, v4, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_36_4(v23, a3);
  }

  return result;
}

uint64_t sub_237CAAADC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableSupervisedTemporalEstimator.update<A, B>(_:with:eventHandler:)();
}

uint64_t sub_237CAAC08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B>(to:eventHandler:)();
}

uint64_t sub_237CAAD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v26 = swift_task_alloc();
  *(v20 + 16) = v26;
  *v26 = v20;
  v26[1] = sub_237C6B728;

  return PreprocessingUpdatableSupervisedTemporalEstimator.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a10, a6, a7, a8, v32, v33, a9, a13, a14, a15, a16, a17, a18, a19, a20);
}

void Transformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  Transformer.adaptedAsTemporal()(v5, v1);
  (*(v11 + 16))(v15, v7, v3);
  swift_getWitnessTable();
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v15, v3, v9);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v9;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  type metadata accessor for TransformerToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  v23 = MEMORY[0x28223BE20](v22);
  (*(v17 + 16))(v21, v1, v8, v23);
  TransformerToTemporalAdaptor.init(_:)(v21, v8, v4);
  (*(v11 + 16))(v15, v24, v6);
  swift_getWitnessTable();
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v15, v6, v25);
  OUTLINED_FUNCTION_38_0();
}

void TemporalTransformer.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5();
  (*(v36 + 16))(v38 - v37, v20, v28);
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v26, v24);
  swift_getWitnessTable();
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v34, v31, v30);
  OUTLINED_FUNCTION_38_0();
}

void TemporalTransformer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, v3);
  (*(v9 + 16))(v13, v5, v1);
  PreprocessingUpdatableSupervisedTemporalEstimator.init(_:_:)(v13, v1, v7);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v26[0] = v5;
  v26[1] = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for UpdatableEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  (*(v25 + 16))(v24 - v23, v1, v9);
  (*(v13 + 16))(v17, v11, v7);
  UpdatableEstimatorToTemporalAdaptor.init(_:)(v17, v7, v3);
  swift_getWitnessTable();
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v21, v18, v26[0]);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, v3);
  (*(v9 + 16))(v13, v5, v1);
  PreprocessingUpdatableTemporalEstimator.init(_:_:)(v13, v1, v7);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CAB240(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CAB2A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237CAB468(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return ComposedTemporalTransformer.init(_:_:)(v12, v10, a9, v11, v9);
}

uint64_t OUTLINED_FUNCTION_36_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return ComposedTemporalTransformer.init(_:_:)(a1, v3, v2, v4, a2);
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return PreprocessingUpdatableSupervisedTemporalEstimator.preprocessed<A, B>(from:eventHandler:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  PreprocessingUpdatableSupervisedTemporalEstimator.preprocessor.getter(v3, v2);

  return AnnotatedFeature.feature.getter(v0, v1);
}

uint64_t sub_237CAB8E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636972656D756ELL && a2 == 0xE700000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6564756C637865 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237CABA34(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x636972656D756ELL;
      break;
    case 2:
      result = 0x6564756C636E69;
      break;
    case 3:
      result = 0x6564756C637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237CABAD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E6E6D756C6F63 && a2 == 0xEB0000000073656DLL)
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

uint64_t sub_237CABB50()
{
  sub_237EFA120();
  MEMORY[0x2383E2210](0);
  return sub_237EFA170();
}

uint64_t sub_237CABBB4@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237CABBE0(uint64_t a1)
{
  v2 = sub_237CAC4BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABC1C(uint64_t a1)
{
  v2 = sub_237CAC4BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CAB8E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CABC88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237CABCB0(uint64_t a1)
{
  v2 = sub_237CAC36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABCEC(uint64_t a1)
{
  v2 = sub_237CAC36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABD30(uint64_t a1)
{
  v2 = sub_237CAC3C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABD6C(uint64_t a1)
{
  v2 = sub_237CAC3C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABDA8()
{
  sub_237EFA120();
  MEMORY[0x2383E2210](0);
  return sub_237EFA170();
}

uint64_t sub_237CABDE8(uint64_t a1)
{
  v2 = sub_237CAC414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABE24(uint64_t a1)
{
  v2 = sub_237CAC414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CABE60(uint64_t a1)
{
  v2 = sub_237CAC468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CABE9C(uint64_t a1)
{
  v2 = sub_237CAC468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ColumnSelection.encode(to:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEB98);
  OUTLINED_FUNCTION_1();
  v42 = v5;
  v43 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBA0);
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBA8);
  OUTLINED_FUNCTION_1();
  v37 = v14;
  v38 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBB0);
  OUTLINED_FUNCTION_1();
  v35 = v19;
  v36 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBB8);
  OUTLINED_FUNCTION_1();
  v44 = v24;
  v45 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v35 - v26;
  v28 = *v2;
  v29 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CAC36C();
  sub_237EFA1B0();
  if (!v29)
  {
    LOBYTE(v46) = 2;
    sub_237CAC414();
    OUTLINED_FUNCTION_14_9();
    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
    OUTLINED_FUNCTION_4_15(&qword_27DEAEBD8);
    v32 = v40;
    sub_237EF9A70();
    (*(v39 + 8))(v12, v32);
    return (*(v44 + 8))(v27, v17);
  }

  if (v29 == 1)
  {
    LOBYTE(v46) = 3;
    sub_237CAC3C0();
    v30 = v41;
    OUTLINED_FUNCTION_14_9();
    v46 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
    OUTLINED_FUNCTION_4_15(&qword_27DEAEBD8);
    v31 = v43;
    sub_237EF9A70();
    (*(v42 + 8))(v30, v31);
    return (*(v44 + 8))(v27, v17);
  }

  v34 = (v44 + 8);
  if (v28)
  {
    LOBYTE(v46) = 1;
    sub_237CAC468();
    OUTLINED_FUNCTION_15_7();
    (*(v37 + 8))(v17, v38);
  }

  else
  {
    LOBYTE(v46) = 0;
    sub_237CAC4BC();
    OUTLINED_FUNCTION_15_7();
    (*(v35 + 8))(v22, v36);
  }

  return (*v34)(v27, v28);
}

unint64_t sub_237CAC36C()
{
  result = qword_27DEAEBC0;
  if (!qword_27DEAEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBC0);
  }

  return result;
}

unint64_t sub_237CAC3C0()
{
  result = qword_27DEAEBC8;
  if (!qword_27DEAEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBC8);
  }

  return result;
}

unint64_t sub_237CAC414()
{
  result = qword_27DEAEBE0;
  if (!qword_27DEAEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBE0);
  }

  return result;
}

unint64_t sub_237CAC468()
{
  result = qword_27DEAEBE8;
  if (!qword_27DEAEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBE8);
  }

  return result;
}

unint64_t sub_237CAC4BC()
{
  result = qword_27DEAEBF0;
  if (!qword_27DEAEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEBF0);
  }

  return result;
}

void ColumnSelection.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBF8);
  OUTLINED_FUNCTION_1();
  v71 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v75 = &v60 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC00);
  OUTLINED_FUNCTION_1();
  v69 = v6;
  v70 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v74 = &v60 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC08);
  OUTLINED_FUNCTION_1();
  v67 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC10);
  OUTLINED_FUNCTION_1();
  v66 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC18);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_237CAC36C();
  v26 = v77;
  sub_237EFA190();
  if (v26)
  {
    goto LABEL_8;
  }

  v63 = v14;
  v64 = v18;
  v65 = v13;
  v27 = v73;
  v77 = v21;
  v28 = sub_237EF9980();
  sub_237CAD3B0(v28, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_7;
  }

  v62 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return;
  }

  v61 = *(v30 + v31);
  sub_237CADB14(v31 + 1, v32 >> 1, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    v43 = v77;
    v44 = sub_237EF93E0();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v46 = &type metadata for ColumnSelection;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v24, v19);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v76);
    return;
  }

  v37 = v72;
  switch(v61)
  {
    case 1:
      v47 = v27;
      LOBYTE(v78) = 1;
      sub_237CAC468();
      v48 = v65;
      OUTLINED_FUNCTION_2_16();
      swift_unknownObjectRelease();
      (*(v67 + 8))(v48, v47);
      v49 = OUTLINED_FUNCTION_1_12();
      v50(v49);
      v42 = 2;
      v41 = 1;
      goto LABEL_12;
    case 2:
      LOBYTE(v78) = 2;
      sub_237CAC414();
      OUTLINED_FUNCTION_2_16();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
      OUTLINED_FUNCTION_6_12(&qword_27DEAEC28);
      sub_237EF9970();
      swift_unknownObjectRelease();
      v51 = OUTLINED_FUNCTION_12_10();
      v52(v51);
      v53 = OUTLINED_FUNCTION_1_12();
      v54(v53);
      v42 = 0;
      v41 = v78;
      v55 = v76;
      break;
    case 3:
      LOBYTE(v78) = 3;
      sub_237CAC3C0();
      OUTLINED_FUNCTION_2_16();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
      OUTLINED_FUNCTION_6_12(&qword_27DEAEC28);
      sub_237EF9970();
      swift_unknownObjectRelease();
      v56 = OUTLINED_FUNCTION_11_8();
      v57(v56);
      v58 = OUTLINED_FUNCTION_1_12();
      v59(v58);
      v41 = v78;
      v42 = 1;
      v55 = v76;
      v37 = v72;
      break;
    default:
      LOBYTE(v78) = 0;
      sub_237CAC4BC();
      v38 = v64;
      OUTLINED_FUNCTION_2_16();
      swift_unknownObjectRelease();
      (*(v66 + 8))(v38, v63);
      v39 = OUTLINED_FUNCTION_1_12();
      v40(v39);
      v41 = 0;
      v42 = 2;
LABEL_12:
      v55 = v76;
      break;
  }

  *v37 = v41;
  *(v37 + 8) = v42;
  __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t DataFrame.selecting(_:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  v3 = sub_237CACD68(&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0);
  sub_237CAD454();
  sub_237EF6180();
}

uint64_t sub_237CACD68(uint64_t a1)
{
  sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v78 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    sub_237EF8260();
    return v11;
  }

  v13 = MEMORY[0x277D84F90];
  v83 = v8;
  v14 = v8;
  if (v12 == 1)
  {
    v15 = sub_237EF6170();
    v16 = *(v15 + 16);
    if (v16)
    {
      v80 = v11;
      v85 = v13;
      sub_237C62D90(0, v16, 0);
      v17 = v85;
      v18 = v3 + 16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 80);
      v79 = v15;
      v21 = v15 + ((v20 + 32) & ~v20);
      v81 = *(v18 + 56);
      v82 = v19;
      v84 = v18;
      v22 = (v18 - 8);
      do
      {
        (v82)(v10, v21, v14);
        v23 = sub_237EF6300();
        v25 = v24;
        (*v22)(v10, v14);
        v85 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          v29 = OUTLINED_FUNCTION_17_0(v26);
          sub_237C62D90(v29, v27 + 1, 1);
          v17 = v85;
        }

        *(v17 + 16) = v27 + 1;
        v28 = v17 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v21 += v81;
        --v16;
        v14 = v83;
      }

      while (v16);

      v11 = v80;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    sub_237CADF98(v17);
    v62 = sub_237E15C00(v11, v61);
    return sub_237EC9254(v62);
  }

  v30 = sub_237EF6170();
  v31 = *(v30 + 16);
  if (v11)
  {
    if (v31)
    {
      v34 = *(v3 + 16);
      v32 = v3 + 16;
      v33 = v34;
      v35 = (*(v32 + 64) + 32) & ~*(v32 + 64);
      v79 = v30;
      v36 = v30 + v35;
      v11 = MEMORY[0x277D84F90];
      v84 = v32;
      v81 = *(v32 + 56);
      v82 = (v32 - 8);
      v80 = v34;
      while (1)
      {
        v33(v7, v36, v14);
        sub_237EF62F0();
        if (swift_dynamicCastMetatype())
        {
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v53;
          }

          v37 = *(v11 + 16);
          v38 = v11;
          if (v37 >= *(v11 + 24) >> 1)
          {
            sub_237D0B354();
            v38 = v54;
          }

          v39 = OUTLINED_FUNCTION_8_13();
          v40(v39);
          *(v38 + 16) = v37 + 1;
          v11 = v38;
          v41 = v38 + 16 * v37;
          *(v41 + 32) = v7;
          *(v41 + 40) = v32;
          goto LABEL_40;
        }

        if (swift_dynamicCastMetatype())
        {
          v42 = v7;
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v55;
          }

          v44 = *(v11 + 16);
          v43 = *(v11 + 24);
          v45 = v11;
          if (v44 >= v43 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v43);
            sub_237D0B354();
            v45 = v56;
          }

          v14 = v83;
          v46 = OUTLINED_FUNCTION_8_13();
          v47(v46);
          *(v45 + 16) = v44 + 1;
          v11 = v45;
          v48 = v45 + 16 * v44;
        }

        else
        {
          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350);
            if (!OUTLINED_FUNCTION_9_6())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0);
              if (!OUTLINED_FUNCTION_9_6())
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8);
                if (!OUTLINED_FUNCTION_9_6())
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8);
                  if (!OUTLINED_FUNCTION_9_6())
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
                    if (!OUTLINED_FUNCTION_9_6())
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60);
                      if (!OUTLINED_FUNCTION_9_6())
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50);
                        if (!OUTLINED_FUNCTION_9_6())
                        {
                          v59 = OUTLINED_FUNCTION_8_13();
                          v60(v59);
                          goto LABEL_40;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v42 = v7;
          sub_237EF6300();
          if ((OUTLINED_FUNCTION_10_11() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_14();
            v11 = v57;
          }

          v50 = *(v11 + 16);
          v49 = *(v11 + 24);
          v51 = v11;
          if (v50 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v49);
            sub_237D0B354();
            v51 = v58;
          }

          v52 = v83;
          (*v82)(v7, v83);
          v11 = v51;
          v14 = v52;
          *(v11 + 16) = v50 + 1;
          v48 = v11 + 16 * v50;
        }

        *(v48 + 32) = v42;
        *(v48 + 40) = v32;
        v33 = v80;
LABEL_40:
        v36 += v81;
        if (!--v31)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_51:

    return MEMORY[0x277D84F90];
  }

  if (!v31)
  {
    goto LABEL_51;
  }

  v85 = v13;
  v63 = v30;
  sub_237C62D90(0, v31, 0);
  v11 = v85;
  v65 = *(v3 + 16);
  v64 = v3 + 16;
  v66 = *(v64 + 64);
  v79 = v63;
  v67 = v63 + ((v66 + 32) & ~v66);
  v81 = *(v64 + 56);
  v82 = v65;
  v84 = v64;
  v68 = (v64 - 8);
  do
  {
    v69 = v83;
    (v82)(v10, v67, v83);
    v70 = sub_237EF6300();
    v72 = v71;
    (*v68)(v10, v69);
    v85 = v11;
    v74 = *(v11 + 16);
    v73 = *(v11 + 24);
    if (v74 >= v73 >> 1)
    {
      v76 = OUTLINED_FUNCTION_17_0(v73);
      sub_237C62D90(v76, v74 + 1, 1);
      v11 = v85;
    }

    *(v11 + 16) = v74 + 1;
    v75 = v11 + 16 * v74;
    *(v75 + 32) = v70;
    *(v75 + 40) = v72;
    v67 += v81;
    --v31;
  }

  while (v31);
LABEL_50:

  return v11;
}

void sub_237CAD3B0(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_7_14();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_237CAD3E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237CAD454()
{
  result = qword_27DEAEC30;
  if (!qword_27DEAEC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents15ColumnSelectionO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for ColumnSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237CAD5F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_237CAD6A0()
{
  result = qword_27DEAEC38;
  if (!qword_27DEAEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC38);
  }

  return result;
}

unint64_t sub_237CAD6F8()
{
  result = qword_27DEAEC40;
  if (!qword_27DEAEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC40);
  }

  return result;
}

unint64_t sub_237CAD750()
{
  result = qword_27DEAEC48;
  if (!qword_27DEAEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC48);
  }

  return result;
}

unint64_t sub_237CAD7A8()
{
  result = qword_27DEAEC50;
  if (!qword_27DEAEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC50);
  }

  return result;
}

unint64_t sub_237CAD800()
{
  result = qword_27DEAEC58;
  if (!qword_27DEAEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC58);
  }

  return result;
}

unint64_t sub_237CAD858()
{
  result = qword_27DEAEC60;
  if (!qword_27DEAEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC60);
  }

  return result;
}

unint64_t sub_237CAD8B0()
{
  result = qword_27DEAEC68;
  if (!qword_27DEAEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC68);
  }

  return result;
}

unint64_t sub_237CAD908()
{
  result = qword_27DEAEC70;
  if (!qword_27DEAEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC70);
  }

  return result;
}

unint64_t sub_237CAD960()
{
  result = qword_27DEAEC78;
  if (!qword_27DEAEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC78);
  }

  return result;
}

unint64_t sub_237CAD9B8()
{
  result = qword_27DEAEC80;
  if (!qword_27DEAEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC80);
  }

  return result;
}

unint64_t sub_237CADA10()
{
  result = qword_27DEAEC88;
  if (!qword_27DEAEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC88);
  }

  return result;
}

unint64_t sub_237CADA68()
{
  result = qword_27DEAEC90;
  if (!qword_27DEAEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC90);
  }

  return result;
}

unint64_t sub_237CADAC0()
{
  result = qword_27DEAEC98;
  if (!qword_27DEAEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAEC98);
  }

  return result;
}

uint64_t sub_237CADB14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_237EF98B0();
}

uint64_t OUTLINED_FUNCTION_4_15(unint64_t *a1)
{

  return sub_237CAD3E8(a1);
}

void OUTLINED_FUNCTION_5_14()
{

  sub_237D0B354();
}

uint64_t OUTLINED_FUNCTION_6_12(unint64_t *a1)
{

  return sub_237CAD3E8(a1);
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return sub_237EF99C0();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return sub_237EF99C0();
}

void sub_237CADD10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v37 = MEMORY[0x277D84F90];
  sub_237C632DC();
  v8 = v37;
  v28 = v6;
  v29 = v5;
  v26 = a1;
  v25 = v7;
  if (v7)
  {
    v9 = a1 + 40;
    v10 = a2 + 40;
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_16();
      a3();
      v33 = v31;
      v34 = v32;
      OUTLINED_FUNCTION_4_16();
      swift_getAtKeyPath();
      v11 = v31;
      v12 = v32;
      v37 = v8;
      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_237C632DC();
        v12 = v32;
        v11 = v31;
        v8 = v37;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      --v6;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12;
      --v5;
      v9 += 16;
      v10 += 16;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v15 = v25;
    v16 = v26;
    v27 = 16 * v25;
    for (i = a2; v29 != v15; i += 16)
    {
      if (v15 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_24;
      }

      if (v28 == v15)
      {
        break;
      }

      if (v15 >= v28)
      {
        goto LABEL_25;
      }

      v18 = *(v16 + v27 + 40);
      v19 = *(i + v27 + 32);
      v20 = *(i + v27 + 40);
      v33 = *(v16 + v27 + 32);
      v34 = v18;
      v35 = v19;
      v36 = v20;
      (a3)(&v31, &v33);
      v33 = v31;
      v34 = v32;
      OUTLINED_FUNCTION_4_16();
      swift_getAtKeyPath();
      v21 = v31;
      v22 = v32;
      v37 = v8;
      v23 = *(v8 + 16);
      if (v23 >= *(v8 + 24) >> 1)
      {
        sub_237C632DC();
        v8 = v37;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v22;
      v16 += 16;
      ++v15;
    }
  }
}

void sub_237CADF98(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_19_6(a1);
  MEMORY[0x2383E0D40](v5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_18_7();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v6 = sub_237EF8260();
    v14 = OUTLINED_FUNCTION_17_7(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18);
    sub_237E4C084(v14, v15, v16);

    v4 += 16;
  }

  __break(1u);
}

uint64_t sub_237CAE03C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C18C(&v8, *(v1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void sub_237CAE0CC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
  v6 = sub_237C96710(qword_27DEAE948, &qword_27DEAD490);
  MEMORY[0x2383E0D40](v4, v5, v6);
  OUTLINED_FUNCTION_18_7();
  while (1)
  {
    if (v1 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v7 = sub_237EF8260();
    v15 = OUTLINED_FUNCTION_17_7(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
    sub_237E4C4B4(v15);

    v2 += 16;
  }

  __break(1u);
}

uint64_t sub_237CAE1B8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D849A8], MEMORY[0x277D849B8]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C5F8(&v8, *(v1 + v5));
      v5 += 4;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_237CAE248(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
  v4 = sub_237CB21C0();
  v5 = MEMORY[0x2383E0D40](v2, v3, v4);
  v13 = v5;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      sub_237E4C6A8(v12, v8, v9);
      --v6;
    }

    while (v6);

    return v13;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

uint64_t sub_237CAE2F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_19_6(a1);
  v3 = MEMORY[0x2383E0D40](v2, MEMORY[0x277D839B0], MEMORY[0x277D839C0]);
  v9 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_237E4C7EC(&v8, *(v1 + v5++));
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

uint64_t sub_237CAE384()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C5F8(&v6, *(v0 + v3));
      v3 += 4;
      --v1;
    }

    while (v1);

    return v7;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_237CAE3F8(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v3 += 16;
      sub_237E4C6A8(v8, v4, v5);
      --v2;
    }

    while (v2);

    return v9;
  }

  else
  {
    v6 = a2;
  }

  return v6;
}

uint64_t sub_237CAE474()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C18C(v6, *(v0 + v3));
      v3 += 8;
      --v1;
    }

    while (v1);

    return v6[1];
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_237CAE4E8()
{
  OUTLINED_FUNCTION_11_9();
  if (v1)
  {
    v3 = 32;
    do
    {
      sub_237E4C7EC(&v6, *(v0 + v3++));
      --v1;
    }

    while (v1);

    return v7;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t BaseTreeClassifier.fitted(features:annotations:classCount:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *)@<X3>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v34 = a2;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(v7 + 2);
  *&v28 = *a1;
  *(&v28 + 1) = v11;
  LOBYTE(v29) = v12;
  *&v30 = v13;
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51C98(&v28);
  if (!v6)
  {
    v26 = v11;
    v27 = v14;
    v16 = result;
    sub_237D51B9C();
    type metadata accessor for XGBooster();
    swift_allocObject();

    v18 = sub_237E88668(v17, 0);
    v19 = v18;
    v34 = v16;
    sub_237CAE8CC(v18, a3);
    v28 = *v7;
    v29 = v27;
    v30 = *(v7 + 24);
    v31 = *(v7 + 40);
    v32 = *(v7 + 56);
    v33 = *(v7 + 72);
    result = sub_237CAEA0C(v19, a3, v26, 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v25 = v19;

      v20 = 0;
      v21 = a5;
      while (1)
      {
        if (v27 == v20)
        {

          *v21 = a3;
          v21[1] = v26;
          v21[2] = v25;
          v21[3] = v27;
          return result;
        }

        if (__OFADD__(v20, 1))
        {
          break;
        }

        sub_237EF8B90();
        OUTLINED_FUNCTION_8_14();
        result = sub_237E87F70();
        if (a4 && (v20 >= 5 ? (v22 = 10 * (v20 / 0xA) == v20) : (v22 = 1), v22))
        {

          sub_237C70604(a4);
          v23 = sub_237E87BCC();

          v24 = sub_237C908A4(v23);

          *&v28 = 0xD000000000000015;
          *(&v28 + 1) = 0x8000000237EFBD30;
          v29 = v20 + 1;
          *&v30 = v27;
          BYTE8(v30) = 0;
          *&v31 = v24;
          a4(&v28);
          sub_237C5EE40(a4);

          v21 = a5;
        }

        else
        {
          v21 = a5;
        }

        ++v20;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_237CAE8CC(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    sub_237C84150();
    swift_allocError();
    *v4 = 0xD00000000000001CLL;
    *(v4 + 8) = 0x8000000237EFBD90;
    *(v4 + 16) = 0xD000000000000027;
    *(v4 + 24) = 0x8000000237EFBED0;
    *(v4 + 32) = 5;
    return swift_willThrow();
  }

  if (a2 == 2)
  {
    OUTLINED_FUNCTION_12_11();
    result = sub_237E87DE0();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_11();
    result = sub_237E87DE0();
    if (v2)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_12_11();
  return sub_237E87DE0();
}

id sub_237CAEA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = *v4;
  v8 = *(v4 + 8);
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);
  v11 = *(v4 + 56);
  v13 = *(v4 + 64);
  v12 = *(v4 + 72);
  v14 = *(v4 + 80);
  if ((a4 & 1) == 0)
  {
    sub_237EF9AB0();
    OUTLINED_FUNCTION_2_17();
    sub_237E87DE0();
    if (v5)
    {
    }

    v6 = a2;
  }

  result = sub_237E87DE0();
  if (!v5)
  {
    sub_237E87DE0();
    if (v6 >= 3)
    {
      sub_237EF9AB0();
      OUTLINED_FUNCTION_14_10();
    }

    sub_237CC9F60(v10);
    OUTLINED_FUNCTION_7_15();
    sub_237EF8C10();
    OUTLINED_FUNCTION_8_14();
    sub_237E87DE0();

    if ((v11 & 1) == 0)
    {
      sub_237EF9AB0();
      OUTLINED_FUNCTION_14_10();
    }

    sub_237EF9AB0();
    OUTLINED_FUNCTION_14_10();

    sub_237CC9F60(v9);
    OUTLINED_FUNCTION_7_15();
    sub_237EF8C10();
    OUTLINED_FUNCTION_14_10();

    sub_237CCA010(v8);
    v24 = v8;
    sub_237EF9AB0();
    OUTLINED_FUNCTION_14_10();

    if (v13 <= 0.0 || v13 > 1.0)
    {
      OUTLINED_FUNCTION_7_15();
      sub_237EF9330();
      v17 = 0x7362757320776F52;
      v18 = 0xED0000656C706D61;
    }

    else
    {
      OUTLINED_FUNCTION_7_15();
      sub_237EF8C10();
      OUTLINED_FUNCTION_8_14();
      sub_237E87DE0();

      if (v12 > 0.0 && v12 <= 1.0)
      {
        OUTLINED_FUNCTION_7_15();
        sub_237EF8C10();
        OUTLINED_FUNCTION_8_14();
        sub_237E87DE0();

        sub_237CCA010(v14);
        v24 = v14;
        sub_237EF9AB0();
        OUTLINED_FUNCTION_8_14();
        sub_237E87DE0();

        if (v7 >= 0.0 && v7 <= 1.0)
        {
          OUTLINED_FUNCTION_7_15();
          sub_237EF8C10();
          OUTLINED_FUNCTION_8_14();
          sub_237E87DE0();
        }

        OUTLINED_FUNCTION_7_15();
        sub_237EF9330();
        MEMORY[0x2383E0710](0x676E696E7261654CLL, 0xED00006574617220);
        v19 = " should be in the range [";
LABEL_17:
        MEMORY[0x2383E0710](0xD000000000000019, (v19 - 32) | 0x8000000000000000);
        sub_237EF8C10();
        MEMORY[0x2383E0710](8236, 0xE200000000000000);
        sub_237EF8C10();
        MEMORY[0x2383E0710](11869, 0xE200000000000000);
        sub_237C84150();
        swift_allocError();
        *v20 = 0xD00000000000001CLL;
        *(v20 + 8) = 0x8000000237EFBD90;
        *(v20 + 16) = v24;
        *(v20 + 24) = v25;
        *(v20 + 32) = 5;
        return swift_willThrow();
      }

      OUTLINED_FUNCTION_7_15();
      sub_237EF9330();
      v18 = 0x8000000237EFBE10;
      v17 = 0xD000000000000010;
    }

    MEMORY[0x2383E0710](v17, v18);
    v19 = " should be in the range (";
    goto LABEL_17;
  }

  return result;
}

uint64_t BaseTreeClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = v5;
  v28 = a2;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = a3[1];
  v21 = *a3;
  *&v22 = *a1;
  v12 = *(a3 + 16);
  v13 = a3[3];
  *(&v22 + 1) = v8;
  LOBYTE(v23) = v9;
  *&v24 = v10;
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51C98(&v22);
  if (!v6)
  {
    v15 = result;
    sub_237D51B9C();
    v28 = v15;
    *&v22 = v21;
    *(&v22 + 1) = v11;
    LOBYTE(v23) = v12;
    *&v24 = v13;
    OUTLINED_FUNCTION_36_1();

    v16 = sub_237D51C98(&v22);
    sub_237D51B9C();
    type metadata accessor for XGBooster();
    swift_allocObject();
    v17 = v28;

    v18 = sub_237E88668(v17, v16);
    sub_237CAE8CC(v18, a4);
    v22 = *v7;
    v23 = 0;
    v24 = *(v7 + 24);
    v25 = *(v7 + 40);
    v26 = *(v7 + 56);
    v27 = *(v7 + 72);
    sub_237CAEA0C(v18, a4, v8, 0);

    *a5 = a4;
    a5[1] = v8;
    a5[2] = v18;
    a5[3] = 0;
  }

  return result;
}

uint64_t BaseTreeClassifier.makeTransformer(classCount:featureCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for XGBooster();
  swift_allocObject();
  result = sub_237E88668(0, 0);
  if (!v3)
  {
    v8 = result;
    result = sub_237CAEA0C(result, a1, a2, 0);
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v8;
    a3[3] = 0;
  }

  return result;
}

uint64_t BaseTreeClassifier.update(_:features:annotations:eventHandler:)(__int128 *a1, uint64_t *a2, uint64_t a3, void (*a4)(__int128 *))
{
  v9 = *a2;
  v8 = a2[1];
  v10 = *(a2 + 16);
  v11 = a2[3];
  v12 = *(v4 + 16);
  *&v55 = *a2;
  *(&v55 + 1) = v8;
  LOBYTE(v56) = v10;
  v57 = v11;
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51C98(&v55);
  if (!v5)
  {
    v52 = v8;
    v51 = v12;
    sub_237D51B9C();
    v14 = a1;
    if (sub_237E87EDC())
    {
      if (v52 != sub_237E87EDC())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
        v15 = OUTLINED_FUNCTION_36_1();
        *(v15 + 16) = xmmword_237F04760;
        *(v15 + 32) = v9;
        *(v15 + 40) = v52;
        *&v55 = 0;
        *(&v55 + 1) = 0xE000000000000000;
        sub_237EF9330();

        *&v55 = 0x6465746365707845;
        *(&v55 + 1) = 0xE900000000000020;
        v60[0] = sub_237E87EDC();
        v16 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v16);

        MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
        v60[0] = v52;
        v17 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v17);

        v18 = v55;
        sub_237C84150();
        swift_allocError();
        *v19 = v15;
        *(v19 + 8) = v18;
        *(v19 + 24) = 0;
        *(v19 + 32) = 6;
        swift_willThrow();
      }
    }

    else
    {
      *(a1 + 1) = v52;
      *&v55 = v52;
      sub_237EF9AB0();
      OUTLINED_FUNCTION_2_17();
      sub_237E87DE0();
    }

    sub_237EF8B90();
    result = sub_237E87F70();
    v50 = a3;
    v20 = *(a1 + 3);
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    *(v14 + 3) = v21;
    if (!a4)
    {
    }

    v22 = *(v14 + 2);
    v55 = *v14;
    v56 = v22;
    v57 = v20 + 1;
    v60[0] = v9;
    v60[1] = v52;
    v61 = v10;
    v62 = v11;
    sub_237C70604(a4);

    v23 = BaseTreeClassifierModel.applied(features:eventHandler:)(v60);
    v53 = v21;

    v24 = *(v23 + 16);
    if (v24)
    {
      *&v55 = MEMORY[0x277D84F90];
      sub_237C632DC();
      v25 = 32;
      v26 = v55;
      do
      {
        v27 = *(v23 + v25);
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = *(v27 + 32);
        }

        else
        {
          v29 = 0;
        }

        *&v55 = v26;
        v30 = *(v26 + 16);
        if (v30 >= *(v26 + 24) >> 1)
        {
          sub_237C632DC();
          v26 = v55;
        }

        *(v26 + 16) = v30 + 1;
        v31 = v26 + 16 * v30;
        *(v31 + 32) = v29;
        *(v31 + 40) = v28 == 0;
        v25 += 8;
        --v24;
      }

      while (v24);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v32 = sub_237CAFED8(v50);
    MEMORY[0x28223BE20](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB8);
    sub_237CB21C0();
    sub_237C96710(&qword_27DEAECC8, &qword_27DEAECB8);
    swift_getKeyPath();

    sub_237CADD10(v26, v32, sub_237CB2164);
    v34 = v33;

    v35 = sub_237CAE248(v34);
    MEMORY[0x28223BE20](v35);
    swift_getKeyPath();

    v36 = OUTLINED_FUNCTION_16_7();
    sub_237CADD10(v36, v37, v38);
    v40 = v39;

    sub_237CAE3F8(v40, v35);
    v41 = OUTLINED_FUNCTION_16_7();
    sub_237CB07EC(v41, v42, v43, v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000237EFB8A0;
    sub_237CB0070(sub_237CB17D4, sub_237CB17D4, sub_237D299E0);
    v48 = v47;
    sub_237CB223C(v63);
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 48) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    sub_237C758C4();
    v49 = sub_237EF8230();
    *&v55 = 0xD000000000000015;
    *(&v55 + 1) = 0x8000000237EFBD30;
    v56 = v53;
    v57 = v51;
    v58 = 0;
    v59 = v49;
    a4(&v55);

    sub_237C5EE40(a4);
  }

  return result;
}

uint64_t sub_237CAFED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237C632DC();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237C632DC();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237CB0070(uint64_t (*a1)(char *, unint64_t, uint64_t), uint64_t (*a2)(void *, uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = 0;
  v8 = 0;
  result = *(v3 + 40);
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 64);
  v13 = (v10 + 63) >> 6;
  do
  {
    if (!v12)
    {
      while (1)
      {
        v14 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          goto LABEL_13;
        }

        v12 = *(result + 64 + 8 * v14);
        ++v7;
        if (v12)
        {
          v7 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v14 = v7;
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(result + 56) + ((v14 << 9) | (8 * v15)));
    v17 = __OFADD__(v8, v16);
    v8 += v16;
  }

  while (!v17);
  __break(1u);
LABEL_13:
  v18 = sub_237CB1568(result, a1, a2);
  if (!*(v18 + 16))
  {

    v19 = MEMORY[0x277D84F90];
LABEL_34:
    v66 = *(v19 + 16);
    if (!v66)
    {
    }

    v67 = 0;
    for (i = 32; ; i += 8)
    {
      v69 = *(v19 + i);
      v17 = __OFADD__(v67, v69);
      v67 += v69;
      if (v17)
      {
        break;
      }

      if (!--v66)
      {
      }
    }

    goto LABEL_41;
  }

  v70 = v8;
  v75 = v18;
  v76 = MEMORY[0x277D84F90];
  v74 = *(v18 + 16);
  sub_237C62DB0();
  v19 = v76;
  v21 = a3(v75);
  v22 = v74;
  result = v75;
  v24 = v23;
  v25 = 0;
  v26 = v75 + 64;
  v27 = v23;
  v71 = v75 + 72;
  v72 = v23;
  v28 = 1;
  v29 = -2;
  v73 = v75 + 64;
  while ((v21 & 0x8000000000000000) == 0 && v21 < v28 << *(result + 32))
  {
    v30 = v21 >> 6;
    v31 = v28 << v21;
    if ((*(v26 + 8 * (v21 >> 6)) & (v28 << v21)) == 0)
    {
      goto LABEL_43;
    }

    if (*(result + 36) != v24)
    {
      goto LABEL_44;
    }

    v32 = *(*(result + 56) + 8 * v21);
    v77 = v19;
    v33 = *(v19 + 16);
    if (v33 >= *(v19 + 24) >> 1)
    {
      v58 = v20;
      sub_237C62DB0();
      result = OUTLINED_FUNCTION_3_16(v59, v60, v58, v61, v62, v63, v64, v65, v70, v71, v72, v73, v74, v75);
      v19 = v77;
    }

    *(v19 + 16) = v33 + 1;
    *(v19 + 8 * v33 + 32) = v32;
    v34 = v28 << *(result + 32);
    if (v21 >= v34)
    {
      goto LABEL_45;
    }

    v35 = *(v26 + 8 * v30);
    if ((v35 & v31) == 0)
    {
      goto LABEL_46;
    }

    if (*(result + 36) != v24)
    {
      goto LABEL_47;
    }

    v36 = v35 & (v29 << (v21 & 0x3F));
    if (v36)
    {
      v34 = __clz(__rbit64(v36)) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v37 = v30 << 6;
      v38 = v30 + 1;
      v39 = (v71 + 8 * v30);
      while (v38 < (v34 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          v42 = sub_237CB231C(v21, v24, v20 & 1);
          result = OUTLINED_FUNCTION_3_16(v42, v43, v44, v45, v46, v47, v48, v49, v70, v71, v72, v73, v74, v75);
          v34 = __clz(__rbit64(v40)) + v37;
          goto LABEL_31;
        }
      }

      v50 = sub_237CB231C(v21, v24, v20 & 1);
      result = OUTLINED_FUNCTION_3_16(v50, v51, v52, v53, v54, v55, v56, v57, v70, v71, v72, v73, v74, v75);
    }

LABEL_31:
    v20 = 0;
    ++v25;
    v21 = v34;
    v24 = v27;
    if (v25 == v22)
    {

      goto LABEL_34;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_237CB03A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void **)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a2;
  v9 = a1;
  v68 = a6;
  v80 = *(a1 + 16);
  v77 = a2 + 32;
  v78 = a1 + 32;
  sub_237EF8260();
  sub_237EF8260();

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v15 = MEMORY[0x277D84F98];
  v69 = v9;
  v70 = a4;
  v75 = v8;
  while (2)
  {
    v73 = v11;
    v74 = v10;
    v71 = v13;
    v16 = v12;
    do
    {
LABEL_3:
      if (v16 == v80)
      {
        goto LABEL_37;
      }

      if (v16 >= *(v9 + 16))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v17 = *(v8 + 16);
      if (v16 == v17)
      {
        goto LABEL_37;
      }

      if (v16 >= v17)
      {
        goto LABEL_39;
      }

      v18 = *(v77 + 4 * v16);
      v19 = v16 + 1;
      LODWORD(v83) = *(v78 + 4 * v16);
      HIDWORD(v83) = v18;
      a3(&v82, &v83);
      v16 = v19;
    }

    while (!a5[2]);
    v81 = v19;
    v20 = a5[5];
    v76 = v82;
    v21 = v82;
    MEMORY[0x2383E21E0](v20, v82, 4);
    OUTLINED_FUNCTION_9_7();
    do
    {
      OUTLINED_FUNCTION_0_13();
      if ((v23 & 1) == 0)
      {
        v16 = v81;
        v8 = v75;
        goto LABEL_3;
      }

      v24 = a5[6];
    }

    while (*(v24 + 4 * v22) != v21);
    MEMORY[0x2383E21E0](v20, HIDWORD(v76), 4);
    do
    {
      OUTLINED_FUNCTION_0_13();
      if ((v26 & 1) == 0)
      {
        v16 = v81;
        v9 = v69;
        v8 = v75;
        goto LABEL_3;
      }
    }

    while (*(v24 + 4 * v25) != HIDWORD(v76));
    sub_237C5EE40(v74);
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v15;
    sub_237D2FDB8(HIDWORD(v76));
    OUTLINED_FUNCTION_21_4();
    if (v27)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = v28;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECE0);
    v32 = sub_237EF96B0();
    v15 = v83;
    if (v32)
    {
      sub_237D2FDB8(HIDWORD(v76));
      OUTLINED_FUNCTION_10_12();
      if (!v40)
      {
        goto LABEL_46;
      }

      v30 = v32;
    }

    if ((v31 & 1) == 0)
    {
      sub_237CF63F8(&v83);
      OUTLINED_FUNCTION_6_13(&v15[v30 >> 6]);
      *(v15[6] + 4 * v30) = HIDWORD(v76);
      *(v15[7] + 8 * v30) = v83;
      v41 = v15[2];
      v27 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v27)
      {
        goto LABEL_44;
      }

      v15[2] = v42;
    }

    v43 = v15[7];
    v44 = *(v43 + 8 * v30);
    v27 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v27)
    {
      goto LABEL_41;
    }

    *(v43 + 8 * v30) = v45;
    OUTLINED_FUNCTION_22_4(v32, v33, v34, v35, v36, v37, v38, v39, v67, v68, v69, v70, v71, v73);
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v14;
    sub_237D2FE00(v21 | (HIDWORD(v76) << 32));
    OUTLINED_FUNCTION_5_15();
    if (v27)
    {
LABEL_42:
      __break(1u);
      break;
    }

    v48 = v46;
    v49 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECE8);
    v50 = sub_237EF96B0();
    v14 = v83;
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECF0);
      v51 = sub_237D2FE00(v21 | (HIDWORD(v76) << 32));
      if ((v49 & 1) != (v52 & 1))
      {
        goto LABEL_46;
      }

      v48 = v51;
    }

    v8 = v75;
    v12 = v81;
    if ((v49 & 1) == 0)
    {
      sub_237CF63F8(&v83);
      OUTLINED_FUNCTION_6_13(&v14[v48 >> 6]);
      *(v14[6] + 8 * v48) = v76;
      *(v14[7] + 8 * v48) = v83;
      v53 = v14[2];
      v27 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v27)
      {
        goto LABEL_45;
      }

      v14[2] = v54;
    }

    v55 = v14[7];
    v56 = *(v55 + 8 * v48);
    v27 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (!v27)
    {
      *(v55 + 8 * v48) = v57;
      v11 = sub_237CF63F8;
      v10 = sub_237CF63F8;
      v13 = v71 + 1;
      v9 = v69;
      if (!__OFADD__(v71, 1))
      {
        continue;
      }

      __break(1u);
LABEL_37:

      v58 = sub_237C5EE40(v74);
      OUTLINED_FUNCTION_22_4(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v69, v70, v71, v73);
      OUTLINED_FUNCTION_15_8(v72);
      *(v66 + 32) = MEMORY[0x277D84F98];
      *(v66 + 40) = v14;
      return;
    }

    break;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_237EFA020();
  __break(1u);
}

uint64_t sub_237CB07EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, void **)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a1;
  v61 = *(a1 + 16);
  sub_237EF8260();
  sub_237EF8260();

  v58 = 0;
  v55 = 0;
  v56 = 0;
  v7 = 0;
  v59 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  while (2)
  {
    v8 = 16 * v7;
    v9 = a2;
    v10 = v6;
    while (1)
    {
      if (v61 == v7)
      {
        goto LABEL_30;
      }

      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v11 = *(a2 + 16);
      if (v7 == v11)
      {
        goto LABEL_30;
      }

      if (v7 >= v11)
      {
        goto LABEL_32;
      }

      v12 = a2;
      v13 = v6;
      v14 = *(v10 + v8 + 40);
      v15 = *(v9 + v8 + 32);
      v16 = *(v9 + v8 + 40);
      v67 = *(v10 + v8 + 32);
      v68 = v14;
      v69 = v15;
      v70 = v16;
      a3(&v63, &v67);
      v17 = v63;
      v18 = v64;
      v19 = v65;
      v20 = v66;
      if (sub_237E479BC(v63, v64, a4) & 1) != 0 && (sub_237E479BC(v19, v20, a4))
      {
        break;
      }

      v10 += 16;
      v9 += 16;
      ++v7;
      v6 = v13;
      a2 = v12;
    }

    sub_237C5EE40(v58);
    swift_isUniquelyReferenced_nonNull_native();
    v67 = v59;
    v21 = sub_237D2FE74(v19, v20);
    if (__OFADD__(v59[2], (v22 & 1) == 0))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED38);
    v25 = sub_237EF96B0();
    v26 = v67;
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECB0);
      v27 = sub_237D2FE74(v19, v20);
      if ((v24 & 1) != (v28 & 1))
      {
        goto LABEL_39;
      }

      if (v24)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v27 = v23;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    v29 = v27;
    sub_237CF63F8(&v67);
    v30 = v67;
    v26[(v29 >> 6) + 8] |= 1 << v29;
    v31 = v26[6] + 16 * v29;
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v26[7] + 8 * v29) = v30;
    v32 = v26[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_37;
    }

    v27 = v29;
    v26[2] = v34;
LABEL_18:
    v59 = v26;
    v35 = v26[7];
    v36 = *(v35 + 8 * v27);
    v33 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v33)
    {
      goto LABEL_34;
    }

    *(v35 + 8 * v27) = v37;
    sub_237C5EE40(v56);
    swift_isUniquelyReferenced_nonNull_native();
    v67 = v57;
    LOBYTE(v63) = v18;
    v38 = sub_237D2FEFC(v17, v18, v19, v20);
    if (__OFADD__(v57[2], (v39 & 1) == 0))
    {
LABEL_35:
      __break(1u);
      break;
    }

    v40 = v38;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED40);
    v42 = sub_237EF96B0();
    v43 = v67;
    if (v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED48);
      LOBYTE(v63) = v18;
      v44 = sub_237D2FEFC(v17, v18, v19, v20);
      if ((v41 & 1) != (v45 & 1))
      {
        goto LABEL_39;
      }

      v40 = v44;
    }

    if ((v41 & 1) == 0)
    {
      sub_237CF63F8(&v67);
      v46 = v67;
      v43[(v40 >> 6) + 8] |= 1 << v40;
      v47 = v43[6] + 32 * v40;
      *v47 = v17;
      *(v47 + 8) = v18;
      *(v47 + 16) = v19;
      *(v47 + 24) = v20;
      *(v43[7] + 8 * v40) = v46;
      v48 = v43[2];
      v33 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v33)
      {
        goto LABEL_38;
      }

      v43[2] = v49;
    }

    v50 = v43[7];
    v51 = *(v50 + 8 * v40);
    v33 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v33)
    {
      *(v50 + 8 * v40) = v52;
      ++v7;
      v56 = sub_237CF63F8;
      v57 = v43;
      v58 = sub_237CF63F8;
      v33 = __OFADD__(v55++, 1);
      v6 = v13;
      a2 = v12;
      if (!v33)
      {
        continue;
      }

      __break(1u);
LABEL_30:

      swift_bridgeObjectRelease_n();

      sub_237C5EE40(v58);
      result = sub_237C5EE40(v56);
      *a5 = v55;
      *(a5 + 8) = a4;
      *(a5 + 16) = 1;
      *(a5 + 24) = v59;
      *(a5 + 32) = MEMORY[0x277D84F98];
      *(a5 + 40) = v57;
      return result;
    }

    break;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_237EFA020();
  __break(1u);
  return result;
}