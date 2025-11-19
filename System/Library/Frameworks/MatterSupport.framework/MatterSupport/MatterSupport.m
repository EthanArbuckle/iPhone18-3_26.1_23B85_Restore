uint64_t sub_239825B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_239825C0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_239825CB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_239825CE8()
{
  v1 = (type metadata accessor for MatterAddDeviceRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 16);

  v6 = *(v0 + v3 + 24);

  v7 = v0 + v3 + v1[9];
  type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v10 = sub_239856AF4();
        (*(*(v10 - 8) + 8))(v7, v10);
        break;
      case 6:
        v11 = *(v7 + 8);

        break;
      case 7:
        sub_2398282D8(*v7, *(v7 + 8));
        break;
    }
  }

  else if (EnumCaseMultiPayload <= 2)
  {
    v9 = *v7;
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12);

  v15 = *(v0 + v13);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_239825E80()
{
  v1 = sub_239856B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_239825F4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_239825F9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_239825FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2398260B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_239826188()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2398261D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_239826210()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.defaultSystemNetwork.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2398599A0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.network(ssid:credentials:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_239826330(a1, a2);

  return sub_239826330(a3, a4);
}

uint64_t sub_239826330(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_239826384()
{
  if (*v0)
  {
    result = 0x6B726F7774656ELL;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2398263C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000023985CC30 == a2 || (sub_239857054() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_239857054();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2398264B8(uint64_t a1)
{
  v2 = sub_2398288E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398264F4(uint64_t a1)
{
  v2 = sub_2398288E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239826530(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v31 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C298, &qword_239859F90);
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v28 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2A0, &qword_239859F98);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2A8, &qword_239859FA0);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v25 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398288E0();
  v20 = v31;
  sub_239857144();
  if (v20 >> 60 == 15)
  {
    LOBYTE(v33) = 0;
    sub_2398289DC();
    sub_239856FA4();
    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    LOBYTE(v33) = 1;
    sub_239828934();
    v22 = v28;
    sub_239856FA4();
    v33 = v27;
    v34 = v20;
    v35 = 0;
    sub_239828988();
    v23 = v30;
    v24 = v32;
    sub_239856FE4();
    if (!v24)
    {
      v33 = v25;
      v34 = v26;
      v35 = 1;
      sub_239856FE4();
    }

    (*(v29 + 8))(v22, v23);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_2398268B0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2398268E0(uint64_t a1)
{
  v2 = sub_2398289DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982691C(uint64_t a1)
{
  v2 = sub_2398289DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239826958()
{
  v1 = *v0;
  sub_239857094();
  MEMORY[0x23EE790C0](v1);
  return sub_2398570E4();
}

uint64_t sub_2398269A0()
{
  v1 = *v0;
  sub_239857094();
  MEMORY[0x23EE790C0](v1);
  return sub_2398570E4();
}

uint64_t sub_2398269E4()
{
  if (*v0)
  {
    result = 0x69746E6564657263;
  }

  else
  {
    result = 1684632435;
  }

  *v0;
  return result;
}

uint64_t sub_239826A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632435 && a2 == 0xE400000000000000;
  if (v5 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_239826B00(uint64_t a1)
{
  v2 = sub_239828934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239826B3C(uint64_t a1)
{
  v2 = sub_239828934();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_239826B78@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_239827924(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_239826BC8(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  if ((sub_239827F9C(*a1, v3, *a2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_239827F9C(v6, v7, v8, v9);
}

uint64_t static MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      return 1;
    }
  }

  else if (v4 >> 60 != 15)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (sub_239827F9C(*a1, v3, *a2, v4) & 1) != 0 && (sub_239827F9C(v6, v7, v8, v9))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239826D10()
{
  sub_239857094();
  MEMORY[0x23EE790C0](0);
  return sub_2398570E4();
}

uint64_t sub_239826D54()
{
  sub_239857094();
  MEMORY[0x23EE790C0](0);
  return sub_2398570E4();
}

uint64_t sub_239826DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000023985CBE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_239857054();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_239826E44(uint64_t a1)
{
  v2 = sub_2398281E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239826E80(uint64_t a1)
{
  v2 = sub_2398281E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C238, &qword_2398599B0);
  v18 = *(v13 - 8);
  v3 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239828190(v6, v7, v8, v9);
  sub_2398281E0();
  sub_239857144();
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  sub_239828234();
  v11 = v13;
  sub_239856FE4();
  sub_239828288(v14, v15, v16, v17);
  return (*(v18 + 8))(v5, v11);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.hash(into:)()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  MEMORY[0x23EE790C0](1);
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_239857094();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiNetworkAssociation.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C250, &qword_2398599B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398281E0();
  sub_239857134();
  if (!v2)
  {
    sub_239828378();
    sub_239856F44();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2398272DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_239857094();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t sub_239827370()
{
  if (v0[1] >> 60 == 15)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v3 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  MEMORY[0x23EE790C0](1);
  sub_239856AC4();

  return sub_239856AC4();
}

uint64_t sub_239827410()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_239857094();
  if (v2 >> 60 == 15)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    sub_239856AC4();
    sub_239856AC4();
  }

  return sub_2398570E4();
}

uint64_t sub_2398274D0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      return 1;
    }
  }

  else if (v4 >> 60 != 15)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    if (sub_239827F9C(*a1, v3, *a2, v4) & 1) != 0 && (sub_239827F9C(v6, v7, v8, v9))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239827564@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2398569F4();
    if (v10)
    {
      v11 = sub_239856A14();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_239856A04();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2398569F4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_239856A14();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_239856A04();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_239827794(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_239827EE4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2398282D8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_239827564(v14, a3, a4, &v13);
  v10 = v4;
  sub_2398282D8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *sub_239827924(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2C8, &qword_239859FA8);
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2D0, &qword_239859FB0);
  v33 = *(v7 - 8);
  v8 = (*(v33 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2D8, &qword_239859FB8);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v30 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2398288E0();
  v18 = v34;
  sub_239857134();
  if (!v18)
  {
    v19 = v33;
    v34 = v12;
    v20 = sub_239856F94();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_2398383C8();
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_239856E44();
      swift_allocError();
      v26 = v25;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0) + 48);
      *v26 = &_s22WiFiNetworkAssociationV18AssociationDetailsON;
      sub_239856EF4();
      sub_239856E34();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      LOBYTE(v37) = 1;
      sub_239828934();
      sub_239856EE4();
      v23 = v34;
      v33 = v15;
      LOBYTE(v36) = 0;
      sub_239828A30();
      v29 = v31;
      sub_239856F44();
      v10 = v37;
      v42 = 1;
      sub_239856F44();
      (*(v32 + 8))(v6, v29);
      (*(v23 + 8))(v33, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v37) = 0;
      sub_2398289DC();
      sub_239856EE4();
      v28 = v34;
      (*(v19 + 1))(v10, v7);
      (*(v28 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v10 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v10;
}

uint64_t sub_239827EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2398569F4();
  v11 = result;
  if (result)
  {
    result = sub_239856A14();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_239856A04();
  sub_239827564(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_239827F9C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_239826330(a3, a4);
          return sub_239827794(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_239828190(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_239826330(result, a2);

    return sub_239826330(a3, a4);
  }

  return result;
}

unint64_t sub_2398281E0()
{
  result = qword_27DF7C240;
  if (!qword_27DF7C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C240);
  }

  return result;
}

unint64_t sub_239828234()
{
  result = qword_27DF7C248;
  if (!qword_27DF7C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C248);
  }

  return result;
}

uint64_t sub_239828288(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_2398282D8(result, a2);

    return sub_2398282D8(a3, a4);
  }

  return result;
}

uint64_t sub_2398282D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_239828378()
{
  result = qword_27DF7C258;
  if (!qword_27DF7C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C258);
  }

  return result;
}

unint64_t sub_2398283D0()
{
  result = qword_27DF7C260;
  if (!qword_27DF7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C260);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_13MatterSupport0A32AddDeviceExtensionRequestHandlerC22WiFiNetworkAssociationV0K7DetailsO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_239828474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2398284D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void sub_239828558(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2398285A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2398285F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_239828650(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t _s22WiFiNetworkAssociationV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s22WiFiNetworkAssociationV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_239828784()
{
  result = qword_27DF7C278;
  if (!qword_27DF7C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C278);
  }

  return result;
}

unint64_t sub_2398287DC()
{
  result = qword_27DF7C280;
  if (!qword_27DF7C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C280);
  }

  return result;
}

unint64_t sub_239828834()
{
  result = qword_27DF7C288;
  if (!qword_27DF7C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C288);
  }

  return result;
}

unint64_t sub_23982888C()
{
  result = qword_27DF7C290;
  if (!qword_27DF7C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C290);
  }

  return result;
}

unint64_t sub_2398288E0()
{
  result = qword_27DF7C2B0;
  if (!qword_27DF7C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2B0);
  }

  return result;
}

unint64_t sub_239828934()
{
  result = qword_27DF7C2B8;
  if (!qword_27DF7C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2B8);
  }

  return result;
}

unint64_t sub_239828988()
{
  result = qword_27DF7C3A0;
  if (!qword_27DF7C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C3A0);
  }

  return result;
}

unint64_t sub_2398289DC()
{
  result = qword_27DF7C2C0;
  if (!qword_27DF7C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2C0);
  }

  return result;
}

unint64_t sub_239828A30()
{
  result = qword_27DF7C370;
  if (!qword_27DF7C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C370);
  }

  return result;
}

uint64_t _s8TopologyV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8TopologyV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_239828C04()
{
  result = qword_27DF7C2E8;
  if (!qword_27DF7C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2E8);
  }

  return result;
}

unint64_t sub_239828C5C()
{
  result = qword_27DF7C2F0;
  if (!qword_27DF7C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2F0);
  }

  return result;
}

unint64_t sub_239828CB4()
{
  result = qword_27DF7C2F8;
  if (!qword_27DF7C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C2F8);
  }

  return result;
}

unint64_t sub_239828D0C()
{
  result = qword_27DF7C300;
  if (!qword_27DF7C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C300);
  }

  return result;
}

unint64_t sub_239828D64()
{
  result = qword_27DF7C308;
  if (!qword_27DF7C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C308);
  }

  return result;
}

unint64_t sub_239828DBC()
{
  result = qword_27DF7C310;
  if (!qword_27DF7C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C310);
  }

  return result;
}

unint64_t sub_239828E14()
{
  result = qword_27DF7C318;
  if (!qword_27DF7C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C318);
  }

  return result;
}

unint64_t sub_239828E6C()
{
  result = qword_27DF7C320;
  if (!qword_27DF7C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C320);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.topology.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 MatterAddDeviceRequest.topology.setter(uint64_t a1)
{
  v3 = *a1;
  v5 = v1[1].n128_u64[0];
  v4 = v1[1].n128_u64[1];

  v1->n128_u64[1] = v3;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

void *MatterAddDeviceRequest.setupPayload.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t MatterAddDeviceRequest.showDeviceCriteria.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MatterAddDeviceRequest(0) + 28);

  return sub_2398290D4(a1, v3);
}

uint64_t sub_2398290D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MatterAddDeviceRequest.shouldScanNetworks.setter(char a1)
{
  result = type metadata accessor for MatterAddDeviceRequest(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MatterAddDeviceRequest.init(topology:setupPayload:showing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
  v11 = *(a1 + 1);
  *a4 = sub_239856DC4();
  *(a4 + 8) = v8;
  *(a4 + 16) = v11;
  *(a4 + 32) = a2;
  v9 = type metadata accessor for MatterAddDeviceRequest(0);
  result = sub_23982E9A0(a3, a4 + *(v9 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
  *(a4 + *(v9 + 32)) = 1;
  return result;
}

uint64_t MatterAddDeviceRequest.init(topology:setupPayload:showing:shouldScanNetworks:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
  v13 = *(a1 + 1);
  *a5 = sub_239856DC4();
  *(a5 + 8) = v10;
  *(a5 + 16) = v13;
  *(a5 + 32) = a2;
  v11 = type metadata accessor for MatterAddDeviceRequest(0);
  result = sub_23982E9A0(a3, a5 + *(v11 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
  *(a5 + *(v11 + 32)) = a4;
  return result;
}

uint64_t MatterAddDeviceRequest.perform()()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2398294D8, 0, 0);
}

uint64_t sub_2398294D8()
{
  v1 = v0[18];
  sub_239856D54();
  v2 = *v1;
  sub_239856B04();
  v0[22] = [objc_allocWithZone(MTSDeviceSetupManager) init];
  v3 = swift_task_alloc();
  v0[23] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_239829614;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_239829614()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_239829A6C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_239829730;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_239829730()
{
  v1 = v0[25];
  v2 = v0[18];
  v3 = sub_239856A74();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_239856A64();
  type metadata accessor for MatterAddDeviceRequest(0);
  sub_23982D96C(&qword_27DF7C340, type metadata accessor for MatterAddDeviceRequest);
  v6 = sub_239856A54();
  v0[26] = v6;
  v0[27] = v7;
  if (v1)
  {

LABEL_3:
    v8 = v0[22];
    [objc_opt_self() mts:2 errorWithCode:?];
    swift_willThrow();

    v9 = v0[21];

    v10 = v0[1];

    return v10();
  }

  v12 = v6;
  v13 = v7;

  v14 = objc_allocWithZone(MTSDeviceSetupRequest);
  sub_239826330(v12, v13);
  v15 = sub_239856AA4();
  v16 = [v14 initWithSerializedRequest_];
  v0[28] = v16;

  sub_2398282D8(v12, v13);
  if (!v16)
  {
    sub_2398282D8(v12, v13);
    goto LABEL_3;
  }

  v17 = v0[21];
  v21 = v0[22];
  v18 = v0[19];
  v19 = v0[20];
  v0[2] = v0;
  v0[3] = sub_239829ADC;
  swift_continuation_init();
  v0[17] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C348, &qword_23985A2F8);
  sub_239856CD4();
  (*(v19 + 32))(boxed_opaque_existential_0, v17, v18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_239829D08;
  v0[13] = &block_descriptor;
  [v21 performDeviceSetupUsingRequest:v16 completionHandler:v0 + 10];
  (*(v19 + 8))(boxed_opaque_existential_0, v18);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_239829A6C()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[25];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_239829ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_239829C70;
  }

  else
  {
    v3 = sub_239829BEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_239829BEC()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  sub_2398282D8(v0[26], v0[27]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_239829C70()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[22];
  swift_willThrow();
  sub_2398282D8(v3, v4);

  v6 = v0[29];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

void sub_239829D08(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
    sub_239856CE4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
    sub_239856CF4();
  }
}

uint64_t sub_239829D98(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v2 + v16, v10, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_23982F038(v10, &qword_27DF7C4D8, &qword_23985A5E8);
  }

  (*(v12 + 32))(v15, v10, v11);
  v19[0] = a1;
  v18 = a1;
  sub_239856CE4();
  (*(v12 + 8))(v15, v11);
  (*(v12 + 56))(v8, 1, 1, v11);
  swift_beginAccess();
  sub_23982EA78(v8, v2 + v16);
  return swift_endAccess();
}

uint64_t sub_239829FF0()
{
  sub_23982F038(v0 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation, &qword_27DF7C4D8, &qword_23985A5E8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23982A04C(uint64_t a1, void *a2)
{
  v48 = a2;
  v51 = a1;
  v3 = type metadata accessor for MatterAddDeviceRequest(0);
  v54 = *(v3 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v11;
  v12 = sub_239856D84();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_239856D74();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_239856BF4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_239856B74();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_239856D34();
  v24 = *a2;
  v25 = MEMORY[0x277D84F90];
  sub_239856B04();
  strcpy(v23, "_matter._tcp");
  v23[13] = 0;
  *(v23 + 7) = -5120;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  (*(v20 + 104))(v23, *MEMORY[0x277CD90D8], v19);
  sub_239856B54();
  sub_239856B44();
  v26 = sub_239856BD4();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_239856B94();
  sub_23982EAE8(0, &qword_27DF7C4E8, 0x277D85C78);
  sub_239856BE4();
  v55 = v25;
  sub_23982D96C(&qword_27DF7C4F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4F8, &unk_23985A5F0);
  sub_23982EB30();
  sub_239856DF4();
  (*(v46 + 104))(v45, *MEMORY[0x277D85260], v47);
  v30 = sub_239856D94();
  v31 = v49;
  (*(v9 + 16))(v49, v51, v8);
  OneWinsContinuation = type metadata accessor for MatterAddDeviceRequest.FirstOneWinsContinuation(0);
  v33 = *(OneWinsContinuation + 48);
  v34 = *(OneWinsContinuation + 52);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  v37 = *(v9 + 56);
  v37(v35 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation, 1, 1, v8);
  v38 = v50;
  (*(v9 + 32))(v50, v31, v8);
  v37(v38, 0, 1, v8);
  swift_beginAccess();
  sub_23982EA78(v38, v35 + v36);
  swift_endAccess();
  v39 = v52;
  sub_23982E8D8(v48, v52, type metadata accessor for MatterAddDeviceRequest);
  v40 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v41 = (v53 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_23982E9A0(v39, v42 + v40, type metadata accessor for MatterAddDeviceRequest);
  *(v42 + v41) = v29;
  *(v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;

  sub_239856B84();
  sub_239856BB4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23982A730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23982A7A8(void *a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v72 = a3;
  v78 = sub_239856B64();
  v75 = *(v78 - 8);
  v6 = v75[8];
  v7 = (MEMORY[0x28223BE20])();
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v66 - v10;
  v69 = v11;
  MEMORY[0x28223BE20](v9);
  v77 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v66 - v15;
  v16 = sub_239856BA4();
  v17 = *(v16 - 8);
  isa = v17[8].isa;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v66 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - v25;
  v27 = sub_239856D34();
  v28 = *a2;
  v29 = v17;
  v30 = v17[2].isa;
  v74 = a1;
  v30(v26, a1, v16);
  if (os_log_type_enabled(v28, v27))
  {
    v31 = swift_slowAlloc();
    v66 = v21;
    v32 = v31;
    v33 = swift_slowAlloc();
    v68 = v29;
    v34 = v33;
    v79 = v33;
    *v32 = 136315138;
    v30(v24, v26, v16);
    v35 = sub_239856C44();
    v37 = v36;
    v67 = v68[1].isa;
    (v67)(v26, v16);
    v38 = sub_2398407F4(v35, v37, &v79);
    v39 = v75;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_239824000, v28, v27, "TCC state %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v40 = v34;
    v29 = v68;
    MEMORY[0x23EE79A40](v40, -1, -1);
    v41 = v32;
    v21 = v66;
    MEMORY[0x23EE79A40](v41, -1, -1);
    v42 = v28;
  }

  else
  {
    v67 = v29[1].isa;
    (v67)(v26, v16);
    v42 = v28;
    v39 = v75;
  }

  v30(v21, v74, v16);
  result = (v29[11].isa)(v21, v16);
  v44 = v78;
  v45 = v76;
  if (result == *MEMORY[0x277CD9108])
  {
    (v29[12].isa)(v21, v16);
    v46 = v77;
    v75 = v39[4];
    (v75)(v77, v21, v44);
    v47 = sub_239856D44();
    v48 = v39[2];
    v48(v45, v46, v44);
    if (os_log_type_enabled(v42, v47))
    {
      v49 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v49 = 138412290;
      sub_23982D96C(&unk_27DF7C510, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v68 = v42;
      v50 = v39;
      v48(v51, v45, v78);
      v52 = _swift_stdlib_bridgeErrorToNSError();
      v76 = v50[1];
      (v76)(v45, v78);
      *(v49 + 4) = v52;
      v53 = v74;
      *v74 = v52;
      v44 = v78;
      _os_log_impl(&dword_239824000, v68, v47, "Local browse failed; unable to start an add device operation (error: %@)", v49, 0xCu);
      sub_23982F038(v53, &qword_27DF7CAF0, &qword_23985A620);
      MEMORY[0x23EE79A40](v53, -1, -1);
      MEMORY[0x23EE79A40](v49, -1, -1);
    }

    else
    {
      v76 = v39[1];
      (v76)(v45, v44);
      v50 = v39;
    }

    sub_239856BC4();
    v57 = sub_239856D14();
    v58 = v73;
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
    v59 = v70;
    v60 = v77;
    v48(v70, v77, v44);
    v61 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v71;
    (v75)(v62 + v61, v59, v44);

    sub_23982B328(0, 0, v58, &unk_23985A618, v62);

    return (v76)(v60, v44);
  }

  if (result == *MEMORY[0x277CD9110])
  {
    sub_239856D44();
    sub_239856B04();
    sub_239856BC4();
    v54 = sub_239856D14();
    v55 = v73;
    (*(*(v54 - 8) + 56))(v73, 1, 1, v54);
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = 0;
    v56[4] = v71;

    sub_23982B328(0, 0, v55, &unk_23985A608, v56);

    return (v67)(v21, v16);
  }

  if (result != *MEMORY[0x277CD9100])
  {
    if (result == *MEMORY[0x277CD90F8])
    {
      sub_239856D34();
      sub_239856B04();
      sub_239856BC4();
      v63 = sub_239856D14();
      v64 = v73;
      (*(*(v63 - 8) + 56))(v73, 1, 1, v63);
      v65 = swift_allocObject();
      v65[2] = 0;
      v65[3] = 0;
      v65[4] = v71;

      sub_23982B328(0, 0, v64, &unk_23985A630, v65);
    }

    if (result != *MEMORY[0x277CD9118])
    {
      return (v67)(v21, v16);
    }
  }

  return result;
}

uint64_t sub_23982B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23982B18C, a4, 0);
}

uint64_t sub_23982B18C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v4 + v5, v3, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23982F038(v0[10], &qword_27DF7C4D8, &qword_23985A5E8);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    (*(v7 + 32))(v6, v0[10], v8);
    sub_239856CF4();
    (*(v7 + 8))(v6, v8);
    (*(v7 + 56))(v9, 1, 1, v8);
    swift_beginAccess();
    sub_23982EA78(v9, v4 + v5);
    swift_endAccess();
  }

  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23982B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23982EFD0(a3, v26 - v10, &qword_27DF7C508, &qword_23985C690);
  v12 = sub_239856D14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23982F038(v11, &qword_27DF7C508, &qword_23985C690);
  }

  else
  {
    sub_239856D04();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_239856CC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_239856C54() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23982F038(a3, &qword_27DF7C508, &qword_23985C690);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23982B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C338, &qword_23985A2F0);
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23982B738, 0, 0);
}

uint64_t sub_23982B738()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_239856B64();
  sub_23982D96C(&unk_27DF7C510, MEMORY[0x277CD8FC0]);
  v0[16] = swift_allocError();
  (*(*(v3 - 8) + 16))(v4, v2, v3);

  return MEMORY[0x2822009F8](sub_23982B830, v1, 0);
}

uint64_t sub_23982B830()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D24FirstOneWinsContinuation_continuation;
  swift_beginAccess();
  sub_23982EFD0(v4 + v5, v3, &qword_27DF7C4D8, &qword_23985A5E8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23982F038(*(v0 + 96), &qword_27DF7C4D8, &qword_23985A5E8);
  }

  else
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    (*(v9 + 32))(v6, *(v0 + 96), v8);
    *(v0 + 64) = v7;
    v11 = v7;
    sub_239856CE4();
    (*(v9 + 8))(v6, v8);
    (*(v9 + 56))(v10, 1, 1, v8);
    swift_beginAccess();
    sub_23982EA78(v10, v4 + v5);
    swift_endAccess();
  }

  v12 = *(v0 + 120);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23982BA20()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = [objc_opt_self() mts:3 errorWithCode:?];

  return MEMORY[0x2822009F8](sub_23982BAAC, v1, 0);
}

uint64_t sub_23982BAAC()
{
  v1 = *(v0 + 24);
  sub_239829D98(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t MatterAddDeviceRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_239856DB4();
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  sub_239856C64();
  MEMORY[0x23EE790C0](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_239856C64();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v12 = v2[4];
  sub_2398570B4();
  if (v12)
  {
    v13 = v12;
    sub_239856DB4();
  }

  v14 = type metadata accessor for MatterAddDeviceRequest(0);
  v15 = v2 + *(v14 + 28);
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
  v16 = *(v2 + *(v14 + 32));
  return sub_2398570B4();
}

uint64_t MatterAddDeviceRequest.hashValue.getter()
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23982BC50()
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23982BC94()
{
  sub_239857094();
  MatterAddDeviceRequest.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23982BCE0()
{
  v1 = *v0;
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23982BDB4()
{
  *v0;
  *v0;
  *v0;
  sub_239856C64();
}

uint64_t sub_23982BE74()
{
  v1 = *v0;
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23982BF44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23982E094();
  *a2 = result;
  return result;
}

void sub_23982BF74(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79676F6C6F706F74;
  v4 = 0x800000023985CB90;
  if (*v1 != 2)
  {
    v4 = 0x800000023985CBB0;
  }

  if (*v1)
  {
    v3 = 0x7961507075746573;
    v2 = 0xEC00000064616F6CLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_23982C004()
{
  v1 = 0x79676F6C6F706F74;
  *v0;
  if (*v0)
  {
    v1 = 0x7961507075746573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_23982C090@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23982E094();
  *a1 = result;
  return result;
}

uint64_t sub_23982C0C4(uint64_t a1)
{
  v2 = sub_23982D8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982C100(uint64_t a1)
{
  v2 = sub_23982D8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C350, &qword_23985A300);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23982D8C4();
  sub_239857134();
  if (!v2)
  {
    v15 = v7;
    v35 = v9;
    v42 = 0;
    sub_23982D918();
    sub_239856F44();
    v16 = v8;
    v18 = v38;
    v17 = v39;
    v19 = v40;
    LOBYTE(v38) = 2;
    sub_23982D96C(&qword_27DF7C368, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    sub_239856F44();
    v20 = v17;
    v34 = v18;
    LOBYTE(v38) = 3;
    v21 = sub_239856F24();
    v42 = 1;
    sub_239828A30();
    sub_239856F04();
    v41 = v21;
    v32 = v20;
    v33 = v12;
    v23 = v39;
    if (v39 >> 60 == 15)
    {
      v24 = 0;
      v25 = v36;
    }

    else
    {
      v26 = v38;
      sub_23982EAE8(0, &qword_27DF7C378, 0x277CCAAC8);
      sub_23982EAE8(0, &qword_27DF7C380, 0x277CD5528);
      v27 = sub_239856D64();
      sub_23982D9B4(v26, v23);
      v25 = v36;
      v24 = v27;
    }

    v28 = type metadata accessor for MatterAddDeviceRequest(0);
    sub_23982E8D8(v15, v25 + *(v28 + 28), type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
    v29 = sub_239856DC4();
    sub_23982E940(v15, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    (*(v35 + 8))(v33, v16);
    v30 = v34;
    *v25 = v29;
    v25[1] = v30;
    v25[2] = v32;
    v25[3] = v19;
    v25[4] = v24;
    *(v25 + *(v28 + 32)) = v41 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t MatterAddDeviceRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v32 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C388, &qword_23985A308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982D8C4();
  sub_239857144();
  v11 = v3[2];
  v12 = v3[3];
  v29 = v3[1];
  v30 = v11;
  v31 = v12;
  v28 = 0;
  sub_23982D9C8();

  sub_239856FE4();
  if (v2)
  {
  }

  else
  {

    v13 = type metadata accessor for MatterAddDeviceRequest(0);
    v14 = *(v13 + 28);
    LOBYTE(v29) = 2;
    type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
    sub_23982D96C(&qword_27DF7C398, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    sub_239856FE4();
    v15 = *(v3 + *(v13 + 32));
    LOBYTE(v29) = 3;
    sub_239856FC4();
    v18 = v3[4];
    if (v18)
    {
      v19 = objc_opt_self();
      v29 = 0;
      v20 = v18;
      v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v29];
      v22 = v29;
      if (v21)
      {
        v23 = sub_239856AB4();
        v25 = v24;

        v29 = v23;
        v30 = v25;
        v28 = 1;
        sub_239828988();
        sub_239856FE4();
        (*(v6 + 8))(v9, v5);

        result = sub_2398282D8(v23, v25);
        goto LABEL_6;
      }

      v26 = v22;
      sub_239856A94();

      swift_willThrow();
    }
  }

  result = (*(v6 + 8))(v9, v5);
LABEL_6:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23982CBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v37 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = _s14DeviceCriteriaO17DeviceDescriptionVMa(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xF000000000000000;
  v22 = 0;
  if (a7 >> 60 != 15 && a8)
  {
    v41 = 0;
    v42 = 1;
    sub_239826330(a6, a7);
    sub_239857124();
    if (v42 == 1)
    {
      sub_23982D9B4(a6, a7);
      v20 = 0;
      v22 = 0;
      v21 = 0xF000000000000000;
    }

    else
    {
      v22 = v41;
      v20 = a6;
      v21 = a7;
    }
  }

  v36 = v21;
  sub_23982EFD0(v37, v15, &qword_27DF7C4C0, &qword_23985A5D8);
  v23 = 1;
  if (a2)
  {
    v41 = 0;
    v42 = 1;
    sub_239856D24();
    v24 = v41;
    v23 = v42;
  }

  else
  {
    v24 = 0;
  }

  if (v38)
  {
    v41 = 0;
    v42 = 1;
    sub_239856D24();
    v25 = v41;
    v26 = v42;
  }

  else
  {
    v25 = 0;
    v26 = 1;
  }

  sub_23982EA08(v15, v19);
  v27 = &v19[v16[5]];
  *v27 = v24;
  v27[8] = v23;
  v28 = &v19[v16[6]];
  *v28 = v25;
  v28[8] = v26;
  v29 = &v19[v16[7]];
  v30 = v40;
  *v29 = v39;
  *(v29 + 1) = v30;
  v31 = &v19[v16[8]];
  v32 = v36;
  *v31 = v20;
  *(v31 + 1) = v32;
  *(v31 + 2) = v22;
  v33 = *(type metadata accessor for MatterAddDeviceRequest(0) + 28);

  v34 = sub_23983250C(v19);
  sub_23982E940(v19, _s14DeviceCriteriaO17DeviceDescriptionVMa);
  return (v34 & 1) == 0;
}

id sub_23982D0C0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v5 = type metadata accessor for MatterAddDeviceRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23982E8D8(a1 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, v8, type metadata accessor for MatterAddDeviceRequest);
  a3(v8, v5);
  v9 = sub_239856C24();

  return v9;
}

uint64_t sub_23982D208(uint64_t a1)
{
  sub_23982EFD0(a1, v5, &qword_27DF7C4C8, &qword_23985A5E0);
  if (!v6)
  {
    sub_23982F038(v5, &qword_27DF7C4C8, &qword_23985A5E0);
    goto LABEL_5;
  }

  type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = _s13MatterSupport0A16AddDeviceRequestV2eeoiySbAC_ACtFZ_0((v1 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest), &v4[OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest]);

  return v2 & 1;
}

id sub_23982D568(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23982D5A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23982D698;

  return v7(a1);
}

uint64_t sub_23982D698()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s13MatterSupport0A16AddDeviceRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_23982EAE8(0, &qword_27DF7C4E0, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((sub_239856DA4() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = a1[3];
  v7 = a2[3];
  v8 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v8 && (sub_239857054() & 1) == 0 || (sub_239831634(v6, v7) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    sub_23982EAE8(0, &qword_27DF7C380, 0x277CD5528);
    v11 = v10;
    v12 = v9;
    v13 = sub_239856DA4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
LABEL_15:
    v15 = 0;
    return v15 & 1;
  }

  v14 = type metadata accessor for MatterAddDeviceRequest(0);
  if ((static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(a1 + *(v14 + 28), a2 + *(v14 + 28)) & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = *(a1 + *(v14 + 32)) ^ *(a2 + *(v14 + 32)) ^ 1;
  return v15 & 1;
}

unint64_t sub_23982D8C4()
{
  result = qword_27DF7C358;
  if (!qword_27DF7C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C358);
  }

  return result;
}

unint64_t sub_23982D918()
{
  result = qword_27DF7C360;
  if (!qword_27DF7C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C360);
  }

  return result;
}

uint64_t sub_23982D96C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23982D9B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2398282D8(a1, a2);
  }

  return a1;
}

unint64_t sub_23982D9C8()
{
  result = qword_27DF7C390;
  if (!qword_27DF7C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C390);
  }

  return result;
}

void sub_23982DA8C()
{
  sub_23982EAE8(319, &qword_27DF7C330, 0x277D86200);
  if (v0 <= 0x3F)
  {
    sub_23982DB48();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23982DB48()
{
  if (!qword_27DF7C3C8)
  {
    sub_23982EAE8(255, &qword_27DF7C380, 0x277CD5528);
    v0 = sub_239856DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF7C3C8);
    }
  }
}

void sub_23982DBD8()
{
  sub_23982DC74();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23982DC74()
{
  if (!qword_27DF7C3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C338, &qword_23985A2F0);
    v0 = sub_239856DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF7C3F8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23982DD48(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23982DD80()
{
  result = type metadata accessor for MatterAddDeviceRequest(319);
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

uint64_t getEnumTagSinglePayload for MatterAddDeviceRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterAddDeviceRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23982DF90()
{
  result = qword_27DF7C490;
  if (!qword_27DF7C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C490);
  }

  return result;
}

unint64_t sub_23982DFE8()
{
  result = qword_27DF7C498;
  if (!qword_27DF7C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C498);
  }

  return result;
}

unint64_t sub_23982E040()
{
  result = qword_27DF7C4A0;
  if (!qword_27DF7C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C4A0);
  }

  return result;
}

uint64_t sub_23982E094()
{
  v0 = sub_239856ED4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_23982E0E0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4B0, &qword_23985A5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for MatterAddDeviceRequest(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  result = 0;
  if (a2 >> 60 != 15)
  {
    v17 = sub_239856A44();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_239826330(a1, a2);
    sub_239856A34();
    sub_23982D96C(&qword_27DF7C4B8, type metadata accessor for MatterAddDeviceRequest);
    sub_239856A24();

    (*(v9 + 56))(v7, 0, 1, v8);
    sub_23982E9A0(v7, v15, type metadata accessor for MatterAddDeviceRequest);
    sub_23982E8D8(v15, v13, type metadata accessor for MatterAddDeviceRequest);
    v20 = type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
    v21 = objc_allocWithZone(v20);
    sub_23982E8D8(v13, v21 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, type metadata accessor for MatterAddDeviceRequest);
    v24.receiver = v21;
    v24.super_class = v20;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    sub_23982D9B4(a1, a2);
    sub_23982E940(v13, type metadata accessor for MatterAddDeviceRequest);
    sub_23982E940(v15, type metadata accessor for MatterAddDeviceRequest);
    return v22;
  }

  return result;
}

size_t sub_23982E3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v52 = a1;
  v58 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for MatterAddDeviceRequest(0);
  v10 = *(*(v51 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v51);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = (&v50 - v13);
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  v57 = a4;
  if (v14)
  {
    v60 = MEMORY[0x277D84F90];
    sub_239841134(0, v14, 0);
    v16 = v60;
    v17 = (a3 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v60 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);

      if (v21 >= v20 >> 1)
      {
        sub_239841134((v20 > 1), v21 + 1, 1);
        v16 = v60;
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v17 += 2;
      --v14;
    }

    while (v14);
    a4 = v57;
    v15 = MEMORY[0x277D84F90];
    if (!(v57 >> 62))
    {
LABEL_7:
      v23 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_19:

      v26 = MEMORY[0x277D84F90];
LABEL_20:
      v38 = swift_allocBox();
      v40 = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = v26;
      *v40 = v41;
      swift_storeEnumTagMultiPayload();
      v42 = v51;
      v43 = v53;
      *(v53 + *(v51 + 28)) = v38;
      swift_storeEnumTagMultiPayload();
      sub_23982EAE8(0, &qword_27DF7C330, 0x277D86200);
      v44 = sub_239856DC4();
      v45 = v52;
      *v43 = v44;
      v43[1] = v45;
      v43[2] = a2;
      v43[3] = v16;
      v43[4] = 0;
      *(v43 + *(v42 + 32)) = 1;
      v46 = v54;
      sub_23982E8D8(v43, v54, type metadata accessor for MatterAddDeviceRequest);
      v47 = type metadata accessor for MatterAddDeviceRequest.Wrapper(0);
      v48 = objc_allocWithZone(v47);
      sub_23982E8D8(v46, v48 + OBJC_IVAR____TtCV13MatterSupport22MatterAddDeviceRequestP33_1A83A92E88F6D049FA318E551745945D7Wrapper_wrappedRequest, type metadata accessor for MatterAddDeviceRequest);
      v59.receiver = v48;
      v59.super_class = v47;
      v49 = objc_msgSendSuper2(&v59, sel_init);
      sub_23982E940(v46, type metadata accessor for MatterAddDeviceRequest);
      sub_23982E940(v43, type metadata accessor for MatterAddDeviceRequest);
      return v49;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    if (!(a4 >> 62))
    {
      goto LABEL_7;
    }
  }

  v23 = sub_239856EC4();
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_8:
  v60 = v15;

  result = sub_239841114(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v50 = a2;
    v25 = 0;
    v26 = v60;
    v27 = a4;
    v55 = a4 & 0xC000000000000001;
    do
    {
      if (v55)
      {
        v28 = MEMORY[0x23EE78E40](v25, v27);
      }

      else
      {
        v28 = *(v27 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = [v28 rootPublicKey];
      v31 = sub_239856AB4();
      v33 = v32;

      v34 = [v29 nodeID];
      v35 = sub_239857104();

      *v9 = v31;
      v9[1] = v33;
      v9[2] = v35;
      swift_storeEnumTagMultiPayload();
      v60 = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_239841114(v36 > 1, v37 + 1, 1);
        v26 = v60;
      }

      ++v25;
      *(v26 + 16) = v37 + 1;
      sub_23982E9A0(v9, v26 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
      v27 = v57;
    }

    while (v23 != v25);
    a2 = v50;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_23982E8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23982E940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23982E9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23982EA08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23982EA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4D8, &qword_23985A5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23982EAE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_23982EB30()
{
  result = qword_27DF7C500;
  if (!qword_27DF7C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C4F8, &unk_23985A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C500);
  }

  return result;
}

uint64_t sub_23982EB94(void *a1)
{
  v3 = *(type metadata accessor for MatterAddDeviceRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_23982A7A8(a1, (v1 + v4), v6, v7);
}

uint64_t sub_23982EC3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23982F208;

  return sub_23982BA00(a1, v4, v5, v6);
}

uint64_t sub_23982ECF0(uint64_t a1)
{
  v4 = *(sub_239856B64() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23982EDE8;

  return sub_23982B628(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_23982EDE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23982EF1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23982F208;

  return sub_23982B078(a1, v4, v5, v6);
}

uint64_t sub_23982EFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23982F038(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23982F098(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23982F208;

  return sub_23982D5A0(a1, v5);
}

uint64_t sub_23982F150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23982EDE8;

  return sub_23982D5A0(a1, v5);
}

uint64_t MatterAddDeviceRequest.Room.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterAddDeviceRequest.Room.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Room.init(displayName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static MatterAddDeviceRequest.Room.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

uint64_t sub_23982F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23982F378(uint64_t a1)
{
  v2 = sub_23982F52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23982F3B4(uint64_t a1)
{
  v2 = sub_23982F52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Room.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C580, &qword_23985A658);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857144();
  sub_239856FB4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23982F52C()
{
  result = qword_27DF7C588;
  if (!qword_27DF7C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C588);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Room.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_239856C64();
}

uint64_t MatterAddDeviceRequest.Room.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Room.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C590, &qword_23985A660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857134();
  if (!v2)
  {
    v11 = sub_239856F14();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23982F748()
{
  v1 = *v0;
  v2 = v0[1];
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

uint64_t sub_23982F794()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_239856C64();
}

uint64_t sub_23982F79C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_239857094();
  sub_239856C64();
  return sub_2398570E4();
}

unint64_t sub_23982F7E8()
{
  result = qword_27DF7C598;
  if (!qword_27DF7C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C598);
  }

  return result;
}

uint64_t sub_23982F854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C580, &qword_23985A658);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23982F52C();
  sub_239857144();
  sub_239856FB4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_23982F990(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_239857054();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23982F9CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23982FA14(uint64_t result, int a2, int a3)
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

unint64_t sub_23982FA74()
{
  result = qword_27DF7C5A0;
  if (!qword_27DF7C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5A0);
  }

  return result;
}

unint64_t sub_23982FACC()
{
  result = qword_27DF7C5A8;
  if (!qword_27DF7C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5A8);
  }

  return result;
}

unint64_t sub_23982FB24()
{
  result = qword_27DF7C5B0;
  if (!qword_27DF7C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5B0);
  }

  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.networkName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.networkName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.extendedAddress.getter()
{
  v1 = *(v0 + 40);
  sub_239826330(v1, *(v0 + 48));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.extendedAddress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.init(networkName:panID:extendedPANID:channel:extendedAddress:rssi:version:linkQualityIndicator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, __int16 a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;
  return result;
}

void sub_23982FDD0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 networkName];
  v5 = sub_239856C34();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  v8 = [a1 panID];
  LOWORD(v5) = sub_2398570F4();

  *(a2 + 16) = v5;
  v9 = [a1 extendedPANID];
  v10 = sub_239857104();

  *(a2 + 24) = v10;
  v11 = [a1 channel];
  LOWORD(v10) = sub_2398570F4();

  *(a2 + 32) = v10;
  v12 = [a1 extendedAddress];
  v13 = sub_239856AB4();
  v15 = v14;

  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  v16 = [a1 rssi];
  LOBYTE(v13) = sub_239857074();

  *(a2 + 56) = v13;
  v17 = [a1 version];
  LOBYTE(v13) = sub_239857084();

  *(a2 + 57) = v13;
  v18 = [a1 lqi];
  LOBYTE(v13) = sub_239857084();

  *(a2 + 58) = v13;
}

unint64_t sub_23982FF84()
{
  v1 = *v0;
  v2 = 0x4E6B726F7774656ELL;
  v3 = 0x6E6F6973726576;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6465646E65747865;
  if (v1 != 4)
  {
    v4 = 1769173874;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6465646E65747865;
  if (v1 != 2)
  {
    v5 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x44496E6170;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_239830098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2398310AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2398300CC(uint64_t a1)
{
  v2 = sub_239830C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239830108(uint64_t a1)
{
  v2 = sub_239830C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5B8, &qword_23985A860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v29 = *(v1 + 8);
  v25 = v1[3];
  v24 = *(v1 + 16);
  v10 = v1[5];
  v22 = v1[6];
  v23 = v10;
  LODWORD(v10) = *(v1 + 56);
  v21[0] = *(v1 + 57);
  v21[1] = v10;
  v11 = *(v1 + 58);
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_239830C78();
  sub_239857144();
  LOBYTE(v27) = 0;
  v17 = v26;
  sub_239856FB4();
  if (v17)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v19 = v22;
  v18 = v23;
  LODWORD(v26) = v11;
  LOBYTE(v27) = 1;
  sub_239857014();
  LOBYTE(v27) = 2;
  sub_239857024();
  LOBYTE(v27) = 3;
  sub_239857014();
  v27 = v18;
  v28 = v19;
  v30 = 4;
  sub_239826330(v18, v19);
  sub_239828988();
  sub_239856FE4();
  sub_2398282D8(v27, v28);
  LOBYTE(v27) = 5;
  sub_239856FF4();
  LOBYTE(v27) = 6;
  sub_239857004();
  LOBYTE(v27) = 7;
  sub_239857004();
  return MEMORY[8](v7, v16);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  v10 = *(v0 + 58);
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v3);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  v11 = *(v0 + 58);
  sub_239857094();
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v3);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadScanResult.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5C8, &qword_23985A868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239830C78();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  v11 = sub_239856F14();
  v13 = v12;
  v14 = v11;
  LOBYTE(v30) = 1;
  v40 = sub_239856F74();
  LOBYTE(v30) = 2;
  v26 = sub_239856F84();
  LOBYTE(v30) = 3;
  v25 = sub_239856F74();
  LOBYTE(v27) = 4;
  sub_239828A30();
  sub_239856F44();
  v23 = v31;
  v24 = v30;
  LOBYTE(v30) = 5;
  v22 = sub_239856F54();
  LOBYTE(v30) = 6;
  v21 = sub_239856F64();
  v41 = 7;
  v15 = sub_239856F64();
  (*(v6 + 8))(v9, v5);
  *&v27 = v14;
  *(&v27 + 1) = v13;
  v16 = v40;
  LOWORD(v28) = v40;
  v17 = v26;
  *(&v28 + 1) = v26;
  *v29 = v25;
  v18 = v23;
  *&v29[8] = v24;
  *&v29[16] = v23;
  v29[24] = v22;
  v29[25] = v21;
  v29[26] = v15;
  v19 = v28;
  *a2 = v27;
  a2[1] = v19;
  a2[2] = *v29;
  *(a2 + 43) = *&v29[11];
  sub_239830CCC(&v27, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = v14;
  v31 = v13;
  v32 = v16;
  v33 = v17;
  v34 = v25;
  v35 = v24;
  v36 = v18;
  v37 = v22;
  v38 = v21;
  v39 = v15;
  return sub_239830D04(&v30);
}

uint64_t sub_239830978()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  v10 = *(v0 + 58);
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v3);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t sub_239830A20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 56);
  v9 = *(v0 + 57);
  v11 = *(v0 + 58);
  sub_239857094();
  sub_239856C64();
  sub_2398570C4();
  MEMORY[0x23EE790F0](v3);
  sub_2398570C4();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t _s13MatterSupport0A32AddDeviceExtensionRequestHandlerC16ThreadScanResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a1 + 58);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 57);
  v17 = *(a2 + 58);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v10)
    {
      return result;
    }

    if (v3 != v11)
    {
      return result;
    }

    v25 = *(a2 + 56);
    v26 = *(a2 + 57);
    if (v4 != v12)
    {
      return result;
    }
  }

  else
  {
    v21 = *(a2 + 48);
    v22 = *(a2 + 40);
    v25 = *(a2 + 56);
    v26 = *(a2 + 57);
    v23 = *(a1 + 48);
    v24 = *(a1 + 40);
    v19 = sub_239857054();
    result = 0;
    if ((v19 & 1) == 0)
    {
      return result;
    }

    if (v2 != v10)
    {
      return result;
    }

    if (v3 != v11)
    {
      return result;
    }

    v6 = v23;
    v5 = v24;
    v14 = v21;
    v13 = v22;
    if (v4 != v12)
    {
      return result;
    }
  }

  v20 = sub_239827F9C(v5, v6, v13, v14) & (v7 == v25);
  if (v8 != v26)
  {
    v20 = 0;
  }

  if (v9 == v17)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_239830C78()
{
  result = qword_27DF7C5C0;
  if (!qword_27DF7C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5C0);
  }

  return result;
}

unint64_t sub_239830D38()
{
  result = qword_27DF7C5D0;
  if (!qword_27DF7C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5D0);
  }

  return result;
}

__n128 __swift_memcpy59_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_239830DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_239830DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16ThreadScanResultV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ThreadScanResultV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_239830FA8()
{
  result = qword_27DF7C5D8;
  if (!qword_27DF7C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5D8);
  }

  return result;
}

unint64_t sub_239831000()
{
  result = qword_27DF7C5E0;
  if (!qword_27DF7C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5E0);
  }

  return result;
}

unint64_t sub_239831058()
{
  result = qword_27DF7C5E8;
  if (!qword_27DF7C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5E8);
  }

  return result;
}

uint64_t sub_2398310AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6B726F7774656ELL && a2 == 0xEB00000000656D61;
  if (v4 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496E6170 && a2 == 0xE500000000000000 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xED000044494E4150 || (sub_239857054() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_239857054() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xEF73736572646441 || (sub_239857054() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (sub_239857054() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_239857054() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023985D020 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_239857054();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

id sub_239831358(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_239856E84();
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = objc_allocWithZone(MTSDeviceSetupHome);

      v8 = sub_239856C24();
      [v7 initWithName_];

      sub_239856E64();
      v9 = *(v15 + 16);
      sub_239856E94();
      sub_239856EA4();
      sub_239856E74();
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_239832400();
  v12 = sub_239856C94();

  v13 = [v11 initWithHomes_];

  return v13;
}

uint64_t MatterAddDeviceRequest.Topology.init(ecosystemName:homes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MatterAddDeviceRequest.Topology.ecosystemName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MatterAddDeviceRequest.Topology.ecosystemName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MatterAddDeviceRequest.Topology.homes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static MatterAddDeviceRequest.Topology.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_239857054() & 1) == 0)
  {
    return 0;
  }

  return sub_239831634(v2, v3);
}

uint64_t sub_239831634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_239857054() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2398316C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_23983244C(v14, v11);
        sub_23983244C(v15, v8);
        v17 = static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(v11, v8);
        sub_2398324B0(v8);
        sub_2398324B0(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_239831838()
{
  if (*v0)
  {
    result = 0x73656D6F68;
  }

  else
  {
    result = 0x65747379736F6365;
  }

  *v0;
  return result;
}

uint64_t sub_23983187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65747379736F6365 && a2 == 0xED0000656D614E6DLL;
  if (v6 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23983195C(uint64_t a1)
{
  v2 = sub_239831BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239831998(uint64_t a1)
{
  v2 = sub_239831BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.Topology.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C5F0, &qword_23985AB08);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239831BAC();
  sub_239857144();
  v17 = 0;
  sub_239856FB4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C600, &qword_23985AB10);
    sub_239832118(&qword_27DF7C608, sub_239831C00);
    sub_239856FE4();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_239831BAC()
{
  result = qword_27DF7C5F8;
  if (!qword_27DF7C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C5F8);
  }

  return result;
}

unint64_t sub_239831C00()
{
  result = qword_27DF7C610;
  if (!qword_27DF7C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C610);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Topology.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_239856C64();
  result = MEMORY[0x23EE790C0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_239856C64();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t MatterAddDeviceRequest.Topology.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_239857094();
  sub_239856C64();
  MEMORY[0x23EE790C0](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_239856C64();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.Topology.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C618, &qword_23985AB18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239831BAC();
  sub_239857134();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_239856F14();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C600, &qword_23985AB10);
  v18 = 1;
  sub_239832118(&qword_27DF7C620, sub_239832190);
  sub_239856F44();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_239831FCC()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_239857094();
  MatterAddDeviceRequest.Topology.hash(into:)();
  return sub_2398570E4();
}

uint64_t sub_239832024()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_239857094();
  MatterAddDeviceRequest.Topology.hash(into:)();
  return sub_2398570E4();
}

uint64_t sub_2398320A4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_239857054() & 1) == 0)
  {
    return 0;
  }

  return sub_239831634(v2, v3);
}

uint64_t sub_239832118(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C600, &qword_23985AB10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_239832190()
{
  result = qword_27DF7C628;
  if (!qword_27DF7C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C628);
  }

  return result;
}

unint64_t sub_2398321E8()
{
  result = qword_27DF7C630;
  if (!qword_27DF7C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C630);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_239832250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_239832298(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2398322FC()
{
  result = qword_27DF7C638;
  if (!qword_27DF7C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C638);
  }

  return result;
}

unint64_t sub_239832354()
{
  result = qword_27DF7C640;
  if (!qword_27DF7C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C640);
  }

  return result;
}

unint64_t sub_2398323AC()
{
  result = qword_27DF7C648;
  if (!qword_27DF7C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C648);
  }

  return result;
}

unint64_t sub_239832400()
{
  result = qword_27DF7C650;
  if (!qword_27DF7C650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF7C650);
  }

  return result;
}

uint64_t sub_23983244C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2398324B0(uint64_t a1)
{
  v2 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23983250C(uint64_t a1)
{
  v83 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C888, &unk_23985B9B0);
  v1 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v75 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - v7;
  v9 = sub_239856AF4();
  v79 = *(v9 - 8);
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C890, &unk_23985B9C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v20 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v75 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v75 - v29);
  sub_23983244C(v82, &v75 - v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v48 = v83;
      v49 = *v30;
      if (EnumCaseMultiPayload == 4)
      {
        v50 = *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 20);
      }

      else
      {
        v50 = *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 24);
      }

      v44 = *(v48 + v50 + 8) | (*(v48 + v50) != v49);
      return v44 & 1;
    }

    v32 = v83;
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_40:
        v44 = 0;
        return v44 & 1;
      }

      v33 = *v30;
      v34 = v30[1];
      v35 = v30[2];
      v36 = (v32 + *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 32));
      v38 = *v36;
      v37 = v36[1];
      v39 = v36[2];
      if (v37 >> 60 == 15)
      {
        if (v34 >> 60 == 15)
        {
          sub_239838098(v38, v37);
LABEL_8:
          sub_23982D9B4(v38, v37);
          goto LABEL_40;
        }
      }

      else if (v34 >> 60 != 15)
      {
        sub_239838098(v38, v37);
        sub_239826330(v33, v34);
        v74 = sub_239827F9C(v38, v37, v33, v34);
        sub_2398282D8(v33, v34);
        sub_23982D9B4(v33, v34);
        if ((v74 & 1) != 0 && v39 == v35)
        {
          goto LABEL_8;
        }

        v68 = v38;
        v69 = v37;
        goto LABEL_44;
      }

      sub_239838098(v38, v37);
      sub_23982D9B4(v38, v37);
      v68 = v33;
      v69 = v34;
LABEL_44:
      sub_23982D9B4(v68, v69);
      goto LABEL_45;
    }

    v52 = *v30;
    v51 = v30[1];
    v53 = (v32 + *(_s14DeviceCriteriaO17DeviceDescriptionVMa(0) + 28));
    v54 = v53[1];
    if (v54)
    {
      if (*v53 == v52 && v54 == v51)
      {

        goto LABEL_40;
      }

      v70 = sub_239857054();

      if (v70)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_45:
    v44 = 1;
    return v44 & 1;
  }

  v76 = v13;
  v77 = v15;
  v82 = v8;
  v41 = v79;
  v40 = v80;
  v42 = v81;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v61 = v77;
      v62 = v9;
      v75 = *(v79 + 32);
      v75(v77, v30, v9);
      v63 = v82;
      (*(v41 + 16))(v82, v61, v9);
      (*(v41 + 56))(v63, 0, 1, v9);
      v64 = v42;
      v65 = *(v78 + 48);
      sub_2398380AC(v83, v64);
      sub_2398380AC(v63, v64 + v65);
      v66 = *(v41 + 48);
      if (v66(v64, 1, v9) == 1)
      {
        sub_23982F038(v63, &qword_27DF7C4C0, &qword_23985A5D8);
        (*(v41 + 8))(v61, v9);
        if (v66(v64 + v65, 1, v9) == 1)
        {
          sub_23982F038(v64, &qword_27DF7C4C0, &qword_23985A5D8);
          goto LABEL_40;
        }
      }

      else
      {
        sub_2398380AC(v64, v40);
        if (v66(v64 + v65, 1, v9) != 1)
        {
          v71 = v76;
          v75(v76, (v64 + v65), v9);
          sub_2398368EC(&qword_27DF7C898, MEMORY[0x277CC95F0]);
          v72 = sub_239856C14();
          v73 = *(v41 + 8);
          v73(v71, v62);
          sub_23982F038(v82, &qword_27DF7C4C0, &qword_23985A5D8);
          v73(v77, v62);
          v73(v40, v62);
          sub_23982F038(v64, &qword_27DF7C4C0, &qword_23985A5D8);
          if (v72)
          {
            goto LABEL_40;
          }

          goto LABEL_45;
        }

        sub_23982F038(v82, &qword_27DF7C4C0, &qword_23985A5D8);
        v67 = *(v41 + 8);
        v67(v77, v9);
        v67(v40, v9);
      }

      sub_23982F038(v64, &qword_27DF7C888, &unk_23985B9B0);
      goto LABEL_45;
    }

    v45 = *v30;
    v46 = swift_projectBox();
    sub_23983244C(v46, v28);
    v47 = sub_23983250C(v83);
    sub_2398324B0(v28);

    v44 = v47 ^ 1;
    return v44 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    v43 = *(*v30 + 16);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v75 - 2) = v83;

    sub_239836524(sub_23983811C, v43, v19);

    v44 = (*(v21 + 48))(v19, 1, v20) == 1;
    sub_23982F038(v19, &qword_27DF7C890, &unk_23985B9C0);

    return v44 & 1;
  }

  v55 = *(*v30 + 16);
  v56 = *(v55 + 16);

  v58 = 0;
  v59 = v83;
  while (1)
  {
    if (v56 == v58)
    {

      goto LABEL_40;
    }

    if (v58 >= *(v55 + 16))
    {
      break;
    }

    sub_23983244C(v55 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v58++, v25);
    v60 = sub_23983250C(v59);
    result = sub_2398324B0(v25);
    if (v60)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
  return result;
}

uint64_t static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v3 = sub_239856AF4();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v75 = (&v74 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = (&v74 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = (&v74 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v74 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v74 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v74 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v74 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&v74 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C658, &qword_23985AD30);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v74 - v36;
  v38 = (&v74 + *(v35 + 56) - v36);
  sub_23983244C(v81, &v74 - v36);
  sub_23983244C(a2, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v61 = v74;
        sub_23983244C(v37, v74);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v61 = v76;
        sub_23983244C(v37, v76);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_41;
        }
      }

      v48 = *v61 == *v38;
LABEL_34:
      v60 = v48;
      goto LABEL_37;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v62 = v75;
      sub_23983244C(v37, v75);
      v64 = *v62;
      v63 = v62[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_41;
      }

      if (v64 == *v38 && v63 == v38[1])
      {
        v73 = v38[1];
      }

      else
      {
        v66 = v38[1];
        v67 = sub_239857054();

        if ((v67 & 1) == 0)
        {
LABEL_24:
          sub_2398324B0(v37);
LABEL_42:
          v60 = 0;
          return v60 & 1;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v40 = v77;
        sub_23983244C(v37, v77);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v44 = *v38;
          v45 = v38[1];
          v46 = v38[2];
          v47 = sub_239827F9C(v41, v42, *v38, v45);
          sub_2398282D8(v44, v45);
          sub_2398282D8(v41, v42);
          if (v47)
          {
            v48 = v43 == v46;
            goto LABEL_34;
          }

          goto LABEL_24;
        }

        sub_2398282D8(v41, v42);
LABEL_41:
        sub_23982F038(v37, &qword_27DF7C658, &qword_23985AD30);
        goto LABEL_42;
      }

      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }
    }

    sub_2398324B0(v37);
    v60 = 1;
    return v60 & 1;
  }

  v77 = v24;
  v81 = v21;
  v49 = v78;
  v50 = v79;
  v51 = v80;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23983244C(v37, v30);
      v52 = *v30;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_26:
        v68 = *(v52 + 16);
        v69 = *(*v38 + 16);

        v60 = sub_2398316C4(v68, v69);

        goto LABEL_37;
      }
    }

    else
    {
      sub_23983244C(v37, v32);
      v52 = *v32;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_26;
      }
    }

LABEL_27:

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23983244C(v37, v27);
    v53 = *v27;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_27;
    }

    v54 = swift_projectBox();
    v55 = *v38;
    v56 = swift_projectBox();
    v57 = v77;
    sub_23983244C(v54, v77);
    v58 = v56;
    v59 = v81;
    sub_23983244C(v58, v81);
    v60 = static MatterAddDeviceRequest.DeviceCriteria.== infix(_:_:)(v57, v59);
    sub_2398324B0(v59);
    sub_2398324B0(v57);
  }

  else
  {
    sub_23983244C(v37, v18);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v50 + 8))(v18, v51);
      goto LABEL_41;
    }

    v70 = v49;
    (*(v50 + 32))(v49, v38, v51);
    v60 = sub_239856AD4();
    v71 = *(v50 + 8);
    v71(v70, v51);
    v71(v18, v51);
  }

LABEL_37:
  sub_2398324B0(v37);
  return v60 & 1;
}

uint64_t sub_2398334C8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x63697665446C6C61;
    v6 = 7105633;
    if (a1 != 2)
    {
      v6 = 7630702;
    }

    if (a1)
    {
      v5 = 7958113;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x754E6C6169726573;
    if (a1 != 7)
    {
      v2 = 0x6F4E636972626166;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x697373696D6D6F63;
    if (a1 != 4)
    {
      v3 = 0x4449726F646E6576;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2398335F0(uint64_t a1)
{
  v2 = sub_239836934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983362C(uint64_t a1)
{
  v2 = sub_239836934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833668(uint64_t a1)
{
  v2 = sub_2398369DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398336A4(uint64_t a1)
{
  v2 = sub_2398369DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2398336E0(uint64_t a1)
{
  v2 = sub_239836988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983371C(uint64_t a1)
{
  v2 = sub_239836988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_239837D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_239833794(uint64_t a1)
{
  v2 = sub_2398366A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398337D0(uint64_t a1)
{
  v2 = sub_2398366A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23983380C(uint64_t a1)
{
  v2 = sub_239836844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833848(uint64_t a1)
{
  v2 = sub_239836844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833884()
{
  if (*v0)
  {
    result = 0x444965646F6ELL;
  }

  else
  {
    result = 0x6C627550746F6F72;
  }

  *v0;
  return result;
}

uint64_t sub_2398338C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C627550746F6F72 && a2 == 0xED000079654B6369;
  if (v6 || (sub_239857054() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444965646F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_239857054();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2398339A8(uint64_t a1)
{
  v2 = sub_2398366F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398339E4(uint64_t a1)
{
  v2 = sub_2398366F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833A20(uint64_t a1)
{
  v2 = sub_239836898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833A5C(uint64_t a1)
{
  v2 = sub_239836898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833A98(uint64_t a1)
{
  v2 = sub_23983679C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833AD4(uint64_t a1)
{
  v2 = sub_23983679C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833B10(uint64_t a1)
{
  v2 = sub_239836748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833B4C(uint64_t a1)
{
  v2 = sub_239836748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239833B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_239833C08(uint64_t a1)
{
  v2 = sub_2398367F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239833C44(uint64_t a1)
{
  v2 = sub_2398367F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.encode(to:)(void *a1)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C660, &qword_23985AD38);
  v89 = *(v105 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = &v84 - v3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C668, &qword_23985AD40);
  v88 = *(v103 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v84 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C670, &qword_23985AD48);
  v87 = *(v101 - 8);
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v84 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C678, &qword_23985AD50);
  v86 = *(v99 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v84 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C680, &qword_23985AD58);
  v85 = *(v96 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v96);
  v111 = &v84 - v11;
  v12 = sub_239856AF4();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  MEMORY[0x28223BE20](v12);
  v108 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C688, &qword_23985AD60);
  v84 = *(v93 - 8);
  v15 = *(v84 + 64);
  MEMORY[0x28223BE20](v93);
  v107 = &v84 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C690, &qword_23985AD68);
  v95 = *(v97 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v106 = &v84 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C698, &qword_23985AD70);
  v94 = *(v19 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v84 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6A0, &qword_23985AD78);
  v91 = *(v92 - 8);
  v23 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v84 - v24;
  v25 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (&v84 - v30);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6A8, &qword_23985AD80);
  v112 = *(v116 - 8);
  v32 = *(v112 + 64);
  MEMORY[0x28223BE20](v116);
  v34 = &v84 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2398366A0();
  v115 = v34;
  sub_239857144();
  sub_23983244C(v113, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v46 = v29;
    v47 = v22;
    v113 = v19;
    v48 = v106;
    v49 = v107;
    v50 = v108;
    v51 = v109;
    v52 = v111;
    if (EnumCaseMultiPayload > 1)
    {
      v57 = v116;
      if (EnumCaseMultiPayload == 2)
      {
        v58 = *v31;
        v59 = swift_projectBox();
        sub_23983244C(v59, v46);
        LOBYTE(v117) = 3;
        sub_239836898();
        v60 = v115;
        sub_239856FA4();
        sub_2398368EC(&qword_27DF7C398, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
        v61 = v93;
        sub_239856FE4();
        (*(v84 + 8))(v49, v61);
        sub_2398324B0(v46);
        (*(v112 + 8))(v60, v57);
      }

      else
      {
        v77 = v110;
        (*(v109 + 32))(v108, v31, v110);
        LOBYTE(v117) = 4;
        sub_239836844();
        v78 = v52;
        v79 = v115;
        sub_239856FA4();
        sub_2398368EC(&qword_27DF7C6E0, MEMORY[0x277CC95F0]);
        v80 = v96;
        sub_239856FE4();
        (*(v85 + 8))(v78, v80);
        (*(v51 + 8))(v50, v77);
        return (*(v112 + 8))(v79, v116);
      }
    }

    else
    {
      v53 = v116;
      if (EnumCaseMultiPayload)
      {
        v74 = *(*v31 + 16);
        LOBYTE(v117) = 2;
        sub_239836934();

        v75 = v115;
        sub_239856FA4();
        v117 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
        sub_239836A94(&qword_27DF7C700, &qword_27DF7C398);
        v76 = v97;
        sub_239856FE4();
        (*(v95 + 8))(v48, v76);
        (*(v112 + 8))(v75, v53);
      }

      else
      {
        v54 = *(*v31 + 16);
        LOBYTE(v117) = 1;
        sub_239836988();

        v55 = v115;
        sub_239856FA4();
        v117 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
        sub_239836A94(&qword_27DF7C700, &qword_27DF7C398);
        v56 = v113;
        sub_239856FE4();
        (*(v94 + 8))(v47, v56);
        (*(v112 + 8))(v55, v53);
      }
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    v62 = *v31;
    if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v117) = 5;
      sub_2398367F0();
      v63 = v98;
      v65 = v115;
      v64 = v116;
      sub_239856FA4();
      v66 = v99;
      sub_239856FD4();
      v67 = &v118;
    }

    else
    {
      LOBYTE(v117) = 6;
      sub_23983679C();
      v63 = v100;
      v65 = v115;
      v64 = v116;
      sub_239856FA4();
      v66 = v101;
      sub_239856FD4();
      v67 = v119;
    }

    (*(*(v67 - 32) + 8))(v63, v66);
    return (*(v112 + 8))(v65, v64);
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v69 = *v31;
    v68 = v31[1];
    LOBYTE(v117) = 7;
    sub_239836748();
    v70 = v102;
    v72 = v115;
    v71 = v116;
    sub_239856FA4();
    v73 = v103;
    sub_239856FB4();

    (*(v88 + 8))(v70, v73);
    return (*(v112 + 8))(v72, v71);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v38 = *v31;
    v37 = v31[1];
    v39 = v31[2];
    LOBYTE(v117) = 8;
    sub_2398366F4();
    v40 = v104;
    v42 = v115;
    v41 = v116;
    sub_239856FA4();
    v117 = v38;
    v118 = v37;
    v119[23] = 0;
    sub_239828988();
    v43 = v105;
    v44 = v114;
    sub_239856FE4();
    if (v44)
    {
      (*(v89 + 8))(v40, v43);
      (*(v112 + 8))(v42, v41);
      return sub_2398282D8(v38, v37);
    }

    else
    {
      LOBYTE(v117) = 1;
      sub_239857024();
      sub_2398282D8(v38, v37);
      (*(v89 + 8))(v40, v43);
      return (*(v112 + 8))(v42, v41);
    }
  }

  else
  {
    LOBYTE(v117) = 0;
    sub_2398369DC();
    v81 = v90;
    v83 = v115;
    v82 = v116;
    sub_239856FA4();
    (*(v91 + 8))(v81, v92);
    return (*(v112 + 8))(v83, v82);
  }
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.hash(into:)(uint64_t a1)
{
  v3 = sub_239856AF4();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - v19);
  sub_23983244C(v1, &v43 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v41 = v44;
        (*(v44 + 32))(v6, v20, v3);
        MEMORY[0x23EE790C0](4);
        sub_2398368EC(&qword_27DF7C718, MEMORY[0x277CC95F0]);
        sub_239856C04();
        return (*(v41 + 8))(v6, v3);
      }

      v31 = *v20;
      v32 = swift_projectBox();
      sub_23983244C(v32, v12);
      MEMORY[0x23EE790C0](3);
      MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
      sub_2398324B0(v12);
    }

    else
    {
      v26 = v8;
      if (EnumCaseMultiPayload)
      {
        v37 = *(*v20 + 16);
        MEMORY[0x23EE790C0](2);
        MEMORY[0x23EE790C0](*(v37 + 16));
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
          v40 = *(v26 + 72);

          do
          {
            sub_23983244C(v39, v15);
            MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
            sub_2398324B0(v15);
            v39 += v40;
            --v38;
          }

          while (v38);
          goto LABEL_20;
        }
      }

      else
      {
        v27 = *(*v20 + 16);
        MEMORY[0x23EE790C0](1);
        MEMORY[0x23EE790C0](*(v27 + 16));
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
          v30 = *(v26 + 72);

          do
          {
            sub_23983244C(v29, v18);
            MatterAddDeviceRequest.DeviceCriteria.hash(into:)(a1);
            sub_2398324B0(v18);
            v29 += v30;
            --v28;
          }

          while (v28);
LABEL_20:
        }
      }
    }
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v33 = *v20;
    if (EnumCaseMultiPayload == 4)
    {
      v34 = 5;
    }

    else
    {
      v34 = 6;
    }

    MEMORY[0x23EE790C0](v34);
    v42 = v33;
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v35 = *v20;
      v36 = v20[1];
      MEMORY[0x23EE790C0](7);
      sub_239856C64();
    }

    if (EnumCaseMultiPayload == 7)
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[2];
      MEMORY[0x23EE790C0](8);
      sub_239856AC4();
      MEMORY[0x23EE790F0](v24);
      return sub_2398282D8(v22, v23);
    }

    v42 = 0;
  }

  return MEMORY[0x23EE790C0](v42);
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.hashValue.getter()
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t MatterAddDeviceRequest.DeviceCriteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C720, &qword_23985AD90);
  v135 = *(v132 - 8);
  v3 = *(v135 + 64);
  MEMORY[0x28223BE20](v132);
  v140 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C728, &qword_23985AD98);
  v133 = *(v5 - 8);
  v134 = v5;
  v6 = *(v133 + 64);
  MEMORY[0x28223BE20](v5);
  v139 = &v110 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C730, &qword_23985ADA0);
  v130 = *(v131 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v137 = &v110 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C738, &qword_23985ADA8);
  v128 = *(v129 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v147 = &v110 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C740, &qword_23985ADB0);
  v126 = *(v127 - 8);
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v138 = &v110 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C748, &qword_23985ADB8);
  v124 = *(v125 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v146 = &v110 - v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C750, &qword_23985ADC0);
  v123 = *(v122 - 8);
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  v145 = &v110 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C758, &qword_23985ADC8);
  v120 = *(v121 - 8);
  v18 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v144 = &v110 - v19;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C760, &qword_23985ADD0);
  v118 = *(v119 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v136 = &v110 - v21;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C768, &unk_23985ADD8);
  v148 = *(v143 - 8);
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v143);
  v24 = &v110 - v23;
  v142 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v25 = *(*(v142 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v142);
  v117 = (&v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v110 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v110 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v110 - v35);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v110 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = (&v110 - v40);
  v43 = a1[3];
  v42 = a1[4];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_2398366A0();
  v44 = v149;
  sub_239857134();
  if (v44)
  {
    goto LABEL_12;
  }

  v111 = v36;
  v112 = v33;
  v114 = v39;
  v113 = v30;
  v45 = v144;
  v46 = v145;
  v48 = v146;
  v47 = v147;
  v116 = 0;
  v115 = v41;
  v49 = v143;
  v149 = v24;
  v50 = sub_239856F94();
  if (*(v50 + 16) != 1 || (v51 = *(v50 + 32), v51 == 9))
  {
    v56 = sub_239856E44();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0) + 48);
    *v58 = v142;
    v60 = v149;
    sub_239856EF4();
    sub_239856E34();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    (*(v148 + 8))(v60, v49);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v61 = v150;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  if (*(v50 + 32) <= 3u)
  {
    v63 = v149;
    if (*(v50 + 32) <= 1u)
    {
      v64 = v141;
      v65 = v116;
      if (*(v50 + 32))
      {
        LOBYTE(v151) = 1;
        sub_239836988();
        v79 = v45;
        sub_239856EE4();
        if (!v65)
        {
          v80 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
          sub_239836A94(&qword_27DF7C778, &qword_27DF7C368);
          v81 = v121;
          sub_239856F44();
          (*(v120 + 8))(v79, v81);
          (*(v148 + 8))(v63, v49);
          swift_unknownObjectRelease();
          v67 = v115;
          *v115 = v80;
          goto LABEL_40;
        }
      }

      else
      {
        LOBYTE(v151) = 0;
        sub_2398369DC();
        v66 = v136;
        sub_239856EE4();
        if (!v65)
        {
          (*(v118 + 8))(v66, v119);
          (*(v148 + 8))(v63, v49);
          swift_unknownObjectRelease();
          v67 = v115;
LABEL_40:
          swift_storeEnumTagMultiPayload();
          v104 = v150;
          goto LABEL_44;
        }
      }

LABEL_29:
      (*(v148 + 8))(v63, v49);
      goto LABEL_11;
    }

    v68 = v116;
    if (v51 == 2)
    {
      LOBYTE(v151) = 2;
      sub_239836934();
      sub_239856EE4();
      if (v68)
      {
        goto LABEL_29;
      }

      v69 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C6F8, &qword_23985AD88);
      sub_239836A94(&qword_27DF7C778, &qword_27DF7C368);
      v70 = v122;
      sub_239856F44();
      (*(v123 + 8))(v46, v70);
      (*(v148 + 8))(v63, v49);
      swift_unknownObjectRelease();
      v67 = v115;
      *v115 = v69;
    }

    else
    {
      LOBYTE(v151) = 3;
      sub_239836898();
      sub_239856EE4();
      if (v68)
      {
        goto LABEL_29;
      }

      v90 = swift_allocBox();
      sub_2398368EC(&qword_27DF7C368, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
      v91 = v125;
      sub_239856F44();
      (*(v124 + 8))(v48, v91);
      (*(v148 + 8))(v63, v49);
      swift_unknownObjectRelease();
      v67 = v115;
      *v115 = v90;
    }

    swift_storeEnumTagMultiPayload();
LABEL_43:
    v104 = v150;
    v64 = v141;
    goto LABEL_44;
  }

  if (*(v50 + 32) > 5u)
  {
    if (v51 != 6)
    {
      v52 = v149;
      if (v51 == 7)
      {
        LOBYTE(v151) = 7;
        sub_239836748();
        v53 = v139;
        v54 = v116;
        sub_239856EE4();
        if (!v54)
        {
          v55 = v134;
          v96 = sub_239856F14();
          v98 = v97;
          (*(v133 + 8))(v53, v55);
          (*(v148 + 8))(v52, v49);
          swift_unknownObjectRelease();
          v99 = v113;
          *v113 = v96;
          v99[1] = v98;
          swift_storeEnumTagMultiPayload();
          v100 = v99;
LABEL_42:
          v67 = v115;
          sub_239836A30(v100, v115);
          goto LABEL_43;
        }

        (*(v148 + 8))(v52, v49);
        goto LABEL_11;
      }

      LOBYTE(v151) = 8;
      sub_2398366F4();
      v82 = v140;
      v83 = v116;
      sub_239856EE4();
      v84 = v141;
      if (v83)
      {
        (*(v148 + 8))(v52, v49);
LABEL_34:
        swift_unknownObjectRelease();
        v61 = v150;
        return __swift_destroy_boxed_opaque_existential_1(v61);
      }

      v153 = 0;
      sub_239828A30();
      v92 = v132;
      sub_239856F44();
      v101 = v82;
      v103 = v151;
      v102 = v152;
      v153 = 1;
      v147 = sub_239856F84();
      (*(v135 + 8))(v101, v92);
      (*(v148 + 8))(v52, v49);
      swift_unknownObjectRelease();
      v108 = v117;
      *v117 = v103;
      v108[1] = v102;
      v108[2] = v147;
      swift_storeEnumTagMultiPayload();
      v109 = v108;
      v67 = v115;
      sub_239836A30(v109, v115);
      v104 = v150;
      v64 = v84;
      goto LABEL_44;
    }

    LOBYTE(v151) = 6;
    sub_23983679C();
    v77 = v137;
    v73 = v149;
    v78 = v116;
    sub_239856EE4();
    if (!v78)
    {
      v87 = v131;
      v88 = sub_239856F34();
      v89 = v148;
      v94 = v88;
      (*(v130 + 8))(v77, v87);
      (*(v89 + 8))(v73, v49);
      swift_unknownObjectRelease();
      v95 = v112;
      *v112 = v94;
      swift_storeEnumTagMultiPayload();
      v100 = v95;
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v64 = v141;
  if (v51 == 4)
  {
    v71 = v141;
    LOBYTE(v151) = 4;
    sub_239836844();
    v72 = v138;
    v73 = v149;
    v74 = v116;
    sub_239856EE4();
    if (!v74)
    {
      sub_239856AF4();
      sub_2398368EC(&qword_27DF7C770, MEMORY[0x277CC95F0]);
      v75 = v114;
      v76 = v127;
      sub_239856F44();
      (*(v126 + 8))(v72, v76);
      (*(v148 + 8))(v73, v49);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v67 = v115;
      sub_239836A30(v75, v115);
      v104 = v150;
      v64 = v71;
      goto LABEL_44;
    }

LABEL_25:
    (*(v148 + 8))(v73, v49);
    goto LABEL_11;
  }

  LOBYTE(v151) = 5;
  sub_2398367F0();
  v85 = v149;
  v86 = v116;
  sub_239856EE4();
  if (v86)
  {
    (*(v148 + 8))(v85, v49);
    goto LABEL_34;
  }

  v93 = v129;
  v105 = sub_239856F34();
  (*(v128 + 8))(v47, v93);
  (*(v148 + 8))(v149, v49);
  swift_unknownObjectRelease();
  v106 = v111;
  *v111 = v105;
  swift_storeEnumTagMultiPayload();
  v107 = v106;
  v67 = v115;
  sub_239836A30(v107, v115);
  v104 = v150;
LABEL_44:
  sub_239836A30(v67, v64);
  return __swift_destroy_boxed_opaque_existential_1(v104);
}

uint64_t sub_2398363F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_239836428()
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_23983646C()
{
  sub_239857094();
  MatterAddDeviceRequest.DeviceCriteria.hash(into:)(v1);
  return sub_2398570E4();
}

uint64_t sub_2398364DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_239827F9C(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t sub_239836524@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_23983244C(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2398324B0(v11);
      }

      if (v15)
      {
        break;
      }

      sub_2398324B0(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_239836A30(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

unint64_t sub_2398366A0()
{
  result = qword_27DF7C6B0;
  if (!qword_27DF7C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6B0);
  }

  return result;
}

unint64_t sub_2398366F4()
{
  result = qword_27DF7C6B8;
  if (!qword_27DF7C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6B8);
  }

  return result;
}

unint64_t sub_239836748()
{
  result = qword_27DF7C6C0;
  if (!qword_27DF7C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6C0);
  }

  return result;
}

unint64_t sub_23983679C()
{
  result = qword_27DF7C6C8;
  if (!qword_27DF7C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6C8);
  }

  return result;
}

unint64_t sub_2398367F0()
{
  result = qword_27DF7C6D0;
  if (!qword_27DF7C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6D0);
  }

  return result;
}

unint64_t sub_239836844()
{
  result = qword_27DF7C6D8;
  if (!qword_27DF7C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6D8);
  }

  return result;
}

unint64_t sub_239836898()
{
  result = qword_27DF7C6E8;
  if (!qword_27DF7C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6E8);
  }

  return result;
}

uint64_t sub_2398368EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_239836934()
{
  result = qword_27DF7C6F0;
  if (!qword_27DF7C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C6F0);
  }

  return result;
}

unint64_t sub_239836988()
{
  result = qword_27DF7C708;
  if (!qword_27DF7C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C708);
  }

  return result;
}

unint64_t sub_2398369DC()
{
  result = qword_27DF7C710;
  if (!qword_27DF7C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C710);
  }

  return result;
}

uint64_t sub_239836A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterAddDeviceRequest.DeviceCriteria(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_239836A94(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF7C6F8, &qword_23985AD88);
    sub_2398368EC(a2, type metadata accessor for MatterAddDeviceRequest.DeviceCriteria);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_239836BC8()
{
  sub_239856AF4();
  if (v0 <= 0x3F)
  {
    sub_239836C64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_239836C64()
{
  if (!qword_27DF7C798)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DF7C798);
    }
  }
}

uint64_t _s14DeviceCriteriaO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14DeviceCriteriaO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_239836EAC()
{
  result = qword_27DF7C7A0;
  if (!qword_27DF7C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7A0);
  }

  return result;
}

unint64_t sub_239836F04()
{
  result = qword_27DF7C7A8;
  if (!qword_27DF7C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7A8);
  }

  return result;
}

unint64_t sub_239836F5C()
{
  result = qword_27DF7C7B0;
  if (!qword_27DF7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7B0);
  }

  return result;
}

unint64_t sub_239836FB4()
{
  result = qword_27DF7C7B8;
  if (!qword_27DF7C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7B8);
  }

  return result;
}

unint64_t sub_23983700C()
{
  result = qword_27DF7C7C0;
  if (!qword_27DF7C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7C0);
  }

  return result;
}

unint64_t sub_239837064()
{
  result = qword_27DF7C7C8;
  if (!qword_27DF7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7C8);
  }

  return result;
}

unint64_t sub_2398370BC()
{
  result = qword_27DF7C7D0;
  if (!qword_27DF7C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7D0);
  }

  return result;
}

unint64_t sub_239837114()
{
  result = qword_27DF7C7D8;
  if (!qword_27DF7C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7D8);
  }

  return result;
}

unint64_t sub_23983716C()
{
  result = qword_27DF7C7E0;
  if (!qword_27DF7C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7E0);
  }

  return result;
}

unint64_t sub_2398371C4()
{
  result = qword_27DF7C7E8;
  if (!qword_27DF7C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7E8);
  }

  return result;
}

unint64_t sub_23983721C()
{
  result = qword_27DF7C7F0;
  if (!qword_27DF7C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7F0);
  }

  return result;
}

unint64_t sub_239837274()
{
  result = qword_27DF7C7F8;
  if (!qword_27DF7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C7F8);
  }

  return result;
}

unint64_t sub_2398372CC()
{
  result = qword_27DF7C800;
  if (!qword_27DF7C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C800);
  }

  return result;
}

unint64_t sub_239837324()
{
  result = qword_27DF7C808;
  if (!qword_27DF7C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C808);
  }

  return result;
}

unint64_t sub_23983737C()
{
  result = qword_27DF7C810;
  if (!qword_27DF7C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C810);
  }

  return result;
}

unint64_t sub_2398373D4()
{
  result = qword_27DF7C818;
  if (!qword_27DF7C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C818);
  }

  return result;
}

unint64_t sub_23983742C()
{
  result = qword_27DF7C820;
  if (!qword_27DF7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C820);
  }

  return result;
}

unint64_t sub_239837484()
{
  result = qword_27DF7C828;
  if (!qword_27DF7C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C828);
  }

  return result;
}

unint64_t sub_2398374DC()
{
  result = qword_27DF7C830;
  if (!qword_27DF7C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C830);
  }

  return result;
}

unint64_t sub_239837534()
{
  result = qword_27DF7C838;
  if (!qword_27DF7C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C838);
  }

  return result;
}

unint64_t sub_23983758C()
{
  result = qword_27DF7C840;
  if (!qword_27DF7C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C840);
  }

  return result;
}

unint64_t sub_2398375E4()
{
  result = qword_27DF7C848;
  if (!qword_27DF7C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C848);
  }

  return result;
}

unint64_t sub_23983763C()
{
  result = qword_27DF7C850;
  if (!qword_27DF7C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C850);
  }

  return result;
}

unint64_t sub_239837694()
{
  result = qword_27DF7C858;
  if (!qword_27DF7C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C858);
  }

  return result;
}

unint64_t sub_2398376EC()
{
  result = qword_27DF7C860;
  if (!qword_27DF7C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C860);
  }

  return result;
}

unint64_t sub_239837744()
{
  result = qword_27DF7C868;
  if (!qword_27DF7C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C868);
  }

  return result;
}

unint64_t sub_23983779C()
{
  result = qword_27DF7C870;
  if (!qword_27DF7C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C870);
  }

  return result;
}

unint64_t sub_2398377F4()
{
  result = qword_27DF7C878;
  if (!qword_27DF7C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C878);
  }

  return result;
}

unint64_t sub_23983784C()
{
  result = qword_27DF7C880;
  if (!qword_27DF7C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C880);
  }

  return result;
}

uint64_t sub_2398378A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_239856AF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C888, &unk_23985B9B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v56 - v16;
  v18 = *(v15 + 56);
  sub_2398380AC(a1, &v56 - v16);
  sub_2398380AC(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23982F038(v17, &qword_27DF7C4C0, &qword_23985A5D8);
      goto LABEL_9;
    }

LABEL_6:
    sub_23982F038(v17, &qword_27DF7C888, &unk_23985B9B0);
    return 0;
  }

  sub_2398380AC(v17, v12);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_2398368EC(&qword_27DF7C898, MEMORY[0x277CC95F0]);
  v21 = sub_239856C14();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_23982F038(v17, &qword_27DF7C4C0, &qword_23985A5D8);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v23 = _s14DeviceCriteriaO17DeviceDescriptionVMa(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v23[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = v23[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (!v36)
  {
    if (!v38)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v38)
  {
    return 0;
  }

  if (*v35 != *v37 || v36 != v38)
  {
    v39 = v23;
    v40 = sub_239857054();
    v23 = v39;
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  v41 = v23[8];
  v42 = a1 + v41;
  v44 = *(a1 + v41);
  v43 = *(a1 + v41 + 8);
  v45 = *(v42 + 16);
  v46 = (a2 + v41);
  v48 = *v46;
  v47 = v46[1];
  v49 = v46[2];
  if (v43 >> 60 != 15)
  {
    if (v47 >> 60 != 15)
    {
      v54 = *(v42 + 16);
      sub_239838098(v44, v43);
      sub_239838098(v48, v47);
      v55 = sub_239827F9C(v44, v43, v48, v47);
      sub_23982D9B4(v48, v47);
      if ((v55 & 1) != 0 && v45 == v49)
      {
        goto LABEL_31;
      }

      v52 = v44;
      v53 = v43;
      goto LABEL_37;
    }

LABEL_33:
    v51 = *(v42 + 16);
    sub_239838098(v44, v43);
    sub_239838098(v48, v47);
    sub_23982D9B4(v44, v43);
    v52 = v48;
    v53 = v47;
LABEL_37:
    sub_23982D9B4(v52, v53);
    return 0;
  }

  if (v47 >> 60 != 15)
  {
    goto LABEL_33;
  }

  v50 = *(v42 + 16);
  sub_239838098(v44, v43);
  sub_239838098(v48, v47);
LABEL_31:
  sub_23982D9B4(v44, v43);
  return 1;
}

uint64_t sub_239837D74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x63697665446C6C61 && a2 == 0xEA00000000007365 || (sub_239857054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000 || (sub_239857054() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697373696D6D6F63 && a2 == 0xEF4449676E696E6FLL || (sub_239857054() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (sub_239857054() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_239857054() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_239857054() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4E636972626166 && a2 == 0xEA00000000006564)
  {

    return 8;
  }

  else
  {
    v5 = sub_239857054();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_239838098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_239826330(a1, a2);
  }

  return a1;
}

uint64_t sub_2398380AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C4C0, &qword_23985A5D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_239838180()
{
  sub_239838264();
  if (v0 <= 0x3F)
  {
    sub_2398382BC(319, &qword_27DF7C8B8);
    if (v1 <= 0x3F)
    {
      sub_2398382BC(319, &qword_27DF7C8C0);
      if (v2 <= 0x3F)
      {
        sub_2398382BC(319, &qword_27DF7C8C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_239838264()
{
  if (!qword_27DF7C8B0)
  {
    sub_239856AF4();
    v0 = sub_239856DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF7C8B0);
    }
  }
}

void sub_2398382BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_239856DD4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_239838308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23983835C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t static MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.network(extendedPANID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2398383F4(void *a1, uint64_t a2, int a3)
{
  v24 = a3;
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C920, &qword_23985BDC0);
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C928, &qword_23985BDC8);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C930, &qword_23985BDD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239839320();
  sub_239857144();
  if (v24)
  {
    v25 = 0;
    sub_2398393C8();
    sub_239856FA4();
    (*(v7 + 8))(v10, v20);
  }

  else
  {
    v26 = 1;
    sub_239839374();
    sub_239856FA4();
    v18 = v23;
    sub_239857024();
    (*(v21 + 8))(v6, v18);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2398386EC(uint64_t a1)
{
  v2 = sub_239839320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239838728(uint64_t a1)
{
  v2 = sub_239839320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239838764(uint64_t a1)
{
  v2 = sub_2398393C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398387A0(uint64_t a1)
{
  v2 = sub_2398393C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239838800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465646E65747865 && a2 == 0xED000044494E4150)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_239857054();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_239838890(uint64_t a1)
{
  v2 = sub_239839374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2398388CC(uint64_t a1)
{
  v2 = sub_239839374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_239838908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23983941C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

BOOL sub_23983895C(uint64_t a1, uint64_t a2)
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

uint64_t static MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2 != 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2398389D4(uint64_t a1)
{
  v2 = sub_239838BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_239838A10(uint64_t a1)
{
  v2 = sub_239838BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C8D0, &qword_23985BAD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239838BA4();
  sub_239857144();
  v12 = v8;
  v13 = v9;
  sub_239838BF8();
  sub_239856FE4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_239838BA4()
{
  result = qword_27DF7C8D8;
  if (!qword_27DF7C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8D8);
  }

  return result;
}

unint64_t sub_239838BF8()
{
  result = qword_27DF7C8E0;
  if (!qword_27DF7C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8E0);
  }

  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v2 = *v0;
  MEMORY[0x23EE790C0](1);
  return MEMORY[0x23EE790F0](v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_239857094();
  if (v2 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v1);
  }

  return sub_2398570E4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.ThreadNetworkAssociation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C8E8, &qword_23985BAD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239838BA4();
  sub_239857134();
  if (!v2)
  {
    sub_239838FB0();
    sub_239856F44();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_239838E84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_239857094();
  if (v2 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v1);
  }

  return sub_2398570E4();
}

uint64_t sub_239838EF4()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x23EE790C0](0);
  }

  v2 = *v0;
  MEMORY[0x23EE790C0](1);
  return MEMORY[0x23EE790F0](v2);
}

uint64_t sub_239838F44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_239857094();
  if (v2 == 1)
  {
    MEMORY[0x23EE790C0](0);
  }

  else
  {
    MEMORY[0x23EE790C0](1);
    MEMORY[0x23EE790F0](v1);
  }

  return sub_2398570E4();
}

unint64_t sub_239838FB0()
{
  result = qword_27DF7C8F0;
  if (!qword_27DF7C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8F0);
  }

  return result;
}

unint64_t sub_239839008()
{
  result = qword_27DF7C8F8;
  if (!qword_27DF7C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C8F8);
  }

  return result;
}

uint64_t sub_23983908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s24ThreadNetworkAssociationV18AssociationDetailsOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24ThreadNetworkAssociationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t _s24ThreadNetworkAssociationV18AssociationDetailsOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_239839164(uint64_t a1)
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

uint64_t sub_239839180(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2398391C4()
{
  result = qword_27DF7C900;
  if (!qword_27DF7C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C900);
  }

  return result;
}

unint64_t sub_23983921C()
{
  result = qword_27DF7C908;
  if (!qword_27DF7C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C908);
  }

  return result;
}

unint64_t sub_239839274()
{
  result = qword_27DF7C910;
  if (!qword_27DF7C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C910);
  }

  return result;
}

unint64_t sub_2398392CC()
{
  result = qword_27DF7C918;
  if (!qword_27DF7C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C918);
  }

  return result;
}

unint64_t sub_239839320()
{
  result = qword_27DF7C938;
  if (!qword_27DF7C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C938);
  }

  return result;
}

unint64_t sub_239839374()
{
  result = qword_27DF7C940;
  if (!qword_27DF7C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C940);
  }

  return result;
}

unint64_t sub_2398393C8()
{
  result = qword_27DF7C948;
  if (!qword_27DF7C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C948);
  }

  return result;
}

uint64_t sub_23983941C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C950, &qword_23985BDD8);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C958, &qword_23985BDE0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C960, &qword_23985BDE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v36 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_239839320();
  v18 = v35;
  sub_239857134();
  if (!v18)
  {
    v31 = v6;
    v19 = v34;
    v35 = v11;
    v20 = sub_239856F94();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_2398383C8();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_239856E44();
      swift_allocError();
      v25 = v10;
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C2E0, &unk_239859FC0) + 48);
      *v27 = &_s24ThreadNetworkAssociationV18AssociationDetailsON;
      v17 = v14;
      sub_239856EF4();
      sub_239856E34();
      (*(*(v24 - 8) + 104))(v27, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v41 = 1;
      sub_239839374();
      sub_239856EE4();
      v23 = v35;
      v17 = sub_239856F84();
      (*(v33 + 8))(v5, v19);
      (*(v23 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      sub_2398393C8();
      sub_239856EE4();
      v30 = v35;
      (*(v32 + 8))(v9, v31);
      (*(v30 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v17;
}

unint64_t sub_239839928()
{
  result = qword_27DF7C968;
  if (!qword_27DF7C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C968);
  }

  return result;
}

unint64_t sub_239839980()
{
  result = qword_27DF7C970;
  if (!qword_27DF7C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C970);
  }

  return result;
}

unint64_t sub_2398399D8()
{
  result = qword_27DF7C978;
  if (!qword_27DF7C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C978);
  }

  return result;
}

unint64_t sub_239839A30()
{
  result = qword_27DF7C980;
  if (!qword_27DF7C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C980);
  }

  return result;
}

unint64_t sub_239839A88()
{
  result = qword_27DF7C988;
  if (!qword_27DF7C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C988);
  }

  return result;
}

unint64_t sub_239839AE0()
{
  result = qword_27DF7C990;
  if (!qword_27DF7C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C990);
  }

  return result;
}

unint64_t sub_239839B38()
{
  result = qword_27DF7C998;
  if (!qword_27DF7C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C998);
  }

  return result;
}

unint64_t sub_239839B90()
{
  result = qword_27DF7C9A0;
  if (!qword_27DF7C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9A0);
  }

  return result;
}

uint64_t sub_239839BF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632435;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7974697275636573;
    }

    else
    {
      v4 = 1684955490;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1769173874;
    }

    else
    {
      v4 = 1684632435;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x7974697275636573;
  if (a2 != 2)
  {
    v7 = 1684955490;
    v6 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 1769173874;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_239857054();
  }

  return v10 & 1;
}

uint64_t sub_239839D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    v3 = 0xD000000000000012;
    if (v2 == 2)
    {
      v4 = 0x800000023985CB90;
    }

    else
    {
      v4 = 0x800000023985CBB0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7961507075746573;
    }

    else
    {
      v3 = 0x79676F6C6F706F74;
    }

    if (v2)
    {
      v4 = 0xEC00000064616F6CLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000023985CB90;
    }

    else
    {
      v6 = 0x800000023985CBB0;
    }

    if (v3 != 0xD000000000000012)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7961507075746573;
    }

    else
    {
      v5 = 0x79676F6C6F706F74;
    }

    if (a2)
    {
      v6 = 0xEC00000064616F6CLL;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
LABEL_26:
    v7 = sub_239857054();
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.ssid.getter()
{
  v1 = *v0;
  sub_239826330(*v0, *(v0 + 8));
  return v1;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.ssid.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2398282D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.init(ssid:rssi:security:band:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A084()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A110()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570B4();
}

uint64_t sub_23983A170()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_239857094();
  sub_239856AC4();
  sub_2398570B4();
  sub_2398570B4();
  sub_2398570B4();
  return sub_2398570E4();
}

uint64_t sub_23983A208()
{
  v1 = *v0;
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23983A2B0()
{
  *v0;
  *v0;
  *v0;
  sub_239856C64();
}

uint64_t sub_23983A344()
{
  v1 = *v0;
  sub_239857094();
  sub_239856C64();

  return sub_2398570E4();
}

uint64_t sub_23983A3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23983ACF8();
  *a2 = result;
  return result;
}

void sub_23983A418(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632435;
  v4 = 0xE800000000000000;
  v5 = 0x7974697275636573;
  if (*v1 != 2)
  {
    v5 = 1684955490;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1769173874;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23983A47C()
{
  v1 = 1684632435;
  v2 = 0x7974697275636573;
  if (*v0 != 2)
  {
    v2 = 1684955490;
  }

  if (*v0)
  {
    v1 = 1769173874;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23983A4DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23983ACF8();
  *a1 = result;
  return result;
}

uint64_t sub_23983A504(uint64_t a1)
{
  v2 = sub_23983AA68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23983A540(uint64_t a1)
{
  v2 = sub_23983AA68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9A8, &qword_23985C0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23983AA68();
  sub_239857134();
  if (!v2)
  {
    v20 = 0;
    sub_239828A30();
    sub_239856F44();
    v12 = v17;
    v11 = v18;
    LOBYTE(v17) = 1;
    v19 = sub_239856F54();
    LOBYTE(v17) = 2;
    v16 = sub_239856F64();
    LOBYTE(v17) = 3;
    v14 = sub_239856F64();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v19;
    *(a2 + 17) = v16;
    *(a2 + 18) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MatterAddDeviceExtensionRequestHandler.WiFiScanResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C9B8, &qword_23985C0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v18 = *(v1 + 16);
  v10 = *(v1 + 17);
  v14[0] = *(v1 + 18);
  v14[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_239826330(v9, v8);
  sub_23983AA68();
  sub_239857144();
  v16 = v9;
  v17 = v8;
  v19 = 0;
  sub_239828988();
  v12 = v15;
  sub_239856FE4();
  sub_2398282D8(v16, v17);
  if (!v12)
  {
    LOBYTE(v16) = 1;
    sub_239856FF4();
    LOBYTE(v16) = 2;
    sub_239857004();
    LOBYTE(v16) = 3;
    sub_239857004();
  }

  return (*(v4 + 8))(v7, v3);
}

BOOL _s13MatterSupport0A32AddDeviceExtensionRequestHandlerC14WiFiScanResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 18);
  v8 = sub_239827F9C(*a1, *(a1 + 8), *a2, *(a2 + 8));
  v9 = v4 == v7;
  if (v2 != v5 || v3 != v6)
  {
    v9 = 0;
  }

  return (v8 & 1) != 0 && v9;
}

unint64_t sub_23983AA68()
{
  result = qword_27DF7C9B0;
  if (!qword_27DF7C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9B0);
  }

  return result;
}

unint64_t sub_23983AAC0()
{
  result = qword_27DF7C9C0;
  if (!qword_27DF7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9C0);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_23983AB28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 19))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23983AB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_23983ABF4()
{
  result = qword_27DF7C9C8;
  if (!qword_27DF7C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF7C9C8);
  }

  return result;
}