uint64_t sub_217516700(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 24) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2175168BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_217516BCC()
{
  result = qword_27CB28EA8;
  if (!qword_27CB28EA8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CB28EA8);
  }

  return result;
}

uint64_t sub_217516C14()
{
  OUTLINED_FUNCTION_10();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(v2 + 16);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_2177528F8();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217516D84, 0, 0);
}

uint64_t sub_217516D84()
{
  v1 = v0[11];
  __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);
  v2 = *(v1 + 16);
  v3 = v0[13];
  OUTLINED_FUNCTION_4_70();
  v0[14] = v4;
  v0[15] = v5;
  v4(v3);
  if (OUTLINED_FUNCTION_6_51() == 1)
  {
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[4];
    v10 = *(v8 + 8);
    v0[16] = v10;
    v0[17] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v11 = *(v9 + 16);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_1_70(v12);

    return sub_2174E5EEC();
  }

  else
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
    v14 = OUTLINED_FUNCTION_0_77();
    v15(v14);

    OUTLINED_FUNCTION_20_0();

    return v16();
  }
}

uint64_t sub_217516F00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_217516FEC, 0, 0);
}

uint64_t sub_217516FEC()
{
  v1 = v0[9];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v3 = OUTLINED_FUNCTION_0_77();
    v4(v3);

    OUTLINED_FUNCTION_20_0();

    return v5();
  }

  else
  {
    v7 = v0[4];
    sub_2173DA2E4(v1);
    v8 = v7[1];
    v12 = (*v7 + **v7);
    v9 = (*v7)[1];
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_217517194;
    v11 = v0[8];

    return v12(v11);
  }
}

uint64_t sub_217517194()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_217517554;
  }

  else
  {
    v7 = sub_217517298;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_217517298()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 96), *(v0 + 32) + *(*(v0 + 24) + 44), *(v0 + 80));
  if (OUTLINED_FUNCTION_6_51() == 1)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 16);
    v4(v10, v6);
    v4(v5, v6);
    (*(v9 + 32))(v10, v7, v8);
    v11 = v10;
    v12 = v8;
  }

  else
  {
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);
    v17 = *(v15 + 32);
    v17(v13, *(v0 + 96), v14);
    v18 = *(v16 + 24);
    v19 = sub_217751F08();
    v20 = *(v15 + 8);
    v20(v13, v14);
    if (v19)
    {
      v20(*(v0 + 64), *(v0 + 40));
      goto LABEL_7;
    }

    v21 = *(v0 + 136);
    v22 = *(v0 + 64);
    v23 = *(v0 + 40);
    v24 = *(v0 + 16);
    (*(v0 + 128))(v24, *(v0 + 80));
    v17(v24, v22, v23);
    v11 = v24;
    v12 = v23;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
LABEL_7:
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  OUTLINED_FUNCTION_4_70();
  *(v0 + 120) = v27;
  v28(v26);
  v29 = OUTLINED_FUNCTION_6_51();
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  if (v29 == 1)
  {
    v33 = *(v0 + 32);
    v34 = *(v32 + 8);
    *(v0 + 128) = v34;
    *(v0 + 136) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v30, v31);
    v35 = *(v33 + 16);
    v36 = swift_task_alloc();
    *(v0 + 144) = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_1_70();

    return sub_2174E5EEC();
  }

  else
  {
    (*(v32 + 8))(v30, v31);
    v38 = OUTLINED_FUNCTION_0_77();
    v39(v38);

    OUTLINED_FUNCTION_20_0();

    return v40();
  }
}

uint64_t sub_217517554()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  (*(v0 + 128))(*(v0 + 16), *(v0 + 80));

  OUTLINED_FUNCTION_20_0();
  v8 = *(v0 + 160);

  return v7();
}

uint64_t sub_2175175FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return sub_217516C14();
}

uint64_t sub_2175176A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_217517778;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_217517778()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t MusicCatalogChartKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicCatalogChartKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2171FF30C(a1, v6);
  sub_21737F4D4();
  sub_2175179AC();
  sub_217752258();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v6[47];
  }

  return result;
}

unint64_t sub_2175179AC()
{
  result = qword_27CB28EB0;
  if (!qword_27CB28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EB0);
  }

  return result;
}

uint64_t MusicCatalogChartKind.encode(to:)()
{
  v2 = *v0;
  sub_217517A68();
  sub_2175179AC();
  return sub_217752208();
}

unint64_t sub_217517A68()
{
  result = qword_27CB28EB8;
  if (!qword_27CB28EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EB8);
  }

  return result;
}

uint64_t MusicCatalogChartKind.description.getter()
{
  v1 = 0x706F54797469632ELL;
  if (*v0 != 1)
  {
    v1 = 0x6C47796C6961642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C5074736F6D2ELL;
  }
}

unint64_t sub_217517B60()
{
  result = qword_27CB28EC0;
  if (!qword_27CB28EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28EC8, &qword_217772E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EC0);
  }

  return result;
}

unint64_t sub_217517BC8()
{
  result = qword_27CB28ED0;
  if (!qword_27CB28ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28ED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogChartKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnyPropertyProviderExtendedStorage.subscript.getter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_71();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v2 + 40))(a1, v1, v2);
}

uint64_t AnyPropertyProviderExtendedStorage.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_217517DEC(a1, v9);
  v6 = OUTLINED_FUNCTION_1_71();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v3 + 48))(v9, a2, v2, v3);
  return sub_2171F0790(a1, &qword_27CB2AD40, &qword_2177583F0);
}

uint64_t sub_217517DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PropertyProviderExtendedStorage.eraseToAnyPropertyProviderExtendedStorage()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_41_0(a1);
  v5 = *(v4 + 16);

  return v5();
}

uint64_t AnyPropertyProviderExtendedStorage.merge<A>(_:with:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  sub_2171FF30C(a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  if (swift_dynamicCast())
  {
    v16[0] = v12;
    v16[1] = v13;
    v17 = v14;
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
    (*(v8 + 64))(a1, v16, *(v6 + 216), v7, v8);
    return sub_217350E74(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_2171F0790(&v12, &qword_27CB24BA8, &unk_217772FF0);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v10);
    return (*(v11 + 64))(a1, a2, *(v6 + 216), v10, v11);
  }
}

uint64_t PropertyProviderExtendedStorage.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 40))(v9, a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, a3);
}

uint64_t PropertyProviderExtendedStorage<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v36 - v15;
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  (*(v33 + 16))(v23, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a2);
    (*(v25 + 32))(v32, v16, a2);
    v34 = sub_217751F08();
    (*(v25 + 8))(v32, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, a2);
    (*(v10 + 8))(v16, v8);
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84308] + 8);
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 64);
  v6 = MEMORY[0x28223BE20](v4, v5);
  (*(v8 + 16))(&v10 - v7, v6);
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)(void *a1, uint64_t a2)
{
  v2 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v5 = &v10[-v4];
  sub_217517DEC(v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = *(v2 + 16);
  v8 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v5, v8 ^ 1u, 1, v7);
  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t PropertyProviderExtendedStorage.update<A>(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_217517DEC(a2, v5);
  if (v5[3])
  {
    v3 = *(*(v2 + *MEMORY[0x277D84308] + 8) + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {
    sub_2171F0790(v5, &qword_27CB2AD40, &qword_2177583F0);
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  OUTLINED_FUNCTION_56_0();
  return swift_setAtWritableKeyPath();
}

uint64_t AnyPropertyProviderExtendedStorage.wrappedExtendedStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_2171F3F0C(a1, v1);
}

uint64_t AnyPropertyProviderExtendedStorage.init(from:)(uint64_t *a1)
{
  v2 = sub_217752B38();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217753298();
  sub_217752B08();
  v13 = sub_217752B48();
  swift_allocError();
  v15 = v14;
  (*(v4 + 16))(v14, v11, v2);
  v16 = *MEMORY[0x277D84168];
  OUTLINED_FUNCTION_41_0(v13);
  (*(v17 + 104))(v15);
  swift_willThrow();
  (*(v4 + 8))(v11, v2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyPropertyProviderExtendedStorage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_217752B68();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532D8();
  sub_217752B08();
  v15 = sub_217752B78();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v17[3] = &type metadata for AnyPropertyProviderExtendedStorage;
  v19 = swift_allocObject();
  *v17 = v19;
  sub_2173511EC(v2, v19 + 16);
  (*(v6 + 16))(v17 + v18, v13, v4);
  v20 = *MEMORY[0x277D841A8];
  OUTLINED_FUNCTION_41_0(v15);
  (*(v21 + 104))(v17);
  swift_willThrow();
  return (*(v6 + 8))(v13, v4);
}

uint64_t static AnyPropertyProviderExtendedStorage.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_217518AB4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 88))(a1, v3, v4);
}

uint64_t sub_217518B10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_217517DEC(a1, v5);

  return AnyPropertyProviderExtendedStorage.subscript.setter(v5, v3);
}

void (*AnyPropertyProviderExtendedStorage.subscript.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v5;
  v5[12] = a2;
  v5[13] = v2;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 40))(a2, v6, v7);
  return sub_217518BF8;
}

void sub_217518BF8(uint64_t *a1, char a2)
{
  v5 = *a1;
  v7 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  if (a2)
  {
    sub_217517DEC(*a1, (v5 + 32));
    sub_217517DEC((v5 + 32), (v5 + 64));
    v8 = OUTLINED_FUNCTION_1_71();
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    OUTLINED_FUNCTION_5_54();
    v4(v5 + 64, v7, v2, v3);
    sub_2171F0790((v5 + 32), &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {
    sub_217517DEC(*a1, (v5 + 32));
    v10 = OUTLINED_FUNCTION_1_71();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    OUTLINED_FUNCTION_5_54();
    v4(v5 + 32, v7, v2, v3);
  }

  sub_2171F0790(v5, &qword_27CB2AD40, &qword_2177583F0);

  free(v5);
}

uint64_t AnyPropertyProviderExtendedStorage.knownProperties.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t AnyPropertyProviderExtendedStorage.hashValue.getter()
{
  sub_2177531E8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_56_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 88))(v6, v1, v2);
  return sub_217753238();
}

void (*sub_217518DE8(void *a1, uint64_t a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = AnyPropertyProviderExtendedStorage.subscript.modify(v4, a2);
  return sub_2174C6BD0;
}

uint64_t sub_217518E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_217519048();

  return PropertyProviderExtendedStorage<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_217518EFC()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 88))(v4, v1, v2);
  return sub_217753238();
}

unint64_t sub_217518F6C(uint64_t a1)
{
  *(a1 + 8) = sub_217518F9C();
  result = sub_217518FF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217518F9C()
{
  result = qword_280BE2E20;
  if (!qword_280BE2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E20);
  }

  return result;
}

unint64_t sub_217518FF0()
{
  result = qword_280BE2E28;
  if (!qword_280BE2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E28);
  }

  return result;
}

unint64_t sub_217519048()
{
  result = qword_27CB28ED8;
  if (!qword_27CB28ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28ED8);
  }

  return result;
}

void *CloudAttribute<A>.convertToPreviewAsset()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(__src, v1, sizeof(__src));
  OUTLINED_FUNCTION_104(__src);
  if (v4)
  {
    sub_2172A497C(v14);
  }

  else
  {
    memcpy(v14, __src, 0x1B8uLL);
    memcpy(v10, __dst, sizeof(v10));
    sub_2171F5110(v10, v13, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v12);
    memcpy(v11, v14, sizeof(v11));
    sub_2171F0738(v11, &qword_27CB243F0, &qword_21775D690);
    memcpy(v13, v12, 0x221uLL);
    nullsub_1(v13, v5);
    memcpy(v14, v13, 0x221uLL);
  }

  v6 = type metadata accessor for CloudPreviewAsset();
  v7 = *(v6 + 20);
  v8 = type metadata accessor for PreviewAsset();
  sub_2171F5110(v2 + v7, a1 + *(v8 + 20), &unk_27CB277C0, &qword_217758DC0);
  sub_2171F5110(v2 + *(v6 + 24), a1 + *(v8 + 24), &unk_27CB277C0, &qword_217758DC0);
  return memcpy(a1, v14, 0x221uLL);
}

uint64_t type metadata accessor for CloudPreviewAsset()
{
  result = qword_280BE3D68;
  if (!qword_280BE3D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PreviewAsset.convertToCloudPreviewAssetAttribute()()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = type metadata accessor for CloudPreviewAsset();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  memcpy(v22, v0, sizeof(v22));
  memcpy(v23, v0, 0x221uLL);
  OUTLINED_FUNCTION_104(v23);
  if (v11)
  {
    sub_2172E22C0(v17);
  }

  else
  {
    memcpy(v17, v23, 0x221uLL);
    memcpy(v18, v22, 0x221uLL);
    sub_217284028(v18, v19);
    Artwork.convertToCloudArtworkAttribute()(v20);
    memcpy(v19, v17, 0x221uLL);
    sub_217284084(v19);
    memcpy(v21, v20, sizeof(v21));
    nullsub_1(v21, v12);
    memcpy(v17, v21, 0x1B8uLL);
  }

  v13 = type metadata accessor for PreviewAsset();
  v14 = *(v3 + 20);
  OUTLINED_FUNCTION_17_32(*(v13 + 20));
  v15 = *(v3 + 24);
  OUTLINED_FUNCTION_17_32(*(v13 + 24));
  memcpy(v10, v17, 0x1B8uLL);
  sub_217519534(v10, v2);
  v16 = sub_217751DC8();
  sub_217519598(v10);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) + 28)) = v16;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217519534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPreviewAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217519598(uint64_t a1)
{
  v2 = type metadata accessor for CloudPreviewAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static CloudPreviewAsset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_6_1();
  v84 = v21 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v80 - v25;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v27 = OUTLINED_FUNCTION_43(v85);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_6_1();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v80 - v36;
  OUTLINED_FUNCTION_12_33();
  memcpy(v38, v39, v40);
  OUTLINED_FUNCTION_11_3();
  memcpy(v41, v42, v43);
  OUTLINED_FUNCTION_12_33();
  memcpy(v44, v45, v46);
  OUTLINED_FUNCTION_11_3();
  memcpy(v47, v48, v49);
  OUTLINED_FUNCTION_12_33();
  memcpy(v50, v51, v52);
  OUTLINED_FUNCTION_104(&v94);
  if (v53)
  {
    OUTLINED_FUNCTION_19_26(v89);
    OUTLINED_FUNCTION_104(v89);
    if (v53)
    {
      v82 = v15;
      v83 = v9;
      memcpy(v91, v90, sizeof(v91));
      OUTLINED_FUNCTION_23_2(v92, v88);
      OUTLINED_FUNCTION_23_2(v93, v88);
      sub_2171F0738(v91, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_10;
    }

LABEL_8:
    memcpy(v89, v90, sizeof(v89));
    sub_2171F5110(v92, v91, &qword_27CB25000, &unk_21776EA00);
    sub_2171F5110(v93, v91, &qword_27CB25000, &unk_21776EA00);
    v54 = &unk_27CB25008;
    v55 = &unk_21778F850;
    v56 = v89;
LABEL_29:
    sub_2171F0738(v56, v54, v55);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_19_26(v88);
  OUTLINED_FUNCTION_104(v88);
  if (v53)
  {
    goto LABEL_8;
  }

  v82 = v15;
  v83 = v9;
  OUTLINED_FUNCTION_19_26(v86);
  OUTLINED_FUNCTION_19_26(v89);
  memcpy(v91, v90, sizeof(v91));
  sub_2171F5110(v92, v87, &qword_27CB25000, &unk_21776EA00);
  sub_2171F5110(v93, v87, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v58 = v57;
  sub_2171F0738(v86, &qword_27CB25000, &unk_21776EA00);
  memcpy(v87, v90, sizeof(v87));
  sub_2171F0738(v87, &qword_27CB25000, &unk_21776EA00);
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  v81 = v33;
  v80 = type metadata accessor for CloudPreviewAsset();
  v59 = *(v80 + 20);
  v60 = *(v85 + 48);
  OUTLINED_FUNCTION_23_2(v5 + v59, v37);
  OUTLINED_FUNCTION_23_2(v3 + v59, &v37[v60]);
  OUTLINED_FUNCTION_73(v37);
  if (!v53)
  {
    sub_2171F5110(v37, v26, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_73(&v37[v60]);
    if (!v61)
    {
      v63 = v82;
      v62 = v83;
      (*(v83 + 32))(v82, &v37[v60], v6);
      OUTLINED_FUNCTION_0_78();
      sub_21751AFC8(v64, v65);
      v66 = sub_217751F08();
      v67 = *(v62 + 8);
      v67(v63, v6);
      v67(v26, v6);
      sub_2171F0738(v37, &unk_27CB277C0, &qword_217758DC0);
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    (*(v83 + 8))(v26, v6);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_73(&v37[v60]);
  if (!v53)
  {
LABEL_18:
    v54 = &qword_27CB24840;
    v55 = &unk_217758DD0;
    v56 = v37;
    goto LABEL_29;
  }

  sub_2171F0738(v37, &unk_27CB277C0, &qword_217758DC0);
LABEL_20:
  v68 = *(v80 + 24);
  v69 = *(v85 + 48);
  v70 = v5 + v68;
  v71 = v81;
  OUTLINED_FUNCTION_23_2(v70, v81);
  OUTLINED_FUNCTION_23_2(v3 + v68, v71 + v69);
  OUTLINED_FUNCTION_73(v71);
  if (!v53)
  {
    v72 = v84;
    sub_2171F5110(v71, v84, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_73(v71 + v69);
    if (!v73)
    {
      v74 = v83;
      v75 = v71 + v69;
      v76 = v82;
      (*(v83 + 32))(v82, v75, v6);
      OUTLINED_FUNCTION_0_78();
      sub_21751AFC8(v77, v78);
      sub_217751F08();
      v79 = *(v74 + 8);
      v79(v76, v6);
      v79(v72, v6);
      sub_2171F0738(v71, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_30;
    }

    (*(v83 + 8))(v72, v6);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_73(v71 + v69);
  if (!v53)
  {
LABEL_28:
    v54 = &qword_27CB24840;
    v55 = &unk_217758DD0;
    v56 = v71;
    goto LABEL_29;
  }

  sub_2171F0738(v71, &unk_27CB277C0, &qword_217758DC0);
LABEL_30:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217519C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000)
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

uint64_t sub_217519D5C(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0x6C7255736C68;
}

uint64_t sub_217519DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217519C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217519DD8(uint64_t a1)
{
  v2 = sub_21751AE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217519E14(uint64_t a1)
{
  v2 = sub_21751AE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudPreviewAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28EE0, &qword_217773170);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21751AE44();
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_11_3();
  memcpy(v14, v15, v16);
  v31 = 0;
  sub_2171F5110(&v29, v27, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8);
  sub_217752F38();
  memcpy(v27, v28, sizeof(v27));
  sub_2171F0738(v27, &qword_27CB25000, &unk_21776EA00);
  if (v1)
  {
    v17 = *(v6 + 8);
  }

  else
  {
    v21 = type metadata accessor for CloudPreviewAsset();
    v22 = *(v21 + 20);
    v30 = 1;
    sub_2177516D8();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v23, v24);
    OUTLINED_FUNCTION_7_46();
    v25 = *(v21 + 24);
    v30 = 2;
    OUTLINED_FUNCTION_7_46();
    v26 = *(v6 + 8);
  }

  v18 = OUTLINED_FUNCTION_13_2();
  return v19(v18);
}

void CloudPreviewAsset.hash(into:)()
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
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v38[-v23];
  OUTLINED_FUNCTION_18_34(v39);
  v25 = *(v0 + 432);
  OUTLINED_FUNCTION_18_34(v40);
  v40[54] = v25;
  OUTLINED_FUNCTION_104(v40);
  if (v26)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v38, v39, sizeof(v38));
    sub_217753208();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v25);
  }

  v27 = type metadata accessor for CloudPreviewAsset();
  sub_2171F5110(v0 + *(v27 + 20), v24, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v6 + 32))(v12, v24, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v28, v29);
    OUTLINED_FUNCTION_84_0();
    v30 = *(v6 + 8);
    v31 = OUTLINED_FUNCTION_13_2();
    v32(v31);
  }

  sub_2171F5110(v0 + *(v27 + 24), v20, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v3) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v6 + 32))(v12, v20, v3);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v33, v34);
    OUTLINED_FUNCTION_84_0();
    v35 = *(v6 + 8);
    v36 = OUTLINED_FUNCTION_13_2();
    v37(v36);
  }

  OUTLINED_FUNCTION_13();
}

void CloudPreviewAsset.hashValue.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_2177516D8();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v30[-v21];
  sub_2177531E8();
  OUTLINED_FUNCTION_18_34(v32);
  v23 = *(v0 + 432);
  OUTLINED_FUNCTION_18_34(v33);
  v33[54] = v23;
  OUTLINED_FUNCTION_104(v33);
  if (v24)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v30, v32, sizeof(v30));
    sub_217753208();
    CloudArtwork.hash(into:)(v31);
    sub_217751DE8();
    sub_217265A08(v31, v23);
  }

  v25 = type metadata accessor for CloudPreviewAsset();
  sub_2171F5110(v0 + *(v25 + 20), v22, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v1) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v4 + 32))(v10, v22, v1);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v26, v27);
    OUTLINED_FUNCTION_15_40();
    (*(v4 + 8))(v10, v1);
  }

  sub_2171F5110(v0 + *(v25 + 24), v18, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v1) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v4 + 32))(v10, v18, v1);
    sub_217753208();
    OUTLINED_FUNCTION_0_78();
    sub_21751AFC8(v28, v29);
    OUTLINED_FUNCTION_15_40();
    (*(v4 + 8))(v10, v1);
  }

  sub_217753238();
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPreviewAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v43 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28EE8, &qword_217773178);
  v15 = OUTLINED_FUNCTION_0_0(v48);
  v46 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15, v19);
  v21 = v43 - v20;
  v22 = type metadata accessor for CloudPreviewAsset();
  v23 = OUTLINED_FUNCTION_43(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  OUTLINED_FUNCTION_1();
  v29 = (v28 - v27);
  v31 = a1[3];
  v30 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_21751AE44();
  v47 = v21;
  v32 = v49;
  sub_2177532C8();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v49 = v14;
  v44 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v52[463] = 0;
  sub_21751AE98(&qword_280BE42D0);
  sub_217752E58();
  v33 = v29;
  memcpy(v29, v52, 0x1B8uLL);
  v34 = sub_2177516D8();
  v51 = 1;
  OUTLINED_FUNCTION_0_78();
  v37 = sub_21751AFC8(v35, v36);
  v38 = v49;
  v43[0] = v37;
  v43[1] = v34;
  sub_217752E58();
  sub_21751AF10(v38, v33 + *(v22 + 20));
  v51 = 2;
  v39 = v44;
  sub_217752E58();
  v40 = OUTLINED_FUNCTION_6_52();
  v41(v40);
  sub_21751AF10(v39, v33 + *(v22 + 24));
  sub_217519534(v33, v45);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_217519598(v33);
}

uint64_t sub_21751AAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v20[-v17];
  sub_2177531E8();
  memcpy(v22, v2, sizeof(v22));
  memcpy(v23, v2, sizeof(v23));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v23) == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v21, v22, sizeof(v21));
    sub_217753208();
    sub_2172DE90C(v20);
  }

  sub_2171F5110(v2 + *(a2 + 20), v18, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_217753208();
    sub_21751AFC8(&qword_27CB24320, MEMORY[0x277CC9260]);
    sub_217751EB8();
    (*(v5 + 8))(v9, v4);
  }

  sub_2171F5110(v2 + *(a2 + 24), v14, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    sub_217753208();
    sub_21751AFC8(&qword_27CB24320, MEMORY[0x277CC9260]);
    sub_217751EB8();
    (*(v5 + 8))(v9, v4);
  }

  return sub_217753238();
}

unint64_t sub_21751AE44()
{
  result = qword_280BE3D98;
  if (!qword_280BE3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D98);
  }

  return result;
}

uint64_t sub_21751AE98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DEF40();
    sub_2172DEF94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21751AF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21751AFC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21751B038()
{
  sub_21751B0BC();
  if (v0 <= 0x3F)
  {
    sub_2172E2DB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21751B0BC()
{
  if (!qword_280BE7DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7DF0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudPreviewAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21751B200()
{
  result = qword_27CB28EF8;
  if (!qword_27CB28EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28EF8);
  }

  return result;
}

unint64_t sub_21751B258()
{
  result = qword_280BE3D88;
  if (!qword_280BE3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D88);
  }

  return result;
}

unint64_t sub_21751B2B0()
{
  result = qword_280BE3D90;
  if (!qword_280BE3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3D90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return sub_217751EB8();
}

void *OUTLINED_FUNCTION_18_34(void *a1)
{

  return memcpy(a1, v1, 0x1B0uLL);
}

uint64_t LegacyModelCodableMusicItemConvertible<>.init(usingLegacyModelCodableResourceFrom:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v33 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = a2;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = type metadata accessor for CloudResource();
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v31 - v23;
  sub_2171FF30C(a1, v35);
  v25 = v35[6];
  CloudResource<>.init(from:)(v35, AssociatedTypeWitness, v11, a4, v34, v24);
  if (!v25)
  {
    (*(v15 + 16))(v20, v24, v12);
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    Decoder.dataRequestConfiguration.getter(v26, v27);
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29 = Decoder.sharedRelatedItemStore.getter();
    (*(a3 + 24))(v20, v35, v29, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v32, a3);
    (*(v15 + 8))(v24, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LegacyModelCodableMusicItemConvertible<>.encodeLegacyModelCodableResource(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = type metadata accessor for CloudResource();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v21 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  Encoder.dataRequestConfiguration.getter(v18, v19);
  (*(a3 + 32))(v24, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, a2, a3);
  sub_21733AB9C(v24);
  CloudResource<>.encode(to:)(a1, v9, v22, v23);
  return (*(v12 + 8))(v17, v9);
}

void static CloudQueryParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_217270404();
}

uint64_t CloudQueryParameters.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x21CEA3550](v2);
  if (v2)
  {
    v4 = *(sub_217751428() - 8);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_2173B8358();
    do
    {
      result = sub_217751EB8();
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t CloudQueryParameters.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  sub_21727D208(v3, v1);
  return sub_217753238();
}

uint64_t sub_21751B880()
{
  v1 = *v0;
  sub_2177531E8();
  sub_21727D208(v3, v1);
  return sub_217753238();
}

uint64_t CloudQueryParameters.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    sub_2174BF708(&qword_27CB285F0);
    sub_217753098();
    sub_2174BEF8C(v9[6]);
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudQueryParameters.encode(to:)(void *a1)
{
  sub_2174BF360(*v1);
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_2174BF708(&qword_27CB28600);
  sub_2177530F8();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_21751BB10()
{
  result = qword_27CB28F00;
  if (!qword_27CB28F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicAPI(_BYTE *result, int a2, int a3)
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

MusicKit::HomeSharingAsset_optional __swiftcall HomeSharingAsset.init(rawStorageDictionary:)(Swift::OpaquePointer rawStorageDictionary)
{
  v2 = v1;
  v3 = sub_21729EBC8();

  sub_2173ACAFC(v3);

  if (!v9)
  {
    LOBYTE(v4) = sub_217380914(v8);
    goto LABEL_5;
  }

  v4 = swift_dynamicCast();
  if (!v4)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v7;
LABEL_6:
  *v2 = v5;
  return v4;
}

uint64_t HomeSharingAsset.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = *v0;
  sub_2172A5284();
  v5 = sub_217751DC8();
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  sub_21729D040(v3);
  return v5;
}

uint64_t HomeSharingAsset.LegacyModelHomeSharingAssetPropertyKey.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_217752DC8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_21751BDB4@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return HomeSharingAsset.LegacyModelHomeSharingAssetPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_21751BDC0@<X0>(void *a1@<X8>)
{
  result = HomeSharingAsset.LegacyModelHomeSharingAssetPropertyKey.rawValue.getter();
  *a1 = 0xD000000000000028;
  a1[1] = v3;
  return result;
}

unint64_t sub_21751BE00()
{
  result = qword_280BE88E8;
  if (!qword_280BE88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE88E8);
  }

  return result;
}

unint64_t sub_21751BE54(uint64_t a1)
{
  *(a1 + 8) = sub_2172A5284();
  result = sub_21751BE84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21751BE84()
{
  result = qword_27CB28F08;
  if (!qword_27CB28F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F08);
  }

  return result;
}

unint64_t sub_21751BEF8()
{
  result = qword_27CB28F10;
  if (!qword_27CB28F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F10);
  }

  return result;
}

_BYTE *_s38LegacyModelHomeSharingAssetPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_21751C000(uint64_t a1)
{
  v2 = sub_21751C0BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21751C03C(uint64_t a1)
{
  v2 = sub_21751C0BC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21751C0BC()
{
  result = qword_27CB28F20;
  if (!qword_27CB28F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F20);
  }

  return result;
}

uint64_t sub_21751C190(uint64_t a1)
{
  v2 = sub_21751C24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21751C1CC(uint64_t a1)
{
  v2 = sub_21751C24C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21751C24C()
{
  result = qword_27CB28F30;
  if (!qword_27CB28F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F30);
  }

  return result;
}

uint64_t sub_21751C2C0(uint64_t a1)
{
  v2 = sub_21751C37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21751C2FC(uint64_t a1)
{
  v2 = sub_21751C37C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21751C37C()
{
  result = qword_27CB28F40;
  if (!qword_27CB28F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F40);
  }

  return result;
}

uint64_t sub_21751C3F0(uint64_t a1)
{
  v2 = sub_21751C5AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21751C42C(uint64_t a1)
{
  v2 = sub_21751C5AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21751C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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

unint64_t sub_21751C5AC()
{
  result = qword_27CB28F50;
  if (!qword_27CB28F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F50);
  }

  return result;
}

uint64_t CloudTrack.id.getter()
{
  v1 = type metadata accessor for CloudMusicVideo(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = type metadata accessor for CloudSong(0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  v16 = (v15 - v14);
  v17 = type metadata accessor for CloudTrack();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_5_55();
  OUTLINED_FUNCTION_2_80();
  v22 = OUTLINED_FUNCTION_154();
  sub_21751F60C(v22, v23);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_13_37();
    sub_21751F5B4(v0, v8);
    v24 = *v8;
    v25 = v8[1];
    sub_217751DE8();
    v26 = v8;
    v27 = v16;
  }

  else
  {
    sub_21751F5B4(v0, v16);
    v28 = *v16;
    v29 = *(v16 + 1);
    sub_217751DE8();
    v26 = v16;
    v27 = type metadata accessor for CloudSong;
  }

  sub_21751CB70(v26, v27);
  return OUTLINED_FUNCTION_154();
}

uint64_t type metadata accessor for CloudTrack()
{
  result = qword_27CB28FE0;
  if (!qword_27CB28FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudTrack.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CloudMusicVideo(0);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = type metadata accessor for CloudSong(0);
  v35 = OUTLINED_FUNCTION_45_0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_1();
  v41 = (v40 - v39);
  v42 = type metadata accessor for CloudTrack();
  v43 = OUTLINED_FUNCTION_43(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  OUTLINED_FUNCTION_6_1();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50, v51);
  v53 = &a9 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28F58, &qword_217773620);
  OUTLINED_FUNCTION_45_0(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v57, v58);
  v60 = &a9 - v59;
  v62 = *(v61 + 56);
  sub_21751F60C(v25, &a9 - v59);
  sub_21751F60C(v23, &v60[v62]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_80();
    sub_21751F60C(v60, v49);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_13_37();
      sub_21751F5B4(&v60[v62], v33);
      static CloudMusicVideo.== infix(_:_:)(v49, v33);
      sub_21751CB70(v33, v41);
      v63 = v49;
      v64 = v41;
LABEL_9:
      sub_21751CB70(v63, v64);
      OUTLINED_FUNCTION_11_44();
      sub_21751CB70(v60, v67);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1_72();
    v66 = v49;
  }

  else
  {
    OUTLINED_FUNCTION_2_80();
    sub_21751F60C(v60, v53);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21751F5B4(&v60[v62], v41);
      static CloudSong.== infix(_:_:)(v53, v41);
      sub_21751CB70(v41, type metadata accessor for CloudSong);
      v63 = v53;
      v64 = type metadata accessor for CloudSong;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_79();
    v66 = v53;
  }

  sub_21751CB70(v66, v65);
  sub_2171F0738(v60, &qword_27CB28F58, &qword_217773620);
LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21751CB70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void CloudTrack.hash(into:)()
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
  OUTLINED_FUNCTION_6_53();
  v15 = type metadata accessor for CloudTrack();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    sub_21751F5B4(v22, v1);
    MEMORY[0x21CEA3550](1);
    v23 = *v1;
    v24 = v1[1];
    sub_217751FF8();
    v25 = v1 + v5[5];
    CloudMusicVideo.Attributes.hash(into:)();
    v26 = v1 + v5[6];
    sub_217264574(v4);
    sub_21738C4B0(v1 + v5[7], v50, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v50[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v49, v50, 0x100uLL);
      sub_217753208();
      sub_217264414(v4, v30, v31, v32, v33, v34, v35, v36);
      sub_217264414(v4, v37, v38, v39, v40, v41, v42, v43);
      sub_2172844EC(v49);
    }

    sub_217264490(v4, *(v1 + v5[8]), *(v1 + v5[8] + 8), *(v1 + v5[8] + 16), *(v1 + v5[8] + 24));
    OUTLINED_FUNCTION_1_72();
    v45 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v22, v2);
    MEMORY[0x21CEA3550](0);
    v27 = *v2;
    v28 = v2[1];
    sub_217751FF8();
    v29 = v2 + v10[5];
    CloudSong.Attributes.hash(into:)();
    sub_21738C4B0(v2 + v10[6], v50, &qword_27CB24A78, &qword_217759040);
    if (*&v50[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v49, v50, sizeof(v49));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v49);
    }

    v46 = *(v2 + v10[7]);
    sub_217753208();
    v47 = v2 + v10[8];
    v48 = *(v47 + 1);
    v50[0] = *v47;
    v50[1] = v48;
    *&v50[2] = *(v47 + 4);
    sub_217263F54();
    OUTLINED_FUNCTION_0_79();
    v45 = v2;
  }

  sub_21751CB70(v45, v44);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudTrack.hashValue.getter()
{
  sub_2177531E8();
  CloudTrack.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21751CF1C()
{
  sub_2177531E8();
  CloudTrack.hash(into:)();
  return sub_217753238();
}

void CloudTrack.decodeRawAttributes(from:)()
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
  v31 = type metadata accessor for CloudTrack();
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v4, v38);
  OUTLINED_FUNCTION_93();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    sub_21751F5B4(v38, v2);
    sub_2171FF30C(v41, v42);
    sub_21751F60C(v2 + *(v11 + 20), v1);
    sub_21738598C();
    OUTLINED_FUNCTION_68_2();
    v39 = v2;
    v40 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_21751F5B4(v38, v30);
    sub_2171FF30C(v41, v42);
    sub_21751F60C(v30 + *(v23 + 20), v3);
    sub_217385938();
    OUTLINED_FUNCTION_68_2();
    v39 = v30;
    v40 = v1;
  }

  sub_21751CB70(v39, v40);
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v33 = v3;
  v4 = type metadata accessor for CloudMusicVideo(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = OUTLINED_FUNCTION_6_53();
  v10 = type metadata accessor for CloudSong(v9);
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v15 = type metadata accessor for CloudTrack();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v2, v22);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v22, v1);
    sub_21738C4B0(v1 + *(v10 + 24), v34, &qword_27CB24A78, &qword_217759040);
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v1, v26);
      v24 = &qword_27CB24A78;
      v25 = &qword_217759040;
      goto LABEL_6;
    }

    sub_2171F0738(v34, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v33, v34);
    OUTLINED_FUNCTION_84();
    v31 = sub_217751DE8();
    v32 = sub_217383824(v31);

    Dictionary<>.init(from:skippingValuesFor:)(v34, v32);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_79();
    v30 = v1;
LABEL_9:
    sub_21751CB70(v30, v29);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_71();
  sub_21751F5B4(v22, v0);
  sub_21738C4B0(v0 + *(v4 + 24), v34, &qword_27CB243A8, &unk_217777720);
  if (v35 != 1)
  {

    sub_2171F0738(v34, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v33, v34);
    OUTLINED_FUNCTION_84();
    v27 = sub_217751DE8();
    v28 = sub_217383844(v27);

    Dictionary<>.init(from:skippingValuesFor:)(v34, v28);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_72();
    v30 = v0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v0, v23);
  v24 = &qword_27CB243A8;
  v25 = &unk_217777720;
LABEL_6:
  sub_2171F0738(v34, v24, v25);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  *&v36 = v3;
  v4 = type metadata accessor for CloudMusicVideo(0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = OUTLINED_FUNCTION_6_53();
  v10 = type metadata accessor for CloudSong(v9);
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v15 = type metadata accessor for CloudTrack();
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v2, v22);
  OUTLINED_FUNCTION_154();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v22, v1);
    if (*(v1 + *(v10 + 28)))
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v1, v24);
      goto LABEL_11;
    }

    sub_2171FF30C(v36, &v36 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    Dictionary<>.init(from:skippingValuesFor:)(&v36 + 1, v35);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_0_79();
    v27 = v1;
LABEL_10:
    sub_21751CB70(v27, v26);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_71();
  sub_21751F5B4(v22, v0);
  sub_21738C4B0(v0 + *(v4 + 28), &v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v38 != 1)
  {

    sub_2171F0738(&v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v36, &v36 + 8);
    v25 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v36 + 1, v25);
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_1_72();
    v27 = v0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v0, v23);
  sub_2171F0738(&v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.decodeRawMetadata(from:skippingValuesFor:)()
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
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_71_0();
  v17 = type metadata accessor for CloudTrack();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_5_55();
  sub_217751DC8();
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v4, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    v27 = OUTLINED_FUNCTION_85();
    sub_21751F5B4(v27, v28);
    v29 = v3 + *(v12 + 32);
    if (*(v29 + 24) == 1)
    {
      OUTLINED_FUNCTION_0_79();
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
    OUTLINED_FUNCTION_0_79();
    v37 = v3;
LABEL_9:
    sub_21751CB70(v37, v36);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_71();
  v22 = OUTLINED_FUNCTION_204();
  sub_21751F5B4(v22, v23);
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
    OUTLINED_FUNCTION_1_72();
    v37 = v2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_72();
  v26 = v2;
LABEL_6:
  sub_21751CB70(v26, v25);
LABEL_10:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = OUTLINED_FUNCTION_6_53();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_37_10();
  v17 = type metadata accessor for CloudTrack();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    sub_21751F5B4(v24, v1);
    sub_2173886A0(v1 + *(v6 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    v25 = v1;
    v26 = v12;
  }

  else
  {
    sub_21751F5B4(v24, v2);
    sub_21738864C(v2 + *(v12 + 20), v4, v0);
    OUTLINED_FUNCTION_68_2();
    v25 = v2;
    v26 = type metadata accessor for CloudSong;
  }

  sub_21751CB70(v25, v26);
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v5 = OUTLINED_FUNCTION_101();
  v6 = type metadata accessor for CloudMusicVideo(v5);
  v7 = OUTLINED_FUNCTION_43(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  OUTLINED_FUNCTION_1();
  v11 = OUTLINED_FUNCTION_71_0();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_43(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_37_10();
  v17 = type metadata accessor for CloudTrack();
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v4, v1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v1, v3);
    sub_21738C4B0(v3 + *(v12 + 24), v30, &qword_27CB24A78, &qword_217759040);
    if (v30[2] == 1)
    {
      OUTLINED_FUNCTION_0_79();
      sub_21751CB70(v3, v27);
      v25 = &qword_27CB24A78;
      v26 = &qword_217759040;
      goto LABEL_8;
    }

    memcpy(v31, v30, 0x600uLL);
    OUTLINED_FUNCTION_27_4();
    sub_2173888E8();
    sub_217284234(v31);
    OUTLINED_FUNCTION_0_79();
    v29 = v3;
LABEL_11:
    sub_21751CB70(v29, v28);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_71();
  v22 = OUTLINED_FUNCTION_85();
  sub_21751F5B4(v22, v23);
  sub_21738C4B0(v2 + *(v6 + 24), v30, &qword_27CB243A8, &unk_217777720);
  if (v30[2] != 1)
  {

    memcpy(v31, v30, 0x300uLL);
    OUTLINED_FUNCTION_27_4();
    sub_217388950();
    sub_21726A3FC(v31);
    OUTLINED_FUNCTION_1_72();
    v29 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_72();
  sub_21751CB70(v2, v24);
  v25 = &qword_27CB243A8;
  v26 = &unk_217777720;
LABEL_8:
  sub_2171F0738(v30, v25, v26);
LABEL_12:
  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_34_0();
  v41 = v15;
  v16 = OUTLINED_FUNCTION_101();
  v17 = type metadata accessor for CloudMusicVideo(v16);
  v18 = OUTLINED_FUNCTION_43(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_71_0();
  v23 = type metadata accessor for CloudSong(v22);
  v24 = OUTLINED_FUNCTION_43(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_37_10();
  v28 = type metadata accessor for CloudTrack();
  v29 = OUTLINED_FUNCTION_43(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  OUTLINED_FUNCTION_5_55();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v33 = OUTLINED_FUNCTION_85();
    sub_21751F5B4(v33, v34);
    sub_21738C4B0(v12 + *(v17 + 28), v42, &qword_27CB24A90, &unk_21775D5B0);
    if (v42[2] == 1)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21751CB70(v12, v35);
      sub_2171F0738(v42, &qword_27CB24A90, &unk_21775D5B0);
    }

    else
    {

      memcpy(v43, v42, 0x100uLL);
      OUTLINED_FUNCTION_27_4();
      sub_217388CF8();
      sub_2172844EC(v43);
      OUTLINED_FUNCTION_1_72();
      sub_21751CB70(v12, v36);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v11, v13);
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

    OUTLINED_FUNCTION_0_79();
    sub_21751CB70(v13, v40);
  }

  OUTLINED_FUNCTION_170();
}

void CloudTrack.mergeMetadata(with:for:)()
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
  OUTLINED_FUNCTION_6_53();
  v18 = type metadata accessor for CloudTrack();
  v19 = OUTLINED_FUNCTION_43(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_5_55();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v23 = OUTLINED_FUNCTION_204();
    sub_21751F5B4(v23, v24);
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

    OUTLINED_FUNCTION_1_72();
    v34 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v2, v4);
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

    OUTLINED_FUNCTION_0_79();
    v34 = v4;
  }

  sub_21751CB70(v34, v33);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21751E33C(uint64_t a1)
{
  v2 = sub_21751F560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21751E378(uint64_t a1)
{
  v2 = sub_21751F560();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudTrack.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v59 = sub_217752B38();
  v4 = OUTLINED_FUNCTION_0_0(v59);
  v61 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v60 = v10 - v9;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudMusicVideo(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  v62 = v18 - v17;
  v19 = OUTLINED_FUNCTION_206();
  v20 = type metadata accessor for CloudSong(v19);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28F60, &qword_217773628);
  OUTLINED_FUNCTION_0_0(v28);
  v63 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_71_0();
  v34 = type metadata accessor for CloudTrack();
  v35 = OUTLINED_FUNCTION_43(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35, v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = v3[4];
  v43 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21751F560();
  sub_2177532C8();
  if (!v0)
  {
    v57 = v41;
    v58 = v27;
    v69 = v34;
    sub_21733BE84();
    sub_217752EA8();
    v44 = v28;
    v45 = v64;
    v46 = v65;
    v47 = v66;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7628, &v64))
    {
      goto LABEL_12;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v48 = qword_280BE24F0 == v45 && *algn_280BE24F8 == v46;
    if (v48 || (sub_217753058() & 1) != 0)
    {
LABEL_12:

      sub_2171FF30C(v43, &v64);
      CloudSong.init(from:)();
      (*(v63 + 8))(v1, v28);
      OUTLINED_FUNCTION_3_68();
      sub_21751F5B4(v58, v57);
    }

    else
    {
      if (qword_280BE6EA0 != -1)
      {
        swift_once();
      }

      v64 = v45;
      v65 = v46;
      v66 = v47;
      if (!static Array<A>.~= infix(_:_:)(off_280BE6EA8, &v64))
      {
        if (qword_280BE6EC8 != -1)
        {
          swift_once();
        }

        v51 = qword_280BE6ED0 == v45 && *algn_280BE6ED8 == v46;
        if (!v51 && (sub_217753058() & 1) == 0)
        {
          v52 = v43[4];
          __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          OUTLINED_FUNCTION_204();
          sub_217753298();
          v64 = 0;
          v65 = 0xE000000000000000;
          sub_217752AA8();

          v64 = 0xD000000000000011;
          v65 = 0x80000002177ADC50;
          v67 = 34;
          v68 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v45, v46);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](v67, v68);

          MEMORY[0x21CEA23B0](0xD00000000000001DLL, 0x80000002177AFE10);
          sub_217752B08();
          v53 = sub_217752B48();
          swift_allocError();
          v55 = v54;
          v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v55 = v69;
          (*(v61 + 16))(v55 + v56, v60, v59);
          (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
          swift_willThrow();
          (*(v61 + 8))(v60, v59);
          (*(v63 + 8))(v1, v44);
          goto LABEL_14;
        }
      }

      sub_2171FF30C(v43, &v64);
      CloudMusicVideo.init(from:)();
      (*(v63 + 8))(v1, v28);
      OUTLINED_FUNCTION_4_71();
      sub_21751F5B4(v62, v57);
    }

    swift_storeEnumTagMultiPayload();
    v49 = OUTLINED_FUNCTION_154();
    sub_21751F5B4(v49, v50);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudTrack.encode(to:)()
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
  OUTLINED_FUNCTION_6_53();
  v14 = type metadata accessor for CloudTrack();
  v15 = OUTLINED_FUNCTION_43(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_2_80();
  sub_21751F60C(v0, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21751F5B4(v21, v1);
    CloudMusicVideo.encode(to:)();
    v22 = OUTLINED_FUNCTION_204();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_21751F5B4(v21, v2);
    CloudSong.encode(to:)(v0);
    v22 = v2;
    v23 = v1;
  }

  return sub_21751CB70(v22, v23);
}

void Track.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v129 = v0;
  v130 = v1;
  v3 = v2;
  v131 = v4;
  v6 = v5;
  v133 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v9 = OUTLINED_FUNCTION_43(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  OUTLINED_FUNCTION_6_1();
  v122 = v13 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v120 = &v111 - v17;
  v18 = OUTLINED_FUNCTION_206();
  v19 = type metadata accessor for CloudMusicVideo(v18);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  OUTLINED_FUNCTION_1();
  v124 = (v25 - v24);
  v132 = v3;
  v128 = *(v3 - 8);
  v26 = *(v128 + 64);
  MEMORY[0x28223BE20](v27, v28);
  OUTLINED_FUNCTION_1();
  v127 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v32 = OUTLINED_FUNCTION_43(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_6_1();
  v121 = v36 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v111 - v40;
  v42 = type metadata accessor for CloudSong(0);
  v43 = OUTLINED_FUNCTION_45_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43, v46);
  OUTLINED_FUNCTION_1();
  v123 = (v48 - v47);
  OUTLINED_FUNCTION_206();
  v49 = type metadata accessor for CloudTrack();
  v50 = OUTLINED_FUNCTION_43(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  OUTLINED_FUNCTION_6_1();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v111 - v59;
  v61 = v6;
  sub_21751F60C(v6, &v111 - v59);
  v125 = v60;
  sub_21751F60C(v60, v56);
  OUTLINED_FUNCTION_204();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_71();
    v123 = v62;
    v63 = v124;
    sub_21751F5B4(v56, v124);
    v64 = v120;
    sub_21751F60C(v63, v120);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v66 = v65[10];
    v67 = v6 + v65[9];
    v68 = *v67;
    v118 = *(v67 + 8);
    v69 = v118;
    LODWORD(v113) = *(v67 + 16);
    v70 = v6 + v66;
    v71 = *(v6 + v66);
    v72 = *(v70 + 8);
    v114 = v68;
    v115 = v71;
    v116 = v72;
    v112 = v65[11];
    memcpy(v136, (v61 + v112), 0x180uLL);
    v73 = v65[13];
    v117 = *(v61 + v65[12]);
    v74 = v117;
    v75 = *(v61 + v73);
    v76 = v65[15];
    v119 = *(v61 + v65[14]);
    v77 = v119;
    v121 = *(v61 + v76);
    v78 = v121;
    v79 = v64 + v8[9];
    *v79 = v114;
    *(v79 + 8) = v69;
    *(v79 + 16) = v113;
    v80 = (v64 + v8[10]);
    *v80 = v115;
    v80[1] = v72;
    memcpy((v64 + v8[11]), (v61 + v112), 0x180uLL);
    *(v64 + v8[12]) = v74;
    *(v64 + v8[13]) = v75;
    *(v64 + v8[14]) = v77;
    *(v64 + v8[15]) = v78;
    sub_21738C4B0(v64, v122, &qword_27CB24808, &qword_217758D90);
    v81 = v128;
    v83 = v131;
    v82 = v132;
    (*(v128 + 16))(v127, v131, v132);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v136, v134, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v81 + 8))(v83, v82);
    sub_2171F0738(v61, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v64, &qword_27CB24808, &qword_217758D90);
    v85 = v123;
    v84 = v124;
  }

  else
  {
    OUTLINED_FUNCTION_3_68();
    v124 = v86;
    sub_21751F5B4(v56, v123);
    v87 = OUTLINED_FUNCTION_85();
    sub_21751F60C(v87, v88);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v90 = v89[10];
    v91 = v6 + v89[9];
    v92 = *v91;
    v119 = *(v91 + 8);
    v93 = v119;
    LODWORD(v114) = *(v91 + 16);
    v94 = v6 + v90;
    v95 = *(v6 + v90);
    v96 = *(v94 + 8);
    v115 = v92;
    v116 = v95;
    v117 = v96;
    v113 = v89[11];
    memcpy(v136, (v6 + v113), 0x180uLL);
    v97 = v89[13];
    v118 = *(v6 + v89[12]);
    v98 = v118;
    v99 = *(v6 + v97);
    v100 = v89[15];
    v120 = *(v6 + v89[14]);
    v101 = v120;
    v122 = *(v6 + v100);
    v102 = v122;
    v103 = &v41[v31[9]];
    *v103 = v115;
    *(v103 + 1) = v93;
    v103[16] = v114;
    v104 = &v41[v31[10]];
    *v104 = v116;
    *(v104 + 1) = v96;
    memcpy(&v41[v31[11]], (v6 + v113), 0x180uLL);
    *&v41[v31[12]] = v98;
    *&v41[v31[13]] = v99;
    *&v41[v31[14]] = v101;
    *&v41[v31[15]] = v102;
    sub_21738C4B0(v41, v121, &qword_27CB24748, &unk_217758CD0);
    v105 = v128;
    v107 = v131;
    v106 = v132;
    (*(v128 + 16))(v127, v131, v132);
    sub_217751DE8();
    sub_217751DE8();
    sub_21738C4B0(v136, v134, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v105 + 8))(v107, v106);
    sub_2171F0738(v6, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v41, &qword_27CB24748, &unk_217758CD0);
    v84 = v123;
    v85 = v124;
  }

  sub_21751CB70(v84, v85);
  OUTLINED_FUNCTION_11_44();
  sub_21751CB70(v125, v108);
  v109 = v134[1];
  v110 = v133;
  *v133 = v134[0];
  v110[1] = v109;
  v110[2] = v134[2];
  *(v110 + 6) = v135;
  *(v110 + 56) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_13();
}

void Track.convertToCloudResource<A>(configuration:)()
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
  sub_217275710(v0, v54);
  if (v54[56])
  {
    OUTLINED_FUNCTION_8_2();
    MusicVideo.convertToCloudResource<A>(configuration:)();
    sub_217283C08(v53);
    OUTLINED_FUNCTION_4_71();
    sub_21751F5B4(v9, v2);
    type metadata accessor for CloudTrack();
    swift_storeEnumTagMultiPayload();
    v17 = v3[10];
    v18 = &v9[v3[9]];
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = v18[16];
    v22 = *&v9[v3[12]];
    v51 = v3[11];
    v52 = v22;
    v23 = v3[14];
    v50 = *&v9[v3[13]];
    v25 = *&v9[v17];
    v24 = *&v9[v17 + 8];
    v26 = *&v9[v23];
    v27 = *&v9[v3[15]];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v29 = v2 + *(v28 + 36);
    *v29 = v19;
    *(v29 + 8) = v20;
    *(v29 + 16) = v21;
    v30 = OUTLINED_FUNCTION_23_35(v28);
    memcpy(v30, &v9[v31], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v32) = v27;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    Song.convertToCloudResource<A>(configuration:)();
    sub_217283B58(v53);
    OUTLINED_FUNCTION_3_68();
    sub_21751F5B4(v16, v2);
    type metadata accessor for CloudTrack();
    swift_storeEnumTagMultiPayload();
    v33 = v10[10];
    v34 = &v16[v10[9]];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = v34[16];
    v38 = *&v16[v10[12]];
    v51 = v10[11];
    v52 = v38;
    v39 = v10[14];
    v50 = *&v16[v10[13]];
    v41 = *&v16[v33];
    v40 = *&v16[v33 + 8];
    v42 = *&v16[v39];
    v43 = *&v16[v10[15]];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v45 = v2 + *(v44 + 36);
    *v45 = v35;
    *(v45 + 8) = v36;
    *(v45 + 16) = v37;
    v46 = OUTLINED_FUNCTION_23_35(v44);
    memcpy(v46, &v16[v47], 0x180uLL);
    OUTLINED_FUNCTION_18_35();
    *(v2 + v48) = v43;
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_21751F560()
{
  result = qword_27CB28F68;
  if (!qword_27CB28F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F68);
  }

  return result;
}

uint64_t sub_21751F5B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

uint64_t sub_21751F60C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v5 = v4(v3);
  OUTLINED_FUNCTION_43(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return a2;
}

unint64_t sub_21751F668()
{
  result = qword_27CB28F70;
  if (!qword_27CB28F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F70);
  }

  return result;
}

unint64_t sub_21751F6C0()
{
  result = qword_27CB28F78;
  if (!qword_27CB28F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F78);
  }

  return result;
}

unint64_t sub_21751F718()
{
  result = qword_27CB28F80;
  if (!qword_27CB28F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F80);
  }

  return result;
}

unint64_t sub_21751F770()
{
  result = qword_27CB28F88;
  if (!qword_27CB28F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F88);
  }

  return result;
}

unint64_t sub_21751F7C8()
{
  result = qword_27CB28F90;
  if (!qword_27CB28F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F90);
  }

  return result;
}

unint64_t sub_21751F820()
{
  result = qword_27CB28F98;
  if (!qword_27CB28F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28F98);
  }

  return result;
}

unint64_t sub_21751F878()
{
  result = qword_27CB28FA0;
  if (!qword_27CB28FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FA0);
  }

  return result;
}

unint64_t sub_21751F8D0()
{
  result = qword_27CB28FA8;
  if (!qword_27CB28FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FA8);
  }

  return result;
}

unint64_t sub_21751F928()
{
  result = qword_27CB28FB0;
  if (!qword_27CB28FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FB0);
  }

  return result;
}

unint64_t sub_21751F980()
{
  result = qword_27CB28FB8;
  if (!qword_27CB28FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FB8);
  }

  return result;
}

unint64_t sub_21751F9D8()
{
  result = qword_27CB28FC0;
  if (!qword_27CB28FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FC0);
  }

  return result;
}

unint64_t sub_21751FA30()
{
  result = qword_27CB28FC8;
  if (!qword_27CB28FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FC8);
  }

  return result;
}

uint64_t sub_21751FAEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudTrack();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21751FB30()
{
  result = type metadata accessor for CloudSong(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CloudMusicVideo(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_21751FBE4(_BYTE *result, int a2, int a3)
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

unint64_t sub_21751FCD4()
{
  result = qword_27CB28FF0;
  if (!qword_27CB28FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FF0);
  }

  return result;
}

unint64_t sub_21751FD2C()
{
  result = qword_27CB28FF8;
  if (!qword_27CB28FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28FF8);
  }

  return result;
}

unint64_t sub_21751FD84()
{
  result = qword_27CB29000;
  if (!qword_27CB29000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29000);
  }

  return result;
}

unint64_t sub_21751FDDC()
{
  result = qword_27CB29008;
  if (!qword_27CB29008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29008);
  }

  return result;
}

unint64_t sub_21751FE34()
{
  result = qword_27CB29010;
  if (!qword_27CB29010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29010);
  }

  return result;
}

unint64_t sub_21751FE8C()
{
  result = qword_27CB29018;
  if (!qword_27CB29018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29018);
  }

  return result;
}

unint64_t sub_21751FEE4()
{
  result = qword_27CB29020;
  if (!qword_27CB29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29020);
  }

  return result;
}

unint64_t sub_21751FF3C()
{
  result = qword_27CB29028;
  if (!qword_27CB29028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29028);
  }

  return result;
}

unint64_t sub_21751FF94()
{
  result = qword_27CB29030;
  if (!qword_27CB29030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29030);
  }

  return result;
}

unint64_t sub_21751FFEC()
{
  result = qword_27CB29038;
  if (!qword_27CB29038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29038);
  }

  return result;
}

unint64_t sub_217520044()
{
  result = qword_27CB29040;
  if (!qword_27CB29040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29040);
  }

  return result;
}

void OUTLINED_FUNCTION_18_35()
{
  *(v0 + v1[12]) = *(v3 - 216);
  *(v0 + v1[13]) = *(v3 - 232);
  *(v0 + v1[14]) = v2;
  v4 = v1[15];
}

uint64_t SharedInstanceManager.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  v0 = swift_allocObject();
  SharedInstanceManager.init(_:)();
  return v0;
}

uint64_t sub_2175201C0()
{
  v1 = *(*v0 + 88);
  v3 = sub_217752338();
  sub_21720BA74();
  sub_21720BA7C();

  return v3;
}

uint64_t sub_21752024C(uint64_t a1, uint64_t *a2)
{
  v41 = a1;
  v3 = *a2;
  v4 = *(*a2 + 88);
  v40 = sub_2177528F8();
  v33 = *(v40 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v31 - v7;
  v34 = *(v4 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v10, v11);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v38 = &v31 - v15;
  v16 = *(v3 + 80);
  v17 = *(v16 - 8);
  v32 = *(v17 + 64);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v31 - v20;
  sub_21720BEDC();
  v22 = *(v3 + 96);
  v23 = sub_217751E08();

  v46 = v23;
  v24 = sub_217752418();
  sub_217751DF8();
  swift_getWitnessTable();
  v37 = v24;
  sub_2177523B8();
  v44 = a2;
  sub_21720C114(&v46);
  v45 = v46;
  v43 = type metadata accessor for WeakValuesDictionary();
  v25 = WeakValuesDictionary.keys.getter(v43);

  sub_217751DE8();
  v26 = sub_2177522A8();

  v46 = v26;
  if (v26 == sub_217752388())
  {
  }

  v42 = (v17 + 16);
  v35 = (v34 + 16);
  v36 = (v34 + 32);
  v33 += 8;
  v34 += 8;
  while (1)
  {
    v28 = sub_217752358();
    sub_2177522D8();
    if ((v28 & 1) == 0)
    {
      break;
    }

    (*(v17 + 16))(v21, v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26, v16);
LABEL_6:
    sub_2177523E8();
    sub_21720C114(&v45);
    WeakValuesDictionary.subscript.getter();

    (*(v17 + 8))(v21, v16);
    if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
    {
      (*v33)(v8, v40);
    }

    else
    {
      v29 = v38;
      (*v36)(v38, v8, v4);
      (*v35)(v39, v29, v4);
      sub_2177523C8();
      (*v34)(v29, v4);
    }

    v30 = sub_217752388();
    v26 = v46;
    if (v46 == v30)
    {
    }
  }

  result = sub_217752AC8();
  if (v32 == 8)
  {
    v45 = result;
    (*v42)(v21, &v45, v16);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_21752074C()
{
  OUTLINED_FUNCTION_143();
  sub_21720BA74();
  sub_21720BA7C();
}

uint64_t sub_217520818(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v36 = a4;
  v41 = a3;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v37 = &v33 - v8;
  v9 = *(v5 + 88);
  v10 = sub_2177528F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v38 = &v33 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v33 - v20;
  sub_21720BEDC();
  v22 = *(v5 + 96);
  v39 = a2;
  v40 = v6;
  sub_217751E68();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v9);
  v24 = *(v11 + 8);
  v25 = v10;
  result = v24(v21, v10);
  if (EnumTagSinglePayload == 1)
  {
    v27 = v41;
    sub_21720C114(v42);
    v28 = type metadata accessor for WeakValuesDictionary();
    v29 = v38;
    v30 = v39;
    v33 = v28;
    WeakValuesDictionary.subscript.getter();

    v31 = __swift_getEnumTagSinglePayload(v29, 1, v9);
    result = v24(v29, v25);
    if (v31 == 1)
    {
      (*(v34 + 16))(v37, v30, v40);
      v32 = v35;
      (*(*(v9 - 8) + 16))(v35, v36, v9);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v9);
      swift_beginAccess();
      WeakValuesDictionary.subscript.setter();
      return swift_endAccess();
    }

    else
    {
      *v27 = 1;
    }
  }

  else
  {
    *v41 = 1;
  }

  return result;
}

uint64_t sub_217520B98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v30 = v25 - v7;
  v29 = *(v3 + 88);
  v8 = sub_2177528F8();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v25 - v15;
  sub_217212474();
  v17 = *(v3 + 96);
  sub_217751E68();

  v19 = v33;
  if (v34)
  {
    v19 = 0;
  }

  v20 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
  }

  else if (v20 <= 0)
  {
    sub_21720BEDC();
    v25[0] = v16;
    sub_217751E68();

    swift_beginAccess();
    sub_217751E38();
    sub_217751DB8();
    v22 = v27;
    v21 = v28;
    v23 = *(v27 + 8);
    v25[1] = v27 + 8;
    v26 = v23;
    v23(v12, v28);
    swift_endAccess();
    (*(v5 + 16))(v30, a2, v4);
    v24 = v25[0];
    (*(v22 + 16))(v12, v25[0], v21);
    swift_beginAccess();
    type metadata accessor for WeakValuesDictionary();
    WeakValuesDictionary.subscript.setter();
    swift_endAccess();
    swift_beginAccess();
    sub_217751E38();
    sub_217751DB8();
    swift_endAccess();
    return v26(v24, v21);
  }

  else
  {
    (*(v5 + 16))(v30, a2, v4);
    v31 = v20;
    v32 = 0;
    swift_beginAccess();
    sub_217751E38();
    sub_217751E78();
    return swift_endAccess();
  }

  return result;
}

void *SharedInstanceManager.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return v0;
}

uint64_t SharedInstanceManager.__deallocating_deinit()
{
  SharedInstanceManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t static CloudArtist.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_169();
  v5 = *v4 == *v2 && *(v3 + 8) == v2[1];
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for CloudArtist(0);
  v7 = v6[5];
  static CloudArtist.Attributes.== infix(_:_:)();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v6[6];
  OUTLINED_FUNCTION_95_13();
  OUTLINED_FUNCTION_95_13();
  if (v26 != 1)
  {
    sub_2172E3D54();
    if (*&v27[16] != 1)
    {
      memcpy(v23, v27, 0x380uLL);
      v12 = static CloudArtist.Relationships.== infix(_:_:)();
      sub_21726A204(v23);
      sub_21726A204(v24);
      sub_2171F0738(v25, &qword_27CB24328, &unk_21775D440);
      if (!v12)
      {
        return 0;
      }

      goto LABEL_14;
    }

    sub_21726A204(v24);
LABEL_12:
    v10 = &unk_27CB29048;
    v11 = &unk_217773E58;
LABEL_20:
    sub_2171F0738(v25, v10, v11);
    return 0;
  }

  if (*&v27[16] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v25, &qword_27CB24328, &unk_21775D440);
LABEL_14:
  v13 = v6[7];
  OUTLINED_FUNCTION_95_13();
  OUTLINED_FUNCTION_95_13();
  if (v26 == 1)
  {
    if (*&v27[528] == 1)
    {
      sub_2171F0738(v25, &qword_27CB24AB0, &qword_217759088);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_2172E3D54();
  if (*&v27[528] == 1)
  {
    sub_21728463C(v24);
LABEL_19:
    v10 = &unk_27CB29050;
    v11 = &unk_217773E60;
    goto LABEL_20;
  }

  memcpy(v23, &v27[512], sizeof(v23));
  v16 = static CloudArtist.Associations.== infix(_:_:)();
  sub_21728463C(v23);
  sub_21728463C(v24);
  sub_2171F0738(v25, &qword_27CB24AB0, &qword_217759088);
  if (v16)
  {
LABEL_24:
    v17 = v6[8];
    v18 = *(v3 + v17);
    v14 = *(v2 + v17);
    if (v18 == 1)
    {
      sub_217221020(1);
      if (v14 == 1)
      {
        sub_217221020(1);
        sub_217221010(1);
        return v14;
      }

      sub_217221020(v14);
      goto LABEL_30;
    }

    if (v14 == 1)
    {
      sub_217221020(v18);
      sub_217221020(1);
      sub_217221020(v18);

LABEL_30:
      sub_217221010(v18);
      v19 = v14;
LABEL_41:
      sub_217221010(v19);
      return 0;
    }

    if (v18)
    {
      if (v14)
      {
        sub_217221020(v18);
        sub_217221020(v14);
        sub_217221020(v18);
        sub_217221020(v14);
        sub_21726F358();
        v21 = v20;
        sub_217221010(v14);
        sub_217221010(v14);
        if ((v21 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_37:

        sub_217221010(v18);
        return 1;
      }

      sub_217221020(v18);
      v22 = v18;
    }

    else
    {
      sub_217221020(0);
      v22 = 0;
      if (!v14)
      {
        sub_217221020(0);
        sub_217221020(0);
        sub_217221010(0);
        goto LABEL_37;
      }
    }

    sub_217221020(v14);
    sub_217221020(v22);
    sub_217221010(v14);
LABEL_40:

    v19 = v18;
    goto LABEL_41;
  }

  return 0;
}

void CloudArtist.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v30 = type metadata accessor for CloudArtist.Attributes(0);
  v3 = OUTLINED_FUNCTION_43(v30);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29058, &qword_217773E68);
  OUTLINED_FUNCTION_0_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v15 = type metadata accessor for CloudArtist(0);
  v16 = OUTLINED_FUNCTION_43(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  OUTLINED_FUNCTION_1();
  v31 = (v22 - v21);
  v32 = *(v20 + 32);
  *(v22 - v21 + v32) = 1;
  v23 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21752AD18();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_217221010(*(v31 + v32));
  }

  else
  {
    sub_2172E1C68();
    OUTLINED_FUNCTION_29_29();
    OUTLINED_FUNCTION_56_14();
    sub_217752EA8();
    v24 = v33[1];
    *v31 = v33[0];
    v31[1] = v24;
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_49_21();
    sub_21752AF24(v25);
    sub_217752EA8();
    sub_21752AD6C(v9, v31 + v15[5]);
    sub_21752ADD0();
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    memcpy(v31 + v15[6], v33, 0x380uLL);
    sub_21752AE24();
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    memcpy(v31 + v15[7], v33, 0x580uLL);
    sub_21752AE78();
    OUTLINED_FUNCTION_29_29();
    sub_217752E58();
    v26 = OUTLINED_FUNCTION_55_17();
    v27(v26);
    v28 = v33[0];
    sub_217221010(*(v31 + v32));
    *(v31 + v32) = v28;
    OUTLINED_FUNCTION_6_54();
    sub_21752BBD4();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_14_36();
    sub_21752AECC(v31, v29);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudArtist.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29060, &qword_217773E70);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_67_1();
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21752AD18();
  OUTLINED_FUNCTION_105();
  v19 = *v3;
  v21 = v3[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_44_2();
  sub_217752F88();
  if (!v2)
  {
    v11 = type metadata accessor for CloudArtist(0);
    v12 = v11[5];
    type metadata accessor for CloudArtist.Attributes(0);
    OUTLINED_FUNCTION_49_21();
    sub_21752AF24(v13);
    OUTLINED_FUNCTION_42_1();
    sub_217752F88();
    v14 = v11[6];
    sub_21733C2D0();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    v15 = v11[7];
    sub_21733C27C();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    v20 = *(v3 + v11[8]);
    sub_217221020(v20);
    sub_2174C74A0();
    OUTLINED_FUNCTION_44_2();
    sub_217752F38();
    sub_217221010(v20);
  }

  v16 = OUTLINED_FUNCTION_113_3();
  return v17(v16);
}

void Artist.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v403 = v2;
  v395 = v3;
  v396 = v4;
  v393 = v6;
  v394 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v375 = &v360 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25670, &unk_21775D6A0);
  OUTLINED_FUNCTION_45_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  v369 = &v360 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_43(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  v360 = (&v360 - v26);
  v401 = type metadata accessor for CloudArtist(0);
  v27 = OUTLINED_FUNCTION_43(v401);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  OUTLINED_FUNCTION_1();
  v404 = v32 - v31;
  v33 = type metadata accessor for ArtistPropertyProvider();
  v34 = OUTLINED_FUNCTION_43(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  OUTLINED_FUNCTION_1();
  v40 = (v39 - v38);
  if (qword_280BE6270 != -1)
  {
    swift_once();
  }

  v415 = 0u;
  v416 = 0u;
  v417 = 0u;
  v418 = 0u;
  v419 = 0u;
  v420 = 0u;
  v421 = 0u;
  v422 = 0;
  sub_2172DA77C();
  memcpy(v424, v409, sizeof(v424));
  v397 = v409[35];
  memcpy(v423, &v409[36], sizeof(v423));
  v41 = v21[10];
  v42 = (v8 + v21[9]);
  v43 = *v42;
  v44 = v42[1];
  v399 = v8;
  v400 = v43;
  LODWORD(v368) = *(v42 + 16);
  v45 = *(v8 + v41 + 8);
  v367 = *(v8 + v41);
  v46 = *(v8 + v21[12]);
  v364 = *(v8 + v21[13]);
  v47 = v21[15];
  v48 = *(v8 + v21[14]);
  v362 = v45;
  v363 = v48;
  v49 = *(v8 + v47);
  sub_2172A497C(v425);
  memcpy(v40, v425, 0x221uLL);
  v50 = v33[6];
  v51 = sub_2177516D8();
  v370 = v50;
  OUTLINED_FUNCTION_15_10(&v40[v50]);
  v52 = &v40[v33[8]];
  *v52 = xmmword_2177586D0;
  *(v52 + 1) = 0u;
  *(v52 + 2) = 0u;
  *(v52 + 3) = 0u;
  v371 = v52;
  v40[v33[14]] = 2;
  memcpy(&v40[v33[15]], v425, 0x221uLL);
  v53 = v33[17];
  v372 = v51;
  v373 = v53;
  OUTLINED_FUNCTION_15_10(&v40[v53]);
  OUTLINED_FUNCTION_45_22(v33[18]);
  OUTLINED_FUNCTION_45_22(v33[19]);
  OUTLINED_FUNCTION_45_22(v33[20]);
  OUTLINED_FUNCTION_45_22(v33[21]);
  v402 = v40;
  v54 = v33[22];
  sub_2177517D8();
  v55 = v402 + v54;
  v56 = v402;
  OUTLINED_FUNCTION_15_10(v55);
  *(v56 + v33[23]) = 3;
  OUTLINED_FUNCTION_15_10(v56 + v33[24]);
  OUTLINED_FUNCTION_45_22(v33[25]);
  v57 = v56 + v33[26];
  *(v57 + 12) = 0;
  *(v57 + 4) = 0u;
  *(v57 + 5) = 0u;
  *(v57 + 2) = 0u;
  *(v57 + 3) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  v374 = v57;
  OUTLINED_FUNCTION_13_6(v33[27], 0);
  v376 = v58;
  v59 = (v56 + v33[28]);
  v59[6] = v60;
  v59[7] = v60;
  v59[4] = v60;
  v59[5] = v60;
  v59[2] = v60;
  v59[3] = v60;
  *v59 = v60;
  v59[1] = v60;
  v377 = v59;
  OUTLINED_FUNCTION_13_6(v33[29], v60);
  v378 = v61;
  OUTLINED_FUNCTION_13_6(v33[30], v62);
  v379 = v63;
  OUTLINED_FUNCTION_13_6(v33[31], v64);
  v380 = v65;
  OUTLINED_FUNCTION_13_6(v33[32], v66);
  v381 = v67;
  OUTLINED_FUNCTION_13_6(v33[33], v68);
  v382 = v69;
  OUTLINED_FUNCTION_13_6(v33[34], v70);
  v383 = v71;
  OUTLINED_FUNCTION_13_6(v33[35], v72);
  v384 = v73;
  OUTLINED_FUNCTION_13_6(v33[36], v74);
  v385 = v75;
  OUTLINED_FUNCTION_13_6(v33[37], v76);
  v386 = v77;
  OUTLINED_FUNCTION_13_6(v33[38], v78);
  v387 = v79;
  OUTLINED_FUNCTION_13_6(v33[39], v80);
  v388 = v81;
  OUTLINED_FUNCTION_13_6(v33[40], v82);
  v389 = v83;
  OUTLINED_FUNCTION_13_6(v33[41], v84);
  v390 = v85;
  OUTLINED_FUNCTION_13_6(v33[42], v86);
  v391 = v87;
  v398 = v33;
  OUTLINED_FUNCTION_13_6(v33[43], v88);
  v392 = v89;
  v90 = qword_280BE3968;
  v366 = v44;
  v91 = v362;
  sub_217751DE8();
  sub_217751DE8();
  v365 = v46;
  sub_217751DE8();
  v92 = v364;
  sub_217751DE8();
  v93 = v363;
  sub_217751DE8();
  sub_217751DE8();
  if (v90 != -1)
  {
    swift_once();
  }

  v361 = v21;
  v94 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_997();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_997();

    v94 = v90;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v95 = v397;
  v96 = v398;
  *(v56 + v398[45]) = v94;
  v97 = (v56 + v96[48]);
  v98 = v56 + v96[46];
  memcpy(v98, v424, 0x118uLL);
  *(v98 + 35) = v95;
  memcpy(v98 + 288, v423, 0x41uLL);
  v99 = v56 + v96[47];
  v100 = v366;
  *v99 = v400;
  *(v99 + 1) = v100;
  v99[16] = v368;
  *v97 = v367;
  v97[1] = v91;
  *(v56 + v96[49]) = v365;
  *(v56 + v96[50]) = v92;
  *(v56 + v96[51]) = v93;
  *(v56 + v96[52]) = v49;
  OUTLINED_FUNCTION_6_54();
  v101 = v404;
  sub_21752BBD4();
  v400 = v401[6];
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    sub_2171F0738(v409, &qword_27CB24328, &unk_21775D440);
    v103 = v369;
    v104 = v361;
LABEL_20:
    v118 = OUTLINED_FUNCTION_188_1();
    __swift_storeEnumTagSinglePayload(v118, v119, 1, v104);
    goto LABEL_21;
  }

  sub_2172E3D54();
  sub_21726A204(v409);
  v103 = v369;
  v104 = v361;
  if (!v412[2])
  {
    sub_2171F0738(v412, &qword_27CB24280, &unk_21775D680);
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v412, &qword_27CB24288, &qword_217758F80);
  sub_2172CE7E0();

  v105 = OUTLINED_FUNCTION_188_1();
  if (__swift_getEnumTagSinglePayload(v105, v106, v104) == 1)
  {
LABEL_21:
    v116 = &qword_27CB25670;
    v117 = &unk_21775D6A0;
    goto LABEL_22;
  }

  v103 = v360;
  sub_2172E21DC();
  v108 = *v103;
  v107 = v103[1];
  v109 = *(v98 + 3);
  sub_217751DE8();

  *(v98 + 2) = v108;
  *(v98 + 3) = v107;
  v98[32] = 0;
  v409[1] = 0;
  v409[0] = 0;
  MEMORY[0x28223BE20](v110, v111);
  *(&v360 - 2) = v409;
  if (!sub_2173DDA80())
  {
    v112 = *(v98 + 35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v98 + 35) = v112;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v357 = *(v112 + 16);
      sub_2172B1F4C();
      v112 = v358;
      *(v98 + 35) = v358;
    }

    v114 = *(v112 + 16);
    if (v114 >= *(v112 + 24) >> 1)
    {
      sub_2172B1F4C();
      v112 = v359;
    }

    *(v112 + 16) = v114 + 1;
    v115 = v112 + 16 * v114;
    *(v115 + 32) = 0;
    *(v115 + 40) = 0;
    *(v98 + 35) = v112;
  }

  v101 = v404;
  sub_21752AECC(v404, type metadata accessor for CloudArtist);
  OUTLINED_FUNCTION_6_54();
  sub_21752BBD4();
  v116 = &qword_27CB24728;
  v117 = &qword_217758CB0;
LABEL_22:
  sub_2171F0738(v103, v116, v117);
  v120 = v101 + v401[5];
  memcpy(v413, v120, sizeof(v413));
  memcpy(v414, v120, sizeof(v414));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v414) == 1)
  {
    v121 = v425;
  }

  else
  {
    memcpy(v409, v414, 0x1B8uLL);
    memcpy(v405, v413, sizeof(v405));
    OUTLINED_FUNCTION_95_13();
    CloudAttribute<A>.convertToArtwork()(v411);
    memcpy(v406, v409, 0x1B8uLL);
    OUTLINED_FUNCTION_63(v406);
    memcpy(v409, v411, 0x221uLL);
    nullsub_1(v409, v122);
    v121 = v409;
  }

  memcpy(v412, v121, 0x221uLL);
  v123 = v96[7];
  memcpy(v411, v56, 0x221uLL);
  sub_2171F0738(v411, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v56, v412, 0x221uLL);
  v124 = *(v120 + 448);
  v56[69] = *(v120 + 440);
  v56[70] = v124;
  v125 = type metadata accessor for CloudArtist.Attributes(0);
  v126 = v125[6];
  sub_217751DE8();
  v369 = v126;
  sub_2172E1ECC(&v126[v120], v56 + v370);
  *(v56 + v123) = *(v120 + v125[7]);
  v127 = (v120 + v125[8]);
  v128 = v127[8];
  v397 = v120;
  if (v128)
  {
    v129 = v127[7];
    v368 = v127[6];
    v130 = v127[4];
    v131 = v127[5];
    v132 = v127[3];
    v365 = v127[2];
    v366 = v130;
    v133 = v127[1];
    v364 = *v127;
    v370 = v129;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v367 = v131;
    sub_217751DE8();
  }

  else
  {
    v364 = 0;
    v365 = 0;
    v132 = 0;
    v366 = 0;
    v367 = 0;
    v368 = 0;
    v370 = 0;
    v133 = 1;
  }

  v134 = v96[9];
  v135 = v96[10];
  v136 = v96[11];
  v363 = v96[12];
  v137 = v371;
  v138 = *(v371 + 1);
  v410[0] = *v371;
  v410[1] = v138;
  v139 = *(v371 + 3);
  v410[2] = *(v371 + 2);
  v410[3] = v139;
  sub_217751DE8();
  sub_2171F0738(v410, &qword_27CB24B70, &unk_217759460);
  v140 = v365;
  *v137 = v364;
  *(v137 + 1) = v133;
  *(v137 + 2) = v140;
  *(v137 + 3) = v132;
  v141 = v367;
  *(v137 + 4) = v366;
  *(v137 + 5) = v141;
  v142 = v370;
  *(v137 + 6) = v368;
  *(v137 + 7) = v142;
  v143 = v397;
  v144 = v402;
  *(v402 + v134) = *(v397 + v125[9]);
  *(v144 + v135) = *(v143 + v125[10]);
  *(v144 + v136) = *(v143 + v125[11]);
  *(v144 + v363) = *(v143 + v125[12]);
  v145 = v375;
  sub_2172E3D54();
  LODWORD(v372) = __swift_getEnumTagSinglePayload(v145, 1, v372) != 1;
  v146 = v96[13];
  v147 = (v144 + v96[16]);
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v145, &unk_27CB277C0, &qword_217758DC0);
  *(v144 + v146) = v372;
  v148 = (v143 + v125[13]);
  v149 = v148[1];
  *v147 = *v148;
  v147[1] = v149;
  v150 = v125[14];
  sub_217751DE8();
  sub_2172E1ECC(v143 + v150, v144 + v373);
  v151 = v404;
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    sub_2171F0738(v409, &qword_27CB24328, &unk_21775D440);
    v152 = v399;
    v154 = v395;
    v153 = v396;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    v154 = v395;
    v153 = v396;
    if (v406[2])
    {
      *&v155 = OUTLINED_FUNCTION_41_21();
      v407 = v155;
      v408 = v155;
      v156 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v156, v157);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v158, v159, v160, v161, &type metadata for Album, v162, v163, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      v164 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v164, v165);
      v152 = v399;
      goto LABEL_35;
    }

    sub_2171F0738(v406, &qword_27CB24270, &unk_21775D640);
    v152 = v399;
  }

  OUTLINED_FUNCTION_0_81();
LABEL_35:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v166 = &qword_27CB24328;
    v167 = &unk_21775D440;
    v168 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    if (v406[2])
    {
      *&v169 = OUTLINED_FUNCTION_41_21();
      v407 = v169;
      v408 = v169;
      v170 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v170, v171);
      sub_2172E2188();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v172, v173, v174, v175, &type metadata for Artist, v176, v177, &protocol witness table for Artist, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      v178 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v178, v179);
      goto LABEL_42;
    }

    v166 = &qword_27CB24280;
    v167 = &unk_21775D680;
    v168 = v406;
  }

  sub_2171F0738(v168, v166, v167);
  OUTLINED_FUNCTION_0_81();
LABEL_42:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    sub_2171F0738(v409, &qword_27CB24328, &unk_21775D440);
    memset(v406, 0, 128);
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
  }

  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v180 = &qword_27CB24328;
    v181 = &unk_21775D440;
    v182 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    if (v406[2])
    {
      *&v183 = OUTLINED_FUNCTION_41_21();
      v407 = v183;
      v408 = v183;
      v184 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v184, v185);
      sub_2172E2134();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v186, v187, v188, v189, &type metadata for Genre, v190, v191, &protocol witness table for Genre, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      v192 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v192, v193);
      goto LABEL_52;
    }

    v180 = &qword_27CB243B0;
    v181 = &unk_21775D670;
    v182 = v406;
  }

  sub_2171F0738(v182, v180, v181);
  OUTLINED_FUNCTION_0_81();
LABEL_52:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v194 = &qword_27CB24328;
    v195 = &unk_21775D440;
    v196 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    if (v406[2])
    {
      *&v197 = OUTLINED_FUNCTION_41_21();
      v407 = v197;
      v408 = v197;
      v198 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v198, v199);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v200, v201, v202, v203, &type metadata for MusicVideo, v204, v205, &protocol witness table for MusicVideo, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      v206 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v206, v207);
      goto LABEL_59;
    }

    v194 = &qword_27CB242B0;
    v195 = &unk_21775D630;
    v196 = v406;
  }

  sub_2171F0738(v196, v194, v195);
  OUTLINED_FUNCTION_0_81();
LABEL_59:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v208 = &qword_27CB24328;
    v209 = &unk_21775D440;
    v210 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    if (v406[2])
    {
      *&v211 = OUTLINED_FUNCTION_41_21();
      v407 = v211;
      v408 = v211;
      v212 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v212, v213);
      sub_2172E208C();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v214, v215, v216, v217, &type metadata for Playlist, v218, v219, &protocol witness table for Playlist, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      v220 = OUTLINED_FUNCTION_42_21();
      OUTLINED_FUNCTION_99_12(v220, v221);
      goto LABEL_66;
    }

    v208 = &qword_27CB242C0;
    v209 = &unk_21775D650;
    v210 = v406;
  }

  sub_2171F0738(v210, v208, v209);
  OUTLINED_FUNCTION_0_81();
LABEL_66:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_59_12();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v222 = &qword_27CB24328;
    v223 = &unk_21775D440;
    v224 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A204(v409);
    if (v406[2])
    {
      *&v225 = OUTLINED_FUNCTION_41_21();
      v407 = v225;
      v408 = v225;
      v226 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v226, v227);
      sub_2173692A0();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v228, v229, v230, v231, &type metadata for Station, v232, v233, &protocol witness table for Station, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_73;
    }

    v222 = &qword_27CB242F0;
    v223 = &unk_217797B80;
    v224 = v406;
  }

  sub_2171F0738(v224, v222, v223);
  OUTLINED_FUNCTION_0_81();
LABEL_73:
  sub_2172E1F3C();
  v234 = v151 + v401[7];
  sub_2172E3D54();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v235 = &qword_27CB24AB0;
    v236 = &qword_217759088;
    v237 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v238 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v238, v239);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v240, v241, v242, v243, &type metadata for Album, v244, v245, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_80;
    }

    v235 = &qword_27CB24270;
    v236 = &unk_21775D640;
    v237 = v406;
  }

  sub_2171F0738(v237, v235, v236);
  OUTLINED_FUNCTION_0_81();
LABEL_80:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v246 = &qword_27CB24AB0;
    v247 = &qword_217759088;
    v248 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v249 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v249, v250);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v251, v252, v253, v254, &type metadata for Album, v255, v256, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_87;
    }

    v246 = &qword_27CB24270;
    v247 = &unk_21775D640;
    v248 = v406;
  }

  sub_2171F0738(v248, v246, v247);
  OUTLINED_FUNCTION_0_81();
LABEL_87:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v257 = &qword_27CB24AB0;
    v258 = &qword_217759088;
    v259 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v260 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v260, v261);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v262, v263, v264, v265, &type metadata for Album, v266, v267, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_94;
    }

    v257 = &qword_27CB24270;
    v258 = &unk_21775D640;
    v259 = v406;
  }

  sub_2171F0738(v259, v257, v258);
  OUTLINED_FUNCTION_0_81();
LABEL_94:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v268 = &qword_27CB24AB0;
    v269 = &qword_217759088;
    v270 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v271 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v271, v272);
      sub_2172E208C();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v273, v274, v275, v276, &type metadata for Playlist, v277, v278, &protocol witness table for Playlist, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_101;
    }

    v268 = &qword_27CB242C0;
    v269 = &unk_21775D650;
    v270 = v406;
  }

  sub_2171F0738(v270, v268, v269);
  OUTLINED_FUNCTION_0_81();
LABEL_101:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v279 = &qword_27CB24AB0;
    v280 = &qword_217759088;
    v281 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v282 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v282, v283);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v284, v285, v286, v287, &type metadata for Album, v288, v289, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_108;
    }

    v279 = &qword_27CB24270;
    v280 = &unk_21775D640;
    v281 = v406;
  }

  sub_2171F0738(v281, v279, v280);
  OUTLINED_FUNCTION_0_81();
LABEL_108:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v290 = &qword_27CB24AB0;
    v291 = &qword_217759088;
    v292 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v293 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v293, v294);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v295, v296, v297, v298, &type metadata for Album, v299, v300, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_115;
    }

    v290 = &qword_27CB24270;
    v291 = &unk_21775D640;
    v292 = v406;
  }

  sub_2171F0738(v292, v290, v291);
  OUTLINED_FUNCTION_0_81();
LABEL_115:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v301 = &qword_27CB24AB0;
    v302 = &qword_217759088;
    v303 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v304 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v304, v305);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v306, v307, v308, v309, &type metadata for Album, v310, v311, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_122;
    }

    v301 = &qword_27CB24270;
    v302 = &unk_21775D640;
    v303 = v406;
  }

  sub_2171F0738(v303, v301, v302);
  OUTLINED_FUNCTION_0_81();
LABEL_122:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v312 = &qword_27CB24AB0;
    v313 = &qword_217759088;
    v314 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v315 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v315, v316);
      sub_2172E2188();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v317, v318, v319, v320, &type metadata for Artist, v321, v322, &protocol witness table for Artist, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_129;
    }

    v312 = &qword_27CB24280;
    v313 = &unk_21775D680;
    v314 = v406;
  }

  sub_2171F0738(v314, v312, v313);
  OUTLINED_FUNCTION_0_81();
LABEL_129:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v323 = &qword_27CB24AB0;
    v324 = &qword_217759088;
    v325 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v326 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v326, v327);
      sub_2172E2038();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v328, v329, v330, v331, &type metadata for Album, v332, v333, &protocol witness table for Album, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_136;
    }

    v323 = &qword_27CB24270;
    v324 = &unk_21775D640;
    v325 = v406;
  }

  sub_2171F0738(v325, v323, v324);
  OUTLINED_FUNCTION_0_81();
LABEL_136:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    v334 = &qword_27CB24AB0;
    v335 = &qword_217759088;
    v336 = v409;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v337 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v337, v338);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v339, v340, v341, v342, &type metadata for MusicVideo, v343, v344, &protocol witness table for MusicVideo, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_143;
    }

    v334 = &qword_27CB242B0;
    v335 = &unk_21775D630;
    v336 = v406;
  }

  sub_2171F0738(v336, v334, v335);
  OUTLINED_FUNCTION_0_81();
LABEL_143:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_37_24();
  if (v102)
  {
    sub_2171F0738(v409, &qword_27CB24AB0, &qword_217759088);
    v345 = v398;
  }

  else
  {
    sub_2172E3D54();
    sub_21728463C(v409);
    v345 = v398;
    if (v406[2])
    {
      OUTLINED_FUNCTION_7_47();
      v346 = OUTLINED_FUNCTION_16_0();
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(v346, v347);
      sub_2173626DC();
      OUTLINED_FUNCTION_9_42();
      OUTLINED_FUNCTION_3_69(v348, v349, v350, v351, &type metadata for Song, v352, v353, &protocol witness table for Song, v360);
      sub_2171F0738(&v407, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_39_17();
      goto LABEL_150;
    }

    sub_2171F0738(v406, &qword_27CB242E0, &unk_21777EEE0);
  }

  OUTLINED_FUNCTION_0_81();
LABEL_150:
  sub_2172E1F3C();
  if (*(v151 + v401[8]) == 1)
  {
    v354 = 0;
  }

  else
  {
    v354 = sub_217751DE8();
  }

  v355 = v402;
  *(v402 + *(v345 + 176)) = v354;
  v409[3] = v345;
  v409[4] = &protocol witness table for ArtistPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v409);
  sub_21752BBD4();
  Artist.init(propertyProvider:)(v409, v393);

  (*(*(v153 - 8) + 8))(v154, v153);
  sub_2171F0738(v152, &qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_14_36();
  sub_21752AECC(v151, v356);
  sub_21752AECC(v355, type metadata accessor for ArtistPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Artist.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v749 = v11;
  v725 = type metadata accessor for CloudArtist(0);
  v12 = OUTLINED_FUNCTION_43(v725);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_1();
  v770 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v23 = OUTLINED_FUNCTION_105_11();
  v24 = type metadata accessor for CloudArtist.Attributes(v23);
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_1();
  v791 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  swift_allocObject();
  *&v321 = MEMORY[0x277D84F90];
  *(&v321 + 1) = MEMORY[0x277D84F90];
  v31 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v321, MEMORY[0x277D84F90], &unk_282959AF8);
  sub_2176CB030(v31, v32, v33, v34, v35, v36, v37, v38, v322, v346, v370, v394, v418, v442, v466, v490, v514, v538, v561, v585, v609, v633, v657, v680, v702, v725);

  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v858) == 1)
  {
    sub_2172E22C0(v857);
  }

  else
  {
    memcpy(v822, v858, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v852);
    v39 = OUTLINED_FUNCTION_35_23();
    memcpy(v39, v822, 0x221uLL);
    v40 = OUTLINED_FUNCTION_35_23();
    sub_217284084(v40);
    memcpy(v822, v852, 0x1B8uLL);
    nullsub_1(v822, v41);
    memcpy(v857, v822, sizeof(v857));
  }

  if (qword_280BE6A48 != -1)
  {
    swift_once();
  }

  v42 = sub_2172A3FF0();
  v586 = v43;
  v610 = v42;
  if (qword_280BE69D8 != -1)
  {
    swift_once();
  }

  sub_2176CA788(qword_280C021B8, v43, v44, v45, v46, v47, v48, v49, v323, v347, v371, v395, v419, v443, v467, v491, v515, v539, v562, v586, v610, v634, v658, v681, v703, v726, v749, v770, v791, v812);
  if (qword_280BE68F0 != -1)
  {
    swift_once();
  }

  v563 = sub_2172A494C(qword_280C02170);
  if (qword_280BE6998 != -1)
  {
    swift_once();
  }

  sub_2176CA7A8(qword_280C021A0, v50, v51, v52, v53, v54, v55, v56, v324, v348, v372, v396, v420, v444, v468, v492, v516, v540, v563, v587, v611, v1, v659, v8, v704, v727);
  v853 = v836;
  v854 = v837[0];
  v855 = v837[1];
  v856 = v837[2];
  v57 = *(&v836 + 1);
  if (*(&v836 + 1) == 1)
  {
    v397 = 0;
    v421 = 0;
    v57 = 0;
    v445 = 0;
    v469 = 0;
    v493 = 0;
    v517 = 0uLL;
    v373 = 0;
  }

  else
  {
    v517 = v856;
    v58 = *(&v855 + 1);
    v469 = v855;
    v59 = *(&v854 + 1);
    v397 = v853;
    v421 = v854;
    sub_217751DE8();
    sub_217751DE8();
    v445 = v59;
    sub_217751DE8();
    v493 = v58;
    sub_217751DE8();
    v373 = sub_217751DC8();
    sub_2171F0738(&v853, &qword_27CB24B70, &unk_217759460);
  }

  if (qword_280BE68D0 != -1)
  {
    swift_once();
  }

  v349 = sub_2172A4930(qword_280C02158);
  if (qword_280BE6A28 != -1)
  {
    swift_once();
  }

  v325 = sub_2172A4364(qword_280C021D0);
  if (qword_280BE6928 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02180, v60, v61, v62, v63, v64, v65, v66, v325, v349, v373, v397, v421, v445, SWORD2(v445), SBYTE6(v445), SHIBYTE(v445), v469, v493, v517, *(&v517 + 1), v564, v588, v612, v635);
  v75 = v74;
  if (qword_280BE6A50 != -1)
  {
    swift_once();
  }

  v705 = v6;
  sub_2172A4358(qword_280C021E0, v67, v68, v69, v70, v71, v72, v73, v326, v350, v374, v398, v422, v446, SWORD2(v446), SBYTE6(v446), SHIBYTE(v446), v470, v494, v518, v541, v565, v589, v613, v636);
  v77 = v76;
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v660 = v10;
  v78 = sub_2172A3FF0();
  if (v79)
  {
    v86 = v78;
  }

  else
  {
    v86 = 0;
  }

  if (v79)
  {
    v87 = v79;
  }

  else
  {
    v87 = 0xE000000000000000;
  }

  if (qword_280BE68A0 != -1)
  {
    swift_once();
  }

  v88 = v792;
  v89 = v792 + v24[14];
  sub_2176CA788(qword_280C02140, v79, v80, v81, v82, v83, v84, v85, v327, v351, v375, v399, v423, v447, v471, v495, v519, v542, v566, v590, v614, v637, v660, v682, v705, v728, v750, v771, v792, v812);
  memcpy(v88, v857, 0x1B8uLL);
  v88[55] = v615;
  v88[56] = v591;
  v90 = v24[6];
  sub_2172E21DC();
  *(v88 + v24[7]) = v567;
  v91 = (v88 + v24[8]);
  *v91 = v400;
  v91[1] = v57;
  v91[2] = v424;
  v91[3] = v448;
  v91[4] = v472;
  v91[5] = v496;
  v91[6] = v520;
  v91[7] = v543;
  v91[8] = v376;
  *(v88 + v24[9]) = v352;
  *(v88 + v24[10]) = v328;
  *(v88 + v24[11]) = v75;
  *(v88 + v24[12]) = v77;
  v92 = (v88 + v24[13]);
  *v92 = v86;
  v92[1] = v87;
  v852[1] = 0;
  v852[0] = 0;
  v852[2] = 1;
  bzero(&v852[3], 0x368uLL);
  if (qword_280BE6880 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6888, v93, v94, v95, v96, v97, v98, v99, v328, v352, v376, v400, v424, v448, v472, v496, v520, v543, v567, v591, v615, v638, v661, v683, v706, v729, v751, v772, v793, v812);
  if (qword_280BE69A8 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280C021A8, v100, v101, v102, v103, v104, v105, v106, v329, v353, v377, v401, v425, v449, v473, v497, v521, v544, v568, v592, v616, v639, v662, v684, v707, v730, v752, v773, v794, v812);
  if (qword_280BE68E0 != -1)
  {
    swift_once();
  }

  sub_2176CB058(qword_280C02168, v107, v108, v109, v110, v111, v112, v113, v330, v354, v378, v402, v426, v450, v474, v498, v522, v545, v569, v593, v617, v640, v663, v685, v708, v731, v753, v774, v795, v812);
  if (qword_280BE6870 != -1)
  {
    swift_once();
  }

  sub_2176CA750(qword_280BE6878, v114, v115, v116, v117, v118, v119, v120, v331, v355, v379, v403, v427, v451, v475, v499, v523, v546, v570, v594, v618, v641, v664, v686, v709, v732, v754, v775, v796, v812);
  if (qword_280BE69E8 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE69F0, v121, v122, v123, v124, v125, v126, v127, v332, v356, v380, v404, v428, v452, v476, v500, v524, v547, v571, v595, v619, v642, v665, v687, v710, v733, v755, v776, v797, v812);
  if (qword_280BE6820 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6828, v128, v129, v130, v131, v132, v133, v134, v333, v357, v381, v405, v429, v453, v477, v501, v525, v548, v572, v596, v620, v643, v666, v688, v711, v734, v756, v777, v798, v812);
  if (qword_280BE6848 != -1)
  {
    swift_once();
  }

  sub_2176CA450(qword_280BE6850, v135, v136, v137, v138, v139, v140, v141, v334, v358, v382, v406, v430, v454, v478, v502, v526, v549, v573, v597, v621, v644, v667, v689, v712, v735, v757, v778, v799, v812);
  if (v851[11] || v850[11] || v849[2] || v848[11] || v847[11] || v846[11] || v845[11])
  {
    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v824);
      v823[0] = v824[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v142 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v142, v143, v144);
      memset(v822, 0, 128);
    }

    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2172E2188();
      OUTLINED_FUNCTION_28_31(v823);
      LOBYTE(v821[0]) = v823[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v145 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v145, v146, v147);
      OUTLINED_FUNCTION_60_18();
    }

    sub_2172E3D54();
    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2172E2134();
      OUTLINED_FUNCTION_28_31(v820);
      v819[0] = v820[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v148 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v148, v149, v150);
      OUTLINED_FUNCTION_89_12();
    }

    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_28_31(v819);
      v818[0] = v819[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v151 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v151, v152, v153);
      OUTLINED_FUNCTION_90_11();
    }

    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2172E208C();
      OUTLINED_FUNCTION_28_31(v818);
      v817[0] = v818[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v154 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v154, v155, v156);
      OUTLINED_FUNCTION_87_14();
    }

    OUTLINED_FUNCTION_65_17();
    sub_2172E3D54();
    if (v838)
    {
      sub_2173692A0();
      OUTLINED_FUNCTION_28_31(v817);
      v816[0] = v817[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_13_38();
      v157 = OUTLINED_FUNCTION_86_11();
      sub_2171F0738(v157, v158, v159);
      OUTLINED_FUNCTION_33_24();
    }

    else
    {
      v160 = OUTLINED_FUNCTION_86_11();
      sub_2171F0738(v160, v161, v162);
      v163 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v163, v164, v165);
      OUTLINED_FUNCTION_88_10();
    }

    v166 = OUTLINED_FUNCTION_35_23();
    memcpy(v166, v822, 0x80uLL);
    memcpy(v839, v824, sizeof(v839));
    memcpy(v840, v823, sizeof(v840));
    memcpy(v841, v821, sizeof(v841));
    memcpy(v842, v820, sizeof(v842));
    memcpy(v843, v819, sizeof(v843));
    memcpy(v844, v818, sizeof(v844));
    OUTLINED_FUNCTION_86_11();
    OUTLINED_FUNCTION_65_17();
    memcpy(v167, v168, 0x380uLL);
  }

  v836 = 0uLL;
  *&v837[0] = 1;
  bzero(v837 + 8, 0x568uLL);
  if (qword_280BE6950 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6958, v169, v170, v171, v172, v173, v174, v175, v335, v359, v383, v407, v431, v455, v479, v503, v527, v550, v574, v598, v622, v645, v668, v690, v713, v736, v758, v779, v800, v812);
  if (qword_280BE6908 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6910, v176, v177, v178, v179, v180, v181, v182, v336, v360, v384, v408, v432, v456, v480, v504, v528, v551, v575, v599, v623, v646, v669, v691, v714, v737, v759, v780, v801, v812);
  if (qword_280BE6980 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6988, v183, v184, v185, v186, v187, v188, v189, v337, v361, v385, v409, v433, v457, v481, v505, v529, v552, v576, v600, v624, v647, v670, v692, v715, v738, v760, v781, v802, v812);
  if (qword_280BE68F8 != -1)
  {
    swift_once();
  }

  sub_2176CA4F0(qword_280BE6900, v190, v191, v192, v193, v194, v195, v196, v338, v362, v386, v410, v434, v458, v482, v506, v530, v553, v577, v601, v625, v648, v671, v693, v716, v739, v761, v782, v803, v812);
  if (qword_280BE6A30 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A38, v197, v198, v199, v200, v201, v202, v203, v339, v363, v387, v411, v435, v459, v483, v507, v531, v554, v578, v602, v626, v649, v672, v694, v717, v740, v762, v783, v804, v812);
  if (qword_280BE69C8 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE69D0, v204, v205, v206, v207, v208, v209, v210, v340, v364, v388, v412, v436, v460, v484, v508, v532, v555, v579, v603, v627, v650, v673, v695, v718, v741, v763, v784, v805, v812);
  if (qword_280BE6A10 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6A18, v211, v212, v213, v214, v215, v216, v217, v341, v365, v389, v413, v437, v461, v485, v509, v533, v556, v580, v604, v628, v651, v674, v696, v719, v742, v764, v785, v806, v812);
  if (qword_280BE6968 != -1)
  {
    swift_once();
  }

  sub_2176CB03C(qword_280BE6970, v218, v219, v220, v221, v222, v223, v224, v342, v366, v390, v414, v438, v462, v486, v510, v534, v557, v581, v605, v629, v652, v675, v697, v720, v743, v765, v786, v807, v812);
  if (qword_280BE6860 != -1)
  {
    swift_once();
  }

  sub_2176CA76C(qword_280BE6868, v225, v226, v227, v228, v229, v230, v231, v343, v367, v391, v415, v439, v463, v487, v511, v535, v558, v582, v606, v630, v653, v676, v698, v721, v744, v766, v787, v808, v812);
  if (qword_280BE6A58 != -1)
  {
    swift_once();
  }

  sub_2176CA69C(qword_280BE6A60, v232, v233, v234, v235, v236, v237, v238, v344, v368, v392, v416, v440, v464, v488, v512, v536, v559, v583, v607, v631, v654, v677, v699, v722, v745, v767, v788, v809, v812);
  if (qword_280BE6830 != -1)
  {
    swift_once();
  }

  sub_2176CB104(qword_280BE6838, v239, v240, v241, v242, v243, v244, v245, v345, v369, v393, v417, v441, v465, v489, v513, v537, v560, v584, v608, v632, v655, v678, v700, v723, v746, v768, v789, v810, v812);
  if (v835[11] || v834[11] || v833[11] || v832[11] || v831[11] || v830[11] || v829[11] || v828[11] || v827[11] || v826[11] || v825[11])
  {
    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v823);
      LOBYTE(v821[0]) = v823[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_60_18();
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v821);
      LOBYTE(v820[0]) = v821[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      memset(v823, 0, 128);
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v820);
      v819[0] = v820[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_89_12();
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E208C();
      OUTLINED_FUNCTION_28_31(v819);
      v818[0] = v819[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25330, &unk_21775E9B0);
      OUTLINED_FUNCTION_90_11();
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v818);
      v817[0] = v818[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_87_14();
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v817);
      v816[0] = v817[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_88_10();
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v816);
      v815[0] = v816[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      memset(v817, 0, sizeof(v817));
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2188();
      OUTLINED_FUNCTION_28_31(v815);
      v814[0] = v815[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25310, &unk_21775D3D0);
      memset(v816, 0, sizeof(v816));
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_28_31(v814);
      v813[0] = v814[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25318, &qword_2177657C0);
      memset(v815, 0, sizeof(v815));
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_28_31(v813);
      HIBYTE(v812) = v813[0];
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      sub_2171F0738(v822, &qword_27CB25338, &unk_21775D3E0);
      memset(v814, 0, sizeof(v814));
    }

    sub_2172E3D54();
    if (*(&v822[5] + 1))
    {
      sub_2173626DC();
      OUTLINED_FUNCTION_28_31(&v812 + 7);
      BYTE6(v812) = HIBYTE(v812);
      OUTLINED_FUNCTION_70_13();
      OUTLINED_FUNCTION_11_45();
      v246 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v246, v247, v248);
      OUTLINED_FUNCTION_43_15();
    }

    else
    {
      v249 = OUTLINED_FUNCTION_35_23();
      sub_2171F0738(v249, v250, v251);
      sub_2171F0738(v822, &qword_27CB255A8, &unk_21775D450);
      memset(v813, 0, sizeof(v813));
    }

    memcpy(v822, v824, 0x80uLL);
    memcpy(&v822[8], v823, 0x80uLL);
    memcpy(&v822[16], v821, 0x80uLL);
    memcpy(&v822[24], v820, 0x80uLL);
    memcpy(&v822[32], v819, 0x80uLL);
    memcpy(&v822[40], v818, 0x80uLL);
    memcpy(&v822[48], v817, 0x80uLL);
    memcpy(&v822[56], v816, 0x80uLL);
    memcpy(&v822[64], v815, 0x80uLL);
    memcpy(&v822[72], v814, 0x80uLL);
    memcpy(&v822[80], v813, 0x80uLL);
    v252 = OUTLINED_FUNCTION_35_23();
    memcpy(v252, v822, 0x580uLL);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254A0, &qword_217794FF0);
  swift_allocObject();
  v253 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  sub_2172A44E0(v253);
  OUTLINED_FUNCTION_5_4();

  if ((v4 + 2) <= 1)
  {
    v254 = 1;
  }

  else
  {
    v254 = (v4 + 2);
  }

  v256 = *v4;
  v255 = v4[1];
  v257 = v747[5];
  OUTLINED_FUNCTION_16_42();
  sub_21752BBD4();
  v258 = v747[6];
  OUTLINED_FUNCTION_86_11();
  sub_2172E3D54();
  v259 = v747[7];
  OUTLINED_FUNCTION_35_23();
  sub_2172E3D54();
  *v790 = v256;
  v790[1] = v255;
  *(v790 + v747[8]) = v254;
  v260 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v261 = *(v260 + 24);
  sub_217751DE8();
  v262 = OUTLINED_FUNCTION_16_0();
  v261(v262);
  nullsub_1(v823, v263);
  memcpy(v824, v823, 0x161uLL);
  OUTLINED_FUNCTION_6_54();
  sub_21752BBD4();
  OUTLINED_FUNCTION_146();
  v264 = OUTLINED_FUNCTION_16_0();
  v265(v264);
  v266 = *&v822[2];
  __swift_project_boxed_opaque_existential_1(v822, *(&v822[1] + 1));
  v267 = *(*(v266 + 8) + 48);
  v268 = OUTLINED_FUNCTION_5_4();
  v269(v268);
  __swift_destroy_boxed_opaque_existential_1(v822);
  v724 = v820[1];
  v748 = v820[0];
  v701 = v820[2];
  OUTLINED_FUNCTION_146();
  v270 = OUTLINED_FUNCTION_16_0();
  v271(v270);
  OUTLINED_FUNCTION_67(v822, *(&v822[1] + 1));
  v273 = *(v272 + 56);
  v274 = OUTLINED_FUNCTION_5_4();
  v276 = v275(v274);
  v656 = v277;
  v679 = v276;
  __swift_destroy_boxed_opaque_existential_1(v822);
  memcpy(v822, v824, 0x168uLL);
  *(&v822[22] + 1) = 0;
  v822[23] = 0uLL;
  nullsub_1(v822, v278);
  OUTLINED_FUNCTION_146();
  v279 = OUTLINED_FUNCTION_16_0();
  v280(v279);
  v281 = v821[3];
  v282 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v282, v281);
  v284 = *(v283 + 64);
  v285 = OUTLINED_FUNCTION_5_4();
  v287 = v286(v285);
  __swift_destroy_boxed_opaque_existential_1(v821);
  OUTLINED_FUNCTION_146();
  v288 = OUTLINED_FUNCTION_16_0();
  v289(v288);
  v290 = v821[3];
  v291 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v291, v290);
  v293 = *(v292 + 72);
  v294 = OUTLINED_FUNCTION_5_4();
  v296 = v295(v294);
  __swift_destroy_boxed_opaque_existential_1(v821);
  v297 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v298 = *(v297 + 96);
  v299 = OUTLINED_FUNCTION_997();
  v300(v299, v297);
  v301 = v821[3];
  v302 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v302, v301);
  v304 = *(v303 + 80);
  v305 = OUTLINED_FUNCTION_997();
  v307 = v306(v305);
  __swift_destroy_boxed_opaque_existential_1(v821);
  v308 = v4[5];
  v309 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v308);
  (*(v309 + 96))(v821, v308, v309);
  v310 = v821[3];
  v311 = OUTLINED_FUNCTION_101_8();
  OUTLINED_FUNCTION_67(v311, v310);
  v313 = (*(v312 + 88))(v310);
  OUTLINED_FUNCTION_14_36();
  sub_21752AECC(v790, v314);
  v315 = OUTLINED_FUNCTION_35_23();
  sub_2171F0738(v315, &qword_27CB24AB0, &qword_217759088);
  v316 = OUTLINED_FUNCTION_86_11();
  sub_2171F0738(v316, &qword_27CB24328, &unk_21775D440);
  OUTLINED_FUNCTION_15_41();
  sub_21752AECC(v811, v317);
  __swift_destroy_boxed_opaque_existential_1(v821);
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v319 = v769 + v318[9];
  *v319 = v748;
  *(v319 + 8) = v724;
  *(v319 + 16) = v701;
  v320 = (v769 + v318[10]);
  *v320 = v679;
  v320[1] = v656;
  memcpy((v769 + v318[11]), v822, 0x180uLL);
  *(v769 + v318[12]) = v287;
  *(v769 + v318[13]) = v296;
  *(v769 + v318[14]) = v307;
  *(v769 + v318[15]) = v313;
  OUTLINED_FUNCTION_63(v835);
  OUTLINED_FUNCTION_63(v851);
  sub_2171F0738(v825, &qword_27CB255A8, &unk_21775D450);
  sub_2171F0738(v826, &qword_27CB25338, &unk_21775D3E0);
  OUTLINED_FUNCTION_63(v827);
  OUTLINED_FUNCTION_169_1(v828);
  OUTLINED_FUNCTION_63(v829);
  OUTLINED_FUNCTION_63(v830);
  OUTLINED_FUNCTION_63(v831);
  sub_2171F0738(v832, &qword_27CB25330, &unk_21775E9B0);
  OUTLINED_FUNCTION_63(v833);
  OUTLINED_FUNCTION_63(v834);
  sub_2171F0738(v845, &qword_27CB255B0, &unk_217793B50);
  sub_2171F0738(v846, &qword_27CB25330, &unk_21775E9B0);
  sub_2171F0738(v847, &qword_27CB25338, &unk_21775D3E0);
  sub_2171F0738(v848, &qword_27CB25320, &unk_21776E020);
  sub_2171F0738(v849, &qword_27CB24330, &unk_21775D460);
  OUTLINED_FUNCTION_169_1(v850);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudArtist.Attributes.artwork.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_2172E3D54();
}

void static CloudArtist.Attributes.== infix(_:_:)()
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
  OUTLINED_FUNCTION_67_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  OUTLINED_FUNCTION_6_1();
  v121 = v19 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v114[-v23];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v25 = OUTLINED_FUNCTION_43(v122);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_6_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v114[-v34];
  OUTLINED_FUNCTION_12_33();
  memcpy(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_109_9();
  memcpy(v39, v4, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v40, v41, v42);
  memcpy(&v135[55], v4, 0x1B8uLL);
  OUTLINED_FUNCTION_12_33();
  memcpy(v43, v44, v45);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(&v137) == 1)
  {
    OUTLINED_FUNCTION_120_8(v134);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v134) == 1)
    {
      v118 = v31;
      v119 = v0;
      v120 = v10;
      memcpy(v136, v135, 0x1B8uLL);
      OUTLINED_FUNCTION_62_15();
      OUTLINED_FUNCTION_109_9();
      OUTLINED_FUNCTION_62_15();
      sub_2171F0738(v136, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v134, v135, sizeof(v134));
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_109_9();
    OUTLINED_FUNCTION_225_0();
    v46 = &unk_27CB25008;
    v47 = &unk_21778F850;
    v48 = v134;
LABEL_6:
    sub_2171F0738(v48, v46, v47);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_120_8(v132);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v132) == 1)
  {
    goto LABEL_5;
  }

  v118 = v31;
  v119 = v0;
  v120 = v10;
  OUTLINED_FUNCTION_120_8(v123);
  OUTLINED_FUNCTION_120_8(v134);
  memcpy(v136, v135, 0x1B8uLL);
  OUTLINED_FUNCTION_95_13();
  OUTLINED_FUNCTION_109_9();
  OUTLINED_FUNCTION_95_13();
  sub_2172A92BC();
  v50 = v49;
  OUTLINED_FUNCTION_63(v123);
  memcpy(v124, v135, sizeof(v124));
  OUTLINED_FUNCTION_63(v124);
  if ((v50 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v51 = *(v6 + 448);
  v52 = v4[56];
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_7;
    }

    v53 = *(v6 + 440) == v4[55] && v51 == v52;
    if (!v53 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v52)
  {
    goto LABEL_7;
  }

  v116 = type metadata accessor for CloudArtist.Attributes(0);
  v117 = v7;
  v54 = *(v116 + 24);
  v55 = *(v122 + 48);
  OUTLINED_FUNCTION_62_15();
  v56 = v117;
  OUTLINED_FUNCTION_62_15();
  OUTLINED_FUNCTION_73(v35);
  if (v53)
  {
    OUTLINED_FUNCTION_73(&v35[v55]);
    if (v53)
    {
      sub_2171F0738(v35, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_73(&v35[v55]);
  if (v57)
  {
    (*(v120 + 8))(v24, v56);
LABEL_26:
    v46 = &qword_27CB24840;
    v47 = &unk_217758DD0;
    v48 = v35;
    goto LABEL_6;
  }

  v58 = v119;
  v59 = v120;
  (*(v120 + 32))(v119, &v35[v55], v56);
  OUTLINED_FUNCTION_1_74();
  sub_21752AF24(v60);
  v115 = sub_217751F08();
  v61 = *(v59 + 8);
  v61(v58, v56);
  v61(v24, v56);
  sub_2171F0738(v35, &unk_27CB277C0, &qword_217758DC0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_28:
  v62 = v116;
  v63 = *(v116 + 28);
  v64 = *(v4 + v63);
  if (*(v6 + v63))
  {
    if (!v64)
    {
      goto LABEL_7;
    }

    v65 = *(v4 + v63);
    sub_217751DE8();
    sub_217262A00();
    v67 = v66;

    if ((v67 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v64)
  {
    goto LABEL_7;
  }

  v68 = (v6 + v62[8]);
  memcpy(v123, v68, 0x48uLL);
  v69 = (v4 + v62[8]);
  memcpy(v124, v69, 0x48uLL);
  v70 = v68[1];
  v128 = *v68;
  v129 = v70;
  v71 = v68[3];
  v130 = v68[2];
  v131 = v71;
  v72 = v123[8];
  if (v123[8])
  {
    if (v124[8])
    {
      v73 = v69[1];
      v125[0] = *v69;
      v125[1] = v73;
      v74 = v69[3];
      v125[2] = v69[2];
      v125[3] = v74;
      *&v125[4] = v124[8];
      memcpy(v135, v125, 0x48uLL);
      v75 = v68[1];
      v132[0] = *v68;
      v132[1] = v75;
      v76 = v68[3];
      v132[2] = v68[2];
      v132[3] = v76;
      v133 = v123[8];
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2172A9570();
      v78 = v77;
      sub_2171F0738(v125, &qword_27CB25010, &qword_21775B4F8);
      v126[0] = v128;
      v126[1] = v129;
      v126[2] = v130;
      v126[3] = v131;
      v127 = v72;
      sub_2171F0738(v126, &qword_27CB25010, &qword_21775B4F8);
      if ((v78 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (v124[8])
  {
LABEL_38:
    OUTLINED_FUNCTION_74_12();
    v79 = v69[1];
    *&v135[9] = *v69;
    *&v135[11] = v79;
    v80 = v69[3];
    *&v135[13] = v69[2];
    *&v135[15] = v80;
    v135[8] = v72;
    v135[17] = v81;
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_225_0();
    v46 = &unk_27CB25018;
    v47 = &unk_21775B500;
    v48 = v135;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_74_12();
  v135[8] = 0;
  OUTLINED_FUNCTION_62_15();
  OUTLINED_FUNCTION_62_15();
  sub_2171F0738(v135, &qword_27CB25010, &qword_21775B4F8);
LABEL_40:
  v82 = v62[9];
  v83 = *(v4 + v82);
  if (*(v6 + v82))
  {
    if (!v83)
    {
      goto LABEL_7;
    }

    v84 = *(v4 + v82);
    sub_217751DE8();
    sub_217262CB4();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v83)
  {
    goto LABEL_7;
  }

  v87 = v62[10];
  v88 = *(v6 + v87);
  v89 = *(v4 + v87);
  if (v88)
  {
    if (!v89 || (sub_217270790(v88, v89) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v89)
  {
    goto LABEL_7;
  }

  v90 = v62[11];
  v91 = *(v6 + v90);
  v92 = *(v4 + v90);
  if (v91 == 2)
  {
    if (v92 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v92 == 2 || ((v92 ^ v91) & 1) != 0)
  {
    goto LABEL_7;
  }

  v93 = v62[12];
  v94 = *(v6 + v93);
  v95 = *(v4 + v93);
  if (v94 == 2)
  {
    if (v95 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v95 == 2 || ((v95 ^ v94) & 1) != 0)
  {
    goto LABEL_7;
  }

  v96 = v62[13];
  v97 = (v6 + v96);
  v98 = *(v6 + v96 + 8);
  v99 = (v4 + v96);
  v100 = v99[1];
  if (!v98)
  {
    if (v100)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

  if (v100)
  {
    v101 = *v97 == *v99 && v98 == v100;
    if (v101 || (sub_217753058() & 1) != 0)
    {
LABEL_69:
      v102 = v62[14];
      v103 = *(v122 + 48);
      v104 = v118;
      OUTLINED_FUNCTION_62_15();
      OUTLINED_FUNCTION_62_15();
      v105 = OUTLINED_FUNCTION_188_1();
      if (__swift_getEnumTagSinglePayload(v105, v106, v117) == 1)
      {
        v107 = v104;
        OUTLINED_FUNCTION_73(v104 + v103);
        if (v53)
        {
          sub_2171F0738(v104, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }
      }

      else
      {
        sub_2172E3D54();
        v107 = v104;
        OUTLINED_FUNCTION_73(v104 + v103);
        if (!v53)
        {
          v108 = v120;
          v109 = v117;
          (*(v120 + 32))(v119, v104 + v103, v117);
          OUTLINED_FUNCTION_1_74();
          sub_21752AF24(v110);
          v111 = v121;
          sub_217751F08();
          v112 = *(v108 + 8);
          v113 = OUTLINED_FUNCTION_13_2();
          v112(v113);
          (v112)(v111, v109);
          sub_2171F0738(v104, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_7;
        }

        (*(v120 + 8))(v121, v117);
      }

      v46 = &qword_27CB24840;
      v47 = &unk_217758DD0;
      v48 = v107;
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2175261CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6942747369747261 && a2 == 0xE90000000000006FLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6163697373616C63 && a2 == 0xEC0000006C72556CLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73756E6F42736168 && a2 == 0xEF746E65746E6F43;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x636973754D736168 && a2 == 0xEE0073746E657645;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
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

unint64_t sub_217526560(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6942747369747261;
      break;
    case 2:
      result = 0x6163697373616C63;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6D614E65726E6567;
      break;
    case 7:
      result = 0x73756E6F42736168;
      break;
    case 8:
      result = 0x636973754D736168;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175266CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175261CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175266F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217526558();
  *a1 = result;
  return result;
}

uint64_t sub_21752671C(uint64_t a1)
{
  v2 = sub_21752BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217526758(uint64_t a1)
{
  v2 = sub_21752BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudArtist.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29068, &qword_217773E78);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v12 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_21752BC2C();
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v13, v14, v15);
  OUTLINED_FUNCTION_12_33();
  memcpy(v16, v17, v18);
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_28_12();
  memcpy(v40, v41, sizeof(v40));
  if (v1)
  {
    sub_2171F0738(v40, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    sub_2171F0738(v40, &qword_27CB25000, &unk_21776EA00);
    v19 = *(v2 + 440);
    v20 = *(v2 + 448);
    v38[0] = 1;
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v33 = type metadata accessor for CloudArtist.Attributes(0);
    v21 = v33[6];
    v38[0] = 2;
    sub_2177516D8();
    OUTLINED_FUNCTION_1_74();
    sub_21752AF24(v22);
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    v39 = *(v2 + v33[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_217361D3C(&unk_280BE23A0);
    OUTLINED_FUNCTION_28_12();
    v26 = v33[8];
    memcpy(v38, (v2 + v26), sizeof(v38));
    memcpy(v37, (v2 + v26), sizeof(v37));
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF104();
    OUTLINED_FUNCTION_28_12();
    memcpy(v36, v37, sizeof(v36));
    sub_2171F0738(v36, &qword_27CB25010, &qword_21775B4F8);
    v34 = *(v2 + v33[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_217361B60(&qword_280BE23B0);
    OUTLINED_FUNCTION_28_12();
    v35 = *(v2 + v33[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_28_12();
    v27 = *(v2 + v33[11]);
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    v28 = *(v2 + v33[12]);
    OUTLINED_FUNCTION_38_7();
    sub_217752F08();
    v29 = (v2 + v33[13]);
    v30 = *v29;
    v31 = v29[1];
    OUTLINED_FUNCTION_38_7();
    sub_217752EF8();
    v32 = v33[14];
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
  }

  v23 = *(v7 + 8);
  v24 = OUTLINED_FUNCTION_13_2();
  v25(v24);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v51 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_6_1();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v50 - v22;
  memcpy(v53, v0, sizeof(v53));
  v24 = v0[54];
  memcpy(v54, v0, sizeof(v54));
  v55 = v24;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v54) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v52, v53, sizeof(v52));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v24);
  }

  if (v0[56])
  {
    v25 = v0[55];
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v26 = type metadata accessor for CloudArtist.Attributes(0);
  v27 = v26[6];
  sub_2172E3D54();
  if (__swift_getEnumTagSinglePayload(v23, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v28 = v51;
    (*(v51 + 32))(v11, v23, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_74();
    sub_21752AF24(v29);
    OUTLINED_FUNCTION_84_0();
    v30 = *(v28 + 8);
    v31 = OUTLINED_FUNCTION_13_2();
    v32(v31);
  }

  if (*(v0 + v26[7]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v33 = v0 + v26[8];
  if (*(v33 + 8))
  {
    v34 = *(v33 + 1);
    v52[0] = *v33;
    v52[1] = v34;
    v35 = *(v33 + 3);
    v52[2] = *(v33 + 2);
    v52[3] = v35;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)();
    sub_217751DE8();
    v36 = OUTLINED_FUNCTION_185_0();
    sub_217265A08(v36, v37);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[9]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[10]))
  {
    OUTLINED_FUNCTION_119();
    v38 = OUTLINED_FUNCTION_185_0();
    sub_217281100(v38, v39);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[11]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v0 + v26[12]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v40 = (v0 + v26[13]);
  if (v40[1])
  {
    v41 = *v40;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v42 = v26[14];
  sub_2172E3D54();
  v43 = OUTLINED_FUNCTION_188_1();
  if (__swift_getEnumTagSinglePayload(v43, v44, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v45 = v51;
    (*(v51 + 32))(v11, v19, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_74();
    sub_21752AF24(v46);
    OUTLINED_FUNCTION_84_0();
    v47 = *(v45 + 8);
    v48 = OUTLINED_FUNCTION_13_2();
    v49(v48);
  }

  OUTLINED_FUNCTION_13();
}

void CloudArtist.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  OUTLINED_FUNCTION_6_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29070, &qword_217773E80);
  OUTLINED_FUNCTION_0_0(v38);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16, v17);
  v18 = OUTLINED_FUNCTION_105_11();
  v40 = type metadata accessor for CloudArtist.Attributes(v18);
  v19 = OUTLINED_FUNCTION_43(v40);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_1();
  v39 = (v24 - v23);
  v25 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21752BC2C();
  sub_2177532C8();
  if (v0)
  {
    OUTLINED_FUNCTION_24_29();
    __swift_destroy_boxed_opaque_existential_1(v3);
    if (v11)
    {
      v26 = v40;
      sub_2171F0738(v39 + v40[6], &unk_27CB277C0, &qword_217758DC0);
      if ((v1 & 1) == 0)
      {
LABEL_9:
        if (!v25)
        {
          goto LABEL_11;
        }

LABEL_10:
        memcpy(v43, v39 + v26[8], 0x48uLL);
        sub_2171F0738(v43, &qword_27CB25010, &qword_21775B4F8);
        goto LABEL_11;
      }
    }

    else
    {
      v26 = v40;
      if (!v1)
      {
        goto LABEL_9;
      }
    }

    v27 = *(v39 + v26[7]);

    if ((v25 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DF600();
  sub_217752E58();
  memcpy(v39, v43, 0x1B8uLL);
  v39[55] = sub_217752E18();
  v39[56] = v28;
  sub_2177516D8();
  LOBYTE(v42[0]) = 2;
  OUTLINED_FUNCTION_1_74();
  sub_21752AF24(v29);
  sub_217752E58();
  v30 = v40[6];
  sub_2172E21DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
  LOBYTE(v41) = 3;
  sub_217361D3C(&unk_280BE2398);
  OUTLINED_FUNCTION_52_19();
  *(v39 + v40[7]) = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
  sub_2172DF7DC();
  OUTLINED_FUNCTION_52_19();
  memcpy(v39 + v40[8], v42, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
  sub_217361B60(&qword_280BE23A8);
  OUTLINED_FUNCTION_52_19();
  *(v39 + v40[9]) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2172DF950(&unk_280BE2318);
  OUTLINED_FUNCTION_52_19();
  *(v39 + v40[10]) = v41;
  *(v39 + v40[11]) = sub_217752E28();
  *(v39 + v40[12]) = sub_217752E28();
  v31 = sub_217752E18();
  v32 = (v39 + v40[13]);
  *v32 = v31;
  v32[1] = v33;
  sub_217752E58();
  v34 = OUTLINED_FUNCTION_81_12();
  v35(v34);
  v36 = v40[14];
  sub_2172E21DC();
  OUTLINED_FUNCTION_16_42();
  sub_21752BBD4();
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_15_41();
  sub_21752AECC(v39, v37);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

MusicKit::CloudArtist::Relationships::CodingKeys_optional __swiftcall CloudArtist.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudArtist::Relationships::CodingKeys_optional __swiftcall CloudArtist.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudArtist.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_217527A3C()
{
  result = 0x736D75626C61;
  switch(*v0)
  {
    case 1:
      result = 0x676F6C61746163;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x69762D636973756DLL;
      break;
    case 5:
      result = 0x7473696C79616C70;
      break;
    case 6:
      result = 0x6E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217527B08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_21770797C();
}

uint64_t sub_217527B38@<X0>(uint64_t *a1@<X8>)
{
  result = CloudArtist.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217527B7C(uint64_t a1)
{
  v2 = sub_21738C408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217527BB8(uint64_t a1)
{
  v2 = sub_21738C408();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudArtist.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_62_15();
  if (!v249)
  {
    if (!v250)
    {
      sub_2171F0738(v248, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v69 = &unk_27CB25070;
    v70 = &unk_21777EF10;
    goto LABEL_58;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v250)
  {
    sub_2171F0738(v247, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v231);
  v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
  v17 = sub_2172DDD44(v16);
  v18 = v17;
  v26 = OUTLINED_FUNCTION_69_0(v17, v19, v20, v21, v22, v23, v24, v25, v231);
  OUTLINED_FUNCTION_68_0(v26, v27, v28, v29, v30, v31, v32, v33, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_2171F0738(v248, &qword_27CB24270, &unk_21775D640);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v249)
  {
    if (!v250)
    {
      sub_2171F0738(v248, &qword_27CB24280, &unk_21775D680);
      goto LABEL_15;
    }

LABEL_20:
    v69 = &qword_27CB25068;
    v70 = &qword_21775B528;
    goto LABEL_58;
  }

  v34 = OUTLINED_FUNCTION_159_1();
  if (!v250)
  {
    sub_2171F0738(v247, &qword_27CB24288, &qword_217758F80);
    goto LABEL_20;
  }

  v42 = OUTLINED_FUNCTION_75(v34, v35, v36, v37, v38, v39, v40, v41, v231);
  v50 = OUTLINED_FUNCTION_87_1(v42, v43, v44, v45, v46, v47, v48, v49, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
  v52 = sub_2172DE010(v50, v51);
  v53 = v52;
  v61 = OUTLINED_FUNCTION_69_0(v52, v54, v55, v56, v57, v58, v59, v60, v231);
  OUTLINED_FUNCTION_68_0(v61, v62, v63, v64, v65, v66, v67, v68, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_2171F0738(v248, &qword_27CB24280, &unk_21775D680);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v249)
  {
    if (!v250)
    {
      sub_2171F0738(v248, &qword_27CB24330, &unk_21775D460);
      goto LABEL_23;
    }

LABEL_28:
    v69 = &unk_27CB29078;
    v70 = &unk_217773E88;
    goto LABEL_58;
  }

  v71 = OUTLINED_FUNCTION_159_1();
  if (!v250)
  {
    sub_2171F0738(v247, &qword_27CB24338, &unk_217796E10);
    goto LABEL_28;
  }

  v79 = OUTLINED_FUNCTION_75(v71, v72, v73, v74, v75, v76, v77, v78, v231);
  v87 = OUTLINED_FUNCTION_87_1(v79, v80, v81, v82, v83, v84, v85, v86, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
  v89 = sub_2172DE160(v87, v88);
  v90 = v89;
  v98 = OUTLINED_FUNCTION_69_0(v89, v91, v92, v93, v94, v95, v96, v97, v231);
  OUTLINED_FUNCTION_68_0(v98, v99, v100, v101, v102, v103, v104, v105, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_2171F0738(v248, &qword_27CB24330, &unk_21775D460);
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v249)
  {
    if (!v250)
    {
      sub_2171F0738(v248, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_31;
    }

LABEL_36:
    v69 = &unk_27CB25078;
    v70 = &unk_21775B530;
    goto LABEL_58;
  }

  v106 = OUTLINED_FUNCTION_159_1();
  if (!v250)
  {
    sub_2171F0738(v247, &qword_27CB243B8, &qword_2177586B0);
    goto LABEL_36;
  }

  v114 = OUTLINED_FUNCTION_75(v106, v107, v108, v109, v110, v111, v112, v113, v231);
  v122 = OUTLINED_FUNCTION_87_1(v114, v115, v116, v117, v118, v119, v120, v121, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
  v124 = sub_2172DDD5C(v122, v123);
  v125 = v124;
  v133 = OUTLINED_FUNCTION_69_0(v124, v126, v127, v128, v129, v130, v131, v132, v231);
  OUTLINED_FUNCTION_68_0(v133, v134, v135, v136, v137, v138, v139, v140, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_2171F0738(v248, &qword_27CB243B0, &unk_21775D670);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v249)
  {
    if (!v250)
    {
      sub_2171F0738(v248, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_39;
    }

LABEL_44:
    v69 = &qword_27CB251A0;
    v70 = &unk_21777EF30;
    goto LABEL_58;
  }

  v141 = OUTLINED_FUNCTION_159_1();
  if (!v250)
  {
    sub_2171F0738(v247, &qword_27CB242B8, &unk_21777EEA0);
    goto LABEL_44;
  }

  v149 = OUTLINED_FUNCTION_75(v141, v142, v143, v144, v145, v146, v147, v148, v231);
  v157 = OUTLINED_FUNCTION_87_1(v149, v150, v151, v152, v153, v154, v155, v156, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
  v159 = sub_2172DE088(v157, v158);
  v160 = v159;
  v168 = OUTLINED_FUNCTION_69_0(v159, v161, v162, v163, v164, v165, v166, v167, v231);
  OUTLINED_FUNCTION_68_0(v168, v169, v170, v171, v172, v173, v174, v175, v231, v232, v233, v234, v235, v236, v237, v238);
  sub_2171F0738(v248, &qword_27CB242B0, &unk_21775D630);
  if ((v160 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v249)
  {
    v176 = OUTLINED_FUNCTION_159_1();
    if (v250)
    {
      v184 = OUTLINED_FUNCTION_75(v176, v177, v178, v179, v180, v181, v182, v183, v231);
      v192 = OUTLINED_FUNCTION_87_1(v184, v185, v186, v187, v188, v189, v190, v191, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
      v194 = sub_2172DE118(v192, v193);
      v195 = v194;
      v203 = OUTLINED_FUNCTION_69_0(v194, v196, v197, v198, v199, v200, v201, v202, v231);
      OUTLINED_FUNCTION_68_0(v203, v204, v205, v206, v207, v208, v209, v210, v231, v232, v233, v234, v235, v236, v237, v238);
      sub_2171F0738(v248, &qword_27CB242C0, &unk_21775D650);
      if ((v195 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    sub_2171F0738(v247, &qword_27CB242C8, &unk_217758970);
LABEL_52:
    v69 = &qword_27CB25198;
    v70 = &qword_21775B550;
    goto LABEL_58;
  }

  if (v250)
  {
    goto LABEL_52;
  }

  sub_2171F0738(v248, &qword_27CB242C0, &unk_21775D650);
LABEL_47:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v249)
  {
    v211 = OUTLINED_FUNCTION_159_1();
    if (v250)
    {
      v219 = OUTLINED_FUNCTION_75(v211, v212, v213, v214, v215, v216, v217, v218, v231);
      v227 = OUTLINED_FUNCTION_87_1(v219, v220, v221, v222, v223, v224, v225, v226, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247[0]);
      v229 = sub_2172DE0A0(v227, v228);
      OUTLINED_FUNCTION_169_1(&v231);
      OUTLINED_FUNCTION_169_1(v247);
      sub_2171F0738(v248, &qword_27CB242F0, &unk_217797B80);
      return (v229 & 1) != 0;
    }

    sub_2171F0738(v247, &qword_27CB242F8, &qword_21775D6C0);
  }

  else if (!v250)
  {
    sub_2171F0738(v248, &qword_27CB242F0, &unk_217797B80);
    return 1;
  }

  v69 = &unk_27CB29080;
  v70 = &unk_21777EF50;
LABEL_58:
  sub_2171F0738(v248, v69, v70);
  return 0;
}

uint64_t CloudArtist.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29088, &qword_217773E90);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_67_1();
  v8 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C408();
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_42_1();
  sub_217752F38();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
    sub_21752BC80();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0A8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    sub_21752BDEC();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  v9 = OUTLINED_FUNCTION_113_3();
  return v10(v9);
}

uint64_t CloudArtist.Relationships.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v8);
    sub_2171F0738(&v64, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v17);
    sub_2171F0738(&v64, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE76C(v26);
    sub_2171F0738(&v64, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v35);
    sub_2171F0738(&v64, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v44);
    sub_2171F0738(&v64, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (v81)
  {
    OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
    OUTLINED_FUNCTION_24();
    v53 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v53);
    sub_2171F0738(&v64, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v54 = sub_2172E3D54();
  if (!v81)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  OUTLINED_FUNCTION_24();
  v62 = OUTLINED_FUNCTION_11_7();
  sub_2172DE664(v62);
  return sub_2171F0738(&v64, &qword_27CB242F8, &qword_21775D6C0);
}

uint64_t CloudArtist.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6DC(v8);
    sub_2171F0738(v65, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v17);
    sub_2171F0738(v65, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE76C(v26);
    sub_2171F0738(v65, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE70C(v35);
    sub_2171F0738(v65, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v44 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v44);
    sub_2171F0738(v65, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v45 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v53 = OUTLINED_FUNCTION_89_0();
    sub_2172DE724(v53);
    sub_2171F0738(v65, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v54 = sub_2172E3D54();
  if (v82)
  {
    OUTLINED_FUNCTION_180(v54, v55, v56, v57, v58, v59, v60, v61, v64, v65[0], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    OUTLINED_FUNCTION_157_0();
    v62 = OUTLINED_FUNCTION_89_0();
    sub_2172DE664(v62);
    sub_2171F0738(v65, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudArtist.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB290D0, &qword_217773E98);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21738C408();
  OUTLINED_FUNCTION_114_7();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172E0450();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172E02E4();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(&v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24338, &unk_217796E10);
    sub_21752BF58();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(&v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172E05BC();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(&v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0ED0();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0D64();
    OUTLINED_FUNCTION_8_47();
    OUTLINED_FUNCTION_168_2(&v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242F8, &qword_21775D6C0);
    sub_21752C0C4();
    OUTLINED_FUNCTION_8_47();
    v11 = OUTLINED_FUNCTION_22_34();
    v12(v11);
    OUTLINED_FUNCTION_168_2(&v19);
    sub_21738C174(v13, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A204(v13);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217528EC8()
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v3);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v3);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE76C(v3);
    sub_2171F0738(__dst, &qword_27CB24338, &unk_217796E10);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE70C(v3);
    sub_2171F0738(__dst, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v3);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE724(v3);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE664(v3);
    sub_2171F0738(__dst, &qword_27CB242F8, &qword_21775D6C0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

MusicKit::CloudArtist::Associations::CodingKeys_optional __swiftcall CloudArtist.Associations.CodingKeys.init(rawValue:)(Swift::String rawValue)
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

MusicKit::CloudArtist::Associations::CodingKeys_optional __swiftcall CloudArtist.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudArtist.Associations.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_2175292E8()
{
  result = 0x6465727574616566;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      v2 = 1819047270;
      goto LABEL_11;
    case 5:
      result = 0x722D74736574616CLL;
      break;
    case 6:
      v2 = 1702259052;
LABEL_11:
      result = v2 | 0x626C612D00000000;
      break;
    case 7:
      result = 0x2D72616C696D6973;
      break;
    case 8:
      result = 0x73656C676E6973;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x676E6F732D706F74;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_217529474@<X0>(uint64_t *a1@<X8>)
{
  result = CloudArtist.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2175294B8(uint64_t a1)
{
  v2 = sub_21738C360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175294F4(uint64_t a1)
{
  v2 = sub_21738C360();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudArtist.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_62_15();
  if (v383)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (!v384)
    {
      goto LABEL_55;
    }

    v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v365);
    v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
    v17 = sub_2172DDD44(v16);
    v18 = v17;
    v26 = OUTLINED_FUNCTION_69_0(v17, v19, v20, v21, v22, v23, v24, v25, v365);
    OUTLINED_FUNCTION_68_0(v26, v27, v28, v29, v30, v31, v32, v33, v365, v366, v367, v368, v369, v370, v371, v372);
    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v384)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v383)
  {
    v34 = OUTLINED_FUNCTION_159_1();
    if (!v384)
    {
      goto LABEL_55;
    }

    v42 = OUTLINED_FUNCTION_75(v34, v35, v36, v37, v38, v39, v40, v41, v365);
    v50 = OUTLINED_FUNCTION_87_1(v42, v43, v44, v45, v46, v47, v48, v49, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
    v51 = sub_2172DDD44(v50);
    v52 = v51;
    v60 = OUTLINED_FUNCTION_69_0(v51, v53, v54, v55, v56, v57, v58, v59, v365);
    OUTLINED_FUNCTION_68_0(v60, v61, v62, v63, v64, v65, v66, v67, v365, v366, v367, v368, v369, v370, v371, v372);
    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v384)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v383)
  {
    v68 = OUTLINED_FUNCTION_159_1();
    if (!v384)
    {
      goto LABEL_55;
    }

    v76 = OUTLINED_FUNCTION_75(v68, v69, v70, v71, v72, v73, v74, v75, v365);
    v84 = OUTLINED_FUNCTION_87_1(v76, v77, v78, v79, v80, v81, v82, v83, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
    v85 = sub_2172DDD44(v84);
    v86 = v85;
    v94 = OUTLINED_FUNCTION_69_0(v85, v87, v88, v89, v90, v91, v92, v93, v365);
    OUTLINED_FUNCTION_68_0(v94, v95, v96, v97, v98, v99, v100, v101, v365, v366, v367, v368, v369, v370, v371, v372);
    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v384)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB242C0, &unk_21775D650);
      goto LABEL_25;
    }

LABEL_30:
    v171 = &qword_27CB25198;
    v172 = &qword_21775B550;
LABEL_57:
    sub_2171F0738(v382, v171, v172);
    return 0;
  }

  v102 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    sub_2171F0738(v381, &qword_27CB242C8, &unk_217758970);
    goto LABEL_30;
  }

  v110 = OUTLINED_FUNCTION_75(v102, v103, v104, v105, v106, v107, v108, v109, v365);
  v118 = OUTLINED_FUNCTION_87_1(v110, v111, v112, v113, v114, v115, v116, v117, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v120 = sub_2172DE118(v118, v119);
  v121 = v120;
  v129 = OUTLINED_FUNCTION_69_0(v120, v122, v123, v124, v125, v126, v127, v128, v365);
  OUTLINED_FUNCTION_68_0(v129, v130, v131, v132, v133, v134, v135, v136, v365, v366, v367, v368, v369, v370, v371, v372);
  sub_2171F0738(v382, &qword_27CB242C0, &unk_21775D650);
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v383)
  {
    v137 = OUTLINED_FUNCTION_159_1();
    if (!v384)
    {
      goto LABEL_55;
    }

    v145 = OUTLINED_FUNCTION_75(v137, v138, v139, v140, v141, v142, v143, v144, v365);
    v153 = OUTLINED_FUNCTION_87_1(v145, v146, v147, v148, v149, v150, v151, v152, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
    v154 = sub_2172DDD44(v153);
    v155 = v154;
    v163 = OUTLINED_FUNCTION_69_0(v154, v156, v157, v158, v159, v160, v161, v162, v365);
    OUTLINED_FUNCTION_68_0(v163, v164, v165, v166, v167, v168, v169, v170, v365, v366, v367, v368, v369, v370, v371, v372);
    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
    if ((v155 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v384)
    {
      goto LABEL_56;
    }

    sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (v383)
  {
    v173 = OUTLINED_FUNCTION_159_1();
    if (v384)
    {
      v181 = OUTLINED_FUNCTION_75(v173, v174, v175, v176, v177, v178, v179, v180, v365);
      v189 = OUTLINED_FUNCTION_87_1(v181, v182, v183, v184, v185, v186, v187, v188, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
      v190 = sub_2172DDD44(v189);
      v191 = v190;
      v199 = OUTLINED_FUNCTION_69_0(v190, v192, v193, v194, v195, v196, v197, v198, v365);
      OUTLINED_FUNCTION_68_0(v199, v200, v201, v202, v203, v204, v205, v206, v365, v366, v367, v368, v369, v370, v371, v372);
      sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
      if ((v191 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_39;
    }

LABEL_55:
    sub_2171F0738(v381, &qword_27CB24278, &unk_217759070);
    goto LABEL_56;
  }

  if (v384)
  {
    goto LABEL_56;
  }

  sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
LABEL_39:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
      goto LABEL_45;
    }

LABEL_56:
    v171 = &unk_27CB25070;
    v172 = &unk_21777EF10;
    goto LABEL_57;
  }

  v207 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    goto LABEL_55;
  }

  v215 = OUTLINED_FUNCTION_75(v207, v208, v209, v210, v211, v212, v213, v214, v365);
  v223 = OUTLINED_FUNCTION_87_1(v215, v216, v217, v218, v219, v220, v221, v222, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v224 = sub_2172DDD44(v223);
  v225 = v224;
  v233 = OUTLINED_FUNCTION_69_0(v224, v226, v227, v228, v229, v230, v231, v232, v365);
  OUTLINED_FUNCTION_68_0(v233, v234, v235, v236, v237, v238, v239, v240, v365, v366, v367, v368, v369, v370, v371, v372);
  sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  if ((v225 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB24280, &unk_21775D680);
      goto LABEL_51;
    }

LABEL_61:
    v171 = &qword_27CB25068;
    v172 = &qword_21775B528;
    goto LABEL_57;
  }

  v241 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    sub_2171F0738(v381, &qword_27CB24288, &qword_217758F80);
    goto LABEL_61;
  }

  v249 = OUTLINED_FUNCTION_75(v241, v242, v243, v244, v245, v246, v247, v248, v365);
  v257 = OUTLINED_FUNCTION_87_1(v249, v250, v251, v252, v253, v254, v255, v256, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v259 = sub_2172DE010(v257, v258);
  v260 = v259;
  v268 = OUTLINED_FUNCTION_69_0(v259, v261, v262, v263, v264, v265, v266, v267, v365);
  OUTLINED_FUNCTION_68_0(v268, v269, v270, v271, v272, v273, v274, v275, v365, v366, v367, v368, v369, v370, v371, v372);
  sub_2171F0738(v382, &qword_27CB24280, &unk_21775D680);
  if ((v260 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
      goto LABEL_64;
    }

    goto LABEL_56;
  }

  v276 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    goto LABEL_55;
  }

  v284 = OUTLINED_FUNCTION_75(v276, v277, v278, v279, v280, v281, v282, v283, v365);
  v292 = OUTLINED_FUNCTION_87_1(v284, v285, v286, v287, v288, v289, v290, v291, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v293 = sub_2172DDD44(v292);
  v294 = v293;
  v302 = OUTLINED_FUNCTION_69_0(v293, v295, v296, v297, v298, v299, v300, v301, v365);
  OUTLINED_FUNCTION_68_0(v302, v303, v304, v305, v306, v307, v308, v309, v365, v366, v367, v368, v369, v370, v371, v372);
  sub_2171F0738(v382, &qword_27CB24270, &unk_21775D640);
  if ((v294 & 1) == 0)
  {
    return 0;
  }

LABEL_64:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_70;
    }

    goto LABEL_75;
  }

  v311 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    sub_2171F0738(v381, &qword_27CB242B8, &unk_21777EEA0);
LABEL_75:
    v171 = &qword_27CB251A0;
    v172 = &unk_21777EF30;
    goto LABEL_57;
  }

  v319 = OUTLINED_FUNCTION_75(v311, v312, v313, v314, v315, v316, v317, v318, v365);
  v327 = OUTLINED_FUNCTION_87_1(v319, v320, v321, v322, v323, v324, v325, v326, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v329 = sub_2172DE088(v327, v328);
  v330 = v329;
  v338 = OUTLINED_FUNCTION_69_0(v329, v331, v332, v333, v334, v335, v336, v337, v365);
  OUTLINED_FUNCTION_68_0(v338, v339, v340, v341, v342, v343, v344, v345, v365, v366, v367, v368, v369, v370, v371, v372);
  sub_2171F0738(v382, &qword_27CB242B0, &unk_21775D630);
  if ((v330 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_32_26();
  if (!v383)
  {
    if (!v384)
    {
      sub_2171F0738(v382, &qword_27CB242E0, &unk_21777EEE0);
      return 1;
    }

    goto LABEL_80;
  }

  v346 = OUTLINED_FUNCTION_159_1();
  if (!v384)
  {
    sub_2171F0738(v381, &qword_27CB242E8, &unk_21775D6B0);
LABEL_80:
    v171 = &unk_27CB25D00;
    v172 = &unk_21775F668;
    goto LABEL_57;
  }

  v354 = OUTLINED_FUNCTION_75(v346, v347, v348, v349, v350, v351, v352, v353, v365);
  v362 = OUTLINED_FUNCTION_87_1(v354, v355, v356, v357, v358, v359, v360, v361, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381[0]);
  v364 = sub_2172DE040(v362, v363);
  OUTLINED_FUNCTION_169_1(&v365);
  OUTLINED_FUNCTION_169_1(v381);
  sub_2171F0738(v382, &qword_27CB242E0, &unk_21777EEE0);
  return (v364 & 1) != 0;
}

uint64_t CloudArtist.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB290F8, &qword_217773EA0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_67_1();
  v8 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C360();
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_18_36();
  if (!v1)
  {
    OUTLINED_FUNCTION_18_36();
    OUTLINED_FUNCTION_18_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0A8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    OUTLINED_FUNCTION_18_36();
    OUTLINED_FUNCTION_18_36();
    OUTLINED_FUNCTION_18_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    OUTLINED_FUNCTION_18_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217361F8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  v9 = OUTLINED_FUNCTION_113_3();
  return v10(v9);
}

uint64_t CloudArtist.Associations.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v8);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v17);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v26);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE724(v35);
    sub_2171F0738(&v100, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v44);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v53 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v53);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v54 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v54, v55, v56, v57, v58, v59, v60, v61, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v62 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v62);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v63 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v63, v64, v65, v66, v67, v68, v69, v70, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v71 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v71);
    sub_2171F0738(&v100, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v72 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v72, v73, v74, v75, v76, v77, v78, v79, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v80 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v80);
    sub_2171F0738(&v100, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v81 = sub_2172E3D54();
  if (v117)
  {
    OUTLINED_FUNCTION_10_1(v81, v82, v83, v84, v85, v86, v87, v88, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    OUTLINED_FUNCTION_24();
    v89 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v89);
    sub_2171F0738(&v100, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v90 = sub_2172E3D54();
  if (!v117)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v90, v91, v92, v93, v94, v95, v96, v97, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  OUTLINED_FUNCTION_24();
  v98 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6AC(v98);
  return sub_2171F0738(&v100, &qword_27CB242E8, &unk_21775D6B0);
}

uint64_t CloudArtist.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudArtist.Associations.hash(into:)();
  return sub_217753238();
}

void CloudArtist.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29100, &qword_217773EA8);
  OUTLINED_FUNCTION_0_0(v13);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_160(v2, v9);
  sub_21738C360();
  OUTLINED_FUNCTION_114_7();
  if (v0)
  {
    OUTLINED_FUNCTION_24_29();
    __swift_destroy_boxed_opaque_existential_1(v2);
    if (v10)
    {
      sub_2171F0738(v16, &qword_27CB24270, &unk_21775D640);
      if ((v9 & 1) == 0)
      {
LABEL_9:
        if (!v4)
        {
          goto LABEL_11;
        }

LABEL_10:
        sub_2171F0738(v18, &qword_27CB24270, &unk_21775D640);
        goto LABEL_11;
      }
    }

    else if (!v9)
    {
      goto LABEL_9;
    }

    sub_2171F0738(v17, &qword_27CB242C0, &unk_21775D650);
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172E0450();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(v14);
  OUTLINED_FUNCTION_5_56(1);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v15);
  OUTLINED_FUNCTION_5_56(2);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2172E0D64();
  OUTLINED_FUNCTION_23_36();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(v17);
  OUTLINED_FUNCTION_5_56(4);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(v18);
  OUTLINED_FUNCTION_5_56(5);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v19);
  OUTLINED_FUNCTION_5_56(6);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
  sub_2172E02E4();
  OUTLINED_FUNCTION_23_36();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v21);
  OUTLINED_FUNCTION_5_56(8);
  OUTLINED_FUNCTION_56_14();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
  sub_2172E0ED0();
  OUTLINED_FUNCTION_23_36();
  sub_217752E58();
  OUTLINED_FUNCTION_77_11(&v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
  sub_2173620F8();
  sub_217752E58();
  v11 = OUTLINED_FUNCTION_83_13();
  v12(v11);
  OUTLINED_FUNCTION_77_11(&v24);
  sub_21738C0BC(v14, v4);
  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_21728463C(v14);
LABEL_11:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21752ABB8()
{
  sub_2177531E8();
  CloudArtist.Associations.hash(into:)();
  return sub_217753238();
}

MusicKit::CloudArtist::Metadata __swiftcall CloudArtist.Metadata.init(snippets:)(Swift::OpaquePointer_optional snippets)
{
  rawValue = snippets.value._rawValue;
  v3 = v1;

  *v3 = rawValue;
  result.snippets.value._rawValue = v4;
  result.snippets.is_nil = v5;
  return result;
}

uint64_t CloudArtist.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudArtist.Metadata.== infix(_:_:)(void *a1, uint64_t *a2)
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

unint64_t sub_21752AD18()
{
  result = qword_280BE5318[0];
  if (!qword_280BE5318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5318);
  }

  return result;
}

uint64_t sub_21752AD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudArtist.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21752ADD0()
{
  result = qword_280BE5210;
  if (!qword_280BE5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5210);
  }

  return result;
}

unint64_t sub_21752AE24()
{
  result = qword_280BE52E0;
  if (!qword_280BE52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE52E0);
  }

  return result;
}

unint64_t sub_21752AE78()
{
  result = qword_280BE5200;
  if (!qword_280BE5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5200);
  }

  return result;
}

uint64_t sub_21752AECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21752AF24(uint64_t a1)
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

uint64_t sub_21752AF68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
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

uint64_t sub_21752AFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21752AF68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21752B028(uint64_t a1)
{
  v2 = sub_21752C230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21752B064(uint64_t a1)
{
  v2 = sub_21752C230();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudArtist.Metadata.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29108, &qword_217773EB0);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &a9 - v32;
  v34 = *v20;
  v35 = v24[4];
  OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_21752C230();
  sub_217751DE8();
  sub_2177532F8();
  a10 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
  sub_2172E163C();
  sub_217752F38();

  (*(v27 + 8))(v33, v25);
  OUTLINED_FUNCTION_170();
}

void CloudArtist.Metadata.hash(into:)()
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

uint64_t CloudArtist.Metadata.hashValue.getter()
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

void CloudArtist.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29118, &qword_217773EB8);
  OUTLINED_FUNCTION_0_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &a9 - v34;
  v36 = v24[4];
  OUTLINED_FUNCTION_160(v24, v24[3]);
  sub_21752C230();
  sub_2177532C8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E1928();
    sub_217752E58();
    (*(v29 + 8))(v35, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21752B444()
{
  v1 = *v0;
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_21727DDE0();
  }

  return sub_217753238();
}

uint64_t CloudArtist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudArtist.attributes.getter()
{
  v0 = *(OUTLINED_FUNCTION_121_10() + 20);
  OUTLINED_FUNCTION_16_42();
  return sub_21752BBD4();
}

uint64_t CloudArtist.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_121_10() + 32));
  *v0 = v2;

  return sub_217221020(v2);
}

uint64_t CloudArtist.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudArtist(0) + 32);
  result = sub_217221010(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21752B660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4A68 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE4A78;
  v2 = byte_280BE4A80;
  *(v0 + 32) = qword_280BE4A70;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE5228 = v0;

  return sub_217751DE8();
}

uint64_t static CloudArtist.catalogTypes.getter()
{
  if (qword_280BE5220 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21752B768()
{
  if (qword_280BE4B80 != -1)
  {
    swift_once();
  }

  qword_280BE52F0 = qword_280BE4B88;
  *algn_280BE52F8 = unk_280BE4B90;
  byte_280BE5300 = byte_280BE4B98;

  return sub_217751DE8();
}

uint64_t static CloudArtist.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE52E8 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE52F8;
  v3 = byte_280BE5300;
  *a1 = qword_280BE52F0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

uint64_t sub_21752B854(char a1)
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

uint64_t sub_21752B8E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21752B93C(uint64_t a1)
{
  v2 = sub_21752AD18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21752B978(uint64_t a1)
{
  v2 = sub_21752AD18();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudArtist.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudArtist(0);
  v7 = v1 + v6[5];
  CloudArtist.Attributes.hash(into:)();
  v8 = v2 + v6[6];
  sub_217264ADC(a1);
  v9 = v6[7];
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v11, __src, sizeof(v11));
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_11_7();
    CloudArtist.Associations.hash(into:)();
    sub_21728463C(v11);
  }

  v10 = *(v2 + v6[8]);
  if (v10 == 1 || (OUTLINED_FUNCTION_24(), !v10))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0();
  }
}