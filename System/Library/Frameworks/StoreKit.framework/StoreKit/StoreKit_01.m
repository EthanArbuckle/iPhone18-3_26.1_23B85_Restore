unint64_t sub_1B243F9E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B253ACCC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B256DB2C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B256E5FC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B253ACCC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B256DB0C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_1B256EB5C();
}

void OUTLINED_FUNCTION_20()
{
  v2 = *(v0 + 8);
  *(v1 - 96) = *v0;
  *(v1 - 88) = v2;
}

uint64_t sub_1B243FDE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B243FE80;

  return static AppStore._accountType.getter(v0 + 24);
}

uint64_t sub_1B243FE80()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B243FF74, 0, 0);
}

uint64_t sub_1B243FFF8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B244008C;

  return sub_1B243FDE8();
}

uint64_t sub_1B244008C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;

  if (v4)
  {
    v7 = *(v3 + 16);
    v7[2](v7, a1);
    _Block_release(v7);
  }

  v8 = *(v5 + 8);

  return v8();
}

SKAccount __swiftcall SKAccount.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SKAccount()
{
  result = qword_1EB7D00F8[0];
  if (!qword_1EB7D00F8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB7D00F8);
  }

  return result;
}

uint64_t sub_1B2440298()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B2440344;

  return sub_1B243FFF8(v2);
}

uint64_t sub_1B2440344()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B2440440()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8StoreKit12BackingValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B24404B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_1B24404F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B2440554()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8StoreKit15DecodingContextV0C5ErrorOyx_G(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B24405C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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

uint64_t sub_1B2440600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B2440648(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1B244067C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B24406BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B2440708(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_3_2();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_9();
              if (!v10)
              {
                break;
              }

              v8 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_0_9();
            if (!v10)
            {
              break;
            }

            v8 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_3_2();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v10 & v9)
            {
              break;
            }

            OUTLINED_FUNCTION_0_9();
            if (!v10)
            {
              break;
            }

            v8 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v10)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B256E5FC();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v10 & v9)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_0_9();
                if (!v10)
                {
                  goto LABEL_68;
                }

                v8 = v17 + v16;
                if (__OFADD__(v17, v16))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_22();
                if (v10)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v7 != 45)
      {
        if (v4)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_68;
              }

              v21 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_68;
              }

              v8 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v8 = 0;
        v13 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v8 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v10 & v9)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_9();
              if (!v10)
              {
                goto LABEL_68;
              }

              v8 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_22();
              if (v10)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v13 = 0;
LABEL_69:
          v24 = v13;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v8 = sub_1B243FC04(v6, a2, 10);
  v24 = v25;

LABEL_70:
  if (v24)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1B24409BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_3(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B2440A04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B244097C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B2440A2C(uint64_t a1)
{
  v2 = sub_1B2440B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2440A68(uint64_t a1)
{
  v2 = sub_1B2440B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B2440AA8()
{
  result = qword_1EB7D0180;
  if (!qword_1EB7D0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0180);
  }

  return result;
}

unint64_t sub_1B2440B00()
{
  result = qword_1EB7D0188;
  if (!qword_1EB7D0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0188);
  }

  return result;
}

unint64_t sub_1B2440B54()
{
  result = qword_1EB7D0190;
  if (!qword_1EB7D0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0190);
  }

  return result;
}

uint64_t sub_1B2440C00(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2440C20, 0, 0);
}

uint64_t sub_1B2440C20()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for ClientOverrideRequest();
  v0[6] = sub_1B2440EB0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1B2440F68(v1, boxed_opaque_existential_1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B2440D10;
  v4 = v0[8];

  return sub_1B24D12A4((v0 + 2), sub_1B2440FCC, 0, v4);
}

uint64_t sub_1B2440D10()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B2440E4C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B2440E4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1B2440EB0()
{
  result = qword_1EB7D0198;
  if (!qword_1EB7D0198)
  {
    type metadata accessor for ClientOverrideRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0198);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1B2440F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverrideRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B2440FCC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_1B256D1FC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B2515BBC;
  v10[3] = &block_descriptor_2;
  v9 = _Block_copy(v10);

  [v7 setClientOverrideWithRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ExternalGatewayRequest()
{
  result = qword_1EB7D01A0;
  if (!qword_1EB7D01A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2441134()
{
  sub_1B2441328(319, &qword_1EB7D01B0);
  if (v0 <= 0x3F)
  {
    sub_1B2441224();
    if (v1 <= 0x3F)
    {
      sub_1B244127C();
      if (v2 <= 0x3F)
      {
        sub_1B2441328(319, &qword_1ED699E38);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B2441224()
{
  if (!qword_1ED699EE0)
  {
    type metadata accessor for ClientOverride(255);
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED699EE0);
    }
  }
}

void sub_1B244127C()
{
  if (!qword_1EB7D01B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D2000);
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D01B8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1B2441328(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B256E2EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StoreKit24ExternalGatewayTokenTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B244138C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B24413E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B244143C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExternalGatewayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B24415D4()
{
  result = qword_1EB7D01C0;
  if (!qword_1EB7D01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D01C0);
  }

  return result;
}

unint64_t sub_1B2441628(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1B2441640@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B2441628(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B244166C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B2441638(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1B2441764()
{
  result = qword_1EB7D01C8;
  if (!qword_1EB7D01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D01C8);
  }

  return result;
}

uint64_t sub_1B24417B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_1B256EB5C();
  }

  return 1;
}

uint64_t sub_1B2441804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7070416E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74754F6B6E696CLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
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

uint64_t sub_1B2441920(char a1)
{
  if (!a1)
  {
    return 0x7070416E69;
  }

  if (a1 == 1)
  {
    return 0x74754F6B6E696CLL;
  }

  return 0x6D6F74737563;
}

uint64_t sub_1B2441970(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B24419E8()
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  return sub_1B256ED7C();
}

uint64_t sub_1B2441A44(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0270);
  OUTLINED_FUNCTION_1_1();
  v32 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0278);
  OUTLINED_FUNCTION_1_1();
  v29 = v8;
  v30 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0280);
  OUTLINED_FUNCTION_1_1();
  v28 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0288);
  OUTLINED_FUNCTION_1_1();
  v19 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2443C80();
  v23 = v35;
  sub_1B256EDFC();
  if (!v23)
  {
    v36 = 0;
    sub_1B2443D7C();
    OUTLINED_FUNCTION_13_0();
    (*(v28 + 8))(v16, v12);
    return (*(v19 + 8))(v22, v17);
  }

  if (v23 == 1)
  {
    v37 = 1;
    sub_1B2443D28();
    OUTLINED_FUNCTION_13_0();
    (*(v29 + 8))(v11, v30);
    return (*(v19 + 8))(v22, v17);
  }

  v38 = 2;
  sub_1B2443CD4();
  v25 = v31;
  OUTLINED_FUNCTION_13_0();
  v26 = v34;
  sub_1B256EA2C();
  (*(v32 + 8))(v25, v26);
  return (*(v19 + 8))(v22, v17);
}

uint64_t sub_1B2441DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x1B274AFC0](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B274AFC0](v3);
  }

  MEMORY[0x1B274AFC0](2);

  return sub_1B256DA7C();
}

uint64_t sub_1B2441E28(uint64_t a1, uint64_t a2)
{
  sub_1B256ED3C();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B274AFC0](2);
      sub_1B256DA7C();
      return sub_1B256ED7C();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B274AFC0](v3);
  return sub_1B256ED7C();
}

uint64_t sub_1B2441EAC(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0228);
  OUTLINED_FUNCTION_1_1();
  v52 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v46 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0230);
  OUTLINED_FUNCTION_1_1();
  v50 = v7;
  v51 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0238);
  OUTLINED_FUNCTION_1_1();
  v48 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0240);
  OUTLINED_FUNCTION_1_1();
  v53 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_11_0();
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2443C80();
  v20 = v55;
  sub_1B256EDBC();
  if (v20)
  {
    goto LABEL_9;
  }

  v46 = v11;
  v47 = v15;
  v55 = a1;
  v21 = v1;
  v22 = sub_1B256E9CC();
  result = sub_1B24AAC2C(v22, 0);
  if (v25 == v26 >> 1)
  {
LABEL_8:
    v34 = sub_1B256E58C();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0250);
    *v36 = &type metadata for ExternalGatewayTokenType;
    v19 = v21;
    sub_1B256E93C();
    sub_1B256E54C();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_1_4();
    v38(v37);
    a1 = v55;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v19;
  }

  if (v25 < (v26 >> 1))
  {
    v27 = *(v24 + v25);
    sub_1B24AAC20(v25 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v27)
      {
        if (v27 == 1)
        {
          v57 = 1;
          sub_1B2443D28();
          OUTLINED_FUNCTION_10_1();
          swift_unknownObjectRelease();
          (*(v50 + 8))(v10, v51);
          v32 = OUTLINED_FUNCTION_1_4();
          v33(v32);
          v19 = 0;
        }

        else
        {
          v58 = 2;
          sub_1B2443CD4();
          OUTLINED_FUNCTION_10_1();
          v42 = sub_1B256E97C();
          v43 = v53;
          v19 = v42;
          swift_unknownObjectRelease();
          v44 = OUTLINED_FUNCTION_17();
          v45(v44);
          (*(v43 + 8))(v1, v16);
        }
      }

      else
      {
        v56 = 0;
        sub_1B2443D7C();
        v39 = v47;
        OUTLINED_FUNCTION_10_1();
        swift_unknownObjectRelease();
        (*(v48 + 8))(v39, v46);
        v40 = OUTLINED_FUNCTION_1_4();
        v41(v40);
        v19 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v55);
      return v19;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2442490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2441804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24424D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B244190C();
  *a1 = result;
  return result;
}

uint64_t sub_1B2442500(uint64_t a1)
{
  v2 = sub_1B2443C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B244253C(uint64_t a1)
{
  v2 = sub_1B2443C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2442580()
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](0);
  return sub_1B256ED7C();
}

uint64_t sub_1B24425E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B24419E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B244260C(uint64_t a1)
{
  v2 = sub_1B2443CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2442648(uint64_t a1)
{
  v2 = sub_1B2443CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2442688(uint64_t a1)
{
  v2 = sub_1B2443D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24426C4(uint64_t a1)
{
  v2 = sub_1B2443D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2442700(uint64_t a1)
{
  v2 = sub_1B2443D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B244273C(uint64_t a1)
{
  v2 = sub_1B2443D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2442778@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2441EAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B24427E4()
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

uint64_t sub_1B2442860@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v70 = *MEMORY[0x1E69E9840];
  v63 = sub_1B256E57C();
  OUTLINED_FUNCTION_1_1();
  v61 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D01E8);
  OUTLINED_FUNCTION_1_1();
  v64 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v67 = type metadata accessor for ExternalGatewayRequest();
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1B24437C4();
  sub_1B256EDBC();
  if (v2)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v67;
    v23 = v65;
  }

  else
  {
    v59 = v8;
    v60 = v3;
    v17 = v63;
    LOBYTE(v68) = 0;
    sub_1B24438A4();
    OUTLINED_FUNCTION_2_4();
    sub_1B256E95C();
    v23 = v65;
    *(v65 + 8) = v69;
    LOBYTE(v68) = 1;
    sub_1B24438F8();
    OUTLINED_FUNCTION_2_4();
    sub_1B256E9AC();
    v24 = v67;
    *v23 = v69;
    OUTLINED_FUNCTION_4_1(2);
    v25 = sub_1B256E97C();
    v26 = (v23 + v24[10]);
    *v26 = v25;
    v26[1] = v27;
    OUTLINED_FUNCTION_4_1(4);
    *(v23 + 24) = sub_1B256E98C() & 1;
    OUTLINED_FUNCTION_4_1(5);
    v28 = sub_1B256E94C();
    v29 = (v23 + v24[9]);
    *v29 = v28;
    v29[1] = v30;
    v58 = v30;
    type metadata accessor for ClientOverride(0);
    LOBYTE(v69) = 6;
    OUTLINED_FUNCTION_7_1();
    sub_1B2443BE4(v31, v32);
    sub_1B256E95C();
    sub_1B244394C(v60, v23 + v24[7]);
    LOBYTE(v68) = 3;
    sub_1B24439BC();
    OUTLINED_FUNCTION_2_4();
    sub_1B256E95C();
    v33 = v24[8];
    v60 = *(&v69 + 1);
    if (*(&v69 + 1) >> 60 == 15)
    {
      v34 = OUTLINED_FUNCTION_3_3();
      v35(v34);
      v36 = 0;
LABEL_17:
      *(v23 + v33) = v36;
      sub_1B2443A10(v23, v62);
      __swift_destroy_boxed_opaque_existential_1(v66);
      return sub_1B2443A74(v23);
    }

    v56 = v33;
    v37 = v69;
    v38 = objc_opt_self();
    v57 = v37;
    v39 = sub_1B256D1FC();
    *&v69 = 0;
    v40 = [v38 JSONObjectWithData:v39 options:0 error:&v69];

    if (!v40)
    {
      v46 = v69;
      sub_1B256D0DC();

      swift_willThrow();
      sub_1B2443AD0(v57, v60);
      v47 = OUTLINED_FUNCTION_16_0();
      v48(v47);
      __swift_destroy_boxed_opaque_existential_1(v66);
      LOBYTE(v19) = 1;
      v20 = 1;
      v21 = v67;
LABEL_5:
      sub_1B2443880(*(v23 + 8), *(v23 + 16));
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_9:

      if (!v20)
      {
        return result;
      }
    }

    v41 = v69;
    sub_1B256E3DC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v42 = swift_dynamicCast();
    v43 = v64;
    if (v42)
    {
      v44 = OUTLINED_FUNCTION_3_3();
      v45(v44);
      sub_1B2443AD0(v57, v60);
      v36 = v68;
      v33 = v56;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1980);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1B2578530;
    *(v49 + 56) = &type metadata for ExternalGatewayRequest.CodingKeys;
    *(v49 + 64) = v16;
    *(v49 + 32) = 3;
    sub_1B256E54C();
    v50 = sub_1B256E58C();
    swift_allocError();
    v52 = v51;
    v53 = v61;
    v54 = *(v61 + 16);
    v62 = v14;
    v54(v51, v59, v17);
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6B00], v50);
    swift_willThrow();
    sub_1B2443AD0(v57, v60);
    (*(v53 + 8))(v59, v17);
    (*(v43 + 8))(v62, v10);
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = v67;
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  if (v18)
  {
    goto LABEL_5;
  }

  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1B2443818(v23 + *(v21 + 28));

  if ((v20 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_1B2442FD4(void *a1)
{
  v4 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0210);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B24437C4();
  sub_1B256EDFC();
  v22 = *(v4 + 8);
  sub_1B2443B3C();
  OUTLINED_FUNCTION_5_1();
  sub_1B256EA0C();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  sub_1B2443B90();
  OUTLINED_FUNCTION_5_1();
  sub_1B256EA5C();
  v10 = type metadata accessor for ExternalGatewayRequest();
  OUTLINED_FUNCTION_9_1();
  sub_1B256EA2C();
  OUTLINED_FUNCTION_9_1();
  sub_1B256EA3C();
  OUTLINED_FUNCTION_9_1();
  sub_1B256E9FC();
  LOBYTE(v22) = 6;
  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_7_1();
  sub_1B2443BE4(v11, v12);
  OUTLINED_FUNCTION_9_1();
  sub_1B256EA0C();
  if (!*(v4 + *(v10 + 32)))
  {
    return (*(v8 + 8))(v3, v6);
  }

  v14 = objc_opt_self();
  v15 = sub_1B256D86C();
  *&v22 = 0;
  v16 = [v14 dataWithJSONObject:v15 options:0 error:&v22];

  v17 = v22;
  if (!v16)
  {
    v21 = v17;
    sub_1B256D0DC();

    swift_willThrow();
    return (*(v8 + 8))(v3, v6);
  }

  v18 = sub_1B256D22C();
  v20 = v19;

  *&v22 = v18;
  *(&v22 + 1) = v20;
  sub_1B2443C2C();
  OUTLINED_FUNCTION_5_1();
  sub_1B256EA5C();
  (*(v8 + 8))(v3, v6);
  return sub_1B2443AE4(v18, v20);
}

uint64_t sub_1B2443348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546E656B6F74 && a2 == 0xE900000000000065;
  if (v4 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == OUTLINED_FUNCTION_15_0() && a2 == v9;
          if (v10 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == OUTLINED_FUNCTION_14_0() && a2 == v11;
            if (v12 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == OUTLINED_FUNCTION_12_0() && a2 == v13)
            {

              return 6;
            }

            else
            {
              v15 = OUTLINED_FUNCTION_8_1();

              if (v15)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B24434F8(unsigned __int8 a1)
{
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a1);
  return sub_1B256ED7C();
}

uint64_t sub_1B2443540(char a1)
{
  result = 0x7079546E656B6F74;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x79654B676F6CLL;
      break;
    case 3:
      result = 0x736E6F6974706FLL;
      break;
    case 4:
      result = OUTLINED_FUNCTION_15_0();
      break;
    case 5:
      result = OUTLINED_FUNCTION_14_0();
      break;
    case 6:
      result = OUTLINED_FUNCTION_12_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B244360C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2443348(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2443640(uint64_t a1)
{
  v2 = sub_1B24437C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B244367C(uint64_t a1)
{
  v2 = sub_1B24437C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24436E8(uint64_t a1)
{
  *(a1 + 16) = sub_1B2443BE4(&qword_1EB7D01D0, type metadata accessor for ExternalGatewayRequest);
  result = sub_1B2443BE4(&qword_1EB7D01D8, type metadata accessor for ExternalGatewayRequest);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B244376C(uint64_t a1)
{
  result = sub_1B2443BE4(&qword_1EB7D01E0, type metadata accessor for ExternalGatewayRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B24437C4()
{
  result = qword_1EB7D01F0;
  if (!qword_1EB7D01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D01F0);
  }

  return result;
}

uint64_t sub_1B2443818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2443880(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1B2443890(a1, a2);
  }

  return a1;
}

uint64_t sub_1B2443890(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1B24438A4()
{
  result = qword_1EB7D01F8;
  if (!qword_1EB7D01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D01F8);
  }

  return result;
}

unint64_t sub_1B24438F8()
{
  result = qword_1EB7D0200;
  if (!qword_1EB7D0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0200);
  }

  return result;
}

uint64_t sub_1B244394C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B24439BC()
{
  result = qword_1EB7CD928;
  if (!qword_1EB7CD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD928);
  }

  return result;
}

uint64_t sub_1B2443A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalGatewayRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2443A74(uint64_t a1)
{
  v2 = type metadata accessor for ExternalGatewayRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2443AD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B2443AE4(a1, a2);
  }

  return a1;
}

uint64_t sub_1B2443AE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B2443B3C()
{
  result = qword_1EB7D0218;
  if (!qword_1EB7D0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0218);
  }

  return result;
}

unint64_t sub_1B2443B90()
{
  result = qword_1EB7D0220;
  if (!qword_1EB7D0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0220);
  }

  return result;
}

uint64_t sub_1B2443BE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B2443C2C()
{
  result = qword_1EB7CD930;
  if (!qword_1EB7CD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD930);
  }

  return result;
}

unint64_t sub_1B2443C80()
{
  result = qword_1EB7D0248;
  if (!qword_1EB7D0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0248);
  }

  return result;
}

unint64_t sub_1B2443CD4()
{
  result = qword_1EB7D0258;
  if (!qword_1EB7D0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0258);
  }

  return result;
}

unint64_t sub_1B2443D28()
{
  result = qword_1EB7D0260;
  if (!qword_1EB7D0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0260);
  }

  return result;
}

unint64_t sub_1B2443D7C()
{
  result = qword_1EB7D0268;
  if (!qword_1EB7D0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0268);
  }

  return result;
}

unint64_t sub_1B2443DD0()
{
  result = qword_1EB7D0290;
  if (!qword_1EB7D0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayTokenType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ExternalGatewayTokenType.CustomCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ExternalGatewayRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B2444134()
{
  result = qword_1EB7D0298;
  if (!qword_1EB7D0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0298);
  }

  return result;
}

unint64_t sub_1B244418C()
{
  result = qword_1EB7D02A0;
  if (!qword_1EB7D02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02A0);
  }

  return result;
}

unint64_t sub_1B24441E4()
{
  result = qword_1EB7D02A8;
  if (!qword_1EB7D02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02A8);
  }

  return result;
}

unint64_t sub_1B244423C()
{
  result = qword_1EB7D02B0;
  if (!qword_1EB7D02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02B0);
  }

  return result;
}

unint64_t sub_1B2444294()
{
  result = qword_1EB7D02B8;
  if (!qword_1EB7D02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02B8);
  }

  return result;
}

unint64_t sub_1B24442EC()
{
  result = qword_1EB7D02C0;
  if (!qword_1EB7D02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02C0);
  }

  return result;
}

unint64_t sub_1B2444344()
{
  result = qword_1EB7D02C8;
  if (!qword_1EB7D02C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02C8);
  }

  return result;
}

unint64_t sub_1B244439C()
{
  result = qword_1EB7D02D0;
  if (!qword_1EB7D02D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02D0);
  }

  return result;
}

unint64_t sub_1B24443F4()
{
  result = qword_1EB7D02D8;
  if (!qword_1EB7D02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02D8);
  }

  return result;
}

unint64_t sub_1B244444C()
{
  result = qword_1EB7D02E0;
  if (!qword_1EB7D02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02E0);
  }

  return result;
}

unint64_t sub_1B24444A4()
{
  result = qword_1EB7D02E8;
  if (!qword_1EB7D02E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02E8);
  }

  return result;
}

unint64_t sub_1B24444FC()
{
  result = qword_1EB7D02F0;
  if (!qword_1EB7D02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02F0);
  }

  return result;
}

unint64_t sub_1B2444554()
{
  result = qword_1EB7D02F8;
  if (!qword_1EB7D02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D02F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_1B256E9EC();
}

uint64_t sub_1B2444748(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1B256D22C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1B2443AD0(v4, v8);
}

uint64_t PurchaseIntent.offer.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseIntent(0) + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x70uLL);
  return sub_1B24448A0(__dst, &v5);
}

uint64_t sub_1B24448A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PurchaseIntent.id.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

BOOL static PurchaseIntent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  __src[0] = *(a1 + 16);
  __src[1] = v4;
  LOBYTE(__src[2]) = *(a1 + 32);
  v5 = *(a2 + 24);
  v43[0] = *(a2 + 16);
  v43[1] = v5;
  LOBYTE(v43[2]) = *(a2 + 32);
  sub_1B24472B8(__src[0], v4, __src[2]);
  sub_1B24472B8(v43[0], v5, v43[2]);
  v6 = static BackingValue.== infix(_:_:)(__src, v43);
  sub_1B24472E0(v43[0], v43[1], v43[2]);
  sub_1B24472E0(__src[0], __src[1], __src[2]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for PurchaseIntent(0);
  v8 = (a1 + *(v7 + 20));
  memcpy(__dst, v8, sizeof(__dst));
  v9 = (a2 + *(v7 + 20));
  memcpy(v43, v9, sizeof(v43));
  v10 = __dst[3];
  v11 = v43[3];
  if (!__dst[3])
  {
    if (!v43[3])
    {
      OUTLINED_FUNCTION_5_2();
      __src[2] = v24;
      __src[3] = 0;
      OUTLINED_FUNCTION_13_1(v25, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], *&v35[0], *(&v35[0] + 1), *&v35[1], *(&v35[1] + 1), *&v35[2], *(&v35[2] + 1), *&v35[3], *(&v35[3] + 1), *&v35[4], *(&v35[4] + 1), *&v35[5], *(&v35[5] + 1), *&v35[6], *(&v35[6] + 1), v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12]);
      sub_1B24448A0(__dst, v36);
      sub_1B24448A0(v43, v36);
      sub_1B243E88C(__src, &qword_1EB7D0300);
      return 1;
    }

    sub_1B24448A0(__dst, __src);
    sub_1B24448A0(v43, __src);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_2();
  __src[2] = v12;
  __src[3] = v10;
  OUTLINED_FUNCTION_13_1(v13, v14, v15, v16, v17, v18, v19, v20, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v33[8], v33[9], v33[10], v33[11], v33[12], v33[13], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], *&v35[0], *(&v35[0] + 1), *&v35[1], *(&v35[1] + 1), *&v35[2], *(&v35[2] + 1), *&v35[3], *(&v35[3] + 1), *&v35[4], *(&v35[4] + 1), *&v35[5], *(&v35[5] + 1), *&v35[6], *(&v35[6] + 1), v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12]);
  memcpy(v36, __src, sizeof(v36));
  if (!v11)
  {
    memcpy(v35, __src, sizeof(v35));
    sub_1B24448A0(__dst, v34);
    sub_1B24448A0(v43, v34);
    sub_1B24448A0(__src, v34);
    sub_1B2447308(v35);
LABEL_9:
    OUTLINED_FUNCTION_5_2();
    __src[2] = v22;
    __src[3] = v10;
    memcpy(&__src[4], v8 + 4, 0x50uLL);
    v38 = *v9;
    v39 = v9[2];
    v40 = v11;
    memcpy(v41, v9 + 4, sizeof(v41));
    sub_1B243E88C(__src, &qword_1EB7D0308);
    return 0;
  }

  v35[0] = *v9;
  *&v35[1] = v9[2];
  memcpy(&v35[2], v9 + 4, 0x50uLL);
  *(&v35[1] + 1) = v11;
  sub_1B24448A0(__dst, v34);
  sub_1B24448A0(v43, v34);
  sub_1B24448A0(__src, v34);
  v21 = static Product.SubscriptionOffer.== infix(_:_:)(v36, v35);
  memcpy(v33, v35, sizeof(v33));
  sub_1B2447308(v33);
  memcpy(v34, v36, sizeof(v34));
  sub_1B2447308(v34);
  v35[0] = *v8;
  *&v35[1] = v8[2];
  *(&v35[1] + 1) = v10;
  memcpy(&v35[2], v8 + 4, 0x50uLL);
  sub_1B243E88C(v35, &qword_1EB7D0300);
  return (v21 & 1) != 0;
}

uint64_t sub_1B2444C14@<X0>(uint64_t *a1@<X8>)
{
  result = PurchaseIntent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B2444C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0378);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_1B247DAA8();
}

uint64_t sub_1B2444DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = *(type metadata accessor for PurchaseIntent(0) - 8);
  v4[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0380);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0388);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0390);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2444FE8, 0, 0);
}

uint64_t sub_1B2444FE8()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CFC38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7EDF88;
  *(v0 + 120) = qword_1EB7EDF88;

  return MEMORY[0x1EEE6DFA0](sub_1B244507C, v1, 0);
}

uint64_t sub_1B244507C()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B247E9CC();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1B24450DC()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B256DE1C();
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 128) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_2_5(v1);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6D9C8]();
}

uint64_t sub_1B2445164()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B244524C()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[4];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      do
      {
        v6 = v0[7];
        v7 = v0[8];
        v8 = v0[6];
        sub_1B2447A94(v4, v0[5], type metadata accessor for PurchaseIntent);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0378);
        sub_1B256DDEC();
        (*(v6 + 8))(v7, v8);
        v4 += v5;
        --v2;
      }

      while (v2);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_8_2();
    v0[16] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6D9C8]();
  }

  else
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0378);
    sub_1B256DDFC();
    (*(v12 + 8))(v11, v13);

    OUTLINED_FUNCTION_7_2();

    return v14();
  }
}

uint64_t PurchaseIntent.PurchaseIntents.AsyncIterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0310);
  *v3 = v1;
  v3[1] = sub_1B2445514;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1B2445514()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B24455F4()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1B2445684;

  return PurchaseIntent.PurchaseIntents.AsyncIterator.next()(v2);
}

uint64_t sub_1B2445684()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B2445768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1B2445834;

  return (sub_1B247E4C8)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1B2445834()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t PurchaseIntent.PurchaseIntents.makeAsyncIterator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0318);
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  type metadata accessor for PurchaseIntent(0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v0);
  type metadata accessor for PurchaseIntent.PurchaseIntents.AsyncIterator(0);
  sub_1B256DE5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0320);
  return sub_1B256DE1C();
}

uint64_t sub_1B2445AC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  swift_allocObject();
  result = a4();
  *a5 = result;
  return result;
}

uint64_t sub_1B2445B1C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  sub_1B256D26C();
  *(v0 + qword_1EB7CDC00) = MEMORY[0x1E69E7CC8];
  *(v0 + qword_1EB7CDC08) = -1;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v3 = sub_1B256E09C();
  v4 = sub_1B256D5CC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B2519814(0, 0xE000000000000000, &v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1B2519814(0xD000000000000034, 0x80000001B258E690, &v8);
    _os_log_impl(&dword_1B23EF000, v4, v3, "%{public}s%{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v6, -1, -1);
    MEMORY[0x1B274BFF0](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1B2445CC8()
{
  v1 = v0;
  swift_defaultActor_initialize();
  sub_1B256D26C();
  *(v0 + qword_1EB7CDC00) = MEMORY[0x1E69E7CC8];
  *(v0 + qword_1EB7CDC08) = -1;
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  sub_1B256E4FC();

  v10[1] = 0x80000001B258E660;
  sub_1B2447958();
  v3 = sub_1B256EE7C();
  MEMORY[0x1B2749D50](v3);

  v4 = sub_1B256E09C();

  v5 = sub_1B256D5CC();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10[0] = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B2519814(0, 0xE000000000000000, v10);
    *(v6 + 12) = 2082;
    v8 = sub_1B2519814(0xD000000000000026, 0x80000001B258E660, v10);

    *(v6 + 14) = v8;
    _os_log_impl(&dword_1B23EF000, v5, v4, "%{public}s%{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v7, -1, -1);
    MEMORY[0x1B274BFF0](v6, -1, -1);
  }

  else
  {
  }

  return v1;
}

void sub_1B2445F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = objc_opt_self();

  v8 = [v7 defaultBroker];
  v28 = sub_1B24477D4;
  v29 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1B244BD28;
  v27 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);

  v10 = [v8 purchaseIntentServiceWithErrorHandler_];
  _Block_release(v9);

  if (v10)
  {
    v11 = sub_1B256D1FC();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;
    v28 = sub_1B2447840;
    v29 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1B2444748;
    v27 = &block_descriptor_21;
    v13 = _Block_copy(&aBlock);

    [v10 purchaseIntentsWithRequest:v11 reply:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = a2;
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v15, qword_1ED69A108);
    v16 = sub_1B256E0AC();

    v17 = sub_1B256D5CC();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136446466;
      v23 = v19;
      aBlock = 91;
      v25 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v14, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v20 = sub_1B2519814(aBlock, v25, &v23);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B258E5E0, &v23);
      _os_log_impl(&dword_1B23EF000, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v19, -1, -1);
      MEMORY[0x1B274BFF0](v18, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B24477F8(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
    v21 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v22 = v21;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B2446358(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v5, qword_1ED69A108);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0x692064656C696146, 0xEF203A435058206ELL);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v6 = sub_1B256E0AC();

  v7 = sub_1B256D5CC();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446466;
    v16 = v9;
    v17 = 91;
    v18 = 0xE100000000000000;
    MEMORY[0x1B2749D50](a2, a3);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v10 = sub_1B2519814(91, 0xE100000000000000, &v16);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2082;
    v11 = sub_1B2519814(0, 0xE000000000000000, &v16);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  else
  {
  }

  swift_allocError();
  *v12 = a1;
  v13 = a1;
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B244660C(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v10 = a3;
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v11, qword_1ED69A108);
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0xD00000000000001ALL, 0x80000001B258E620);
      v32 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      sub_1B256E78C();
      v12 = sub_1B256E0AC();

      v13 = sub_1B256D5CC();

      if (os_log_type_enabled(v13, v12))
      {
        v14 = a4;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136446466;
        v32 = v16;
        MEMORY[0x1B2749D50](v14, a5);
        MEMORY[0x1B2749D50](8285, 0xE200000000000000);
        v17 = sub_1B2519814(91, 0xE100000000000000, &v32);

        *(v15 + 4) = v17;
        *(v15 + 12) = 2082;
        v18 = sub_1B2519814(0, 0xE000000000000000, &v32);

        *(v15 + 14) = v18;
        _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274BFF0](v16, -1, -1);
        MEMORY[0x1B274BFF0](v15, -1, -1);
      }

      else
      {
      }

      swift_allocError();
      *v30 = a3;
      return swift_continuation_throwingResumeWithError();
    }

    else
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v21, qword_1ED69A108);
      v22 = sub_1B256E0AC();

      v23 = sub_1B256D5CC();

      if (os_log_type_enabled(v23, v22))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 136446466;
        v32 = v25;
        MEMORY[0x1B2749D50](a4, a5);
        MEMORY[0x1B2749D50](8285, 0xE200000000000000);
        v26 = sub_1B2519814(91, 0xE100000000000000, &v32);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2082;
        *(v24 + 14) = sub_1B2519814(0xD00000000000001FLL, 0x80000001B258E600, &v32);
        _os_log_impl(&dword_1B23EF000, v23, v22, "%{public}s%{public}s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274BFF0](v25, -1, -1);
        MEMORY[0x1B274BFF0](v24, -1, -1);
      }

      type metadata accessor for StoreKitError();
      sub_1B24477F8(&qword_1EB7CD4C0, type metadata accessor for StoreKitError);
      v27 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
      swift_allocError();
      *v28 = v27;

      return swift_continuation_throwingResumeWithError();
    }
  }

  else
  {
    sub_1B256D00C();
    swift_allocObject();
    sub_1B244784C(a1, a2);
    sub_1B256CFFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0368);
    sub_1B24478A4();
    sub_1B256CFEC();
    **(*(a6 + 64) + 40) = v31;
    swift_continuation_throwingResume();

    return sub_1B2443AD0(a1, a2);
  }
}

uint64_t sub_1B2446E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0398);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for PurchaseIntentInternal();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v31 = a1;
  sub_1B24AAFD0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B243E88C(v7, &qword_1EB7D0398);
    v12 = type metadata accessor for PurchaseIntent(0);
    v13 = a2;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  }

  sub_1B2447B14(v7, v11);
  v15 = sub_1B24C9EA8();
  v16 = sub_1B247A4C0(0x66664F636F486461, 0xEC00000064497265, v15);
  v18 = v17;

  if (!v18)
  {
    sub_1B2447B78(v11);
    goto LABEL_16;
  }

  memcpy(v35, (v36 + 160), 0xD0uLL);
  if (sub_1B2447BD4(v35) == 1)
  {
    sub_1B2447B78(v11);

LABEL_16:
    OUTLINED_FUNCTION_0_10();
    sub_1B2447A94(v36, a2, v23);
    v12 = type metadata accessor for PurchaseIntent(0);
    v24 = (a2 + *(v12 + 20));
    v24[5] = 0u;
    v24[6] = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *v24 = 0u;
    v13 = a2;
    v14 = 0;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  }

  v29 = v2;
  v30 = a2;
  v19 = v35[15];
  v20 = *(v35[15] + 16);
  v21 = 32;
  if (!v20)
  {
LABEL_15:

    sub_1B2447B78(v11);

    a2 = v30;
    goto LABEL_16;
  }

  while (1)
  {
    memcpy(v34, (v19 + v21), sizeof(v34));
    if (v34[1])
    {
      memcpy(v33, (v19 + v21), sizeof(v33));
      v22 = v34[0] == v16 && v34[1] == v18;
      if (v22 || (sub_1B256EB5C() & 1) != 0)
      {
        break;
      }
    }

    v21 += 112;
    if (!--v20)
    {
      goto LABEL_15;
    }
  }

  sub_1B2447BEC(v34, &v32);

  sub_1B2447B78(v11);
  OUTLINED_FUNCTION_0_10();
  v26 = v30;
  sub_1B2447A94(v36, v30, v27);
  v28 = type metadata accessor for PurchaseIntent(0);
  memcpy((v26 + *(v28 + 20)), v33, 0x70uLL);
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v28);
}

uint64_t sub_1B244719C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 48) && *(a1 + 40) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1B256EB5C() & 1;
  }
}

uint64_t sub_1B24471F4()
{
  v1 = qword_1EB7CDC10;
  sub_1B256D36C();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B2447264()
{
  sub_1B24471F4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B24472B8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1B24472E0(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1B244737C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B244743C()
{
  type metadata accessor for Product();
  if (v0 <= 0x3F)
  {
    sub_1B24474C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B24474C0()
{
  if (!qword_1EB7D0340)
  {
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7D0340);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PurchaseIntent.PurchaseIntents(_BYTE *result, int a2, int a3)
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

void sub_1B24475E4()
{
  sub_1B24476A0(319, &qword_1EB7D0358, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    sub_1B24476A0(319, &qword_1EB7D0360, MEMORY[0x1E69E8698]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B24476A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PurchaseIntent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B2447704()
{
  result = sub_1B256D36C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B24477F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B244784C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B24478A4()
{
  result = qword_1EB7CDAE0;
  if (!qword_1EB7CDAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0368);
    sub_1B24477F8(&qword_1EB7CDAF8, type metadata accessor for PurchaseIntentInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDAE0);
  }

  return result;
}

unint64_t sub_1B2447958()
{
  result = qword_1EB7CDC50;
  if (!qword_1EB7CDC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7CDC50);
  }

  return result;
}

uint64_t sub_1B244799C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0378) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_8_2();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1B2445514;

  return sub_1B2444DF4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B2447A94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B2447B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2447B78(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseIntentInternal();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2447BD4(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *OUTLINED_FUNCTION_13_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a69, (v69 + 32), 0x50uLL);
}

uint64_t BackingValue.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v64 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03B0);
  OUTLINED_FUNCTION_1_1();
  v65 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v75 = v64 - v9;
  v10 = sub_1B256E58C();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_21_0(a1);
  sub_1B256ED8C();
  sub_1B256E54C();
  (*(v12 + 104))(v16, *MEMORY[0x1E69E6B00], v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDAC();
  if (!v2)
  {
    v67 = v16;
    sub_1B23F22D0(v77, v79);
    __swift_project_boxed_opaque_existential_1(v79, v81);
    v49 = COERCE_DOUBLE(sub_1B256EB7C());
    v51 = v50;
    (*(v12 + 8))(v67, v10);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v52 = 0;
LABEL_36:
    v22 = v66;
LABEL_37:
    *v22 = v49;
    *(v22 + 8) = v51;
    *(v22 + 16) = v52;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v78 = 0;
  memset(v77, 0, sizeof(v77));
  sub_1B243E88C(v77, &qword_1EB7D03B8);
  v17 = 0;
  isUniquelyReferenced_nonNull_native = a1[4];
  OUTLINED_FUNCTION_21_0(a1);
  sub_1B2440B54();
  sub_1B256EDBC();
  OUTLINED_FUNCTION_27();
  v19 = v68;
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v68);
  (*(v65 + 32))(v75, v6, v19);
  v51 = MEMORY[0x1E69E7CC0];
  v49 = COERCE_DOUBLE(sub_1B256D8AC());
  v20 = sub_1B256E9CC();
  v21 = v20;
  v74 = *(v20 + 16);
  if (v74)
  {
    v22 = 0;
    a1 = (v20 + 40);
    v76 = MEMORY[0x1E69E7CC0];
    v73 = v20;
    while (v22 < *(v21 + 16))
    {
      v21 = *(a1 - 1);
      v51 = *a1;
      *&v77[0] = v21;
      *(&v77[0] + 1) = v51;
      sub_1B244A000();

      v23 = v17;
      sub_1B256E9AC();
      isUniquelyReferenced_nonNull_native = v17;
      if (v17)
      {

        v24 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_38();
          v24 = sub_1B2448DF8(v43, v44, v45, v24);
        }

        v21 = v73;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v51 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v46 = OUTLINED_FUNCTION_56(v25);
          v24 = sub_1B2448DF8(v46, v47, v48, v24);
        }

        *(v24 + 16) = v51;
        v76 = v24;
        *(v24 + 8 * v26 + 32) = v23;
        v17 = 0;
      }

      else
      {
        v69 = 0;
        v70 = v79[0];
        v71 = v79[1];
        v72 = v80;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v49;
        v27 = sub_1B2455488();
        if (__OFADD__(*(*&v49 + 16), (v28 & 1) == 0))
        {
          goto LABEL_40;
        }

        v19 = v27;
        v29 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03D0);
        if (sub_1B256E80C())
        {
          sub_1B2455488();
          OUTLINED_FUNCTION_10_2();
          if (!v31)
          {
            result = sub_1B256EC9C();
            __break(1u);
            return result;
          }

          v19 = v30;
        }

        if (v29)
        {

          v49 = *v77;
          v32 = *(*&v77[0] + 56) + 24 * v19;
          v33 = *v32;
          v34 = *(v32 + 8);
          v35 = v71;
          *v32 = v70;
          *(v32 + 8) = v35;
          v36 = *(v32 + 16);
          *(v32 + 16) = v72;
          sub_1B24472E0(v33, v34, v36);
        }

        else
        {
          v49 = *v77;
          *(*&v77[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
          v37 = (*(*&v49 + 48) + 16 * v19);
          *v37 = v21;
          v37[1] = v51;
          v38 = *(*&v49 + 56) + 24 * v19;
          v39 = v71;
          *v38 = v70;
          *(v38 + 8) = v39;
          *(v38 + 16) = v72;
          v40 = *(*&v49 + 16);
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_41;
          }

          *(*&v49 + 16) = v42;
        }

        v19 = v68;
        v17 = v69;
        v21 = v73;
      }

      ++v22;
      a1 += 2;
      if (v74 == v22)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    swift_once();
    v62 = qword_1EB7D05C0;
    (*(v19 + 8))(isUniquelyReferenced_nonNull_native, v21);
    if (v62 >= v51)
    {
      v49 = v51;
    }

    else
    {
      v49 = *&v51;
    }

    if (v62 >= v51)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    OUTLINED_FUNCTION_60();
    goto LABEL_37;
  }

  v76 = v51;
LABEL_26:

  a1 = v64[3];
  if (!*(v76 + 16))
  {

    v58 = OUTLINED_FUNCTION_44();
    v59(v58);
    v60 = OUTLINED_FUNCTION_2_6();
    v61(v60);
    v51 = 0;
    v52 = 5;
    goto LABEL_36;
  }

  v53 = *(v76 + 32);

  swift_willThrow();
  v54 = OUTLINED_FUNCTION_44();
  v55(v54);
  v56 = OUTLINED_FUNCTION_2_6();
  v57(v56);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BackingValue.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03D8);
  OUTLINED_FUNCTION_1_1();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_54();
      sub_1B256EBFC();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    case 2:
      OUTLINED_FUNCTION_18();
      sub_1B256EDEC();
      __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
      sub_1B256EC1C();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    case 3:
      OUTLINED_FUNCTION_18();
      sub_1B256EDEC();
      __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
      sub_1B256EBEC();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    case 4:
      OUTLINED_FUNCTION_18();
      sub_1B256EDDC();
      v40 = v9;
      OUTLINED_FUNCTION_48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03E8);
      sub_1B244A0A8();
      sub_1B244A054();
      sub_1B256EADC();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    case 5:
      v35 = v6;
      v38 = v5;
      v39 = v2;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B2440B54();

      v37 = v8;
      result = sub_1B256EDFC();
      v11 = 0;
      v12 = v9 + 64;
      v13 = 1 << *(v9 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v9 + 64);
      v16 = (v13 + 63) >> 6;
      v36 = v9;
      if (v15)
      {
        goto LABEL_10;
      }

      break;
    case 6:
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_54();
      sub_1B256EC2C();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    default:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B256EDEC();
      __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
      sub_1B256EBDC();
      return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  do
  {
LABEL_11:
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v16)
    {

      return (*(v35 + 8))(v37, v38);
    }

    v15 = *(v12 + 8 * v17);
    ++v11;
  }

  while (!v15);
  while (1)
  {
    v18 = __clz(__rbit64(v15)) | (v17 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v9 + 56) + 24 * v18;
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v42[0] = *v22;
    v42[1] = v23;
    v43 = v24;
    v40 = v20;
    v41 = v21;

    v25 = OUTLINED_FUNCTION_33();
    sub_1B24472B8(v25, v26, v27);
    sub_1B244A054();
    v28 = v39;
    sub_1B256EA5C();
    v39 = v28;
    if (v28)
    {
      break;
    }

    v15 &= v15 - 1;

    v29 = OUTLINED_FUNCTION_33();
    result = sub_1B24472E0(v29, v30, v31);
    v11 = v17;
    v9 = v36;
    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_10:
    v17 = v11;
  }

  (*(v35 + 8))(v37, v38);
  v32 = OUTLINED_FUNCTION_33();
  return sub_1B24472E0(v32, v33, v34);
}

void sub_1B2448C08()
{
  OUTLINED_FUNCTION_17_0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_46();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_1EB7D04F8, &unk_1B25790D0);
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for PurchaseIntent(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_42();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_12_2(v9);
    sub_1B24551F0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
  }
}

void sub_1B2448D30()
{
  OUTLINED_FUNCTION_17_0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_46();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_1EB7D0468, &unk_1B2579060);
  OUTLINED_FUNCTION_40();
  type metadata accessor for Product();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_42();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_12_2(v8);
    sub_1B2455228(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
  }
}

uint64_t sub_1B2448DF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1B2455240((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B2448F38()
{
  OUTLINED_FUNCTION_47();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_13_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0498);
      v6 = OUTLINED_FUNCTION_50();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_24_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_16_1();
        sub_1B2455260(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2448FF4()
{
  OUTLINED_FUNCTION_47();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_13_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03F8);
      v6 = OUTLINED_FUNCTION_50();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_24_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_16_1();
        sub_1B2455288(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B24490E0()
{
  OUTLINED_FUNCTION_23_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      OUTLINED_FUNCTION_59(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_52();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_39();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_37();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2449194()
{
  OUTLINED_FUNCTION_17_0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_46();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_1EB7D0480, &unk_1B2579070);
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for TrustStore.CacheValue(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_42();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_12_2(v9);
    sub_1B24552B0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
  }
}

void sub_1B244928C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      OUTLINED_FUNCTION_59(v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v3;
      v13[3] = 2 * ((v14 - 32) / 24);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_37();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_51();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B244934C()
{
  OUTLINED_FUNCTION_47();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_13_2();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04B8);
      v7 = OUTLINED_FUNCTION_52();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_39();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_16_1();
        sub_1B2455240(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DC0);
    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B244941C()
{
  OUTLINED_FUNCTION_17_0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_46();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_1EB7D04A0, &unk_1B2579090);
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for Product.SubscriptionInfo.Status(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_42();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_12_2(v9);
    sub_1B24552C8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
  }
}

void sub_1B24494E4()
{
  OUTLINED_FUNCTION_47();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_13_2();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0490);
      v6 = OUTLINED_FUNCTION_50();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_24_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_16_1();
        sub_1B24552E0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B24495A0()
{
  OUTLINED_FUNCTION_47();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_13_2();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0458);
      v7 = OUTLINED_FUNCTION_52();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_39();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        OUTLINED_FUNCTION_16_1();
        sub_1B2455308();
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0460);
    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1B2449670()
{
  OUTLINED_FUNCTION_17_0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_46();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_14_1();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_53(v2, v5, &qword_1EB7D0448, &unk_1B2579048);
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for StoreProductManager.CollectionObserver.Storage(v8);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_42();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_12_2(v9);
    sub_1B24553B8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
  }
}

void sub_1B2449768()
{
  OUTLINED_FUNCTION_23_0();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_7_3(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      OUTLINED_FUNCTION_59(v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_52();
      _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_39();
      v13[2] = v3;
      v13[3] = v14;
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_37();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_29_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_4();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1B244981C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17A0);
  v4 = OUTLINED_FUNCTION_52();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_39();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_1B244988C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2449988(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

void sub_1B24499DC()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_5(v8, v2 + 8 * (v8 >> 6));
  v11 = *(v10 + 48);
  sub_1B256D3CC();
  OUTLINED_FUNCTION_7_0();
  (*(v12 + 32))(v11 + *(v12 + 72) * v9, v7);
  v13 = *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v14 + 32))(v13 + *(v14 + 72) * v9, v5);
  OUTLINED_FUNCTION_30();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v15;
    OUTLINED_FUNCTION_51();
  }
}

unint64_t sub_1B2449AB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_1B2449B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_1_5(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48) + 40 * v7;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  v12 = *(v8 + 56);
  OUTLINED_FUNCTION_59(v7, v10, v13, v8, v14);
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 32))(v12 + *(v15 + 72) * a1, a3);
  OUTLINED_FUNCTION_30();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v16;
  }
}

void sub_1B2449BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_1_5(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + 8 * v5) = v7;
  sub_1B244AA0C(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_30();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void sub_1B2449BF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_5(a1, a5 + 8 * (a1 >> 6));
  v11 = OUTLINED_FUNCTION_36(v6, v7, v8, v9, v10);
  sub_1B244AA0C(v13, (*(v12 + 56) + 32 * v11));
  OUTLINED_FUNCTION_30();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }
}

uint64_t sub_1B2449C48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1B256D47C();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1B2449CF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_1_5(a1, a5 + 8 * (a1 >> 6));
  OUTLINED_FUNCTION_36(v8, v9, v10, v11, v12);
  v14 = *(v13 + 56);
  v15 = type metadata accessor for StoreProductManager.CachedProduct(0);
  sub_1B243A334(a4, v14 + *(*(v15 - 8) + 72) * a1);
  OUTLINED_FUNCTION_30();
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }
}

void sub_1B2449D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_1_5(a1, a5 + 8 * (a1 >> 6));
  v11 = OUTLINED_FUNCTION_36(v6, v7, v8, v9, v10);
  sub_1B244ADF4(v13, *(v12 + 56) + 16 * v11);
  OUTLINED_FUNCTION_30();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }
}

uint64_t sub_1B2449DC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B256D3CC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1B2449EC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1B2455488();
  OUTLINED_FUNCTION_0_11();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03D0);
  if ((OUTLINED_FUNCTION_57() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1B2455488();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v5;
  if (v15)
  {
    v19 = v18[7] + 24 * v14;
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = a3;
    OUTLINED_FUNCTION_45();

    return sub_1B24472E0(v20, v21, v22);
  }

  else
  {
    sub_1B2449988(v14, a4, a5, a1, a2, a3, v18);
    OUTLINED_FUNCTION_45();
  }
}

unint64_t sub_1B244A000()
{
  result = qword_1EB7D03C8;
  if (!qword_1EB7D03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D03C8);
  }

  return result;
}

unint64_t sub_1B244A054()
{
  result = qword_1EB7D03E0;
  if (!qword_1EB7D03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D03E0);
  }

  return result;
}

unint64_t sub_1B244A0A8()
{
  result = qword_1EB7D03F0;
  if (!qword_1EB7D03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D03E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D03F0);
  }

  return result;
}

void sub_1B244A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  sub_1B24555E0(a2);
  OUTLINED_FUNCTION_0_11();
  if (v14)
  {
    __break(1u);
LABEL_10:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

  v15 = v13;
  v16 = OUTLINED_FUNCTION_41_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  if (OUTLINED_FUNCTION_57())
  {
    sub_1B24555E0(a2);
    if ((v15 & 1) != (v17 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6);
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X3, X16 }
  }

  (*(v8 + 16))(v12, a2, v20);
  sub_1B24499DC();
  OUTLINED_FUNCTION_45();
}

void sub_1B244A2E8()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_4_2(v4, v5);
  sub_1B2455488();
  OUTLINED_FUNCTION_0_11();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D04C0);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    OUTLINED_FUNCTION_31();
    sub_1B2455488();
    OUTLINED_FUNCTION_10_2();
    if (!v8)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_51();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_22_0();
    sub_1B2449AB8(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_51();
  }
}

void sub_1B244A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B2455674(a2);
  OUTLINED_FUNCTION_0_11();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  if ((sub_1B256E80C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1B2455674(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = *(v14 + 56);
    v16 = OUTLINED_FUNCTION_41_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16);
    OUTLINED_FUNCTION_7_0();
    v18 = *(v17 + 40);
    v20 = v19;
    v21 = v15 + *(v17 + 72) * v10;

    v18(v21, a1, v20);
  }

  else
  {
    sub_1B244AA1C(a2, v23);
    sub_1B2449B00(v10, v23, a1, v14);
  }
}

_OWORD *sub_1B244A5C4(_OWORD *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  a4(a2);
  OUTLINED_FUNCTION_0_11();
  if (v14)
  {
    __break(1u);
LABEL_14:
    a7(0);
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    a4(a2);
    OUTLINED_FUNCTION_10_2();
    if (!v18)
    {
      goto LABEL_14;
    }

    v15 = v17;
  }

  v19 = *v7;
  if (v16)
  {
    v20 = (*(v19 + 56) + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1B244AA0C(a1, v20);
  }

  else
  {
    sub_1B2449BA4(v15, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_1B244A70C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9_3(v3, v4);
  sub_1B2455488();
  OUTLINED_FUNCTION_0_11();
  if (v5)
  {
    __break(1u);
LABEL_14:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0478);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    OUTLINED_FUNCTION_41_0();
    sub_1B2455488();
    OUTLINED_FUNCTION_10_2();
    if (!v7)
    {
      goto LABEL_14;
    }

    v2 = v6;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(*(*v0 + 56) + 32 * v2);
    OUTLINED_FUNCTION_51();

    return sub_1B244AA0C(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    sub_1B2449BF8(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_51();
  }
}

uint64_t sub_1B244A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9_3(v10, v11);
  sub_1B2455488();
  OUTLINED_FUNCTION_0_11();
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0408);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    OUTLINED_FUNCTION_41_0();
    sub_1B2455488();
    if ((v14 & 1) != (v15 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v14)
  {
    sub_1B256D47C();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_51();

    return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    sub_1B2449C48(v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_51();
  }
}

void sub_1B244A92C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_4_2(v4, v5);
  sub_1B2455488();
  OUTLINED_FUNCTION_0_11();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0400);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    OUTLINED_FUNCTION_31();
    sub_1B2455488();
    OUTLINED_FUNCTION_10_2();
    if (!v8)
    {
      goto LABEL_14;
    }

    v3 = v7;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_51();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_22_0();
    sub_1B2449AB8(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_51();
  }
}

_OWORD *sub_1B244AA0C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B244AA78()
{
  OUTLINED_FUNCTION_58();
  v2 = OUTLINED_FUNCTION_9_3(v0, v1);
  sub_1B2458898(v2, v3);
  OUTLINED_FUNCTION_0_11();
  if (v5)
  {
    __break(1u);
LABEL_12:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7CFEA8);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    v7 = OUTLINED_FUNCTION_41_0();
    sub_1B2458898(v7, v8);
    if ((v6 & 1) != (v9 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v6)
  {
    type metadata accessor for StoreProductManager.CachedProduct(0);
    OUTLINED_FUNCTION_51();

    return sub_1B244AEAC(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    sub_1B2449CF8(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_51();
  }
}

uint64_t sub_1B244AB8C()
{
  OUTLINED_FUNCTION_58();
  v3 = OUTLINED_FUNCTION_4_2(v1, v2);
  sub_1B2458898(v3, v4);
  OUTLINED_FUNCTION_0_11();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = sub_1B256EC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0470);
  OUTLINED_FUNCTION_6_2();
  if (sub_1B256E80C())
  {
    v6 = OUTLINED_FUNCTION_31();
    sub_1B2458898(v6, v7);
    OUTLINED_FUNCTION_10_2();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_51();

    return sub_1B244AE50(v9, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_22_0();
    sub_1B2449D74(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_51();
  }
}

void sub_1B244AC6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  sub_1B24555E0(a2);
  OUTLINED_FUNCTION_0_11();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0440);
  OUTLINED_FUNCTION_6_2();
  if ((sub_1B256E80C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1B24555E0(a2);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_1B256EC9C();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  v19 = *v2;
  if (v16)
  {
    *(v19[7] + 8 * v15) = a1;
    OUTLINED_FUNCTION_45();
  }

  else
  {
    (*(v7 + 16))(v11, a2, v5);
    sub_1B2449DC4(v15, v11, a1, v19);
    OUTLINED_FUNCTION_45();
  }
}

uint64_t sub_1B244AEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreProductManager.CachedProduct(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_18()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 128), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_27()
{
  *(v4 - 256) = v3;
  *(v4 - 296) = v2;
  *(v4 - 288) = v1;
  *(v4 - 280) = v0;
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_48()
{
  v2 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v2);
}

uint64_t OUTLINED_FUNCTION_49()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1B256EDEC();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_1B244988C(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_1B256E80C();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5);
}

uint64_t sub_1B244B404(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B244B48C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0530);
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B244BAE4();
  OUTLINED_FUNCTION_1_6();
  sub_1B256EA2C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B244B5B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x727574616E676973 && a2 == 0xED00006F666E4965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B244B654(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0500);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B244B914();
  OUTLINED_FUNCTION_1_6();
  v13[0] = a2;
  v13[1] = a3;
  sub_1B244B968();
  sub_1B256EA5C();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1B244B790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B244B404(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B244B7BC(uint64_t a1)
{
  v2 = sub_1B244BAE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B244B7F8(uint64_t a1)
{
  v2 = sub_1B244BAE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B244B854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B244B5B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B244B880(uint64_t a1)
{
  v2 = sub_1B244B914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B244B8BC(uint64_t a1)
{
  v2 = sub_1B244B914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B244B914()
{
  result = qword_1EB7D0508;
  if (!qword_1EB7D0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0508);
  }

  return result;
}

unint64_t sub_1B244B968()
{
  result = qword_1EB7D0510;
  if (!qword_1EB7D0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0510);
  }

  return result;
}

unint64_t sub_1B244B9E0()
{
  result = qword_1EB7D0518;
  if (!qword_1EB7D0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0518);
  }

  return result;
}

unint64_t sub_1B244BA38()
{
  result = qword_1EB7D0520;
  if (!qword_1EB7D0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0520);
  }

  return result;
}

unint64_t sub_1B244BA90()
{
  result = qword_1EB7D0528;
  if (!qword_1EB7D0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0528);
  }

  return result;
}

unint64_t sub_1B244BAE4()
{
  result = qword_1EB7D0538;
  if (!qword_1EB7D0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0538);
  }

  return result;
}

_BYTE *sub_1B244BB38(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B244BBE8()
{
  result = qword_1EB7D0540;
  if (!qword_1EB7D0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0540);
  }

  return result;
}

unint64_t sub_1B244BC40()
{
  result = qword_1EB7D0548;
  if (!qword_1EB7D0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0548);
  }

  return result;
}

unint64_t sub_1B244BC98()
{
  result = qword_1EB7D0550;
  if (!qword_1EB7D0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0550);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_1B256EDFC();
}

void sub_1B244BD28(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B244BD90()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244BDD0()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244BE9C()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_10_3();
  switch(v0)
  {
    case 1:
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_1_7();
      break;
    case 4:
      OUTLINED_FUNCTION_18_0();
      break;
    case 5:
      OUTLINED_FUNCTION_5_3();
      break;
    case 7:
      OUTLINED_FUNCTION_15_2();
      break;
    default:
      OUTLINED_FUNCTION_14_2();
      break;
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244BF6C()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244BFD8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_2();
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244C068()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244C168()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244C1A8()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244C200(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1B256DA7C();
}

uint64_t sub_1B244C258()
{
  OUTLINED_FUNCTION_4_3();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_4_3();
      break;
    default:
      break;
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244C30C()
{
  OUTLINED_FUNCTION_5_3();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_5_3();
      break;
    case 2:
      OUTLINED_FUNCTION_17_1();
      break;
    default:
      break;
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244C3A0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_3_5();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_1_7();
      break;
    case 3:
      OUTLINED_FUNCTION_17_1();
      break;
    default:
      break;
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244C438()
{
  sub_1B256DA7C();
}

uint64_t sub_1B244C4B0()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_10_3();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_1_7();
      break;
    case 4:
      OUTLINED_FUNCTION_18_0();
      break;
    case 5:
      OUTLINED_FUNCTION_5_3();
      break;
    case 6:
    case 8:
      OUTLINED_FUNCTION_14_2();
      break;
    case 7:
      OUTLINED_FUNCTION_15_2();
      break;
    default:
      break;
  }

  sub_1B256DA7C();
}

uint64_t sub_1B244C5F0()
{
  v0 = type metadata accessor for SKLogger();
  __swift_allocate_value_buffer(v0, qword_1EB7EDF90);
  __swift_project_value_buffer(v0, qword_1EB7EDF90);
  return sub_1B256D5DC();
}

StoreKit::Message::Reason sub_1B244C6A8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = Message.Reason.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B244C6E8@<X0>(uint64_t *a1@<X8>)
{
  result = Message.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Message.hashValue.getter()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

uint64_t sub_1B244C7BC()
{
  v1 = *v0;
  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](v1);
  return sub_1B256ED7C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Message.display(in:)(UIWindowScene *in)
{
  v2 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = [objc_opt_self() defaultBroker];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  aBlock[4] = sub_1B244CC60;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B244BD28;
  aBlock[3] = &block_descriptor_4;
  v9 = _Block_copy(aBlock);

  v10 = [v7 storeKitServiceWithErrorHandler_];
  _Block_release(v9);

  if (v10)
  {
    sub_1B244ED88();
    v11 = sub_1B256E20C();
    [v10 displayMessageWithType_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EB7CFC40 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1EB7EDF90);
    sub_1B244CC80(v12, v5);
    v11 = sub_1B256D5CC();
    sub_1B256D5EC();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 8))(v5);
    v14 = sub_1B256E0AC();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134283521;
      *(v15 + 4) = v6;
      _os_log_impl(&dword_1B23EF000, v11, v14, "Failed to get XPC remote object to display message %{private}ld", v15, 0xCu);
      OUTLINED_FUNCTION_12_3();
      MEMORY[0x1B274BFF0]();
    }
  }
}

void sub_1B244CA80(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB7CFC40 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v4, qword_1EB7EDF90);
  sub_1B244CC80(v7, v6);
  v8 = a1;
  v9 = sub_1B256D5CC();
  v10 = sub_1B256D5EC();
  (*(*(v10 - 8) + 8))(v6, v10);
  v11 = sub_1B256E0AC();

  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134283779;
    *(v12 + 4) = a2;
    *(v12 + 12) = 2114;
    v14 = sub_1B256D0CC();
    *(v12 + 14) = v14;
    *v13 = v14;
    _os_log_impl(&dword_1B23EF000, v9, v11, "Failed in XPC service to display message %{private}ld: %{public}@", v12, 0x16u);
    sub_1B243E88C(v13, &qword_1EB7D18E0);
    MEMORY[0x1B274BFF0](v13, -1, -1);
    MEMORY[0x1B274BFF0](v12, -1, -1);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B244CC80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8StoreKit7MessageV8MessagesV17makeAsyncIteratorAE0fG0VyF_0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05A8);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05B8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  if (qword_1EB7CD328 != -1)
  {
    swift_once();
  }

  v15 = __swift_storeEnumTagSinglePayload(v14, 1, 1, v2);
  MEMORY[0x1EEE9AC00](v15);
  *(&v21 - 2) = v14;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  v16 = type metadata accessor for Message.Messages.AsyncIterator();
  sub_1B256DE5C();
  sub_1B244F250(v14, v12, &qword_1EB7D05B8);
  result = __swift_getEnumTagSinglePayload(v12, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MessageReceiver();
    swift_allocObject();
    v18 = sub_1B252CA4C(v12);
    if (!__swift_getEnumTagSinglePayload(v14, 1, v2))
    {
      v19 = v22;
      (*(v22 + 16))(v4, v14, v2);

      sub_1B256DDBC();
      (*(v19 + 8))(v4, v2);
    }

    v20 = [objc_opt_self() defaultBroker];
    [v20 registerMessageListener_];

    *(a1 + *(v16 + 20)) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0580);
    sub_1B256DE1C();
    return sub_1B243E88C(v14, &qword_1EB7D05B8);
  }

  return result;
}

uint64_t sub_1B244D0C4(uint64_t a1, uint64_t a2)
{
  sub_1B243E88C(a2, &qword_1EB7D05B8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

void sub_1B244D174(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultBroker];
  [v3 unregisterMessageListener_];
}

uint64_t Message.Messages.AsyncIterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0558);
  *v3 = v1;
  v3[1] = sub_1B244D2A0;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1B244D2A0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B244D384()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1B244D418;

  return Message.Messages.AsyncIterator.next()(v2);
}

uint64_t sub_1B244D418()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t sub_1B244D500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1B244D5CC;

  return (sub_1B247E570)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1B244D5CC()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  OUTLINED_FUNCTION_7_2();

  return v3();
}

uint64_t static Message.acknowledge(bundleID:message:offer:overrideAuditToken:logKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 112) = a2;
  *(v7 + 120) = a5;
  *(v7 + 104) = a1;
  *(v7 + 144) = type metadata accessor for AcknowledgeMessageRequest();
  *(v7 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  *(v7 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  *(v7 + 168) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a3;
  *(v7 + 176) = v10;
  *(v7 + 184) = v11;
  *(v7 + 192) = *a4;
  v12 = *(a4 + 24);
  *(v7 + 208) = *(a4 + 16);
  *(v7 + 216) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B244D840, 0, 0);
}

uint64_t sub_1B244D840()
{
  v67 = v0;
  v66[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B24661BC(*(v0 + 184));
  *(v0 + 272) = v1;
  if (v1 == 5 || (v63 = sub_1B24661E0(v1), !v2))
  {
    if (qword_1EB7CFC40 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v9 = *(v0 + 184);
    v10 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v10, qword_1EB7EDF90);
    OUTLINED_FUNCTION_6_3();
    sub_1B256E4FC();

    OUTLINED_FUNCTION_8_3();
    v64 = v12 + 2;
    v65 = v11;
    *(v0 + 96) = v9;
    v13 = sub_1B256EAAC();
  }

  else
  {
    if (*(v0 + 200))
    {
      v62 = v2;
      v3 = *(v0 + 120);
      v4 = *(v0 + 176);
      v59 = *(v0 + 200);
      if (*(v3 + 32))
      {
        v5 = type metadata accessor for ClientOverride(0);
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
      }

      else
      {
        v28 = *(v0 + 160);
        v29 = *(v3 + 16);
        *(v0 + 240) = *v3;
        *(v0 + 256) = v29;

        v30 = MEMORY[0x1B27494C0](v0 + 240, 32);
        v60 = v31;
        v32 = sub_1B256D3CC();
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
        v5 = type metadata accessor for ClientOverride(0);
        v36 = v5[7];
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
        __swift_storeEnumTagSinglePayload(v4 + v36, 1, 3, v37);
        *v4 = xmmword_1B25793F0;
        v38 = v4 + v5[8];
        v39 = v4 + v5[9];
        v40 = v5[10];
        OUTLINED_FUNCTION_16_2();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
        sub_1B2443AD0(*v4, *(v4 + 8));
        *v4 = v30;
        *(v4 + 8) = v60;
        *(v4 + 16) = 0u;
        *(v4 + 32) = 0u;
        *v38 = 0;
        *(v38 + 8) = 1;
        *v39 = 0;
        *(v39 + 8) = 1;
        sub_1B244EE28(v28, v4 + v40, &qword_1EB7D1770);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      }

      v44 = *(v0 + 192);
      v45 = *(v0 + 168);
      v47 = *(v0 + 144);
      v46 = *(v0 + 152);
      v48 = *(v0 + 136);
      v61 = *(v0 + 128);
      v49 = *(v0 + 104);
      v50 = *(v0 + 112);
      sub_1B244F250(*(v0 + 176), v45, &qword_1EB7D1850);
      v51 = *(v47 + 28);
      type metadata accessor for ClientOverride(0);
      OUTLINED_FUNCTION_16_2();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v5);
      *v46 = v63;
      v46[1] = v62;
      v46[2] = v49;
      v46[3] = v50;
      v46[4] = v44;
      v46[5] = v59;

      sub_1B244EE28(v45, v46 + v51, &qword_1EB7D1850);
      v55 = (v46 + *(v47 + 32));
      *v55 = v61;
      v55[1] = v48;
      sub_1B256CEAC();
      swift_allocObject();

      sub_1B256CE9C();
      sub_1B244EF70(&qword_1EB7D0560, type metadata accessor for AcknowledgeMessageRequest);
      v56 = sub_1B256CE8C();
      v58 = v57;

      *(v0 + 224) = v58;
      *(v0 + 232) = v56;

      return MEMORY[0x1EEE6DFA0](sub_1B244E098, 0, 0);
    }

    if (qword_1EB7CFC40 != -1)
    {
      OUTLINED_FUNCTION_0_12();
      swift_once();
    }

    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v25, qword_1EB7EDF90);
    OUTLINED_FUNCTION_6_3();
    sub_1B256E4FC();

    OUTLINED_FUNCTION_8_3();
    v64 = v27;
    v65 = v26;
    *(v0 + 80) = v24;
    *(v0 + 88) = v23;

    v13 = sub_1B256D9FC();
  }

  MEMORY[0x1B2749D50](v13);

  v14 = sub_1B256E0AC();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v18 = 136446466;
    OUTLINED_FUNCTION_19_1();
    MEMORY[0x1B2749D50](v17, v16);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v19 = sub_1B2519814(v64, v65, v66);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2082;
    v20 = sub_1B2519814(v64, v65, v66);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_3();
    MEMORY[0x1B274BFF0]();
    OUTLINED_FUNCTION_12_3();
    MEMORY[0x1B274BFF0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_2();

  return v21();
}

uint64_t sub_1B244E098()
{
  v1 = v0 + 16;
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B244E184;
  v4 = *(v0 + 272);
  v5 = swift_continuation_init();
  sub_1B244E360(v5, v4, v3, v2);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1B244E184()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B244E284, 0, 0);
}

uint64_t sub_1B244E284()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_1B2443AE4(v0[29], v0[28]);
  sub_1B244EDCC(v2);
  sub_1B243E88C(v1, &qword_1EB7D1850);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

void sub_1B244E360(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() defaultBroker];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  *(v9 + 40) = a1;
  v32 = sub_1B244F22C;
  v33 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B244BD28;
  v31 = &block_descriptor_26;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 messageServiceWithErrorHandler_];
  _Block_release(v10);

  if (v11)
  {
    v12 = sub_1B256D1FC();
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a1;
    v32 = sub_1B244F23C;
    v33 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1B2515BBC;
    v31 = &block_descriptor_32;
    v14 = _Block_copy(&aBlock);

    [v11 acknowledgeMessage:v12 reply:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = a3;
    if (qword_1EB7CFC40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v16, qword_1EB7EDF90);
    aBlock = 0;
    v29 = 0xE000000000000000;
    sub_1B256E4FC();
    MEMORY[0x1B2749D50](0xD000000000000037, 0x80000001B258E7A0);
    v27 = a2 + 1;
    v17 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v17);

    v19 = aBlock;
    v18 = v29;
    v20 = sub_1B256E0AC();

    v21 = sub_1B256D5CC();

    if (os_log_type_enabled(v21, v20))
    {
      v22 = v15;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136446466;
      v27 = v24;
      aBlock = 91;
      v29 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v22, a4);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v25 = sub_1B2519814(aBlock, v29, &v27);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2082;
      v26 = sub_1B2519814(v19, v18, &v27);

      *(v23 + 14) = v26;
      _os_log_impl(&dword_1B23EF000, v21, v20, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v24, -1, -1);
      MEMORY[0x1B274BFF0](v23, -1, -1);
    }

    else
    {
    }

    swift_continuation_throwingResume();
  }
}

uint64_t sub_1B244E7A0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB7CFC40 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v7, qword_1EB7EDF90);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1B256E4FC();
  MEMORY[0x1B2749D50](0xD00000000000002DLL, 0x80000001B258E810);
  v21 = a2 + 1;
  v8 = sub_1B256EAAC();
  MEMORY[0x1B2749D50](v8);

  MEMORY[0x1B2749D50](8250, 0xE200000000000000);
  v9 = sub_1B256D0CC();
  v10 = [v9 description];
  v11 = sub_1B256D9BC();
  v13 = v12;

  MEMORY[0x1B2749D50](v11, v13);

  v14 = sub_1B256E0AC();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136446466;
    v21 = v17;
    v22 = 91;
    v23 = 0xE100000000000000;
    MEMORY[0x1B2749D50](a3, a4);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    v18 = sub_1B2519814(91, 0xE100000000000000, &v21);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2082;
    v19 = sub_1B2519814(0, 0xE000000000000000, &v21);

    *(v16 + 14) = v19;
    _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B274BFF0](v17, -1, -1);
    MEMORY[0x1B274BFF0](v16, -1, -1);
  }

  else
  {
  }

  return swift_continuation_throwingResume();
}

uint64_t sub_1B244EA78(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EB7CFC40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_1EB7EDF90);
    sub_1B256E4FC();

    v22 = 0xD000000000000022;
    v23 = 0x80000001B258E7E0;
    v8 = sub_1B256D0CC();
    v9 = [v8 description];
    v10 = sub_1B256D9BC();
    v12 = v11;

    MEMORY[0x1B2749D50](v10, v12);

    v13 = sub_1B256E0AC();

    v14 = sub_1B256D5CC();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = a2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      v21 = v17;
      v22 = 91;
      v23 = 0xE100000000000000;
      MEMORY[0x1B2749D50](v15, a3);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v18 = sub_1B2519814(91, 0xE100000000000000, &v21);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      v19 = sub_1B2519814(0xD000000000000022, 0x80000001B258E7E0, &v21);

      *(v16 + 14) = v19;
      _os_log_impl(&dword_1B23EF000, v14, v13, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v17, -1, -1);
      MEMORY[0x1B274BFF0](v16, -1, -1);
    }

    else
    {
    }
  }

  return swift_continuation_throwingResume();
}

void *sub_1B244ED34(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B244ED58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B244ED88()
{
  result = qword_1EB7CD4F8;
  if (!qword_1EB7CD4F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7CD4F8);
  }

  return result;
}

uint64_t sub_1B244EDCC(uint64_t a1)
{
  v2 = type metadata accessor for AcknowledgeMessageRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B244EE28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 40))(v3, v4);
  return v3;
}

unint64_t sub_1B244EE7C()
{
  result = qword_1EB7D0568;
  if (!qword_1EB7D0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0568);
  }

  return result;
}

unint64_t sub_1B244EED4()
{
  result = qword_1EB7D0570;
  if (!qword_1EB7D0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0570);
  }

  return result;
}

uint64_t sub_1B244EF70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Message.Messages.AsyncIterator()
{
  result = qword_1EB7D0588;
  if (!qword_1EB7D0588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Message.Messages(_BYTE *result, int a2, int a3)
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

void sub_1B244F104()
{
  sub_1B244F1D8(319, &qword_1EB7D0598, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MessageReceiver();
    if (v1 <= 0x3F)
    {
      sub_1B244F1D8(319, &qword_1EB7D05A0, MEMORY[0x1E69E8698]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B244F1D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Message);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B244F250(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t sub_1B244F4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8650];
  v3 = sub_1B256DDCC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B244F534()
{
  v0 = sub_1B256DDCC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1B256DE4C();
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1B244F4BC(v2);
  sub_1B256DE5C();
  sub_1B256DE1C();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B244F694(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_1B256DE0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_1B247DAA8();
}

uint64_t sub_1B244F870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B244F890, a4, 0);
}

uint64_t sub_1B244F890()
{
  sub_1B244F8F0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B244F8F0(uint64_t a1)
{
  v2 = sub_1B256DE0C();
  v3 = sub_1B256E2EC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_1B256D3CC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B256D3BC();
  (*(*(v2 - 8) + 16))(v5, a1, v2);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v2);
  swift_beginAccess();
  sub_1B244FB34();
  sub_1B256D8BC();
  sub_1B256D8CC();
  return swift_endAccess();
}

uint64_t sub_1B244FA74()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B244FA9C()
{
  sub_1B244FA74();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B244FAFC()
{
  sub_1B244F534();
}

unint64_t sub_1B244FB34()
{
  result = qword_1EB7CDC38;
  if (!qword_1EB7CDC38)
  {
    sub_1B256D3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CDC38);
  }

  return result;
}

uint64_t sub_1B244FB94(uint64_t a1)
{
  v4 = *(sub_1B256DE0C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B244FC90;

  return sub_1B244F870(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B244FC90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void BackingValue.subscript.getter(uint64_t a1@<X8>)
{
  if (v1[16] == 5 && *(*v1 + 16) && (v3 = sub_1B2455488(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_106(v3);
    *a1 = v5;
    *(a1 + 8) = v6;
    v8 = *(v7 + 16);
    *(a1 + 16) = v8;

    sub_1B24472B8(v5, v6, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 6;
  }
}

uint64_t BackingValue.isNil.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = 1;
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_3;
    case 6:
      break;
    default:

LABEL_3:
      v4 = 0;
      break;
  }

  sub_1B24472E0(v1, v2, v3);
  sub_1B24472E0(0, 0, 6);
  return v4;
}

void BackingValue.init<A>(_:)()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v49 = v2;
  v48 = *(*(v3 + 24) + 16);
  v47[2] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v47[1] = v47 - v6;
  v7 = *(v1 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  if (qword_1EB7CFC48 != -1)
  {
    OUTLINED_FUNCTION_46_0();
    swift_once();
  }

  v14 = qword_1EB7D05C0;
  OUTLINED_FUNCTION_14_3();
  v15 = sub_1B256E39C();
  OUTLINED_FUNCTION_14_3();
  v16 = sub_1B256E38C();
  if (v15)
  {
    if (v16 > 64)
    {
LABEL_10:
      v50 = v14;
      sub_1B24554E4();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_71();
      v20 = sub_1B256D92C();
      v21 = OUTLINED_FUNCTION_103();
      (v15)(v21);
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_16:
      v23 = OUTLINED_FUNCTION_31_0();
      v24(v23);
      OUTLINED_FUNCTION_14_3();
      if (sub_1B256E38C() < 65)
      {
        OUTLINED_FUNCTION_14_3();
        v28 = sub_1B256E39C();
        OUTLINED_FUNCTION_14_3();
        v29 = sub_1B256E37C();
        v30 = OUTLINED_FUNCTION_41_0();
        (v15)(v30);
        v31 = OUTLINED_FUNCTION_41_1();
        (v15)(v31);
        if (v28)
        {
          v27 = v29;
        }

        else
        {
          v27 = v29;
        }
      }

      else
      {
        sub_1B2455538();
        sub_1B245558C();
        sub_1B256D84C();
        v25 = OUTLINED_FUNCTION_41_0();
        (v15)(v25);
        v26 = OUTLINED_FUNCTION_41_1();
        (v15)(v26);
        v27 = *&v50;
      }

      v32 = *&v27;
      v33 = 1;
      goto LABEL_41;
    }

    goto LABEL_7;
  }

  if (v16 <= 63)
  {
LABEL_7:
    OUTLINED_FUNCTION_71();
    v17();
    OUTLINED_FUNCTION_14_3();
    v18 = sub_1B256E37C();
    v19 = OUTLINED_FUNCTION_103();
    (v15)(v19);
    if (v14 >= v18)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_71();
  v22();
  OUTLINED_FUNCTION_14_3();
  if (sub_1B256E39C())
  {
    OUTLINED_FUNCTION_6_4();
    if (sub_1B256E38C() > 64)
    {
      v50 = 0x8000000000000000;
      OUTLINED_FUNCTION_14_3();
      if (sub_1B256E39C())
      {
        OUTLINED_FUNCTION_6_4();
        if (sub_1B256E38C() < 64)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_14_3();
      LOBYTE(v10) = sub_1B256E39C();
      OUTLINED_FUNCTION_6_4();
      v34 = sub_1B256E38C();
      if (v10)
      {
        if (v34 > 64)
        {
LABEL_24:
          sub_1B24554E4();
          OUTLINED_FUNCTION_56_0();
          OUTLINED_FUNCTION_101();
          OUTLINED_FUNCTION_29_1();
          sub_1B256D92C();
          v35 = OUTLINED_FUNCTION_39_0();
          v36(v35);
          if ((v10 & 1) == 0)
          {
            goto LABEL_30;
          }

LABEL_42:
          __break(1u);
          return;
        }

        v37 = v48;
        OUTLINED_FUNCTION_41_1();
        swift_getAssociatedConformanceWitness();
        sub_1B256EC7C();
        sub_1B256EB2C();
        OUTLINED_FUNCTION_101();
        OUTLINED_FUNCTION_29_1();
        sub_1B256D92C();
        v38 = OUTLINED_FUNCTION_39_0();
        v39(v38);
        if (v37)
        {
          goto LABEL_42;
        }

LABEL_29:
        OUTLINED_FUNCTION_6_4();
        sub_1B256E37C();
        goto LABEL_30;
      }

      if (v34 < 64)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_6_4();
  if (sub_1B256E38C() <= 64)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v50 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_14_3();
    v40 = sub_1B256E39C();
    OUTLINED_FUNCTION_6_4();
    v41 = sub_1B256E38C();
    if ((v40 & 1) == 0)
    {
      break;
    }

    if (v41 < 65)
    {
      goto LABEL_39;
    }

LABEL_33:
    sub_1B24554E4();
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_49_0();
    sub_1B256D92C();
    v42 = OUTLINED_FUNCTION_39_0();
    v43(v42);
    if (v40)
    {
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_6_4();
      if (sub_1B256E38C() == 64)
      {
        OUTLINED_FUNCTION_14_3();
        if ((sub_1B256E39C() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_40;
  }

  if (v41 >= 64)
  {
    goto LABEL_33;
  }

LABEL_39:
  OUTLINED_FUNCTION_6_4();
  sub_1B256E37C();
LABEL_40:
  OUTLINED_FUNCTION_6_4();
  v32 = sub_1B256E37C();
  v44 = *(v7 + 8);
  v45 = OUTLINED_FUNCTION_41_0();
  v44(v45);
  (v44)(v13, v1);
  v33 = 2;
LABEL_41:
  v46 = v49;
  *v49 = v32;
  v46[1] = 0;
  *(v46 + 16) = v33;
  OUTLINED_FUNCTION_45();
}

double sub_1B2450404@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v8 = *a1;
  v9 = v3;
  BackingValue.subscript.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

void sub_1B2450460(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  sub_1B24472B8(v1, v2, v3);
  BackingValue.subscript.setter();
}

void BackingValue.subscript.setter()
{
  OUTLINED_FUNCTION_108();
  v4 = v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  if (*(v0 + 16) == 5)
  {
    v8 = v0;
    v9 = v2;
    v10 = *v0;

    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_42_0(v11, v12, v13);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B2449EC4(v5, v6, v7, v9, v4);

    *v8 = v10;
    v8[1] = 0;
    *(v8 + 16) = 5;
    OUTLINED_FUNCTION_96();
  }

  else
  {
    sub_1B24472E0(*v1, v6, v7);
    OUTLINED_FUNCTION_96();
  }
}

void (*BackingValue.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  if (v3[16] == 5 && *(*v3 + 16) && (OUTLINED_FUNCTION_89(), v8 = sub_1B2455488(), (v9 & 1) != 0))
  {
    v10 = OUTLINED_FUNCTION_106(v8);
    v12 = *(v11 + 16);
    *v7 = v10;
    v7[1] = v13;
    *(v7 + 16) = v12;
    sub_1B24472B8(v10, v13, v12);
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
    *(v7 + 16) = 6;
  }

  return sub_1B2450674;
}

void sub_1B2450674()
{
  OUTLINED_FUNCTION_108();
  v1 = *v0;
  v2 = *(*v0 + 40);
  if (v3)
  {
    if (*(v2 + 16) == 5)
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v6 = *v2;
      v7 = *(v1 + 16);
      v8 = OUTLINED_FUNCTION_49_0();
      sub_1B24472B8(v8, v9, v7);
      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_52_0(v10, v11, v12);
      OUTLINED_FUNCTION_24_1();
      sub_1B24472E0(v13, v14, v15);

      swift_isUniquelyReferenced_nonNull_native();
      v16 = OUTLINED_FUNCTION_49_0();
      sub_1B2449EC4(v16, v17, v7, v5, v4);

      *v2 = v6;
      v2[1] = 0;
      *(v2 + 16) = 5;
    }

    v18 = *v1;
    v19 = *(v1 + 8);
    v20 = *(v1 + 16);
  }

  else
  {
    v21 = *(v1 + 16);
    if (*(v2 + 16) == 5)
    {
      v23 = *(v1 + 24);
      v22 = *(v1 + 32);
      v24 = *v2;

      OUTLINED_FUNCTION_98();
      sub_1B24472E0(v25, v26, v27);

      swift_isUniquelyReferenced_nonNull_native();
      v28 = OUTLINED_FUNCTION_27_0();
      sub_1B2449EC4(v28, v29, v21, v23, v22);

      *v2 = v24;
      v2[1] = 0;
      *(v2 + 16) = 5;
      goto LABEL_9;
    }

    v18 = OUTLINED_FUNCTION_27_0();
    v20 = v21;
  }

  sub_1B24472E0(v18, v19, v20);
LABEL_9:
  OUTLINED_FUNCTION_96();

  free(v30);
}

unint64_t BackingValue.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2[16] == 4)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*v2 + 16) > result)
    {
      v3 = *v2 + 24 * result;
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      *a2 = v4;
      *(a2 + 8) = v5;
      v6 = *(v3 + 48);
      *(a2 + 16) = v6;
      return sub_1B24472B8(v4, v5, v6);
    }

    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }

  return result;
}

double sub_1B2450830@<D0>(__int128 *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v10 = *a1;
  v11 = v4;
  BackingValue.subscript.getter(v5, &v8);
  v6 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

void sub_1B245088C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v5;
  sub_1B24472B8(v6[0], v4, v5);
  BackingValue.subscript.setter(v6, v3);
}

void BackingValue.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  if (*(v2 + 16) == 4)
  {
    v7 = *v2;
    v8 = v2[1];

    OUTLINED_FUNCTION_9_5(v9, v8);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1B2456D98();
      v7 = v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v7 + 16) > a2)
        {
          v10 = v7 + 24 * a2;
          v11 = *(v10 + 32);
          v12 = *(v10 + 40);
          *(v10 + 32) = v4;
          *(v10 + 40) = v3;
          v13 = *(v10 + 48);
          *(v10 + 48) = v5;
          sub_1B24472E0(v11, v12, v13);
          *v2 = v7;
          v2[1] = 0;
          *(v2 + 16) = 4;
          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v14 = OUTLINED_FUNCTION_41_0();

  sub_1B24472E0(v14, v15, v5);
}

void (*BackingValue.subscript.modify(void (**a1)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  result = __swift_coroFrameAllocStub(0x28uLL);
  v6 = result;
  *a1 = result;
  *(result + 3) = a2;
  *(result + 4) = v2;
  if (v2[16] != 4)
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 16) = 6;
    return sub_1B2450A78;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    v7 = *v2 + 24 * a2;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    *v6 = v8;
    *(v6 + 1) = v9;
    *(v6 + 16) = v10;
    sub_1B24472B8(v8, v9, v10);
    return sub_1B2450A78;
  }

  __break(1u);
  return result;
}

void sub_1B2450A78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  if (a2)
  {
    if (*(v4 + 16) != 4)
    {
LABEL_13:
      v20 = OUTLINED_FUNCTION_41_0();
      sub_1B24472E0(v20, v21, v3);
      goto LABEL_14;
    }

    v5 = *v4;
    v6 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_52_0(v6, v7, v3);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_52_0(v8, v9, v10);
    OUTLINED_FUNCTION_15_3();
    sub_1B24472E0(v11, v12, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B2456D98();
      v5 = v22;
    }

    v14 = *(v2 + 24);
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (*(v5 + 16) > v14)
      {
        OUTLINED_FUNCTION_72(v14);
        v3 = *(v2 + 16);
        goto LABEL_13;
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (*(v4 + 16) != 4)
  {
    goto LABEL_13;
  }

  v15 = *v4;

  OUTLINED_FUNCTION_15_3();
  sub_1B24472E0(v16, v17, v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    sub_1B2456D98();
    v15 = v23;
  }

  v19 = *(v2 + 24);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v15 + 16) <= v19)
  {
LABEL_21:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_72(v19);
LABEL_14:

  free(v2);
}

uint64_t BackingValue.init(foundation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2456DAC(a1, v29);
  if (OUTLINED_FUNCTION_26_0())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v5 = 0;
    v7 = *v28;
    v6 = v28[1];
LABEL_11:
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    return result;
  }

  if (OUTLINED_FUNCTION_26_0())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = 0;
    v7 = *v28;
    v5 = 1;
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_26_0() || OUTLINED_FUNCTION_26_0())
  {
    v7 = *v28;
    if (qword_1EB7CFC48 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  if (OUTLINED_FUNCTION_26_0())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = 0;
    *&v7 = LOBYTE(v28[0]);
    v5 = 3;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05E0);
  if (swift_dynamicCast())
  {
    v10 = 0;
    v22 = *(v30 + 16);
    v23 = v30;
    v11 = v30 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v22 == v10)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);

        v6 = 0;
        v5 = 4;
        goto LABEL_11;
      }

      if (v10 >= *(v23 + 16))
      {
        break;
      }

      sub_1B2456DAC(v11, v28);
      sub_1B2456DAC(v28, v25);
      BackingValue.init(foundation:)(v26, v25);
      if (v2)
      {

        __swift_destroy_boxed_opaque_existential_1(a1);
        __swift_destroy_boxed_opaque_existential_1(v28);

        return __swift_destroy_boxed_opaque_existential_1(v29);
      }

      v24 = v11;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v13 = v26[0];
      v12 = v26[1];
      v14 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2448F08();
        v7 = v18;
      }

      v15 = *(*&v7 + 16);
      v16 = v15 + 1;
      if (v15 >= *(*&v7 + 24) >> 1)
      {
        sub_1B2448F08();
        v16 = v15 + 1;
        v7 = v19;
      }

      *(*&v7 + 16) = v16;
      v17 = *&v7 + 24 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      *(v17 + 48) = v14;
      v11 = v24 + 32;
      ++v10;
    }

    __break(1u);
LABEL_32:
    OUTLINED_FUNCTION_46_0();
    swift_once();
LABEL_8:
    v8 = qword_1EB7D05C0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v6 = 0;
    if (v8 < *&v7)
    {
      v5 = 2;
    }

    else
    {
      v7 = *&v7;
      v5 = 1;
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
  if (OUTLINED_FUNCTION_26_0())
  {
    v7 = COERCE_DOUBLE(sub_1B2450F40(v28[0]));
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (!v2)
    {
      v6 = 0;
      v5 = 5;
      goto LABEL_11;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_1B2456E08();
    swift_allocError();
    *v21 = DynamicType;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1B2450F40(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1B2456DAC(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v32 = v35;
    v33 = v36[0];
    v34 = v36[1];
    sub_1B2456DAC(&v33, v29);

    BackingValue.init(foundation:)(&v30, v29);
    if (v1)
    {
      break;
    }

    v28 = v30;
    v38 = LOBYTE(v31[0]);
    v31[0] = v33;
    v31[1] = v34;
    v30 = v32;
    v15 = *(v2 + 16);
    if (*(v2 + 24) <= v15)
    {
      sub_1B24E2538(v15 + 1, 1);
      v2 = v37;
    }

    v16 = v30;
    sub_1B256ED3C();
    sub_1B256DA7C();
    result = sub_1B256ED7C();
    v17 = v2 + 64;
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v17 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }

LABEL_26:
      __break(1u);
      return result;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v6 &= v6 - 1;
    *(*(v2 + 48) + 16 * v21) = v16;
    v26 = *(v2 + 56) + 24 * v21;
    *v26 = v28;
    *(v26 + 16) = v38;
    ++*(v2 + 16);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    if (!v6)
    {
LABEL_5:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  sub_1B243E88C(&v32, &qword_1EB7D06C8);

LABEL_24:

  return v2;
}

void BackingValue.foundation.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v11 = MEMORY[0x1E69E63B0];
      goto LABEL_14;
    case 2:
      v11 = MEMORY[0x1E69E7360];
LABEL_14:
      a1[3] = v11;
      *a1 = v2;
      return;
    case 3:
      a1[3] = MEMORY[0x1E69E6370];
      *a1 = v2 & 1;
      return;
    case 4:
      v5 = *(v2 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v5)
      {
        v36 = MEMORY[0x1E69E7CC0];
        v7 = sub_1B2455E38(0, v5, 0);
        v6 = v36;
        v8 = v2 + 48;
        do
        {
          BackingValue.foundation.getter(v37, v7);
          v10 = *(v36 + 16);
          v9 = *(v36 + 24);
          if (v10 >= v9 >> 1)
          {
            sub_1B2455E38((v9 > 1), v10 + 1, 1);
          }

          *(v36 + 16) = v10 + 1;
          v7 = sub_1B244AA0C(v37, (v36 + 32 * v10 + 32));
          v8 += 24;
          --v5;
        }

        while (v5);
      }

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05E0);
      *a1 = v6;
      return;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05F8);
      v12 = sub_1B256E8BC();
      v13 = 0;
      OUTLINED_FUNCTION_5_4();
      i = v15 & v14;
      v18 = (v17 + 63) >> 6;
      v35 = v19 + 64;
      if ((v15 & v14) != 0)
      {
        goto LABEL_16;
      }

      break;
    case 6:
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05F0);
      v33 = swift_allocObject();
      *a1 = v33;
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      return;
    default:
      v4 = *(v1 + 8);
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = v2;
      a1[1] = v4;

      return;
  }

LABEL_17:
  v21 = v13;
  do
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v13 >= v18)
    {
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
      *a1 = v12;
      return;
    }

    ++v21;
  }

  while (!*(v2 + 64 + 8 * v13));
  OUTLINED_FUNCTION_83();
  for (i = v23 & v22; ; i &= i - 1)
  {
    v24 = v20 | (v13 << 6);
    v25 = (*(v2 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];

    BackingValue.foundation.getter(v37, v28);
    *(v35 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (v12[6] + 16 * v24);
    *v29 = v27;
    v29[1] = v26;
    sub_1B244AA0C(v37, (v12[7] + 32 * v24));
    v30 = v12[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v12[2] = v32;
    if (!i)
    {
      goto LABEL_17;
    }

LABEL_16:
    v20 = __clz(__rbit64(i));
  }

LABEL_29:
  __break(1u);
}

void BackingValue.xpcAllowed.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      break;
    case 2:
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      break;
    case 3:
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      break;
    case 4:
      v2 = *(*&v1 + 16);
      if (v2)
      {
        v3 = sub_1B256E64C();
        v4 = *&v1 + 48;
        do
        {
          BackingValue.xpcAllowed.getter(v3);
          sub_1B256E61C();
          sub_1B256E65C();
          sub_1B256E66C();
          v3 = sub_1B256E62C();
          v4 += 24;
          --v2;
        }

        while (v2);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18E0);
      sub_1B256DC4C();

      break;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0600);
      v5 = sub_1B256E8BC();
      v6 = 0;
      OUTLINED_FUNCTION_5_4();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v27 = v12 + 64;
      if ((v8 & v7) != 0)
      {
        while (1)
        {
          v13 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_18:
          v17 = v13 | (v6 << 6);
          v18 = (*(*&v1 + 48) + 16 * v17);
          v20 = *v18;
          v19 = v18[1];

          v22 = BackingValue.xpcAllowed.getter(v21);
          *(v27 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          v23 = (v5[6] + 16 * v17);
          *v23 = v20;
          v23[1] = v19;
          *(v5[7] + 8 * v17) = v22;
          v24 = v5[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            break;
          }

          v5[2] = v26;
          if (!v9)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        v14 = v6;
        while (1)
        {
          v6 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v6 >= v11)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18E0);
            sub_1B256D86C();

            return;
          }

          ++v14;
          if (*(*&v1 + 64 + 8 * v6))
          {
            OUTLINED_FUNCTION_83();
            v9 = v16 & v15;
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      __break(1u);
      break;
    case 6:
      return;
    default:
      sub_1B256D98C();
      break;
  }
}

uint64_t BackingValue.type.getter()
{
  v1 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  BackingValue.foundation.getter(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return DynamicType;
}

uint64_t static BackingValue.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_26;
      }

      v36 = OUTLINED_FUNCTION_31_0();
      v38 = OUTLINED_FUNCTION_12_4(v36, v37, 1);
      OUTLINED_FUNCTION_32_0(v38, v39);
      v31 = v8;
      return v31 & 1;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v27 = OUTLINED_FUNCTION_31_0();
      v29 = OUTLINED_FUNCTION_12_4(v27, v28, 2);
      sub_1B24472E0(v29, v30, 2);
      v31 = v2 == v5;
      return v31 & 1;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_26;
      }

      v32 = OUTLINED_FUNCTION_31_0();
      v34 = OUTLINED_FUNCTION_12_4(v32, v33, 3);
      sub_1B24472E0(v34, v35, 3);
      v31 = v5 ^ v2 ^ 1;
      return v31 & 1;
    case 4:
      if (v7 != 4)
      {
        goto LABEL_21;
      }

      v19 = OUTLINED_FUNCTION_7_4();
      sub_1B24472B8(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_13_3(v22, v23, 4);
      sub_1B2451EA0();
      v9 = v24;
      v25 = OUTLINED_FUNCTION_31_0();
      sub_1B24472E0(v25, v26, 4);
      v16 = OUTLINED_FUNCTION_7_4();
      goto LABEL_20;
    case 5:
      if (v7 != 5)
      {
        goto LABEL_21;
      }

      v40 = OUTLINED_FUNCTION_18_1();
      sub_1B24472B8(v40, v41, 5);
      v42 = OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_13_3(v42, v43, 5);
      sub_1B2452914();
      v9 = v44;
      v45 = OUTLINED_FUNCTION_31_0();
      v16 = OUTLINED_FUNCTION_12_4(v45, v46, 5);
      v18 = 5;
      goto LABEL_20;
    case 6:
      if (v7 != 6 || (v6 | v5) != 0)
      {
        goto LABEL_26;
      }

      v55 = OUTLINED_FUNCTION_31_0();
      v57 = OUTLINED_FUNCTION_2_7(v55, v56);
      goto LABEL_30;
    default:
      if (*(a2 + 16))
      {
LABEL_21:

LABEL_26:
        v49 = OUTLINED_FUNCTION_18_1();
        sub_1B24472B8(v49, v50, v7);
        v51 = OUTLINED_FUNCTION_31_0();
        v53 = OUTLINED_FUNCTION_12_4(v51, v52, v4);
        sub_1B24472E0(v53, v54, v7);
        v31 = 0;
        return v31 & 1;
      }

      v8 = v2 == v5 && v3 == v6;
      if (v8)
      {
        sub_1B24472B8(v2, v3, 0);
        v60 = OUTLINED_FUNCTION_31_0();
        sub_1B24472B8(v60, v61, 0);
        v62 = OUTLINED_FUNCTION_31_0();
        sub_1B24472E0(v62, v63, 0);
        v57 = OUTLINED_FUNCTION_31_0();
        v59 = 0;
LABEL_30:
        sub_1B24472E0(v57, v58, v59);
        v31 = 1;
        return v31 & 1;
      }

      v9 = sub_1B256EB5C();
      v10 = OUTLINED_FUNCTION_18_1();
      sub_1B24472B8(v10, v11, 0);
      v12 = OUTLINED_FUNCTION_31_0();
      sub_1B24472B8(v12, v13, 0);
      v14 = OUTLINED_FUNCTION_31_0();
      v16 = OUTLINED_FUNCTION_12_4(v14, v15, 0);
      v18 = 0;
LABEL_20:
      sub_1B24472E0(v16, v17, v18);
      return v9 & 1;
  }
}

uint64_t sub_1B2451AEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B256EB5C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B2451B78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 112)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v14, i, sizeof(v14));
      if (__dst[1])
      {
        if (!v14[1])
        {
          return 0;
        }

        v5 = __dst[0] == v14[0] && __dst[1] == v14[1];
        if (!v5 && (sub_1B256EB5C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v14[1])
      {
        return 0;
      }

      v6 = __dst[2] == v14[2] && __dst[3] == v14[3];
      if (!v6 && (sub_1B256EB5C() & 1) == 0)
      {
        return 0;
      }

      sub_1B2447BEC(__dst, v12);
      sub_1B2447BEC(v14, v12);
      v7 = OUTLINED_FUNCTION_35_0();
      if ((MEMORY[0x1B274A4F0](v7) & 1) == 0)
      {
        break;
      }

      v8 = __dst[7] == v14[7] && __dst[8] == v14[8];
      if (!v8 && (sub_1B256EB5C() & 1) == 0 || LOBYTE(__dst[9]) != LOBYTE(v14[9]) || __dst[10] != v14[10] || __dst[11] != v14[11])
      {
        break;
      }

      if (__dst[12] == v14[12] && __dst[13] == v14[13])
      {
        sub_1B2447308(v14);
        sub_1B2447308(__dst);
      }

      else
      {
        v10 = sub_1B256EB5C();
        sub_1B2447308(v14);
        sub_1B2447308(__dst);
        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 112;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1B2447308(v14);
    sub_1B2447308(__dst);
  }

  return 0;
}

uint64_t sub_1B2451D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 136)
    {
      memcpy(__dst, v3, 0x84uLL);
      memcpy(v12, i, 0x84uLL);
      memcpy(v10, v3, sizeof(v10));
      memcpy(__src, i, sizeof(__src));
      sub_1B24587DC(__dst, v8);
      sub_1B24587DC(v12, v8);
      sub_1B24587DC(__dst, v8);
      sub_1B24587DC(v12, v8);
      static Transaction.AdvancedCommerceInfo.Item.Details.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, 0x84uLL);
      sub_1B2458740(v13);
      memcpy(v14, v10, 0x84uLL);
      sub_1B2458740(v14);
      sub_1B2458838(v12);
      sub_1B2458838(__dst);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 136;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1B2451EA0()
{
  OUTLINED_FUNCTION_108();
  v2 = *(v0 + 16);
  if (v2 != *(v1 + 16) || !v2 || v0 == v1)
  {
    goto LABEL_39;
  }

  v3 = (v1 + 48);
  v4 = (v0 + 48);
  while (2)
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v7 = *(v3 - 2);
    v8 = *(v3 - 1);
    v9 = *v3;
    switch(*v4)
    {
      case 1:
        if (v9 != 1)
        {
          goto LABEL_38;
        }

        v45 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v45, v46, 1);
        v47 = OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_32_0(v47, v48);
        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      case 2:
        if (v9 != 2)
        {
          goto LABEL_38;
        }

        v37 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v37, v38, 2);
        v39 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v39, v40, 2);
        if (v5 == v7)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      case 3:
        if (v9 != 3)
        {
          goto LABEL_38;
        }

        v41 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v41, v42, 3);
        v43 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v43, v44, 3);
        if (((v7 ^ v5) & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      case 4:
        if (v9 != 4)
        {
          goto LABEL_37;
        }

        v21 = OUTLINED_FUNCTION_27_0();
        v23 = OUTLINED_FUNCTION_13_3(v21, v22, 4);
        sub_1B24472B8(v23, v24, 4);
        v25 = OUTLINED_FUNCTION_27_0();
        v27 = OUTLINED_FUNCTION_13_3(v25, v26, 4);
        sub_1B24472B8(v27, v28, 4);
        v29 = OUTLINED_FUNCTION_41_1();
        v11 = sub_1B2451EA0(v29);
        OUTLINED_FUNCTION_17_2();
        sub_1B24472E0(v30, v31, v32);
        v33 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v33, v34, 4);
        v35 = OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_64(v35, v36, 4);
        OUTLINED_FUNCTION_17_2();
        goto LABEL_25;
      case 5:
        if (v9 != 5)
        {
          goto LABEL_37;
        }

        v49 = OUTLINED_FUNCTION_27_0();
        v51 = OUTLINED_FUNCTION_13_3(v49, v50, 5);
        sub_1B24472B8(v51, v52, 5);
        v53 = OUTLINED_FUNCTION_27_0();
        v55 = OUTLINED_FUNCTION_13_3(v53, v54, 5);
        sub_1B24472B8(v55, v56, 5);
        OUTLINED_FUNCTION_41_1();
        sub_1B2452914();
        v11 = v57;
        v58 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v58, v59, 5);
        v60 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v60, v61, 5);
        v62 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v62, v63, 5);
        v18 = OUTLINED_FUNCTION_22_1();
        v20 = 5;
        goto LABEL_25;
      case 6:
        if (v9 != 6 || (v8 | v7) != 0)
        {
          goto LABEL_38;
        }

        v65 = OUTLINED_FUNCTION_22_1();
        v67 = OUTLINED_FUNCTION_2_7(v65, v66);
        goto LABEL_34;
      default:
        if (!*v3)
        {
          v10 = v5 == v7 && *(v4 - 1) == v8;
          if (v10)
          {
            v70 = OUTLINED_FUNCTION_13_3(*(v4 - 2), *(v4 - 1), 0);
            v72 = OUTLINED_FUNCTION_13_3(v70, v71, 0);
            sub_1B24472E0(v72, v73, 0);
            v67 = OUTLINED_FUNCTION_22_1();
            v69 = 0;
LABEL_34:
            sub_1B24472E0(v67, v68, v69);
          }

          else
          {
            v11 = sub_1B256EB5C();
            v12 = OUTLINED_FUNCTION_27_0();
            v14 = OUTLINED_FUNCTION_13_3(v12, v13, 0);
            v16 = OUTLINED_FUNCTION_13_3(v14, v15, 0);
            sub_1B24472E0(v16, v17, 0);
            v18 = OUTLINED_FUNCTION_27_0();
            v20 = 0;
LABEL_25:
            sub_1B24472E0(v18, v19, v20);
            if ((v11 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

LABEL_35:
          v3 += 24;
          v4 += 24;
          if (!--v2)
          {
            goto LABEL_39;
          }

          continue;
        }

LABEL_37:
        v74 = OUTLINED_FUNCTION_22_1();
        OUTLINED_FUNCTION_59_0(v74, v75, v6);

LABEL_38:
        v76 = OUTLINED_FUNCTION_27_0();
        v78 = OUTLINED_FUNCTION_13_3(v76, v77, v9);
        sub_1B24472E0(v78, v79, v6);
        v80 = OUTLINED_FUNCTION_27_0();
        sub_1B24472E0(v80, v81, v9);
        v82 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v82, v83, v6);
LABEL_39:
        OUTLINED_FUNCTION_96();
        return;
    }
  }
}

void sub_1B245218C()
{
  OUTLINED_FUNCTION_67();
  v1 = v0;
  v3 = v2;
  v54 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0088);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0680);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v52 = type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0);
  OUTLINED_FUNCTION_102();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v21 = (&v46 - v20);
  v22 = *(v3 + 16);
  if (v22 == *(v1 + 16) && v22 && v3 != v1)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = v3 + v23;
    v25 = v1 + v23;
    v46 = (v5 + 32);
    v47 = v9;
    v48 = (v5 + 8);
    v51 = *(v19 + 72);
    while (1)
    {
      sub_1B24585C0(v24, v21, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
      v26 = OUTLINED_FUNCTION_29_1();
      sub_1B24585C0(v26, v27, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
      memcpy(v59, v21, 0x84uLL);
      memcpy(v58, v21, sizeof(v58));
      memcpy(v60, v18, 0x84uLL);
      memcpy(v57, v18, sizeof(v57));
      sub_1B24586E4(v59, v56);
      sub_1B24586E4(v60, v56);
      static Transaction.AdvancedCommerceInfo.Item.Details.== infix(_:_:)();
      v29 = v28;
      memcpy(v61, v57, 0x84uLL);
      sub_1B2458740(v61);
      memcpy(v62, v58, 0x84uLL);
      sub_1B2458740(v62);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v30 = v21[17];
      v31 = v18[17];
      if (v30)
      {
        if (!v31)
        {
          break;
        }

        v32 = sub_1B24526EC(v30, v31);

        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      else if (v31)
      {
        break;
      }

      v33 = *(v52 + 24);
      v34 = *(v53 + 48);
      sub_1B245861C(v21 + v33, v14);
      sub_1B245861C(v18 + v33, &v14[v34]);
      v35 = v54;
      if (__swift_getEnumTagSinglePayload(v14, 1, v54) == 1)
      {
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v35) != 1)
        {
          goto LABEL_19;
        }

        sub_1B243E88C(v14, &qword_1EB7D0088);
        sub_1B245868C(v18, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
        v36 = OUTLINED_FUNCTION_88();
        sub_1B245868C(v36, v37);
      }

      else
      {
        v38 = OUTLINED_FUNCTION_25_1();
        sub_1B245861C(v38, v39);
        if (__swift_getEnumTagSinglePayload(&v14[v34], 1, v35) == 1)
        {
          v44 = OUTLINED_FUNCTION_99();
          v45(v44);
LABEL_19:
          sub_1B243E88C(v14, &qword_1EB7D0680);
          break;
        }

        v40 = &v14[v34];
        v41 = v47;
        (*v46)(v47, v40, v35);
        OUTLINED_FUNCTION_1_8();
        sub_1B2458794(&qword_1EB7D0688, v42);
        OUTLINED_FUNCTION_18_1();
        v49 = sub_1B256D96C();
        v50 = v22;
        v43 = *v48;
        (*v48)(v41, v35);
        v43(v55, v35);
        v22 = v50;
        sub_1B243E88C(v14, &qword_1EB7D0088);
        sub_1B245868C(v18, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
        sub_1B245868C(v21, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
        if ((v49 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v25 += v51;
      v24 += v51;
      if (!--v22)
      {
        goto LABEL_21;
      }
    }

    sub_1B245868C(v18, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
    sub_1B245868C(v21, type metadata accessor for Transaction.AdvancedCommerceInfo.Item);
  }

LABEL_21:
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B24526EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  OUTLINED_FUNCTION_102();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v29 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      v17 = OUTLINED_FUNCTION_41_0();
      sub_1B24585C0(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_25_1();
      sub_1B24585C0(v20, v21, v22);
      v23 = *v11 == *v8 && v11[1] == v8[1];
      if (!v23 && (sub_1B256EB5C() & 1) == 0)
      {
        break;
      }

      v24 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v24 && (sub_1B256EB5C() & 1) == 0)
      {
        break;
      }

      if ((sub_1B256D32C() & 1) == 0)
      {
        break;
      }

      v25 = *(v4 + 28);
      if ((MEMORY[0x1B274A4F0](*(v11 + v25), *(v11 + v25 + 8), *(v11 + v25 + 16), *(v8 + v25), *(v8 + v25 + 8), *(v8 + v25 + 16)) & 1) == 0)
      {
        break;
      }

      sub_1B245868C(v8, type metadata accessor for Transaction.AdvancedCommerceInfo.Refund);
      sub_1B245868C(v11, type metadata accessor for Transaction.AdvancedCommerceInfo.Refund);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1B245868C(v8, type metadata accessor for Transaction.AdvancedCommerceInfo.Refund);
    v27 = OUTLINED_FUNCTION_24();
    sub_1B245868C(v27, v28);
  }

  return 0;
}

void sub_1B2452914()
{
  OUTLINED_FUNCTION_108();
  v935 = v3;
  v936 = v6;
  if (v4 == v5 || *(v4 + 16) != *(v5 + 16))
  {
    goto LABEL_352;
  }

  v927 = v4;
  v928 = v5;
  v7 = 0;
  v8 = v4 + 64;
  OUTLINED_FUNCTION_5_4();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  while (1)
  {
    if (v13)
    {
      v16 = __clz(__rbit64(v13));
      v929 = (v13 - 1) & v13;
      goto LABEL_11;
    }

    v17 = v7;
    do
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_299:
        v29 = v0;
LABEL_302:
        v676 = v10;
        OUTLINED_FUNCTION_68(v29, v10);
        v10 = v676;
LABEL_303:
        v677 = v10;
        OUTLINED_FUNCTION_45_0();
        sub_1B24472B8(v678, v679, v680);
        v681 = OUTLINED_FUNCTION_18_1();
        sub_1B24472E0(v681, v682, v2);
        v683 = OUTLINED_FUNCTION_44_0();
        v685 = OUTLINED_FUNCTION_42_0(v683, v684, v1);
        sub_1B24472E0(v685, v677, v2);
LABEL_304:
        LOBYTE(v2) = 4;
        goto LABEL_349;
      }

      if (v7 >= v15)
      {
        goto LABEL_352;
      }

      ++v17;
    }

    while (!*(v8 + 8 * v7));
    OUTLINED_FUNCTION_83();
    v929 = v19 & v18;
LABEL_11:
    v20 = v16 | (v7 << 6);
    v21 = *(*(v9 + 48) + 16 * v20 + 8);
    v22 = *(v9 + 56) + 24 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    v1 = *(v22 + 16);

    v930 = v24;
    sub_1B24472B8(v23, v24, v1);
    v0 = v21 == 0;
    if (!v21)
    {
      goto LABEL_352;
    }

    v25 = sub_1B2455488();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_351;
    }

    v28 = *(v928 + 56) + 24 * v25;
    v30 = *v28;
    v29 = *(v28 + 8);
    LOBYTE(v2) = *(v28 + 16);
    switch(v2)
    {
      case 1:
        if (v1 != 1)
        {
          goto LABEL_296;
        }

        v617 = OUTLINED_FUNCTION_28_0();
        v619 = OUTLINED_FUNCTION_64(v617, v618, 1);
        OUTLINED_FUNCTION_32_0(v619, v930);
        goto LABEL_276;
      case 2:
        if (v1 != 2)
        {
          goto LABEL_296;
        }

        v610 = OUTLINED_FUNCTION_28_0();
        v612 = OUTLINED_FUNCTION_64(v610, v611, 2);
        sub_1B24472E0(v612, v930, 2);
        v613 = v30 == v23;
LABEL_276:
        v9 = v927;
        v13 = v929;
        if (!v613)
        {
          goto LABEL_352;
        }

        continue;
      case 3:
        if (v1 != 3)
        {
          goto LABEL_296;
        }

        v614 = OUTLINED_FUNCTION_28_0();
        v616 = OUTLINED_FUNCTION_64(v614, v615, 3);
        sub_1B24472E0(v616, v930, 3);
        v9 = v927;
        v13 = v929;
        if ((v30 ^ v23))
        {
          goto LABEL_352;
        }

        continue;
      case 4:
        if (v1 != 4)
        {
          goto LABEL_295;
        }

        v37 = *(v30 + 16);
        if (v37 != *(v23 + 16))
        {
          LOBYTE(v2) = 4;
          OUTLINED_FUNCTION_17_2();
          sub_1B24472B8(v667, v668, v669);
          OUTLINED_FUNCTION_17_2();
          sub_1B24472B8(v670, v671, v672);
          OUTLINED_FUNCTION_36_0();
          sub_1B24472B8(v673, v674, v675);
          LOBYTE(v1) = 4;
          goto LABEL_350;
        }

        if (!v37)
        {
          v0 = *v28;
LABEL_290:
          v647 = OUTLINED_FUNCTION_11_3();
          sub_1B24472B8(v647, v648, v649);
          v650 = OUTLINED_FUNCTION_11_3();
          sub_1B24472B8(v650, v651, v652);
          LOBYTE(v1) = v930;
          OUTLINED_FUNCTION_15_3();
          sub_1B24472B8(v653, v654, v655);
          goto LABEL_291;
        }

        v0 = v23;
        if (v30 == v23)
        {
          goto LABEL_290;
        }

        v925 = v23 + 32;
        OUTLINED_FUNCTION_17_2();
        sub_1B24472B8(v38, v39, v40);
        OUTLINED_FUNCTION_17_2();
        sub_1B24472B8(v41, v42, v43);
        sub_1B24472B8(v23, v930, 4);
        v44 = 0;
        v923 = v29;
        v924 = v37;
        break;
      case 5:
        if (v1 != 5)
        {
          goto LABEL_295;
        }

        OUTLINED_FUNCTION_24_1();
        sub_1B24472B8(v620, v621, v622);
        OUTLINED_FUNCTION_24_1();
        sub_1B24472B8(v623, v624, v625);
        LOBYTE(v2) = v930;
        OUTLINED_FUNCTION_47_0();
        sub_1B24472B8(v626, v627, v628);
        LOBYTE(v1) = sub_1B2452914(v30, v23);
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_64(v629, v630, v631);
        OUTLINED_FUNCTION_47_0();
        sub_1B24472E0(v632, v633, v634);
        OUTLINED_FUNCTION_24_1();
        OUTLINED_FUNCTION_64(v635, v636, v637);
        OUTLINED_FUNCTION_47_0();
        goto LABEL_280;
      case 6:
        if (v1 != 6 || (v930 | v23) != 0)
        {
          goto LABEL_296;
        }

        v639 = OUTLINED_FUNCTION_28_0();
        v641 = OUTLINED_FUNCTION_2_7(v639, v640);
        goto LABEL_292;
      default:
        if (v1)
        {
LABEL_295:
          v665 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_52_0(v665, v666, v2);

LABEL_296:
          sub_1B24472B8(v23, v930, v1);
          goto LABEL_350;
        }

        LOBYTE(v2) = v930;
        v31 = v30 == v23 && v29 == v930;
        if (v31)
        {

          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_64(v644, v645, v646);
          OUTLINED_FUNCTION_38_0();
          goto LABEL_292;
        }

        OUTLINED_FUNCTION_28_0();
        LOBYTE(v1) = sub_1B256EB5C();

        v32 = OUTLINED_FUNCTION_28_0();
        OUTLINED_FUNCTION_64(v32, v33, 0);
        OUTLINED_FUNCTION_38_0();
LABEL_280:
        sub_1B24472E0(v34, v35, v36);
        v9 = v927;
        v13 = v929;
        if ((v1 & 1) == 0)
        {
          goto LABEL_352;
        }

        continue;
    }

    while (2)
    {
      if (v44 >= *(v30 + 16))
      {
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        v738 = v0;
LABEL_322:
        OUTLINED_FUNCTION_68(v738, v29);
        v0 = v738;
LABEL_323:
        v739 = OUTLINED_FUNCTION_62();
        sub_1B24472B8(v739, v740, v37);
        v741 = OUTLINED_FUNCTION_12_4(v0, v29, v2);
        sub_1B24472E0(v741, v742, v37);
        v743 = v0;
        v744 = v29;
        v745 = v2;
        goto LABEL_344;
      }

      if (v44 >= *(v23 + 16))
      {
        goto LABEL_318;
      }

      OUTLINED_FUNCTION_40_0();
      v46 = v30 + 32 + 8 * v45;
      v0 = *v46;
      v10 = *(v46 + 8);
      v2 = *(v46 + 16);
      v48 = v925 + v47;
      v50 = *(v925 + v47);
      v49 = *(v925 + v47 + 8);
      v1 = *(v48 + 16);
      v926 = v51;
      switch(v2)
      {
        case 1:
          if (v1 != 1)
          {
            goto LABEL_303;
          }

          v554 = v0;
          v0 = v49;
          sub_1B24472E0(v554, v10, 1);
          v555 = OUTLINED_FUNCTION_44_0();
          OUTLINED_FUNCTION_32_0(v555, v556);
          if (!v31)
          {
            goto LABEL_304;
          }

          goto LABEL_267;
        case 2:
          if (v1 != 2)
          {
            goto LABEL_303;
          }

          OUTLINED_FUNCTION_45_0();
          sub_1B24472E0(v543, v544, v545);
          v546 = OUTLINED_FUNCTION_44_0();
          sub_1B24472E0(v546, v547, 2);
          v31 = v29 == v50;
          v29 = v923;
          if (!v31)
          {
            goto LABEL_304;
          }

          goto LABEL_267;
        case 3:
          if (v1 != 3)
          {
            goto LABEL_303;
          }

          OUTLINED_FUNCTION_45_0();
          sub_1B24472E0(v548, v549, v550);
          v551 = OUTLINED_FUNCTION_44_0();
          sub_1B24472E0(v551, v552, 3);
          v553 = v50 ^ v29;
          v29 = v923;
          if (v553)
          {
            goto LABEL_304;
          }

          goto LABEL_267;
        case 4:
          if (v1 != 4)
          {
            goto LABEL_299;
          }

          v63 = *(v0 + 16);
          v917 = v10;
          if (v63 != *(v50 + 16))
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_45_0();
            sub_1B24472B8(v686, v687, v688);
            v689 = OUTLINED_FUNCTION_7_4();
            OUTLINED_FUNCTION_95(v689, v690, v691);
            OUTLINED_FUNCTION_23_1();
            sub_1B24472B8(v692, v693, v694);
            v695 = OUTLINED_FUNCTION_7_4();
            sub_1B24472B8(v695, v696, v697);
            goto LABEL_348;
          }

          if (!v63 || v0 == v50)
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_52_0(v586, v587, v588);
            LOBYTE(v2) = v917;
            OUTLINED_FUNCTION_16_3();
            sub_1B24472B8(v589, v590, v591);
            v592 = OUTLINED_FUNCTION_8_4();
            OUTLINED_FUNCTION_52_0(v592, v593, v594);
            OUTLINED_FUNCTION_16_3();
            sub_1B24472B8(v595, v596, v597);
LABEL_266:
            OUTLINED_FUNCTION_16_3();
            OUTLINED_FUNCTION_73(v598, v599, v600);
            OUTLINED_FUNCTION_17_2();
            OUTLINED_FUNCTION_73(v601, v602, v603);
            OUTLINED_FUNCTION_17_2();
            sub_1B24472E0(v604, v605, v606);
            OUTLINED_FUNCTION_16_3();
            sub_1B24472E0(v607, v608, v609);
            v29 = v923;
            goto LABEL_267;
          }

          v919 = v50 + 32;
          v920 = v0 + 32;
          OUTLINED_FUNCTION_57_0();
          v921 = v0;
          sub_1B24472B8(v64, v65, v66);
          LOBYTE(v67) = v917;
          OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_95(v68, v69, v70);
          OUTLINED_FUNCTION_23_1();
          sub_1B24472B8(v71, v72, v73);
          OUTLINED_FUNCTION_15_3();
          sub_1B24472B8(v74, v75, v76);
          v912 = v50;
          v918 = v63;
          while (2)
          {
            OUTLINED_FUNCTION_105();
            if (v82)
            {
              __break(1u);
LABEL_326:
              __break(1u);
LABEL_327:
              v877 = v81;
              v758 = v80;
              v304 = v78;
LABEL_330:
              v759 = v77;
              OUTLINED_FUNCTION_68(v77, v304);
              v78 = v304;
              v77 = v759;
              v80 = v758;
              v81 = v877;
LABEL_331:
              v760 = v77;
              v761 = v78;
              v762 = v80;
              sub_1B24472B8(v81, v80, v67);
              v763 = OUTLINED_FUNCTION_42_0(v760, v761, v2);
              sub_1B24472E0(v763, v762, v67);
              sub_1B24472E0(v760, v761, v2);
              goto LABEL_343;
            }

            v80 = *(v50 + 16);
            if (v79 >= v80)
            {
              goto LABEL_326;
            }

            OUTLINED_FUNCTION_40_0();
            v84 = v920 + 8 * v83;
            v86 = *v84;
            v85 = *(v84 + 8);
            v2 = *(v84 + 16);
            v88 = v919 + v87;
            v90 = *(v919 + v87);
            v89 = *(v919 + v87 + 8);
            LODWORD(v67) = *(v88 + 16);
            v922 = v91;
            switch(v2)
            {
              case 1:
                if (v67 != 1)
                {
                  goto LABEL_310;
                }

                sub_1B24472E0(v86, v85, 1);
                v489 = OUTLINED_FUNCTION_25_1();
                OUTLINED_FUNCTION_32_0(v489, v490);
                if (!v31)
                {
                  goto LABEL_348;
                }

                goto LABEL_243;
              case 2:
                if (v67 != 2)
                {
                  goto LABEL_310;
                }

                LOBYTE(v67) = v86;
                OUTLINED_FUNCTION_45_0();
                v486 = OUTLINED_FUNCTION_42_0(v483, v484, v485);
                sub_1B24472E0(v486, v90, 2);
                goto LABEL_243;
              case 3:
                if (v67 != 3)
                {
                  goto LABEL_310;
                }

                LOBYTE(v67) = v90;
                v487 = OUTLINED_FUNCTION_33_0(v86, v85, 3);
                sub_1B24472E0(v487, v488, 3);
                if ((v90 ^ v86))
                {
                  goto LABEL_348;
                }

                goto LABEL_243;
              case 4:
                if (v67 != 4)
                {
                  goto LABEL_306;
                }

                v100 = *(v86 + 16);
                v911 = v85;
                if (v100 != *(v90 + 16))
                {
                  OUTLINED_FUNCTION_57_0();
                  v710 = v709;
                  sub_1B24472B8(v711, v712, v713);
                  v714 = OUTLINED_FUNCTION_7_4();
                  OUTLINED_FUNCTION_60_0(v714, v715, v716);
                  v902 = v710;
                  OUTLINED_FUNCTION_23_1();
                  sub_1B24472B8(v717, v718, v719);
                  v720 = OUTLINED_FUNCTION_7_4();
                  sub_1B24472B8(v720, v721, v722);
                  goto LABEL_346;
                }

                if (!v100)
                {
                  LOBYTE(v67) = v90;
                  goto LABEL_240;
                }

                LOBYTE(v67) = v86;
                if (v86 == v90)
                {
LABEL_240:
                  OUTLINED_FUNCTION_57_0();
                  v482 = v524;
                  OUTLINED_FUNCTION_63(v525, v526, v527);
                  LOBYTE(v2) = v911;
                  OUTLINED_FUNCTION_16_3();
                  OUTLINED_FUNCTION_60_0(v528, v529, v530);
                  OUTLINED_FUNCTION_23_1();
                  OUTLINED_FUNCTION_63(v531, v532, v533);
                  OUTLINED_FUNCTION_16_3();
                  sub_1B24472B8(v534, v535, v536);
LABEL_241:
                  v537 = OUTLINED_FUNCTION_34();
                  v539 = OUTLINED_FUNCTION_9_5(v537, v538);
                  OUTLINED_FUNCTION_9_5(v539, v482);
                  OUTLINED_FUNCTION_23_1();
                  OUTLINED_FUNCTION_42_0(v540, v541, v542);
                  OUTLINED_FUNCTION_16_3();
LABEL_242:
                  sub_1B24472E0(v515, v516, v517);
LABEL_243:
                  if (v922 == v918)
                  {
                    LOBYTE(v2) = v917;
                    v0 = v921;
                    goto LABEL_266;
                  }

                  continue;
                }

                v914 = v90 + 32;
                OUTLINED_FUNCTION_57_0();
                v915 = v90;
                v102 = v101;
                OUTLINED_FUNCTION_63(v103, v104, v105);
                LOBYTE(v106) = v911;
                OUTLINED_FUNCTION_15_3();
                sub_1B24472B8(v107, v108, v109);
                v902 = v102;
                OUTLINED_FUNCTION_23_1();
                OUTLINED_FUNCTION_63(v110, v111, v112);
                OUTLINED_FUNCTION_15_3();
                v116 = sub_1B24472B8(v113, v114, v115);
                v119 = 0;
                v906 = v86;
                v913 = v100;
                while (2)
                {
                  v120 = *(v86 + 16);
                  if (v119 >= v120)
                  {
                    __break(1u);
LABEL_334:
                    __break(1u);
LABEL_335:
                    v870 = v117;
                    v873 = v118;
                    v776 = v120;
                    v250 = v116;
                    goto LABEL_338;
                  }

                  OUTLINED_FUNCTION_105();
                  if (v82)
                  {
                    goto LABEL_334;
                  }

                  OUTLINED_FUNCTION_40_0();
                  v122 = OUTLINED_FUNCTION_82(v121);
                  v125 = v914 + v124;
                  v126 = *(v914 + v124);
                  v127 = *(v125 + 8);
                  LODWORD(v106) = *(v125 + 16);
                  v916 = v128;
                  switch(v100)
                  {
                    case 1:
                      if (v106 != 1)
                      {
                        goto LABEL_315;
                      }

                      LOBYTE(v106) = v126;
                      v427 = OUTLINED_FUNCTION_33_0(v122, v123, 1);
                      v116 = OUTLINED_FUNCTION_32_0(v427, v428);
                      goto LABEL_201;
                    case 2:
                      if (v106 != 2)
                      {
                        goto LABEL_315;
                      }

                      v106 = v122;
                      v419 = v126;
                      sub_1B24472E0(v122, v123, 2);
                      v420 = OUTLINED_FUNCTION_50_0();
                      v116 = sub_1B24472E0(v420, v421, 2);
                      v422 = v106 == v419;
LABEL_201:
                      v100 = v913;
                      if (!v422)
                      {
                        goto LABEL_346;
                      }

                      goto LABEL_219;
                    case 3:
                      if (v106 != 3)
                      {
                        goto LABEL_315;
                      }

                      LOBYTE(v106) = v122;
                      v423 = v126;
                      sub_1B24472E0(v122, v123, 3);
                      v424 = OUTLINED_FUNCTION_50_0();
                      v116 = sub_1B24472E0(v424, v425, 3);
                      v426 = v423 ^ v106;
                      v100 = v913;
                      if (v426)
                      {
                        goto LABEL_346;
                      }

                      goto LABEL_219;
                    case 4:
                      v908 = *(v125 + 8);
                      if (v106 != 4)
                      {
                        goto LABEL_312;
                      }

                      v139 = *(v122 + 16);
                      if (v139 != *(v126 + 16))
                      {
                        v729 = OUTLINED_FUNCTION_90();
                        sub_1B24472B8(v729, v730, 4);
                        v731 = OUTLINED_FUNCTION_14_3();
                        sub_1B24472B8(v731, v732, 4);
                        v733 = OUTLINED_FUNCTION_8_4();
                        sub_1B24472B8(v733, v734, v735);
                        v736 = OUTLINED_FUNCTION_14_3();
                        sub_1B24472B8(v736, v737, 4);
                        goto LABEL_345;
                      }

                      if (!v139)
                      {
                        LOBYTE(v106) = v126;
                        goto LABEL_216;
                      }

                      LOBYTE(v106) = v122;
                      if (v122 == v126)
                      {
LABEL_216:
                        v458 = OUTLINED_FUNCTION_8_4();
                        OUTLINED_FUNCTION_59_0(v458, v459, v460);
                        OUTLINED_FUNCTION_23_1();
                        sub_1B24472B8(v461, v462, v463);
                        v464 = OUTLINED_FUNCTION_8_4();
                        OUTLINED_FUNCTION_59_0(v464, v465, v466);
                        OUTLINED_FUNCTION_23_1();
                        sub_1B24472B8(v467, v468, v469);
LABEL_217:
                        OUTLINED_FUNCTION_23_1();
                        sub_1B24472E0(v470, v471, v472);
                        v473 = OUTLINED_FUNCTION_8_4();
                        sub_1B24472E0(v473, v474, v475);
                        v476 = OUTLINED_FUNCTION_8_4();
                        OUTLINED_FUNCTION_65(v476, v477, v478);
                        OUTLINED_FUNCTION_23_1();
                        v116 = sub_1B24472E0(v479, v480, v481);
                        v86 = v906;
LABEL_218:
                        v100 = v913;
LABEL_219:
                        v119 = v916;
                        if (v916 == v100)
                        {
                          LOBYTE(v2) = v911;
                          LOBYTE(v67) = v915;
                          v482 = v902;
                          goto LABEL_241;
                        }

                        continue;
                      }

                      v904 = v122 + 32;
                      v903 = *(v122 + 16);
                      v907 = v122;
                      LODWORD(v37) = v126;
                      sub_1B24472B8(v126, v127, 4);
                      OUTLINED_FUNCTION_23_1();
                      sub_1B24472B8(v140, v141, v142);
                      v905 = v37;
                      v143 = OUTLINED_FUNCTION_8_4();
                      sub_1B24472B8(v143, v144, v145);
                      OUTLINED_FUNCTION_23_1();
                      sub_1B24472B8(v146, v147, v148);
                      v149 = v907;
                      v150 = 0;
                      while (2)
                      {
                        if (v150 >= *(v149 + 16))
                        {
                          __break(1u);
LABEL_354:
                          __break(1u);
LABEL_355:
                          __break(1u);
LABEL_356:
                          __break(1u);
LABEL_357:
                          __break(1u);
LABEL_358:
                          __break(1u);
LABEL_359:
                          __break(1u);
LABEL_360:
                          __break(1u);
                          return;
                        }

                        OUTLINED_FUNCTION_105();
                        if (v82)
                        {
                          goto LABEL_354;
                        }

                        OUTLINED_FUNCTION_40_0();
                        v152 = v904 + 8 * v151;
                        v0 = *v152;
                        v29 = *(v152 + 8);
                        LOBYTE(v2) = *(v152 + 16);
                        OUTLINED_FUNCTION_58_0();
                        v910 = v155;
                        switch(v156)
                        {
                          case 1:
                            if (v37 != 1)
                            {
                              goto LABEL_323;
                            }

                            v366 = OUTLINED_FUNCTION_25_1();
                            sub_1B24472E0(v366, v367, 1);
                            v368 = OUTLINED_FUNCTION_25_1();
                            OUTLINED_FUNCTION_32_0(v368, v369);
                            goto LABEL_175;
                          case 2:
                            if (v37 != 2)
                            {
                              goto LABEL_323;
                            }

                            v354 = OUTLINED_FUNCTION_25_1();
                            v37 = v355;
                            sub_1B24472E0(v354, v356, 2);
                            v357 = OUTLINED_FUNCTION_30_0();
                            sub_1B24472E0(v357, v358, 2);
                            v359 = v0 == v37;
LABEL_175:
                            v365 = v903;
                            if (!v359)
                            {
                              goto LABEL_345;
                            }

                            goto LABEL_192;
                          case 3:
                            if (v37 != 3)
                            {
                              goto LABEL_323;
                            }

                            v360 = OUTLINED_FUNCTION_25_1();
                            LODWORD(v37) = v361;
                            sub_1B24472E0(v360, v362, 3);
                            v363 = OUTLINED_FUNCTION_30_0();
                            sub_1B24472E0(v363, v364, 3);
                            v365 = v903;
                            if ((v37 ^ v0))
                            {
                              goto LABEL_345;
                            }

                            goto LABEL_192;
                          case 4:
                            if (v37 != 4)
                            {
                              v738 = v0;
                              goto LABEL_322;
                            }

                            v169 = *(v0 + 16);
                            if (v169 != *(v154 + 16))
                            {
                              OUTLINED_FUNCTION_62();
                              OUTLINED_FUNCTION_100();
                              OUTLINED_FUNCTION_52_0(v746, v747, v748);
                              OUTLINED_FUNCTION_15_3();
                              sub_1B24472B8(v749, v750, v751);
                              OUTLINED_FUNCTION_36_0();
                              OUTLINED_FUNCTION_52_0(v752, v753, v754);
                              OUTLINED_FUNCTION_15_3();
                              sub_1B24472B8(v755, v756, v757);
                              goto LABEL_343;
                            }

                            if (!v169)
                            {
                              LODWORD(v37) = v154;
LABEL_189:
                              OUTLINED_FUNCTION_57_0();
                              v353 = v400;
                              sub_1B24472B8(v401, v402, v403);
                              v404 = OUTLINED_FUNCTION_11_3();
                              OUTLINED_FUNCTION_60_0(v404, v405, v406);
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472B8(v407, v408, v409);
                              v410 = OUTLINED_FUNCTION_11_3();
                              sub_1B24472B8(v410, v411, v412);
                              goto LABEL_190;
                            }

                            LODWORD(v37) = v0;
                            if (v0 == v154)
                            {
                              goto LABEL_189;
                            }

                            OUTLINED_FUNCTION_62();
                            LOBYTE(v2) = v29;
                            OUTLINED_FUNCTION_100();
                            v67 = v170;
                            v898 = v171;
                            OUTLINED_FUNCTION_52_0(v172, v173, v174);
                            OUTLINED_FUNCTION_16_3();
                            sub_1B24472B8(v175, v176, v177);
                            v899 = v29;
                            v897 = v67;
                            OUTLINED_FUNCTION_15_3();
                            OUTLINED_FUNCTION_52_0(v178, v179, v180);
                            OUTLINED_FUNCTION_16_3();
                            sub_1B24472B8(v181, v182, v183);
                            v184 = 0;
                            v888 = v29;
                            v867 = v0;
LABEL_83:
                            if (v184 >= *(v0 + 16))
                            {
                              goto LABEL_355;
                            }

                            OUTLINED_FUNCTION_105();
                            if (v82)
                            {
                              goto LABEL_356;
                            }

                            break;
                          case 5:
                            if (v37 == 5)
                            {
                              v370 = OUTLINED_FUNCTION_62();
                              sub_1B24472B8(v370, v371, 5);
                              LODWORD(v37) = v0;
                              OUTLINED_FUNCTION_24_1();
                              OUTLINED_FUNCTION_59_0(v372, v373, v374);
                              OUTLINED_FUNCTION_24_1();
                              sub_1B24472B8(v375, v376, v377);
                              v378 = OUTLINED_FUNCTION_35_0();
                              sub_1B24472B8(v378, v379, 5);
                              v380 = OUTLINED_FUNCTION_29_1();
                              v900 = sub_1B2452914(v380, v381);
                              v382 = OUTLINED_FUNCTION_35_0();
                              OUTLINED_FUNCTION_65(v382, v383, 5);
                              OUTLINED_FUNCTION_24_1();
                              OUTLINED_FUNCTION_65(v384, v385, v386);
                              OUTLINED_FUNCTION_24_1();
                              v166 = OUTLINED_FUNCTION_33_0(v387, v388, v389);
                              v168 = 5;
LABEL_179:
                              sub_1B24472E0(v166, v167, v168);
                              v365 = v903;
                              if ((v900 & 1) == 0)
                              {
                                goto LABEL_345;
                              }

                              goto LABEL_192;
                            }

                            v738 = v0;
                            goto LABEL_322;
                          case 6:
                            if (v37 != 6 || (v153 | v154) != 0)
                            {
                              goto LABEL_323;
                            }

                            v391 = OUTLINED_FUNCTION_25_1();
                            v393 = OUTLINED_FUNCTION_2_7(v391, v392);
                            goto LABEL_191;
                          default:
                            if (v37)
                            {
                              goto LABEL_319;
                            }

                            if (v0 != v154 || v29 != v153)
                            {
                              LODWORD(v37) = v29;
                              v900 = OUTLINED_FUNCTION_110();
                              v158 = OUTLINED_FUNCTION_34();
                              sub_1B24472B8(v158, v159, 0);
                              v160 = OUTLINED_FUNCTION_21_1();
                              sub_1B24472B8(v160, v161, v162);
                              v163 = OUTLINED_FUNCTION_21_1();
                              sub_1B24472E0(v163, v164, v165);
                              v166 = OUTLINED_FUNCTION_34();
                              v168 = 0;
                              goto LABEL_179;
                            }

                            sub_1B24472B8(v0, v29, 0);
                            v396 = OUTLINED_FUNCTION_25_1();
                            sub_1B24472B8(v396, v397, 0);
                            v398 = OUTLINED_FUNCTION_25_1();
                            sub_1B24472E0(v398, v399, 0);
                            v393 = OUTLINED_FUNCTION_25_1();
                            v395 = 0;
                            goto LABEL_191;
                        }

                        OUTLINED_FUNCTION_40_0();
                        OUTLINED_FUNCTION_82(v185);
                        OUTLINED_FUNCTION_58_0();
                        v901 = v186;
                        switch(v187)
                        {
                          case 1:
                            if (v67 != 1)
                            {
                              goto LABEL_331;
                            }

                            LOBYTE(v2) = v81;
                            LODWORD(v67) = v80;
                            sub_1B24472E0(v77, v78, 1);
                            v302 = OUTLINED_FUNCTION_49_0();
                            OUTLINED_FUNCTION_32_0(v302, v303);
                            if (!v31)
                            {
                              goto LABEL_343;
                            }

                            goto LABEL_166;
                          case 2:
                            if (v67 != 2)
                            {
                              goto LABEL_331;
                            }

                            v67 = v77;
                            v295 = v81;
                            LOBYTE(v2) = v80;
                            sub_1B24472E0(v77, v78, 2);
                            v296 = OUTLINED_FUNCTION_34();
                            sub_1B24472E0(v296, v297, 2);
                            v31 = v67 == v295;
                            v29 = v888;
                            if (!v31)
                            {
                              goto LABEL_343;
                            }

                            goto LABEL_166;
                          case 3:
                            if (v67 != 3)
                            {
                              goto LABEL_331;
                            }

                            LODWORD(v67) = v77;
                            v298 = v81;
                            LOBYTE(v2) = v80;
                            sub_1B24472E0(v77, v78, 3);
                            v299 = OUTLINED_FUNCTION_34();
                            sub_1B24472E0(v299, v300, 3);
                            v301 = v298 ^ v67;
                            v29 = v888;
                            if (v301)
                            {
                              goto LABEL_343;
                            }

                            goto LABEL_166;
                          case 4:
                            if (v67 != 4)
                            {
                              v877 = v81;
                              v758 = v80;
                              v304 = v78;
                              goto LABEL_330;
                            }

                            v193 = *(v77 + 16);
                            v896 = v77;
                            v887 = v78;
                            v890 = v80;
                            if (v193 != *(v81 + 16))
                            {
                              OUTLINED_FUNCTION_97();
                              OUTLINED_FUNCTION_100();
                              sub_1B24472B8(v764, v765, v766);
                              OUTLINED_FUNCTION_15_3();
                              sub_1B24472B8(v767, v768, v769);
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472B8(v770, v771, v772);
                              OUTLINED_FUNCTION_15_3();
                              sub_1B24472B8(v773, v774, v775);
                              goto LABEL_342;
                            }

                            v875 = *(v77 + 16);
                            if (!v193)
                            {
                              v194 = v81;
                              goto LABEL_163;
                            }

                            v194 = v77;
                            if (v77 == v81)
                            {
LABEL_163:
                              v895 = v194;
                              OUTLINED_FUNCTION_57_0();
                              OUTLINED_FUNCTION_60_0(v340, v341, v342);
                              v2 = v887;
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472B8(v343, v344, v345);
                              OUTLINED_FUNCTION_60_0(v895, v890, 4);
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472B8(v346, v347, v348);
                              LODWORD(v67) = v895;
LABEL_164:
                              v349 = OUTLINED_FUNCTION_9_5(v896, v2);
                              LOBYTE(v2) = v890;
                              OUTLINED_FUNCTION_9_5(v349, v890);
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472E0(v350, v351, v352);
                              v331 = v896;
                              v332 = v887;
                              v333 = 4;
LABEL_165:
                              sub_1B24472E0(v331, v332, v333);
LABEL_166:
                              v184 = v901;
                              if (v901 != v898)
                              {
                                goto LABEL_83;
                              }

                              v353 = v897;
                              LODWORD(v37) = v899;
LABEL_190:
                              v413 = OUTLINED_FUNCTION_25_1();
                              v415 = OUTLINED_FUNCTION_9_5(v413, v414);
                              OUTLINED_FUNCTION_9_5(v415, v353);
                              OUTLINED_FUNCTION_16_3();
                              sub_1B24472E0(v416, v417, v418);
                              v393 = OUTLINED_FUNCTION_11_3();
LABEL_191:
                              sub_1B24472E0(v393, v394, v395);
                              v365 = v903;
LABEL_192:
                              v150 = v910;
                              v149 = v907;
                              if (v910 == v365)
                              {
                                LOBYTE(v106) = v905;
                                goto LABEL_217;
                              }

                              continue;
                            }

                            OUTLINED_FUNCTION_62();
                            OUTLINED_FUNCTION_100();
                            sub_1B24472B8(v195, v196, v197);
                            LODWORD(v106) = v887;
                            OUTLINED_FUNCTION_15_3();
                            sub_1B24472B8(v198, v199, v200);
                            v876 = v29;
                            OUTLINED_FUNCTION_16_3();
                            sub_1B24472B8(v201, v202, v203);
                            OUTLINED_FUNCTION_15_3();
                            sub_1B24472B8(v204, v205, v206);
                            v100 = v896;
                            v207 = 0;
                            while (2)
                            {
                              if (v207 >= *(v100 + 16))
                              {
                                goto LABEL_357;
                              }

                              v208 = v207;
                              if (v207 >= *(v876 + 16))
                              {
                                goto LABEL_358;
                              }

                              ++v207;
                              OUTLINED_FUNCTION_82(3 * v208);
                              OUTLINED_FUNCTION_58_0();
                              switch(v209)
                              {
                                case 1:
                                  if (v106 != 1)
                                  {
                                    goto LABEL_339;
                                  }

                                  LODWORD(v106) = v120;
                                  sub_1B24472E0(v116, v117, 1);
                                  v248 = OUTLINED_FUNCTION_49_0();
                                  OUTLINED_FUNCTION_32_0(v248, v249);
                                  if (!v31)
                                  {
                                    goto LABEL_342;
                                  }

                                  goto LABEL_140;
                                case 2:
                                  if (v106 != 2)
                                  {
                                    goto LABEL_339;
                                  }

                                  v106 = v116;
                                  v244 = v118;
                                  v880 = v120;
                                  v245 = OUTLINED_FUNCTION_65(v116, v117, 2);
                                  sub_1B24472E0(v245, v880, 2);
                                  if (v106 != v244)
                                  {
                                    goto LABEL_342;
                                  }

                                  goto LABEL_140;
                                case 3:
                                  if (v106 != 3)
                                  {
                                    goto LABEL_339;
                                  }

                                  LODWORD(v106) = v116;
                                  v246 = v118;
                                  v881 = v120;
                                  v247 = OUTLINED_FUNCTION_65(v116, v117, 3);
                                  sub_1B24472E0(v247, v881, 3);
                                  if ((v246 ^ v106))
                                  {
                                    goto LABEL_342;
                                  }

                                  goto LABEL_140;
                                case 4:
                                  v870 = v117;
                                  if (v106 != 4)
                                  {
                                    v873 = v118;
                                    v776 = v120;
                                    v250 = v116;
                                    goto LABEL_338;
                                  }

                                  v217 = *(v116 + 16);
                                  v879 = v120;
                                  v874 = v116;
                                  if (v217 != *(v118 + 16))
                                  {
                                    v783 = OUTLINED_FUNCTION_97();
                                    sub_1B24472B8(v783, v784, 4);
                                    OUTLINED_FUNCTION_15_3();
                                    sub_1B24472B8(v785, v786, v787);
                                    OUTLINED_FUNCTION_16_3();
                                    sub_1B24472B8(v788, v789, v790);
                                    OUTLINED_FUNCTION_15_3();
                                    sub_1B24472B8(v791, v792, v793);
LABEL_341:
                                    OUTLINED_FUNCTION_36_0();
                                    sub_1B24472E0(v794, v795, v796);
                                    OUTLINED_FUNCTION_15_3();
                                    OUTLINED_FUNCTION_65(v797, v798, v799);
                                    OUTLINED_FUNCTION_15_3();
                                    sub_1B24472E0(v800, v801, v802);
                                    v803 = OUTLINED_FUNCTION_7_4();
                                    sub_1B24472E0(v803, v804, v805);
                                    goto LABEL_342;
                                  }

                                  if (!v217)
                                  {
                                    v218 = v118;
LABEL_137:
                                    v894 = v218;
                                    OUTLINED_FUNCTION_57_0();
                                    sub_1B24472B8(v279, v280, v281);
                                    OUTLINED_FUNCTION_15_3();
                                    sub_1B24472B8(v282, v283, v284);
                                    OUTLINED_FUNCTION_16_3();
                                    sub_1B24472B8(v285, v286, v287);
                                    v243 = v870;
                                    OUTLINED_FUNCTION_15_3();
                                    sub_1B24472B8(v288, v289, v290);
                                    LODWORD(v106) = v894;
                                    goto LABEL_138;
                                  }

                                  v868 = *(v116 + 16);
                                  v218 = v116;
                                  if (v116 == v118)
                                  {
                                    goto LABEL_137;
                                  }

                                  v865 = v207;
                                  v219 = OUTLINED_FUNCTION_62();
                                  v221 = v220;
                                  sub_1B24472B8(v219, v222, 4);
                                  v223 = v874;
                                  OUTLINED_FUNCTION_15_3();
                                  OUTLINED_FUNCTION_95(v224, v225, v226);
                                  OUTLINED_FUNCTION_23_1();
                                  OUTLINED_FUNCTION_59_0(v227, v228, v229);
                                  OUTLINED_FUNCTION_15_3();
                                  sub_1B24472B8(v230, v231, v232);
                                  v233 = 0;
                                  v872 = v221;
                                  v234 = (v221 + 48);
                                  v235 = (v874 + 48);
                                  do
                                  {
                                    if (v233 >= *(v223 + 16))
                                    {
                                      goto LABEL_359;
                                    }

                                    v236 = *(v235 - 1);
                                    v882 = v233;
                                    v883 = v235;
                                    v237 = *v235;
                                    v933[0] = *(v235 - 2);
                                    v933[1] = v236;
                                    v934 = v237;
                                    if (v233 >= *(v872 + 16))
                                    {
                                      goto LABEL_360;
                                    }

                                    v893 = *(v234 - 1);
                                    v931[0] = *(v234 - 2);
                                    v884 = v931[0];
                                    v931[1] = v893;
                                    v932 = *v234;
                                    v238 = v932;
                                    v239 = OUTLINED_FUNCTION_29_1();
                                    sub_1B24472B8(v239, v240, v237);
                                    sub_1B24472B8(v884, v893, v238);
                                    v885 = static BackingValue.== infix(_:_:)(v933, v931);
                                    sub_1B24472E0(v884, v893, v238);
                                    v241 = OUTLINED_FUNCTION_29_1();
                                    sub_1B24472E0(v241, v242, v237);
                                    if ((v885 & 1) == 0)
                                    {
                                      goto LABEL_341;
                                    }

                                    v233 = v882 + 1;
                                    v234 += 24;
                                    v235 = v883 + 24;
                                    v223 = v874;
                                  }

                                  while (v868 != v882 + 1);
                                  v50 = v912;
                                  v207 = v865;
                                  v0 = v867;
                                  v243 = v870;
                                  LODWORD(v106) = v872;
LABEL_138:
                                  v291 = OUTLINED_FUNCTION_9_5(v874, v243);
                                  OUTLINED_FUNCTION_9_5(v291, v879);
                                  OUTLINED_FUNCTION_16_3();
                                  sub_1B24472E0(v292, v293, v294);
                                  v270 = v874;
                                  v271 = v870;
                                  v272 = 4;
LABEL_139:
                                  sub_1B24472E0(v270, v271, v272);
                                  goto LABEL_140;
                                case 5:
                                  v870 = v117;
                                  v873 = v118;
                                  v866 = v207;
                                  v250 = v116;
                                  if (v106 == 5)
                                  {
                                    v251 = OUTLINED_FUNCTION_62();
                                    sub_1B24472B8(v251, v252, 5);
                                    sub_1B24472B8(v250, v870, 5);
                                    OUTLINED_FUNCTION_87();
                                    OUTLINED_FUNCTION_59_0(v253, v254, v255);
                                    OUTLINED_FUNCTION_87();
                                    v259 = OUTLINED_FUNCTION_59_0(v256, v257, v258);
                                    v892 = sub_1B2452914(v259, v873);
                                    v260 = OUTLINED_FUNCTION_49_0();
                                    OUTLINED_FUNCTION_42_0(v260, v261, 5);
                                    LODWORD(v106) = v873;
                                    OUTLINED_FUNCTION_24_1();
                                    sub_1B24472E0(v262, v263, v264);
                                    OUTLINED_FUNCTION_24_1();
                                    v268 = OUTLINED_FUNCTION_65(v265, v266, v267);
                                    sub_1B24472E0(v268, v870, 5);
                                    v207 = v866;
LABEL_127:
                                    if ((v892 & 1) == 0)
                                    {
                                      goto LABEL_342;
                                    }

LABEL_140:
                                    v100 = v896;
                                    if (v207 == v875)
                                    {
                                      v2 = v887;
                                      v29 = v888;
                                      LODWORD(v67) = v876;
                                      goto LABEL_164;
                                    }

                                    continue;
                                  }

                                  v776 = v120;
LABEL_338:
                                  OUTLINED_FUNCTION_68(v250, v870);
                                  v120 = v776;
                                  v118 = v873;
LABEL_339:
                                  v777 = v118;
                                  v778 = v120;
                                  sub_1B24472B8(v118, v120, v106);
                                  v779 = OUTLINED_FUNCTION_18_1();
                                  sub_1B24472E0(v779, v780, v100);
                                  v781 = OUTLINED_FUNCTION_12_4(v777, v778, v106);
                                  sub_1B24472E0(v781, v782, v100);
LABEL_342:
                                  OUTLINED_FUNCTION_15_3();
                                  sub_1B24472E0(v806, v807, v808);
                                  OUTLINED_FUNCTION_16_3();
                                  OUTLINED_FUNCTION_42_0(v809, v810, v811);
                                  OUTLINED_FUNCTION_16_3();
                                  sub_1B24472E0(v812, v813, v814);
                                  OUTLINED_FUNCTION_15_3();
                                  sub_1B24472E0(v815, v816, v817);
LABEL_343:
                                  v818 = OUTLINED_FUNCTION_11_3();
                                  sub_1B24472E0(v818, v819, v820);
                                  OUTLINED_FUNCTION_36_0();
                                  sub_1B24472E0(v821, v822, v823);
                                  v824 = OUTLINED_FUNCTION_7_4();
                                  sub_1B24472E0(v824, v825, v826);
                                  OUTLINED_FUNCTION_23_1();
LABEL_344:
                                  sub_1B24472E0(v743, v744, v745);
LABEL_345:
                                  OUTLINED_FUNCTION_23_1();
                                  sub_1B24472E0(v827, v828, v829);
                                  OUTLINED_FUNCTION_17_2();
                                  sub_1B24472E0(v830, v831, v832);
                                  v833 = OUTLINED_FUNCTION_8_4();
                                  sub_1B24472E0(v833, v834, v835);
                                  v836 = OUTLINED_FUNCTION_14_3();
                                  sub_1B24472E0(v836, v837, 4);
LABEL_346:
                                  OUTLINED_FUNCTION_36_0();
                                  sub_1B24472E0(v838, v839, v840);
                                  OUTLINED_FUNCTION_23_1();
                                  v844 = OUTLINED_FUNCTION_42_0(v841, v842, v843);
                                  OUTLINED_FUNCTION_9_5(v844, v902);
                                  OUTLINED_FUNCTION_36_0();
LABEL_347:
                                  sub_1B24472E0(v706, v707, v708);
LABEL_348:
                                  LOBYTE(v2) = 4;
                                  OUTLINED_FUNCTION_36_0();
                                  OUTLINED_FUNCTION_73(v845, v846, v847);
                                  OUTLINED_FUNCTION_23_1();
                                  OUTLINED_FUNCTION_73(v848, v849, v850);
                                  OUTLINED_FUNCTION_23_1();
                                  OUTLINED_FUNCTION_42_0(v851, v852, v853);
                                  OUTLINED_FUNCTION_36_0();
                                  sub_1B24472E0(v854, v855, v856);
LABEL_349:
                                  LOBYTE(v1) = 4;
LABEL_350:
                                  v857 = OUTLINED_FUNCTION_28_0();
                                  sub_1B24472E0(v857, v858, v2);
                                  v859 = OUTLINED_FUNCTION_41_1();
                                  sub_1B24472E0(v859, v860, v1);
                                  v861 = OUTLINED_FUNCTION_28_0();
                                  sub_1B24472E0(v861, v862, v2);
LABEL_351:
                                  v863 = OUTLINED_FUNCTION_41_1();
                                  sub_1B24472E0(v863, v864, v1);
LABEL_352:
                                  OUTLINED_FUNCTION_96();
                                  return;
                                case 6:
                                  if (v106 != 6 || (v120 | v118) != 0)
                                  {
                                    goto LABEL_339;
                                  }

                                  v270 = OUTLINED_FUNCTION_2_7(v116, v117);
                                  goto LABEL_139;
                                default:
                                  if (v106)
                                  {
                                    goto LABEL_335;
                                  }

                                  if (v116 != v118 || v117 != v120)
                                  {
                                    v869 = v117;
                                    v871 = v118;
                                    v106 = v118;
                                    v878 = v120;
                                    v892 = OUTLINED_FUNCTION_110();
                                    OUTLINED_FUNCTION_59_0(v106, v878, 0);
                                    LODWORD(v106) = v869;
                                    OUTLINED_FUNCTION_43();
                                    OUTLINED_FUNCTION_59_0(v211, v212, v213);
                                    OUTLINED_FUNCTION_43();
                                    sub_1B24472E0(v214, v215, v216);
                                    sub_1B24472E0(v871, v878, 0);
                                    goto LABEL_127;
                                  }

                                  LODWORD(v106) = v116;
                                  sub_1B24472B8(v116, v117, 0);
                                  v273 = OUTLINED_FUNCTION_19_2();
                                  sub_1B24472B8(v273, v274, v275);
                                  v276 = OUTLINED_FUNCTION_19_2();
                                  sub_1B24472E0(v276, v277, v278);
                                  v270 = OUTLINED_FUNCTION_19_2();
                                  goto LABEL_139;
                              }
                            }

                          case 5:
                            v304 = v78;
                            v305 = v77;
                            if (v67 != 5)
                            {
                              v877 = v81;
                              v758 = v80;
                              goto LABEL_330;
                            }

                            v306 = OUTLINED_FUNCTION_62();
                            LODWORD(v67) = v307;
                            sub_1B24472B8(v306, v308, 5);
                            LOBYTE(v2) = v305;
                            OUTLINED_FUNCTION_37_0();
                            OUTLINED_FUNCTION_60_0(v309, v310, v311);
                            OUTLINED_FUNCTION_37_0();
                            OUTLINED_FUNCTION_59_0(v312, v313, v314);
                            OUTLINED_FUNCTION_24_1();
                            sub_1B24472B8(v315, v316, v317);
                            v318 = OUTLINED_FUNCTION_49_0();
                            v891 = sub_1B2452914(v318, v319);
                            OUTLINED_FUNCTION_24_1();
                            v323 = OUTLINED_FUNCTION_33_0(v320, v321, v322);
                            v325 = OUTLINED_FUNCTION_33_0(v323, v324, 5);
                            OUTLINED_FUNCTION_65(v325, v326, 5);
                            OUTLINED_FUNCTION_24_1();
                            sub_1B24472E0(v327, v328, v329);
                            v29 = v888;
                            v0 = v867;
LABEL_153:
                            if ((v891 & 1) == 0)
                            {
                              goto LABEL_343;
                            }

                            goto LABEL_166;
                          case 6:
                            if (v67 != 6 || (v80 | v81) != 0)
                            {
                              goto LABEL_331;
                            }

                            v331 = OUTLINED_FUNCTION_2_7(v77, v78);
                            goto LABEL_165;
                          default:
                            if (v67)
                            {
                              goto LABEL_327;
                            }

                            if (v77 != v81 || v78 != v80)
                            {
                              LOBYTE(v2) = v77;
                              v886 = v78;
                              v67 = v81;
                              v889 = v80;
                              v891 = sub_1B256EB5C();
                              v189 = OUTLINED_FUNCTION_30_0();
                              v191 = OUTLINED_FUNCTION_59_0(v189, v190, 0);
                              v192 = OUTLINED_FUNCTION_59_0(v191, v886, 0);
                              sub_1B24472E0(v192, v886, 0);
                              v29 = v888;
                              sub_1B24472E0(v67, v889, 0);
                              goto LABEL_153;
                            }

                            LODWORD(v67) = v77;
                            LOBYTE(v2) = v78;
                            sub_1B24472B8(v77, v78, 0);
                            v334 = OUTLINED_FUNCTION_19_2();
                            sub_1B24472B8(v334, v335, v336);
                            v337 = OUTLINED_FUNCTION_19_2();
                            sub_1B24472E0(v337, v338, v339);
                            v331 = OUTLINED_FUNCTION_19_2();
                            goto LABEL_165;
                        }
                      }

                    case 5:
                      v908 = *(v125 + 8);
                      if (v106 != 5)
                      {
LABEL_312:
                        v723 = v126;
                        goto LABEL_314;
                      }

                      v429 = OUTLINED_FUNCTION_90();
                      OUTLINED_FUNCTION_59_0(v429, v430, 5);
                      OUTLINED_FUNCTION_37_0();
                      OUTLINED_FUNCTION_60_0(v431, v432, v433);
                      OUTLINED_FUNCTION_24_1();
                      OUTLINED_FUNCTION_59_0(v434, v435, v436);
                      OUTLINED_FUNCTION_37_0();
                      sub_1B24472B8(v437, v438, v439);
                      v440 = OUTLINED_FUNCTION_49_0();
                      v909 = sub_1B2452914(v440, v441);
                      OUTLINED_FUNCTION_37_0();
                      sub_1B24472E0(v442, v443, v444);
                      OUTLINED_FUNCTION_24_1();
                      sub_1B24472E0(v445, v446, v447);
                      v448 = OUTLINED_FUNCTION_30_0();
                      v86 = v906;
                      OUTLINED_FUNCTION_65(v448, v449, 5);
                      OUTLINED_FUNCTION_37_0();
                      goto LABEL_205;
                    case 6:
                      if (v106 != 6 || (v127 | v126) != 0)
                      {
                        goto LABEL_315;
                      }

                      v451 = OUTLINED_FUNCTION_2_7(v122, v123);
                      goto LABEL_214;
                    default:
                      if (*(v125 + 16))
                      {
                        v723 = v126;
                        v908 = *(v125 + 8);
LABEL_314:
                        OUTLINED_FUNCTION_68(v122, v123);
                        v127 = v908;
                        v126 = v723;
LABEL_315:
                        v724 = v126;
                        sub_1B24472B8(v126, v127, v106);
                        v725 = OUTLINED_FUNCTION_14_3();
                        sub_1B24472E0(v725, v726, v100);
                        sub_1B24472E0(v724, v127, v106);
                        v727 = OUTLINED_FUNCTION_14_3();
                        sub_1B24472E0(v727, v728, v100);
                        goto LABEL_346;
                      }

                      if (v122 == v126 && v123 == v127)
                      {
                        LOBYTE(v106) = v122;
                        sub_1B24472B8(v122, v123, 0);
                        v454 = OUTLINED_FUNCTION_35_0();
                        sub_1B24472B8(v454, v455, 0);
                        v456 = OUTLINED_FUNCTION_35_0();
                        v451 = OUTLINED_FUNCTION_33_0(v456, v457, 0);
                        v453 = 0;
LABEL_214:
                        v116 = sub_1B24472E0(v451, v452, v453);
                        goto LABEL_218;
                      }

                      LOBYTE(v106) = v126;
                      v909 = sub_1B256EB5C();
                      v130 = OUTLINED_FUNCTION_30_0();
                      sub_1B24472B8(v130, v131, 0);
                      v132 = OUTLINED_FUNCTION_50_0();
                      sub_1B24472B8(v132, v133, 0);
                      v134 = OUTLINED_FUNCTION_50_0();
                      sub_1B24472E0(v134, v135, 0);
                      v136 = OUTLINED_FUNCTION_30_0();
                      v86 = v906;
                      v138 = 0;
LABEL_205:
                      v116 = sub_1B24472E0(v136, v137, v138);
                      v100 = v913;
                      if ((v909 & 1) == 0)
                      {
                        goto LABEL_346;
                      }

                      goto LABEL_219;
                  }
                }

              case 5:
                if (v67 != 5)
                {
                  OUTLINED_FUNCTION_45_0();
                  v698 = v86;
LABEL_309:
                  OUTLINED_FUNCTION_68(v698, v699);
                  v90 = v86;
LABEL_310:
                  OUTLINED_FUNCTION_45_0();
                  sub_1B24472B8(v700, v701, v702);
                  v703 = OUTLINED_FUNCTION_88();
                  v705 = OUTLINED_FUNCTION_42_0(v703, v704, v2);
                  sub_1B24472E0(v705, v90, v67);
                  v706 = OUTLINED_FUNCTION_88();
                  v708 = v2;
                  goto LABEL_347;
                }

                LOBYTE(v2) = v85;
                OUTLINED_FUNCTION_95(v90, v89, 5);
                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_52_0(v491, v492, v493);
                OUTLINED_FUNCTION_24_1();
                OUTLINED_FUNCTION_95(v494, v495, v496);
                OUTLINED_FUNCTION_47_0();
                sub_1B24472B8(v497, v498, v499);
                v500 = OUTLINED_FUNCTION_44_0();
                LOBYTE(v67) = sub_1B2452914(v500, v501);
                OUTLINED_FUNCTION_47_0();
                sub_1B24472E0(v502, v503, v504);
                OUTLINED_FUNCTION_24_1();
                sub_1B24472E0(v505, v506, v507);
                OUTLINED_FUNCTION_24_1();
                OUTLINED_FUNCTION_73(v508, v509, v510);
                OUTLINED_FUNCTION_47_0();
                sub_1B24472E0(v511, v512, v513);
                v50 = v912;
                if ((v67 & 1) == 0)
                {
                  goto LABEL_348;
                }

                goto LABEL_243;
              case 6:
                if (v67 != 6 || (v89 | v90) != 0)
                {
                  goto LABEL_310;
                }

                v515 = OUTLINED_FUNCTION_2_7(v86, v85);
                goto LABEL_242;
              default:
                if (*(v88 + 16))
                {
LABEL_306:
                  v698 = v86;
                  OUTLINED_FUNCTION_45_0();
                  goto LABEL_309;
                }

                if (v86 == v90 && v85 == v89)
                {
                  LOBYTE(v67) = v85;
                  OUTLINED_FUNCTION_63(v86, v85, 0);
                  OUTLINED_FUNCTION_43();
                  OUTLINED_FUNCTION_63(v518, v519, v520);
                  OUTLINED_FUNCTION_43();
                  OUTLINED_FUNCTION_42_0(v521, v522, v523);
                  OUTLINED_FUNCTION_43();
                  goto LABEL_242;
                }

                LOBYTE(v2) = v85;
                OUTLINED_FUNCTION_45_0();
                LOBYTE(v67) = OUTLINED_FUNCTION_110();
                OUTLINED_FUNCTION_95(v86, v90, 0);
                OUTLINED_FUNCTION_38_0();
                OUTLINED_FUNCTION_95(v93, v94, v95);
                v50 = v912;
                OUTLINED_FUNCTION_38_0();
                v99 = OUTLINED_FUNCTION_42_0(v96, v97, v98);
                sub_1B24472E0(v99, v90, 0);
                if ((v67 & 1) == 0)
                {
                  goto LABEL_348;
                }

                goto LABEL_243;
            }
          }

        case 5:
          v29 = v0;
          if (v1 != 5)
          {
            goto LABEL_302;
          }

          LOBYTE(v2) = v10;
          v0 = v49;
          sub_1B24472B8(v50, v49, 5);
          v557 = OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_95(v557, v558, 5);
          OUTLINED_FUNCTION_37_0();
          sub_1B24472B8(v559, v560, v561);
          v562 = OUTLINED_FUNCTION_34();
          v564 = OUTLINED_FUNCTION_63(v562, v563, 5);
          v565 = sub_1B2452914(v564, v50);
          v566 = OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_73(v566, v567, 5);
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_73(v568, v569, v570);
          OUTLINED_FUNCTION_37_0();
          sub_1B24472E0(v571, v572, v573);
          v574 = OUTLINED_FUNCTION_34();
          sub_1B24472E0(v574, v575, 5);
          v29 = v923;
          if ((v565 & 1) == 0)
          {
            goto LABEL_304;
          }

          goto LABEL_267;
        case 6:
          if (v1 != 6 || (v49 | v50) != 0)
          {
            goto LABEL_303;
          }

          v577 = OUTLINED_FUNCTION_2_7(v0, v10);
          goto LABEL_264;
        default:
          if (*(v48 + 16))
          {
            OUTLINED_FUNCTION_45_0();
            goto LABEL_302;
          }

          if (v0 == v50 && v10 == v49)
          {
            sub_1B24472B8(v0, v10, 0);
            v580 = OUTLINED_FUNCTION_21_1();
            sub_1B24472B8(v580, v581, v582);
            v583 = OUTLINED_FUNCTION_21_1();
            sub_1B24472E0(v583, v584, v585);
            v577 = OUTLINED_FUNCTION_21_1();
LABEL_264:
            sub_1B24472E0(v577, v578, v579);
          }

          else
          {
            LOBYTE(v2) = v10;
            OUTLINED_FUNCTION_45_0();
            v53 = OUTLINED_FUNCTION_110();
            v54 = OUTLINED_FUNCTION_44_0();
            sub_1B24472B8(v54, v55, 0);
            v56 = OUTLINED_FUNCTION_34();
            OUTLINED_FUNCTION_63(v56, v57, 0);
            v29 = v923;
            OUTLINED_FUNCTION_38_0();
            sub_1B24472E0(v58, v59, v60);
            v61 = OUTLINED_FUNCTION_44_0();
            sub_1B24472E0(v61, v62, 0);
            if ((v53 & 1) == 0)
            {
              goto LABEL_304;
            }
          }

LABEL_267:
          LOBYTE(v37) = v924;
          v44 = v926;
          if (v926 != v924)
          {
            continue;
          }

          LOBYTE(v1) = v930;
LABEL_291:
          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_64(v656, v657, v658);
          OUTLINED_FUNCTION_15_3();
          sub_1B24472E0(v659, v660, v661);
          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_64(v662, v663, v664);
          OUTLINED_FUNCTION_15_3();
LABEL_292:
          sub_1B24472E0(v641, v642, v643);
          v9 = v927;
          v13 = v929;
          break;
      }

      break;
    }
  }
}