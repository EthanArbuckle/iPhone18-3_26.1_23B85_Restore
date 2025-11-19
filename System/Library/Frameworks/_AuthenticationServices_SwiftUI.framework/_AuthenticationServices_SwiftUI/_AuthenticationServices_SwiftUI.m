uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23B69D788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B69D7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_23B69D868(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B69D888(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_23B69D8C4@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 0;
LABEL_15:
    *a1 = result;
    *(a1 + 8) = v3;
    return result;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 1;
    goto LABEL_15;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 2;
    goto LABEL_15;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 3;
    goto LABEL_15;
  }

  sub_23B6A9610();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = 7;
    goto LABEL_15;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 4;
    goto LABEL_15;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 5;
    goto LABEL_15;
  }

  sub_23B6A9970();
  MEMORY[0x23EEA20E0](0xD000000000000014, 0x800000023B6ACF00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176D80, &qword_23B6AA598);
  sub_23B6A9980();
  result = sub_23B6A9990();
  __break(1u);
  return result;
}

uint64_t sub_23B69DA9C(uint64_t a1, id *a2)
{
  result = sub_23B6A9810();
  *a2 = 0;
  return result;
}

uint64_t sub_23B69DB14(uint64_t a1, id *a2)
{
  v3 = sub_23B6A9820();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B69DB94@<X0>(uint64_t *a1@<X8>)
{
  sub_23B6A9830();
  v2 = sub_23B6A9800();

  *a1 = v2;
  return result;
}

BOOL sub_23B69DC1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23B69DC4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23B69DC78@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23B69DD64(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176DE8, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23B69DDD0(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176DE8, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23B69DE40(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23B69DEBC(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176E28, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23B69DF28(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176E28, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23B69DF94(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23B69E000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23B69F164(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23B69E05C(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23B69E0C8(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23B69E134(void *a1, uint64_t a2)
{
  v4 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23B69E1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

void *sub_23B69E268@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B69E294(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23B69E300(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23B69E36C(void *a1, uint64_t a2)
{
  v4 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23B69E3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23B69E478()
{
  v2 = *v0;
  sub_23B6A9A20();
  sub_23B6A97F0();
  return sub_23B6A9A40();
}

uint64_t sub_23B69E4D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23B6A9800();

  *a2 = v5;
  return result;
}

uint64_t sub_23B69E520@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23B6A9830();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23B69E54C(uint64_t a1)
{
  v2 = sub_23B69E698(&qword_27E176D10, type metadata accessor for ASAuthorizationCustomMethod);
  v3 = sub_23B69E698(&qword_27E176D18, type metadata accessor for ASAuthorizationCustomMethod);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B69E698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B69E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B69E698(&qword_27E176E20, type metadata accessor for ASAuthorizationError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23B69E778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B69E698(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_23B69E7FC()
{
  v1 = *v0;
  v2 = sub_23B6A9830();
  v3 = MEMORY[0x23EEA20F0](v2);

  return v3;
}

uint64_t sub_23B69E838()
{
  v1 = *v0;
  sub_23B6A9830();
  sub_23B6A9850();
}

uint64_t sub_23B69E88C()
{
  v1 = *v0;
  sub_23B6A9830();
  sub_23B6A9A20();
  sub_23B6A9850();
  v2 = sub_23B6A9A40();

  return v2;
}

uint64_t sub_23B69E900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23B6A9830();
  v6 = v5;
  if (v4 == sub_23B6A9830() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23B6A99C0();
  }

  return v9 & 1;
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

unint64_t sub_23B69EE28()
{
  result = qword_27E176E10;
  if (!qword_27E176E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E176E10);
  }

  return result;
}

void sub_23B69F040(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23B69F164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t AuthorizationController.performRequests(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  *(v3 + 64) = sub_23B6A98D0();
  *(v3 + 72) = sub_23B6A98C0();
  v5 = sub_23B6A9890();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23B69F270, v5, v4);
}

uint64_t sub_23B69F270()
{
  v1 = v0[7];
  v2 = v0[8];

  v0[12] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_23B69F300, v4, v3);
}

uint64_t sub_23B69F300()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for AuthorizationOperation();
  v21 = *(v0 + 48);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177080, &qword_23B6AAD58);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *&v4[v7] = v8;
  *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController] = 0;
  *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider] = 0;
  v9 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_requestContext];
  *v9 = v2;
  *(v9 + 1) = 0;
  v9[16] = 0;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  v10 = objc_msgSendSuper2((v0 + 16), sel_init);
  *(v0 + 120) = v10;
  v11 = *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  v12 = *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8];
  *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider] = v21;
  sub_23B6A202C(v11);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = v10;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *(v14 + 16) = v10;
  v15 = sub_23B6A98C0();
  *(v0 + 144) = v15;
  v16 = *(MEMORY[0x277D85A10] + 4);
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_23B69F51C;
  v18 = *(v0 + 32);
  v19 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v18, &unk_23B6AAD68, v13, sub_23B6A20DC, v14, v15, v19, &type metadata for ASAuthorizationResult);
}

uint64_t sub_23B69F51C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v11 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23B69F6C4;
  }

  else
  {
    v8 = v2[17];
    v7 = v2[18];
    v9 = v2[16];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23B69F654;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B69F654()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_23B6A29E0, v2, v3);
}

uint64_t sub_23B69F6C4()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x2822009F8](sub_23B69F754, v6, v7);
}

uint64_t sub_23B69F754()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t AuthorizationController.performRequest(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  sub_23B6A98D0();
  *(v3 + 64) = sub_23B6A98C0();
  v5 = sub_23B6A9890();
  *(v3 + 72) = v5;
  *(v3 + 80) = v4;

  return MEMORY[0x2822009F8](sub_23B69F858, v5, v4);
}

uint64_t sub_23B69F858()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF0, &unk_23B6AB3A0);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = xmmword_23B6AAD40;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_23B69F948;
  v5 = *(v0 + 32);

  return AuthorizationController.performRequests(_:)(v5, v2);
}

uint64_t sub_23B69F948()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B69FAC8;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B69FA64;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B69FA64()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B69FAC8()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t AuthorizationController.performRequests(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 56) = sub_23B6A98D0();
  *(v4 + 64) = sub_23B6A98C0();
  v6 = sub_23B6A9890();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_23B69FBE0, v6, v5);
}

uint64_t sub_23B69FBE0()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[11] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v0[12] = v4;
  v0[13] = v3;

  return MEMORY[0x2822009F8](sub_23B69FC70, v4, v3);
}

uint64_t sub_23B69FC70()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = type metadata accessor for AuthorizationOperation();
  v18 = *(v0 + 40);
  v5 = objc_allocWithZone(v4);

  v7 = sub_23B6A315C(v6, v2);
  *(v0 + 112) = v7;
  v8 = *&v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  v9 = *&v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8];
  *&v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider] = v18;
  sub_23B6A202C(v8);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *(v10 + 16) = v7;
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *(v11 + 16) = v7;
  v12 = sub_23B6A98C0();
  *(v0 + 136) = v12;
  v13 = *(MEMORY[0x277D85A10] + 4);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_23B69FDF0;
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v15, &unk_23B6AAD88, v10, sub_23B6A29D0, v11, v12, v16, &type metadata for ASAuthorizationResult);
}

uint64_t sub_23B69FDF0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B69FF98;
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B69FF28;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B69FF28()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_23B6A29DC, v2, v3);
}

uint64_t sub_23B69FF98()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2822009F8](sub_23B6A29D4, v6, v7);
}

uint64_t AuthorizationController.performRequest(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_23B6A98D0();
  *(v4 + 72) = sub_23B6A98C0();
  v6 = sub_23B6A9890();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_23B6A00CC, v6, v5);
}

uint64_t sub_23B6A00CC()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF0, &unk_23B6AB3A0);
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = xmmword_23B6AAD40;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_23B6A01C0;
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  return AuthorizationController.performRequests(_:options:)(v6, v2, v5);
}

uint64_t sub_23B6A01C0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_23B6A0340;
  }

  else
  {
    v7 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_23B6A02DC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A02DC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A0340()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t AuthorizationController.performRequests(_:customMethods:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 56) = sub_23B6A98D0();
  *(v4 + 64) = sub_23B6A98C0();
  v6 = sub_23B6A9890();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_23B6A0458, v6, v5);
}

uint64_t sub_23B6A0458()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[11] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v0[12] = v4;
  v0[13] = v3;

  return MEMORY[0x2822009F8](sub_23B6A04E8, v4, v3);
}

void sub_23B6A04E8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = type metadata accessor for AuthorizationOperation();
  v6 = *(v0 + 40);
  v5 = objc_allocWithZone(v4);
  sub_23B6A4148();
}

uint64_t sub_23B6A0540(uint64_t a1)
{
  v1[14] = a1;
  v3 = *(a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v4 = *(a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8);
  *(a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider) = v13;

  sub_23B6A202C(v3);
  v5 = swift_task_alloc();
  v1[15] = v5;
  *(v5 + 16) = a1;
  v6 = swift_task_alloc();
  v1[16] = v6;
  *(v6 + 16) = a1;
  v7 = sub_23B6A98C0();
  v1[17] = v7;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_23B6A0678;
  v10 = v1[2];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v10, &unk_23B6AADA0, v5, sub_23B6A29D0, v6, v7, v11, &type metadata for ASAuthorizationResult);
}

uint64_t sub_23B6A0678()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B6A07B0;
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[15];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B69FF28;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A07B0()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2822009F8](sub_23B6A0840, v6, v7);
}

uint64_t sub_23B6A0840()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t AuthorizationController.performRequest(_:customMethods:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  *(v4 + 96) = *v3;
  sub_23B6A98D0();
  *(v4 + 112) = sub_23B6A98C0();
  v6 = sub_23B6A9890();
  *(v4 + 120) = v6;
  *(v4 + 128) = v5;

  return MEMORY[0x2822009F8](sub_23B6A0948, v6, v5);
}

uint64_t sub_23B6A0948()
{
  v1 = *(v0 + 80);
  *(v0 + 56) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF0, &unk_23B6AB3A0);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_23B6A0A2C;
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  return AuthorizationController.performRequests(_:customMethods:)(v6, inited, v5);
}

uint64_t sub_23B6A0A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_23B6A0BB8;
  }

  else
  {
    v7 = v2[17];
    swift_setDeallocating();
    v8 = *(v7 + 32);
    swift_unknownObjectRelease();
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_23B6A0B54;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A0B54()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A0BB8()
{
  v1 = v0[17];
  v2 = v0[14];

  swift_setDeallocating();
  v3 = *(v1 + 32);
  swift_unknownObjectRelease();
  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t AuthorizationController.performAutoFillAssistedRequests(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  *(v3 + 64) = sub_23B6A98D0();
  *(v3 + 72) = sub_23B6A98C0();
  v5 = sub_23B6A9890();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_23B6A0CD4, v5, v4);
}

uint64_t sub_23B6A0CD4()
{
  v1 = v0[7];
  v2 = v0[8];

  v0[12] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_23B6A0D64, v4, v3);
}

uint64_t sub_23B6A0D64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for AuthorizationOperation();
  v21 = *(v0 + 48);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177080, &qword_23B6AAD58);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *&v4[v7] = v8;
  *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController] = 0;
  *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider] = 0;
  v9 = &v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_requestContext];
  *v9 = v2;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;

  v10 = objc_msgSendSuper2((v0 + 16), sel_init);
  *(v0 + 120) = v10;
  v11 = *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  v12 = *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8];
  *&v10[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider] = v21;
  sub_23B6A202C(v11);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = v10;
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *(v14 + 16) = v10;
  v15 = sub_23B6A98C0();
  *(v0 + 144) = v15;
  v16 = *(MEMORY[0x277D85A10] + 4);
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_23B6A0F84;
  v18 = *(v0 + 32);
  v19 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v18, &unk_23B6AADB8, v13, sub_23B6A29D0, v14, v15, v19, &type metadata for ASAuthorizationResult);
}

uint64_t sub_23B6A0F84()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v11 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23B6A10BC;
  }

  else
  {
    v8 = v2[17];
    v7 = v2[18];
    v9 = v2[16];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_23B69F654;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A10BC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];

  v6 = v0[10];
  v7 = v0[11];

  return MEMORY[0x2822009F8](sub_23B6A29D8, v6, v7);
}

uint64_t AuthorizationController.performAutoFillAssistedRequest(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = *v2;
  sub_23B6A98D0();
  *(v3 + 64) = sub_23B6A98C0();
  v5 = sub_23B6A9890();
  *(v3 + 72) = v5;
  *(v3 + 80) = v4;

  return MEMORY[0x2822009F8](sub_23B6A11EC, v5, v4);
}

uint64_t sub_23B6A11EC()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF0, &unk_23B6AB3A0);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = xmmword_23B6AAD40;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_23B6A12DC;
  v5 = *(v0 + 32);

  return AuthorizationController.performAutoFillAssistedRequests(_:)(v5, v2);
}

uint64_t sub_23B6A12DC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B6A29C8;
  }

  else
  {
    v7 = v2[11];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B6A29DC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A13F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B6A98D0();
  v2[5] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B6A1494, v4, v3);
}

uint64_t sub_23B6A1494()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23B6A98C0();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23B6A159C;
  v7 = v0[2];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v7, v3, v8, 0xD000000000000021, 0x800000023B6ACF20, sub_23B6A28AC, v4, &type metadata for ASAuthorizationResult);
}

uint64_t sub_23B6A159C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_23B6A1724;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_23B6A16C0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A16C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A1724()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_23B6A179C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177000, &qword_23B6AAE38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = (a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  v12 = *(a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  v13 = *(a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler + 8);
  *v11 = sub_23B6A2948;
  v11[1] = v10;
  sub_23B6A202C(v12);
  return sub_23B6A29E4();
}

uint64_t sub_23B6A18F0(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177000, &qword_23B6AAE38);
    return sub_23B6A98A0();
  }

  else
  {
    v6 = *(a1 + 8);
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177000, &qword_23B6AAE38);
    return sub_23B6A98B0();
  }
}

uint64_t sub_23B6A1984(void *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF8, &qword_23B6AAE08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v11 - v3;
  v5 = sub_23B6A98F0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_23B6A98D0();
  v6 = a1;
  v7 = sub_23B6A98C0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_23B6A1BA8(0, 0, v4, &unk_23B6AAE18, v8);
}

uint64_t sub_23B6A1AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23B6A98D0();
  *(v4 + 24) = sub_23B6A98C0();
  v6 = sub_23B6A9890();

  return MEMORY[0x2822009F8](sub_23B6A1B44, v6, v5);
}

uint64_t sub_23B6A1B44()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_23B6A2D5C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_23B6A1BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF8, &qword_23B6AAE08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23B6A26E4(a3, v26 - v10);
  v12 = sub_23B6A98F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B6A2754(v11);
  }

  else
  {
    sub_23B6A98E0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23B6A9890();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23B6A9840() + 32;
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

      sub_23B6A2754(a3);

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

  sub_23B6A2754(a3);
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

uint64_t EnvironmentValues.authorizationController.getter@<X0>(id (**a1)()@<X8>)
{
  v3 = sub_23B6A9670();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a1 = sub_23B6A24F0;
  a1[1] = v7;
  return result;
}

id sub_23B6A1F90()
{
  result = sub_23B6A9650();
  if (result)
  {
    v1 = result;
    v2 = [result scene];

    if (v2)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
      }

      v4 = [v3 keyWindow];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B6A202C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B6A203C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6A29CC;

  return sub_23B6A13F8(a1, v4);
}

uint64_t sub_23B6A20E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6A21DC;

  return v7(a1);
}

uint64_t sub_23B6A21DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6A22D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6A2374;

  return sub_23B6A13F8(a1, v4);
}

uint64_t sub_23B6A2374()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B6A2468()
{
  v1 = sub_23B6A9670();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_23B6A24F0()
{
  v0 = *(*(sub_23B6A9670() - 8) + 80);

  return sub_23B6A1F90();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B6A255C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6A25A4(uint64_t result, int a2, int a3)
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

uint64_t sub_23B6A25F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B6A2630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23B6A2374;

  return sub_23B6A1AAC(a1, v4, v5, v6);
}

uint64_t sub_23B6A26E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF8, &qword_23B6AAE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6A2754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF8, &qword_23B6AAE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B6A27BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6A27F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B6A29CC;

  return sub_23B6A20E4(a1, v5);
}

uint64_t sub_23B6A28B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177000, &qword_23B6AAE38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6A2948(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177000, &qword_23B6AAE38) - 8) + 80);

  return sub_23B6A18F0(a1);
}

uint64_t sub_23B6A29E4()
{
  v1 = sub_23B6A97B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B6A97D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isCancelled])
  {
    sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
    v11 = sub_23B6A9910();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v22 = sub_23B6A4274;
    v23 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v13 = &block_descriptor_28;
  }

  else
  {
    sub_23B6A3364(1);
    sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
    v11 = sub_23B6A9910();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v22 = sub_23B6A424C;
    v23 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v13 = &block_descriptor_22;
  }

  v20 = sub_23B6A53CC;
  v21 = v13;
  v15 = _Block_copy(&aBlock);
  v16 = v0;

  sub_23B6A97C0();
  aBlock = MEMORY[0x277D84F90];
  sub_23B6A4204(&qword_27E177068, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177070, &unk_23B6AAFC0);
  sub_23B6A409C();
  sub_23B6A9960();
  MEMORY[0x23EEA21A0](0, v10, v5, v15);
  _Block_release(v15);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23B6A2D5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23B6A97B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B6A97D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_cancel);
  sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
  v13 = sub_23B6A9910();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_23B6A42F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B6A53CC;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_23B6A97C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B6A4204(&qword_27E177068, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177070, &unk_23B6AAFC0);
  sub_23B6A409C();
  sub_23B6A9960();
  MEMORY[0x23EEA21A0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_23B6A3054()
{
  v1 = *v0;
  sub_23B6A9A20();
  MEMORY[0x23EEA22B0](v1);
  return sub_23B6A9A40();
}

uint64_t sub_23B6A30C8()
{
  v1 = *v0;
  sub_23B6A9A20();
  MEMORY[0x23EEA22B0](v1);
  return sub_23B6A9A40();
}

id sub_23B6A315C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177080, &qword_23B6AAD58);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController] = 0;
  *&v2[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider] = 0;
  v10 = &v2[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_requestContext];
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_23B6A3238(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  v3 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  if (v3)
  {
    v4 = v2[1];
    v17 = a1;
    v18 = 256;
    sub_23B6A3F80(v3);
    v6 = a1;
    v3(&v17);
    sub_23B6A202C(v3);
    sub_23B6A3F90(v17);
    v7 = *v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_23B6A202C(v7);
  v9 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider) = 0;

  v10 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v11 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v12 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_23B6A202C(v11);
  v13 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController;
  v14 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController);
  if (v14)
  {
    [v14 cancel];
    v15 = *(v1 + v13);
  }

  else
  {
    v15 = 0;
  }

  *(v1 + v13) = 0;

  return sub_23B6A3364(2);
}

uint64_t sub_23B6A3364(char a1)
{
  swift_getKeyPath();
  sub_23B6A9580();
  swift_getKeyPath();
  sub_23B6A9580();
  v3 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 20));
  swift_getKeyPath();
  sub_23B6A9590();
  swift_getKeyPath();
  return sub_23B6A9590();
}

uint64_t sub_23B6A3438()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v3 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  if (v3)
  {
    v4 = v2[1];

    v6 = v3(v5);
    sub_23B6A202C(v3);
    v7 = 0;
    if (v6)
    {
      v8 = type metadata accessor for AuthorizationOperation.PresentationContextProvider();
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR____TtCC31_AuthenticationServices_SwiftUI22AuthorizationOperationP33_BCDE3EDBB9065C8EBFE58D5929093A3327PresentationContextProvider_presentationAnchor] = v6;
      v14.receiver = v9;
      v14.super_class = v8;
      v7 = objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider) = v7;

  v11 = *v2;
  v12 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  return sub_23B6A202C(v11);
}

id sub_23B6A3508()
{
  v1 = v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_requestContext;
  v2 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_requestContext);
  v3 = objc_allocWithZone(MEMORY[0x277CBA8D8]);
  sub_23B6A4290(0, &qword_27E1771B0, 0x277CBA900);
  v4 = sub_23B6A9880();
  v5 = [v3 initWithAuthorizationRequests_];

  v6 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController;
  v7 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController);
  *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController) = v5;

  v8 = *(v0 + v6);
  if (v8)
  {
    [v8 setDelegate_];
    v9 = *(v0 + v6);
    if (v9)
    {
      [v9 setPresentationContextProvider_];
    }
  }

  result = *(v0 + v6);
  if (*(v1 + 16) == 1)
  {
    if (!result)
    {
      return result;
    }

    v11 = sel_performAutoFillAssistedRequests;

    return [result v11];
  }

  if (result)
  {
    v12 = *(v1 + 8);
    v11 = sel_performRequestsWithOptions_;

    return [result v11];
  }

  return result;
}

void sub_23B6A3690()
{
  type metadata accessor for ASAuthorizationError(0);
  sub_23B6A6F9C(MEMORY[0x277D84F90]);
  sub_23B6A4204(&qword_27E176E20, type metadata accessor for ASAuthorizationError);
  sub_23B6A9570();
  sub_23B6A3238(v0);
}

BOOL sub_23B6A37EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 == 1;
}

BOOL sub_23B6A3888()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 == 2;
}

uint64_t sub_23B6A38CC(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  v3 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  if (v3)
  {
    v4 = v2[1];
    v5 = *(a1 + 8);
    v15 = *a1;
    v16 = v5;
    v17 = 0;
    sub_23B6A3F80(v3);
    v6 = v15;
    v3(&v15);
    sub_23B6A202C(v3);
    sub_23B6A3F90(v15);
    v7 = *v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_23B6A202C(v7);
  v9 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider) = 0;

  v10 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v11 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v12 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider + 8);
  *v10 = 0;
  v10[1] = 0;
  sub_23B6A202C(v11);
  v13 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController) = 0;

  return sub_23B6A3364(2);
}

id sub_23B6A3B1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6A3D24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6A3D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationOperation.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthorizationOperation.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B6A3F2C()
{
  result = qword_27E177058;
  if (!qword_27E177058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177058);
  }

  return result;
}

uint64_t sub_23B6A3F80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23B6A3F9C(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4 == 1;
}

void sub_23B6A3FF4(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4 == 2;
}

uint64_t sub_23B6A404C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B6A409C()
{
  result = qword_27E177078;
  if (!qword_27E177078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E177070, &unk_23B6AAFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177078);
  }

  return result;
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

void sub_23B6A4148()
{
  v1 = (v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationCompletionHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177080, &qword_23B6AAD58);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController) = 0;
  *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationContextProvider) = 0;
  sub_23B6A9990();
  __break(1u);
}

uint64_t sub_23B6A4204(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_23B6A424C()
{
  v1 = *(v0 + 16);
  sub_23B6A3438();
  return sub_23B6A3508();
}

uint64_t sub_23B6A4290(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unsigned __int8 *SignInWithAppleButton.init(_:onRequest:onCompletion:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t SignInWithAppleButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 1);
  *(a1 + 48) = v5;
}

uint64_t sub_23B6A43B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 1);
  *(a1 + 48) = v5;
}

uint64_t View.signInWithAppleButtonStyle(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_23B6A9790();
}

uint64_t sub_23B6A44A0()
{
  sub_23B6A5330();

  return sub_23B6A9680();
}

uint64_t sub_23B6A44E8@<X0>(_BYTE *a1@<X8>)
{
  sub_23B6A5330();
  result = sub_23B6A9680();
  *a1 = v3;
  return result;
}

uint64_t sub_23B6A4538(char *a1)
{
  v2 = *a1;
  sub_23B6A5330();
  return sub_23B6A9690();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_23B6A45F8()
{
  v1 = sub_23B6A9670();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 16);
  if (*(v0 + 8) == 1)
  {
    LOBYTE(v16) = *v0;
  }

  else
  {

    sub_23B6A9900();
    v8 = sub_23B6A9760();
    sub_23B6A9620();

    sub_23B6A9660();
    swift_getAtKeyPath();
    sub_23B6A51C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v16;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBA8C0]) initWithAuthorizationButtonType:v7 authorizationButtonStyle:qword_23B6AB410[v6]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177198, &qword_23B6AB398);
  sub_23B6A9750();
  v10 = v16;
  v11 = *&v16[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_button];
  *&v16[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_button] = v9;
  v12 = v9;

  sub_23B6A9750();
  v13 = v16;
  [v12 addTarget:v16 action:sel_buttonPressed forControlEvents:64];

  return v12;
}

void sub_23B6A480C(void *a1)
{
  v1 = [a1 window];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177198, &qword_23B6AB398);
    sub_23B6A9750();
    v3 = *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_presentationAnchor];
    *&v4[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_presentationAnchor] = v2;
  }
}

id sub_23B6A4890@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  v6 = type metadata accessor for Coordinator();
  v10 = *(v1 + 32);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_presentationAnchor] = 0;
  *&v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_button] = 0;
  v8 = &v7[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_config];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 1) = v10;
  *(v8 + 4) = v5;
  v11.receiver = v7;
  v11.super_class = v6;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_23B6A4990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6A51D0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B6A49F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6A51D0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B6A4A74()
{
  sub_23B6A51D0();
  sub_23B6A9730();
  __break(1u);
}

void sub_23B6A4A9C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBA8D0]) init];
  v3 = [v2 createRequest];
  v4 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_config + 8);
  v5 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_config + 16);
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176FF0, &unk_23B6AB3A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B6AAD40;
  *(v6 + 32) = v3;
  v7 = objc_allocWithZone(MEMORY[0x277CBA8D8]);
  sub_23B6A52E4();
  v8 = v3;
  v9 = sub_23B6A9880();

  v10 = [v7 initWithAuthorizationRequests_];

  [v10 setDelegate_];
  [v10 setPresentationContextProvider_];
  [v10 performRequests];
}

id sub_23B6A4C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23B6A4DB4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_config + 24];
  v8 = *&a1[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_config + 32];
  v11 = a4;
  v10 = a1;
  v9(a4, a5);
}

unint64_t sub_23B6A4E40()
{
  result = qword_27E177170;
  if (!qword_27E177170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177170);
  }

  return result;
}

uint64_t sub_23B6A4E94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E177178, &qword_23B6AB108);
  sub_23B6A9640();
  sub_23B6A4F0C();
  return swift_getWitnessTable();
}

unint64_t sub_23B6A4F0C()
{
  result = qword_27E177180;
  if (!qword_27E177180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E177178, &qword_23B6AB108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177180);
  }

  return result;
}

uint64_t sub_23B6A4F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23B6A4FE0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B6A5060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6A50A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23B6A5108()
{
  result = qword_27E177188;
  if (!qword_27E177188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177188);
  }

  return result;
}

unint64_t sub_23B6A5160()
{
  result = qword_27E177190;
  if (!qword_27E177190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E177190);
  }

  return result;
}

uint64_t sub_23B6A51C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_23B6A51D0()
{
  result = qword_27E1771A0;
  if (!qword_27E1771A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1771A0);
  }

  return result;
}

uint64_t sub_23B6A5224()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_presentationAnchor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_presentationAnchor);
LABEL_6:
    v5 = v1;
    return v2;
  }

  v3 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUIP33_A3D59D81812617403D8A44C04D5B775311Coordinator_button);
  if (v3)
  {
    v4 = [v3 window];
    if (v4)
    {
      v2 = v4;
      v1 = 0;
      goto LABEL_6;
    }
  }

  result = sub_23B6A9990();
  __break(1u);
  return result;
}

unint64_t sub_23B6A52E4()
{
  result = qword_27E1771B0;
  if (!qword_27E1771B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1771B0);
  }

  return result;
}

unint64_t sub_23B6A5330()
{
  result = qword_27E1771B8;
  if (!qword_27E1771B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1771B8);
  }

  return result;
}

uint64_t sub_23B6A53CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23B6A5460()
{
  v1 = sub_23B6A97B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B6A97D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isCancelled])
  {
    sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
    v11 = sub_23B6A9910();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v22 = sub_23B6A71FC;
    v23 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v13 = &block_descriptor_26;
  }

  else
  {
    sub_23B6A5954(1);
    sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
    v11 = sub_23B6A9910();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v22 = sub_23B6A71D4;
    v23 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v13 = &block_descriptor_20;
  }

  v20 = sub_23B6A53CC;
  v21 = v13;
  v15 = _Block_copy(&aBlock);
  v16 = v0;

  sub_23B6A97C0();
  aBlock = MEMORY[0x277D84F90];
  sub_23B6A70CC(&qword_27E177068, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177070, &unk_23B6AAFC0);
  sub_23B6A409C();
  sub_23B6A9960();
  MEMORY[0x23EEA21A0](0, v10, v5, v15);
  _Block_release(v15);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23B6A57D8(void *a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772C8, &qword_23B6AB550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = (&v20 - v4);
  v6 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  v7 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  if (v7)
  {
    v8 = v6[1];
    *v5 = a1;
    swift_storeEnumTagMultiPayload();
    sub_23B6A3F80(v7);
    v9 = a1;
    v7(v5);
    sub_23B6A202C(v7);
    sub_23B6A7258(v5, &qword_27E1772C8, &qword_23B6AB550);
    v10 = *v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  sub_23B6A202C(v10);
  v12 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider) = 0;

  v13 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v14 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v15 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider + 8);
  *v13 = 0;
  v13[1] = 0;
  sub_23B6A202C(v14);
  v16 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession;
  v17 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession);
  if (v17)
  {
    [v17 cancel];
    v18 = *(v1 + v16);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + v16) = 0;

  return sub_23B6A5954(2);
}

uint64_t sub_23B6A5954(char a1)
{
  swift_getKeyPath();
  sub_23B6A9580();
  swift_getKeyPath();
  sub_23B6A9580();
  v3 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;
  os_unfair_lock_unlock((v3 + 20));
  swift_getKeyPath();
  sub_23B6A9590();
  swift_getKeyPath();
  return sub_23B6A9590();
}

uint64_t sub_23B6A5A28()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v3 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  if (v3)
  {
    v4 = v2[1];

    v6 = v3(v5);
    sub_23B6A202C(v3);
    v7 = 0;
    if (v6)
    {
      v8 = type metadata accessor for WebAuthenticationOperation.PresentationContextProvider();
      v9 = objc_allocWithZone(v8);
      *&v9[OBJC_IVAR____TtCC31_AuthenticationServices_SwiftUI26WebAuthenticationOperationP33_8E8F7254784E6C7F9718057E730AB2A627PresentationContextProvider_presentationAnchor] = v6;
      v14.receiver = v9;
      v14.super_class = v8;
      v7 = objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider) = v7;

  v11 = *v2;
  v12 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  return sub_23B6A202C(v11);
}

uint64_t sub_23B6A5AF8()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext;
  v4 = type metadata accessor for WebAuthenticationOperation.RequestContext(0);
  v5 = *(v3 + v4[5]);
  v6 = objc_allocWithZone(MEMORY[0x277CBA9D8]);

  v7 = sub_23B6A95A0();
  v25[4] = sub_23B6A7250;
  v25[5] = v2;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_23B6A6D18;
  v25[3] = &block_descriptor_32;
  v8 = _Block_copy(v25);
  v9 = [v6 initWithURL:v7 callback:v5 completionHandler:v8];
  _Block_release(v8);

  v10 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession;
  v11 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession) = v9;

  v12 = *(v1 + v10);
  if (v12)
  {
    v13 = *(v3 + v4[7]);
    v14 = v12;
    if (v13)
    {
      v13 = sub_23B6A97E0();
    }

    [v14 setAdditionalHeaderFields_];

    v15 = *(v1 + v10);
    if (v15)
    {
      [v15 setStorageMode_];
      v16 = *(v1 + v10);
      if (v16)
      {
        [v16 setPresentationContextProvider_];
        v17 = *(v1 + v10);
        if (v17)
        {
          v18 = (v3 + v4[8]);
          v19 = v18[1];
          if (v19)
          {
            v20 = *v18;
            v21 = v17;
            v19 = sub_23B6A9800();
          }

          else
          {
            v21 = v17;
          }

          [v21 _setNetworkAttributionApplicationBundleIdentifier_];

          v22 = *(v1 + v10);
          if (v22)
          {
            v23 = v22;
            [v23 start];
          }
        }
      }
    }
  }
}

uint64_t sub_23B6A5DB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_23B6A97B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B6A97D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_cancel);
  sub_23B6A4290(0, &qword_27E177060, 0x277D85C78);
  v13 = sub_23B6A9910();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_23B6A7394;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B6A53CC;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_23B6A97C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B6A70CC(&qword_27E177068, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E177070, &unk_23B6AAFC0);
  sub_23B6A409C();
  sub_23B6A9960();
  MEMORY[0x23EEA21A0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void sub_23B6A6098()
{
  type metadata accessor for ASWebAuthenticationSessionError(0);
  sub_23B6A6F9C(MEMORY[0x277D84F90]);
  sub_23B6A70CC(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);
  sub_23B6A9570();
  sub_23B6A57D8(v0);
}

BOOL sub_23B6A61F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 == 1;
}

BOOL sub_23B6A6290()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 == 2;
}

void sub_23B6A62D4(uint64_t a1, void *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1772E0, &qword_23B6AB5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v18 - v5;
  v7 = sub_23B6A95C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_23B6A72B8(a1, v6, &unk_27E1772E0, &qword_23B6AB5B8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_23B6A7258(v6, &unk_27E1772E0, &qword_23B6AB5B8);
      if (a2)
      {
        v14 = *&v13[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession];
        *&v13[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession] = 0;
        v15 = a2;

        sub_23B6A57D8(a2);
      }

      else
      {
        v16 = *&v13[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession];
        *&v13[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession] = 0;

        type metadata accessor for ASWebAuthenticationSessionError(0);
        v18[1] = 1;
        sub_23B6A6F9C(MEMORY[0x277D84F90]);
        sub_23B6A70CC(&qword_27E1772C0, type metadata accessor for ASWebAuthenticationSessionError);
        sub_23B6A9570();
        v17 = v19;
        sub_23B6A57D8(v19);
      }
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      sub_23B6A6580(v11);

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_23B6A6580(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772C8, &qword_23B6AB550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v18 - v4;
  v6 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  v7 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  if (v7)
  {
    v8 = v6[1];
    v9 = sub_23B6A95C0();
    (*(*(v9 - 8) + 16))(v5, a1, v9);
    swift_storeEnumTagMultiPayload();

    v7(v5);
    sub_23B6A202C(v7);
    sub_23B6A7258(v5, &qword_27E1772C8, &qword_23B6AB550);
    v10 = *v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  sub_23B6A202C(v10);
  v12 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider) = 0;

  v13 = (v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v14 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v15 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider + 8);
  *v13 = 0;
  v13[1] = 0;
  sub_23B6A202C(v14);
  v16 = *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession);
  *(v1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession) = 0;

  return sub_23B6A5954(2);
}

uint64_t sub_23B6A6804()
{
  result = type metadata accessor for WebAuthenticationOperation.RequestContext(319);
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

uint64_t sub_23B6A68D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6A6958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B6A95C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B6A6A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B6A95C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_23B6A6AE0()
{
  sub_23B6A95C0();
  if (v0 <= 0x3F)
  {
    sub_23B6A4290(319, &qword_27E177290, 0x277CBA9E0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ASWebAuthenticationSessionStorageMode(319);
      if (v2 <= 0x3F)
      {
        sub_23B6A6BBC();
        if (v3 <= 0x3F)
        {
          sub_23B6A6C20();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23B6A6BBC()
{
  if (!qword_27E177298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1772A0, qword_23B6AB4D8);
    v0 = sub_23B6A9940();
    if (!v1)
    {
      atomic_store(v0, &qword_27E177298);
    }
  }
}

void sub_23B6A6C20()
{
  if (!qword_27E1772A8)
  {
    v0 = sub_23B6A9940();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1772A8);
    }
  }
}

unint64_t sub_23B6A6C74()
{
  result = qword_27E1772B8;
  if (!qword_27E1772B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1772B8);
  }

  return result;
}

uint64_t sub_23B6A6CC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B6A6D18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1772E0, &qword_23B6AB5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_23B6A95B0();
    v11 = sub_23B6A95C0();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = sub_23B6A95C0();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  v13 = a3;
  v10(v8, a3);

  return sub_23B6A7258(v8, &unk_27E1772E0, &qword_23B6AB5B8);
}

unint64_t sub_23B6A6E6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23B6A9A20();
  sub_23B6A9850();
  v6 = sub_23B6A9A40();

  return sub_23B6A6EE4(a1, a2, v6);
}

unint64_t sub_23B6A6EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B6A99C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23B6A6F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772D0, &qword_23B6AB5A8);
    v3 = sub_23B6A99A0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B6A72B8(v4, &v13, &qword_27E1772D8, &qword_23B6AB5B0);
      v5 = v13;
      v6 = v14;
      result = sub_23B6A6E6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23B6A71C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23B6A70CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23B6A7114(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4 == 1;
}

void sub_23B6A716C(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4 == 2;
}

_OWORD *sub_23B6A71C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23B6A71D4()
{
  v1 = *(v0 + 16);
  sub_23B6A5A28();
  return sub_23B6A5AF8();
}

uint64_t sub_23B6A7218()
{
  MEMORY[0x23EEA2700](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6A7258(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B6A72B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B6A7320(uint64_t a1)
{
  v2 = type metadata accessor for WebAuthenticationOperation.RequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WebAuthenticationSession.authenticate(using:callbackURLScheme:preferredBrowserSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 64) = *a5;
  *(v6 + 136) = *(a5 + 8);
  *(v6 + 72) = *v5;
  sub_23B6A98D0();
  *(v6 + 88) = sub_23B6A98C0();
  v8 = sub_23B6A9890();
  *(v6 + 96) = v8;
  *(v6 + 104) = v7;

  return MEMORY[0x2822009F8](sub_23B6A7474, v8, v7);
}

uint64_t sub_23B6A7474()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v8 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v8;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_23B6A756C;
  v6 = *(v0 + 32);

  return sub_23B6A79C8(v6, sub_23B6A79B8, v4);
}

uint64_t sub_23B6A756C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B6A76EC;
  }

  else
  {
    v7 = v2[14];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B6A7688;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A7688()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A76EC()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

id sub_23B6A775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_23B6A95C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v13(v12, a1, v8);
  v14 = objc_opt_self();
  v15 = sub_23B6A9800();
  v30 = [v14 callbackWithCustomScheme_];

  if (a5)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  v17 = sub_23B6A91F8(MEMORY[0x277D84F90]);
  v18 = type metadata accessor for WebAuthenticationOperation(0);
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F0, &qword_23B6AB658);
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  *&v19[v22] = v23;
  *&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession] = 0;
  *&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider] = 0;
  v24 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext];
  v13(&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext], v12, v8);
  v25 = type metadata accessor for WebAuthenticationOperation.RequestContext(0);
  *&v24[v25[5]] = v30;
  *&v24[v25[6]] = v16;
  *&v24[v25[7]] = v17;
  v26 = &v24[v25[8]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v31.receiver = v19;
  v31.super_class = v18;
  v27 = objc_msgSendSuper2(&v31, sel_init);
  (*(v9 + 8))(v12, v8);
  return v27;
}

uint64_t sub_23B6A79C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = v3[1];
  v4[4] = a3;
  v4[5] = v5;
  v4[6] = v6;
  v4[7] = sub_23B6A98D0();

  v4[8] = sub_23B6A98C0();
  v8 = sub_23B6A9890();
  v4[9] = v8;
  v4[10] = v7;

  return MEMORY[0x2822009F8](sub_23B6A7A78, v8, v7);
}

uint64_t sub_23B6A7A78()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v15 = *(v0 + 40);
  v3 = (*(v0 + 24))();
  *(v0 + 88) = v3;
  v4 = *(v3 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider);
  v5 = *(v3 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider + 8);
  *(v3 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider) = v15;
  sub_23B6A202C(v4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v3;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *(v7 + 16) = v3;
  v8 = sub_23B6A98C0();
  *(v0 + 112) = v8;
  v9 = *(MEMORY[0x277D85A10] + 4);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  v11 = sub_23B6A95C0();
  *v10 = v0;
  v10[1] = sub_23B6A7BE0;
  v12 = *(v0 + 16);
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x282200830](v12, &unk_23B6AB668, v6, sub_23B6A904C, v7, v8, v13, v11);
}

uint64_t sub_23B6A7BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B6A7D88;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_23B6A7D18;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A7D18()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A7D88()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

uint64_t WebAuthenticationSession.authenticate(using:callback:preferredBrowserSession:additionalHeaderFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = a5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 64) = *a4;
  *(v6 + 136) = *(a4 + 8);
  *(v6 + 72) = *v5;
  sub_23B6A98D0();
  *(v6 + 88) = sub_23B6A98C0();
  v8 = sub_23B6A9890();
  *(v6 + 96) = v8;
  *(v6 + 104) = v7;

  return MEMORY[0x2822009F8](sub_23B6A7ECC, v8, v7);
}

uint64_t sub_23B6A7ECC()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_23B6A7FC0;
  v6 = *(v0 + 32);

  return sub_23B6A79C8(v6, sub_23B6A82F4, v4);
}

uint64_t sub_23B6A7FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B6A930C;
  }

  else
  {
    v7 = v2[14];

    v4 = v2[12];
    v5 = v2[13];
    v6 = sub_23B6A9310;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

id sub_23B6A80DC(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v29 = a5;
  v9 = sub_23B6A95C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = type metadata accessor for WebAuthenticationOperation(0);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F0, &qword_23B6AB658);
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *&v17[v20] = v21;
  *&v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession] = 0;
  *&v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider] = 0;
  v22 = &v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext];
  v14(&v17[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext], v13, v9);
  v23 = type metadata accessor for WebAuthenticationOperation.RequestContext(0);
  *&v22[v23[5]] = a2;
  *&v22[v23[6]] = v15;
  *&v22[v23[7]] = v29;
  v24 = &v22[v23[8]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v30.receiver = v17;
  v30.super_class = v16;
  v25 = a2;

  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v10 + 8))(v13, v9);
  return v26;
}

uint64_t WebAuthenticationSession.authenticate(using:callback:preferredBrowserSession:additionalHeaderFields:networkAttributionApplicationBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a5;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 80) = *a4;
  *(v8 + 152) = *(a4 + 8);
  *(v8 + 88) = *v7;
  sub_23B6A98D0();
  *(v8 + 104) = sub_23B6A98C0();
  v10 = sub_23B6A9890();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return MEMORY[0x2822009F8](sub_23B6A83C0, v10, v9);
}

uint64_t sub_23B6A83C0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v8 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 88);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = v8;
  *(v4 + 64) = v3;
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_23B6A84C4;
  v6 = *(v0 + 32);

  return sub_23B6A79C8(v6, sub_23B6A88DC, v4);
}

uint64_t sub_23B6A84C4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_23B6A8644;
  }

  else
  {
    v7 = v2[16];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_23B6A85E0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23B6A85E0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B6A8644()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

id sub_23B6A86B4(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v11 = sub_23B6A95C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, a1, v11);
  if (a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v18 = type metadata accessor for WebAuthenticationOperation(0);
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationAnchorProvider];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F0, &qword_23B6AB658);
  v23 = swift_allocObject();
  *(v23 + 20) = 0;
  *(v23 + 16) = 0;
  *&v19[v22] = v23;
  *&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationSession] = 0;
  *&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_presentationContextProvider] = 0;
  v24 = &v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext];
  v16(&v19[OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_requestContext], v15, v11);
  v25 = type metadata accessor for WebAuthenticationOperation.RequestContext(0);
  *&v24[v25[5]] = a2;
  *&v24[v25[6]] = v17;
  v26 = v34;
  *&v24[v25[7]] = v33;
  v27 = &v24[v25[8]];
  v28 = v35;
  *v27 = v26;
  *(v27 + 1) = v28;
  v36.receiver = v19;
  v36.super_class = v18;
  v29 = a2;

  v30 = objc_msgSendSuper2(&v36, sel_init);
  (*(v12 + 8))(v15, v11);
  return v30;
}

uint64_t sub_23B6A88F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_23B6A98D0();
  v2[5] = sub_23B6A98C0();
  v4 = sub_23B6A9890();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_23B6A8990, v4, v3);
}

uint64_t sub_23B6A8990()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_23B6A98C0();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_23B6A95C0();
  *v6 = v0;
  v6[1] = sub_23B6A159C;
  v8 = v0[2];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v8, v3, v9, 0xD000000000000025, 0x800000023B6AD610, sub_23B6A9070, v4, v7);
}

uint64_t sub_23B6A8A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F8, &unk_23B6AB670);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = (a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  v12 = *(a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler);
  v13 = *(a2 + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_authenticationCompletionHandler + 8);
  *v11 = sub_23B6A910C;
  v11[1] = v10;
  sub_23B6A202C(v12);
  return sub_23B6A5460();
}

uint64_t sub_23B6A8BF0(uint64_t a1)
{
  v2 = sub_23B6A95C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772C8, &qword_23B6AB550) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = (v11 - v8);
  sub_23B6A9188(a1, v11 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F8, &unk_23B6AB670);
    return sub_23B6A98A0();
  }

  else
  {
    (*(v3 + 32))(v6, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F8, &unk_23B6AB670);
    return sub_23B6A98B0();
  }
}

uint64_t EnvironmentValues.webAuthenticationSession.getter@<X0>(id (**a1)()@<X8>)
{
  v3 = sub_23B6A9670();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a1 = sub_23B6A24F0;
  a1[1] = v7;
  return result;
}

uint64_t sub_23B6A8EB0()
{
  v1 = sub_23B6A9670();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t getEnumTagSinglePayload for WebAuthenticationSession.BrowserSession(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WebAuthenticationSession.BrowserSession(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23B6A8FAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6A2374;

  return sub_23B6A88F4(a1, v4);
}

uint64_t sub_23B6A9078()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F8, &unk_23B6AB670);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6A910C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772F8, &unk_23B6AB670) - 8) + 80);

  return sub_23B6A8BF0(a1);
}

uint64_t sub_23B6A9188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1772C8, &qword_23B6AB550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B6A91F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E177300, &qword_23B6AB680);
    v3 = sub_23B6A99A0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23B6A6E6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t EnvironmentValues.credentialExportManager.getter()
{
  v1 = sub_23B6A9670();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  sub_23B6A95E0();
  (*(v2 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  (*(v2 + 32))(v5 + v4, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_23B6A95D0();
}

uint64_t sub_23B6A9450()
{
  v1 = sub_23B6A9670();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t EnvironmentValues.credentialImportManager.getter()
{
  v0 = sub_23B6A9600();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_23B6A95F0();
}