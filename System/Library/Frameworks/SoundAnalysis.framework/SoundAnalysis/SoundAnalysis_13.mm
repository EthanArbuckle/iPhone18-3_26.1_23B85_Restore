void sub_1C989D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void **a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11, uint64_t a12)
{
  sub_1C97DFA9C();
  if (!v19)
  {
LABEL_45:
    __break(1u);
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_34;
  }

  if (HIDWORD(a3))
  {
    goto LABEL_35;
  }

  v12 = v19;
  v36 = a6;
  *v19 = a3;
  v20 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v22 = a4[1];
    if (v22 < 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v35 = a7;
    if (v22)
    {
      sub_1C97A2CEC(&qword_1EC3C7478);
      v23 = sub_1C9A92838();
      *(v23 + 16) = v22;
      v24 = a4[1];
      if (v24 < 0)
      {
        goto LABEL_38;
      }

      a7 = v23;
      if (v24)
      {
        v25 = 0;
        v26 = (v23 + 40);
        while (1)
        {
          v27 = a4[2];
          v28 = v25 * v27;
          if ((v25 * v27) >> 64 != (v25 * v27) >> 63)
          {
            goto LABEL_33;
          }

          ++v25;
          *(v26 - 1) = v20 + 32 + 4 * v28;
          *v26 = v27;
          v26 += 2;
          if (v24 == v25)
          {
            v24 = a4[1];
            if (v22 >= v24)
            {
              break;
            }

            __break(1u);
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
LABEL_14:
      v24 = 0;
      a7 = MEMORY[0x1E69E7CC0];
    }

    *(a7 + 16) = v24;
    if (!a3)
    {
      break;
    }

    if (v24 < 1)
    {
      goto LABEL_43;
    }

    if (v24 < a3)
    {
      goto LABEL_44;
    }

    v29 = (v12 + 16);
    v30 = (a7 + 40);
    while (1)
    {
      v31 = a5 * *v30;
      if ((a5 * *v30) >> 64 != v31 >> 63)
      {
        break;
      }

      if (v31 < 0)
      {
        goto LABEL_31;
      }

      if (HIDWORD(v31))
      {
        goto LABEL_32;
      }

      sub_1C989D69C(v29);
      if (!--a3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    sub_1C97E72E0();
    v20 = v34;
    *a4 = v34;
  }

LABEL_23:
  if ((a8 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(a8))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v32 = *a10;
  if ((*a10 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v32))
  {
    goto LABEL_42;
  }

  if (!sub_1C9A6C71C(*v36, v35, a8, a9, v12, v32, a11, a12))
  {
    sub_1C97E7A18();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
  }

  *a4 = v20;
}

uint64_t sub_1C989D4DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C989D518(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C989D554(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C989D590(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C989D5CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1C989D69C(void *a1@<X8>)
{
  v4 = *(v2 - 8);
  *(a1 - 2) = v1;
  *(a1 - 1) = v3;
  *a1 = v4;
}

void sub_1C989D6B0(void *a1@<X8>)
{
  v4 = *(v1 - 8);
  *(a1 - 2) = v2;
  *(a1 - 1) = v3;
  *a1 = v4;
}

void sub_1C989D6FC()
{
  v0 = sub_1C9A913B8();
  sub_1C98D7C30();
}

uint64_t sub_1C989D750()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C989D7E0;

  return sub_1C988FB68();
}

uint64_t sub_1C989D7E0(uint64_t a1)
{
  v3 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C989D914, 0, 0);
  }
}

uint64_t sub_1C989D914()
{
  v1 = *(v0 + 32);

  v2 = sub_1C98DA914();
  if (v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(v2);
  }
}

uint64_t sub_1C989DA24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C989DABC;

  return sub_1C989D750();
}

uint64_t sub_1C989DABC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

float sub_1C989DBCC(const float *a1, const float *__B, vDSP_Length __N)
{
  v5 = *MEMORY[0x1E69E9840];
  __C = 0.0;
  vDSP_dotpr(a1, 1, __B, 1, &__C, __N);
  return __C;
}

void sub_1C989DC34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {

    sub_1C989DD00(a1, a2);
  }

  else
  {
    sub_1C989DCAC();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_1C989DCAC()
{
  result = qword_1EC3D28F0;
  if (!qword_1EC3D28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D28F0);
  }

  return result;
}

float sub_1C989DD00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_1C989DBCC((a1 + 32), (a2 + 32), v4);
  v6 = sub_1C989DBCC((a1 + 32), (a1 + 32), v4);
  v7 = sub_1C989DBCC((a2 + 32), (a2 + 32), v4);

  v8 = sqrt(v6 * v7);
  return v5 / v8;
}

_BYTE *storeEnumTagSinglePayload for DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C989DE54()
{
  result = qword_1EC3CACE0;
  if (!qword_1EC3CACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACE0);
  }

  return result;
}

uint64_t sub_1C989DEA8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  result = sub_1C9A6AB10(v1, &v3, a1);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C989DF8C()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  *(inited + 16) = *(v1 + 192);
  v3 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 16);
  *(v1 + 80) = v3;
  type metadata accessor for XPCProxyDecoder();
  v4 = swift_initStackObject();
  sub_1C98ADFA8(v4, *(v1 + 80), *(v1 + 64));
  v5 = swift_initStackObject();
  *(v5 + 16) = inited;
  *(v5 + 24) = v4;
  sub_1C98AE008();
  sub_1C98ADFF0();
  v6 = swift_setDeallocating();
  sub_1C9890A5C(v6);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA8DC();

  return v7();
}

uint64_t sub_1C989E084()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989E15C()
{
  sub_1C98AE148();
  v18 = v2;
  sub_1C97DA934();
  v4 = v3;
  sub_1C97AA890();
  v6 = v5;
  sub_1C97DA70C();
  *v7 = v6;
  v8 = *v1;
  sub_1C97AA83C();
  *v9 = v8;
  v6[33] = v4;

  if (v0)
  {
    v6[43] = v0;
    sub_1C98ADE3C();
    sub_1C987D484();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1C981E080(&dword_1C9AADCD8);
    v17 = v14;
    v15 = swift_task_alloc();
    v6[34] = v15;
    *v15 = v8;
    sub_1C97DA950(v15);

    return v17();
  }
}

uint64_t sub_1C989E2BC()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 352) = v3 & 1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C989E3C8()
{
  sub_1C97AA95C();
  if (*(v0 + 352) == 1)
  {
    *(v0 + 288) = *(*(v0 + 264) + 24);
    sub_1C98ADEF4();
    v1 = swift_task_alloc();
    *(v0 + 296) = v1;
    *v1 = v0;
    sub_1C97DA950(v1);

    return v5();
  }

  else
  {

    v3 = sub_1C98AE19C();
    sub_1C9890A5C(v3);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C98AE1F4();
    sub_1C97AA8AC();

    return v4();
  }
}

uint64_t sub_1C989E4CC()
{
  sub_1C97AA884();

  *(v0 + 344) = *(v0 + 280);
  sub_1C98ADE3C();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C989E528()
{
  sub_1C97DAA1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C97AA890();
  v11 = v10;
  sub_1C97DA70C();
  *v12 = v11;
  v13 = *v1;
  sub_1C97AA83C();
  *v14 = v13;
  v11[38] = v0;

  if (!v0)
  {

    v11[39] = v3;
    v11[40] = v5;
    v11[41] = v7;
    v11[42] = v9;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C989E65C()
{
  sub_1C97DABC4();
  sub_1C97DA934();

  v0 = sub_1C98AE19C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C98AE1F4();
  sub_1C98ADF18();
  sub_1C97DABB0();

  return v6(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C989E6E4()
{
  sub_1C97AA884();

  *(v0 + 344) = *(v0 + 304);
  sub_1C98ADE3C();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C989E74C()
{
  sub_1C97AA884();
  v0 = sub_1C98AE19C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C989E7B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989E7D0, 0, 0);
}

uint64_t sub_1C989E7D0()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989E8A8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98ADF5C();
  sub_1C98DA8A8();
  if (v9)
  {

    *(v10 + 288) = v9;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    sub_1C98ADF40();

    v15 = swift_setDeallocating();
    sub_1C9890A5C(v15);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = a9;
    sub_1C97DA8DC();
    sub_1C98AE0F8();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1C989EA8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989EAAC, 0, 0);
}

uint64_t sub_1C989EAAC()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989EB84()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989EC88()
{
  sub_1C981E3E4();
  sub_1C98ADF5C();
  sub_1C98DA844();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = v8;
    MEMORY[0x10] = v9;
    MEMORY[0x20] = v10;
    MEMORY[0x30] = v11;
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989ED70(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989ED90, 0, 0);
}

uint64_t sub_1C989ED90()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989EE68()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989EF6C()
{
  v9 = v1;
  sub_1C98ADF5C();
  sub_1C98DA7D0();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    memcpy(0, __src, 0x68uLL);
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989F058(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989F078, 0, 0);
}

uint64_t sub_1C989F078()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989F150()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989F254()
{
  sub_1C981E3E4();
  sub_1C98ADF5C();
  sub_1C98DA76C();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = v8;
    MEMORY[0x10] = v9;
    MEMORY[0x20] = v10;
    MEMORY[0x30] = v11;
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989F35C()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989F434()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  v3[33] = v5;
  v3[34] = v0;

  if (v0)
  {
    v3[35] = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989F540()
{
  sub_1C98AE148();
  sub_1C97DA934();
  v1 = *(v0 + 272);
  sub_1C98AE040();
  sub_1C98DAAE8();
  if (v1)
  {

    *(v0 + 280) = v1;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98AE234();

    v6 = swift_setDeallocating();
    sub_1C9890A5C(v6);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1C989F620(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989F640, 0, 0);
}

uint64_t sub_1C989F640()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989F718()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989F81C()
{
  sub_1C981E3E4();
  sub_1C98ADF5C();
  sub_1C98DA708();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = v8;
    MEMORY[0x10] = v9;
    MEMORY[0x20] = v10;
    MEMORY[0x30] = v11;
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989F904(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989F924, 0, 0);
}

uint64_t sub_1C989F924()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989F9FC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989FB00()
{
  sub_1C981E3E4();
  sub_1C98ADF5C();
  sub_1C98DA5C0();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = v8;
    MEMORY[0x10] = v9;
    MEMORY[0x20] = v10;
    MEMORY[0x30] = v11;
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989FBF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989FC14, 0, 0);
}

uint64_t sub_1C989FC14()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989FCEC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C989FDF0()
{
  v9 = v1;
  sub_1C98ADF5C();
  sub_1C98DA550();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    memcpy(0, v8, 0x60uLL);
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C989FEDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C989FEFC, 0, 0);
}

uint64_t sub_1C989FEFC()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C989FFD4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A00D8()
{
  v9 = v1;
  sub_1C98ADF5C();
  sub_1C98DA4DC();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    memcpy(0, __src, 0x48uLL);
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C98A01C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C98A01E4, 0, 0);
}

uint64_t sub_1C98A01E4()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A02BC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A03C0()
{
  sub_1C97DAA1C();
  sub_1C98ADF5C();
  sub_1C98DA3F0();
  if (v0)
  {

    *(v1 + 288) = v0;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98ADF40();

    v5 = swift_setDeallocating();
    sub_1C9890A5C(v5);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = v8;
    MEMORY[8] = v9;
    sub_1C97DA8DC();

    return v6();
  }
}

uint64_t sub_1C98A04AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C98A04CC, 0, 0);
}

uint64_t sub_1C98A04CC()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A05A4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C98AE0A0(v5);
  if (v0)
  {
    *(v3 + 288) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A06A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12)
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C98ADF5C();
  sub_1C98DA384();
  if (v12)
  {

    *(v13 + 288) = v12;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    sub_1C98ADF40();

    v18 = swift_setDeallocating();
    sub_1C9890A5C(v18);
    sub_1C97AA878();
    swift_deallocClassInstance();
    MEMORY[0] = a12;
    sub_1C97DA8DC();
    sub_1C98AE0F8();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1C98A0788()
{
  sub_1C97AA884();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A0808()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C97F4500();
}

uint64_t sub_1C98A08EC()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (!v0)
  {
    *(v4 + 272) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98A0A04()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C97FFAB8();
}

uint64_t sub_1C98A0AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return sub_1C97DA66C();
}

uint64_t sub_1C98A0AFC()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  sub_1C98ADC64(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDB0(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE50(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF84(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A0BD4()
{
  sub_1C98AE148();
  v26 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[34] = v1;
  v5[35] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADF48);
    v25 = v13;
    v14 = swift_task_alloc();
    v5[36] = v14;
    *v14 = v7;
    v22 = sub_1C98ADC50(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);

    return v22();
  }
}

uint64_t sub_1C98A0D30()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 296) = v0;

  if (!v0)
  {
    *(v4 + 304) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98A0E34()
{
  sub_1C97AA884();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A0EA4()
{
  sub_1C97AA95C();
  v1 = *(v0 + 304);
  v2 = *(v0 + 224);

  v3 = swift_setDeallocating();
  sub_1C9890A5C(v3);
  sub_1C97AA878();
  swift_deallocClassInstance();
  *v2 = v1;
  sub_1C97DA8DC();

  return v4();
}

uint64_t sub_1C98A0F28()
{
  sub_1C97AA884();

  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A0FB4()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C98AB01C();
}

uint64_t sub_1C98A10AC()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A1184()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  v3[33] = v5;
  v3[34] = v0;

  if (v0)
  {
    v3[35] = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A1290()
{
  sub_1C98AE148();
  sub_1C97DA934();
  v1 = *(v0 + 272);
  sub_1C98AE040();
  sub_1C98DA9F4();
  if (v1)
  {

    *(v0 + 280) = v1;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C98AE234();

    v6 = swift_setDeallocating();
    sub_1C9890A5C(v6);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1C98A1370()
{
  sub_1C97AA884();
  v0 = sub_1C98AE19C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A13D4()
{
  sub_1C97AA884();
  v0[28] = v1;
  v0[29] = v2;
  v3 = type metadata accessor for RemoteRequest();
  sub_1C97DACE4(v3);
  v0[30] = sub_1C97DAD48();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C98A1450()
{
  sub_1C97AA95C();
  sub_1C98ADEB4();
  inited = swift_initStackObject();
  *(v1 + 248) = inited;
  *(inited + 16) = *(v1 + 192);
  v3 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 16);
  *(v1 + 80) = v3;
  type metadata accessor for XPCProxyDecoder();
  v4 = swift_initStackObject();
  *(v1 + 256) = v4;
  sub_1C98ADFA8(v4, *(v1 + 80), *(v1 + 64));
  v5 = swift_initStackObject();
  *(v1 + 264) = v5;
  *(v5 + 16) = inited;
  *(v5 + 24) = v4;
  sub_1C98AE008();
  sub_1C98ADFF0();
  v6 = swift_task_alloc();
  *(v1 + 272) = v6;
  *v6 = v1;
  sub_1C98ADD10(v6);

  return sub_1C988FB68();
}

uint64_t sub_1C98A155C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  v3[35] = v5;
  v3[36] = v0;

  if (v0)
  {
    v3[37] = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A1668()
{
  sub_1C98AE148();
  sub_1C97DA934();
  v1 = v0[36];
  v2 = v0[30];
  sub_1C98AE040();
  sub_1C98DA640(v2);
  if (v1)
  {

    v0[37] = v1;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {

    sub_1C98AD768();
    v7 = swift_setDeallocating();
    sub_1C9890A5C(v7);
    sub_1C97AA878();
    swift_deallocClassInstance();

    sub_1C97DA8DC();
    sub_1C98AE0F8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C98A1780()
{
  sub_1C97AA884();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A17F8()
{
  sub_1C97AA884();
  v0[18] = v1;
  v0[19] = v2;
  v3 = sub_1C9A91748();
  sub_1C98AE200(v3);
  v0[21] = v4;
  v0[22] = sub_1C97DAD48();
  v5 = type metadata accessor for AccessibilitySoundActions.Session();
  v0[23] = v5;
  sub_1C97DACE4(v5);
  v0[24] = sub_1C97DAD48();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A18C0()
{
  sub_1C97AA95C();
  sub_1C98AE214();
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C98AE0D0(v3);
  v4 = swift_allocObject();
  sub_1C98ADFA8(v4, v1[2], v1[1]);
  inited = swift_initStackObject();
  *(v2 + 200) = inited;
  *(inited + 16) = v0;
  *(inited + 24) = v4;
  sub_1C98ACCA8();
  sub_1C98ACCA8();

  v6 = swift_task_alloc();
  *(v2 + 208) = v6;
  *v6 = v2;
  sub_1C98ADD10(v6);

  return sub_1C988FC80();
}

uint64_t sub_1C98A19CC()
{
  sub_1C98AE148();
  v26 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[27] = v1;
  v5[28] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0DE0);
    v25 = v13;
    v14 = swift_task_alloc();
    v5[29] = v14;
    *v14 = v7;
    v22 = sub_1C98ADC50(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);

    return v22();
  }
}

uint64_t sub_1C98A1B28()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[30] = v3;
  v5[31] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v5[24] + *(v5[23] + 20)) = v3;
    sub_1C981E080(&unk_1C9AD0CD0);
    swift_task_alloc();
    sub_1C97DA928();
    v5[32] = v12;
    *v12 = v13;
    v14 = sub_1C98AE118(v12);

    return v15(v14);
  }
}

uint64_t sub_1C98A1C94()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 264) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A1D8C()
{
  sub_1C97DA934();
  sub_1C98AE178();

  sub_1C98ADF18();
  v0();
  sub_1C98AD768();
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA8DC();

  return v2();
}

uint64_t sub_1C98A1E68()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C992FF84();
}

uint64_t sub_1C98A1F4C()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (!v0)
  {
    *(v4 + 272) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98A2050()
{
  sub_1C97AA884();
  v1 = sub_1C98AE19C();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C9840CC0();
  v3 = *(v0 + 272);

  return v2(v3);
}

uint64_t sub_1C98A20B8()
{
  sub_1C97AA884();
  v0 = sub_1C98AE19C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A2130()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C9A431C0();
}

uint64_t sub_1C98A2228()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C9A137E0();
}

uint64_t sub_1C98A2320()
{
  sub_1C97AA95C();
  sub_1C98ADED4();
  inited = swift_initStackObject();
  sub_1C98ADC90(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDF8(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE84(v2);
  sub_1C98AE008();
  sub_1C98ADFF0();

  v3 = swift_task_alloc();
  v4 = sub_1C98ADF90(v3);
  *v4 = v5;
  sub_1C98ADD7C(v4);

  return sub_1C9993D30();
}

uint64_t sub_1C98A2404()
{
  sub_1C97AA884();
  v0[18] = v1;
  v0[19] = v2;
  v3 = sub_1C9A91748();
  sub_1C98AE200(v3);
  v0[21] = v4;
  v0[22] = sub_1C97DAD48();
  v5 = type metadata accessor for AccessibilitySoundRecognition.Session(0);
  v0[23] = v5;
  sub_1C97DACE4(v5);
  v0[24] = sub_1C97DAD48();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A24CC()
{
  sub_1C97AA95C();
  sub_1C98AE214();
  sub_1C97AA878();
  v3 = swift_allocObject();
  sub_1C98AE0D0(v3);
  v4 = swift_allocObject();
  sub_1C98ADFA8(v4, v1[2], v1[1]);
  inited = swift_initStackObject();
  *(v2 + 200) = inited;
  *(inited + 16) = v0;
  *(inited + 24) = v4;
  sub_1C98ACCA8();
  sub_1C98ACCA8();

  v6 = swift_task_alloc();
  *(v2 + 208) = v6;
  *v6 = v2;
  sub_1C98ADD10(v6);

  return sub_1C988FC80();
}

uint64_t sub_1C98A25D8()
{
  sub_1C98AE148();
  v26 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[27] = v1;
  v5[28] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0DD8);
    v25 = v13;
    v14 = swift_task_alloc();
    v5[29] = v14;
    *v14 = v7;
    v22 = sub_1C98ADC50(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);

    return v22();
  }
}

uint64_t sub_1C98A2734()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v5[30] = v3;
  v5[31] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v5[24] + *(v5[23] + 20)) = v3;
    sub_1C981E080(&unk_1C9AD0CD0);
    swift_task_alloc();
    sub_1C97DA928();
    v5[32] = v12;
    *v12 = v13;
    v14 = sub_1C98AE118(v12);

    return v15(v14);
  }
}

uint64_t sub_1C98A28A0()
{
  sub_1C97AA95C();

  v0 = sub_1C98AE15C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A2928()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 264) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A2A20()
{
  sub_1C97AA95C();

  v0 = sub_1C98AE15C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A2AB4()
{
  sub_1C97DA934();
  sub_1C98AE178();

  sub_1C98ADF18();
  v0();
  sub_1C98AD768();
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA8DC();

  return v2();
}

uint64_t sub_1C98A2B7C()
{
  sub_1C97AA95C();

  v0 = sub_1C98AE15C();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A2C1C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A2C9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A2DB4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A2E8C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v5;

  if (v0)
  {
    *(v3 + 360) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A2F98()
{
  sub_1C97AA95C();
  v0[40] = *(v0[39] + 24);
  sub_1C98ADEF4();
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return v3();
}

uint64_t sub_1C98A3038()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[42] = v1;

  if (!v1)
  {

    v5[43] = v0;
    v5[44] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98A3144()
{
  sub_1C97AA884();

  sub_1C97D9AA4(v0 + 16);
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C981E1F8();
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);

  return v2(v3, v4);
}

uint64_t sub_1C98A31C4()
{
  sub_1C97AA884();

  *(v0 + 360) = *(v0 + 336);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C98A3234()
{
  sub_1C97AA884();
  sub_1C98AE274();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A32A0()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A3320()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A3438()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A3518()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 312) = v0;

  if (!v0)
  {
    *(v4 + 320) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98A361C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A369C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A37B4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A3894()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A3914()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A3A2C()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A3B0C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A3B8C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A3CA4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A3D84()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C98A3E18;

  return sub_1C9890888(v0 + 16);
}

uint64_t sub_1C98A3E18()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A3F30()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A4010()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A4090()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A41A8()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A4288()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A4308()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A4420()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A4500()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A4580()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A4698()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  sub_1C98ADE60();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  v6 = sub_1C98ADD68(v4);

  return v7(v6);
}

uint64_t sub_1C98A4778()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 312) = v0;

  if (!v0)
  {
    *(v4 + 320) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98A487C()
{
  sub_1C97AA884();
  sub_1C98AE274();
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C9840CC0();
  v3 = *(v0 + 320);

  return v2(v3);
}

uint64_t sub_1C98A48EC()
{
  sub_1C97AA884();
  sub_1C98AE274();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98A4958()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C98ADEA4(v0);
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C9890888(v3);
}

uint64_t sub_1C98A49D8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C9840CC0();

    return v4(0);
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C98A4AF4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C98AE088();
  sub_1C98AE0B8();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A4BCC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  v3[39] = v5;
  v3[40] = v0;

  if (v0)
  {
    v3[41] = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C98A4CD8()
{
  sub_1C98AE148();
  sub_1C97DA934();
  v1 = *(v0 + 320);
  sub_1C98AE040();
  sub_1C98DA994();
  if (v1)
  {

    *(v0 + 328) = v1;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {

    sub_1C97D9AA4(v0 + 16);
    v6 = swift_setDeallocating();
    sub_1C9890A5C(v6);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_1C98A4DD0()
{
  sub_1C97AA884();
  sub_1C98AE274();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C9840CC0();

  return v1(0);
}

uint64_t sub_1C98A4E40()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C98A4EC8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98A4FE4()
{
  sub_1C97AA95C();
  v0[4] = *(v0[3] + 24);
  sub_1C98ADEF4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return v3();
}

uint64_t sub_1C98A5084()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[6] = v1;

  if (!v1)
  {

    v5[7] = v0;
    v5[8] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98A5190()
{
  sub_1C97AA884();

  sub_1C981E1F8();
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1(v2, v3);
}

uint64_t sub_1C98A51F0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98A5254()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C988FB68();
}

uint64_t sub_1C98A52DC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98A53F8()
{
  sub_1C97AA95C();
  v0[4] = *(v0[3] + 24);
  sub_1C98ADEF4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return v3();
}

uint64_t sub_1C98A5498()
{
  sub_1C97DAA1C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1C97AA890();
  v11 = v10;
  sub_1C97DA70C();
  *v12 = v11;
  v13 = *v1;
  sub_1C97AA83C();
  *v14 = v13;
  v11[6] = v0;

  if (!v0)
  {

    v11[7] = v3;
    v11[8] = v5;
    v11[9] = v7;
    v11[10] = v9;
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C98A55CC()
{
  sub_1C97AA884();

  sub_1C98AE1F4();
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_1C98A5630()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C98AE130(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C988FB68();
}

uint64_t sub_1C98A56B8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98A57D4()
{
  sub_1C97AA95C();
  v0[11] = *(v0[10] + 24);
  sub_1C98ADEF4();
  swift_task_alloc();
  sub_1C97DA928();
  v0[12] = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return v5(v3);
}

uint64_t sub_1C98A5874()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A5974()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  sub_1C97DA8DC();

  return v4();
}

uint64_t sub_1C98A59E0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98A5A44()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C98AE130(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C988FB68();
}

uint64_t sub_1C98A5ACC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    sub_1C97DA91C();

    return v5();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1C98A5BE8()
{
  sub_1C97AA95C();
  v0[11] = *(v0[10] + 24);
  sub_1C98ADEF4();
  swift_task_alloc();
  sub_1C97DA928();
  v0[12] = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return v5(v3);
}

uint64_t sub_1C98A5C88()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A5D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97A2CEC(&unk_1EC3CAD50);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for CombinePublisherFromXPCAdapter();
  swift_allocObject();
  sub_1C97C926C();

  sub_1C981A2D0(a3, a4, a1, a2);
  v10 = sub_1C98ACD04();
  MEMORY[0x1CCA8FD00](v9, v10);

  sub_1C97AE67C(&qword_1EC3CAD60, &unk_1EC3CAD50);
  return sub_1C9A93AD8();
}

uint64_t sub_1C98A5EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C97A2CEC(&unk_1EC3CAD50);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for CombinePublisherFromXPCAdapter();
  swift_allocObject();

  sub_1C981A2D0(a3, a4, a1, a2);
  v10 = sub_1C98ACD04();
  MEMORY[0x1CCA8FD00](v9, v10);

  sub_1C98AD724();
  sub_1C97AE67C(&qword_1EC3CAD60, &unk_1EC3CAD50);
  return sub_1C9A93AD8();
}

uint64_t sub_1C98A6064(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989E7B0(a1, a2);
}

uint64_t sub_1C98A611C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989EA8C(a1, a2);
}

uint64_t sub_1C98A61D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989ED70(a1, a2);
}

uint64_t sub_1C98A628C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989F058(a1, a2);
}

uint64_t sub_1C98A6344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C98A63EC;

  return sub_1C989F33C(a1);
}

uint64_t sub_1C98A63EC()
{
  sub_1C97AA884();
  v3 = v2;
  sub_1C97AA890();
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;

  sub_1C9840CC0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C98A64D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989F620(a1, a2);
}

uint64_t sub_1C98A6590(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989F904(a1, a2);
}

uint64_t sub_1C98A6648(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989FBF4(a1, a2);
}

uint64_t sub_1C98A6700(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C989FEDC(a1, a2);
}

uint64_t sub_1C98A67B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return sub_1C98A01C4(a1, a2);
}

uint64_t sub_1C98A6870(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97D9C3C;

  return sub_1C98A04AC(a1, a2);
}

uint64_t sub_1C98A6928()
{
  sub_1C97AA884();
  v0[6] = v1;
  v2 = sub_1C97A2CEC(&qword_1EC3CADD8);
  v0[7] = v2;
  sub_1C97DACE4(v2);
  v0[8] = sub_1C97DAD48();
  v3 = swift_task_alloc();
  v4 = sub_1C98AE130(v3);
  *v4 = v5;
  sub_1C97DA950(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A69E0()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A6B38()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CADE0);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A6D08(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CADB8);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A6DD8;

  return sub_1C988FB68();
}

uint64_t sub_1C98A6DD8()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A6F30()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A7024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CADC0);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A7100(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CAD98);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A71D0;

  return sub_1C988FB68();
}

uint64_t sub_1C98A71D0()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A7328()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CADA0);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A74F8(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CAD88);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A75C8;

  return sub_1C988FB68();
}

uint64_t sub_1C98A75C8()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A7720()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A7814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAD90);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A78F0(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CAE70);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A79C0;

  return sub_1C988FB68();
}

uint64_t sub_1C98A79C0()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A7B18()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A7C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5EE4(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAE78);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A7CCC(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CAD40);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A7D9C;

  return sub_1C988FB68();
}

uint64_t sub_1C98A7D9C()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A7EF4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A7FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAD48);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A80C4(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CADA8);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A8194;

  return sub_1C988FB68();
}

uint64_t sub_1C98A8194()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A82EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A83E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CADB0);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A84BC(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CADC8);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A858C;

  return sub_1C988FB68();
}

uint64_t sub_1C98A858C()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A86E4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A87D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CADD0);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A88B4(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_1C97A2CEC(&qword_1EC3CAD78);
  v1[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C98A8984;

  return sub_1C988FB68();
}

uint64_t sub_1C98A8984()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A8ADC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAD80);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A8CAC()
{
  sub_1C97AA884();
  v0[6] = v1;
  v2 = sub_1C97A2CEC(&qword_1EC3CAE40);
  v0[7] = v2;
  sub_1C97DACE4(v2);
  v0[8] = sub_1C97DAD48();
  v3 = swift_task_alloc();
  v4 = sub_1C98AE130(v3);
  *v4 = v5;
  sub_1C97DA950(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A8D64()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A8EBC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C98A8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAE48);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A908C()
{
  sub_1C97AA884();
  v0[6] = v1;
  v2 = sub_1C97A2CEC(&qword_1EC3CAE30);
  v0[7] = v2;
  sub_1C97DACE4(v2);
  v0[8] = sub_1C97DAD48();
  v3 = swift_task_alloc();
  v4 = sub_1C98AE130(v3);
  *v4 = v5;
  sub_1C97DA950(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C98A9144()
{
  sub_1C98AE148();
  v28 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 80) = v1;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC90);
    v27 = v13;
    v14 = swift_task_alloc();
    v15 = sub_1C98ADF78(v14);
    *v15 = v16;
    v24 = sub_1C98ADC50(v15, v17, v18, v19, v20, v21, v22, v23, v26, v27);

    return v24();
  }
}

uint64_t sub_1C98A929C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  sub_1C98ADCE8(v4, v5);
  v6 = *v1;
  sub_1C97AA83C();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98A9390()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

void sub_1C98A93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C98ADFD8();
  sub_1C97DAA1C();
  sub_1C98ADE2C();
  if (v10)
  {
    sub_1C98ADD8C();
    v11 = sub_1C98ADC38();
    sub_1C98A5D88(v11, v12, v13, v14);

    sub_1C98ADC0C(&qword_1EC3CAE38);
    sub_1C98AE058();
    sub_1C98AE070();

    sub_1C98ADF18();
    sub_1C97DA1E0(v15, v16);

    sub_1C98ADCFC();
    sub_1C98ADFC0();

    v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C98A94D4()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98A9558()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1D0();
  v5 = sub_1C98ADD20();
  *&v6 = v2;
  *(&v6 + 1) = v4;
  *(v3 + 104) = v5;
  *&v7 = v1;
  *(&v7 + 1) = v0;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = sub_1C981DF74();
  sub_1C97A8F30(v8);
  sub_1C981E080(&unk_1C9AA38B0);
  v9 = swift_task_alloc();
  v10 = sub_1C98AE13C(v9);
  *v10 = v11;
  sub_1C981E0C4(v10);
  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98A9614()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[15] = v1;

  if (!v1)
  {
    v5[16] = v0;
    v5[17] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98A9738()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1B4();
  inited = swift_initStackObject();
  *(v3 + 72) = inited;
  inited[2] = v1;
  inited[3] = v0;
  inited[4] = v2;
  inited[5] = v4;
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);

  v7 = swift_task_alloc();
  *(v3 + 80) = v7;
  *v7 = v3;
  sub_1C97DA950(v7);
  sub_1C97DABB0();

  return sub_1C98198C0();
}

uint64_t sub_1C98A97FC()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[11] = v1;

  if (!v1)
  {
    v5[12] = v0;
    v5[13] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98A9900()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();
  sub_1C981E1F8();
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1(v2, v3);
}

uint64_t sub_1C98A9968()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98A99E0()
{
  sub_1C97AA95C();
  v0 = sub_1C981DF74();
  sub_1C97A8F30(v0);
  v1 = sub_1C981DF74();
  sub_1C97A8F30(v1);
  v2 = sub_1C981DF74();
  sub_1C97AA074(v2);
  sub_1C98AE1F4();
  v3 = sub_1C981DF74();

  return v4(v3);
}

uint64_t sub_1C98A9A64(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C98A9A84, 0, 0);
}

uint64_t sub_1C98A9A84()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1B4();
  inited = swift_initStackObject();
  *(v3 + 128) = inited;
  inited[2] = v1;
  inited[3] = v0;
  inited[4] = v2;
  inited[5] = v4;
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);

  swift_task_alloc();
  sub_1C97DA928();
  *(v3 + 136) = v7;
  *v7 = v8;
  sub_1C98ADE1C(v7);
  sub_1C97DABB0();

  return sub_1C99B1860();
}

uint64_t sub_1C98A9B48()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A9C40()
{
  sub_1C97AA884();
  v1 = *(v0 + 112);
  swift_setDeallocating();
  sub_1C987D494();
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  sub_1C97DA8DC();

  return v4();
}

uint64_t sub_1C98A9CB4()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C987D494();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98A9D18(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C98A9D38, 0, 0);
}

uint64_t sub_1C98A9D38()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1B4();
  inited = swift_initStackObject();
  *(v3 + 128) = inited;
  inited[2] = v1;
  inited[3] = v0;
  inited[4] = v2;
  inited[5] = v4;
  v6 = sub_1C981DF74();
  sub_1C97A8F30(v6);

  swift_task_alloc();
  sub_1C97DA928();
  *(v3 + 136) = v7;
  *v7 = v8;
  sub_1C98ADE1C(v7);
  sub_1C97DABB0();

  return sub_1C994B2F8();
}

uint64_t sub_1C98A9DFC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C98A9F08()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1D0();
  v5 = sub_1C98ADD20();
  *&v6 = v2;
  *(&v6 + 1) = v4;
  *(v3 + 104) = v5;
  *&v7 = v1;
  *(&v7 + 1) = v0;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = sub_1C981DF74();
  sub_1C97A8F30(v8);
  sub_1C981E080(&unk_1C9AA3A78);
  v9 = swift_task_alloc();
  v10 = sub_1C98AE13C(v9);
  *v10 = v11;
  sub_1C981E0C4(v10);
  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98A9FD8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1D0();
  v5 = sub_1C98ADD20();
  *&v6 = v2;
  *(&v6 + 1) = v4;
  *(v3 + 104) = v5;
  *&v7 = v1;
  *(&v7 + 1) = v0;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = sub_1C981DF74();
  sub_1C97A8F30(v8);
  sub_1C981E080(&unk_1C9AA3948);
  v9 = swift_task_alloc();
  v10 = sub_1C98AE13C(v9);
  *v10 = v11;
  sub_1C981E0C4(v10);
  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98AA0A8()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1D0();
  v5 = sub_1C98ADD20();
  *&v6 = v2;
  *(&v6 + 1) = v4;
  *(v3 + 104) = v5;
  *&v7 = v1;
  *(&v7 + 1) = v0;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = sub_1C981DF74();
  sub_1C97A8F30(v8);
  sub_1C981E080(&unk_1C9AA3920);
  v9 = swift_task_alloc();
  v10 = sub_1C98AE13C(v9);
  *v10 = v11;
  sub_1C981E0C4(v10);
  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98AA178()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98AE1D0();
  v5 = sub_1C98ADD20();
  *&v6 = v2;
  *(&v6 + 1) = v4;
  *(v3 + 104) = v5;
  *&v7 = v1;
  *(&v7 + 1) = v0;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  v8 = sub_1C981DF74();
  sub_1C97A8F30(v8);
  sub_1C981E080(&unk_1C9AA38F8);
  v9 = swift_task_alloc();
  v10 = sub_1C98AE13C(v9);
  *v10 = v11;
  sub_1C981E0C4(v10);
  sub_1C97DABB0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C98AA234()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[15] = v1;

  if (!v1)
  {
    v5[16] = v0;
    v5[17] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C98AA338()
{
  sub_1C97AA884();
  sub_1C97AA074(v0[9]);
  sub_1C981E1F8();
  v3 = v0[16];
  v2 = v0[17];

  return v1(v2, v3);
}

uint64_t sub_1C98AA39C()
{
  sub_1C97AA884();
  sub_1C97AA074(*(v0 + 72));
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98AA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return _s13SoundAnalysis31SNEstimateSpeechDistanceRequestC20supportsSecureCodingSbvgZ_0();
  }

  else
  {
    return sub_1C9A93B18();
  }
}

uint64_t sub_1C98AA414(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEC00000068746150)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C98AA4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1C97A2CEC(&qword_1EC3CADF8);
  sub_1C97AE9C8();
  v26 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  sub_1C97A5A8C(v23, v23[3]);
  sub_1C98AD4D0();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  (*(v26 + 8))(v29, v24);
  sub_1C97AEB5C();
}

uint64_t sub_1C98AA5D4()
{
  sub_1C98AE1E8();
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C98AA620(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CADE8);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C98AD4D0();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A938A8();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C98AA76C()
{
  sub_1C98AE1E8();
  v2 = *v1;
  v3 = v1[1];
  sub_1C98AE10C();
  memcpy(v4, v5, v6);
  v7 = *v0;
  v8 = v0[1];
  memcpy(__dst, v0 + 2, 0x41uLL);
  v9 = v2 == v7 && v3 == v8;
  if (v9 || (v10 = 0, (sub_1C9A93B18() & 1) != 0))
  {
    sub_1C98AE10C();
    memcpy(v11, v12, v13);
    memcpy(v15, v0 + 2, 0x41uLL);
    v10 = static AudioConfiguration.== infix(_:_:)(__src, v15);
    memcpy(v17, v15, 0x41uLL);
    sub_1C97A6264(v19, v18);
    sub_1C97A6264(__dst, v18);
    sub_1C97E8084(v17);
    memcpy(v18, __src, 0x41uLL);
    sub_1C97E8084(v18);
  }

  return v10 & 1;
}

void sub_1C98AA874()
{
  sub_1C97AEB94();
  v17 = v1;
  v3 = v2;
  v4 = sub_1C97A2CEC(&unk_1EC3CAE20);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_1C98AE10C();
  memcpy(v12, v13, v14);
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C98AD524();

  sub_1C9A93DD8();
  v19[0] = v10;
  v19[1] = v11;
  v18[0] = 0;
  sub_1C97A65F8();
  v15 = v17;
  sub_1C9A93A18();

  if (!v15)
  {
    memcpy(v19, v20, 0x41uLL);
    sub_1C97A6264(v20, v18);
    sub_1C97A6210();
    sub_1C9A93A18();
    memcpy(v18, v19, 0x41uLL);
    sub_1C97E8084(v18);
  }

  (*(v6 + 8))(v9, v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C98AAA64()
{
  sub_1C98AE10C();
  memcpy(v0, v1, v2);
  sub_1C9A92528();
  return AudioConfiguration.hash(into:)();
}

uint64_t sub_1C98AAAC0()
{
  sub_1C98AE10C();
  memcpy(v0, v1, v2);
  sub_1C9A93CC8();
  sub_1C9A92528();
  AudioConfiguration.hash(into:)();
  return sub_1C9A93D18();
}

void sub_1C98AAB2C()
{
  sub_1C97AEB94();
  v2 = v1;
  v9 = v3;
  sub_1C97A2CEC(&qword_1EC3CAE00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C98AD524();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    LOBYTE(v10[0]) = 0;
    sub_1C97A664C();
    sub_1C98AE254();
    v5 = v12;
    v8 = v11;
    sub_1C97A62C0();
    sub_1C98AE254();
    v6 = sub_1C98780E8();
    v7(v6);
    memcpy(v15, v14, sizeof(v15));
    v10[0] = v8;
    v10[1] = v5;
    memcpy(&v10[2], v14, 0x41uLL);
    memcpy(v9, v10, 0x51uLL);
    sub_1C98AD578(v10, &v11);
    sub_1C97A592C(v2);
    v11 = v8;
    v12 = v5;
    memcpy(v13, v15, sizeof(v13));
    sub_1C986E99C(&v11);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98AAD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98AA414(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C98AAD7C(uint64_t a1)
{
  v2 = sub_1C98AD4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98AADB8(uint64_t a1)
{
  v2 = sub_1C98AD4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98AAE04()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C98AAE4C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C98AA620(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C98AAE94(uint64_t a1)
{
  v2 = sub_1C98AD524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98AAED0(uint64_t a1)
{
  v2 = sub_1C98AD524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98AAF14()
{
  sub_1C9A93CC8();
  sub_1C98AAA64();
  return sub_1C9A93D18();
}

id sub_1C98AAF84@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v4 = a1[3];
  v16 = a1[2];
  v17 = v4;
  v5 = type metadata accessor for SNDirectionOfArrivalResult();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
  v9 = v16;
  v8 = v17;
  v10 = v15;
  *v7 = v14;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  sub_1C97A6844(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_1C98AB01C()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FB68();
}

uint64_t sub_1C98AB0A8()
{
  sub_1C98AE148();
  v26 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = v1;
  v5[5] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AADC68);
    v25 = v13;
    v14 = swift_task_alloc();
    v5[6] = v14;
    *v14 = v7;
    v22 = sub_1C98ADC50(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);

    return v22();
  }
}

uint64_t sub_1C98AB204()
{
  sub_1C97AA95C();
  sub_1C97DA7CC();
  v4 = v3;
  sub_1C97DA70C();
  *v5 = v4;
  v6 = *v2;
  sub_1C97AA83C();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C98AB308()
{
  sub_1C97AA884();

  sub_1C9840CC0();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1C98AB374()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98AB3D8(uint64_t a1, uint64_t a2)
{
  sub_1C99DC144();
  v4[3] = sub_1C97A2CEC(&qword_1EC3CAD20);
  v4[4] = sub_1C98ACC24();
  v4[0] = a2;

  sub_1C99DC184(v4);

  return sub_1C97A592C(v4);
}

uint64_t sub_1C98AB468()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_1C97DA950(v1);

  return sub_1C98AB01C();
}

uint64_t sub_1C98AB518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C981CF6C;

  return sub_1C98AB468();
}

void *sub_1C98AB604()
{
  v2 = *(v0 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl);
  v1 = *(v0 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8);
  type metadata accessor for SNDirectionOfArrivalEstimator();
  sub_1C97DAA28();
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = v1;

  return v3;
}

uint64_t sub_1C98AB670()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97DACE4(v2);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  MGGetProductType();
  if (qword_1EC3D30E0 == -1)
  {
    sub_1C989B6E0();
    v18 = sub_1C9A92478();

    v19 = [v0 initWithTuningPrefix_];

    return v19;
  }

  else
  {
    type metadata accessor for SNFileUtils();
    sub_1C97C926C();
    swift_getObjectType();
    sub_1C9A456F0(v5);
    v6 = sub_1C9A91558();
    result = sub_1C97ABF20(v5, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_1C9A91518();
      v10 = v9;
      (*(*(v6 - 8) + 8))(v5, v6);
      if (qword_1EC3C5520 != -1)
      {
        swift_once();
      }

      v11 = sub_1C9A91B58();
      sub_1C97BFF6C(v11, qword_1EC3D3108);

      v12 = sub_1C9A91B38();
      v13 = sub_1C9A92FC8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1C9849140(v8, v10, &v21);
        _os_log_impl(&dword_1C9788000, v12, v13, "Attempting to load Direction of Arrival tunings from %s", v14, 0xCu);
        sub_1C97A592C(v15);
        MEMORY[0x1CCA93280](v15, -1, -1);
        MEMORY[0x1CCA93280](v14, -1, -1);
      }

      v16 = objc_allocWithZone(ObjectType);
      v17 = &v16[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
      *v17 = v8;
      v17[1] = v10;
      v22.receiver = v16;
      v22.super_class = ObjectType;
      objc_msgSendSuper2(&v22, sel_init);
      sub_1C97C926C();
      swift_deallocPartialClassInstance();
      return v12;
    }
  }

  return result;
}

id sub_1C98AB964()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1C989B780();
  v3 = v2;

  v4 = objc_allocWithZone(ObjectType);
  v5 = &v4[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
  *v5 = v1;
  v5[1] = v3;
  v8.receiver = v4;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  swift_getObjectType();
  sub_1C98AE020();
  return v6;
}

id SNEstimateDirectionOfArrivalRequest.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl);
  v4 = *(v1 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8);
  v6 = objc_allocWithZone(ObjectType);
  v7 = &v6[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
  *v7 = v5;
  *(v7 + 1) = v4;
  v9.receiver = v6;
  v9.super_class = ObjectType;

  result = objc_msgSendSuper2(&v9, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNEstimateDirectionOfArrivalRequest.hash.getter()
{
  sub_1C9A93CC8();

  sub_1C9A92528();
  v0 = sub_1C9A93D18();

  return v0;
}

uint64_t SNEstimateDirectionOfArrivalRequest.isEqual(_:)()
{
  swift_getObjectType();
  sub_1C98ACCA8();
  if (v8)
  {
    sub_1C97A2D34(&v7, v6);
    sub_1C97BD360(v6, v5);
    if (swift_dynamicCast())
    {
      if (*(v0 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl) == *&v4[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl] && *(v0 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8) == *&v4[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8])
      {

        v2 = 1;
      }

      else
      {
        v2 = sub_1C9A93B18();
      }
    }

    else
    {
      v2 = 0;
    }

    sub_1C97A592C(v6);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id SNEstimateDirectionOfArrivalRequest.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1C97C926C();
  return SNEstimateDirectionOfArrivalRequest.init(coder:)(v2);
}

id SNEstimateDirectionOfArrivalRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1C97A1B40();
  v5 = v4;
  v6 = objc_allocWithZone(ObjectType);
  v7 = &v6[OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl];
  *v7 = v3;
  *(v7 + 1) = v5;
  v10.receiver = v6;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  swift_getObjectType();
  sub_1C98AE020();
  return v8;
}

Swift::Void __swiftcall SNEstimateDirectionOfArrivalRequest.encode(with:)(NSCoder with)
{

  sub_1C979F8E8();
}

void sub_1C98ABFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v22;
  a20 = v23;
  v66 = v24;
  sub_1C97A2CEC(&unk_1EC3CAE50);
  sub_1C97AE9C8();
  v63 = v26;
  v64 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  v62 = &v55[-v28];
  v29 = *(v20 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl + 8);
  v65 = *(v20 + OBJC_IVAR___SNEstimateDirectionOfArrivalRequest_impl);
  v67 = v29;

  v30 = MGGetProductType();
  sub_1C989B2F8(v30, v70);
  if (v70[6])
  {
    v31 = v70[0];

    sub_1C989ACF0(v31, v71);
    v32 = v73;
    v74 = v71[1];

    sub_1C97DA1E0(&v74, &qword_1EC3C7DB0);
    a10 = v72;
    sub_1C97DA1E0(&a10, &qword_1EC3C7DB8);

    v32(v69, v33);

    v34 = v69[0];
    v35 = v69[1];
    v36 = v69[2];
    v37 = v69[3];
    v39 = v69[4];
    v38 = v69[5];
    v40 = v69[6];
    v41 = BYTE1(v69[6]);
    v42 = BYTE2(v69[6]);
    v43 = BYTE3(v69[6]);
    v44 = BYTE4(v69[6]);
    v45 = BYTE5(v69[6]);
    v46 = v69[7];
    v47 = v69[8];
  }

  else
  {
    if (qword_1EC3C5E08 != -1)
    {
      swift_once();
    }

    memcpy(v69, &qword_1EC3D33B0, 0x41uLL);
    v61 = v69[7];
    v59 = BYTE5(v69[6]);
    v60 = LOBYTE(v69[8]);
    v57 = BYTE3(v69[6]);
    v58 = BYTE4(v69[6]);
    v56 = BYTE2(v69[6]);
    v41 = BYTE1(v69[6]);
    v40 = v69[6];
    v39 = v69[4];
    v38 = v69[5];
    v36 = v69[2];
    v37 = v69[3];
    v34 = v69[0];
    v35 = v69[1];
    sub_1C97A6264(v69, v68);
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v47 = v60;
    v46 = v61;
  }

  v69[0] = v34;
  v69[1] = v35;
  v69[2] = v36;
  v69[3] = v37;
  v69[4] = v39;
  v69[5] = v38;
  LOBYTE(v69[6]) = v40;
  BYTE1(v69[6]) = v41;
  BYTE2(v69[6]) = v42;
  BYTE3(v69[6]) = v43;
  BYTE4(v69[6]) = v44;
  BYTE5(v69[6]) = v45;
  v69[7] = v46;
  LOBYTE(v69[8]) = v47;
  v48 = memcpy(v75, v69, sizeof(v75));
  v49 = v66[1];
  v68[0] = *v66;
  v68[1] = v49;
  v50 = v66[3];
  v68[2] = v66[2];
  v68[3] = v50;
  MEMORY[0x1EEE9AC00](v48);
  *&v55[-16] = v68;
  *&v55[-8] = v75;
  v51 = v67;

  v52 = sub_1C9805B68(sub_1C98AD708, &v55[-32], v65, v51);

  sub_1C97E8084(v69);
  if (!v21)
  {
    *&v68[0] = v52;

    sub_1C97A2CEC(&qword_1EC3CAD20);
    sub_1C97A2CEC(&unk_1EC3C8670);
    sub_1C97AE67C(&unk_1EC3CAE60, &qword_1EC3CAD20);
    v53 = v62;
    sub_1C9A91F68();

    sub_1C97AE67C(&unk_1EC3CC720, &unk_1EC3CAE50);
    v54 = v64;
    sub_1C9A91F28();

    (*(v63 + 8))(v53, v54);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98AC444()
{
  sub_1C97A2CEC(&qword_1EC3C80C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EE60;
  *(inited + 32) = sub_1C97FD158();
  *(inited + 40) = sub_1C97FD158();
  *(inited + 48) = sub_1C97FD158();
  v1 = sub_1C97E9314(inited);
  swift_setDeallocating();
  sub_1C985D6D4();
  v2 = objc_allocWithZone(type metadata accessor for SNDSPConfiguration());

  v3 = sub_1C98CDEB8(v1);
  v4 = type metadata accessor for SNDSPGraphLoader();
  v5 = sub_1C98CC23C(v3);
  if (v5)
  {
    v4 = v5;
    sub_1C9A695C8(v5);
    sub_1C9A69B8C(v4);
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  return v4;
}

id SNEstimateDirectionOfArrivalRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C98AC60C()
{
  result = sub_1C98AB604();
  if (v0)
  {
    return &off_1F4938E48;
  }

  return result;
}

id sub_1C98AC638()
{
  result = sub_1C98AC7FC();
  if (!v0)
  {
    v2 = result;
    v3 = sub_1C9A92478();
    v4 = sub_1C9A6AEE4(v2, v3);

    return v4;
  }

  return result;
}

void sub_1C98AC6A4(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1C9805398(a1, a2, v15);
  if (!v3)
  {
    v5 = type metadata accessor for SNDirectionOfArrivalResult();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___SNDirectionOfArrivalResult_impl];
    v8 = v15[3];
    *(v7 + 2) = v15[2];
    *(v7 + 3) = v8;
    v9 = v15[1];
    *v7 = v15[0];
    *(v7 + 1) = v9;
    v14.receiver = v6;
    v14.super_class = v5;
    v10 = objc_msgSendSuper2(&v14, sel_init);
    v11 = SNDirectionOfArrivalResult.timeRange.getter(v16);
    (a3)(v16[0], v16[1], v16[2], v11);
    v12 = sub_1C9A92F08();
    a3(v12);
    sub_1C9A92F18();
    SNDirectionOfArrivalResult.timeRange.setter(v17);
    sub_1C97A2CEC(&unk_1EC3C6E20);
    sub_1C97DAA28();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C9A9DF30;
    *(v13 + 32) = v10;
  }
}

id sub_1C98AC7FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1;
  }

  sub_1C98AD258();
  swift_allocError();
  return swift_willThrow();
}

void sub_1C98AC858()
{
  v3 = v0[3];
  v2 = v0[4];
  v4 = *v0;
  sub_1C97DAA28();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;

  v6 = sub_1C97C1C8C();

  if (!v1)
  {
    v7 = v0[2];
    v0[2] = v6;
  }
}

uint64_t sub_1C98AC91C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98AC444();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C98AC970()
{
  sub_1C98AC948();
  sub_1C97DAA28();

  return swift_deallocClassInstance();
}

uint64_t sub_1C98ACA80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1C98ACAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C98ACB28()
{
  result = qword_1EC3CAD00;
  if (!qword_1EC3CAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD00);
  }

  return result;
}

unint64_t sub_1C98ACB80()
{
  result = qword_1EC3CAD08;
  if (!qword_1EC3CAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD08);
  }

  return result;
}

unint64_t sub_1C98ACBD4(uint64_t a1)
{
  result = sub_1C97A68A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C98ACBFC(uint64_t a1)
{
  result = sub_1C97A67F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C98ACC24()
{
  result = qword_1EC3CAD28;
  if (!qword_1EC3CAD28)
  {
    sub_1C97AA4F0(&qword_1EC3CAD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD28);
  }

  return result;
}

uint64_t sub_1C98ACCA8()
{
  sub_1C98AE1E8();
  sub_1C97A2CEC(v2);
  sub_1C97DA940();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1C98ACD04()
{
  result = qword_1EC3C8630;
  if (!qword_1EC3C8630)
  {
    type metadata accessor for CombinePublisherFromXPCAdapter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C8630);
  }

  return result;
}

uint64_t sub_1C98ACD5C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A6064(a1, v2 + 16);
}

uint64_t sub_1C98ACE08(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A611C(a1, v2 + 16);
}

uint64_t sub_1C98ACEB4(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A61D4(a1, v2 + 16);
}

uint64_t sub_1C98ACF60(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A628C(a1, v2 + 16);
}

uint64_t sub_1C98AD00C(uint64_t a1, _OWORD *a2)
{
  *(v2 + 64) = a1;
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1C98AD0B4;

  return sub_1C98A6344(v2 + 16);
}

uint64_t sub_1C98AD0B4()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 64) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C98AD1AC(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A64D8(a1, v2 + 16);
}

unint64_t sub_1C98AD258()
{
  result = qword_1EC3CAD68;
  if (!qword_1EC3CAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAD68);
  }

  return result;
}

uint64_t sub_1C98AD2CC(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A6590(a1, v2 + 16);
}

uint64_t sub_1C98AD378(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A6648(a1, v2 + 16);
}

uint64_t sub_1C98AD424(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A6700(a1, v2 + 16);
}

unint64_t sub_1C98AD4D0()
{
  result = qword_1EC3CADF0;
  if (!qword_1EC3CADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CADF0);
  }

  return result;
}

unint64_t sub_1C98AD524()
{
  result = qword_1EC3CAE08;
  if (!qword_1EC3CAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAE08);
  }

  return result;
}

uint64_t sub_1C98AD5B0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981DF28;

  return sub_1C98A67B8(a1, v2 + 16);
}

uint64_t sub_1C98AD65C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C981D1F4;

  return sub_1C98A6870(a1, v2 + 16);
}

unint64_t sub_1C98AD724()
{
  result = qword_1EC3CAE80;
  if (!qword_1EC3CAE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3CAE80);
  }

  return result;
}

uint64_t sub_1C98AD768()
{
  sub_1C98AE1E8();
  v2(0);
  sub_1C97DA940();
  (*(v3 + 32))(v0, v1);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for AnalyzerDirectionOfArrival.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C98AD8B0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C98AD95C()
{
  result = qword_1EC3CAE88;
  if (!qword_1EC3CAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAE88);
  }

  return result;
}

unint64_t sub_1C98AD9B4()
{
  result = qword_1EC3CAE90;
  if (!qword_1EC3CAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAE90);
  }

  return result;
}

unint64_t sub_1C98ADA0C()
{
  result = qword_1EC3CAE98;
  if (!qword_1EC3CAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAE98);
  }

  return result;
}

unint64_t sub_1C98ADA64()
{
  result = qword_1EC3CAEA0;
  if (!qword_1EC3CAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAEA0);
  }

  return result;
}

unint64_t sub_1C98ADABC()
{
  result = qword_1EC3CAEA8;
  if (!qword_1EC3CAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAEA8);
  }

  return result;
}

unint64_t sub_1C98ADB14()
{
  result = qword_1EC3CAEB0;
  if (!qword_1EC3CAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAEB0);
  }

  return result;
}

unint64_t sub_1C98ADB6C()
{
  result = qword_1EC3CAEB8[0];
  if (!qword_1EC3CAEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CAEB8);
  }

  return result;
}

uint64_t sub_1C98ADC0C(unint64_t *a1)
{

  return sub_1C97AE67C(a1, v1);
}

uint64_t sub_1C98ADC64(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(a1 + 16) = *(v2 + 192);
  v4 = *(v1 + 32);
  *(v2 + 64) = *(v1 + 16);
  *(v2 + 80) = v4;

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98ADC90(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(a1 + 16) = *(v2 + 192);
  v4 = *(v1 + 32);
  *(v2 + 64) = *(v1 + 16);
  *(v2 + 80) = v4;

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98ADCBC(uint64_t a1)
{
  *(v1 + 280) = a1;
  *(a1 + 16) = *(v1 + 240);
  v3 = *(v1 + 48);
  *(v1 + 112) = *(v1 + 32);
  *(v1 + 128) = v3;

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98ADCE8(uint64_t result, uint64_t a2)
{
  v2[2] = v4;
  v2[3] = result;
  v2[4] = a2;
  v2[5] = v3;
  return result;
}

uint64_t sub_1C98ADD20()
{
  v0[9] = v1[2];
  v0[10] = v1[3];
  v0[11] = v1[4];
  v0[12] = v1[5];

  return swift_initStackObject();
}

uint64_t sub_1C98ADD8C()
{
}

uint64_t sub_1C98ADDB0(uint64_t a1)
{
  *(v1 + 248) = a1;
  v3 = *(v1 + 80);
  *(a1 + 16) = *(v1 + 64);
  *(a1 + 32) = v3;

  return type metadata accessor for XPCDecoder();
}

uint64_t sub_1C98ADDD4(uint64_t a1)
{
  *(v1 + 288) = a1;
  v3 = *(v1 + 128);
  *(a1 + 16) = *(v1 + 112);
  *(a1 + 32) = v3;

  return type metadata accessor for XPCDecoder();
}

uint64_t sub_1C98ADDF8(uint64_t a1)
{
  *(v1 + 240) = a1;
  v3 = *(v1 + 80);
  *(a1 + 16) = *(v1 + 64);
  *(a1 + 32) = v3;

  return type metadata accessor for XPCDecoder();
}

uint64_t sub_1C98ADE50(uint64_t result)
{
  *(v3 + 256) = result;
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C98ADE60()
{
}

uint64_t sub_1C98ADE84(uint64_t result)
{
  *(v3 + 248) = result;
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C98ADE94(uint64_t result)
{
  *(v3 + 296) = result;
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C98ADEB4()
{
  *(v0 + 192) = **(v0 + 232);

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98ADED4()
{
  *(v0 + 192) = **(v0 + 224);

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98ADEF4()
{
}

uint64_t sub_1C98ADF24()
{
  *(v0 + 240) = *(v0 + 16);

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98ADF40()
{
}

uint64_t sub_1C98ADF5C()
{
}

uint64_t sub_1C98ADFA8(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a3;
  a1[2] = a2;

  return type metadata accessor for XPCDecoder();
}

uint64_t sub_1C98ADFF0()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C98AE008()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C98AE020()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C98AE040()
{
}

uint64_t sub_1C98AE058()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C98AE070()
{
}

uint64_t sub_1C98AE088()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C98AE0A0(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
}

uint64_t sub_1C98AE0B8()
{

  return sub_1C98ACCA8();
}

uint64_t sub_1C98AE0D0(uint64_t a1)
{
  *(a1 + 16) = *v1;
  v4 = v1[2];
  *(v2 + 16) = v1[1];
  *(v2 + 32) = v4;

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98AE15C()
{

  return swift_setDeallocating();
}

uint64_t sub_1C98AE178()
{
}

uint64_t sub_1C98AE19C()
{

  return swift_setDeallocating();
}

uint64_t sub_1C98AE1B4()
{

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98AE1D0()
{

  return type metadata accessor for XPCProxyDecoder();
}

uint64_t sub_1C98AE214()
{
  *(v0 + 112) = **(v0 + 152);

  return type metadata accessor for XPCDataDecoder();
}

uint64_t sub_1C98AE234()
{
}

uint64_t sub_1C98AE254()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C98AE274()
{

  return sub_1C97D9AA4(v0 + 16);
}

uint64_t sub_1C98AE2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97AE9DC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  return (*(v5 + 32))(a2, v9, a1);
}

uint64_t sub_1C98AE39C()
{
  sub_1C9A93CC8();
  sub_1C978C430(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C98AE3DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C98AE42C(a1, a2);
  return v4;
}

uint64_t *sub_1C98AE42C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v2[16] = 0;
  v2[14] = sub_1C9A91D78();
  *(v2 + 120) = 0;
  v2[16] = 0;

  sub_1C9831528();
  v7 = *(v6 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v2 + v7, a2, AssociatedTypeWitness);
  sub_1C9831528();
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(v9 + 152), a1);
  return v2;
}

uint64_t sub_1C98AE564(uint64_t a1)
{
  sub_1C98B10F8();
  v3 = *(v1 + 112);
  sub_1C9A91D88();
  if (sub_1C9A91D68())
  {
    goto LABEL_10;
  }

  sub_1C9A91D88();
  v4 = sub_1C9A91D68();
  v5 = sub_1C9A91D88();
  if (v4)
  {
LABEL_9:
    *(v1 + 112) = v5;
LABEL_10:
    swift_endAccess();
    return sub_1C98AE69C();
  }

  result = sub_1C9A91D68();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v3 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3 + a1;
  if (__OFADD__(v3, a1))
  {
LABEL_7:
    v5 = sub_1C9A91D88();
    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C98AE61C()
{
  if (!*(v0 + 120))
  {
    if (*(v0 + 128))
    {

      sub_1C9A92A28();
    }

    *(v0 + 120) = 1;

    return sub_1C98AE69C();
  }

  return result;
}

uint64_t sub_1C98AE69C()
{
  sub_1C9831528();
  v1 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  result = MEMORY[0x1EEE9AC00](v2);
  if (!*(v0 + 128))
  {
    v4 = sub_1C9A92988();
    sub_1C98B1074(v4);
    type metadata accessor for AsyncSequencePublisher.Subscription.Impl();
    WitnessTable = swift_getWitnessTable();
    v6 = swift_allocObject();
    v6[2] = v0;
    v6[3] = WitnessTable;
    v6[4] = v0;
    swift_retain_n();
    sub_1C98B1058();
    sub_1C99A9128();
    *(v0 + 128) = v7;
  }

  return result;
}

uint64_t sub_1C98AE7D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C98AE864();
}

uint64_t sub_1C98AE864()
{
  v1[22] = v0;
  sub_1C98B10B0();
  v1[23] = v2;
  v3 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v3);
  v1[24] = swift_task_alloc();
  sub_1C98B10B0();
  v1[25] = *(v4 + 88);
  sub_1C97AE9DC();
  v1[26] = v5;
  v1[27] = swift_task_alloc();
  sub_1C98B10B0();
  v1[28] = *(v6 + 96);
  sub_1C98B10B0();
  v1[29] = *(v7 + 80);
  v1[30] = sub_1C98B10D8();
  sub_1C97AE9DC();
  v1[31] = v8;
  v1[32] = swift_task_alloc();
  v9 = sub_1C9A93258();
  v1[33] = v9;
  v1[34] = *(v9 - 8);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v10 = sub_1C98B10D8();
  v1[37] = v10;
  v11 = *(v10 - 8);
  v1[38] = v11;
  v1[39] = *(v11 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C98AEB0C, v0, 0);
}

uint64_t sub_1C98AEB0C()
{
  v1 = *(v0 + 176);
  if (*(v1 + 120))
  {
    if (*(v1 + 120) == 1)
    {
      v2 = *(v0 + 320);
      v3 = *(v0 + 328);
      v4 = *(v0 + 304);
      v5 = *(v0 + 296);
      v32 = *(v0 + 232);
      v33 = *(v0 + 224);
      v31 = *(v0 + 200);
      v30 = *(v0 + 184);
      sub_1C9831528();
      v7 = *(v6 + 144);
      swift_beginAccess();
      v8 = *(v4 + 16);
      v8(v3, v1 + v7, v5);
      sub_1C97A2CEC(&qword_1EC3CB0C0);
      swift_allocObject();
      v9 = sub_1C982D058();
      *(v0 + 368) = v9;
      v10 = sub_1C9A92988();
      sub_1C98B1074(v10);
      v8(v2, v3, v5);
      v11 = (*(v4 + 80) + 72) & ~*(v4 + 80);
      v12 = swift_allocObject();
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 4) = v32;
      *(v12 + 5) = v31;
      *(v12 + 6) = v33;
      *(v12 + 7) = *(v30 + 104);
      *(v12 + 8) = v9;
      (*(v4 + 32))(&v12[v11], v2, v5);

      sub_1C98B1058();
      sub_1C99A9128();
      *(v0 + 376) = v13;
      sub_1C9A92A28();
      v14 = swift_task_alloc();
      *(v0 + 384) = v14;
      *v14 = v0;
      v14[1] = sub_1C98AF3F0;
      sub_1C98B10BC();

      return MEMORY[0x1EEE6DA40]();
    }

LABEL_8:
    *(v1 + 128) = 0;

    sub_1C98B1018();

    sub_1C97DA91C();
    sub_1C98B10BC();

    __asm { BRAA            X1, X16 }
  }

  swift_beginAccess();
  sub_1C9A91D78();
  v16 = sub_1C9A91D68();
  *(v0 + 392) = v16 & 1;
  if (v16)
  {
    v1 = *(v0 + 176);
    goto LABEL_8;
  }

  v19 = *(v0 + 336);
  v20 = *(v0 + 296);
  v21 = *(v0 + 304);
  v22 = *(v0 + 176);
  v23 = *(*v22 + 144);
  *(v0 + 344) = v23;
  swift_beginAccess();
  (*(v21 + 16))(v19, v22 + v23, v20);
  swift_getAssociatedConformanceWitness();
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  *v24 = v0;
  v24[1] = sub_1C98AEEE4;
  sub_1C98B10BC();

  return MEMORY[0x1EEE6D8C8](v25, v26, v27);
}

uint64_t sub_1C98AEEE4()
{
  sub_1C97AA95C();
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = sub_1C98AF5D8;
  }

  else
  {
    v4 = sub_1C98AF00C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C98AF00C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v42 = *(v0 + 240);
  v9 = *(v0 + 176);
  sub_1C98B10F8();
  (*(v4 + 24))(v9 + v2, v1, v3);
  swift_endAccess();
  (*(v8 + 16))(v6, v5, v7);
  if (sub_1C97ABF20(v6, 1, v42) != 1)
  {
    v17 = *(v0 + 176);
    (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 280), *(v0 + 240));
    sub_1C98B10F8();
    v18 = *(v17 + 112);
    sub_1C9A91D88();
    if (sub_1C9A91D68())
    {
LABEL_10:
      v22 = *(v0 + 208);
      v21 = *(v0 + 216);
      v23 = *(v0 + 200);
      v24 = *(v0 + 176);
      swift_endAccess();
      (*(v22 + 16))(v21, &v24[*(*v24 + 152)], v23);
      v25 = sub_1C9A91D28();
      (*(v22 + 8))(v21, v23);
      sub_1C98B10F8();
      v26 = *(v24 + 14);
      sub_1C9A91D88();
      if (sub_1C9A91D68())
      {
LABEL_19:
        v29 = *(v0 + 336);
        v30 = *(v0 + 296);
        v31 = *(v0 + 304);
        v32 = *(v0 + 288);
        v33 = *(v0 + 264);
        v34 = *(v0 + 272);
        v36 = *(v0 + 248);
        v35 = *(v0 + 256);
        v37 = *(v0 + 240);
        swift_endAccess();
        (*(v36 + 8))(v35, v37);
        (*(v34 + 8))(v32, v33);
        (*(v31 + 8))(v29, v30);
        goto LABEL_20;
      }

      sub_1C9A91D88();
      v27 = sub_1C9A91D68();
      v28 = sub_1C9A91D88();
      if (v27)
      {
LABEL_18:
        *(*(v0 + 176) + 112) = v28;
        goto LABEL_19;
      }

      result = sub_1C9A91D68();
      if (result)
      {
LABEL_16:
        v28 = sub_1C9A91D88();
        goto LABEL_18;
      }

      if (((v26 | v25) & 0x8000000000000000) == 0)
      {
        v28 = v26 + v25;
        if (!__OFADD__(v26, v25))
        {
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_28:
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_1C9A91D88();
    result = sub_1C9A91D68();
    if (result)
    {
      v20 = sub_1C9A91D88();
LABEL_9:
      *(*(v0 + 176) + 112) = v20;
      goto LABEL_10;
    }

    if (v18 < 0)
    {
      __break(1u);
    }

    else if (v18)
    {
      v20 = v18 - 1;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_27;
  }

  v10 = *(v0 + 304);
  v41 = *(v0 + 296);
  v43 = *(v0 + 336);
  v40 = *(v0 + 288);
  v11 = *(v0 + 264);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 176);
  v16 = *(*(v0 + 272) + 8);
  v16(*(v0 + 280), v11);
  v15[120] = 2;
  (*(v13 + 16))(v12, &v15[*(*v15 + 152)], v14);
  *(v0 + 168) = 0;
  sub_1C9A91D08();
  (*(v13 + 8))(v12, v14);
  v16(v40, v11);
  (*(v10 + 8))(v43, v41);
LABEL_20:
  v38 = *(v0 + 392);
  sub_1C98B1094();
  if ((v38 & 1) == 0)
  {
    sub_1C98AE69C();
  }

  sub_1C98B1018();

  sub_1C97DA91C();

  return v39();
}

uint64_t sub_1C98AF3F0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C98AF4F0, v2, 0);
}

uint64_t sub_1C98AF4F0()
{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[22];

  (*(v3 + 8))(v1, v2);
  *(v4 + 120) = 2;
  sub_1C98B1094();
  sub_1C98B1018();

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C98AF5D8()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  (*(*(v0 + 304) + 8))(*(v0 + 336), *(v0 + 296));
  v5[120] = 2;
  (*(v3 + 16))(v2, &v5[*(*v5 + 152)], v4);
  *(v0 + 160) = v1;
  sub_1C9A91D08();

  (*(v3 + 8))(v2, v4);
  LOBYTE(v2) = *(v0 + 392);
  sub_1C98B1094();
  if ((v2 & 1) == 0)
  {
    sub_1C98AE69C();
  }

  sub_1C98B1018();

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C98AF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a5;
  v8[5] = swift_getAssociatedTypeWitness();
  v9 = sub_1C9A93258();
  v8[6] = v9;
  v8[7] = *(v9 - 8);
  v8[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[9] = AssociatedTypeWitness;
  v8[10] = *(AssociatedTypeWitness - 8);
  v8[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[12] = v11;
  *v11 = v8;
  v11[1] = sub_1C98AF8EC;

  return sub_1C982A254();
}

uint64_t sub_1C98AF8EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C98AF9D8, 0, 0);
}

uint64_t sub_1C98AF9D8()
{
  sub_1C97AA95C();
  (*(v0[10] + 16))(v0[11], v0[2], v0[9]);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1C98AFAC4;
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x1EEE6D8C8](v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_1C98AFAC4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1C98AFC60;
  }

  else
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
    v6 = sub_1C98AFBE4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C98AFBE4()
{
  sub_1C97AA884();
  (*(v0[10] + 8))(v0[11], v0[9]);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98AFC60()
{
  sub_1C97AA884();
  v1 = v0[8];
  v2 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_1C97ACC50(v1, 1, 1, v2);
  (*(v0[7] + 8))(v0[8], v0[6]);

  sub_1C97DA91C();

  return v3();
}

char *sub_1C98AFD10()
{
  v1 = *v0;

  sub_1C9831528();
  v3 = *(v2 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v3], AssociatedTypeWitness);
  sub_1C9831528();
  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(v5 + 152)]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C98AFE1C()
{
  sub_1C98AFD10();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C98AFE48(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C98AFE98(a1, a2);
  return v4;
}

uint64_t *sub_1C98AFE98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = *v2;
  v5 = (*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9DC();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *(v4 + 88);
  sub_1C97AE9DC();
  v16 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  *&v20 = v6;
  *(&v20 + 1) = *v5;
  *&v21 = v7;
  *(&v21 + 1) = v14;
  v28 = v21;
  v29 = v20;
  type metadata accessor for AsyncSequencePublisher.Subscription.Impl();
  v22 = v26;
  (*(v16 + 16))(v19, v26, v14);
  v23 = v27;
  (*(v10 + 16))(v13, v27, AssociatedTypeWitness);
  v24 = sub_1C98AE3DC(v19, v13);
  (*(v10 + 8))(v23, AssociatedTypeWitness);
  (*(v16 + 8))(v22, v14);
  v3[2] = v24;
  return v3;
}

uint64_t sub_1C98B00E0(uint64_t a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v3);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = sub_1C9A92988();
  sub_1C97ACC50(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  sub_1C98B1058();
  sub_1C99A9128();
}

uint64_t sub_1C98B01B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C98B01D8, 0, 0);
}

uint64_t sub_1C98B01D8(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  *(v1 + 32) = v2;
  return sub_1C98B1068(a1, v2);
}

uint64_t sub_1C98B01F4()
{
  sub_1C97AA884();
  sub_1C98AE564(*(v0 + 24));
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98B024C()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v1);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C9A92988();
  sub_1C98B1074(v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;

  sub_1C98B1058();
  sub_1C99A9128();
}

uint64_t sub_1C98B0330(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 16);
  *(v1 + 24) = v2;
  return sub_1C98B1068(a1, v2);
}

uint64_t sub_1C98B034C()
{
  sub_1C97AA884();
  sub_1C98AE61C();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C98B03C4()
{
  sub_1C98B03A4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C98B0410()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

_BYTE *sub_1C98B0538(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C98B061C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C98B068C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return sub_1C97ABF20(a1, v5, v4);
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
        return sub_1C97ABF20(a1, v5, v4);
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

void sub_1C98B07C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

          sub_1C97ACC50(a1, a2, v7, v6);
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

uint64_t sub_1C98B0A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v7 = *(a2 + 16);
  sub_1C97AE9DC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  v15 = *(v14 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  sub_1C97AE9DC();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AEAD8();
  v25 = v24 - v23;
  v30[0] = v7;
  v30[1] = a3;
  v30[2] = v15;
  v31 = a4;
  v26 = type metadata accessor for AsyncSequencePublisher.Subscription();
  (*(v21 + 16))(v25, a1, a3);
  (*(v9 + 16))(v13, v29[2], v7);
  sub_1C9A92A68();
  v27 = sub_1C98AFE48(v25, v19);
  v31 = v26;
  WitnessTable = swift_getWitnessTable();
  v30[0] = v27;
  sub_1C9A91D18();
  return sub_1C97A592C(v30);
}

uint64_t sub_1C98B0CB4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C97AA858(v3);
  *v4 = v5;
  v6 = sub_1C98B1040(v4);

  return sub_1C98B01B8(v6, v7, v8, v2, v1);
}

uint64_t sub_1C98B0D5C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v5 = sub_1C98B1040(v3);

  return sub_1C98B0310(v5, v6, v7, v1);
}

uint64_t sub_1C98B0DF4(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97DACE4(AssociatedTypeWitness);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C97DA5D0;

  return sub_1C98AF730(a1, v10, v11, v12, v1 + v9, v5, v16, v6);
}

uint64_t sub_1C98B0F34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C98B0F80()
{
  sub_1C97AA95C();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  sub_1C98B1040(v1);

  return sub_1C98AE7D4();
}

uint64_t sub_1C98B1018()
{
}

uint64_t sub_1C98B1074(uint64_t a1)
{

  return sub_1C97ACC50(v1, 1, 1, a1);
}

uint64_t sub_1C98B1094()
{
  *(*(v0 + 176) + 128) = 0;
}

uint64_t sub_1C98B10D8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1C98B10F8()
{

  return swift_beginAccess();
}

uint64_t sub_1C98B1110()
{
  swift_beginAccess();
  nullsub_1(v0 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}

double TimeRange.asCMTimeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 16) = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v2;
  return result;
}

uint64_t sub_1C98B11BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = a2;
    do
    {
      v6 = v4 == -1;
      if (v4 == -1 && v5 == 0x8000000000000000)
      {
        __break(1u);
        goto LABEL_24;
      }

      v8 = v4;
      v4 = v5 % v4;
      v5 = v8;
    }

    while (v4);
    if (a4 == 0x8000000000000000 && v8 == -1)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
LABEL_14:
    if (!a2)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v6 = a2 == -1;
    v8 = a2;
  }

  if (a2 == 0x8000000000000000 && v6)
  {
    goto LABEL_29;
  }

  v10 = a4 / v8;
  if ((a2 * (a4 / v8)) >> 64 != (a2 * (a4 / v8)) >> 63)
  {
    goto LABEL_25;
  }

  v11 = result * v10;
  if ((result * v10) >> 64 != (result * v10) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = a2 / v8;
  v13 = a3 * (a2 / v8);
  if ((a3 * v12) >> 64 != v13 >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = v11 + v13;
  if (__OFADD__(v11, v13))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98B12C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x68636F7065 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

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

uint64_t sub_1C98B1420(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6C616373656D6974;
      break;
    case 2:
      result = 0x7367616C66;
      break;
    case 3:
      result = 0x68636F7065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C98B149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98B12C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98B14C4(uint64_t a1)
{
  v2 = sub_1C98B16E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98B1500(uint64_t a1)
{
  v2 = sub_1C98B16E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Time.encode(to:)(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CB0C8);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  LODWORD(v8) = *(v1 + 12);
  v13 = *(v1 + 8);
  v12 = v8;
  v11 = *(v1 + 16);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98B16E4();
  sub_1C9A93DD8();
  v17 = 0;
  sub_1C9802174();
  sub_1C9A93A38();
  if (!v2)
  {
    v16 = 1;
    sub_1C9802174();
    sub_1C9A93A28();
    v15 = 2;
    sub_1C9802174();
    sub_1C9A93A58();
    v14 = 3;
    sub_1C9802174();
    sub_1C9A93A38();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C98B16E4()
{
  result = qword_1EC3CB0D0;
  if (!qword_1EC3CB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB0D0);
  }

  return result;
}

uint64_t Time.hash(into:)()
{
  v1 = v0[2];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return MEMORY[0x1CCA919B0](v1);
}

uint64_t Time.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  return sub_1C9A93D18();
}

uint64_t Time.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CB0D8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98B16E4();
  sub_1C9802210();
  if (!v2)
  {
    sub_1C98B2748();
    v6 = sub_1C9A93918();
    sub_1C98B2748();
    v7 = sub_1C9A93908();
    sub_1C98B2748();
    v12 = sub_1C9A93938();
    sub_1C98B2748();
    v9 = sub_1C9A93918();
    v10 = sub_1C97BE31C();
    v11(v10);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 12) = v12;
    *(a2 + 16) = v9;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C98B19F8()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  return sub_1C9A93D18();
}

BOOL static TimeRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40);
}

uint64_t sub_1C98B1AE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C98B1BA4(char a1)
{
  if (a1)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1C98B1BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98B1AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98B1C08(uint64_t a1)
{
  v2 = sub_1C98B1E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98B1C44(uint64_t a1)
{
  v2 = sub_1C98B1E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeRange.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C97A2CEC(&qword_1EC3CB0E0);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *v2;
  v12 = v2[2];
  v11 = v2[3];
  v13 = v2[4];
  v17 = v2[5];
  v18 = v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98B1E18();
  sub_1C9A93DD8();
  v21 = v10;
  v22 = v2[1];
  v23 = v12;
  v20 = 0;
  sub_1C97BCB34();
  sub_1C98B2784();
  v14 = v19;
  sub_1C9A93A18();
  if (!v14)
  {
    v21 = v18;
    v22 = v13;
    v23 = v17;
    v20 = 1;
    sub_1C98B2784();
    sub_1C9A93A18();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C98B1E18()
{
  result = qword_1EC3CB0E8;
  if (!qword_1EC3CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB0E8);
  }

  return result;
}

uint64_t TimeRange.hash(into:)()
{
  sub_1C97CA620();
  MEMORY[0x1CCA919B0]();
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v0);
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  return MEMORY[0x1CCA919B0](v2);
}

uint64_t TimeRange.hashValue.getter()
{
  v4 = *v0;
  sub_1C97CA620();
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v4);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  return sub_1C9A93D18();
}

uint64_t TimeRange.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3CB0F0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C98B1E18();
  sub_1C9802210();
  if (!v2)
  {
    sub_1C97BCA8C();
    sub_1C98B2758();
    sub_1C98B2758();
    v6 = sub_1C97BE31C();
    v7(v6);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v9;
    a2[4] = v10;
    a2[5] = v11;
  }

  return sub_1C97A592C(a1);
}

unint64_t sub_1C98B2188()
{
  result = qword_1EC3CB0F8;
  if (!qword_1EC3CB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB0F8);
  }

  return result;
}

unint64_t sub_1C98B21E0()
{
  result = qword_1EC3CB100;
  if (!qword_1EC3CB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Time.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C98B2414()
{
  result = qword_1EC3CB108;
  if (!qword_1EC3CB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB108);
  }

  return result;
}

unint64_t sub_1C98B246C()
{
  result = qword_1EC3CB110;
  if (!qword_1EC3CB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB110);
  }

  return result;
}

unint64_t sub_1C98B24C4()
{
  result = qword_1EC3CB118;
  if (!qword_1EC3CB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB118);
  }

  return result;
}

unint64_t sub_1C98B251C()
{
  result = qword_1EC3CB120;
  if (!qword_1EC3CB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB120);
  }

  return result;
}

unint64_t sub_1C98B2574()
{
  result = qword_1EC3CB128;
  if (!qword_1EC3CB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB128);
  }

  return result;
}

unint64_t sub_1C98B25CC()
{
  result = qword_1EC3CB130;
  if (!qword_1EC3CB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CB130);
  }

  return result;
}

uint64_t sub_1C98B2620()
{
  sub_1C98B279C();
  if (!v5)
  {
    goto LABEL_6;
  }

  v2 = *(v3 + 12);
  result = sub_1C98B11BC(*v3, *(v3 + 8), *v4, *(v4 + 8));
  if (v7 >= 0xFFFFFFFF80000000)
  {
    if (v7 <= 0x7FFFFFFF)
    {
LABEL_7:
      *v0 = result;
      *(v0 + 8) = v7;
      *(v0 + 12) = v2;
      *(v0 + 16) = v1;
      return result;
    }

    __break(1u);
LABEL_6:
    result = sub_1C98B27B0();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1C98B2694()
{
  sub_1C98B279C();
  if (!v5)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(0, *v4))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v3 + 12);
    v6 = sub_1C98B11BC(*v3, *(v3 + 8), -*v4, *(v4 + 8));
    if (v7 >= 0xFFFFFFFF80000000)
    {
      if (v7 <= 0x7FFFFFFF)
      {
LABEL_8:
        *v0 = v6;
        *(v0 + 8) = v7;
        *(v0 + 12) = v2;
        *(v0 + 16) = v1;
        return;
      }

      __break(1u);
LABEL_7:
      v6 = sub_1C98B27B0();
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t *sub_1C98B2718@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result * a2;
  if ((*result * a2) >> 64 == v3 >> 63)
  {
    v4 = result[2];
    *a3 = v3;
    a3[1] = result[1];
    a3[2] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C98B2758()
{

  return sub_1C9A938F8();
}

void sub_1C98B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  v32 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  (*(v25 + 16))(v27, v25);
  (*(v23 + 40))(v29, AssociatedTypeWitness, v23);
  (*(v32 + 8))(v35, AssociatedTypeWitness);
  sub_1C97AEB5C();
}

void sub_1C98B299C()
{
  swift_getAssociatedTypeWitness();
  sub_1C9835358();
  sub_1C9835358();
  sub_1C9835358();
  sub_1C98B5E40();
}

uint64_t sub_1C98B2AB0()
{

  v0 = sub_1C97DB3E0();

  return v0;
}

uint64_t sub_1C98B2B18(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v7 = v2[3];
  v5[3] = v2[2];
  v5[4] = v7;
  v12[0] = a1;
  v12[1] = a2;
  v10[2] = sub_1C98B7280;
  v10[3] = v5;
  v10[4] = v12;
  sub_1C97E82EC(v2, v11, &qword_1EC3C78E8);
  v8 = sub_1C97E3314(a1, a2, sub_1C98702BC, v10);

  return v8;
}

void sub_1C98B2C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1C97AE9DC();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = (*(v35 + 16))(v36, v35);
  (*(v30 + 16))(v34, v20, v26);
  v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  (*(v30 + 32))(v39 + v38, v34, v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1C97AEA9C();
  v42 = sub_1C97AEA9C();
  v43 = sub_1C97AEA9C();
  v47[2] = AssociatedTypeWitness;
  v47[3] = v41;
  v47[4] = v42;
  v47[5] = v43;
  v44 = type metadata accessor for SharedSoundPrintK.Configuration();
  v45 = type metadata accessor for SharedSoundPrintK.Instance();
  WitnessTable = swift_getWitnessTable();
  sub_1C99D6B34(v28, v37, sub_1C98B70A8, v39, v44, v45, WitnessTable, &a10);

  sub_1C97AEB5C();
}

void sub_1C98B2E20()
{
  sub_1C97AEB94();
  v3 = sub_1C98B7750();
  v4 = (*(v2 + 16))(v3, v2);
  v5 = sub_1C98BBF7C(v4);
  v7 = v6;

  if (!v1)
  {
    sub_1C97AA878();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_1C97AA878();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    *(v9 + 24) = v2;
    sub_1C97A7DFC();
    v10 = swift_allocObject();
    v10[2] = sub_1C98B75D0;
    v10[3] = v9;
    v10[4] = sub_1C98B75B8;
    v10[5] = v8;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C98B75A0;
    *(v11 + 24) = v10;
    swift_unknownObjectRetain();

    v12 = sub_1C98B7774();
    sub_1C97A2CEC(v12);
    sub_1C97A2CEC(&qword_1EC3CB170);
    sub_1C98B7600(&qword_1EC3CB178);
    sub_1C98B7700();
    sub_1C9A92048();
  }

  sub_1C97AEB5C();
}

void sub_1C98B2FA8()
{
  sub_1C97AEB94();
  v3 = sub_1C98B7750();
  v4 = (*(v2 + 16))(v3, v2);
  v5 = sub_1C98BBF7C(v4);
  v7 = v6;

  if (!v1)
  {
    sub_1C97AA878();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    sub_1C97AA878();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    *(v9 + 24) = v2;
    sub_1C97A7DFC();
    v10 = swift_allocObject();
    v10[2] = sub_1C98B75D0;
    v10[3] = v9;
    v10[4] = sub_1C98B75B8;
    v10[5] = v8;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C98B75A0;
    *(v11 + 24) = v10;
    swift_unknownObjectRetain();

    v12 = sub_1C98B7774();
    sub_1C97A2CEC(v12);
    sub_1C97A2CEC(&qword_1EC3CB170);
    sub_1C98B7600(qword_1EC3C4AF8);
    sub_1C98B7700();
    sub_1C9A92048();
  }

  sub_1C97AEB5C();
}

void sub_1C98B3130(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v7 = sub_1C98BBF7C(v6);
  v9 = v8;

  if (!v2)
  {
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1C97A7DFC();
    v12 = swift_allocObject();
    v12[2] = sub_1C98B75D0;
    v12[3] = v11;
    v12[4] = sub_1C98B75B8;
    v12[5] = v10;
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C98B75A0;
    *(v13 + 24) = v12;
    swift_unknownObjectRetain();

    sub_1C97A2CEC(&qword_1EC3CB180);
    sub_1C97A2CEC(&qword_1EC3CB170);
    sub_1C97AE9EC();
    sub_1C97AE67C(v14, &qword_1EC3CB180);
    sub_1C9A92048();
  }
}

void sub_1C98B32F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v7 = sub_1C98BBF7C(v6);
  v9 = v8;

  if (!v2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    v12[2] = sub_1C9834F38;
    v12[3] = v11;
    v12[4] = sub_1C9834F1C;
    v12[5] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C98B706C;
    *(v13 + 24) = v12;
    swift_unknownObjectRetain();

    sub_1C97A2CEC(&qword_1EC3C8A20);
    sub_1C97A2CEC(&qword_1EC3CB170);
    sub_1C97AE67C(&qword_1EC3C8A48, &qword_1EC3C8A20);
    sub_1C9A92048();
  }
}

void sub_1C98B3568()
{
  sub_1C97AEB48();
  swift_getWitnessTable();
  sub_1C98B772C();
}

BOOL sub_1C98B35FC(uint64_t a1, uint64_t a2)
{
  if ((sub_1C9A92438() & 1) != 0 && (v4 = type metadata accessor for SharedSoundPrintK.Configuration(), *(a1 + *(v4 + 52)) == *(a2 + *(v4 + 52))))
  {
    return *(a1 + *(v4 + 56)) == *(a2 + *(v4 + 56));
  }

  else
  {
    return 0;
  }
}

void sub_1C98B3698()
{
  sub_1C97AEB94();
  v13 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v14 = *(v4 + 32);
  v15 = v5;
  v16 = v5;
  v17 = v14;
  type metadata accessor for SharedSoundPrintK.Configuration.CodingKeys();
  sub_1C98B762C();
  v6 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  sub_1C97A5A8C(v3, v3[3]);
  sub_1C9A93DD8();
  LOBYTE(v16) = 0;
  sub_1C9A93A18();
  if (!v1)
  {
    sub_1C98353B4(1);
    sub_1C98353B4(2);
  }

  (*(v8 + 8))(v11, v6);
  sub_1C97AEB5C();
}

uint64_t sub_1C98B3818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for SharedSoundPrintK.Configuration();
  *(a5 + *(result + 52)) = a2;
  *(a5 + *(result + 56)) = a3;
  return result;
}

void sub_1C98B38C8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = v11;
  sub_1C97AE9DC();
  v35 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v41 = v15 - v14;
  type metadata accessor for SharedSoundPrintK.Configuration.CodingKeys();
  sub_1C98B762C();
  sub_1C9A93978();
  sub_1C97AE9C8();
  v37 = v17;
  v38 = v16;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v40 = v8;
  v42 = v8;
  v43 = v6;
  v36 = v6;
  v44 = v4;
  v45 = v2;
  v21 = type metadata accessor for SharedSoundPrintK.Configuration();
  sub_1C97AE9C8();
  v33 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  sub_1C97A5A8C(v10, v10[3]);
  v39 = v20;
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v10);
  }

  else
  {
    v26 = v25;
    v27 = v35;
    LOBYTE(v42) = 0;
    v28 = v40;
    v29 = v38;
    sub_1C9A938F8();
    (*(v27 + 32))(v26, v41, v28);
    *&v26[*(v21 + 52)] = sub_1C9835400(1);
    v30 = sub_1C9835400(2);
    (*(v37 + 8))(v39, v29);
    *&v26[*(v21 + 56)] = v30;
    v31 = v33;
    (*(v33 + 16))(v34, v26, v21);
    sub_1C97A592C(v10);
    (*(v31 + 8))(v26, v21);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C98B3C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1C9807FAC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1C9807FAC(a2, a4);
}

uint64_t sub_1C98B3C70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001C9AD7ED0 == a2;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C9AD7F10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

unint64_t sub_1C98B3D44(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1C98B3D7C()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(qword_1EC3CB1B8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C98B7774();
  sub_1C97A5A8C(v2, v3);
  sub_1C98B7154();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C98B71A8(&qword_1EC3CE700);
  sub_1C98B76A8();
  if (!v0)
  {
    sub_1C98B76A8();
  }

  v4 = sub_1C98B7720();
  v5(v4);
  sub_1C97AEB5C();
}

void sub_1C98B3EE8()
{
  sub_1C97C80D0();

  sub_1C97C80D0();
}

uint64_t sub_1C98B3F28()
{
  sub_1C9A93CC8();
  sub_1C97C80D0();
  sub_1C97C80D0();
  return sub_1C9A93D18();
}

void sub_1C98B3F80()
{
  sub_1C97AEB94();
  v1 = v0;
  v2 = sub_1C97A2CEC(&qword_1EC3CB1A8);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v8 - v6;
  sub_1C97A5A8C(v1, v1[3]);
  sub_1C98B7154();
  sub_1C9A93DB8();
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  v9 = 0;
  sub_1C98B71A8(&qword_1EC3CBB00);
  sub_1C98B7678();
  v9 = 1;
  sub_1C98B7678();
  (*(v4 + 8))(v7, v2);
  sub_1C97A592C(v1);
  sub_1C97AEB5C();
}

uint64_t sub_1C98B4144(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C98B4198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C98B4240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98B3C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98B4268(uint64_t a1)
{
  v2 = sub_1C98B7154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98B42A4(uint64_t a1)
{
  v2 = sub_1C98B7154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C98B42E0(void *a1@<X8>)
{
  sub_1C98B3F80();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C98B4338()
{
  sub_1C9A93CC8();
  sub_1C98B3EE8();
  return sub_1C9A93D18();
}

uint64_t sub_1C98B4394()
{
  v1 = sub_1C97A2CEC(&qword_1EC3CB190);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1C97AE650;
  v8[3] = v0;
  v8[4] = v7;

  sub_1C97A2CEC(&qword_1EC3CB198);
  sub_1C97AE9EC();
  sub_1C97AE67C(v9, &qword_1EC3CB198);
  sub_1C98B7700();
  sub_1C9A91EF8();
  sub_1C97AE67C(&qword_1EC3CB1A0, &qword_1EC3CB190);
  v10 = sub_1C9A91F28();
  (*(v3 + 8))(v6, v1);
  return v10;
}

_DWORD *sub_1C98B4588(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C97ABF20(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C97ABF20(result, v5, v4);
}

void sub_1C98B4694(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C97ACC50(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}