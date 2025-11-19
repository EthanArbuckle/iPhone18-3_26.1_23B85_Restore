void sub_237CC5530(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF168);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237F07A70;
  sub_237C75918(0, &qword_280C8CCF8);
  *(v5 + 32) = sub_237EF9030();
  *(v5 + 40) = sub_237EF9030();
  *(v5 + 48) = sub_237EF9030();
  v6 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v7 = sub_237CC7014(v5, 65568);
  v8 = v7;
  if (!v2)
  {
    sub_237CC544C(v7, 0.0);
    v9 = v8;
    v64 = sub_237EF9170();
    v66 = v3 + 64;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v65 = (v10 + 63) >> 6;
    v69 = v3;
    sub_237EF8260();
    v13 = 0;
    v68 = v9;
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v65)
          {
            goto LABEL_40;
          }

          v12 = *(v66 + 8 * v15);
          ++v13;
          if (v12)
          {
            v14 = v4;
            v13 = v15;
            goto LABEL_11;
          }
        }

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
LABEL_48:
        __break(1u);
        return;
      }

      v14 = v4;
LABEL_11:
      v16 = (v69[6] + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      v19 = v69[2];
      sub_237EF8260();
      if (!v19)
      {
        break;
      }

      v20 = sub_237D30F88(v17, v18);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v12 &= v12 - 1;
      v4 = v14;
      if (*(v14 + 16))
      {
        v22 = v69[7] + 40 * v20;
        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        v25 = *(v22 + 32);
        v26 = sub_237D30F88(v17, v18);
        v28 = v27;

        if (v28)
        {
          v29 = *(*(v14 + 56) + 8 * v26);
          v30 = [v68 strides];
          v31 = sub_237EF8910();

          sub_237C85538(2, (v31 & 0xC000000000000001) == 0, v31);
          if ((v31 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x2383E1490](2, v31);
          }

          else
          {
            v32 = *(v31 + 48);
          }

          v33 = v32;

          v34 = [v33 integerValue];

          v63 = v29 * v34;
          if ((v29 * v34) >> 64 != (v29 * v34) >> 63)
          {
            goto LABEL_43;
          }

          v35 = [v68 strides];
          v36 = sub_237EF8910();

          OUTLINED_FUNCTION_2_22();
          v67 = v29;
          if (v35)
          {
            v37 = MEMORY[0x2383E1490](1, v36);
          }

          else
          {
            v37 = *(v36 + 40);
          }

          v38 = v37;

          v39 = [v38 integerValue];

          v40 = [v68 strides];
          v41 = sub_237EF8910();

          OUTLINED_FUNCTION_3_21();
          if (v40)
          {
            v42 = MEMORY[0x2383E1490](2, v41);
          }

          else
          {
            v42 = *(v41 + 48);
          }

          v43 = v42;

          v44 = [v43 integerValue];

          v45 = v67 * v44;
          if ((v67 * v44) >> 64 != (v67 * v44) >> 63)
          {
            goto LABEL_44;
          }

          v62 = &v39[v45];
          if (__OFADD__(v39, v45))
          {
            goto LABEL_45;
          }

          v46 = [v68 strides];
          v47 = sub_237EF8910();

          OUTLINED_FUNCTION_2_22();
          if (v46)
          {
            v48 = MEMORY[0x2383E1490](1, v47);
          }

          else
          {
            v48 = *(v47 + 40);
          }

          v49 = v48;

          v50 = [v49 integerValue];

          if (v50 + 0x4000000000000000 < 0)
          {
            goto LABEL_46;
          }

          v51 = [v68 strides];
          v52 = sub_237EF8910();

          OUTLINED_FUNCTION_3_21();
          if (v51)
          {
            v53 = MEMORY[0x2383E1490](2, v52);
          }

          else
          {
            v53 = *(v52 + 48);
          }

          v54 = v53;

          v55 = [v54 integerValue];

          v56 = v67 * v55;
          if ((v67 * v55) >> 64 != (v67 * v55) >> 63)
          {
            goto LABEL_47;
          }

          v57 = __OFADD__(2 * v50, v56);
          v58 = 2 * v50 + v56;
          if (v57)
          {
            goto LABEL_48;
          }

          v59 = v24;
          *(v64 + 4 * v63) = v59;
          v60 = v23;
          *(v64 + 4 * v62) = v60;
          *(v64 + 4 * v58) = v25;
        }
      }

      else
      {
      }
    }

    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237EFCAD0);
    sub_237EF9670();

    sub_237C84150();
    swift_allocError();
    *v61 = 0;
    *(v61 + 8) = 0xE000000000000000;
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    swift_willThrow();

LABEL_40:
  }
}

id sub_237CC5B54(id a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF168);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237F07A70;
  *(v5 + 32) = v4;
  sub_237C75918(0, &qword_280C8CCF8);
  v6 = v4;
  *(v5 + 40) = sub_237EF9030();
  *(v5 + 48) = sub_237EF9030();
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = sub_237CC7014(v5, 65568);
  if (v2)
  {
  }

  else
  {
    v9 = v8;
    sub_237CC544C(v8, 0.0);
    sub_237C75918(0, &qword_27DEAF160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F07A80;
    *(inited + 32) = v9;
    v12 = v9;
    sub_237EF8260();
    sub_237E48384(inited);
    a1 = sub_237CC5D08(a1, 0, 65568);
  }

  return a1;
}

id sub_237CC5D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C75918(0, &qword_27DEAF160);
  v5 = sub_237EF8900();

  v6 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v5 alongAxis:a2 dataType:a3];

  return v6;
}

uint64_t *sub_237CC5DA4(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v10 = MEMORY[0x277D84F90];
    if (v4)
    {
      v18 = *v1;
      v12 = v1[2];
      v20 = MEMORY[0x277D84F90];
      sub_237EF94C0();
      v8 = (a1 + 48);
      v17 = v4;
      while (1)
      {
        v14 = *(v8 - 2);
        v13 = *(v8 - 1);
        v15 = *v8;
        v19[3] = v18;
        v19[4] = v3;
        v19[5] = v12;
        v19[0] = v14;
        v19[1] = v13;
        v19[2] = v15;
        sub_237EF8260();
        sub_237EF8260();
        sub_237CC5530(v19);
        if (v2)
        {
          break;
        }

        sub_237EF9450();
        sub_237EF94F0();
        sub_237EF9500();
        sub_237EF9480();
        v8 += 3;
        if (!--v4)
        {
          v10 = v20;
          v4 = v17;
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v3 <= v4)
      {
        sub_237C75918(0, &qword_27DEAF160);
        return sub_237CC5D08(v10, 0, 65568);
      }

      v8 = sub_237CC5B54(v10, v3 - v4);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_237F03530;
    *(v5 + 32) = v4;
    sub_237EF9330();

    v6 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v6);

    MEMORY[0x2383E0710](0x746F672074756220, 0xE900000000000020);
    v19[0] = v4;
    v7 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v7);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v8 = 0x8000000237EFCAA0;
    sub_237C84150();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = 0xD000000000000023;
    *(v9 + 16) = 0x8000000237EFCAA0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 6;
    swift_willThrow();
  }

  return v8;
}

CreateMLComponents::HumanBodyActionPeriodPredictor::Prediction __swiftcall HumanBodyActionPeriodPredictor.Prediction.init(period:periodicity:)(Swift::Float period, Swift::Float periodicity)
{
  *v2 = period;
  v2[1] = periodicity;
  result.periodicity = periodicity;
  result.period = period;
  return result;
}

uint64_t sub_237CC60FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369646F69726570 && a2 == 0xEB00000000797469)
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

uint64_t sub_237CC61C4(char a1)
{
  if (a1)
  {
    return 0x6369646F69726570;
  }

  else
  {
    return 0x646F69726570;
  }
}

uint64_t sub_237CC6208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CC60FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CC6230(uint64_t a1)
{
  v2 = sub_237CC6D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CC626C(uint64_t a1)
{
  v2 = sub_237CC6D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HumanBodyActionPeriodPredictor.Prediction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF118);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CC6D58();
  sub_237EFA1B0();
  v10[15] = 0;
  sub_237EF9A40();
  if (!v1)
  {
    v10[14] = 1;
    sub_237EF9A40();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t HumanBodyActionPeriodPredictor.Prediction.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF128);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CC6D58();
  sub_237EFA190();
  if (!v2)
  {
    v18 = 0;
    sub_237EF9940();
    v12 = v11;
    v17 = 1;
    sub_237EF9940();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HumanBodyActionPeriodPredictor.Prediction.hashValue.getter()
{
  sub_237EFA120();
  HumanBodyActionPeriodPredictor.Prediction.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237CC66AC()
{
  sub_237EFA120();
  HumanBodyActionPeriodPredictor.Prediction.hash(into:)();
  return sub_237EFA170();
}

id sub_237CC66F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_237EF8560();

  v2 = [v0 initWithModelName_];

  return v2;
}

id sub_237CC6768(uint64_t a1)
{
  v3 = v1;
  v32[11] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = 0x7365736F70;
  *(inited + 40) = 0xE500000000000000;
  v10 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158);
  *(inited + 48) = v10;
  sub_237EF8230();
  v11 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v12 = sub_237CCD044();
  if (!v2)
  {
    v14 = v12;
    v15 = [*(v3 + 112) model];
    v32[0] = 0;
    v16 = [v15 predictionFromFeatures:v14 error:v32];

    v11 = v32[0];
    if (v16)
    {
      v17 = v32[0];
      v18 = sub_237EF8560();
      v19 = [v16 featureValueForName_];

      if (v19 && (v11 = [v19 multiArrayValue], v19, v11))
      {
        v31 = v6;
        v20 = sub_237EF8560();
        v21 = [v16 featureValueForName_];

        if (v21 && (v22 = [v21 multiArrayValue], v21, v22))
        {
          v30 = v11;
          sub_237EF7EB0();
          sub_237C651A0();
          v29 = sub_237EF7F50();
          v31 = *(v31 + 8);
          (v31)(v8, v5);
          v23 = v22;
          sub_237EF7EB0();
          v24 = sub_237EF7F50();
          (v31)(v8, v5);
          v11 = sub_237CC4554(v29, v24);

          swift_unknownObjectRelease();
        }

        else
        {
          sub_237C84150();
          swift_allocError();
          *v27 = 0xD000000000000026;
          *(v27 + 8) = 0x8000000237EFCA40;
          *(v27 + 16) = 0xD00000000000002ALL;
          *(v27 + 24) = 0x8000000237EFCA70;
          *(v27 + 32) = 5;
          swift_willThrow();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v11 = 0x8000000237EFCA40;
        sub_237C84150();
        swift_allocError();
        *v25 = 0xD000000000000026;
        *(v25 + 8) = 0x8000000237EFCA40;
        *(v25 + 16) = 0xD00000000000002ALL;
        *(v25 + 24) = 0x8000000237EFCA70;
        *(v25 + 32) = 5;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v26 = v32[0];
      sub_237EF5DC0();

      swift_willThrow();
    }
  }

  return v11;
}

uint64_t sub_237CC6C6C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_237CC6CA4()
{
  swift_defaultActor_initialize();
  sub_237C75918(0, &qword_27DEAF170);
  sub_237EF8590();
  *(v0 + 112) = sub_237CC66F4();
  return v0;
}

unint64_t sub_237CC6D04()
{
  result = qword_27DEAF110;
  if (!qword_27DEAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF110);
  }

  return result;
}

unint64_t sub_237CC6D58()
{
  result = qword_27DEAF120;
  if (!qword_27DEAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF120);
  }

  return result;
}

unint64_t sub_237CC6DB0()
{
  result = qword_27DEAF130;
  if (!qword_27DEAF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HumanBodyActionPeriodPredictor.Prediction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237CC6F10()
{
  result = qword_27DEAF138;
  if (!qword_27DEAF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF138);
  }

  return result;
}

unint64_t sub_237CC6F68()
{
  result = qword_27DEAF140;
  if (!qword_27DEAF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF140);
  }

  return result;
}

unint64_t sub_237CC6FC0()
{
  result = qword_27DEAF148;
  if (!qword_27DEAF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF148);
  }

  return result;
}

id sub_237CC7014(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_237C75918(0, &qword_280C8CCF8);
  v4 = sub_237EF8900();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  return v5;
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_237C85538(1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_237C85538(2, (v0 & 0xC000000000000001) == 0, v0);
}

void (*DenseMatrix.subscript.read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  *a1 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  *(v8 + 8) = v9;
  v11 = *(v10 + 64);
  a1[2] = __swift_coroFrameAllocStub(v11);
  a1[3] = __swift_coroFrameAllocStub(v11);
  if (v4[2])
  {
    v12 = *v4;
    v13 = a3 * *v4;
    v14 = (a3 * v12) >> 64 != v13 >> 63;

    if (!v14)
    {
      result = (v13 + a2);
      if (!__OFADD__(v13, a2))
      {
        _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();

        return sub_237CC7334;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v4[1];
  v17 = a2 * v16;
  v18 = (a2 * v16) >> 64 != (a2 * v16) >> 63;

  if (v18)
  {
    goto LABEL_9;
  }

  result = (v17 + a3);
  if (!__OFADD__(v17, a3))
  {
    _s13LinearAlgebra11DenseVectorV10_uncheckedxSi_tcig_0();

    return sub_237CC72D8;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_237CC72D8(void *a1)
{
  v2 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  v3 = a1[2];
  free(v2);

  free(v3);
}

void sub_237CC7334(uint64_t a1)
{
  v2 = *(a1 + 16);
  (*(*(a1 + 8) + 8))(v2, *a1);
  free(*(a1 + 24));

  free(v2);
}

uint64_t DenseMatrix.leadingDimension.getter()
{
  v1 = 8;
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  return *(v0 + v1);
}

uint64_t DenseMatrix.storage.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

{

  *(v1 + 24) = a1;
  return result;
}

uint64_t DenseMatrix.scalars.getter()
{
}

{
}

uint64_t DenseMatrix.count.getter()
{
  v1 = v0[1];
  result = *v0 * v1;
  if ((*v0 * v1) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init(rowCount:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  result = sub_237EF9D20();
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    result = sub_237EF9560();
    *(a3 + 24) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init<A>(rowCount:columnCount:layout:scalars:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17 & 1;
  (*(v11 + 16))(v14 - v13, v18, v19);
  *(a5 + 24) = sub_237EF8A90();
  v20 = sub_237EF9510();
  result = (*(v11 + 8))(a3, a4);
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v20 != a1 * a2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:repeating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = v17 & 1;
  result = (*(v11 + 16))(v14 - v13, v18, v19);
  if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
  {
    v21 = sub_237EF9560();
    result = (*(v11 + 8))(a3, a4);
    *(a5 + 24) = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DenseMatrix.init(rowCount:columnCount:layout:initializingWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    MEMORY[0x28223BE20](result);
    result = sub_237CC78A4();
    if (!v4)
    {
      *a4 = a1;
      *(a4 + 8) = a2;
      *(a4 + 16) = a3 & 1;
      *(a4 + 24) = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237CC78A4()
{
  sub_237EF89C0();
  if (!v0)
  {
    sub_237EF8260();
    v1 = sub_237EF9390();

    if (!v1)
    {
      sub_237EF8A60();
      swift_getWitnessTable();
      v1 = sub_237EF9F90();
    }
  }

  return v1;
}

uint64_t DenseMatrix.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = DenseMatrix.subscript.read(v8, a1, a2, a3);
  OUTLINED_FUNCTION_22_3();
  (*(v6 + 16))(a4);
  return (v5)(v8, 0);
}

uint64_t sub_237CC79E4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a1 + 16);
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v14 = *a1;
  v15 = v6;
  v16 = v7;
  v10 = type metadata accessor for DenseMatrix();
  v11 = DenseMatrix.subscript.read(v13, v8, v9, v10);
  (*(*(v5 - 8) + 16))(a4);
  return (v11)(v13, 0);
}

uint64_t sub_237CC7AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *a3;
  v7 = a3[1];
  type metadata accessor for DenseMatrix();
  v8 = DenseMatrix.subscript.modify(v11, v6, v7);
  (*(*(v5 - 8) + 24))(v9, a1, v5);
  return (v8)(v11, 0);
}

void (*DenseMatrix.subscript.modify(void (**a1)(uint64_t a1), uint64_t a2, uint64_t a3))(uint64_t a1)
{
  result = __swift_coroFrameAllocStub(0x60uLL);
  v8 = result;
  *a1 = result;
  if (v3[2])
  {
    v9 = a3 * *v3;
    if ((a3 * *v3) >> 64 == v9 >> 63)
    {
      if (!__OFADD__(v9, a2))
      {
        *(result + 10) = DenseMatrix.storage.modify();
        sub_237EF9580();
        *(v8 + 11) = sub_237EF95B0();
        return sub_237CC7CFC;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v3[1];
  if ((a2 * v11) >> 64 != (a2 * v11) >> 63)
  {
    goto LABEL_10;
  }

  if (!__OFADD__(a2 * v11, a3))
  {
    *(result + 8) = DenseMatrix.storage.modify();
    sub_237EF9580();
    *(v8 + 9) = sub_237EF95B0();
    return sub_237CC7C9C;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_237CC7C9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_237CC7CFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  (*(*a1 + 88))();
  v2(v1, 0);

  free(v1);
}

uint64_t type metadata accessor for DenseMatrix()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t sub_237CC7D74(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  result = (*(v2 + 32))();
  if (!v3)
  {
    if ((v5 * v6) >> 64 == (v5 * v6) >> 63)
    {
      *a2 = v5 * v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t DenseMatrix.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DenseMatrix.subscript.modify(v11, a2, a3);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v9, a1, v7);
  (v6)(v11, 0);
  return (*(v8 + 8))(a1, v7);
}

{
  v6 = DenseMatrix.subscript.modify(v11, a2, a3);
  (*(*(*(a4 + 16) - 8) + 24))(v7, a1, *(a4 + 16));
  (v6)(v11, 0);
  v8 = OUTLINED_FUNCTION_11_19();
  return v9(v8);
}

uint64_t sub_237CC7EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v22 = a1;
  v23 = v7;
  MEMORY[0x28223BE20](a1);
  v21 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = 0;
    v20 = v23 + 40;
    v17 = a2;
    v18 = a3;
    while (1)
    {
      v19 = v13;
      if (a3)
      {
        break;
      }

LABEL_9:
      a3 = v18;
      v13 = v19 + 1;
      if (v19 + 1 == v17)
      {
        return result;
      }
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    while (1)
    {
      v14 = *v22;
      sub_237EF9FA0();
      v15 = v21;
      sub_237EF9CE0();
      result = (*(v23 + 40))(v14 + *(v23 + 72) * v12, v15, a4);
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++v12;
      --v13;
      if (!--a3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t static DenseMatrix.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v2 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_237EF9590();
  }
}

double sub_237CC819C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(double *__return_ptr, void *, uint64_t, void, uint64_t))
{
  if (a3)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  v11[0] = a4 + 32;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = v9;
  v12 = a3 & 1;
  a6(&v13, v11, *(a5 + 32) + 32, *(*(a5 + 32) + 16), 1);
  if (!v6)
  {
    v7 = v13;
  }

  sub_237CC99F4(a5);
  return v7;
}

uint64_t sub_237CC8230(uint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  v14[0] = a4 + 32;
  v14[1] = result;
  v14[2] = a2;
  v14[3] = v8;
  v15 = a3 & 1;
  v9 = a5[1];
  v10 = *(*a5 + 16);
  if (v9 == 2)
  {
    v11 = sub_237D4DE4C();
LABEL_9:
    v13 = v11;
    sub_237CC9A9C(a5);
    sub_237C5EE40(a6);
    return v13;
  }

  v12 = (v9 - 1);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else if (v9 != 1)
  {
    v16[0] = *a5 + 32;
    v16[1] = v9 - 1;
    v16[2] = v10 / v12;
    v16[3] = v10 / v12;
    v17 = 0;
    v11 = sub_237D4E5AC(v14, v16, v9);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_237CC8304(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *__src)
{
  v10[0] = a4 + 32;
  v10[1] = a1;
  if (a3)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  v10[2] = a2;
  v10[3] = v6;
  v11 = a3 & 1;
  memcpy(__dst, __src, sizeof(__dst));
  v7 = sub_237D4DA98(v10);
  sub_237CC9A9C(__src);
  return v7;
}

uint64_t sub_237CC8380(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a4 + 32;
  v12[1] = a1;
  if (a3)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  v12[2] = a2;
  v12[3] = v10;
  v13 = a3 & 1;
  sub_237ECDDA4(v12, &v14);
  if (!v6)
  {
    v7 = v14;
  }

  sub_237CC9A48(a5);
  sub_237C5EE40(a6);
  return v7;
}

uint64_t sub_237CC8430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20]();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), *(v15 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

uint64_t sub_237CC8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 16);
  v8 = *(v5 + 3);
  v9 = *(a4 + 24);
  v13 = *(a4 + 16);
  v14 = a5;
  v15 = v9;
  v16 = *v5;
  v17 = v7;
  v18 = v8;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC8430(sub_237CC99AC, &v12, v8, v13, a5, v10, MEMORY[0x277D84950], &v22);
}

uint64_t sub_237CC8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = sub_237EF8530();
  if (a5)
  {
    if (result)
    {
      if ((a7 * a3) >> 64 == (a7 * a3) >> 63)
      {
        a4 = 1;
        a7 *= a3;
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  v20 = UnsafeVectorPointer.init(start:count:stride:)(result + *(*(a10 - 8) + 72) * a7, a3, a4, a10);
  result = a8(v20);
  if (v13)
  {
    *a13 = v13;
  }

  return result;
}

void *sub_237CC86F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a4 + 16);
  sub_237EF9580();
  sub_237EF94D0();
  v12 = v5[3];
  v13 = *(v12 + 16);
  v14 = v12 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80));
  v17[0] = v14;
  v17[1] = v13;
  sub_237CC882C(v17, v6, a1, a2, a3, v11, a5, *(a4 + 24), &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  return sub_237CC94F0(v17, v14, v13);
}

uint64_t sub_237CC882C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = *(a2 + 16);
  result = sub_237EF9140();
  if (v14)
  {
    if (result)
    {
      v16 = *a2;
      v17 = a3 * *a2;
      if ((a3 * *a2) >> 64 == v17 >> 63)
      {
        v18 = result + *(*(a6 - 8) + 72) * v17;
        v19 = 1;
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  v18 = result + *(*(a6 - 8) + 72) * a3;
  v16 = *a2;
  v19 = a2[1];
LABEL_7:
  v20 = UnsafeMutableVectorPointer.init(start:count:stride:)(v18, v16, v19, a6);
  result = a4(v20);
  if (v9)
  {
    *a9 = v9;
  }

  return result;
}

uint64_t MatrixLayout.debugDescription.getter(char a1)
{
  if (a1)
  {
    return 0x6D2D6E6D756C6F63;
  }

  else
  {
    return 0x6F6A616D2D776F72;
  }
}

{
  if (a1)
  {
    return 0x6D2D6E6D756C6F63;
  }

  else
  {
    return 0x6F6A616D2D776F72;
  }
}

uint64_t sub_237CC896C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A614D776F72 && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D6E6D756C6F63 && a2 == 0xEB00000000726F6ALL)
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

uint64_t sub_237CC8A38(char a1)
{
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x726F6A614D776F72;
  }
}

uint64_t sub_237CC8A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CC896C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CC8AA8(uint64_t a1)
{
  v2 = sub_237CC8E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CC8AE4(uint64_t a1)
{
  v2 = sub_237CC8E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CC8B20(uint64_t a1)
{
  v2 = sub_237CC8EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CC8B5C(uint64_t a1)
{
  v2 = sub_237CC8EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CC8B98(uint64_t a1)
{
  v2 = sub_237CC8F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CC8BD4(uint64_t a1)
{
  v2 = sub_237CC8F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatrixLayout.encode(to:)(void *a1, int a2)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF178);
  OUTLINED_FUNCTION_1();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF180);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF188);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CC8E9C();
  sub_237EFA1B0();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_237CC8EF0();
    sub_237EF99C0();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_237CC8F44();
    sub_237EF99C0();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB71C8);
  OUTLINED_FUNCTION_1();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB71D0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB71D8);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EE8968();
  sub_237EFA1B0();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_237EE89BC();
    sub_237EF99C0();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_237EE8A10();
    sub_237EF99C0();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

unint64_t sub_237CC8E9C()
{
  result = qword_27DEAF190;
  if (!qword_27DEAF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF190);
  }

  return result;
}

unint64_t sub_237CC8EF0()
{
  result = qword_27DEAF198;
  if (!qword_27DEAF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF198);
  }

  return result;
}

unint64_t sub_237CC8F44()
{
  result = qword_27DEAF1A0;
  if (!qword_27DEAF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1A0);
  }

  return result;
}

uint64_t MatrixLayout.hash(into:)(uint64_t a1, char a2)
{
  return MEMORY[0x2383E2210](a2 & 1);
}

{
  return MEMORY[0x2383E2210](a2 & 1);
}

void MatrixLayout.init(from:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF1A8);
  OUTLINED_FUNCTION_1();
  v37 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF1B0);
  OUTLINED_FUNCTION_1();
  v36 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF1B8);
  OUTLINED_FUNCTION_1();
  v38 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CC8E9C();
  v16 = v40;
  sub_237EFA190();
  if (v16)
  {
    goto LABEL_8;
  }

  v34 = v6;
  v35 = v10;
  v40 = a1;
  v17 = v39;
  v18 = sub_237EF9980();
  sub_237CAD3B0(v18, 0);
  if (v20 == v21 >> 1)
  {
    goto LABEL_7;
  }

  v33 = 0;
  if (v20 >= (v21 >> 1))
  {
    __break(1u);
    return;
  }

  v22 = *(v19 + v20);
  sub_237CADB98(v20 + 1);
  v24 = v23;
  v26 = v25;
  swift_unknownObjectRelease();
  if (v24 != v26 >> 1)
  {
LABEL_7:
    sub_237EF93E0();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20);
    *v28 = &type metadata for MatrixLayout;
    sub_237EF98C0();
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v29 + 104))(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v15, v11);
    a1 = v40;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  if (v22)
  {
    LODWORD(v36) = v22;
    v42 = 1;
    sub_237CC8EF0();
    OUTLINED_FUNCTION_5_19();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v5, v17);
  }

  else
  {
    v41 = 0;
    sub_237CC8F44();
    v30 = v35;
    OUTLINED_FUNCTION_5_19();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v30, v34);
  }

  v31 = OUTLINED_FUNCTION_2_23();
  v32(v31);
  __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_237CC9458()
{
  v1 = *v0;
  sub_237EFA120();
  MatrixLayout.hash(into:)(v3, v1);
  return sub_237EFA170();
}

void sub_237CC949C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  MatrixLayout.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

void *sub_237CC94F0(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return sub_237EF9580();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237CC9528()
{
  result = qword_27DEAF1C0;
  if (!qword_27DEAF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1C0);
  }

  return result;
}

uint64_t sub_237CC957C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CC95B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_237CC95F8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

ValueMetadata *type metadata accessor for MatrixLayout()
{
  return &type metadata for MatrixLayout;
}

{
  return &type metadata for MatrixLayout;
}

_BYTE *sub_237CC9648(_BYTE *result, unsigned int a2, unsigned int a3)
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

ValueMetadata *type metadata accessor for MatrixLayout.CodingKeys()
{
  return &type metadata for MatrixLayout.CodingKeys;
}

{
  return &type metadata for MatrixLayout.CodingKeys;
}

ValueMetadata *type metadata accessor for MatrixLayout.RowMajorCodingKeys()
{
  return &type metadata for MatrixLayout.RowMajorCodingKeys;
}

{
  return &type metadata for MatrixLayout.RowMajorCodingKeys;
}

ValueMetadata *type metadata accessor for MatrixLayout.ColumnMajorCodingKeys()
{
  return &type metadata for MatrixLayout.ColumnMajorCodingKeys;
}

{
  return &type metadata for MatrixLayout.ColumnMajorCodingKeys;
}

unint64_t sub_237CC9748()
{
  result = qword_27DEAF1C8;
  if (!qword_27DEAF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1C8);
  }

  return result;
}

unint64_t sub_237CC97A0()
{
  result = qword_27DEAF1D0;
  if (!qword_27DEAF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1D0);
  }

  return result;
}

unint64_t sub_237CC97F8()
{
  result = qword_27DEAF1D8;
  if (!qword_27DEAF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1D8);
  }

  return result;
}

unint64_t sub_237CC9850()
{
  result = qword_27DEAF1E0;
  if (!qword_27DEAF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1E0);
  }

  return result;
}

unint64_t sub_237CC98A8()
{
  result = qword_27DEAF1E8;
  if (!qword_27DEAF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1E8);
  }

  return result;
}

unint64_t sub_237CC9900()
{
  result = qword_27DEAF1F0;
  if (!qword_27DEAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1F0);
  }

  return result;
}

unint64_t sub_237CC9958()
{
  result = qword_27DEAF1F8;
  if (!qword_27DEAF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF1F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_237EF98B0();
}

void sub_237CC9B38(uint64_t a1, uint64_t a2)
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

  v25 = MEMORY[0x277D84F90];
  sub_237C63670();
  v23 = a2;
  v24 = a1;
  if (!v6)
  {

    v10 = v4;
    v12 = v5;
    goto LABEL_13;
  }

  v7 = (a1 + 32);
  v8 = (a2 + 32);

  v9 = v6;
  v10 = v4;
  v11 = v5;
  v12 = v5;
  do
  {
    if (!v4)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v7;
    v14 = *v8;
    v15 = *(v25 + 16);
    if (v15 >= *(v25 + 24) >> 1)
    {
      v20 = v12;
      v21 = v10;
      sub_237C63670();
      v12 = v20;
      v10 = v21;
    }

    --v11;
    *(v25 + 16) = v15 + 1;
    *(v25 + 4 * v15 + 32) = (v13 - v14) * (v13 - v14);
    --v4;
    ++v8;
    ++v7;
    --v9;
  }

  while (v9);
LABEL_13:
  while (v10 != v6)
  {
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_25;
    }

    if (v12 == v6)
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_26;
    }

    v16 = *(v24 + 32 + 4 * v6);
    v17 = *(v23 + 32 + 4 * v6);
    v18 = *(v25 + 16);
    if (v18 >= *(v25 + 24) >> 1)
    {
      v22 = v10;
      v19 = v12;
      sub_237C63670();
      v12 = v19;
      v10 = v22;
    }

    *(v25 + 16) = v18 + 1;
    *(v25 + 4 * v18 + 32) = (v16 - v17) * (v16 - v17);
    ++v6;
  }
}

void sub_237CC9D50(uint64_t a1, uint64_t a2)
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

  v25 = MEMORY[0x277D84F90];
  sub_237C63670();
  v23 = a2;
  v24 = a1;
  if (!v6)
  {

    v10 = v4;
    v12 = v5;
    goto LABEL_13;
  }

  v7 = (a1 + 32);
  v8 = (a2 + 32);

  v9 = v6;
  v10 = v4;
  v11 = v5;
  v12 = v5;
  do
  {
    if (!v4)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v7;
    v14 = *v8;
    v15 = *(v25 + 16);
    if (v15 >= *(v25 + 24) >> 1)
    {
      v20 = v12;
      v21 = v10;
      sub_237C63670();
      v12 = v20;
      v10 = v21;
    }

    --v11;
    *(v25 + 16) = v15 + 1;
    *(v25 + 4 * v15 + 32) = vabds_f32(v13, v14);
    --v4;
    ++v8;
    ++v7;
    --v9;
  }

  while (v9);
LABEL_13:
  while (v10 != v6)
  {
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_25;
    }

    if (v12 == v6)
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_26;
    }

    v16 = *(v24 + 32 + 4 * v6);
    v17 = *(v23 + 32 + 4 * v6);
    v18 = *(v25 + 16);
    if (v18 >= *(v25 + 24) >> 1)
    {
      v22 = v10;
      v19 = v12;
      sub_237C63670();
      v12 = v19;
      v10 = v22;
    }

    *(v25 + 16) = v18 + 1;
    *(v25 + 4 * v18 + 32) = vabds_f32(v16, v17);
    ++v6;
  }
}

uint64_t sub_237CC9F60(double a1)
{
  if (a1 < 0.0)
  {
    sub_237EF8260();
    sub_237EF9330();

    sub_237EF8260();
    OUTLINED_FUNCTION_11_12();
    sub_237C84150();
    v1 = OUTLINED_FUNCTION_45_0();
    return OUTLINED_FUNCTION_6_17(v1, v2);
  }

  return result;
}

uint64_t sub_237CCA010(uint64_t result)
{
  if (result < 0)
  {
    sub_237EF8260();
    sub_237EF9330();

    sub_237EF8260();
    OUTLINED_FUNCTION_11_12();
    sub_237C84150();
    v1 = OUTLINED_FUNCTION_45_0();
    return OUTLINED_FUNCTION_6_17(v1, v2);
  }

  return result;
}

uint64_t BaseTreeRegressor.fitted(features:annotations:eventHandler:)@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v4;
    v32 = a3;
    v10 = *(v4 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 16);
    *&v26 = *a1;
    *(&v26 + 1) = v6;
    LOBYTE(v27) = v12;
    *&v28 = v11;
    type metadata accessor for XGBoostMatrix();
    OUTLINED_FUNCTION_36_1();

    result = sub_237D51C98(&v26);
    if (!v5)
    {
      OUTLINED_FUNCTION_4_21();
      sub_237D51BB8();
      type metadata accessor for XGBooster();
      swift_allocObject();

      v15 = sub_237E88668(v14, 0);
      v20 = v15;
      v26 = *v7;
      v27 = v10;
      v28 = *(v7 + 24);
      v29 = *(v7 + 40);
      v30 = *(v7 + 56);
      v31 = *(v7 + 72);
      sub_237CCA49C(v15, v6, 0);
      OUTLINED_FUNCTION_10_15();
      sub_237E87DE0();
      OUTLINED_FUNCTION_10_15();
      result = sub_237E87DE0();
      v21 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        for (i = 0; ; ++i)
        {
          if (v21 == i)
          {

            *a4 = v6;
            a4[1] = v20;
            a4[2] = v21;
            return result;
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          sub_237EF8B90();
          OUTLINED_FUNCTION_10_15();
          result = sub_237E87F70();
          if (a2)
          {
            if (i < 5 || 10 * (i / 0xA) == i)
            {

              sub_237C70604(a2);
              OUTLINED_FUNCTION_10_15();
              v24 = sub_237E87BCC();

              v25 = sub_237C908A4(v24);

              *&v26 = 0xD000000000000014;
              *(&v26 + 1) = 0x8000000237EFCAF0;
              v27 = i + 1;
              *&v28 = v10;
              BYTE8(v28) = 0;
              *&v29 = v25;
              a2(&v26);
              sub_237C5EE40(a2);
            }
          }

          v21 = v10;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_237C84150();
    v16 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_1_18(v16, v17);
    *(v19 + 16) = v18 + 80;
    *(v19 + 24) = 0x8000000237EFCB10;
    return OUTLINED_FUNCTION_8_17(v19, 4);
  }

  return result;
}

id sub_237CCA49C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  v9 = *(v3 + 56);
  v11 = *(v3 + 64);
  v10 = *(v3 + 72);
  v12 = *(v3 + 80);
  if ((a3 & 1) == 0)
  {
    sub_237EF9AB0();
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_5_20();
    if (v4)
    {
    }
  }

  result = OUTLINED_FUNCTION_5_20();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_20();
    sub_237CC9F60(v8);
    OUTLINED_FUNCTION_2_24();
    sub_237EF8C10();
    OUTLINED_FUNCTION_5_20();

    if ((v9 & 1) == 0)
    {
      sub_237EF9AB0();
      OUTLINED_FUNCTION_5_20();
    }

    sub_237EF9AB0();
    OUTLINED_FUNCTION_5_20();

    sub_237CC9F60(v7);
    OUTLINED_FUNCTION_2_24();
    sub_237EF8C10();
    OUTLINED_FUNCTION_5_20();

    sub_237CCA010(v6);
    v21 = v6;
    sub_237EF9AB0();
    OUTLINED_FUNCTION_5_20();

    if (v11 <= 0.0 || v11 > 1.0)
    {
      OUTLINED_FUNCTION_2_24();
      sub_237EF9330();
      v15 = 0x7362757320776F52;
      v16 = 0xED0000656C706D61;
    }

    else
    {
      OUTLINED_FUNCTION_2_24();
      sub_237EF8C10();
      OUTLINED_FUNCTION_5_20();

      if (v10 > 0.0 && v10 <= 1.0)
      {
        OUTLINED_FUNCTION_2_24();
        sub_237EF8C10();
        OUTLINED_FUNCTION_5_20();

        sub_237CCA010(v12);
        v21 = v12;
        sub_237EF9AB0();
        OUTLINED_FUNCTION_5_20();

        if (v5 >= 0.0 && v5 <= 1.0)
        {
          OUTLINED_FUNCTION_2_24();
          sub_237EF8C10();
          OUTLINED_FUNCTION_5_20();
        }

        OUTLINED_FUNCTION_2_24();
        sub_237EF9330();
        MEMORY[0x2383E0710](0x676E696E7261654CLL, 0xED00006574617220);
        v17 = " should be in the range [";
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_2_24();
      sub_237EF9330();
      v16 = 0x8000000237EFBE10;
      v15 = 0xD000000000000010;
    }

    MEMORY[0x2383E0710](v15, v16);
    v17 = " should be in the range (";
LABEL_17:
    MEMORY[0x2383E0710](0xD000000000000019, (v17 - 32) | 0x8000000000000000);
    sub_237EF8C10();
    MEMORY[0x2383E0710](8236, 0xE200000000000000);
    sub_237EF8C10();
    MEMORY[0x2383E0710](11869, 0xE200000000000000);
    sub_237C84150();
    OUTLINED_FUNCTION_45_0();
    *v18 = 0xD00000000000001BLL;
    v18[1] = 0x8000000237EFCC60;
    v18[2] = v21;
    v18[3] = v22;
    return OUTLINED_FUNCTION_8_17(v18, 5);
  }

  return result;
}

uint64_t BaseTreeRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(__int128 *)@<X4>, uint64_t *a4@<X8>)
{
  v6 = a1[1];
  if (!v6)
  {
    v15 = 0x8000000237EFCB10;
    sub_237C84150();
    v16 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_1_18(v16, v17);
    v20 = v19 + 80;
LABEL_7:
    *(v18 + 16) = v20;
    *(v18 + 24) = v15;
    return OUTLINED_FUNCTION_8_17(v18, 4);
  }

  v7 = *(a2 + 8);
  if (!v7)
  {
    v15 = 0x8000000237EFCB80;
    sub_237C84150();
    v21 = OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_1_18(v21, v22);
    v20 = v23 + 90;
    goto LABEL_7;
  }

  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = a1[3];
  v41 = *a2;
  v33 = *(a2 + 16);
  v34 = *(a2 + 24);
  *&v35 = v8;
  v11 = *(v4 + 2);
  *(&v35 + 1) = v6;
  LOBYTE(v36) = v9;
  *&v37 = v10;
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51C98(&v35);
  if (!v5)
  {
    v13 = v41;
    v30 = v11;
    v14 = result;
    sub_237D51BB8();
    *&v35 = v13;
    *(&v35 + 1) = v7;
    LOBYTE(v36) = v33;
    *&v37 = v34;
    OUTLINED_FUNCTION_36_1();

    v24 = sub_237D51C98(&v35);
    sub_237D51BB8();
    type metadata accessor for XGBooster();
    swift_allocObject();

    v25 = sub_237E88668(v14, v24);
    v26 = v25;
    v35 = *v4;
    v36 = v30;
    v37 = *(v4 + 24);
    v38 = *(v4 + 40);
    v39 = *(v4 + 56);
    v40 = *(v4 + 72);
    sub_237CCA49C(v25, v6, 0);
    OUTLINED_FUNCTION_4_21();
    sub_237E87DE0();
    OUTLINED_FUNCTION_4_21();
    result = sub_237E87DE0();
    if ((v30 & 0x8000000000000000) == 0)
    {

      for (i = 0; ; ++i)
      {
        if (v30 == i)
        {

          *a4 = v6;
          a4[1] = v26;
          a4[2] = v30;
          return result;
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_237EF8B90();
        OUTLINED_FUNCTION_4_21();
        result = sub_237E87F70();
        if (a3)
        {
          if (i < 5 || 10 * (i / 0xA) == i)
          {

            sub_237C70604(a3);
            v29 = sub_237E87BCC();

            v41 = sub_237C908A4(v29);

            *&v35 = 0xD000000000000014;
            *(&v35 + 1) = 0x8000000237EFCAF0;
            v36 = i + 1;
            *&v37 = v30;
            BYTE8(v37) = 0;
            *&v38 = v41;
            a3(&v35);
            sub_237C5EE40(a3);
          }
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id BaseTreeRegressor.makeTransformer()@<X0>(void *a1@<X8>)
{
  type metadata accessor for XGBooster();
  swift_allocObject();
  v2 = sub_237E88668(0, 0);
  result = sub_237CCA49C(v2, 0, 1);
  a1[1] = v2;
  a1[2] = 0;
  *a1 = 0;
  return result;
}

uint64_t BaseTreeRegressor.update(_:features:annotations:eventHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = v5;
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v27 = *(v4 + 16);
  if (sub_237E87EDC())
  {
    if (v8 != *a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
      result = OUTLINED_FUNCTION_36_1();
      *(result + 16) = xmmword_237F04760;
      *(result + 32) = v9;
      if ((v9 * v8) >> 64 == (v9 * v8) >> 63)
      {
        v13 = result;
        *(result + 40) = v9 * v8;
        sub_237EF9330();

        sub_237E87EDC();
        v14 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v14);

        MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
        v36 = v8;
        v15 = sub_237EF9AB0();
        MEMORY[0x2383E0710](v15);

        sub_237C84150();
        OUTLINED_FUNCTION_45_0();
        *v16 = v13;
        v16[1] = 0x6465746365707845;
        v16[2] = 0xE900000000000020;
        v16[3] = 0;
        return OUTLINED_FUNCTION_8_17(v16, 6);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    *a1 = v8;
    v30 = v8;
    sub_237EF9AB0();
    OUTLINED_FUNCTION_3_22();
    OUTLINED_FUNCTION_4_21();
    sub_237E87DE0();
    v6 = v5;
    if (v5)
    {
    }
  }

  v30 = v9;
  v31 = v8;
  LOBYTE(v32) = v10;
  v33 = v11;
  type metadata accessor for XGBoostMatrix();
  OUTLINED_FUNCTION_36_1();

  result = sub_237D51C98(&v30);
  if (!v6)
  {
    sub_237D51BB8();
    sub_237EF8B90();
    OUTLINED_FUNCTION_4_21();
    result = sub_237E87F70();
    v17 = a1[2];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    a1[2] = v18;
    if (a4)
    {
      v19 = a1[1];
      v36 = *a1;
      v37 = v19;
      v38 = v17 + 1;
      v30 = v9;
      v31 = v8;
      LOBYTE(v32) = v10;
      v33 = v11;
      sub_237C70604(a4);

      v20 = BaseTreeRegressorModel.applied(features:eventHandler:)(&v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
      v21 = v18;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237F04760;
      strcpy((inited + 32), "training_error");
      *(inited + 47) = -18;
      sub_237CCB5E8(v20, a3);
      *(inited + 48) = sqrtf(v23);
      *(inited + 56) = 0xD000000000000012;
      *(inited + 64) = 0x8000000237EFCC20;
      v24 = sub_237CCB574(v20, a3);

      *(inited + 72) = v24;
      sub_237C758C4();
      v25 = sub_237EF8230();
      v26 = sub_237C908A4(v25);

      v30 = 0xD000000000000014;
      v31 = 0x8000000237EFCAF0;
      v32 = v21;
      v33 = v27;
      v34 = 0;
      v35 = v26;
      a4(&v30);
      sub_237C5EE40(a4);
    }
  }

  return result;
}

float sub_237CCB574(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return NAN;
  }

  sub_237CC9D50(a1, a2);
  v3 = sub_237CB8628(v2);

  result = NAN;
  if ((v3 & 0x100000000) == 0)
  {
    return *&v3;
  }

  return result;
}

uint64_t sub_237CCB5E8(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    sub_237CC9B38(result, a2);
    if (*(v2 + 16))
    {
      sub_237E960F0(v2);
    }
  }

  return result;
}

id OUTLINED_FUNCTION_5_20()
{

  return sub_237E87DE0();
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_8_17@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 32) = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_11_12()
{

  JUMPOUT(0x2383E0710);
}

void MLModelTransformerAdaptor.init(contentsOf:configuration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v20 = a3;
  v8 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_237C75918(0, &qword_27DEAF200);
  (*(v10 + 16))(v14, a1, v8);
  v15 = a2;
  v16 = sub_237CCB8EC(v14, v15);
  if (v4)
  {
    (*(v10 + 8))(a1, v8);
  }

  else
  {
    MLModelTransformerAdaptor.init(model:)(v16, &v18);
    (*(v10 + 8))(a1, v8);

    v17 = v19;
    *a4 = v18;
    *(a4 + 16) = v17;
  }
}

id sub_237CCB8EC(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237EF5E50();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_237EF5EF0();
    OUTLINED_FUNCTION_4();
    v9 = *(v8 + 8);
    v10 = v6;
    v9(a1, v7);
  }

  else
  {
    v11 = v14[0];
    sub_237EF5DC0();

    swift_willThrow();
    sub_237EF5EF0();
    OUTLINED_FUNCTION_4();
    (*(v12 + 8))(a1);
  }

  return v5;
}

void MLModelTransformerAdaptor.init(model:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  OUTLINED_FUNCTION_10_16();
  sub_237CCBB38(v5, v6, v7, v8, v9, 3, 0);
  if (v2)
  {
  }

  else
  {
    OUTLINED_FUNCTION_10_16();
    sub_237CCBB38(v10, v11, v12, v13, v14, 4, 2);
    v18 = sub_237CCBBB8(v4, v15, v16, v17, &selRef_inputDescriptionsByName, 3);
    v22 = sub_237CCBBB8(v4, v19, v20, v21, &selRef_outputDescriptionsByName, 4);

    *a2 = v4;
    a2[1] = v18;
    a2[2] = v22;
  }
}

void sub_237CCBB38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, char a6, char a7)
{
  sub_237CCC3B4(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    v15 = sub_237CCBBB8(a1, v12, v13, v14, a5, a6);
    sub_237CCC498(v15, v16, v17, v18, a7);
  }
}

uint64_t sub_237CCBBB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, char a6)
{
  v8 = [a1 modelDescription];
  v9 = [v8 *a5];

  sub_237C75918(0, qword_27DEAF298);
  v10 = sub_237EF8210();

  sub_237CA35B4(v10);
  v12 = v11;
  v14 = v13;

  if (v12)
  {
  }

  else
  {
    sub_237CCD12C();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v15 = xmmword_237F08210;
    *(v15 + 16) = a6;
    swift_willThrow();
  }

  return v14;
}

uint64_t MLModelTransformerAdaptor.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = *(v4 + 16);
  *(v1 + 120) = *(v4 + 24);
  v5 = sub_237EF7E90();
  *(v1 + 128) = v5;
  *(v1 + 136) = *(v5 - 8);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = *v0;
  *(v1 + 168) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_237CCBD9C, 0, 0);
}

uint64_t sub_237CCBD9C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v7 = [v1 name];
  v8 = sub_237EF8590();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_237C75918(0, &qword_27DEAF160);
  (*(v3 + 16))(v2, v5, v4);
  swift_getWitnessTable();
  v11 = sub_237EF8F40();
  v12 = [objc_opt_self() featureValueWithMultiArray_];

  *(inited + 72) = sub_237C75918(0, &qword_27DEAF158);
  *(inited + 48) = v12;
  sub_237EF8230();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  OUTLINED_FUNCTION_9_11();
  v14 = sub_237CCD044();
  v0[22] = v14;
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v17 = v15;
  v18 = [v16 init];
  v0[23] = v18;
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_237CCC044;

  return MEMORY[0x282111978](v17, v18);
}

uint64_t sub_237CCC044()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  *(v2 + 200) = v3;
  *(v2 + 208) = v0;

  if (v0)
  {
    v4 = sub_237CCC348;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_237CCC160;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237CCC160()
{
  v1 = [*(v0 + 168) name];
  if (!v1)
  {
    sub_237EF8590();
    v1 = sub_237EF8560();
  }

  v2 = [*(v0 + 200) featureValueForName_];

  if (v2)
  {
    v3 = [v2 multiArrayValue];
    v4 = *(v0 + 176);
    if (v3)
    {
      sub_237EF7EB0();

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_3_0();
      goto LABEL_9;
    }

    v11 = [v2 type];
    sub_237CCD12C();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v12 = 5;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 176);
    v6 = [*(v0 + 168) name];
    v7 = sub_237EF8590();
    v9 = v8;

    sub_237CCD12C();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    *(v10 + 16) = 6;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_0();
LABEL_9:

  return v5();
}

uint64_t sub_237CCC348()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 176);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237CCC3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, char a6)
{
  v8 = [a1 modelDescription];
  v9 = [v8 *a5];

  sub_237C75918(0, qword_27DEAF298);
  v10 = sub_237EF8210();

  v11 = *(v10 + 16);

  if (v11 != 1)
  {
    sub_237CCD12C();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = v11;
    *(v13 + 16) = a6;
    return swift_willThrow();
  }

  return result;
}

id sub_237CCC498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = [a1 type];
  if (result != 5)
  {
    v8 = [a1 type];
    sub_237CCD12C();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v9 = 5;
    *(v9 + 8) = v8;
    *(v9 + 16) = a5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237CCC520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return MLModelTransformerAdaptor.applied(to:eventHandler:)();
}

void sub_237CCC5D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  if ([a1 type] != 5)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_3_23();
    v15 = swift_allocError();
    OUTLINED_FUNCTION_11_13(v15, v16);
    OUTLINED_FUNCTION_1_19();
LABEL_7:
    *v17 = v19;
    v17[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v7 = [a1 multiArrayConstraint];
  if (!v7)
  {
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_3_23();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_11_13(v20, v21);
    OUTLINED_FUNCTION_1_19();
    v19 = v22 + 2;
    goto LABEL_7;
  }

  v8 = v7;
  sub_237E5E63C(v8, v6);
  v9 = sub_237EF6E30();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_237CCD1D4(v6, &qword_27DEAF290);
    type metadata accessor for SerializationError();
    sub_237CA2D6C();
    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_3_23();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_11_13(v10, v11);
    OUTLINED_FUNCTION_1_19();
    *v13 = v12 + 11;
    v13[1] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    (*(*(v9 - 8) + 32))(a2, v6, v9);
    v23 = *MEMORY[0x277D250A0];
    sub_237EF6E60();
    OUTLINED_FUNCTION_4();
    (*(v24 + 104))(a2, v23);
  }
}

uint64_t sub_237CCC81C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v70 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v69 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v5 - v4);
  v6 = sub_237EF6E60();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_26();
  v73 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_2(&v67 - v10);
  v78 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  *&v77 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v14 - v13);
  v15 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v67 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  v87 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v83 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v71 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v67 - v33;
  v35 = *v1;
  v75 = *(v1 + 8);
  v72 = *(v1 + 16);
  sub_237EF7720();
  sub_237EF7620();
  v36 = [v35 modelDescription];
  v37 = [v36 modelURL];

  sub_237EF5EB0();
  sub_237EF5E40();
  v82 = v27;
  sub_237EF5DE0();
  sub_237EF5E90();
  v38 = *(v17 + 8);
  v81 = v38;
  v38(v21, v15);
  sub_237EF5EC0();
  v84 = v17 + 8;
  v85 = v15;
  v38(v25, v15);
  v39 = v76;
  sub_237EF7270();
  (*(v77 + 104))(v39, *MEMORY[0x277D253B0], v78);
  v86 = v34;
  sub_237EF7660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
  v40 = *(sub_237EF70E0() - 8);
  v78 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v41 = swift_allocObject();
  v77 = xmmword_237F03530;
  *(v41 + 16) = xmmword_237F03530;
  v42 = v75;
  v43 = [v75 name];
  sub_237EF8590();

  v44 = v80;
  sub_237CCC5D0(v42, v79);
  if (v44)
  {
    v45 = v86;
    v49 = v81;

    v49(v82, v85);
    (*(v83 + 8))(v45, v87);
    *(v41 + 16) = 0;
  }

  else
  {
    sub_237EF7090();
    v46 = v86;
    sub_237EF76B0();
    *(swift_allocObject() + 16) = v77;
    v47 = v72;
    v48 = [v72 name];
    sub_237EF8590();

    sub_237CCC5D0(v47, v73);
    sub_237EF7090();
    sub_237EF7700();
    v51 = v83;
    v52 = *(v83 + 16);
    v53 = v71;
    v54 = v87;
    v52(v71, v46, v87);
    sub_237EF7810();
    v55 = type metadata accessor for CoreMLPackage();
    v56 = v68;
    v57 = v68 + *(v55 + 24);
    *(v57 + 80) = 0;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0u;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *v57 = 0u;
    v52(v56, v53, v54);
    memcpy(__dst, v57, sizeof(__dst));
    sub_237CCD1D4(__dst, &unk_27DEAD7B0);
    *v57 = 0u;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0u;
    *(v57 + 80) = 0;
    v58 = v69;
    v59 = v70;
    (*(v69 + 16))(v56 + *(v55 + 20), v74, v70);
    v60 = sub_237E34060();
    v62 = v61;
    v80 = sub_237EF7780();
    v64 = v63;
    swift_isUniquelyReferenced_nonNull_native();
    v90 = *v64;
    sub_237C91098(v60, v62, 0xD00000000000001ALL, 0x8000000237EFB6D0);
    *v64 = v90;
    v80(v88, 0);
    (*(v58 + 8))(v74, v59);
    v65 = *(v51 + 8);
    v66 = v87;
    v65(v71, v87);
    v81(v82, v85);
    return (v65)(v86, v66);
  }
}

id sub_237CCD044()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_237EF8200();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_237CCD12C()
{
  result = qword_27DEAF208[0];
  if (!qword_27DEAF208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAF208);
  }

  return result;
}

uint64_t sub_237CCD180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CCD1D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_13(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v2);
  return v2;
}

uint64_t PreprocessedFeatureSequence.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a2;
  v8 = type metadata accessor for TemporalFeature();
  v5[7] = v8;
  v5[8] = *(v8 - 8);
  v5[9] = OUTLINED_FUNCTION_27_0();
  v5[10] = *(a5 + 8);
  v9 = OUTLINED_FUNCTION_3_24();
  v5[11] = v9;
  v5[12] = *(v9 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_237EF90F0();
  v5[15] = OUTLINED_FUNCTION_27_0();
  v5[16] = *(a4 - 8);
  v5[17] = OUTLINED_FUNCTION_27_0();
  v10 = OUTLINED_FUNCTION_3_24();
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237CCD49C, 0, 0);
}

uint64_t sub_237CCD49C()
{
  v1 = v0[6];
  v2 = v0[5];
  v0[2] = sub_237EF89A0();
  (*(v1 + 24))(v2, v1);
  if ((v3 & 1) == 0)
  {
    sub_237EF8A60();
    sub_237EF8970();
  }

  (*(v0[16] + 16))(v0[17], v0[4], v0[5]);
  sub_237EF8BC0();
  v0[21] = swift_getAssociatedConformanceWitness();
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_17(v4);

  return MEMORY[0x282200310](v5);
}

uint64_t sub_237CCD5D8()
{

  if (v0)
  {

    v1 = sub_237CCD8B4;
  }

  else
  {
    v1 = sub_237CCD6F0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_237CCD6F0()
{
  v1 = v0[15];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[18];
    v6 = v0[3];
    (*(v0[16] + 8))(v0[4], v0[5]);
    (*(v4 + 8))(v3, v5);
    *v6 = v0[2];

    OUTLINED_FUNCTION_45();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[8] + 32))(v0[9], v1, v2);
  sub_237EF8A60();
  sub_237EF8A20();
  v0[21] = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_45();

  return MEMORY[0x282200310]();
}

void sub_237CCD8B4()
{
  v1 = v0 + 13;
  v2 = v0 + 12;
  v3 = v0 + 11;
  v4 = *(v0[12] + 32);
  v4(v0[13], v0[14], v0[11]);
  swift_getAssociatedConformanceWitness();
  if (sub_237EF9CD0())
  {
    (*(v0[16] + 8))(v0[4], v0[5]);
  }

  else
  {
    v5 = v0[13];
    v6 = v0[11];
    swift_allocError();
    v4(v7, v5, v6);
    v2 = v0 + 16;
    v3 = v0 + 5;
    v1 = v0 + 4;
  }

  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  (*(*v2 + 8))(*v1, *v3);
  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_45();

  __asm { BRAA            X1, X16 }
}

uint64_t PreprocessedFeatureSequence.features.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PreprocessedFeatureSequence.count.getter()
{
  type metadata accessor for TemporalFeature();
  sub_237EF8260();
  v0 = sub_237EF8A00();

  return v0;
}

uint64_t PreprocessedFeatureSequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
  return sub_237EF8260();
}

uint64_t sub_237CCDB3C@<X0>(void *a1@<X8>)
{
  PreprocessedFeatureSequence.makeAsyncIterator()(a1);
}

uint64_t PreprocessedFeatureSequence.AsyncIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = type metadata accessor for TemporalFeature();
  sub_237EF8260();
  v5 = sub_237EF8A00();

  if (v3 >= v5)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }

  else
  {
    sub_237EF8260();
    sub_237EF8AC0();

    result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
    v7 = *(v1 + 8);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 8) = v9;
    }
  }

  return result;
}

uint64_t sub_237CCDC88(uint64_t a1)
{
  PreprocessedFeatureSequence.AsyncIterator.next()(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_237CCDCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_237CCDDBC;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237CCDDBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237CCDEB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237CCDF1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CCDF58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_237CCDF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237CCDFEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237CCE028(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237CCE068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t AnnotatedFeature.init(feature:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AnnotatedFeature();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a4);
}

uint64_t sub_237CCE2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_237CCE3B4(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x65727574616566;
  }
}

uint64_t sub_237CCE400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CCE2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CCE430(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237CCE484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AnnotatedFeature<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[4] = a3;
  v14[2] = a4;
  v5 = *(a2 + 24);
  v14[0] = a2;
  v14[1] = v5;
  type metadata accessor for AnnotatedFeature.CodingKeys();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v16 = 0;
  v12 = v14[5];
  sub_237EF9A70();
  if (!v12)
  {
    v15 = 1;
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t AnnotatedFeature<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a5;
  v42 = a4;
  v36 = a6;
  OUTLINED_FUNCTION_1_1();
  v35 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v37 = v11;
  OUTLINED_FUNCTION_1_1();
  v40 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v43 = v14;
  type metadata accessor for AnnotatedFeature.CodingKeys();
  OUTLINED_FUNCTION_1_21();
  swift_getWitnessTable();
  v44 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v39 = v15;
  MEMORY[0x28223BE20](v16);
  v41 = a2;
  v17 = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_1_1();
  v34 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v45;
  sub_237EFA190();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v21;
  v45 = v17;
  v24 = v40;
  v47 = 0;
  v25 = v41;
  sub_237EF9970();
  v26 = *(v24 + 32);
  v42 = v23;
  v26(v23, v43, v25);
  v46 = 1;
  v27 = v37;
  sub_237EF9970();
  v28 = OUTLINED_FUNCTION_4_22();
  v29(v28);
  v30 = v45;
  v31 = v42;
  (*(v35 + 32))(&v42[*(v45 + 36)], v27, a3);
  v32 = v34;
  (*(v34 + 16))(v36, v31, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v32 + 8))(v31, v30);
}

uint64_t static AnnotatedFeature<>.== infix(_:_:)()
{
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnnotatedFeature();
  return sub_237EF8520() & 1;
}

uint64_t AnnotatedFeature<>.hashValue.getter()
{
  sub_237EFA120();
  AnnotatedFeature<>.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237CCEBEC()
{
  sub_237EFA120();
  AnnotatedFeature<>.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237CCEC90()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237CCED1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237CCEEE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

_BYTE *sub_237CCF170(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ModelUpdateError.errorDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t ModelUpdateError.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t static ModelUpdateError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_237EF9D40();
  }
}

unint64_t DataFrameTemporalAnnotationParameters.FilePathType.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000013;
  v5 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);
  v17 = OUTLINED_FUNCTION_15_11();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    (*(v7 + 32))(v11, v15, v5);
    sub_237EF9330();

    sub_237CCF59C();
    v19 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v19);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v4 = 0xD000000000000021;
    (*(v7 + 8))(v11, v5);
  }

  return v4;
}

unint64_t sub_237CCF59C()
{
  result = qword_280C8E568;
  if (!qword_280C8E568)
  {
    sub_237EF5EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E568);
  }

  return result;
}

uint64_t static DataFrameTemporalAnnotationParameters.FilePathType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v30 = v4;
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v21 = *(v18 + 48);
  v29 = v10;
  v22 = *(v10 + 16);
  v22(&v29 - v19, a1, v8);
  v22(&v20[v21], v32, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);
  OUTLINED_FUNCTION_21_7(v20);
  if (v24)
  {
    v23 = 1;
    OUTLINED_FUNCTION_21_7(&v20[v21]);
    if (v24)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22(v13, v20, v8);
    OUTLINED_FUNCTION_21_7(&v20[v21]);
    if (!v24)
    {
      v26 = v30;
      v25 = v31;
      (*(v30 + 32))(v7, &v20[v21], v31);
      v23 = sub_237EF5EA0();
      v27 = *(v26 + 8);
      v27(v7, v25);
      v27(v13, v25);
LABEL_10:
      v16 = v29;
      goto LABEL_11;
    }

    (*(v30 + 8))(v13, v31);
  }

  v23 = 0;
  v8 = TupleTypeMetadata2;
LABEL_11:
  (*(v16 + 8))(v20, v8);
  return v23 & 1;
}

uint64_t DataFrameTemporalAnnotationParameters.filePathType.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DataFrameTemporalAnnotationParameters.filePathType.setter(uint64_t a1)
{
  type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_15_11();

  return v3(v2, a1);
}

uint64_t DataFrameTemporalAnnotationParameters.filePathColumnID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t DataFrameTemporalAnnotationParameters.filePathColumnID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t DataFrameTemporalAnnotationParameters.annotationColumnID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t DataFrameTemporalAnnotationParameters.annotationColumnID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_237CCFBE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DataFrameTemporalAnnotationParameters.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  type metadata accessor for DataFrameTemporalAnnotationParameters();
  sub_237EF62D0();
  sub_237EF62D0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF438);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_37_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
}

void DataFrame.loadRangedAnnotations<A>(parameters:continueOnFailure:)(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v160 = a2;
  v132 = sub_237EF7DB0();
  OUTLINED_FUNCTION_1();
  v133 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v11 - v10);
  type metadata accessor for TemporalFileSegment();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v14 - v13);
  v150 = v15;
  v151 = type metadata accessor for AnnotatedFeature();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2(v129 - v17);
  v148 = type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  OUTLINED_FUNCTION_1();
  v139 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_2(v129 - v20);
  v146 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v138 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v24);
  v159 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v134 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_1();
  v156 = v28;
  v135 = *(a3 - 8);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  v155 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF430);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_2_2();
  v154 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  v143 = v35;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF438);
  OUTLINED_FUNCTION_1();
  v152 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_1();
  v136 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF440);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v157 = v129 - v44;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_1();
  v158 = v46;
  v47 = sub_237EF6290();
  OUTLINED_FUNCTION_1();
  v141 = v48;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v49);
  v163 = v129 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF448);
  OUTLINED_FUNCTION_1();
  v53 = v52;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  v56 = v129 - v55;
  v153 = a1;
  v57 = a1;
  v58 = a3;
  v59 = a3;
  v60 = a4;
  v61 = v165;
  sub_237CD0E0C(v57, v59);
  if (v61)
  {
    return;
  }

  v130 = v43;
  v129[3] = 0;
  v164 = v53;
  v161 = v47;
  v162 = v51;
  v62 = type metadata accessor for DataFrameTemporalAnnotationParameters();
  v129[0] = v62[9];
  v63 = v153;
  sub_237EF61B0();
  v129[1] = v62[10];
  sub_237EF61B0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v64);
  v71 = v143;
  sub_237CCFBE8(v63 + v62[11], v143);
  v72 = v140;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v140);
  v165 = v56;
  v142 = v64;
  v129[2] = v4;
  if (EnumTagSinglePayload == 1)
  {
    sub_237C65484(v71, &qword_27DEAF430);
    OUTLINED_FUNCTION_16_11();
    v74 = v130;
  }

  else
  {
    v60 = v152;
    v75 = v136;
    (*(v152 + 32))(v136, v71, v72);
    v74 = v130;
    sub_237EF61B0();
    (*(v60 + 8))(v75, v72);
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v64);
    sub_237CD1254(v74, v158, &qword_27DEAF440);
    OUTLINED_FUNCTION_16_11();
  }

  v76 = v154;
  sub_237CCFBE8(v153 + v62[12], v154);
  if (__swift_getEnumTagSinglePayload(v76, 1, v72) == 1)
  {
    sub_237C65484(v76, &qword_27DEAF430);
  }

  else
  {
    v77 = v72;
    v78 = v152;
    v79 = v74;
    v74 = v137;
    (*(v152 + 32))(v137, v76, v77);
    sub_237EF61B0();
    (*(v78 + 8))(v74, v77);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v142);
    v80 = v79;
    v71 = v161;
    sub_237CD1254(v80, v157, &qword_27DEAF440);
  }

  v169 = sub_237EF8110();
  v81 = sub_237EF6260();
  if (v81 < 0)
  {
    goto LABEL_58;
  }

  v82 = v164;
  v154 = v81;
  if (!v81)
  {
    goto LABEL_52;
  }

  v83 = 0;
  v84 = 0;
  v140 = v135 + 32;
  v139 += 16;
  v130 = (v138 + 32);
  v143 = v138 + 8;
  v137 = v138 + 16;
  v136 = v135 + 16;
  v135 += 8;
  v152 = v134 + 8;
  OUTLINED_FUNCTION_18_9();
  v138 = v58;
  v85 = v154;
  v86 = v160;
  while (1)
  {
    sub_237EF62A0();
    if (!*(&v166 + 1))
    {
      v82 = v164;
LABEL_15:
      v89 = v162;
      if ((v86 & 1) == 0)
      {
        sub_237EF62A0();
        if (v168)
        {

          sub_237EF62C0();
        }

        else
        {
          sub_237EF62A0();
          if (OUTLINED_FUNCTION_22_7(v60) == 1)
          {
            OUTLINED_FUNCTION_19_1();
            v90(v60, v159);
            v82 = v164;
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_19_1();
          v122(v60, v159);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
        }

        v123 = sub_237EF62B0();
        v125 = v124;
        sub_237CD1200();
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_8_18();
        *v126 = v127;
        *(v126 + 8) = 0x8000000237EFCD80;
        *(v126 + 16) = v123;
        *(v126 + 24) = v125;
        v128 = v167;
        *(v126 + 32) = v166;
        *(v126 + 48) = v128;
        *(v126 + 64) = 2;
        swift_willThrow();
        (*(v141 + 8))(v163, v161);
        (*(v164 + 8))(v165, v89);
        sub_237C65484(v157, &qword_27DEAF440);
        sub_237C65484(v158, &qword_27DEAF440);
        return;
      }

LABEL_19:
      if (!__OFADD__(v83++, 1))
      {
        goto LABEL_42;
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v87 = v156;
    sub_237EF62A0();
    if (OUTLINED_FUNCTION_22_7(v87) == 1)
    {

      OUTLINED_FUNCTION_19_1();
      v88(v87, v159);
      v86 = v160;
      v82 = v164;
      v85 = v154;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_19_1();
    v92(v155, v87, v58);
    OUTLINED_FUNCTION_19_1();
    v93 = v147;
    v94(v147, v153, v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF420);
    v95 = OUTLINED_FUNCTION_15_11();
    if (__swift_getEnumTagSinglePayload(v95, 1, v96) == 1)
    {
      OUTLINED_FUNCTION_17_9();
      sub_237EF5E30();

      v82 = v157;
      v97 = v158;
      v98 = v146;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      v98 = v146;
      v99(v74, v93, v146);
      OUTLINED_FUNCTION_17_9();
      sub_237EF5E70();

      OUTLINED_FUNCTION_19_1();
      v100(v74, v98);
      v82 = v157;
      v97 = v158;
    }

    v101 = v145;
    v102 = 1;
    if (OUTLINED_FUNCTION_22_7(v97))
    {
      v103 = 0.0;
    }

    else
    {
      sub_237EF62A0();
      v82 = v157;
      v103 = *&v166;
      v102 = BYTE8(v166);
    }

    if (OUTLINED_FUNCTION_22_7(v82))
    {
      OUTLINED_FUNCTION_19_9();
      if ((v104 & 1) == 0)
      {
        goto LABEL_40;
      }

      v103 = 0.0;
LABEL_36:
      v105 = 1.79769313e308;
      goto LABEL_41;
    }

    sub_237EF62A0();
    v105 = *&v166;
    v106 = BYTE8(v166);
    if (v103 < 0.0)
    {
      v107 = 1;
    }

    else
    {
      v107 = v102;
    }

    if (v107)
    {
      v103 = 0.0;
      OUTLINED_FUNCTION_19_9();
      if ((v108 & 1) == 0)
      {
        if (v105 < 0.0)
        {
          goto LABEL_59;
        }

        goto LABEL_41;
      }

      goto LABEL_36;
    }

    if (v103 >= *&v166)
    {
      v106 = 1;
    }

    v82 = v150;
    v102 = v149;
    if (v106)
    {
LABEL_40:
      v105 = 1.79769313e308;
      if (v103 > 1.79769313e308)
      {
        goto LABEL_57;
      }

      goto LABEL_41;
    }

    if (v103 > *&v166)
    {
      break;
    }

LABEL_41:
    OUTLINED_FUNCTION_19_1();
    v109(v102, v60, v98);
    v110 = (v102 + *(v82 + 20));
    *v110 = v103;
    v110[1] = v105;
    OUTLINED_FUNCTION_19_1();
    v111 = v155;
    v58 = v138;
    v112(v101, v155, v138);
    v113 = v101;
    v74 = v60;
    v60 = v98;
    AnnotatedFeature.init(feature:annotation:)(v102, v113, v82, v58, v144);
    sub_237EF8A60();
    sub_237EF8A20();
    OUTLINED_FUNCTION_19_1();
    v114(v74, v98);
    OUTLINED_FUNCTION_19_1();
    v115(v111, v58);
    v82 = v164;
    OUTLINED_FUNCTION_18_9();
    v85 = v154;
    v86 = v160;
LABEL_42:
    if (v85 == ++v84)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_48:
  v116 = v133;
  v71 = v161;
  v64 = v141;
  if (v83 >= 1)
  {
    v117 = v131;
    sub_237EF7DA0();
    v118 = sub_237EF7D90();
    v119 = sub_237EF8F90();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 134349056;
      *(v120 + 4) = v83;
      _os_log_impl(&dword_237C51000, v118, v119, "Skipped %{public}ld rows from the dataframe since they do not have a file path or annotation or both.", v120, 0xCu);
      v121 = v120;
      v64 = v141;
      MEMORY[0x2383E2DF0](v121, -1, -1);
    }

    (*(v116 + 8))(v117, v132);
    v82 = v164;
  }

LABEL_52:
  (*(v64 + 8))(v163, v71);
  (*(v82 + 8))(v165, v162);
  sub_237C65484(v157, &qword_27DEAF440);
  sub_237C65484(v158, &qword_27DEAF440);
}

uint64_t sub_237CD0E0C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_237EF6310();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v48 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  v47 = &v46 - v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v50 = a2;
  type metadata accessor for DataFrameTemporalAnnotationParameters();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF428);
  v49 = a1;
  v16 = sub_237EF62B0();
  v18 = v17;
  v53 = v3;
  sub_237EF60D0();
  if (v19)
  {
    goto LABEL_4;
  }

  sub_237EF6130();
  sub_237EF62F0();
  v20 = *(v8 + 8);
  v20(v15, v6);
  if (!swift_dynamicCastMetatype())
  {
    v27 = v48;
    sub_237EF6130();
    v28 = sub_237EF62F0();
    v20(v27, v6);
    *&v51 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578);
    v29 = sub_237EF85D0();
    v31 = v30;
    sub_237CD1200();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_8_18();
    *v32 = v33;
    *(v32 + 8) = 0x8000000237EFCD80;
    *(v32 + 16) = v16;
    *(v32 + 24) = v18;
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    *(v32 + 48) = 0x676E69727453;
    *(v32 + 56) = 0xE600000000000000;
LABEL_9:
    *(v32 + 64) = 1;
    return swift_willThrow();
  }

  v21 = v50;
  sub_237EF62C0();
  v16 = sub_237EF62B0();
  v18 = v22;
  sub_237EF60D0();
  if ((v23 & 1) == 0)
  {
    v34 = v47;
    sub_237EF6130();
    sub_237EF62F0();
    v20(v34, v6);
    if (swift_dynamicCastMetatype())
    {
    }

    v49 = 0x8000000237EFCD80;
    v36 = v20;
    v37 = v48;
    sub_237EF6130();
    v38 = sub_237EF62F0();
    v36(v37, v6);
    *&v51 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAF578);
    v39 = sub_237EF85D0();
    v41 = v40;
    *&v51 = v21;
    swift_getMetatypeMetadata();
    v42 = sub_237EF85D0();
    v44 = v43;
    sub_237CD1200();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_8_18();
    *v32 = v45;
    *(v32 + 8) = v49;
    *(v32 + 16) = v16;
    *(v32 + 24) = v18;
    *(v32 + 32) = v39;
    *(v32 + 40) = v41;
    *(v32 + 48) = v42;
    *(v32 + 56) = v44;
    goto LABEL_9;
  }

LABEL_4:
  sub_237CD1200();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_8_18();
  *v24 = v25;
  *(v24 + 8) = 0x8000000237EFCD80;
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  v26 = v52;
  *(v24 + 32) = v51;
  *(v24 + 48) = v26;
  *(v24 + 64) = 0;
  return swift_willThrow();
}

unint64_t sub_237CD1200()
{
  result = qword_27DEAF458[0];
  if (!qword_27DEAF458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAF458);
  }

  return result;
}

uint64_t sub_237CD1254(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 40))(a2, a1);
  return a2;
}

void sub_237CD12B4()
{
  type metadata accessor for DataFrameTemporalAnnotationParameters.FilePathType();
  if (v0 <= 0x3F)
  {
    sub_237CD139C();
    if (v1 <= 0x3F)
    {
      sub_237EF62C0();
      if (v2 <= 0x3F)
      {
        sub_237CD13EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237CD139C()
{
  if (!qword_27DEAF4E0)
  {
    v0 = sub_237EF62C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEAF4E0);
    }
  }
}

void sub_237CD13EC()
{
  if (!qword_27DEAF4E8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF438);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEAF4E8);
    }
  }
}

uint64_t sub_237CD1450()
{
  sub_237CD14D0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_237CD14D0()
{
  if (!qword_27DEAF570)
  {
    v0 = sub_237EF5EF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEAF570);
    }
  }
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void sub_237CD1674()
{
  OUTLINED_FUNCTION_13_4();
  v24 = v2;
  v25 = v1;
  v3 = v0;
  v5 = v4;
  v26 = v6;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_6_1(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(v5 + 16);
  if (v14)
  {
    v28 = MEMORY[0x277D84F90];
    v15 = OUTLINED_FUNCTION_13_9();
    v22 = v16;
    (v16)(v15, v14, 0);
    v17 = sub_237EF6820();
    OUTLINED_FUNCTION_6_1(v17);
    v19 = v5 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v20 + 72);
    while (1)
    {
      v25(v19, &v27);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v21 = *(v28 + 16);
      if (v21 >= *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_17_10();
        v22();
      }

      *(v28 + 16) = v21 + 1;
      sub_237CD5AB4(v13, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v24);
      v19 += v23;
      if (!--v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_12_6();
}

void sub_237CD1854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30_8();
  a29 = v31;
  a30 = v33;
  v34 = v30;
  v51 = v35;
  v36 = *(v32 + 16);
  if (v36)
  {
    v37 = v32;
    a20 = MEMORY[0x277D84F90];
    v38 = OUTLINED_FUNCTION_13_9();
    sub_237C6304C(v38, v36, 0);
    v39 = a20;
    v40 = (v37 + 40);
    while (1)
    {
      v41 = *v40;
      a13 = *(v40 - 1);
      a14 = v41;
      sub_237EF8260();
      v51(&a15, &a13, &a12);
      if (v34)
      {
        break;
      }

      v34 = 0;

      v43 = a15;
      v42 = a16;
      v44 = a17;
      v45 = a18;
      a20 = v39;
      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      if (v47 >= v46 >> 1)
      {
        v50 = a16;
        v49 = a18;
        sub_237C6304C(v46 > 1, v47 + 1, 1);
        v45 = v49;
        v42 = v50;
        v39 = a20;
      }

      *(v39 + 16) = v47 + 1;
      v48 = v39 + 32 * v47;
      *(v48 + 32) = v43;
      *(v48 + 40) = v42;
      *(v48 + 48) = v44;
      *(v48 + 56) = v45;
      v40 += 2;
      if (!--v36)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_31_4();
}

void sub_237CD1984()
{
  OUTLINED_FUNCTION_13_4();
  v1 = v0;
  v3 = v2;
  v19 = v4;
  v20 = v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = *(v3 + 16);
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    v12 = OUTLINED_FUNCTION_13_9();
    sub_237C63650(v12, v11, 0);
    v13 = (v3 + 32);
    v17[1] = v7 + 32;
    while (1)
    {
      v14 = *v13++;
      v21 = v14;
      v19(&v21);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_237C63650(v15 > 1, v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      (*(v7 + 32))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v10, v18);
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_12_6();
  }
}

void sub_237CD1B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_30_8();
  a32 = v39;
  a33 = v40;
  v67 = v41;
  v68 = v42;
  v44 = *(v43 + 16);
  if (v44)
  {
    OUTLINED_FUNCTION_11_14();
    v45 = a23;
    sub_237E3A9E4(v36);
    OUTLINED_FUNCTION_4_23();
    if ((v38 & 0x8000000000000000) == 0)
    {
      while (v38 < v46 << *(v36 + 32))
      {
        OUTLINED_FUNCTION_19_10();
        if (v48)
        {
          goto LABEL_28;
        }

        if (*(v36 + 36) != v35)
        {
          goto LABEL_29;
        }

        v69 = v47;
        a20 = *(*(v36 + 48) + v38);
        v49 = v68;
        v67(&a21, &a20);
        if (v34)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_12_15();
        if (v52)
        {
          OUTLINED_FUNCTION_17_10();
          v66 = v65;
          sub_237C62DB0();
          v51 = v66;
          v50 = a23;
        }

        *(v50 + 16) = v45;
        *(v50 + 8 * v36 + 32) = v51;
        if (v33)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_24_4();
        if (v53 == v54)
        {
          goto LABEL_30;
        }

        if ((*(a16 + 8 * v44) & v37) == 0)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_23_6();
        if (!v48)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_22_8();
        if (v48)
        {
          OUTLINED_FUNCTION_8_19();
          while (v56 < v55)
          {
            v58 = *v57++;
            v45 += 64;
            ++v56;
            if (v58)
            {
              v59 = OUTLINED_FUNCTION_26_6();
              v49 = 0;
              sub_237CB231C(v59, v60, v61);
              OUTLINED_FUNCTION_29_7();
              goto LABEL_22;
            }
          }

          v62 = OUTLINED_FUNCTION_26_6();
          sub_237CB231C(v62, v63, v64);
LABEL_22:
          v45 = v36;
          v46 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_18_10();
        }

        if (v69 + 1 == v44)
        {
          goto LABEL_26;
        }

        v33 = 0;
        v35 = *(v36 + 36);
        v38 = v49;
        if (v49 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_26:
    OUTLINED_FUNCTION_31_4();
  }
}

void sub_237CD1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30_8();
  a29 = v36;
  a30 = v37;
  v64 = v38;
  v65 = v39;
  v41 = *(v40 + 16);
  if (v41)
  {
    OUTLINED_FUNCTION_11_14();
    v42 = a20;
    sub_237E3A9E4(v33);
    OUTLINED_FUNCTION_4_23();
    if ((v35 & 0x8000000000000000) == 0)
    {
      while (v35 < v43 << *(v33 + 32))
      {
        OUTLINED_FUNCTION_19_10();
        if (v45)
        {
          goto LABEL_28;
        }

        if (*(v33 + 36) != v32)
        {
          goto LABEL_29;
        }

        v66 = v44;
        a17 = *(*(v33 + 48) + 8 * v35);
        v46 = v65;
        v64(&a18, &a17);
        if (v31)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_12_15();
        if (v49)
        {
          OUTLINED_FUNCTION_17_10();
          v63 = v62;
          sub_237C62DB0();
          v48 = v63;
          v47 = a20;
        }

        *(v47 + 16) = v42;
        *(v47 + 8 * v33 + 32) = v48;
        if (v30)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_24_4();
        if (v50 == v51)
        {
          goto LABEL_30;
        }

        if ((*(a16 + 8 * v41) & v34) == 0)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_23_6();
        if (!v45)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_22_8();
        if (v45)
        {
          OUTLINED_FUNCTION_8_19();
          while (v53 < v52)
          {
            v55 = *v54++;
            v42 += 64;
            ++v53;
            if (v55)
            {
              v56 = OUTLINED_FUNCTION_26_6();
              v46 = 0;
              sub_237CB231C(v56, v57, v58);
              OUTLINED_FUNCTION_29_7();
              goto LABEL_22;
            }
          }

          v59 = OUTLINED_FUNCTION_26_6();
          sub_237CB231C(v59, v60, v61);
LABEL_22:
          v42 = v33;
          v43 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_18_10();
        }

        if (v66 + 1 == v41)
        {
          goto LABEL_26;
        }

        v30 = 0;
        v32 = *(v33 + 36);
        v35 = v46;
        if (v46 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_26:
    OUTLINED_FUNCTION_31_4();
  }
}

uint64_t sub_237CD1E80(uint64_t a1)
{
  v5 = sub_237EC9304(a1);
  sub_237EF8260();
  sub_237CD501C(&v5);

  v1 = v5;
  v2 = *(v5 + 16);

  sub_237D27B70(v3, 0, v2);
  return v1;
}

void *sub_237CD1F1C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for BoostedTreeClassifier();
  BoostedTreeClassifier.configuration.getter(v2, __src);
  return memcpy(a1, __src, 0x58uLL);
}

void (*BoostedTreeClassifier.configuration.modify(void *a1, uint64_t a2))(const void **a1)
{
  v5 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v5;
  v5[11] = a2;
  v5[12] = v2;
  memcpy(v5, (v2 + *(a2 + 68)), 0x58uLL);
  return sub_237CD2064;
}

void sub_237CD2064(const void **a1)
{
  v1 = *a1;
  memcpy((*(*a1 + 12) + *(*(*a1 + 11) + 68)), *a1, 0x58uLL);

  free(v1);
}

uint64_t BoostedTreeClassifier.annotationColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t BoostedTreeClassifier.annotationColumnID.setter(uint64_t a1)
{
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t BoostedTreeClassifier.featureColumnNames.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);

  *(v2 + v4) = a1;
  return result;
}

uint64_t BoostedTreeClassifier.labels.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  *(v2 + v4) = a1;
  return result;
}

void *BoostedTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, const void *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BoostedTreeClassifier();
  *(a4 + v8[15]) = a2;
  sub_237EF62D0();
  *(a4 + v8[16]) = a1;
  return memcpy((a4 + v8[17]), a3, 0x58uLL);
}

uint64_t BoostedTreeClassifier.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  v7[13] = swift_task_alloc();
  v9 = sub_237EF61A0();
  v7[14] = v9;
  OUTLINED_FUNCTION_6_1(v9);
  v7[15] = v10;
  v7[16] = swift_task_alloc();
  v7[17] = *(a6 + 16);
  v11 = sub_237EF6290();
  v7[18] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v7[19] = v12;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CD2484, 0, 0);
}

uint64_t sub_237CD2484()
{
  v104 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  *(v0 + 16) = *(*(v0 + 96) + *(v2 + 64));
  sub_237EF90F0();
  v3 = *(v2 + 48);
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_237EF8CF0();
  v92 = *(v2 + 24);
  v4 = *(v2 + 40);
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v5 = sub_237CD2F70();
  v7 = v6;
  sub_237EF61B0();
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v92;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  v90 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_22();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C();
  v84 = v4;
  v87 = v11;
  v12 = *(v0 + 56);
  v13 = *(*(v0 + 152) + 8);
  v13(*(v0 + 168), *(v0 + 144));

  *(swift_task_alloc() + 16) = v12;
  OUTLINED_FUNCTION_25_5();
  sub_237CD1854(v14, v15, v16, v17, v18, v19, v20, v21, v67, v68, v69, v71, v73, v75, v77, v79, v81, v82, v84, v9, v3, v87, v5, v90, v92, *(&v92 + 1), v95, __src[0], __src[1], __src[2]);
  v23 = v22;
  v83 = v13;

  OUTLINED_FUNCTION_15_12();
  sub_237DDE9AC(v24, v25, 0x8000000237F08940, v26);
  v27 = v91;
  v30 = *(&v100[0] + 1);
  if (*(&v100[0] + 1))
  {
    v76 = *(&v100[1] + 1);
    v78 = v23;
    OUTLINED_FUNCTION_15_12();
    sub_237E871F4(v31, v32, 0x8000000237F08940, v33);
    v72 = *&v100[0];
    v74 = v100[1];
    v37 = *(v0 + 104);
    v36 = *(v0 + 112);
    sub_237C89E7C(*(v0 + 64), v37);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v36);
    if (EnumTagSinglePayload == 1)
    {
      v39 = *(v0 + 96);
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);
      sub_237C89EEC(*(v0 + 104));
      memcpy(v100, (v39 + *(v40 + 68)), 0x58uLL);
      __src[0] = v72;
      __src[1] = v30;
      LOBYTE(__src[2]) = v74;
      __src[3] = v76;
      BaseTreeClassifier.fitted(features:annotations:classCount:eventHandler:)(__src, v88, *(v89 + 16), v41, &v101);

      v45 = v101;
      v47 = v102;
      v46 = v103;
    }

    else
    {
      v42 = *(v0 + 136);
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
      OUTLINED_FUNCTION_15_12();
      sub_237E871F4(v43, v44, 0x8000000237F08940, v42);
      v50 = *(v0 + 160);
      v80 = *(v0 + 144);
      v70 = *(v0 + 88);
      sub_237EF61B0();
      sub_237CD3504(v50, v89, v91, v70, v80, WitnessTable);
      OUTLINED_FUNCTION_15_12();
      sub_237DDE9AC(v53, v54, 0x8000000237F08940, v55);
      v56 = *(&v100[0] + 1);
      v57 = *(&v100[1] + 1);
      v58 = *&v100[0];
      v59 = v100[1];
      v60 = *(v0 + 136);
      memcpy(v100, (*(v0 + 96) + *(*(v0 + 88) + 68)), 0x58uLL);
      *&v101 = v72;
      *(&v101 + 1) = v30;
      LOBYTE(v102) = v74;
      v103 = v76;
      __src[0] = v58;
      __src[1] = v56;
      LOBYTE(__src[2]) = v59;
      v27 = v91;
      __src[3] = v57;
      v61 = swift_task_alloc();
      *(v61 + 16) = v60;
      *&v62 = v85;
      *(&v62 + 1) = v86;
      *(v61 + 40) = v62;
      *(v61 + 24) = v93;
      *(v61 + 56) = v89;
      *(v61 + 64) = v91;
      sub_237C9339C();

      BaseTreeClassifier.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:classCount:eventHandler:)(&v101, v88, __src, *(v89 + 16), &v97);
      v63 = *(v0 + 160);
      v64 = *(v0 + 144);
      v65 = *(v0 + 120);
      v94 = *(v0 + 128);
      v66 = *(v0 + 112);

      v83(v63, v64);
      (*(v65 + 8))(v94, v66);

      v45 = v97;
      v47 = v98;
      v46 = v99;
    }

    v100[0] = v45;
    *&v100[1] = v47;
    *(&v100[1] + 1) = v46;
    sub_237EF62C0();

    v48 = sub_237EF62B0();
    sub_237E54F5C(v100, v78, v48, v49, v89, v27, __src);
    if (sub_237D0510C())
    {
    }

    else
    {
      memcpy(v100, __src, 0x48uLL);
      type metadata accessor for TreeClassifierModel();
      v51 = TreeClassifierModel.debugDescription.getter();
      sub_237D05198(v51, v52);
    }

    memcpy(*(v0 + 48), __src, 0x48uLL);

    v28 = *(v0 + 8);
  }

  else
  {

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v34 = swift_allocError();
    *v35 = 0xD000000000000015;
    v35[1] = 0x8000000237F08940;
    v35[2] = 0xD000000000000052;
    v35[3] = 0x8000000237EFCE00;
    OUTLINED_FUNCTION_5_21(v34, v35);
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();
  }

  return v28();
}

uint64_t sub_237CD2F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
  sub_237C9339C();
  sub_237CAE0CC(v0);
  return sub_237CD1E80(v1);
}

void sub_237CD3014(uint64_t a1@<X0>, void *a2@<X8>, uint64_t *a3)
{
  v4 = v3;
  v7 = sub_237EF90F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_237CD31BC();
  if (v3)
  {
    goto LABEL_4;
  }

  if (v12)
  {
    (*(v8 + 16))(v10, a1, v7);
    v13 = sub_237EF85D0();
    v15 = v14;
    sub_237C84150();
    v4 = swift_allocError();
    *v16 = 0xD000000000000015;
    *(v16 + 8) = 0x8000000237F08940;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = 3;
    swift_willThrow();
LABEL_4:
    *a3 = v4;
    return;
  }

  *a2 = v11;
}

void sub_237CD31BC()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v24 = v3;
  v4 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_14();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_25_5();
    v19();
    if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
    {
      (*(v6 + 8))(v12, v4);
    }

    else
    {
      (*(v14 + 32))(v18, v12, v2);
      swift_dynamicCast();
    }
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      v21 = swift_allocError();
      *v22 = 0xD000000000000015;
      v22[1] = 0x8000000237F08940;
      v22[2] = 0xD000000000000024;
      v22[3] = 0x8000000237EFCEA0;
      OUTLINED_FUNCTION_5_21(v21, v22);
      swift_willThrow();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_25_5();
    v20();
    if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
    {
      (*(v6 + 8))(v10, v4);
    }

    else
    {
      (*(v14 + 32))(v0, v10, v2);
      swift_dynamicCast();
      sub_237EF9AB0();
    }
  }

  if (*(v24 + 16))
  {
    sub_237D2FD00();
  }

LABEL_14:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CD3504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v35 = *(a4 + 16);
  v36 = a3;
  v9 = sub_237EF90F0();
  v34 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v32[0] = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = sub_237EF90F0();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v32 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = v32 - v22;
  (*(v18 + 16))(v20, v39, a5);
  sub_237EF86F0();
  v39 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v24 = (v34 + 32);
  for (i = (v34 + 8); ; (*i)(v13, v9))
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v17, 1, v9) == 1)
    {
      break;
    }

    (*v24)(v13, v17, v9);
    sub_237CD31BC();
    if (v6)
    {
      goto LABEL_7;
    }

    if (v26)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0x697461746F6E6E41, 0xEB00000000206E6FLL);
      (*(v34 + 16))(v32[0], v13, v9);
      v27 = sub_237EF85D0();
      MEMORY[0x2383E0710](v27);

      MEMORY[0x2383E0710](0xD000000000000027, 0x8000000237EFCED0);
      v28 = v37;
      v29 = v38;
      sub_237C84150();
      swift_allocError();
      *v30 = 0xD000000000000015;
      *(v30 + 8) = 0x8000000237F08940;
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      *(v30 + 32) = 5;
      swift_willThrow();
LABEL_7:
      (*i)(v13, v9);
      return (*(v33 + 8))(v23, v39);
    }
  }

  return (*(v33 + 8))(v23, v39);
}

void sub_237CD3948(void *a1@<X8>, void *a2)
{
  sub_237CD31BC();
  if (v2)
  {
    *a2 = v2;
  }

  else if (v5)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t BoostedTreeClassifier.encodeLabels<A>(_:)(uint64_t a1)
{
  v2 = sub_237CD2F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v3 = a1;
  sub_237C9339C();
  if (v13)
  {
  }

  else
  {

    v4 = *(v2 + 16);
    if (v4)
    {
      v14 = MEMORY[0x277D84F90];
      v5 = OUTLINED_FUNCTION_13_9();
      sub_237C63708(v5, v4, 0);
      v3 = v14;
      v6 = (v2 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v10 = *(v14 + 16);
        v9 = *(v14 + 24);
        sub_237EF8260();
        if (v10 >= v9 >> 1)
        {
          sub_237C63708(v9 > 1, v10 + 1, 1);
        }

        v6 += 2;
        *(v14 + 16) = v10 + 1;
        v11 = v14 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        --v4;
      }

      while (v4);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_237CD3BC8(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = sub_237EF90F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  sub_237CD31BC();
  if (v5)
  {
    goto LABEL_4;
  }

  if (v14)
  {
    (*(v10 + 16))(v12, a1, v9);
    v15 = sub_237EF85D0();
    v17 = v16;
    sub_237C84150();
    v6 = swift_allocError();
    *v18 = 0xD000000000000015;
    *(v18 + 8) = 0x8000000237F08940;
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v18 + 32) = 3;
    swift_willThrow();
LABEL_4:
    *a5 = v6;
    return;
  }

  *a2 = v13;
}

void *BoostedTreeClassifier.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  result = sub_237E55314(a1, __src);
  if (!v4)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v9 = *(a2 + 68);
    result = memcpy(v18, (v5 + v9), sizeof(v18));
    v10 = __dst[5];
    if (__dst[5])
    {
      v11 = __dst[7];
      v12 = *(__dst[7] + 16);

      sub_237CAE8CC(v13, v12);

      memcpy(v17, (v5 + v9), sizeof(v17));
      v14 = *(v11 + 16);
      memcpy(v16, __dst, sizeof(v16));
      type metadata accessor for TreeClassifierModel();
      v15 = sub_237E55964();
      sub_237CAEA0C(v10, v14, v15, 0);
      return memcpy(a3, __dst, 0x48uLL);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237CD3F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_237EF90F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *(v7 + 16);
  v13(&v17 - v11, a1, v6);
  if (__swift_getEnumTagSinglePayload(v12, 1, a2) == 1)
  {
    *a3 = 0;
    a3[1] = 0;
    return (*(v7 + 8))(v12, v6);
  }

  v13(v10, v12, v6);
  if (swift_dynamicCast())
  {
    v14 = v19;
    *a3 = v18;
    a3[1] = v14;
LABEL_7:
    (*(*(a2 - 8) + 8))(v10, a2);
    return (*(v7 + 8))(v12, v6);
  }

  if (swift_dynamicCast())
  {
    v20 = v18;
    *a3 = sub_237EF9AB0();
    a3[1] = v15;
    goto LABEL_7;
  }

  (*(*(a2 - 8) + 8))(v10, a2);
  result = sub_237EF9740();
  __break(1u);
  return result;
}

void (*sub_237CD41D0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BoostedTreeClassifier.annotationColumnID.modify();
  return sub_237C803C0;
}

uint64_t sub_237CD422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C90C10;

  return BoostedTreeClassifier.fitted(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

double BoostedTreeClassifier.makeTransformer()@<D0>(uint64_t a1@<X8>)
{
  memset(v8, 0, sizeof(v8));
  sub_237EF62C0();
  v2 = sub_237EF62B0();
  v4 = v3;
  sub_237EF90F0();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v5 = sub_237CD2F70();
  *&result = sub_237E54F5C(v8, MEMORY[0x277D84F90], v2, v4, v5, v6, a1).n128_u64[0];
  return result;
}

uint64_t BoostedTreeClassifier.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = *(a5 + 16);
  v7 = sub_237EF6290();
  v6[10] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v6[11] = v8;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237CD4500, 0, 0);
}

void *sub_237CD4500()
{
  v35 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  sub_237EF61B0();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = *(v2 + 24);
  *(v4 + 32) = *(v2 + 32);
  *(v4 + 48) = *(v2 + 48);
  *(v4 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  OUTLINED_FUNCTION_1_22();
  swift_getWitnessTable();
  sub_237C9339C();
  v6 = v5;
  v7 = *(v0 + 24);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  if (!*(v7 + 40))
  {
    v13 = sub_237CD49FC(*(v0 + 32), *(v0 + 56));
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 24);

    *(v16 + 16) = v13;
    memcpy(v31, (v14 + *(v15 + 68)), 0x58uLL);
    v17 = 0;
    v18 = *(*(v16 + 56) + 16);
    v19 = (v13 + 56);
    v20 = *(v13 + 16) + 1;
    while (--v20)
    {
      v21 = *v19;
      v22 = *(v19 - 1);
      v19 += 32;
      if (v21 >= 4)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = __OFADD__(v17, v23);
      v17 += v23;
      if (v24)
      {
        __break(1u);
        break;
      }
    }

    type metadata accessor for XGBooster();
    swift_allocObject();
    v25 = sub_237E88668(0, 0);
    memcpy(__dst, v31, sizeof(__dst));
    OUTLINED_FUNCTION_25_5();
    sub_237CAEA0C(v26, v27, v28, 0);
    v30 = *(v0 + 24);

    *(v7 + 24) = v18;
    *(v30 + 32) = v17;
    *(v7 + 40) = v25;
    *(v30 + 48) = 0;
  }

  OUTLINED_FUNCTION_15_12();
  sub_237DDE9AC(v8, v9, v10, v11);
  result = memcpy(__dst, (*(v0 + 64) + *(*(v0 + 56) + 68)), sizeof(__dst));
  v31[0] = v31[6];
  LOBYTE(v31[1]) = v32;
  *(&v31[1] + 1) = v33;
  if (*(v7 + 40))
  {
    BaseTreeClassifier.update(_:features:annotations:eventHandler:)((v7 + 24), v31, v6, *(v0 + 40));

    OUTLINED_FUNCTION_3_0();

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237CD4840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X7>, void *a3@<X8>)
{
  v5 = v3;
  v21 = a3;
  v7 = sub_237EF90F0();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_237EF8260();
  sub_237EF8260();
  sub_237CD31BC();
  v11 = v10;
  v13 = v12;

  if (v3)
  {
    goto LABEL_4;
  }

  if (v13)
  {
    (*(v20 + 16))(v9, a1, v7);
    v15 = sub_237EF85D0();
    v17 = v16;
    sub_237C84150();
    v5 = swift_allocError();
    *v18 = 0xD000000000000015;
    *(v18 + 8) = 0x8000000237F08940;
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v18 + 32) = 3;
    result = swift_willThrow();
LABEL_4:
    *a2 = v5;
    return result;
  }

  *v21 = v11;
  return result;
}

void sub_237CD4A40()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v5 = v4;
  v29 = v6;
  v7 = sub_237EF6310();
  OUTLINED_FUNCTION_1_1();
  v26 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_14();
  MEMORY[0x28223BE20](v10);
  v12 = *v5;
  v11 = v5[1];
  OUTLINED_FUNCTION_28_6();
  sub_237EF60D0();
  if (v13)
  {
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v14 = swift_allocError();
    *v15 = 0xD000000000000015;
    *(v15 + 8) = 0x8000000237F08940;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    *(v15 + 32) = v27;
    *(v15 + 48) = v28;
    *(v15 + 64) = 0;
    swift_willThrow();
    *v3 = v14;
    sub_237EF8260();
  }

  else
  {
    OUTLINED_FUNCTION_28_6();
    sub_237EF61D0();
    OUTLINED_FUNCTION_15_12();
    sub_237E0BB50(v16, v17, 0x8000000237F08940);
    if (v0)
    {
      *v3 = v0;
    }

    else if (v19)
    {
      *v29 = v18;
      *(v29 + 8) = v19;
      *(v29 + 16) = v20;
      *(v29 + 24) = v21;
    }

    else
    {
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000030, 0x8000000237EFCE60);
      OUTLINED_FUNCTION_28_6();
      sub_237EF61D0();
      sub_237EF62F0();
      (*(v26 + 8))(v1, v7);
      v22 = sub_237EFA220();
      MEMORY[0x2383E0710](v22);

      MEMORY[0x2383E0710](0x756C6F63206E6920, 0xEB00000000206E6DLL);
      v23 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x2383E0710](v23);
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      v24 = swift_allocError();
      *v25 = 0xD000000000000015;
      v25[1] = 0x8000000237F08940;
      v25[2] = 0;
      v25[3] = 0xE000000000000000;
      OUTLINED_FUNCTION_5_21(v24, v25);
      swift_willThrow();
      *v3 = v24;
    }
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CD4CD8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = type metadata accessor for TreeClassifierModel();
  return sub_237E54F94(a2, v3);
}

uint64_t sub_237CD4D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237CD5B14;

  return BoostedTreeClassifier.update(_:with:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237CD4E7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237CD4EB8()
{
  sub_237EF62C0();
  if (v0 <= 0x3F)
  {
    sub_237CD4FCC();
    if (v1 <= 0x3F)
    {
      sub_237EF90F0();
      swift_getWitnessTable();
      sub_237EF8CF0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237CD4FCC()
{
  if (!qword_280C8CD40)
  {
    v0 = sub_237EF8A60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C8CD40);
    }
  }
}

uint64_t sub_237CD501C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237E643E4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_237CD5088(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_237CD5088(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237EF9AA0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490);
        v6 = sub_237EF89B0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237CD5250(v7, v8, a1, v4);
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
    return sub_237CD518C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237CD518C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3 - 16;
    v8 = result - a3;
    while (2)
    {
      v9 = *(v6 + 16 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        if (!*(&v9 + 1))
        {
          break;
        }

        v12 = *(v11 + 8);
        if (v12)
        {
          result = v9;
          if (v9 == *v11 && *(&v9 + 1) == v12)
          {
            break;
          }

          result = sub_237EF9D40();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *v11;
        v9 = *(v11 + 16);
        *v11 = v9;
        *(v11 + 16) = v14;
        v11 -= 16;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237CD5250(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 < 1)
  {
    goto LABEL_110;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_35;
    }

    v9 = (*a3 + 16 * v6);
    v10 = v9[1];
    v11 = (*a3 + 16 * v8);
    if (!v10)
    {
      goto LABEL_11;
    }

    v12 = v11[1];
    if (!v12)
    {
      v14 = 1;
      goto LABEL_13;
    }

    if (*v9 == *v11 && v10 == v12)
    {
LABEL_11:
      v14 = 0;
    }

    else
    {
      v14 = sub_237EF9D40();
    }

LABEL_13:
    v6 = v8 + 2;
    v15 = 16 * v8;
    v16 = v11 + 3;
    while (v6 < v5)
    {
      v17 = v16[2];
      if (!v17)
      {
        goto LABEL_23;
      }

      if (!*v16)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      if (v16[1] == *(v16 - 1) && v17 == *v16)
      {
LABEL_23:
        if (v14)
        {
          goto LABEL_28;
        }
      }

      else if ((v14 & 1) != (sub_237EF9D40() & 1))
      {
        break;
      }

LABEL_26:
      ++v6;
      v16 += 2;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    if (v6 < v8)
    {
      goto LABEL_131;
    }

    if (v8 < v6)
    {
      v19 = 16 * v6 - 16;
      v20 = v6;
      v21 = v8;
      do
      {
        if (v21 != --v20)
        {
          v22 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v23 = *(v22 + v15);
          *(v22 + v15) = *(v22 + v19);
          *(v22 + v19) = v23;
        }

        ++v21;
        v19 -= 16;
        v15 += 16;
      }

      while (v21 < v20);
    }

LABEL_35:
    v24 = a3[1];
    if (v6 < v24)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_130;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_132;
        }

        if (v8 + a4 >= v24)
        {
          v25 = a3[1];
        }

        else
        {
          v25 = v8 + a4;
        }

        if (v25 >= v8)
        {
          if (v6 != v25)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v6 - 16;
            v28 = v8 - v6;
            do
            {
              v29 = *(v26 + 16 * v6);
              v30 = v28;
              v31 = v27;
              do
              {
                if (!*(&v29 + 1))
                {
                  break;
                }

                v32 = *(v31 + 8);
                if (v32)
                {
                  v33 = v29 == *v31 && *(&v29 + 1) == v32;
                  if (v33 || (sub_237EF9D40() & 1) == 0)
                  {
                    break;
                  }
                }

                if (!v26)
                {
                  goto LABEL_134;
                }

                v34 = *v31;
                v29 = *(v31 + 16);
                *v31 = v29;
                *(v31 + 16) = v34;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v6;
              v27 += 16;
              --v28;
            }

            while (v6 != v25);
            v6 = v25;
          }

          goto LABEL_58;
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        return;
      }
    }

LABEL_58:
    if (v6 < v8)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237D0B510();
      v7 = v78;
    }

    v36 = v7[2];
    v37 = v36 + 1;
    if (v36 >= v7[3] >> 1)
    {
      sub_237D0B510();
      v7 = v79;
    }

    v7[2] = v37;
    v38 = v7 + 4;
    v39 = &v7[2 * v36 + 4];
    *v39 = v8;
    v39[1] = v6;
    v82 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v36)
    {
      while (2)
      {
        v40 = v37 - 1;
        v41 = &v38[2 * v37 - 2];
        v42 = &v7[2 * v37];
        if (v37 >= 4)
        {
          v47 = &v38[2 * v37];
          v48 = *(v47 - 8);
          v49 = *(v47 - 7);
          v53 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          if (v53)
          {
            goto LABEL_117;
          }

          v52 = *(v47 - 6);
          v51 = *(v47 - 5);
          v53 = __OFSUB__(v51, v52);
          v45 = v51 - v52;
          v46 = v53;
          if (v53)
          {
            goto LABEL_118;
          }

          v54 = v42[1];
          v55 = v54 - *v42;
          if (__OFSUB__(v54, *v42))
          {
            goto LABEL_120;
          }

          v53 = __OFADD__(v45, v55);
          v56 = v45 + v55;
          if (v53)
          {
            goto LABEL_123;
          }

          if (v56 >= v50)
          {
            v70 = *v41;
            v69 = v41[1];
            v53 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v53)
            {
              goto LABEL_128;
            }

            if (v45 < v71)
            {
              v40 = v37 - 2;
            }
          }

          else
          {
LABEL_78:
            if (v46)
            {
              goto LABEL_119;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_122;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_125;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_127;
            }

            if (v60 + v63 < v45)
            {
              goto LABEL_93;
            }

            if (v45 < v63)
            {
              v40 = v37 - 2;
            }
          }
        }

        else
        {
          if (v37 == 3)
          {
            v43 = v7[4];
            v44 = v7[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
            goto LABEL_78;
          }

          if (v37 < 2)
          {
            goto LABEL_121;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_93:
          if (v61)
          {
            goto LABEL_124;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_126;
          }

          if (v68 < v60)
          {
            break;
          }
        }

        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v72 = v7;
        v73 = &v38[2 * v40 - 2];
        v74 = *v73;
        v75 = &v38[2 * v40];
        v76 = v75[1];
        sub_237CD58A0((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v82);
        if (v4)
        {
          goto LABEL_112;
        }

        if (v76 < v74)
        {
          goto LABEL_114;
        }

        v77 = v72[2];
        if (v40 > v77)
        {
          goto LABEL_115;
        }

        *v73 = v74;
        v73[1] = v76;
        if (v40 >= v77)
        {
          goto LABEL_116;
        }

        v37 = v77 - 1;
        memmove(&v38[2 * v40], v75 + 2, 16 * (v77 - 1 - v40));
        v7 = v72;
        v72[2] = v77 - 1;
        if (v77 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v5 = a3[1];
  }

  while (v6 < v5);
  v84 = v7;
LABEL_110:
  if (!*a1)
  {
    goto LABEL_138;
  }

  sub_237CD5774(&v84, *a1, a3);
LABEL_112:
}

uint64_t sub_237CD5774(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_237D4F620(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_237CD58A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_237CD58A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_237C5EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v16 = v7;
        goto LABEL_40;
      }

      v12 = *(v6 + 1);
      if (!v12)
      {
        break;
      }

      v13 = *(v4 + 1);
      if (v13)
      {
        v14 = *v6 == *v4 && v12 == v13;
        if (v14 || (sub_237EF9D40() & 1) == 0)
        {
          break;
        }
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 16;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 16;
    }

    v15 = v4;
    v14 = v7 == v4;
    v4 += 16;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v15;
    goto LABEL_19;
  }

  sub_237C5EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_21:
  v16 = v6;
  v6 -= 16;
  for (v5 -= 16; v10 > v4 && v16 > v7; v5 -= 16)
  {
    v18 = *(v10 - 1);
    if (v18)
    {
      v19 = *(v16 - 1);
      if (!v19 || (*(v10 - 2) == *(v16 - 2) ? (v20 = v18 == v19) : (v20 = 0), !v20 && (sub_237EF9D40() & 1) != 0))
      {
        if (v5 + 16 != v16)
        {
          *v5 = *v6;
        }

        goto LABEL_21;
      }
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_40:
  v21 = (v10 - v4) / 16;
  if (v16 != v4 || v16 >= &v4[16 * v21])
  {
    memmove(v16, v4, 16 * v21);
  }

  return 1;
}

uint64_t sub_237CD5AB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_11_14()
{
  *(v1 - 72) = v0;

  sub_237C62DB0();
}

uint64_t Regressor.prediction(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v11 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_237C5FFA4;

  return v11(a1, a2, 0, 0, a3, v8);
}

uint64_t Regressor.prediction<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 8);
  *v11 = v5;
  v11[1] = sub_237CD5F7C;

  return Transformer.applied<A>(to:eventHandler:)(a1, 0, 0, a2, a3, v12, a5);
}

uint64_t sub_237CD5F7C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_237CD6114(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237CD614C()
{
  result = sub_237EF6750();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LSTMFCN.ConvolutionBlock(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LSTMFCN.SqueezeExciteBlock(319);
      if (v3 <= 0x3F)
      {
        result = sub_237EF6820();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_237CD6250()
{
  result = sub_237EF6820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237CD6304()
{
  result = sub_237EF6930();
  if (v1 <= 0x3F)
  {
    result = sub_237EF6C30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_237CD6388()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v55 = v0;
  v3 = v2;
  v57 = v2;
  v5 = v4;
  v59 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  v56 = v8;
  v9 = OUTLINED_FUNCTION_12_1();
  v10 = type metadata accessor for LSTMFCN.ConvolutionBlock(v9);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for LSTMFCN(0);
  v60 = v19;
  *(v5 + *(v19 + 48)) = v3;
  *(v5 + *(v19 + 52)) = v1;
  sub_237EF65F0();
  OUTLINED_FUNCTION_25_6();
  v20 = sub_237EF64B0();
  v21 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_7();
  sub_237EF6590();
  v24 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v24, &qword_27DEAD5F0);
  v25 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_7();
  sub_237EF6590();
  sub_237C65484(v18, &qword_27DEAD5F0);
  v58 = v5;
  sub_237EF6730();
  sub_237CD7C58();
  v28 = v60;
  OUTLINED_FUNCTION_3_25();
  sub_237CDB24C(v14, v5 + v29);
  sub_237CD7C58();
  sub_237CD7C58();
  v30 = v5 + *(v28 + 32);
  v31 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
  *(v30 + *(v31 + 28)) = 32;
  sub_237EF6540();
  v32 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v20);
  OUTLINED_FUNCTION_10_1();
  sub_237EF65D0();
  v35 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v35, &qword_27DEAD5F0);
  v36 = v56;
  OUTLINED_FUNCTION_61_1();
  v55 = *(v61 + 32);
  v61 += 32;
  v55(v30, v36, v59);
  v37 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v20);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_26_7();
  sub_237EF65D0();
  v40 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v40, &qword_27DEAD5F0);
  v54 = v31;
  OUTLINED_FUNCTION_61_1();
  v41 = v58 + *(v60 + 36);
  *(v41 + *(v31 + 28)) = 64;
  sub_237EF6540();
  v42 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v20);
  OUTLINED_FUNCTION_10_1();
  sub_237EF65D0();
  v45 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v45, &qword_27DEAD5F0);
  OUTLINED_FUNCTION_61_1();
  v55(v41, v36, v59);
  v46 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v20);
  OUTLINED_FUNCTION_10_1();
  sub_237EF65D0();
  v49 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v49, &qword_27DEAD5F0);
  OUTLINED_FUNCTION_61_1();
  sub_237EF6540();
  v50 = OUTLINED_FUNCTION_12_16();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v20);
  OUTLINED_FUNCTION_10_1();
  sub_237EF6590();
  v53 = OUTLINED_FUNCTION_40_3();
  sub_237C65484(v53, &qword_27DEAD5F0);
  sub_237EF65C0();
  sub_237EF6800();
  OUTLINED_FUNCTION_38_0();
}

void sub_237CD67F4()
{
  OUTLINED_FUNCTION_37_0();
  v124 = v0;
  v130 = v3;
  v131 = v4;
  v6 = v5;
  v120 = v7;
  v121 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v123 = v11;
  OUTLINED_FUNCTION_12_1();
  v129 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v111 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v128 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  *&v125 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6B0);
  OUTLINED_FUNCTION_1();
  v126 = v19;
  v127 = v18;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v111 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6B8);
  OUTLINED_FUNCTION_1();
  v118 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_53_0();
  v26 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v112 = (v30 - v31);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v116 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v115 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v136 = v37;
  OUTLINED_FUNCTION_11_1();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v111 - v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_42_1();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v111 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v111 - v46;
  v113 = v6;
  sub_237EF6960();
  v135 = v28;
  v48 = *(v28 + 16);
  v114 = v47;
  v132 = v48;
  v133 = v28 + 16;
  v48(v45, v47, v26);
  sub_237CDB130(v130, v125);
  sub_237EF6720();
  sub_237EF6550();
  sub_237EF6750();
  sub_237EF6850();
  (*(v126 + 8))(v22, v127);
  v119 = v23;
  v117 = v2;
  sub_237EF6610();
  v127 = *(v131 + 16);
  v134 = v1;
  v122 = v45;
  if (v127)
  {
    v49 = v26;
    v50 = 0;
    v126 = v131 + 32;
    v51 = (v111 + 8);
    v130 = v135 + 8;
    v52 = MEMORY[0x277D84F90];
    v131 = v135 + 32;
    v125 = xmmword_237F08A50;
    while (1)
    {
      v53 = *(v126 + 8 * v50);
      v54 = v128;
      sub_237EF6A30();
      v55 = sub_237EF6470();
      (*v51)(v54, v129);
      v56 = v55 - v53;
      if (__OFSUB__(v55, v53))
      {
        break;
      }

      v57 = v56 - 1;
      if (__OFSUB__(v56, 1))
      {
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6C0);
      v58 = swift_allocObject();
      *(v58 + 16) = v125;
      v59 = MEMORY[0x277D83B88];
      *(v58 + 56) = MEMORY[0x277D83B88];
      v60 = MEMORY[0x277D2CF50];
      *(v58 + 64) = MEMORY[0x277D2CF50];
      *(v58 + 72) = v50;
      *(v58 + 32) = v57;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 112) = 0u;
      *(v58 + 128) = 0u;
      *(v58 + 144) = 0;
      sub_237EF6B40();

      v132(v136, v41, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0B5D4(0, *(v52 + 16) + 1, 1, v52);
        v52 = v68;
      }

      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_237D0B5D4(v61 > 1, v62 + 1, 1, v52);
        v52 = v69;
      }

      ++v50;
      v63 = v135;
      v64 = *(v135 + 8);
      v64(v41, v49);
      *(v52 + 16) = v62 + 1;
      v65 = v52 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62;
      v66 = *(v63 + 32);
      v66(v65, v136, v49);
      v67 = v134;
      if (v127 == v50)
      {
        v129 = v130 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v136 = v131 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        sub_237EF6430();
        OUTLINED_FUNCTION_37_1();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
        v74 = v122;
        sub_237EF6AF0();
        v64(v67, v49);
        v75 = v49;
        v66(v67, v74, v49);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6C0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_237F08A50;
    v77 = MEMORY[0x277D2CF50];
    *(v76 + 56) = MEMORY[0x277D83B88];
    *(v76 + 64) = v77;
    *(v76 + 32) = -1;
    *(v76 + 72) = 0u;
    *(v76 + 88) = 0u;
    *(v76 + 104) = 0u;
    *(v76 + 120) = 0u;
    *(v76 + 136) = 0u;
    sub_237EF6B40();

    v78 = v135;
    v64 = *(v135 + 8);
    v129 = (v135 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v1, v26);
    v66 = *(v78 + 32);
    v136 = (v78 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v75 = v26;
    v66(v1, v45, v26);
LABEL_12:
    sub_237EF6960();
    v79 = type metadata accessor for LSTMFCN(0);
    v130 = type metadata accessor for LSTMFCN.ConvolutionBlock(0);
    OUTLINED_FUNCTION_9_13();
    v128 = sub_237CD9A98(v80, v81);
    v82 = v115;
    sub_237EF6850();
    v83 = v79;
    v127 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
    OUTLINED_FUNCTION_8_20();
    v126 = sub_237CD9A98(v84, v85);
    v86 = v116;
    OUTLINED_FUNCTION_60_1();
    sub_237EF6850();
    v87 = OUTLINED_FUNCTION_37_4();
    v88 = v129;
    (v64)(v87);
    v89 = OUTLINED_FUNCTION_17_11();
    (v66)(v89);
    v131 = v83;
    v90 = v112;
    sub_237EF6850();
    sub_237EF6850();
    v64(v90, v75);
    v91 = OUTLINED_FUNCTION_37_4();
    (v64)(v91);
    v92 = OUTLINED_FUNCTION_17_11();
    (v66)(v92);
    OUTLINED_FUNCTION_60_1();
    sub_237EF6850();
    v93 = OUTLINED_FUNCTION_37_4();
    v129 = v88;
    (v64)(v93);
    v94 = OUTLINED_FUNCTION_17_11();
    (v66)(v94);
    OUTLINED_FUNCTION_60_1();
    sub_237EF6850();
    v95 = OUTLINED_FUNCTION_37_4();
    (v64)(v95);
    v96 = OUTLINED_FUNCTION_17_11();
    (v66)(v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3B0);
    v97 = *(v135 + 72);
    v98 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_237F04760;
    v100 = v99 + v98;
    v101 = v132;
    v132(v99 + v98, v134, v75);
    v101(v100 + v97, v82, v75);
    sub_237EF6430();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
    sub_237EF6970();
    v106 = OUTLINED_FUNCTION_37_4();
    (v64)(v106);
    v107 = OUTLINED_FUNCTION_17_11();
    (v66)(v107);
    sub_237EF6820();
    OUTLINED_FUNCTION_60_1();
    sub_237EF6850();
    v101(v120, v86, v75);
    v108 = v119;
    v109 = v117;
    sub_237EF6600();
    v64(v86, v75);
    v110 = OUTLINED_FUNCTION_37_4();
    (v64)(v110);
    v64(v122, v75);
    v64(v134, v75);
    (*(v118 + 8))(v109, v108);
    v64(v114, v75);
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237CD7288()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_25_6();
  v60 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v59 = v5;
  OUTLINED_FUNCTION_12_1();
  v58 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v61 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v65 = v13;
  v14 = OUTLINED_FUNCTION_12_1();
  v15 = type metadata accessor for LSTMFCN(v14);
  v16 = *(v0 + *(v15 + 48));
  OUTLINED_FUNCTION_20_7();
  v19 = sub_237CD9A98(v17, v18);
  if ((sub_237EF6880() & 1) == 0)
  {
    sub_237C6514C();
    swift_allocError();
    *v47 = 0xD000000000000021;
    v47[1] = 0x8000000237EFCF30;
    swift_willThrow();
    OUTLINED_FUNCTION_6_18();
    sub_237CDB1F4(v0, v48);
LABEL_18:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v64 = v7;
  v20 = v3;
  v21 = *(v0 + *(v15 + 52));
  v22 = sub_237EF8230();
  v23 = sub_237EF6870();
  v55 = *(v23 + 16);
  if (!v55)
  {

LABEL_17:
    sub_237CDB1F4(v0, type metadata accessor for LSTMFCN);
    goto LABEL_18;
  }

  v54 = v19;
  v24 = v1;
  v49[1] = v21;
  v49[2] = v16;
  v56 = v0;
  v25 = 0;
  v52 = (v64 + 8);
  v53 = (v20 + 8);
  v49[3] = v61 + 40;
  v49[4] = v61 + 32;
  v26 = v23 + 48;
  v50 = v23;
  v51 = v10;
  while (v25 < *(v23 + 16))
  {
    v62 = v25;
    v27 = *(v26 - 8);
    v64 = *(v26 - 16);
    sub_237EF8260();

    v28 = v57;
    sub_237EF68A0();
    v29 = v59;
    sub_237EF6A30();
    sub_237EF6440();
    v30 = (*v53)(v29, v60);
    MEMORY[0x28223BE20](v30);
    v49[-2] = v28;
    v31 = v24;
    v32 = v64;
    sub_237EF7DE0();
    v63 = v31;
    (*v52)(v28, v58);
    swift_isUniquelyReferenced_nonNull_native();
    v33 = sub_237D2FC30();
    if (__OFADD__(*(v22 + 16), (v34 & 1) == 0))
    {
      goto LABEL_20;
    }

    v35 = v33;
    v36 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF790);
    if (sub_237EF96B0())
    {
      v37 = sub_237D2FC30();
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_22;
      }

      v35 = v37;
    }

    if (v36)
    {

      v39 = OUTLINED_FUNCTION_56_1();
      (*(v40 + 40))(v39, v65, v51);
    }

    else
    {
      *(v22 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v41 = (*(v22 + 48) + 16 * v35);
      *v41 = v32;
      v41[1] = v27;
      v42 = OUTLINED_FUNCTION_56_1();
      (*(v43 + 32))(v42, v65, v51);

      v44 = *(v22 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_21;
      }

      *(v22 + 16) = v46;
    }

    v24 = v63;
    v25 = v62 + 1;
    v26 += 24;
    v23 = v50;
    if (v55 == v62 + 1)
    {

      v0 = v56;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_237EFA020();
  __break(1u);
}

void sub_237CD77C0()
{
  OUTLINED_FUNCTION_13_4();
  v61 = v0;
  v2 = v1;
  v58 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  v57 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v56 = v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v54 = v13 - v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v53 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  v66 = &v46 - v18;
  sub_237CD6388();
  type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_20_7();
  v51 = sub_237CD9A98(v19, v20);
  v59 = v2;
  v21 = sub_237EF6870();
  v22 = 0;
  v60 = *(v21 + 16);
  v49 = v11 + 32;
  v50 = v11 + 16;
  v55 = v11;
  v47 = (v4 + 8);
  v48 = v11 + 8;
  v62 = v21;
  v23 = (v21 + 48);
  while (1)
  {
    if (v60 == v22)
    {

      goto LABEL_11;
    }

    v24 = v61;
    if (v22 >= *(v62 + 16))
    {
      break;
    }

    v25 = *v23;
    if (!*(v61 + 16))
    {

      goto LABEL_10;
    }

    sub_237EF8260();
    sub_237EF8260();
    v26 = sub_237D2FC30();
    v28 = v27;

    if ((v28 & 1) == 0)
    {

LABEL_10:

      sub_237C6514C();
      swift_allocError();
      *v44 = 0xD000000000000021;
      v44[1] = 0x8000000237EFCF30;
      swift_willThrow();

      OUTLINED_FUNCTION_6_18();
      sub_237CDB1F4(v59, v45);
LABEL_11:
      OUTLINED_FUNCTION_12_6();
      return;
    }

    v29 = *(v24 + 56);
    v65 = v22;
    v30 = v55;
    v31 = v29 + *(v55 + 72) * v26;
    v32 = *(v55 + 16);
    v33 = v53;
    v63 = v25;
    v34 = v52;
    v32(v53, v31, v52);

    v35 = *(v30 + 32);
    v64 = v23;
    v36 = v66;
    v35(v66, v33, v34);
    v37 = v54;
    v32(v54, v36, v34);
    sub_237C651A0();
    v38 = v57;
    v39 = v58;
    sub_237EF7F00();
    v40 = *(v30 + 8);
    v41 = v65;
    v40(v37, v34);
    v42 = v56;
    sub_237EF6840();

    (*v47)(v38, v39);
    sub_237C65484(v42, &qword_27DEAD2C0);
    v43 = v64;
    v40(v66, v34);
    v23 = v43 + 3;
    v22 = v41 + 1;
  }

  __break(1u);
}

void sub_237CD7C58()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_53_0();
  type metadata accessor for LSTMFCN.ConvolutionBlock(0);
  sub_237EF65F0();
  sub_237EF65C0();
  sub_237EF65B0();
  sub_237EF6BF0();
  sub_237EF64B0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_10_1();
  sub_237EF65E0();
  sub_237C65484(v0, &qword_27DEAD5F0);
  sub_237EF65C0();
  sub_237EF68F0();
  OUTLINED_FUNCTION_38_0();
}

void sub_237CD7D94()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v3 = sub_237EF6720();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  sub_237CD67F4();
  sub_237C65484(v0, &qword_27DEAE3B8);
  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CD7EC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836348268 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x31766E6F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x32766E6F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x33766E6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 3237235 && a2 == 0xE300000000000000;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 3302771 && a2 == 0xE300000000000000;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C6F6F70 && a2 == 0xE700000000000000;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65736E6564 && a2 == 0xE500000000000000;
                if (v12 || (sub_237EF9D40() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x756F437373616C63 && a2 == 0xEA0000000000746ELL;
                  if (v13 || (sub_237EF9D40() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000015 && 0x8000000237EFB220 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_237EF9D40();

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

unint64_t sub_237CD81D0(char a1)
{
  result = 1836348268;
  switch(a1)
  {
    case 1:
      result = 0x31766E6F63;
      break;
    case 2:
      result = 0x32766E6F63;
      break;
    case 3:
      result = 0x33766E6F63;
      break;
    case 4:
      result = 3237235;
      break;
    case 5:
      result = 3302771;
      break;
    case 6:
      result = 0x676E696C6F6F70;
      break;
    case 7:
      result = 0x65736E6564;
      break;
    case 8:
      result = 0x756F437373616C63;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237CD82C8()
{
  OUTLINED_FUNCTION_13_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF710);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_47_0();
  sub_237CDB1A0();
  OUTLINED_FUNCTION_26_7();
  sub_237EFA1B0();
  sub_237EF6750();
  OUTLINED_FUNCTION_21_8();
  sub_237CD9A98(v2, v3);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_24_5();
  sub_237EF9A70();
  if (!v0)
  {
    type metadata accessor for LSTMFCN(0);
    OUTLINED_FUNCTION_30_9();
    type metadata accessor for LSTMFCN.ConvolutionBlock(0);
    OUTLINED_FUNCTION_9_13();
    sub_237CD9A98(v4, v5);
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_14_15();
    type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
    OUTLINED_FUNCTION_8_20();
    sub_237CD9A98(v6, v7);
    OUTLINED_FUNCTION_14_15();
    OUTLINED_FUNCTION_14_15();
    sub_237CDB2FC();
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A70();
    sub_237EF6820();
    OUTLINED_FUNCTION_2_26();
    sub_237CD9A98(v8, v9);
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A70();
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
    OUTLINED_FUNCTION_24_5();
    sub_237EF9A50();
  }

  v10 = OUTLINED_FUNCTION_49_2();
  v11(v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237CD85E4()
{
  OUTLINED_FUNCTION_13_4();
  v70 = v0;
  v5 = v4;
  v58 = v6;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v65 = v8;
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  v59 = v9;
  v10 = OUTLINED_FUNCTION_12_1();
  v61 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_26();
  v60 = v12 - v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v62 = &v57 - v15;
  v16 = OUTLINED_FUNCTION_12_1();
  v63 = type metadata accessor for LSTMFCN.ConvolutionBlock(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_42_1();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = sub_237EF6750();
  OUTLINED_FUNCTION_1();
  v68 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_53_0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6D8);
  OUTLINED_FUNCTION_1();
  v64 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  v73 = type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_3();
  v71 = v5;
  v72 = v30;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237CDB1A0();
  v69 = v2;
  v31 = v70;
  sub_237EFA190();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    v70 = v1;
    OUTLINED_FUNCTION_21_8();
    sub_237CD9A98(v32, v33);
    OUTLINED_FUNCTION_58_1();
    sub_237EF9970();
    v34 = *(v68 + 32);
    v35 = v72;
    v57 = v24;
    v34(v72, v3, v24);
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_9_13();
    sub_237CD9A98(v36, v37);
    sub_237EF9970();
    OUTLINED_FUNCTION_3_25();
    sub_237CDB24C(v23, v35 + v38);
    OUTLINED_FUNCTION_59_1();
    sub_237EF9970();
    v39 = v73;
    OUTLINED_FUNCTION_3_25();
    sub_237CDB24C(v21, v35 + v40);
    v41 = v70;
    OUTLINED_FUNCTION_59_1();
    sub_237EF9970();
    OUTLINED_FUNCTION_3_25();
    sub_237CDB24C(v41, v35 + v42);
    OUTLINED_FUNCTION_8_20();
    sub_237CD9A98(v43, v44);
    v45 = v62;
    OUTLINED_FUNCTION_41_2();
    sub_237EF9970();
    OUTLINED_FUNCTION_18_11();
    sub_237CDB24C(v45, v46);
    v47 = v60;
    OUTLINED_FUNCTION_41_2();
    sub_237EF9970();
    OUTLINED_FUNCTION_18_11();
    sub_237CDB24C(v47, v48);
    sub_237CDB2A8();
    OUTLINED_FUNCTION_41_2();
    sub_237EF9970();
    OUTLINED_FUNCTION_2_26();
    sub_237CD9A98(v49, v50);
    v51 = v59;
    OUTLINED_FUNCTION_41_2();
    sub_237EF9970();
    (*(v65 + 32))(v35 + *(v39 + 44), v51, v66);
    v75 = 8;
    OUTLINED_FUNCTION_41_2();
    *(v35 + *(v39 + 48)) = sub_237EF9950();
    v74 = 9;
    OUTLINED_FUNCTION_41_2();
    v52 = sub_237EF9950();
    v53 = OUTLINED_FUNCTION_10_18();
    v54(v53);
    v55 = v72;
    *(v72 + *(v73 + 52)) = v52;
    sub_237CDB3A4(v55, v58);
    __swift_destroy_boxed_opaque_existential_1(v71);
    OUTLINED_FUNCTION_6_18();
    sub_237CDB1F4(v55, v56);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CD8E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CD7EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CD8E98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237CD81C8();
  *a1 = result;
  return result;
}

uint64_t sub_237CD8EC0(uint64_t a1)
{
  v2 = sub_237CDB1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CD8EFC(uint64_t a1)
{
  v2 = sub_237CDB1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CD8F6C()
{
  sub_237CD9A98(qword_27DEAE400, type metadata accessor for LSTMFCN);

  return sub_237EF6890();
}

uint64_t sub_237CD8FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_237CD9A98(qword_27DEAE400, type metadata accessor for LSTMFCN);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237CD906C()
{
  v1 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_42_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  type metadata accessor for LSTMFCN.ConvolutionBlock(0);
  sub_237EF6930();
  sub_237EF6850();
  sub_237EF6C30();
  sub_237EF6850();
  v8 = *(v3 + 8);
  v8(v0, v1);
  sub_237EF6760();
  return v8(v7, v1);
}

uint64_t sub_237CD91B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1986948963 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F4E6863746162 && a2 == 0xE90000000000006DLL)
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

uint64_t sub_237CD9280(char a1)
{
  if (a1)
  {
    return 0x726F4E6863746162;
  }

  else
  {
    return 1986948963;
  }
}

uint64_t sub_237CD92B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF778);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  OUTLINED_FUNCTION_47_0();
  sub_237CDB400();
  OUTLINED_FUNCTION_26_7();
  sub_237EFA1B0();
  v12[15] = 0;
  sub_237EF6930();
  OUTLINED_FUNCTION_23_7();
  sub_237CD9A98(v7, v8);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_48_2();
  sub_237EF9A70();
  if (!v0)
  {
    type metadata accessor for LSTMFCN.ConvolutionBlock(0);
    OUTLINED_FUNCTION_30_9();
    sub_237EF6C30();
    OUTLINED_FUNCTION_22_9();
    sub_237CD9A98(v9, v10);
    OUTLINED_FUNCTION_48_2();
    sub_237EF9A70();
  }

  return (*(v3 + 8))(v6, v1);
}

void sub_237CD9460()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v2;
  v29 = v4;
  sub_237EF6C30();
  OUTLINED_FUNCTION_1();
  v32 = v6;
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v31 = sub_237EF6930();
  OUTLINED_FUNCTION_1();
  v30 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_53_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF758);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for LSTMFCN.ConvolutionBlock(0);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v19 = *(v18 + 28);
  sub_237EF65F0();
  sub_237EF65C0();
  sub_237EF65B0();
  sub_237EF6BF0();
  v20 = OUTLINED_FUNCTION_49_2();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_237CDB400();
  sub_237EFA190();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    (*(v32 + 8))(v17 + v19, v33);
  }

  else
  {
    OUTLINED_FUNCTION_23_7();
    sub_237CD9A98(v22, v23);
    OUTLINED_FUNCTION_58_1();
    sub_237EF9970();
    (*(v30 + 32))(v17, v1, v31);
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_22_9();
    sub_237CD9A98(v24, v25);
    sub_237EF9970();
    v26 = OUTLINED_FUNCTION_27_6();
    v27(v26);
    (*(v32 + 40))(v17 + v19, v9, v33);
    sub_237CDB3A4(v17, v29);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_1_23();
    sub_237CDB1F4(v17, v28);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CD9834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CD91B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CD985C(uint64_t a1)
{
  v2 = sub_237CDB400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CD9898(uint64_t a1)
{
  v2 = sub_237CDB400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CD9908()
{
  sub_237CD9A98(&qword_27DEAF6C8, type metadata accessor for LSTMFCN.ConvolutionBlock);

  return sub_237EF6890();
}

uint64_t sub_237CD9984(uint64_t a1, uint64_t a2)
{
  v4 = sub_237CD9A98(&qword_27DEAF6C8, type metadata accessor for LSTMFCN.ConvolutionBlock);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237CD9A98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_237CD9B28()
{
  OUTLINED_FUNCTION_37_0();
  sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v26 = v1;
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_3();
  v25 = v2;
  OUTLINED_FUNCTION_12_1();
  v3 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_237EF6850();
  sub_237EF6820();
  sub_237EF6850();
  sub_237EF6760();
  v12 = *(v5 + 8);
  v12(v9, v3);
  v13 = OUTLINED_FUNCTION_50_2();
  (v12)(v13);
  v14 = *(v5 + 32);
  v15 = OUTLINED_FUNCTION_29_8();
  v14(v15);
  type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
  sub_237EF6850();
  sub_237EF6BB0();
  v12(v9, v3);
  v16 = OUTLINED_FUNCTION_50_2();
  (v12)(v16);
  v17 = OUTLINED_FUNCTION_29_8();
  v14(v17);
  sub_237EF69A0();
  v18 = OUTLINED_FUNCTION_50_2();
  (v12)(v18);
  v19 = OUTLINED_FUNCTION_29_8();
  v14(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_237F08A50;
  *(v20 + 32) = vdupq_n_s64(1uLL);
  sub_237EF6A30();
  v21 = sub_237EF6470();
  (*(v26 + 8))(v25, v27);
  *(v20 + 48) = v21;
  sub_237EF6A50();

  v22 = OUTLINED_FUNCTION_50_2();
  (v12)(v22);
  v23 = OUTLINED_FUNCTION_29_8();
  v14(v23);
  sub_237EF69D0();
  v24 = OUTLINED_FUNCTION_50_2();
  (v12)(v24);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237CD9E64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696C6F6F70 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3165736E6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x3265736E6564 && a2 == 0xE600000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000237EFCF60 == a2)
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

unint64_t sub_237CD9FC4(char a1)
{
  result = 0x676E696C6F6F70;
  switch(a1)
  {
    case 1:
      result = 0x3165736E6564;
      break;
    case 2:
      result = 0x3265736E6564;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237CDA044()
{
  OUTLINED_FUNCTION_13_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF750);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_47_0();
  sub_237CDB350();
  OUTLINED_FUNCTION_26_7();
  sub_237EFA1B0();
  sub_237CDB2FC();
  OUTLINED_FUNCTION_35_4();
  sub_237EF9A70();
  if (!v0)
  {
    OUTLINED_FUNCTION_30_9();
    sub_237EF6820();
    OUTLINED_FUNCTION_2_26();
    sub_237CD9A98(v2, v3);
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A50();
  }

  v4 = OUTLINED_FUNCTION_49_2();
  v5(v4);
  OUTLINED_FUNCTION_12_6();
}

void sub_237CDA204()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v31 = v3;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v34 = v4;
  v35 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF740);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v33 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v36 = v16;
  v17 = OUTLINED_FUNCTION_49_2();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  sub_237CDB350();
  sub_237EFA190();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v30[1] = v13;
    sub_237CDB2A8();
    OUTLINED_FUNCTION_57_1();
    sub_237EF9970();
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_2_26();
    sub_237CD9A98(v19, v20);
    v21 = v34;
    OUTLINED_FUNCTION_57_1();
    sub_237EF9970();
    v30[0] = *(v35 + 32);
    (v30[0])(v36, v11, v21);
    v22 = v8;
    OUTLINED_FUNCTION_57_1();
    sub_237EF9970();
    v23 = v33;
    v24 = v36;
    (v30[0])(v36 + *(v33 + 24), v22, v21);
    v25 = v32;
    OUTLINED_FUNCTION_57_1();
    v26 = sub_237EF9950();
    v27 = OUTLINED_FUNCTION_28_7();
    v28(v27, v25);
    *(v24 + *(v23 + 28)) = v26;
    sub_237CDB3A4(v24, v31);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_7_18();
    sub_237CDB1F4(v24, v29);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CDA61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CD9E64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CDA644(uint64_t a1)
{
  v2 = sub_237CDB350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CDA680(uint64_t a1)
{
  v2 = sub_237CDB350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CDA6F0()
{
  sub_237CD9A98(&qword_27DEAF6D0, type metadata accessor for LSTMFCN.SqueezeExciteBlock);

  return sub_237EF6890();
}

uint64_t sub_237CDA76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237CD9A98(&qword_27DEAF6D0, type metadata accessor for LSTMFCN.SqueezeExciteBlock);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237CDA9A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F437373616C63 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000237EFB220 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_237CDAAC4(char a1)
{
  if (!a1)
  {
    return 0x756F437373616C63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6574656D61726170;
}

void sub_237CDAB24()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF678);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_45_1();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237CDAF7C();
  sub_237EFA1B0();
  OUTLINED_FUNCTION_35_4();
  sub_237EF9A50();
  if (!v0)
  {
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF688);
    sub_237CDAFD0();
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_35_4();
    sub_237EF9A70();
  }

  v4 = OUTLINED_FUNCTION_49_2();
  v5(v4);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237CDACA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF698);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237CDAF7C();
  OUTLINED_FUNCTION_26_7();
  sub_237EFA190();
  v7 = sub_237EF9950();
  OUTLINED_FUNCTION_30_9();
  sub_237EF9950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF688);
  sub_237CDB080();
  sub_237EF9970();
  (*(v5 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237CDAE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237CDA9A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237CDAEB4(uint64_t a1)
{
  v2 = sub_237CDAF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237CDAEF0(uint64_t a1)
{
  v2 = sub_237CDAF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237CDAF2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237CDACA8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_237CDAF7C()
{
  result = qword_27DEAF680;
  if (!qword_27DEAF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF680);
  }

  return result;
}

unint64_t sub_237CDAFD0()
{
  result = qword_27DEAF690;
  if (!qword_27DEAF690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF688);
    sub_237C86400(&qword_27DEADE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF690);
  }

  return result;
}

unint64_t sub_237CDB080()
{
  result = qword_27DEAF6A0;
  if (!qword_27DEAF6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF688);
    sub_237C86400(&qword_27DEADE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF6A0);
  }

  return result;
}

uint64_t sub_237CDB130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237CDB1A0()
{
  result = qword_27DEAF6E0;
  if (!qword_27DEAF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF6E0);
  }

  return result;
}

uint64_t sub_237CDB1F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237CDB24C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_25_6();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_237CDB2A8()
{
  result = qword_27DEAF700;
  if (!qword_27DEAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF700);
  }

  return result;
}

unint64_t sub_237CDB2FC()
{
  result = qword_27DEAF730;
  if (!qword_27DEAF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF730);
  }

  return result;
}

unint64_t sub_237CDB350()
{
  result = qword_27DEAF748;
  if (!qword_27DEAF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF748);
  }

  return result;
}

uint64_t sub_237CDB3A4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_25_6();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_237CDB400()
{
  result = qword_27DEAF760;
  if (!qword_27DEAF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAF760);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LSTMFCN.ConvolutionBlock.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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