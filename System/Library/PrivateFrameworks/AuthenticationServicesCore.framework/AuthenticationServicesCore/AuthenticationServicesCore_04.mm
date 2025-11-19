uint64_t sub_1C21260D8()
{
  v1 = *(v0 + 32);
  if (v1 && *(v1 + 16) && (v2 = sub_1C2121F88(30325, 0xE200000000000000), (v3 & 1) != 0))
  {
    return ~*(*(v1 + 56) + v2) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C212612C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24350, &qword_1C217A0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21272A0();
  sub_1C2171484();
  *&v16 = *v3;
  v15[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  sub_1C20FD358(&qword_1EBF239E0);
  sub_1C2171294();
  if (!v2)
  {
    *&v16 = *(v3 + 8);
    v15[0] = 1;
    sub_1C2171264();
    v16 = *(v3 + 16);
    v17 = v16;
    v15[23] = 2;
    sub_1C2127360(&v17, v15);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v16, *(&v16 + 1));
    *&v16 = *(v3 + 32);
    v15[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
    sub_1C21273BC(&qword_1EBF24358);
    sub_1C2171264();
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    LOBYTE(v16) = 4;
    sub_1C2171254();
    *&v16 = *(v3 + 56);
    v15[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24340, &qword_1C217A0D8);
    sub_1C21272F4(&qword_1EBF24360);
    sub_1C2171264();
    *&v16 = *(v3 + 64);
    v15[0] = 6;
    sub_1C2171264();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C21264D8()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217A238[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C2126560()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217A238[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C21265AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0DBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C21265F0()
{
  v1 = *v0;
  v2 = 0x736E6F6973726576;
  v3 = 0x6F746F72506E6970;
  if (v1 != 5)
  {
    v3 = 0x726F70736E617274;
  }

  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x617373654D78616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E65747865;
  if (v1 != 1)
  {
    v5 = 0x646975676161;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C21266E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2126A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2126728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0DBC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C2126750(uint64_t a1)
{
  v2 = sub_1C21272A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212678C(uint64_t a1)
{
  v2 = sub_1C21272A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1C21267C8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C2126CD0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_1C2126834(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1C212695C(v7, v9);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C21268B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C21268FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL sub_1C212695C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C21546B8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || (sub_1C21546B8(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_1C21068CC(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    if (v6)
    {
      if (!v7)
      {
        return 0;
      }

      v8 = *(a2 + 32);

      v9 = sub_1C213A9A8(v6, v7);

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    v10 = *(a2 + 48);
    if (*(a1 + 48))
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 40) != *(a2 + 40))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    v11 = *(a1 + 56);
    v12 = *(a2 + 56);
    if (v11)
    {
      if (!v12 || (sub_1C2154848(v11, v12) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    v13 = *(a1 + 64);
    v14 = *(a2 + 64);
    if (v13)
    {
      return v14 && (sub_1C21546B8(v13, v14) & 1) != 0;
    }

    if (!v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C2126A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646975676161 && a2 == 0xE600000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEE00657A69536567 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F746F72506E6970 && a2 == 0xEC000000736C6F63 || (sub_1C2171324() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xEA00000000007374)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C2171324();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1C2126CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24320, &unk_1C217A0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21272A0();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  LOBYTE(v35) = 0;
  sub_1C20FD358(&qword_1EBF23E10);
  sub_1C21711D4();
  v33 = v40;
  LOBYTE(v35) = 1;
  sub_1C21711A4();
  v32 = v40;
  LOBYTE(v35) = 2;
  sub_1C20D8E24();
  sub_1C21711D4();
  v11 = v41;
  v31 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  LOBYTE(v35) = 3;
  sub_1C21273BC(&qword_1EBF24338);
  sub_1C21711A4();
  v30 = v40;
  LOBYTE(v40) = 4;
  v29 = 0;
  v28 = sub_1C2171194();
  v50 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24340, &qword_1C217A0D8);
  LOBYTE(v35) = 5;
  sub_1C21272F4(&qword_1EBF24348);
  sub_1C21711A4();
  v27 = v40;
  v51 = 6;
  sub_1C21711A4();
  (*(v6 + 8))(v9, v5);
  v29 = v49;
  v13 = v11;
  v26 = v11;
  v14 = v33;
  v15 = v32;
  *&v35 = v33;
  *(&v35 + 1) = v32;
  v16 = v31;
  *&v36 = v31;
  *(&v36 + 1) = v13;
  v17 = v30;
  v18 = v28;
  *&v37 = v30;
  *(&v37 + 1) = v28;
  v19 = v50;
  LOBYTE(v38) = v50;
  v20 = v27;
  *(&v38 + 1) = v27;
  v39 = v49;
  sub_1C20EAF38(&v35, &v40);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v26;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  v47 = v20;
  v48 = v29;
  result = sub_1C20EAFE8(&v40);
  v22 = v38;
  v23 = v34;
  *(v34 + 32) = v37;
  *(v23 + 48) = v22;
  *(v23 + 64) = v39;
  v24 = v36;
  *v23 = v35;
  *(v23 + 16) = v24;
  return result;
}

unint64_t sub_1C21272A0()
{
  result = qword_1EBF24328;
  if (!qword_1EBF24328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24328);
  }

  return result;
}

uint64_t sub_1C21272F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24340, &qword_1C217A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C21273BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24330, &qword_1C217A0D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCTAPGetInfoResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCTAPGetInfoResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2127580()
{
  result = qword_1EBF24368;
  if (!qword_1EBF24368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24368);
  }

  return result;
}

unint64_t sub_1C21275D8()
{
  result = qword_1EBF24370;
  if (!qword_1EBF24370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24370);
  }

  return result;
}

unint64_t sub_1C2127630()
{
  result = qword_1EBF24378;
  if (!qword_1EBF24378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24378);
  }

  return result;
}

id ASCPhoneNumber.__allocating_init(cnPhoneNumber:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ASCPhoneNumber.__allocating_init(stringValue:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v3 = sub_1C21708F4();

  v4 = [v2 initWithStringValue_];

  *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v4;
  v6.receiver = v1;
  v6.super_class = v0;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C2127780()
{
  sub_1C2171434();
  sub_1C21709B4();
  return sub_1C2171454();
}

uint64_t sub_1C21277FC()
{
  sub_1C2171434();
  sub_1C21709B4();
  return sub_1C2171454();
}

uint64_t sub_1C2127854@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C2171134();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C21278EC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C2171134();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C2127944(uint64_t a1)
{
  v2 = sub_1C2127D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2127980(uint64_t a1)
{
  v2 = sub_1C2127D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPhoneNumber.init(stringValue:)()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695CF50]);
  v2 = sub_1C21708F4();

  v3 = [v1 initWithStringValue_];

  *&v0[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ASCPhoneNumber.init(cnPhoneNumber:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ASCPhoneNumber.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24388, &qword_1C217A280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2127D08();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ASCPhoneNumber();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C21711B4();
    v12 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v13 = sub_1C21708F4();

    v14 = [v12 initWithStringValue_];

    (*(v6 + 8))(v9, v5);
    *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v14;
    v15 = type metadata accessor for ASCPhoneNumber();
    v16.receiver = v1;
    v16.super_class = v15;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

unint64_t sub_1C2127D08()
{
  result = qword_1EBF24390;
  if (!qword_1EBF24390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24390);
  }

  return result;
}

uint64_t sub_1C2127D5C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24398, &qword_1C217A288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2127D08();
  sub_1C2171484();
  v10 = [*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber) stringValue];
  sub_1C2170914();

  sub_1C2171274();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C2127ECC(uint64_t a1)
{
  sub_1C21282A8(a1, v18);
  if (!v19)
  {
    sub_1C2128318(v18);
    goto LABEL_13;
  }

  type metadata accessor for ASCPhoneNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber);
  v3 = [v2 unformattedInternationalStringValue];
  if (!v3)
  {
    v3 = [v2 stringValue];
  }

  v4 = v3;
  v5 = sub_1C2170914();
  v7 = v6;

  v8 = *&v17[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
  v9 = [v8 unformattedInternationalStringValue];
  if (!v9)
  {
    v9 = [v8 stringValue];
  }

  v10 = v9;
  v11 = sub_1C2170914();
  v13 = v12;

  if (v5 == v11 && v7 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C2171324();
  }

  return v15 & 1;
}

id sub_1C2128170(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
  v5 = a1;
  v6 = [v4 *a3];
  if (!v6)
  {
    v6 = [v4 stringValue];
  }

  v7 = v6;
  sub_1C2170914();

  v8 = sub_1C21708F4();

  return v8;
}

uint64_t sub_1C212822C(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber);
  v3 = [v2 *a1];
  if (!v3)
  {
    v3 = [v2 stringValue];
  }

  v4 = v3;
  v5 = sub_1C2170914();

  return v5;
}

uint64_t sub_1C21282A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243A0, &qword_1C217A290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2128318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243A0, &qword_1C217A290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ASCPhoneNumber.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPhoneNumber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPhoneNumber();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C2128458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPhoneNumber());
  result = ASCPhoneNumber.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C21285FC()
{
  result = qword_1EBF243A8;
  if (!qword_1EBF243A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243A8);
  }

  return result;
}

unint64_t sub_1C2128654()
{
  result = qword_1EBF243B0;
  if (!qword_1EBF243B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243B0);
  }

  return result;
}

unint64_t sub_1C21286AC()
{
  result = qword_1EBF243B8;
  if (!qword_1EBF243B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243B8);
  }

  return result;
}

uint64_t sub_1C2128700@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1C21289D8(a1, a2);
  if ((v7 & 0x100) != 0)
  {
    sub_1C212CC84();
    swift_allocError();
    *v9 = 256;
    return swift_willThrow();
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v16 = v7;
    sub_1C212CC84();
    swift_allocError();
    *v17 = v16;
    v17[1] = 0;
    return swift_willThrow();
  }

  v8 = 0;
LABEL_7:
  v10 = sub_1C21702A4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1C2170294();
  if ((v8 & 1) == 0)
  {
    sub_1C20D865C(a1, a2);
    sub_1C2128BB4(1, a1, a2, &v51);
    v13 = v51;
    v14 = v52;
    sub_1C212CD38();
    sub_1C2170274();
    if (!v3)
    {

      sub_1C20D3174(v13, v14);
      v48 = v34;
      v49 = v35;
      *v50 = v36;
      *&v50[16] = v37;
      v44 = v30;
      v45 = v31;
      v46 = v32;
      v47 = v33;
      v40 = v26;
      v41 = v27;
      v42 = v28;
      v43 = v29;
      v38 = v24;
      v39 = v25;
      result = sub_1C212CD8C(&v38);
      goto LABEL_15;
    }

LABEL_11:

    return sub_1C20D3174(v13, v14);
  }

  sub_1C20D865C(a1, a2);
  sub_1C2128BB4(1, a1, a2, &v51);
  v13 = v51;
  v14 = v52;
  sub_1C212CCD8();
  sub_1C2170274();
  if (v3)
  {
    goto LABEL_11;
  }

  sub_1C20D3174(v13, v14);
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v38 = v24;
  v39 = v25;
  result = sub_1C212CD2C(&v38);
LABEL_15:
  v18 = v49;
  a3[10] = v48;
  a3[11] = v18;
  a3[12] = *v50;
  *(a3 + 201) = *&v50[9];
  v19 = v45;
  a3[6] = v44;
  a3[7] = v19;
  v20 = v47;
  a3[8] = v46;
  a3[9] = v20;
  v21 = v41;
  a3[2] = v40;
  a3[3] = v21;
  v22 = v43;
  a3[4] = v42;
  a3[5] = v22;
  v23 = v39;
  *a3 = v38;
  a3[1] = v23;
  return result;
}

uint64_t sub_1C21289D8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_1C2170134();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_1C2128A60(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) <= 1)
  {
    if (!v3)
    {
      v5 = sub_1C20E7898(&unk_1F419CE68);
      v7 = v6;
      v21 = v5;
      v22 = v6;
      v19 = MEMORY[0x1E6969080];
      v20 = MEMORY[0x1E6969078];
      v17 = a1;
      v18 = a2;
      v8 = __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x1E6969080]);
      v9 = *v8;
      v10 = v8[1];
      sub_1C20D865C(v5, v7);
      sub_1C212CD94(a1, a2);
LABEL_8:
      sub_1C2106434(v9, v10);
      sub_1C20D3174(v5, v7);
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      return v21;
    }

    v11 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v12 = &unk_1F419CE90;
LABEL_7:
    v5 = sub_1C20E7898(v12);
    v7 = v14;
    v21 = v5;
    v22 = v14;
    v19 = MEMORY[0x1E6969080];
    v20 = MEMORY[0x1E6969078];
    v17 = a1;
    v18 = v11;
    v15 = __swift_project_boxed_opaque_existential_1(&v17, MEMORY[0x1E6969080]);
    v9 = *v15;
    v10 = v15[1];
    sub_1C212CD94(a1, a2);
    sub_1C20D865C(v5, v7);
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v11 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v12 = &unk_1F419CEB8;
    goto LABEL_7;
  }

  return sub_1C20E7898(&unk_1F419CE40);
}

uint64_t sub_1C2128BB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1C20FA9B8(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_1C20FAA6C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1C2170124();
    v17 = v16;
    result = sub_1C20D3174(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x6144746E65696C63 && stringValue._object == 0xEE00687361486174;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x50676E69796C6572 && object == 0xEC00000079747261 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1919251317 && object == 0xE400000000000000 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0xD00000000000001DLL && 0x80000001C2186570 == object || (sub_1C2171324() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x4C6564756C637865 && object == 0xEB00000000747369 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x6F69736E65747865 && object == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_1C2171324();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *v4 = v7;
  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 0x605040302010007uLL >> (8 * intValue);
  if (intValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return intValue;
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x6144746E65696C63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x736E6F6974706FLL;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0x4C6564756C637865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x50676E69796C6572;
  if (v1 != 1)
  {
    v5 = 1919251317;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C21290AC()
{
  v1 = *v0;
  v2 = 0x6144746E65696C63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x736E6F6974706FLL;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v4 = 0x4C6564756C637865;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x50676E69796C6572;
  if (v1 != 1)
  {
    v5 = 1919251317;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C21291AC(uint64_t a1)
{
  v2 = sub_1C212B5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21291E8(uint64_t a1)
{
  v2 = sub_1C212B5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243C0, &qword_1C217A470);
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v42 = *(v1 + 24);
  v43 = v9;
  v10 = *(v1 + 32);
  v40 = *(v1 + 40);
  v41 = v10;
  v11 = *(v1 + 48);
  v38 = *(v1 + 56);
  v39 = v11;
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = *(v1 + 88);
  v34 = *(v1 + 80);
  v35 = v13;
  v36 = v14;
  v37 = v12;
  v15 = *(v1 + 96);
  v32 = *(v1 + 104);
  v33 = v15;
  v31 = *(v1 + 112);
  v16 = *(v1 + 136);
  v55 = *(v1 + 120);
  v56 = v16;
  v17 = *(v1 + 152);
  v18 = *(v1 + 168);
  v19 = *(v1 + 200);
  v59 = *(v1 + 184);
  v60 = v19;
  v57 = v17;
  v58 = v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v7, v8);
  sub_1C212B5BC();
  sub_1C2171484();
  *&v49 = v7;
  v21 = v3;
  *(&v49 + 1) = v8;
  LOBYTE(v47[0]) = 0;
  sub_1C20D8CEC();
  v22 = v44;
  sub_1C2171294();
  if (v22)
  {
    sub_1C20D3174(v49, *(&v49 + 1));
    return (*(v61 + 8))(v6, v3);
  }

  else
  {
    v24 = v38;
    v25 = v39;
    v26 = v37;
    sub_1C20D3174(v49, *(&v49 + 1));
    *&v49 = v43;
    *(&v49 + 1) = v42;
    *&v50 = v41;
    *(&v50 + 1) = v40;
    LOBYTE(v47[0]) = 1;
    sub_1C212B610();
    sub_1C2171294();
    *&v49 = v25;
    *(&v49 + 1) = v24;
    *&v50 = v26;
    v27 = v26;
    v28 = v35;
    *(&v50 + 1) = v35;
    *&v51 = v34;
    *(&v51 + 1) = v36;
    LOBYTE(v47[0]) = 2;

    sub_1C20D865C(v27, v28);
    sub_1C212B664();

    sub_1C2171294();
    v29 = v50;

    sub_1C20D3174(v29, *(&v29 + 1));

    *&v49 = v33;
    LOBYTE(v47[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243E0, &qword_1C217A478);
    sub_1C212B944(&qword_1EBF243E8, sub_1C212B6B8);
    sub_1C2171294();
    *&v49 = v32;
    LOBYTE(v47[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
    sub_1C212B70C(&qword_1EBF24400, sub_1C212B784);
    sub_1C2171264();
    v30 = v61;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v48 = 5;
    sub_1C212B7D8(&v55, v47);
    sub_1C212B848();
    sub_1C2171264();
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_1C20EB498(v47, &unk_1EBF23690, &qword_1C2176D38);
    v46 = v31;
    v45 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
    sub_1C21273BC(&qword_1EBF24358);
    sub_1C2171264();
    return (*(v30 + 8))(v6, v21);
  }
}

uint64_t ASCTAPAuthenticatorMakeCredentialCommand.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24418, &qword_1C217A488);
  v5 = *(v90 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212B5BC();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  v45 = a2;
  LOBYTE(v46) = 0;
  sub_1C20D8E24();
  sub_1C21711D4();
  v43 = v55;
  v44 = v54;
  LOBYTE(v46) = 1;
  sub_1C212B89C();
  sub_1C21711D4();
  v42 = v55;
  v11 = v56;
  v40 = v54;
  v41 = v57;
  LOBYTE(v46) = 2;
  sub_1C212B8F0();
  sub_1C21711D4();
  v32 = v54;
  v33 = v11;
  v39 = v56;
  v37 = v55;
  v38 = v57;
  v12 = v58;
  v35 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243E0, &qword_1C217A478);
  LOBYTE(v46) = 3;
  sub_1C212B944(&qword_1EBF24430, sub_1C212B9BC);
  sub_1C21711D4();
  v31 = v12;
  v13 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  LOBYTE(v46) = 4;
  sub_1C212B70C(&qword_1EBF24440, sub_1C212BA10);
  sub_1C21711A4();
  v36 = v13;
  v34 = v54;
  v77 = 5;
  sub_1C212BA64();
  sub_1C21711A4();
  v86 = v80;
  v87 = v81;
  v88 = v82;
  v89 = v83;
  v84 = v78;
  v85 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  v75 = 6;
  sub_1C21273BC(&qword_1EBF24338);
  v14 = v90;
  sub_1C21711A4();
  (*(v10 + 8))(v8, v14);
  v90 = v76;
  v15 = v43;
  *&v46 = v44;
  *(&v46 + 1) = v43;
  v16 = v41;
  v17 = v42;
  *&v47 = v40;
  *(&v47 + 1) = v42;
  *&v48 = v33;
  *(&v48 + 1) = v41;
  *&v49 = v32;
  *(&v49 + 1) = v37;
  *&v50 = v39;
  *(&v50 + 1) = v38;
  v18 = v35;
  *&v51 = v31;
  *(&v51 + 1) = v35;
  *&v52 = v36;
  *(&v52 + 1) = v34;
  *v53 = v76;
  *&v53[8] = v84;
  *&v53[24] = v85;
  *&v53[88] = v89;
  *&v53[72] = v88;
  *&v53[56] = v87;
  *&v53[40] = v86;
  v19 = v47;
  v20 = v45;
  *v45 = v46;
  v20[1] = v19;
  v21 = v48;
  v22 = v49;
  v23 = v51;
  v20[4] = v50;
  v20[5] = v23;
  v20[2] = v21;
  v20[3] = v22;
  v24 = v52;
  v25 = *v53;
  v26 = *&v53[32];
  v20[8] = *&v53[16];
  v20[9] = v26;
  v20[6] = v24;
  v20[7] = v25;
  v27 = *&v53[48];
  v28 = *&v53[64];
  v29 = *&v53[80];
  *(v20 + 26) = *&v53[96];
  v20[11] = v28;
  v20[12] = v29;
  v20[10] = v27;
  sub_1C212BAB8(&v46, &v54);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v54 = v44;
  v55 = v15;
  v56 = v40;
  v57 = v17;
  v58 = v33;
  v59 = v16;
  v60 = v32;
  v61 = v37;
  v62 = v39;
  v63 = v38;
  v64 = v31;
  v65 = v18;
  v66 = v36;
  v67 = v34;
  v68 = v90;
  v69 = v84;
  v70 = v85;
  v74 = v89;
  v73 = v88;
  v72 = v87;
  v71 = v86;
  return sub_1C212BAF0(&v54);
}

AuthenticationServicesCore::ASCTAPAuthenticatorGetAssertionCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x50676E69796C6572 && stringValue._object == 0xEE00444979747261;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6144746E65696C63 && object == 0xEE00687361486174 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x73694C776F6C6C61 && object == 0xE900000000000074 || (sub_1C2171324() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6F69736E65747865 && object == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x736E6F6974706FLL && object == 0xE700000000000000)
  {

    v7 = 4;
  }

  else
  {
    v8 = sub_1C2171324();

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  *v4 = v7;
  return result;
}

AuthenticationServicesCore::ASCTAPAuthenticatorGetAssertionCommand::CodingKeys_optional __swiftcall ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.init(intValue:)(Swift::Int intValue)
{
  v2 = 0x40302010005uLL >> (8 * intValue);
  if (intValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return intValue;
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x50676E69796C6572;
  v3 = 0x73694C776F6C6C61;
  v4 = 0x6F69736E65747865;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C212A21C()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1 + 1);
  return sub_1C2171454();
}

uint64_t sub_1C212A264()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1 + 1);
  return sub_1C2171454();
}

uint64_t sub_1C212A2B0()
{
  v1 = *v0;
  v2 = 0x50676E69796C6572;
  v3 = 0x73694C776F6C6C61;
  v4 = 0x6F69736E65747865;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6144746E65696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C212A374(uint64_t a1)
{
  v2 = sub_1C212BE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212A3B0(uint64_t a1)
{
  v2 = sub_1C212BE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24458, &qword_1C217A490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v25 = v1[2];
  v26 = v8;
  v11 = v1[5];
  v23 = v1[4];
  v24 = v10;
  v22 = v11;
  v12 = *(v1 + 6);
  v39 = *(v1 + 5);
  v40 = v12;
  v13 = *(v1 + 8);
  v41 = *(v1 + 7);
  v42 = v13;
  v14 = *(v1 + 4);
  v37 = *(v1 + 3);
  v38 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212BE80();
  sub_1C2171484();
  LOBYTE(v31) = 0;
  v16 = v7;
  v17 = v43;
  sub_1C2171274();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v22;
  v19 = v23;
  *&v31 = v25;
  *(&v31 + 1) = v24;
  LOBYTE(v29[0]) = 1;
  sub_1C20D865C(v25, v24);
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v31, *(&v31 + 1));
  *&v31 = v19;
  LOBYTE(v29[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  sub_1C212B70C(&qword_1EBF24400, sub_1C212B784);
  sub_1C2171264();
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v30 = 3;
  sub_1C212B7D8(&v37, v29);
  sub_1C212B848();
  sub_1C2171264();
  v29[2] = v33;
  v29[3] = v34;
  v29[4] = v35;
  v29[5] = v36;
  v29[0] = v31;
  v29[1] = v32;
  sub_1C20EB498(v29, &unk_1EBF23690, &qword_1C2176D38);
  v28 = v20;
  v27 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  sub_1C21273BC(&qword_1EBF24358);
  sub_1C2171264();
  return (*(v4 + 8))(v16, v3);
}

uint64_t ASCTAPAuthenticatorGetAssertionCommand.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24468, &qword_1C217A498);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v26 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212BE80();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  LOBYTE(v41) = 0;
  v11 = sub_1C21711B4();
  v13 = v12;
  v30 = v11;
  LOBYTE(v32) = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v28 = v42;
  v29 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF243F8, &qword_1C217A480);
  LOBYTE(v32) = 2;
  sub_1C212B70C(&qword_1EBF24440, sub_1C212BA10);
  sub_1C21711A4();
  v27 = v41;
  v67 = 3;
  sub_1C212BA64();
  sub_1C21711A4();
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v60 = v54;
  v61 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
  v66 = 4;
  sub_1C21273BC(&qword_1EBF24338);
  sub_1C21711A4();
  (*(v10 + 8))(v8, v31);
  v15 = v29;
  v14 = v30;
  v31 = v53;
  *&v32 = v30;
  *(&v32 + 1) = v13;
  *&v33 = v29;
  v16 = v27;
  v17 = v28;
  *(&v33 + 1) = v28;
  *&v34 = v27;
  *(&v34 + 1) = v53;
  v18 = v62;
  v19 = v63;
  v37 = v62;
  v38 = v63;
  v20 = v64;
  v21 = v65;
  v39 = v64;
  v40 = v65;
  v22 = v60;
  v23 = v61;
  v35 = v60;
  v36 = v61;
  v24 = v33;
  *a2 = v32;
  a2[1] = v24;
  a2[7] = v20;
  a2[8] = v21;
  a2[5] = v18;
  a2[6] = v19;
  a2[3] = v22;
  a2[4] = v23;
  a2[2] = v34;
  sub_1C212BED4(&v32, &v41);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v41 = v14;
  v42 = v13;
  v43 = v15;
  v44 = v17;
  v45 = v16;
  v46 = v31;
  v49 = v62;
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v47 = v60;
  v48 = v61;
  return sub_1C212BF0C(&v41);
}

uint64_t sub_1C212ACA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF244E8, &qword_1C217B6B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212D1AC();
  sub_1C2171484();
  LOBYTE(v16) = 0;
  sub_1C2171274();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1C212D254();
    sub_1C2171294();
  }

  return (*(v8 + 8))(v11, v7);
}

void *sub_1C212AE30@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C212AE3C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1C212AEF8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C2171324();
  }
}

uint64_t sub_1C212AF28()
{
  if (*v0)
  {
    result = 0x5474736575716572;
  }

  else
  {
    result = 0x6E696769726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1C212AF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C212B044(uint64_t a1)
{
  v2 = sub_1C212D1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212B080(uint64_t a1)
{
  v2 = sub_1C212D1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C212B0BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C212CFB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore40ASCTAPAuthenticatorMakeCredentialCommandV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v58 = *(a1 + 56);
  v59 = *(a1 + 48);
  v54 = *(a1 + 72);
  v55 = *(a1 + 64);
  v50 = *(a1 + 88);
  v51 = *(a1 + 80);
  v47 = *(a1 + 96);
  v45 = *(a1 + 104);
  v43 = *(a1 + 112);
  v10 = *(a1 + 136);
  v86[0] = *(a1 + 120);
  v86[1] = v10;
  v11 = *(a1 + 152);
  v12 = *(a1 + 168);
  v13 = *(a1 + 200);
  v86[4] = *(a1 + 184);
  v86[5] = v13;
  v86[2] = v11;
  v86[3] = v12;
  v14 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v19 = *(a2 + 32);
  v18 = *(a2 + 40);
  v56 = *(a2 + 56);
  v57 = *(a2 + 48);
  v52 = *(a2 + 72);
  v53 = *(a2 + 64);
  v48 = *(a2 + 88);
  v49 = *(a2 + 80);
  v46 = *(a2 + 96);
  v44 = *(a2 + 104);
  v20 = *(a2 + 136);
  v87[0] = *(a2 + 120);
  v87[1] = v20;
  v21 = *(a2 + 200);
  v87[4] = *(a2 + 184);
  v87[5] = v21;
  v22 = *(a2 + 168);
  v87[2] = *(a2 + 152);
  v87[3] = v22;
  v42 = *(a2 + 112);
  if ((sub_1C21068CC(v4, v5, v14, v15) & 1) == 0 || (v6 != v17 || v8 != v16) && (sub_1C2171324() & 1) == 0 || (v7 != v19 || v9 != v18) && (sub_1C2171324() & 1) == 0 || (v59 != v57 || v58 != v56) && (sub_1C2171324() & 1) == 0 || (sub_1C21068CC(v55, v54, v53, v52) & 1) == 0 || (v51 != v49 || v50 != v48) && (sub_1C2171324() & 1) == 0 || (sub_1C21548A4(v47, v46) & 1) == 0)
  {
    return 0;
  }

  if (v45)
  {
    if (!v44)
    {
      return 0;
    }

    v23 = sub_1C2153FC4(v45, v44);

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  if (!v43)
  {
    if (!v42)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v42)
  {
    return 0;
  }

  v24 = sub_1C213A9A8(v43, v42);

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v25 = v86[0];
  v26 = v87[0];
  if (*(&v86[0] + 1) != 2)
  {
    v74 = v86[0];
    v30 = *(a1 + 152);
    v31 = *(a1 + 184);
    v77 = *(a1 + 168);
    v78 = v31;
    v79 = *(a1 + 200);
    v75 = *(a1 + 136);
    v76 = v30;
    v70 = v30;
    v71 = v77;
    v72 = v31;
    v73 = v79;
    v68 = v86[0];
    v69 = v75;
    if (*(&v87[0] + 1) != 2)
    {
      v38 = *(a2 + 152);
      v39 = *(a2 + 184);
      v65 = *(a2 + 168);
      v66 = v39;
      v67 = *(a2 + 200);
      v63 = *(a2 + 136);
      v64 = v38;
      v62 = v87[0];
      sub_1C212B7D8(v86, v61);
      sub_1C212B7D8(v87, v61);
      sub_1C212B7D8(&v74, v61);
      v29 = _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(&v68, &v62);
      v60[2] = v64;
      v60[3] = v65;
      v60[4] = v66;
      v60[5] = v67;
      v60[0] = v62;
      v60[1] = v63;
      sub_1C20D8758(v60);
      v61[2] = v70;
      v61[3] = v71;
      v61[4] = v72;
      v61[5] = v73;
      v61[0] = v68;
      v61[1] = v69;
      sub_1C20D8758(v61);
      v62 = v25;
      v40 = *(a1 + 152);
      v41 = *(a1 + 184);
      v65 = *(a1 + 168);
      v66 = v41;
      v67 = *(a1 + 200);
      v63 = *(a1 + 136);
      v64 = v40;
      sub_1C20EB498(&v62, &unk_1EBF23690, &qword_1C2176D38);
      return v29;
    }

    v64 = v76;
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v62 = v74;
    v63 = v75;
    sub_1C212B7D8(v86, v61);
    sub_1C212B7D8(v87, v61);
    sub_1C212B7D8(&v74, v61);
    sub_1C20D8758(&v62);
    goto LABEL_32;
  }

  if (*(&v87[0] + 1) != 2)
  {
    sub_1C212B7D8(v86, &v74);
    sub_1C212B7D8(v87, &v74);
LABEL_32:
    v74 = v25;
    v32 = *(a1 + 152);
    v33 = *(a1 + 184);
    v77 = *(a1 + 168);
    v78 = v33;
    v79 = *(a1 + 200);
    v75 = *(a1 + 136);
    v76 = v32;
    v80 = v26;
    v34 = *(a2 + 200);
    v35 = *(a2 + 168);
    v84 = *(a2 + 184);
    v85 = v34;
    v36 = *(a2 + 136);
    v82 = *(a2 + 152);
    v83 = v35;
    v81 = v36;
    sub_1C20EB498(&v74, &qword_1EBF244C8, &unk_1C217B540);
    return 0;
  }

  *&v74 = *&v86[0];
  *(&v74 + 1) = 2;
  v27 = *(a1 + 152);
  v28 = *(a1 + 184);
  v77 = *(a1 + 168);
  v78 = v28;
  v79 = *(a1 + 200);
  v75 = *(a1 + 136);
  v76 = v27;
  sub_1C212B7D8(v86, &v68);
  sub_1C212B7D8(v87, &v68);
  sub_1C20EB498(&v74, &unk_1EBF23690, &qword_1C2176D38);
  return 1;
}

unint64_t sub_1C212B5BC()
{
  result = qword_1EBF243C8;
  if (!qword_1EBF243C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243C8);
  }

  return result;
}

unint64_t sub_1C212B610()
{
  result = qword_1EBF243D0;
  if (!qword_1EBF243D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243D0);
  }

  return result;
}

unint64_t sub_1C212B664()
{
  result = qword_1EBF243D8;
  if (!qword_1EBF243D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243D8);
  }

  return result;
}

unint64_t sub_1C212B6B8()
{
  result = qword_1EBF243F0;
  if (!qword_1EBF243F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF243F0);
  }

  return result;
}

uint64_t sub_1C212B70C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF243F8, &qword_1C217A480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C212B784()
{
  result = qword_1EBF24408;
  if (!qword_1EBF24408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24408);
  }

  return result;
}

uint64_t sub_1C212B7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23690, &qword_1C2176D38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C212B848()
{
  result = qword_1EBF24410;
  if (!qword_1EBF24410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24410);
  }

  return result;
}

unint64_t sub_1C212B89C()
{
  result = qword_1EBF24420;
  if (!qword_1EBF24420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24420);
  }

  return result;
}

unint64_t sub_1C212B8F0()
{
  result = qword_1EBF24428;
  if (!qword_1EBF24428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24428);
  }

  return result;
}

uint64_t sub_1C212B944(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF243E0, &qword_1C217A478);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C212B9BC()
{
  result = qword_1EBF24438;
  if (!qword_1EBF24438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24438);
  }

  return result;
}

unint64_t sub_1C212BA10()
{
  result = qword_1EBF24448;
  if (!qword_1EBF24448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24448);
  }

  return result;
}

unint64_t sub_1C212BA64()
{
  result = qword_1EBF24450;
  if (!qword_1EBF24450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24450);
  }

  return result;
}

BOOL _s26AuthenticationServicesCore38ASCTAPAuthenticatorGetAssertionCommandV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v66[2] = *(a1 + 5);
  v66[3] = v10;
  v11 = *(a1 + 8);
  v66[4] = *(a1 + 7);
  v66[5] = v11;
  v12 = *(a1 + 4);
  v66[0] = *(a1 + 3);
  v66[1] = v12;
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v19 = *(a2 + 8);
  v67[4] = *(a2 + 7);
  v67[5] = v19;
  v20 = *(a2 + 6);
  v67[2] = *(a2 + 5);
  v67[3] = v20;
  v21 = *(a2 + 4);
  v67[0] = *(a2 + 3);
  v67[1] = v21;
  if ((v4 != v13 || v5 != v14) && (sub_1C2171324() & 1) == 0 || (sub_1C21068CC(v6, v8, v15, v16) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v18)
    {
      return 0;
    }

    v22 = sub_1C2153FC4(v7, v18);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v9)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  v23 = sub_1C213A9A8(v9, v17);

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = v66[0];
  v25 = v67[0];
  if (*(&v66[0] + 1) != 2)
  {
    v54 = v66[0];
    v30 = *(a1 + 7);
    v57 = *(a1 + 6);
    v58 = v30;
    v59 = *(a1 + 8);
    v31 = *(a1 + 5);
    v55 = *(a1 + 4);
    v56 = v31;
    v50 = v31;
    v51 = v57;
    v52 = v30;
    v53 = v59;
    v48 = v66[0];
    v49 = v55;
    if (*(&v67[0] + 1) != 2)
    {
      v36 = *(a2 + 7);
      v45 = *(a2 + 6);
      v46 = v36;
      v47 = *(a2 + 8);
      v37 = *(a2 + 5);
      v43 = *(a2 + 4);
      v44 = v37;
      v42 = v67[0];
      sub_1C212B7D8(v66, v41);
      sub_1C212B7D8(v67, v41);
      sub_1C212B7D8(&v54, v41);
      v28 = _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(&v48, &v42);
      v40[2] = v44;
      v40[3] = v45;
      v40[4] = v46;
      v40[5] = v47;
      v40[0] = v42;
      v40[1] = v43;
      sub_1C20D8758(v40);
      v41[2] = v50;
      v41[3] = v51;
      v41[4] = v52;
      v41[5] = v53;
      v41[0] = v48;
      v41[1] = v49;
      sub_1C20D8758(v41);
      v42 = v24;
      v38 = *(a1 + 7);
      v45 = *(a1 + 6);
      v46 = v38;
      v47 = *(a1 + 8);
      v39 = *(a1 + 5);
      v43 = *(a1 + 4);
      v44 = v39;
      sub_1C20EB498(&v42, &unk_1EBF23690, &qword_1C2176D38);
      return v28;
    }

    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v42 = v54;
    v43 = v55;
    sub_1C212B7D8(v66, v41);
    sub_1C212B7D8(v67, v41);
    sub_1C212B7D8(&v54, v41);
    sub_1C20D8758(&v42);
    goto LABEL_22;
  }

  if (*(&v67[0] + 1) != 2)
  {
    sub_1C212B7D8(v66, &v54);
    sub_1C212B7D8(v67, &v54);
LABEL_22:
    v54 = v24;
    v32 = *(a1 + 7);
    v57 = *(a1 + 6);
    v58 = v32;
    v59 = *(a1 + 8);
    v33 = *(a1 + 5);
    v55 = *(a1 + 4);
    v56 = v33;
    v60 = v25;
    v34 = *(a2 + 8);
    v64 = *(a2 + 7);
    v65 = v34;
    v35 = *(a2 + 6);
    v62 = *(a2 + 5);
    v63 = v35;
    v61 = *(a2 + 4);
    sub_1C20EB498(&v54, &qword_1EBF244C8, &unk_1C217B540);
    return 0;
  }

  *&v54 = *&v66[0];
  *(&v54 + 1) = 2;
  v26 = *(a1 + 7);
  v57 = *(a1 + 6);
  v58 = v26;
  v59 = *(a1 + 8);
  v27 = *(a1 + 5);
  v55 = *(a1 + 4);
  v56 = v27;
  sub_1C212B7D8(v66, &v48);
  sub_1C212B7D8(v67, &v48);
  sub_1C20EB498(&v54, &unk_1EBF23690, &qword_1C2176D38);
  return 1;
}

unint64_t sub_1C212BE80()
{
  result = qword_1EBF24460;
  if (!qword_1EBF24460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24460);
  }

  return result;
}

unint64_t sub_1C212BF40()
{
  result = qword_1EBF24470;
  if (!qword_1EBF24470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24470);
  }

  return result;
}

unint64_t sub_1C212BF98()
{
  result = qword_1EBF24478;
  if (!qword_1EBF24478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24478);
  }

  return result;
}

unint64_t sub_1C212BFF0()
{
  result = qword_1EBF24480;
  if (!qword_1EBF24480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24480);
  }

  return result;
}

unint64_t sub_1C212C048()
{
  result = qword_1EBF24488;
  if (!qword_1EBF24488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24488);
  }

  return result;
}

unint64_t sub_1C212C0A0()
{
  result = qword_1EBF24490;
  if (!qword_1EBF24490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24490);
  }

  return result;
}

unint64_t sub_1C212C0F8()
{
  result = qword_1EBF24498;
  if (!qword_1EBF24498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore23ASCTAPPRFExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore20ASCTAPExtensionInputVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C212C1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_1C212C244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1C212C304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1C212C34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1C212C420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 217))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 216);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C212C468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 216) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = -a2;
    }
  }

  return result;
}

BOOL sub_1C212C500(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v3 = a1[9];
  v111 = a1[10];
  v112 = v2;
  v4 = a1[11];
  v113[0] = a1[12];
  *(v113 + 9) = *(a1 + 201);
  v5 = a1[7];
  v6 = a1[5];
  v107 = a1[6];
  v108 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v109 = a1[8];
  v110 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v103 = a1[2];
  v104 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v105 = a1[4];
  v106 = v12;
  v13 = a1[1];
  v102[0] = *a1;
  v102[1] = v13;
  v14 = a2[11];
  v15 = a2[9];
  v124 = a2[10];
  v125 = v14;
  v16 = a2[11];
  v126[0] = a2[12];
  *(v126 + 9) = *(a2 + 201);
  v17 = a2[7];
  v18 = a2[5];
  v120 = a2[6];
  v121 = v17;
  v19 = a2[7];
  v20 = a2[9];
  v122 = a2[8];
  v123 = v20;
  v21 = a2[3];
  v22 = a2[1];
  v116 = a2[2];
  v117 = v21;
  v23 = a2[3];
  v24 = a2[5];
  v118 = a2[4];
  v119 = v24;
  v25 = a2[1];
  v114 = *a2;
  v115 = v25;
  v26 = a1[11];
  v127[10] = a1[10];
  v127[11] = v26;
  v128[0] = a1[12];
  *(v128 + 9) = *(a1 + 201);
  v27 = a1[7];
  v127[6] = a1[6];
  v127[7] = v27;
  v28 = a1[9];
  v127[8] = a1[8];
  v127[9] = v28;
  v29 = a1[3];
  v127[2] = a1[2];
  v127[3] = v29;
  v30 = a1[5];
  v127[4] = a1[4];
  v127[5] = v30;
  v31 = a1[1];
  v127[0] = *a1;
  v127[1] = v31;
  *(v129 + 9) = *(a2 + 201);
  v32 = a2[12];
  v128[13] = v16;
  v129[0] = v32;
  v128[9] = v19;
  v128[10] = v122;
  v128[12] = v124;
  v128[11] = v15;
  v128[5] = v23;
  v128[6] = v118;
  v128[8] = v120;
  v128[7] = v18;
  v128[2] = v114;
  v128[4] = v116;
  v128[3] = v22;
  v130[10] = v111;
  v130[11] = v4;
  v131[0] = a1[12];
  *(v131 + 9) = *(a1 + 201);
  v130[6] = v107;
  v130[7] = v7;
  v130[8] = v109;
  v130[9] = v3;
  v130[2] = v103;
  v130[3] = v11;
  v130[4] = v105;
  v130[5] = v6;
  v130[0] = v102[0];
  v130[1] = v10;
  if (sub_1C20E7ABC(v130) == 1)
  {
    v33 = nullsub_1(v130);
    v99 = v124;
    v100 = v125;
    v101[0] = v126[0];
    *(v101 + 9) = *(v126 + 9);
    v95 = v120;
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v91 = v116;
    v92 = v117;
    v93 = v118;
    v94 = v119;
    v89 = v114;
    v90 = v115;
    if (sub_1C20E7ABC(&v89) == 1)
    {
      v34 = nullsub_1(&v89);
      v35 = v33[7];
      v80 = v33[6];
      v81 = v35;
      v82 = v33[8];
      v36 = v33[3];
      v76 = v33[2];
      v77 = v36;
      v37 = v33[5];
      v78 = v33[4];
      v79 = v37;
      v38 = v33[1];
      v74 = *v33;
      v75 = v38;
      v39 = v34[7];
      v66 = v34[6];
      v67 = v39;
      v68 = v34[8];
      v40 = v34[3];
      v62 = v34[2];
      v63 = v40;
      v41 = v34[5];
      v64 = v34[4];
      v65 = v41;
      v42 = v34[1];
      v60 = *v34;
      v61 = v42;
      sub_1C20EAEDC(&v114, v88);
      sub_1C20EAEDC(v102, v88);
      sub_1C20EAEDC(v102, v88);
      sub_1C20EAEDC(&v114, v88);
      AssertionCommandV2eeoiySbAC_ACtFZ_0 = _s26AuthenticationServicesCore38ASCTAPAuthenticatorGetAssertionCommandV2eeoiySbAC_ACtFZ_0(&v74, &v60);
LABEL_7:
      v45 = AssertionCommandV2eeoiySbAC_ACtFZ_0;
      sub_1C20EB498(v127, &qword_1EBF244A0, &qword_1C217B538);
      sub_1C212C9C8(&v114);
      sub_1C212C9C8(v102);
      return v45;
    }
  }

  else
  {
    v44 = nullsub_1(v130);
    v99 = v124;
    v100 = v125;
    v101[0] = v126[0];
    *(v101 + 9) = *(v126 + 9);
    v95 = v120;
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v91 = v116;
    v92 = v117;
    v93 = v118;
    v94 = v119;
    v89 = v114;
    v90 = v115;
    if (sub_1C20E7ABC(&v89) != 1)
    {
      v46 = nullsub_1(&v89);
      v47 = *(v44 + 176);
      v84 = *(v44 + 160);
      v85 = v47;
      v86 = *(v44 + 192);
      v87 = *(v44 + 208);
      v48 = *(v44 + 112);
      v80 = *(v44 + 96);
      v81 = v48;
      v49 = *(v44 + 144);
      v82 = *(v44 + 128);
      v83 = v49;
      v50 = *(v44 + 48);
      v76 = *(v44 + 32);
      v77 = v50;
      v51 = *(v44 + 80);
      v78 = *(v44 + 64);
      v79 = v51;
      v52 = *(v44 + 16);
      v74 = *v44;
      v75 = v52;
      v53 = *(v46 + 176);
      v70 = *(v46 + 160);
      v71 = v53;
      v72 = *(v46 + 192);
      v73 = *(v46 + 208);
      v54 = *(v46 + 112);
      v66 = *(v46 + 96);
      v67 = v54;
      v55 = *(v46 + 144);
      v68 = *(v46 + 128);
      v69 = v55;
      v56 = *(v46 + 48);
      v62 = *(v46 + 32);
      v63 = v56;
      v57 = *(v46 + 80);
      v64 = *(v46 + 64);
      v65 = v57;
      v58 = *(v46 + 16);
      v60 = *v46;
      v61 = v58;
      sub_1C20EAEDC(&v114, v88);
      sub_1C20EAEDC(v102, v88);
      sub_1C20EAEDC(v102, v88);
      sub_1C20EAEDC(&v114, v88);
      AssertionCommandV2eeoiySbAC_ACtFZ_0 = _s26AuthenticationServicesCore40ASCTAPAuthenticatorMakeCredentialCommandV2eeoiySbAC_ACtFZ_0(&v74, &v60);
      goto LABEL_7;
    }
  }

  nullsub_1(&v89);
  sub_1C20EAEDC(v102, &v89);
  sub_1C20EAEDC(&v114, &v89);
  sub_1C20EB498(v127, &qword_1EBF244A0, &qword_1C217B538);
  return 0;
}

unint64_t sub_1C212C9F8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C21709E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C2170AC4();
}

uint64_t sub_1C212CAA8(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      if (a1 != a1 >> 32)
      {
        goto LABEL_7;
      }
    }

    else if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    v6 = 0;
    v7 = 1;
LABEL_13:
    sub_1C212CC30();
    swift_allocError();
    *v8 = v6;
    v8[1] = v7;
    return swift_willThrow();
  }

  if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
  {
    goto LABEL_12;
  }

LABEL_7:
  LOBYTE(result) = sub_1C2170134();
  v6 = result;
  v7 = 0;
  if (result > 1u)
  {
    if (result == 2 || result == 3)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (result == 1)
    {
LABEL_10:
      sub_1C20D865C(a1, a2);
      sub_1C2128BB4(1, a1, a2, &v9);
      return v9;
    }

    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1C212CC30()
{
  result = qword_1EBF244A8;
  if (!qword_1EBF244A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244A8);
  }

  return result;
}

unint64_t sub_1C212CC84()
{
  result = qword_1EBF244B0;
  if (!qword_1EBF244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244B0);
  }

  return result;
}

unint64_t sub_1C212CCD8()
{
  result = qword_1EBF244B8;
  if (!qword_1EBF244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244B8);
  }

  return result;
}

unint64_t sub_1C212CD38()
{
  result = qword_1EBF244C0;
  if (!qword_1EBF244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244C0);
  }

  return result;
}

uint64_t sub_1C212CD94(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) <= 1)
  {
    if (v2)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    return sub_1C20D865C(result, a2);
  }

  if (v2 == 2)
  {
    a2 &= 0xCFFFFFFFFFFFFFFFLL;
    return sub_1C20D865C(result, a2);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C212CDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C212CE34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C212CE84(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *sub_1C212CF08(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1C212CFB8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF244D0, &qword_1C217B6B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C212D1AC();
  sub_1C2171464();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_1C21711B4();
    v10[15] = 1;
    sub_1C212D200();
    sub_1C21711D4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_1C212D1AC()
{
  result = qword_1EBF244D8;
  if (!qword_1EBF244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244D8);
  }

  return result;
}

unint64_t sub_1C212D200()
{
  result = qword_1EBF244E0;
  if (!qword_1EBF244E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244E0);
  }

  return result;
}

unint64_t sub_1C212D254()
{
  result = qword_1EBF244F0;
  if (!qword_1EBF244F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244F0);
  }

  return result;
}

uint64_t sub_1C212D2B8(uint64_t a1, int a2)
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

uint64_t sub_1C212D300(uint64_t result, int a2, int a3)
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

unint64_t sub_1C212D350()
{
  result = qword_1EBF244F8;
  if (!qword_1EBF244F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF244F8);
  }

  return result;
}

unint64_t sub_1C212D3A8()
{
  result = qword_1EBF24500;
  if (!qword_1EBF24500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24500);
  }

  return result;
}

unint64_t sub_1C212D400()
{
  result = qword_1EBF24508;
  if (!qword_1EBF24508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24508);
  }

  return result;
}

unint64_t sub_1C212D454()
{
  result = qword_1EBF24510;
  if (!qword_1EBF24510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24510);
  }

  return result;
}

__n128 ASCTAPExtensionInput.init(largeBlob:prf:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 56) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 72) = v5;
  *(a3 + 88) = v6;
  return result;
}

uint64_t ASCTAPExtensionInput.encode(for:)(char *a1)
{
  v3 = sub_1C21702C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = v1[3];
  v31 = v1[2];
  v32 = v9;
  v10 = v1[5];
  v33 = v1[4];
  v34 = v10;
  v11 = v1[1];
  v29 = *v1;
  v30 = v11;
  v12 = sub_1C2170314();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1C2170304();
  (*(v4 + 104))(v7, *MEMORY[0x1E698F6D8], v3);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v16 = *(*v15 + 72);
  v17 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C21768E0;
  v19 = v15[14];
  if (qword_1EBF23138 != -1)
  {
    v27 = v18;
    swift_once();
    v18 = v27;
  }

  v20 = v18 + v17;
  v21 = v18 + v17 + v19;
  v22 = v18;
  v23 = sub_1C2171054();
  v24 = __swift_project_value_buffer(v23, qword_1EBF25218);
  (*(*(v23 - 8) + 16))(v20, v24, v23);
  *(v21 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v21 = v8;
  sub_1C213EE5C(v22);
  swift_setDeallocating();
  sub_1C20EB498(v20, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v28[2] = v31;
  v28[3] = v32;
  v28[4] = v33;
  v28[5] = v34;
  v28[0] = v29;
  v28[1] = v30;
  sub_1C212B848();
  v25 = sub_1C21702E4();

  return v25;
}

uint64_t ASCTAPLargeBlobExtensionInput.init(support:read:uncompressedWrite:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a5;
  v10 = a5 >> 60;
  if (a5 >> 60 == 15)
  {
    v11 = 0;
LABEL_3:
    *a6 = result;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = v7;
    *(a6 + 40) = v11;
    *(a6 + 48) = v10 > 0xE;
    return result;
  }

  v12 = result;
  v13 = a3;
  v14 = a6;
  v15 = sub_1C2170044();
  if (v6)
  {
    sub_1C20B23C8(a4, v7);
  }

  v17 = v7 >> 62;
  v21 = v16;
  v18 = v15;
  if ((v7 >> 62) > 1)
  {
    if (v17 != 2)
    {
LABEL_17:
      sub_1C20B23C8(a4, v7);
      v11 = 0;
      goto LABEL_18;
    }

    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
    sub_1C20B23C8(a4, v7);
    v11 = v20 - v19;
    if (!__OFSUB__(v20, v19))
    {
LABEL_15:
      a6 = v14;
      a3 = v13;
      result = v12;
      a4 = v18;
      v7 = v21;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v17)
  {
    sub_1C20B23C8(a4, v7);
    v11 = BYTE6(v7);
LABEL_18:
    a6 = v14;
    a3 = v13;
    result = v12;
    a4 = v18;
    v7 = v21;
    goto LABEL_3;
  }

  result = sub_1C20B23C8(a4, v7);
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v11 = HIDWORD(a4) - a4;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C212D9B0(uint64_t a1)
{
  v2 = sub_1C2170724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23500, &qword_1C2176948);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  sub_1C20EB3E8(a1, &v19 - v10, &qword_1EBF23500, &qword_1C2176948);
  (*(v3 + 16))(v6, v11, v2);
  sub_1C213FAD0(&qword_1EBF24838, MEMORY[0x1E69663E0]);
  sub_1C2170AD4();
  v12 = *&v11[*(v8 + 44)];
  sub_1C20EB498(v11, &qword_1EBF23500, &qword_1C2176948);
  result = v19;
  if (!v12 || (v14 = *(v19 + 16), v20 == v14))
  {
    v15 = 0;
LABEL_4:

LABEL_5:
    sub_1C20EB498(a1, &qword_1EBF23500, &qword_1C2176948);
    return v15;
  }

  if (v20 < v14)
  {
    v16 = v19 + 32;
    v15 = *(v19 + 32 + v20);
    if (v12 == 1 || v20 + 1 == v14)
    {
      goto LABEL_4;
    }

    if (v20 + 1 < v14)
    {
      v15 |= *(v16 + v20 + 1) << 8;
      if (v12 == 2 || v20 + 2 == v14)
      {
        goto LABEL_4;
      }

      if (v20 + 2 < v14)
      {
        v15 |= *(v16 + v20 + 2) << 16;
        if (v12 == 3 || v20 + 3 == v14)
        {
          goto LABEL_4;
        }

        if (v20 + 3 < v14)
        {
          v15 |= *(v16 + v20 + 3) << 24;
          if (v12 == 4 || v20 + 4 == v14)
          {
            goto LABEL_4;
          }

          if (v20 + 4 < v14)
          {
            v15 |= *(v16 + v20 + 4) << 32;
            if (v12 == 5 || v20 + 5 == v14)
            {
              goto LABEL_4;
            }

            if (v20 + 5 < v14)
            {
              v15 |= *(v16 + v20 + 5) << 40;
              if (v12 == 6 || v20 + 6 == v14)
              {
                goto LABEL_4;
              }

              if (v20 + 6 < v14)
              {
                v15 |= *(v16 + v20 + 6) << 48;
                if (v12 == 7)
                {
                  goto LABEL_4;
                }

                v17 = v20 + 7;
                if (v20 + 7 == v14)
                {
                  goto LABEL_4;
                }

                if (v17 < v14)
                {
                  v18 = *(v16 + v17);

                  v15 |= v18 << 56;
                  goto LABEL_5;
                }
              }
            }
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C212DC80(uint64_t a1)
{
  v2 = sub_1C21701A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_1C21701B4();
  sub_1C213FAD0(&qword_1EDD4ADA8, MEMORY[0x1E6969050]);
  sub_1C2170D74();
  if (v14)
  {
    v9 = 0;
  }

  else
  {
    v10 = v13;
    sub_1C2170D74();
    if (v14)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10 | (v13 << 8);
    }
  }

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1C212DE0C(uint64_t a1)
{
  v2 = sub_1C21701A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_1C21701B4();
  sub_1C213FAD0(&qword_1EDD4ADA8, MEMORY[0x1E6969050]);
  sub_1C2170D74();
  if (v13)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12;
    sub_1C2170D74();
    if ((v13 & 1) == 0)
    {
      v9 |= v12 << 8;
      sub_1C2170D74();
      if ((v13 & 1) == 0)
      {
        v9 |= v12 << 16;
        sub_1C2170D74();
        if ((v13 & 1) == 0)
        {
          v9 |= v12 << 24;
          sub_1C2170D74();
          if ((v13 & 1) == 0)
          {
            v9 |= v12 << 32;
            sub_1C2170D74();
            if ((v13 & 1) == 0)
            {
              v9 |= v12 << 40;
              sub_1C2170D74();
              if ((v13 & 1) == 0)
              {
                v9 |= v12 << 48;
                sub_1C2170D74();
                if ((v13 & 1) == 0)
                {
                  v9 |= v12 << 56;
                }
              }
            }
          }
        }
      }
    }
  }

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1C212E05C(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v37 = *MEMORY[0x1E69E9840];
  v34 = a1 >> 32;
  v35 = BYTE6(a2);
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v4)
  {
    v5 = a1 >> 32;
  }

  else
  {
    v5 = BYTE6(a2);
  }

  v6 = 0;
  v7 = a1;
  v8 = -8;
  v32 = a1 >> 16;
  v33 = a1 >> 8;
  v30 = HIDWORD(a1);
  v31 = a1 >> 24;
  v28 = HIWORD(a1);
  v29 = a1 >> 40;
  v26 = a2 >> 8;
  v27 = HIBYTE(a1);
  v24 = a2 >> 24;
  v25 = a2 >> 16;
  v23 = HIDWORD(a2);
  v9 = a2 >> 40;
  do
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v10 = *(a1 + 16);
LABEL_14:
        if (v5 == v10)
        {
          break;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = a1;
      if (v4)
      {
        goto LABEL_14;
      }
    }

    if (!v5)
    {
      break;
    }

LABEL_17:
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
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
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_45;
      }

      if (v5 < *(a1 + 16))
      {
        goto LABEL_40;
      }

      if (v5 >= *(a1 + 24))
      {
        goto LABEL_42;
      }

      v13 = sub_1C216FDD4();
      if (!v13)
      {
        goto LABEL_47;
      }

      v14 = v13;
      v15 = sub_1C216FE04();
      v16 = v5 - v15;
      if (__OFSUB__(v5, v15))
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if (v4)
    {
      if (v5 < a1 || v5 >= v34)
      {
        goto LABEL_41;
      }

      v17 = sub_1C216FDD4();
      if (!v17)
      {
        goto LABEL_46;
      }

      v14 = v17;
      v18 = sub_1C216FE04();
      v16 = v5 - v18;
      if (__OFSUB__(v5, v18))
      {
        goto LABEL_43;
      }

LABEL_33:
      v12 = *(v14 + v16);
      goto LABEL_34;
    }

    if (v5 >= v35)
    {
      goto LABEL_39;
    }

    v36[0] = v7;
    v36[1] = v33;
    v36[2] = v32;
    v36[3] = v31;
    v36[4] = v30;
    v36[5] = v29;
    v36[6] = v28;
    v36[7] = v27;
    v36[8] = a2;
    v36[9] = v26;
    v36[10] = v25;
    v36[11] = v24;
    v36[12] = v23;
    v36[13] = v9;
    v12 = v36[v5];
LABEL_34:
    v19 = v12 << (v8 + 8);
    v20 = __CFADD__(v6, v19);
    v6 = (v6 + v19);
    if (v20)
    {
      goto LABEL_38;
    }

    v8 += 8;
  }

  while (v8 < 0x18);
  sub_1C20D3174(a1, a2);
  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C212E2E8(char a1, unsigned __int16 a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = xmmword_1C2176980;
  do
  {
    if (*(&v20 + 1) >> 62 == 2)
    {
      v6 = *(v20 + 24);
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v19[3] = v4;
    v19[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150);
    LOBYTE(v19[0]) = v3;
    v18 = *__swift_project_boxed_opaque_existential_1(v19, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v5 = v3 > 0xFF;
    v3 >>= 8;
  }

  while (v5);
  v8 = *(&v20 + 1);
  v7 = v20;
  if (a1)
  {
    v9 = *(&v20 + 1) >> 62;
    if ((*(&v20 + 1) >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE14(v20);
      goto LABEL_17;
    }

    LODWORD(v10) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_22;
    }

    v10 = v10;
LABEL_17:
    v14 = 2 - v10;
    if (!__OFSUB__(2, v10))
    {
      if (v14 >= 1)
      {
        v15 = sub_1C2170B84();
        *(v15 + 16) = v14;
        bzero((v15 + 32), v14);
        sub_1C2170114();

        v8 = *(&v20 + 1);
        v7 = v20;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

LABEL_20:
  sub_1C20D865C(v7, v8);
  sub_1C20D3174(v7, v8);
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1C212E50C(char a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = xmmword_1C2176980;
  do
  {
    if (*(&v20 + 1) >> 62 == 2)
    {
      v6 = *(v20 + 24);
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v19[3] = v4;
    v19[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150);
    LOBYTE(v19[0]) = a2;
    v18 = *__swift_project_boxed_opaque_existential_1(v19, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  v8 = *(&v20 + 1);
  v7 = v20;
  if (a1)
  {
    v9 = *(&v20 + 1) >> 62;
    if ((*(&v20 + 1) >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE14(v20);
      goto LABEL_17;
    }

    LODWORD(v10) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_22;
    }

    v10 = v10;
LABEL_17:
    v14 = 8 - v10;
    if (!__OFSUB__(8, v10))
    {
      if (v14 >= 1)
      {
        v15 = sub_1C2170B84();
        *(v15 + 16) = v14;
        bzero((v15 + 32), v14);
        sub_1C2170114();

        v8 = *(&v20 + 1);
        v7 = v20;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

LABEL_20:
  sub_1C20D865C(v7, v8);
  sub_1C20D3174(v7, v8);
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1C212E730(char a1, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = xmmword_1C2176980;
  do
  {
    if (*(&v20 + 1) >> 62 == 2)
    {
      v6 = *(v20 + 24);
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
    v19[3] = v4;
    v19[4] = sub_1C20EB398(&qword_1EBF24868, &qword_1EBF24860, &qword_1C217E150);
    LOBYTE(v19[0]) = a2;
    v18 = *__swift_project_boxed_opaque_existential_1(v19, v4);
    sub_1C2170104();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v5 = a2 > 0xFF;
    a2 >>= 8;
  }

  while (v5);
  v8 = *(&v20 + 1);
  v7 = v20;
  if (a1)
  {
    v9 = *(&v20 + 1) >> 62;
    if ((*(&v20 + 1) >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v12 = *(v20 + 16);
      v11 = *(v20 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = BYTE14(v20);
      goto LABEL_17;
    }

    LODWORD(v10) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_22;
    }

    v10 = v10;
LABEL_17:
    v14 = 4 - v10;
    if (!__OFSUB__(4, v10))
    {
      if (v14 >= 1)
      {
        v15 = sub_1C2170B84();
        *(v15 + 16) = v14;
        bzero((v15 + 32), v14);
        sub_1C2170114();

        v8 = *(&v20 + 1);
        v7 = v20;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

LABEL_20:
  sub_1C20D865C(v7, v8);
  sub_1C20D3174(v7, v8);
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1C212E954()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C212EA44()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t ASCTAPAuthenticatorTransport.rawValue.getter()
{
  v1 = *v0;
  v2 = 6452085;
  v3 = 0x6C616E7265746E69;
  v4 = 0x646972627968;
  if (v1 != 4)
  {
    v4 = 0x61632D7472616D73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6514286;
  if (v1 != 1)
  {
    v5 = 6646882;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ASCTAPUserVerificationRequirement.rawValue.getter()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0x6172756F63736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465726975716572;
  }
}

char *sub_1C212EC3C(char a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v29 = *(v1 + 64);
  v30 = *(v1 + 56);
  v27 = *(v1 + 80);
  v28 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs());
  sub_1C20D87AC(v3, v2, v4, v5, v7);
  v11 = [v10 init];
  if (v2 == 1)
  {
    v12 = 0;
    v13 = 0xB000000000000000;
  }

  else
  {
    *&v34 = v3;
    *(&v34 + 1) = v2;
    LOBYTE(v35) = v4;
    *(&v35 + 1) = v5;
    v36 = v7;
    v37 = v6;
    v38 = v8 & 1;
    sub_1C213360C(&v39);

    sub_1C20B23C8(v5, v7);
    v12 = v39;
    v13 = v40;
  }

  v14 = &v11[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob];
  v15 = 1;
  swift_beginAccess();
  v16 = *v14;
  v17 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  sub_1C2106BFC(v16, v17);
  if (v9 == 1)
  {
    v18 = 0;
    v31 = 0u;
    v33 = 0u;
  }

  else
  {
    v39 = v30;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v9;
    sub_1C20B22CC(v30, v29, v28, v27);

    sub_1C2133798(a1 & 1, &v34);
    sub_1C20B23DC(v30, v29, v28, v27);

    v31 = v35;
    v33 = v34;
    v18 = v36;
    v15 = v37;
  }

  v19 = &v11[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = v19[4];
  v25 = v19[5];
  *v19 = v33;
  *(v19 + 1) = v31;
  v19[4] = v18;
  v19[5] = v15;
  sub_1C2106BB8(v20, v21, v22, v23, v24, v25);
  return v11;
}

_BYTE *sub_1C212EE38(char a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v31 = *(v1 + 64);
  v32 = *(v1 + 56);
  v29 = *(v1 + 80);
  v30 = *(v1 + 72);
  v9 = *(v1 + 88);
  v10 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
  sub_1C20D87AC(v2, v3, v4, v5, v7);
  v11 = [v10 init];
  if (!v3)
  {
    sub_1C20D8840(v2, 0, v4, v5, v7);
    v12 = 2;
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v12 = 2;
    goto LABEL_11;
  }

  if (v2 == 0x6572726566657270 && v3 == 0xE900000000000064)
  {
    v13 = 0x6572726566657270;
    v14 = 0xE900000000000064;
LABEL_10:
    sub_1C20D8840(v13, v14, v4, v5, v7);
    v12 = 1;
    goto LABEL_11;
  }

  if (sub_1C2171324())
  {
    v13 = v2;
    v14 = v3;
    goto LABEL_10;
  }

  if (v2 == 0x6465726975716572 && v3 == 0xE800000000000000)
  {
    sub_1C20D8840(0x6465726975716572, 0xE800000000000000, v4, v5, v7);
    v12 = 0;
  }

  else
  {
    v28 = sub_1C2171324();
    sub_1C20D8840(v2, v3, v4, v5, v7);
    if (v28)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }
  }

LABEL_11:
  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v16 = 1;
  swift_beginAccess();
  v11[v15] = v12;
  if (v9 == 1)
  {
    v17 = 0;
    v18 = 0;
    v33 = 0u;
    v35 = 0u;
  }

  else
  {
    sub_1C20B22CC(v32, v31, v30, v29);

    sub_1C21339F8(a1 & 1, v36);
    sub_1C20B23DC(v32, v31, v30, v29);

    v33 = v36[1];
    v35 = v36[0];
    v17 = v37;
    v18 = v38;
    v16 = v39;
  }

  v19 = &v11[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = v19[4];
  v25 = v19[5];
  v26 = v19[6];
  *v19 = v35;
  *(v19 + 1) = v33;
  v19[4] = v17;
  v19[5] = v18;
  v19[6] = v16;
  sub_1C20D86B0(v20, v21, v22, v23, v24, v25, v26);
  return v11;
}

_BYTE *sub_1C212F134()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v27 = *(v0 + 64);
  v28 = v12;
  v13 = *(v0 + 72);
  v25 = *(v0 + 80);
  v26 = v13;
  v14 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0));
  sub_1C213FE60(v5, v6, v7);
  v15 = [v14 init];
  v16 = v5;
  if (v5 == 3)
  {
    v16 = 2;
  }

  else
  {
    sub_1C213FF48(v5, v6, v7);
    if (v5 != 2)
    {
      v16 = v5 & 1;
    }
  }

  v17 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  v15[v17] = v16;
  if (v11 == 3)
  {
    v18 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  }

  else
  {
    v29 = v11;
    v20 = v27;
    v19 = v28;
    v30 = v28;
    v31 = v27;
    v22 = v25;
    v21 = v26;
    v32 = v26;
    v33 = v25;
    sub_1C20B22CC(v28, v27, v26, v25);
    sub_1C21371F4(v4);
    sub_1C20B23DC(v19, v20, v21, v22);
  }

  v23 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C21198A4(v4, &v15[v23], &qword_1EBF23BC8, &qword_1C21789D0);
  swift_endAccess();
  return v15;
}

char *sub_1C212F364()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v31 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v35 = *(v0 + 48);
  v11 = *(v0 + 56);
  v33 = *(v0 + 64);
  v34 = v11;
  v12 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = v12;
  v13 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
  sub_1C213FE60(v6, v5, v7);
  v14 = [v13 init];
  if (v6 == 3)
  {
    goto LABEL_2;
  }

  if (v8 == 2)
  {
    v36 = v6;
    v37 = v5;
    v38 = v7;
    LOBYTE(v39) = 2;
    v40 = v9;
    v41 = v10 & 1;
    v18 = ASCTAPLargeBlobExtensionOutput.uncompressedBlob.getter();
    if (v19 >> 60 == 15)
    {
      sub_1C213FF48(v6, v5, v7);
LABEL_2:
      v15 = 0;
      v16 = 0;
      v17 = -1;
      goto LABEL_8;
    }

    v15 = v18;
    v16 = v19;
    sub_1C213FF48(v6, v5, v7);
    v17 = 0;
  }

  else
  {
    sub_1C213FF48(v6, v5, v7);
    v16 = 0;
    v15 = v8 & 1;
    v17 = 1;
  }

LABEL_8:
  v20 = &v14[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  *v20 = v15;
  *(v20 + 1) = v16;
  v23 = v20[16];
  v20[16] = v17;
  sub_1C2142F40(v21, v22, v23);
  if (v35 == 3)
  {
    v24 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  }

  else
  {
    v36 = v35;
    v26 = v33;
    v25 = v34;
    v37 = v34;
    v38 = v33;
    v28 = v31;
    v27 = v32;
    v39 = v32;
    v40 = v31;
    sub_1C20B22CC(v34, v33, v32, v31);
    sub_1C213757C(v4);
    sub_1C20B23DC(v25, v26, v27, v28);
  }

  v29 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C21198A4(v4, &v14[v29], &qword_1EBF24840, &qword_1C217E130);
  swift_endAccess();
  return v14;
}

uint64_t static ASCTAPUserVerificationRequirement.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

AuthenticationServicesCore::ASCTAPUserVerificationRequirement_optional __swiftcall ASCTAPUserVerificationRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C212F754(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572726566657270;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6172756F63736964;
    v4 = 0xEB00000000646567;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465726975716572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6572726566657270;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6172756F63736964;
    v8 = 0xEB00000000646567;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465726975716572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C212F870()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C212F920()
{
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C212F9BC()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C212FA74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6572726566657270;
  if (v2 != 1)
  {
    v5 = 0x6172756F63736964;
    v4 = 0xEB00000000646567;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465726975716572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C212FAE0(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

uint64_t sub_1C212FB9C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  if (*a1)
  {
    v2 = sub_1C2171324();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C212FC6C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  if (*a2)
  {
    v2 = sub_1C2171324();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1C212FD3C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      v2 = sub_1C2171324();

      return v2 & 1;
    }
  }

  return 1;
}

AuthenticationServicesCore::ASCTAPAuthenticatorTransport_optional __swiftcall ASCTAPAuthenticatorTransport.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C212FEA4()
{
  *v0;
  *v0;
  *v0;
  sub_1C21709B4();
}

void sub_1C212FF90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6452085;
  v5 = 0xE800000000000000;
  v6 = 0x6C616E7265746E69;
  v7 = 0xE600000000000000;
  v8 = 0x646972627968;
  if (v2 != 4)
  {
    v8 = 0x61632D7472616D73;
    v7 = 0xEA00000000006472;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 6514286;
  if (v2 != 1)
  {
    v9 = 6646882;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

AuthenticationServicesCore::ASWKCTAPAuthenticatorTransport_optional __swiftcall ASWKCTAPAuthenticatorTransport.init(rawValue:)(NSNumber rawValue)
{
  v3 = v1;
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  v4 = rawValue.super.super.isa;
  v5 = sub_1C2170CD4();
  v6 = sub_1C2170CF4();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1C2170CD4();
    v11 = sub_1C2170CF4();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1C2170CD4();
      v14 = sub_1C2170CF4();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1C2170CD4();
        v17 = sub_1C2170CF4();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = sub_1C2170CD4();
          v20 = sub_1C2170CF4();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = v18;
            v22 = sub_1C2170CD4();
            v23 = sub_1C2170CF4();

            if (v23)
            {

              v8 = 5;
            }

            else
            {
              v24 = sub_1C2170CD4();
              v25 = sub_1C2170CF4();

              if (v25)
              {
                v8 = 6;
              }

              else
              {
                v8 = 7;
              }
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t ASWKCTAPAuthenticatorTransport.rawValue.getter()
{
  v1 = *v0;
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  return sub_1C2170CD4();
}

uint64_t sub_1C2130270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247B8, &qword_1C217E0C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B28();
  sub_1C2171484();
  v16 = 0;
  sub_1C2171274();
  if (!v5)
  {
    v15 = 1;
    sub_1C2171274();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1C2130404(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247C8, &qword_1C217E0D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B7C();
  sub_1C2171484();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  sub_1C2171274();
  if (!v2)
  {
    v18 = *(v3 + 1);
    v19 = v18;
    v17[23] = 1;
    sub_1C2127360(&v19, v17);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v18, *(&v18 + 1));
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v18) = 2;
    sub_1C2171274();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C21305C0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247D8, &qword_1C217E0D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141BD0();
  sub_1C2171484();
  v16 = 0;
  sub_1C2171274();
  if (!v4)
  {
    v15 = 1;
    sub_1C21712A4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C2130750(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C20EB90C();
}

uint64_t sub_1C213075C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C20EC01C();
  return sub_1C2171454();
}

uint64_t sub_1C21307AC()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C20EC01C();
  return sub_1C2171454();
}

uint64_t sub_1C21307F8@<X0>(uint64_t *a1@<X8>)
{
  result = ASWKCTAPAuthenticatorTransport.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2130820()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1C2130848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C213091C(uint64_t a1)
{
  v2 = sub_1C2141B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130958(uint64_t a1)
{
  v2 = sub_1C2141B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2130994@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C2141FC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C21309E4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C2171324(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1C2171324();
    }
  }

  return result;
}

uint64_t sub_1C2130A88()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C2130AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C21421A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C2130B00(uint64_t a1)
{
  v2 = sub_1C2141B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130B3C(uint64_t a1)
{
  v2 = sub_1C2141B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C2130B78@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C21422BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1C2130BD4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C2171324() & 1) == 0 || (sub_1C21068CC(v2, v4, v6, v7) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1C2171324();
}

uint64_t sub_1C2130CB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6777953;
  }

  else
  {
    v4 = 1701869940;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6777953;
  }

  else
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C2171324();
  }

  return v9 & 1;
}

uint64_t sub_1C2130D50()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2130DC4()
{
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C2130E24()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C2130EA0(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 6777953;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2130ED0()
{
  if (*v0)
  {
    result = 6777953;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1C2130F08(uint64_t a1)
{
  v2 = sub_1C2141BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2130F44(uint64_t a1)
{
  v2 = sub_1C2141BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2130F80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C214255C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

BOOL sub_1C2130FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C2171324();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1C21310D0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1C2131100@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1C213112C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1C2131224@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t static ASCTAPAuthData.test_rawAuthenticatorData(rpIDHash:flags:counter:credentialData:)(uint64_t a1, unint64_t a2, char *a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v10 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768E0;
  *(v11 + 32) = v10;
  v12 = sub_1C20E7898(v11);
  v14 = v13;

  v41 = a1;
  v42 = a2;
  v15 = MEMORY[0x1E6969080];
  v16 = MEMORY[0x1E6969078];
  v39 = MEMORY[0x1E6969080];
  v40 = MEMORY[0x1E6969078];
  v37 = v12;
  v38 = v14;
  v17 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(a1, a2);
  sub_1C20D865C(v12, v14);
  sub_1C2106434(v18, v19);
  sub_1C20D3174(v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  v20 = v41;
  v21 = v42;
  v22 = sub_1C212E730(1, a4);
  v24 = sub_1C20DE218(v22, v23);
  v26 = v25;
  v43 = v20;
  v44 = v21;
  v39 = v15;
  v40 = v16;
  v37 = v24;
  v38 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(&v37, v15);
  v28 = *v27;
  v29 = v27[1];
  sub_1C20D865C(v20, v21);
  sub_1C20D865C(v24, v26);
  sub_1C2106434(v28, v29);
  sub_1C20D3174(v24, v26);
  sub_1C20D3174(v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  result = v43;
  if (a6 >> 60 != 15)
  {
    v39 = v15;
    v40 = v16;
    v37 = a5;
    v38 = a6;
    v31 = v43;
    v32 = v44;
    v33 = __swift_project_boxed_opaque_existential_1(&v37, v15);
    v34 = *v33;
    v35 = v33[1];
    sub_1C20B22B8(a5, a6);
    sub_1C20D865C(v31, v32);
    sub_1C2106434(v34, v35);
    sub_1C20D3174(v31, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
    return v43;
  }

  return result;
}

uint64_t ASCTAPAuthData.rpIDHash.getter()
{
  v1 = *v0;
  sub_1C20D865C(*v0, *(v0 + 8));
  return v1;
}

void ASCTAPAuthData.attestedCredentialData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1C20F4D00(v2, v3, v4, v5, v6, v7, sub_1C20D865C);
}

__n128 ASCTAPAuthData.init(rpIDHash:flags:counter:attestedCredentialData:extensions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a5 + 16);
  *(a8 + 24) = *a5;
  v9 = *a3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v9;
  *(a8 + 20) = a4;
  *(a8 + 40) = v8;
  result = *(a5 + 32);
  *(a8 + 56) = result;
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  return result;
}

uint64_t ASCTAPAuthData.validate(relyingParty:requiredFlags:disallowedFlags:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v62 = a2;
  v55 = a1;
  v7 = sub_1C2170844();
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1C2170724();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1C2170964();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = *a3;
  v19 = *a4;
  v20 = v4[3];
  v58 = v4[2];
  v59 = v20;
  v60 = v4[4];
  v61 = *(v4 + 10);
  v21 = v4[1];
  v56 = *v4;
  v57 = v21;
  sub_1C2170954();
  v22 = sub_1C2170924();
  v24 = v23;
  (*(v15 + 8))(v18, v14);
  if (v24 >> 60 == 15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    v26 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1C2170914();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v27;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x80000001C2186590;
    v28 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
    sub_1C213F614(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &unk_1EBF23908, &qword_1C217B8D0);
    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1C2170854();

    [v29 initWithDomain:v28 code:14 userInfo:v30];

    return swift_willThrow();
  }

  LODWORD(v62) = v19;
  sub_1C213FAD0(&qword_1EDD4A7A0, MEMORY[0x1E6966620]);
  sub_1C2170704();
  sub_1C20D865C(v22, v24);
  v32 = v50;
  sub_1C210656C(v22, v24);
  sub_1C20B23C8(v22, v24);
  v33 = v51;
  sub_1C21706F4();
  v34 = (*(v52 + 8))(v10, v7);
  MEMORY[0x1EEE9AC00](v34);
  *&v48[-16] = &v56;
  sub_1C2170714();
  if (!v32)
  {
    if ((v49 & ~v57) != 0)
    {
      v35 = v22;
      v36 = v24;
      v37 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1C21768E0;
      v44 = *MEMORY[0x1E696A588];
      *(v38 + 32) = sub_1C2170914();
      v41 = v38 + 32;
      v42 = 0x80000001C21865B0;
      *(v38 + 72) = MEMORY[0x1E69E6158];
      v43 = 0xD000000000000024;
      goto LABEL_8;
    }

    if ((v57 & v62) != 0)
    {
      v35 = v22;
      v36 = v24;
      v37 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1C21768E0;
      v39 = *MEMORY[0x1E696A588];
      *(v38 + 32) = sub_1C2170914();
      v41 = v38 + 32;
      v42 = 0x80000001C21865E0;
      *(v38 + 72) = MEMORY[0x1E69E6158];
      v43 = 0xD00000000000002FLL;
LABEL_8:
      *(v38 + 40) = v40;
      *(v38 + 48) = v43;
      *(v38 + 56) = v42;
      v45 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
      sub_1C213F614(v38);
      swift_setDeallocating();
      sub_1C20EB498(v41, &unk_1EBF23908, &qword_1C217B8D0);
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = sub_1C2170854();

      [v46 initWithDomain:v45 code:14 userInfo:v47];

      swift_willThrow();
      sub_1C20B23C8(v35, v36);
      return (*(v53 + 8))(v37, v54);
    }
  }

  (*(v53 + 8))(v33, v54);
  return sub_1C20B23C8(v22, v24);
}

uint64_t sub_1C2131BFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = MEMORY[0x1E69E6290];
  v27 = MEMORY[0x1E6969DF8];
  v24 = a1;
  v25 = a2;
  v4 = __swift_project_boxed_opaque_existential_1(&v24, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C213F048(v5, v6);
      v9 = v22 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C213F108(v5, v6);
      v9 = v23 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C213F184(v5, v6);
      v9 = v21 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  if ((sub_1C21068CC(*a3, *(a3 + 8), v8, v9) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24528, &qword_1C217B8C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    v11 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1C2170914();
    *(inited + 40) = v12;
    v24 = 0;
    v25 = 0xE000000000000000;
    v13 = @"com.apple.AuthenticationServicesCore.AuthorizationError";
    sub_1C2170F34();
    MEMORY[0x1C6913CB0](0xD000000000000031, 0x80000001C21866A0);
    v14 = sub_1C2170164();
    MEMORY[0x1C6913CB0](v14);

    MEMORY[0x1C6913CB0](0x3A646E756F66202CLL, 0xE900000000000020);
    v15 = sub_1C2170164();
    MEMORY[0x1C6913CB0](v15);

    MEMORY[0x1C6913CB0](46, 0xE100000000000000);
    v16 = v24;
    v17 = v25;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v16;
    *(inited + 56) = v17;
    sub_1C213F614(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &unk_1EBF23908, &qword_1C217B8D0);
    v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v19 = sub_1C2170854();

    [v18 initWithDomain:v13 code:14 userInfo:v19];

    swift_willThrow();
  }

  return sub_1C20D3174(v8, v9);
}

uint64_t ASCTAPAuthData.test_webAuthnEncoded()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v37 = *(v0 + 20);
  v4 = *(v0 + 32);
  if (v4 >> 60 == 15)
  {
    v36 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v38 = *(v0 + 24);
    v39 = v4;
    v40 = v9;
    v41 = v8;
    v42 = v7;
    v43 = v6;
    sub_1C20D865C(v38, v4);
    sub_1C20D865C(v9, v8);
    sub_1C20D865C(v7, v6);
    v36 = sub_1C2132158();
    v5 = v10;
    sub_1C20D3174(v38, v4);
    sub_1C20D3174(v9, v8);
    sub_1C20D3174(v7, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768E0;
  *(v11 + 32) = v3;
  v12 = sub_1C20E7898(v11);
  v14 = v13;

  v44 = v1;
  v45 = v2;
  v15 = MEMORY[0x1E6969080];
  v16 = MEMORY[0x1E6969078];
  v41 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  v38 = v12;
  v39 = v14;
  v17 = __swift_project_boxed_opaque_existential_1(&v38, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(v1, v2);
  sub_1C20D865C(v12, v14);
  sub_1C2106434(v18, v19);
  sub_1C20D3174(v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  v20 = v44;
  v21 = v45;
  v22 = sub_1C212E730(1, v37);
  v24 = sub_1C20DE218(v22, v23);
  v26 = v25;
  v46 = v20;
  v47 = v21;
  v41 = v15;
  v42 = v16;
  v38 = v24;
  v39 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(&v38, v15);
  v28 = *v27;
  v29 = v27[1];
  sub_1C20D865C(v20, v21);
  sub_1C20D865C(v24, v26);
  sub_1C2106434(v28, v29);
  sub_1C20D3174(v24, v26);
  sub_1C20D3174(v20, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(&v38);
  result = v46;
  if (v5 >> 60 != 15)
  {
    v41 = v15;
    v42 = v16;
    v38 = v36;
    v39 = v5;
    v31 = v46;
    v32 = v47;
    v33 = __swift_project_boxed_opaque_existential_1(&v38, v15);
    v34 = *v33;
    v35 = v33[1];
    sub_1C20B22B8(v36, v5);
    sub_1C20D865C(v31, v32);
    sub_1C2106434(v34, v35);
    sub_1C20B23C8(v36, v5);
    sub_1C20D3174(v31, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(&v38);
    return v46;
  }

  return result;
}

uint64_t sub_1C2132158()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v33 = v1;
  v34 = v2;
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    LODWORD(v8) = 0;
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_15;
    }

    v8 = v8;
LABEL_10:
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v8 >> 16))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(v4);
LABEL_12:
  v28 = bswap32(v8) >> 16;
  sub_1C20D865C(v1, v2);
  v12 = sub_1C213F048(&v28, &v29);
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  v16 = v15 & 0xFFFFFFFFFFFFFFLL;
  v31 = MEMORY[0x1E6969080];
  v32 = MEMORY[0x1E6969078];
  v29 = v12;
  v30 = v15 & 0xFFFFFFFFFFFFFFLL;
  v17 = __swift_project_boxed_opaque_existential_1(&v29, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  sub_1C20D865C(v12, v16);
  sub_1C2106434(v18, v19);
  sub_1C20D3174(v12, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  v31 = v13;
  v32 = v14;
  v29 = v3;
  v30 = v4;
  v20 = __swift_project_boxed_opaque_existential_1(&v29, v13);
  v21 = *v20;
  v22 = v20[1];
  sub_1C20D865C(v3, v4);
  sub_1C2106434(v21, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  v31 = v13;
  v32 = v14;
  v29 = v5;
  v30 = v6;
  v23 = __swift_project_boxed_opaque_existential_1(&v29, v13);
  v24 = *v23;
  v25 = v23[1];
  sub_1C20D865C(v5, v6);
  sub_1C2106434(v24, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(&v29);
  result = v33;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ASCTAPAuthData.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 37)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    if (!v6)
    {
      if (BYTE6(a2) >= 0x25uLL)
      {
LABEL_11:
        sub_1C2132614(v30, &v31, 32, result, a2);
        v33 = *(&v30[0] + 1);
        v29 = *&v30[0];
        v32 = v31;
        v14 = sub_1C2132778();
        v16 = *(&v32 + 1);
        v15 = v32;
        sub_1C2132614(v30, &v31, 4, v32, *(&v32 + 1));
        sub_1C20D3174(v15, v16);
        v17 = v30[0];
        v19 = *(&v31 + 1);
        v18 = v31;
        v32 = v31;
        sub_1C20D865C(*&v30[0], *(&v30[0] + 1));
        v20 = sub_1C212E05C(v17, *(&v17 + 1));
        if ((v14 & 0x40) == 0)
        {
          sub_1C20D3174(v17, *(&v17 + 1));
          sub_1C20D3174(v5, a2);
          result = sub_1C20D3174(v18, v19);
          v21 = &unk_1C2176000;
          v22 = xmmword_1C21769B0;
          v23 = 0uLL;
          v24 = 0uLL;
LABEL_13:
          v25 = v33;
          *a3 = v29;
          *(a3 + 8) = v25;
          *(a3 + 16) = v14;
          *(a3 + 20) = v20;
          *(a3 + 24) = v22;
          *(a3 + 40) = v23;
          *(a3 + 56) = v24;
          *(a3 + 72) = v21[155];
          return result;
        }

        v26 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          if (v26 != 2 || *(v18 + 16) == *(v18 + 24))
          {
            goto LABEL_23;
          }
        }

        else if (v26)
        {
          if (v18 == v18 >> 32)
          {
LABEL_23:
            sub_1C213F760();
            swift_allocError();
            *v27 = 1;
            swift_willThrow();
            sub_1C20D3174(v17, *(&v17 + 1));
            sub_1C20D3174(v5, a2);
            sub_1C20D3174(v32, *(&v32 + 1));
LABEL_24:
            v12 = v29;
            v13 = v33;
            return sub_1C20D3174(v12, v13);
          }
        }

        else if ((v19 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

        sub_1C20D865C(v18, v19);
        sub_1C21328C0(v18, v19, v30);
        sub_1C20D3174(v17, *(&v17 + 1));
        sub_1C20D3174(v5, a2);
        result = sub_1C20D3174(v18, v19);
        if (!v3)
        {
          v22 = v30[0];
          v23 = v30[1];
          v24 = v30[2];
          v21 = &unk_1C2176000;
          goto LABEL_13;
        }

        goto LABEL_24;
      }

LABEL_8:
      sub_1C213F760();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
      v12 = v5;
      v13 = a2;
      return sub_1C20D3174(v12, v13);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 37)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2132614(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = BYTE6(a5);
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = sub_1C20FAA6C(*(a4 + 16), a3, a4, a5);
      result = *(a4 + 16);
      if (v10 < result)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v10 = sub_1C20FAA6C(a4, a3, a4, a5);
    result = a4;
    if (v10 < a4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v10 = sub_1C20FAA6C(0, a3, a4, a5);
  if (v9 > 1)
  {
    result = 0;
    if (v10 < 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (v9)
    {
      result = a4;
    }

    else
    {
      result = 0;
    }

    if (v10 < result)
    {
      goto LABEL_25;
    }
  }

LABEL_15:
  result = sub_1C2170124();
  *a1 = result;
  a1[1] = v12;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v13 = *(a4 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v9)
  {
    v13 = a4 >> 32;
  }

  else
  {
    v13 = v5;
  }

  if (v13 >= v10)
  {
    result = sub_1C2170124();
    *a2 = result;
    a2[1] = v14;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C2132778()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_1C21289D8(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_1C20D865C(*v0, *(v0 + 8));
      result = sub_1C20D3174(v7, v8);
      if (v12 >= v11)
      {
        v13 = sub_1C2170124();
        v15 = v14;
        sub_1C20D3174(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C21328C0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(result + 16);
      v6 = *(result + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (v8)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= 19)
      {
        goto LABEL_8;
      }
    }

LABEL_13:
    sub_1C2143014();
    swift_allocError();
    swift_willThrow();
    return sub_1C20D3174(v4, a2);
  }

  if (!v5)
  {
    if (BYTE6(a2) < 0x13uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(result) - result < 19)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = a3;
  sub_1C2132614(&v25, &v24, 16, result, a2);
  v10 = v25;
  v12 = *(&v24 + 1);
  v11 = v24;
  sub_1C2132614(&v25, &v24, 2, v24, *(&v24 + 1));
  sub_1C20D3174(v11, v12);
  v13 = v25;
  v15 = *(&v24 + 1);
  v14 = v24;
  sub_1C20D865C(v25, *(&v25 + 1));
  result = sub_1C212E05C(v13, *(&v13 + 1));
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      if (!result)
      {
        v20 = 0;
LABEL_25:
        sub_1C2132614(&v25, &v24, v20, v14, v15);
        sub_1C20D3174(v4, a2);
        sub_1C20D3174(v13, *(&v13 + 1));
        result = sub_1C20D3174(v14, v15);
        v21 = v24;
        v22 = v25;
        v23 = v26;
        *v26 = v10;
        v23[1] = v22;
        v23[2] = v21;
        return result;
      }

LABEL_23:
      sub_1C2143014();
      swift_allocError();
      swift_willThrow();
      sub_1C20D3174(v13, *(&v13 + 1));
      sub_1C20D3174(v4, a2);
      sub_1C20D3174(v14, v15);
      return sub_1C20D3174(v10, *(&v10 + 1));
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v8 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v8)
    {
LABEL_20:
      v20 = result;
      if (v17 >= result)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v15);
    goto LABEL_20;
  }

  LODWORD(v17) = HIDWORD(v14) - v14;
  if (!__OFSUB__(HIDWORD(v14), v14))
  {
    v17 = v17;
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t ASCTAPCredentialData.init(aaguid:credentialID:credentialPublicKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static ASCTAPCredentialData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_1C21068CC(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_1C21068CC(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1C21068CC(v4, v5, v8, v9);
}

uint64_t sub_1C2132BD0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_1C21068CC(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_1C21068CC(v2, v3, v6, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1C21068CC(v4, v5, v8, v9);
}

uint64_t sub_1C2132C80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247E8, &unk_1C217E0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141C24();
  sub_1C2171484();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_1C2171274();
  if (!v2)
  {
    v16 = *(v3 + 1);
    v17 = v16;
    v15[23] = 1;
    sub_1C2127360(&v17, v15);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v16, *(&v16 + 1));
    *&v16 = v3[4];
    v15[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20FD358(&qword_1EBF239E0);
    sub_1C2171264();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C2132E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  if (v2 != 1)
  {
    v4 = 0x726F70736E617274;
    v3 = 0xEA00000000007374;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 25705;
  if (*a2 != 1)
  {
    v8 = 0x726F70736E617274;
    v7 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C2132F78()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C213300C()
{
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C213308C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C213311C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C2142734();
  *a2 = result;
  return result;
}

void sub_1C213314C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE200000000000000;
  v5 = 25705;
  if (v2 != 1)
  {
    v5 = 0x726F70736E617274;
    v4 = 0xEA00000000007374;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C213319C()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x726F70736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C21331E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2142734();
  *a1 = result;
  return result;
}

uint64_t sub_1C2133210(uint64_t a1)
{
  v2 = sub_1C2141C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213324C(uint64_t a1)
{
  v2 = sub_1C2141C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C2133288@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C2142780(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C21332E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1C213EDDC(v5, v7) & 1;
}

uint64_t sub_1C2133334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6713968;
  }

  else
  {
    v4 = 0x6F6C42656772616CLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000062;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6713968;
  }

  else
  {
    v6 = 0x6F6C42656772616CLL;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE900000000000062;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C2171324();
  }

  return v9 & 1;
}

uint64_t sub_1C21333D8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2133458()
{
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C21334C4()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213354C(uint64_t *a1@<X8>)
{
  v2 = 6713968;
  if (!*v1)
  {
    v2 = 0x6F6C42656772616CLL;
  }

  v3 = 0xE900000000000062;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2133594(uint64_t a1)
{
  v2 = sub_1C213F7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21335D0(uint64_t a1)
{
  v2 = sub_1C213F7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C213360C(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = *(v1 + 32);
    if (v2 >> 60 == 15)
    {
      v3 = 0;
      v4 = 0xB000000000000000;
    }

    else
    {
      v5 = a1;
      v6 = *(v1 + 24);
      sub_1C20D865C(v6, *(v1 + 32));
      v3 = sub_1C2170054();
      v4 = v7;
      sub_1C20B23C8(v6, v2);
      a1 = v5;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1C2133798@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[4];
  if (v5 >> 60 != 15)
  {
    v8 = v2[2];
    v9 = v2[3];
    v7 = *v2;
    sub_1C20D865C(v7, v5);
    sub_1C20B22B8(v8, v9);
    sub_1C20B23C8(0, 0xF000000000000000);
    v10 = a1 & 1;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    result = 0;
LABEL_18:
    *a2 = v7;
    a2[1] = v5;
    a2[2] = v8;
    a2[3] = v9;
    a2[4] = v10;
    a2[5] = result;
    return result;
  }

  v7 = 0;
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v33 = v10;
  v34 = v8;
  v35 = v9;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24848, &qword_1C217E138);
  result = sub_1C21710E4();
  v12 = 0;
  v13 = v6 + 64;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v6 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = a1 & 1;
  v37 = result + 64;
  v39 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v6 + 56);
      v23 = v6;
      v24 = (*(v6 + 48) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = (v22 + 32 * v21);
      v41 = v27[1];
      v42 = *v27;
      sub_1C20D865C(v26, v25);
      sub_1C20D865C(v42, *(&v42 + 1));
      sub_1C20B22B8(v41, *(&v41 + 1));
      sub_1C20B23C8(0, 0xF000000000000000);
      *(v37 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = v39;
      v28 = (v39[6] + 16 * v21);
      *v28 = v26;
      v28[1] = v25;
      v29 = v39[7] + 40 * v21;
      *v29 = v42;
      *(v29 + 16) = v41;
      *(v29 + 32) = v38;
      v30 = v39[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v39[2] = v32;
      v6 = v23;
      v16 = v40;
      if (!v40)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        a2 = v36;
        v8 = v34;
        v9 = v35;
        v10 = v33;
        goto LABEL_18;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C21339F8@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[4];
  if (v5 >> 60 != 15)
  {
    v8 = v2[2];
    v9 = v2[3];
    v7 = *v2;
    sub_1C20D865C(v7, v5);
    sub_1C20B22B8(v8, v9);
    sub_1C20B23C8(0, 0xF000000000000000);
    v10 = a1 & 1;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:
    result = 0;
LABEL_18:
    *a2 = 1;
    a2[1] = v7;
    a2[2] = v5;
    a2[3] = v8;
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = result;
    return result;
  }

  v7 = 0;
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 2;
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v33 = v10;
  v34 = v8;
  v35 = v9;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24848, &qword_1C217E138);
  result = sub_1C21710E4();
  v12 = 0;
  v13 = v6 + 64;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v6 + 64);
  v17 = (v14 + 63) >> 6;
  v38 = a1 & 1;
  v37 = result + 64;
  v39 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_12:
      v21 = v18 | (v12 << 6);
      v22 = *(v6 + 56);
      v23 = v6;
      v24 = (*(v6 + 48) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = (v22 + 32 * v21);
      v41 = v27[1];
      v42 = *v27;
      sub_1C20D865C(v26, v25);
      sub_1C20D865C(v42, *(&v42 + 1));
      sub_1C20B22B8(v41, *(&v41 + 1));
      sub_1C20B23C8(0, 0xF000000000000000);
      *(v37 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = v39;
      v28 = (v39[6] + 16 * v21);
      *v28 = v26;
      v28[1] = v25;
      v29 = v39[7] + 40 * v21;
      *v29 = v42;
      *(v29 + 16) = v41;
      *(v29 + 32) = v38;
      v30 = v39[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v39[2] = v32;
      v6 = v23;
      v16 = v40;
      if (!v40)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        a2 = v36;
        v8 = v34;
        v9 = v35;
        v10 = v33;
        goto LABEL_18;
      }

      v20 = *(v13 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ASCTAPExtensionInput.encode(to:)(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24538, &qword_1C217B8D8);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v19 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 64);
  v23 = *(v1 + 56);
  v24 = v8;
  v13 = *(v1 + 80);
  v21 = *(v1 + 72);
  v22 = v12;
  v19 = *(v1 + 88);
  v20 = v13;
  v14 = a1[3];
  v26 = a1[4];
  v37 = *(v1 + 48);
  v25 = __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = v24;
  sub_1C20D87AC(v6, v7, v9, v24, v11);
  sub_1C213F7B4();
  sub_1C2171484();
  v30 = v6;
  v31 = v7;
  v32 = v9;
  v33 = v15;
  v34 = v11;
  v35 = v10;
  v36 = v37;
  v16 = v27;
  v38 = 0;
  sub_1C213F808();
  v17 = v28;
  sub_1C2171264();
  sub_1C20D8840(v30, v31, v32, v33, v34);
  if (!v17)
  {
    v30 = v23;
    v31 = v22;
    v32 = v21;
    v33 = v20;
    v34 = v19;
    v38 = 1;
    sub_1C20D87FC(v23, v22, v21, v20, v19);
    sub_1C213F85C();
    sub_1C2171264();
    sub_1C20D8890(v30, v31, v32, v33, v34);
  }

  return (*(v29 + 8))(v5, v16);
}

void ASCTAPExtensionInput.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24558, &qword_1C217B8E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213F7B4();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    sub_1C213F8B0();
    sub_1C21711A4();
    v12 = v34;
    v11 = v35;
    v27 = v36;
    v28 = v37;
    v47 = v38;
    v48 = 1;
    sub_1C213F904();
    sub_1C21711A4();
    (*(v6 + 8))(v9, v5);
    v25 = v44;
    v23 = *(&v45 + 1);
    v24 = v45;
    v21 = *(&v46 + 1);
    v22 = v46;
    v26 = v12;
    *&v29[0] = v12;
    v13 = v11;
    *(&v29[0] + 1) = v11;
    v14 = v27;
    v29[1] = v27;
    v15 = *(&v27 + 1);
    v16 = v28;
    v30 = v28;
    v17 = *(&v28 + 1);
    LOBYTE(v12) = v47;
    LOBYTE(v31) = v47;
    *(&v31 + 1) = v44;
    v32 = v45;
    v33 = v46;
    v18 = v27;
    *a2 = v29[0];
    a2[1] = v18;
    v19 = v33;
    a2[4] = v32;
    a2[5] = v19;
    v20 = v31;
    a2[2] = v30;
    a2[3] = v20;
    sub_1C20EAE1C(v29, &v34);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v34 = v26;
    v35 = v13;
    *&v36 = v14;
    *(&v36 + 1) = v15;
    *&v37 = v16;
    *(&v37 + 1) = v17;
    v38 = v12;
    v39 = v25;
    v40 = v24;
    v41 = v23;
    v42 = v22;
    v43 = v21;
    sub_1C20D8758(&v34);
  }
}

uint64_t sub_1C213427C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C213433C()
{
  *v0;
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C21343E8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C21344A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C2142A6C();
  *a2 = result;
  return result;
}

void sub_1C21344D4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74726F70707573;
  v4 = 0xE500000000000000;
  v5 = 0x6574697277;
  if (*v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
    v4 = 0xEC000000657A6953;
  }

  if (*v1)
  {
    v3 = 1684104562;
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

uint64_t sub_1C2134550()
{
  v1 = 0x74726F70707573;
  v2 = 0x6574697277;
  if (*v0 != 2)
  {
    v2 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v1 = 1684104562;
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

uint64_t sub_1C21345C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2142A6C();
  *a1 = result;
  return result;
}

uint64_t sub_1C21345F0(uint64_t a1)
{
  v2 = sub_1C213F958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213462C(uint64_t a1)
{
  v2 = sub_1C213F958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPLargeBlobExtensionInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24570, &qword_1C217B8E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - v7;
  v10 = a1[3];
  v9 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1C213F958();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v12 = v5;
  v13 = v48;
  LOBYTE(v50) = 0;
  v47 = sub_1C2171164();
  v15 = v14;
  LOBYTE(v50) = 1;
  v52 = sub_1C2171174();
  v53 = 2;
  sub_1C20D8E24();
  sub_1C21711A4();
  v17 = v8;
  v19 = v50;
  v18 = v51;
  LOBYTE(v50) = 3;
  v20 = sub_1C2171194();
  v45 = v19;
  v46 = v17;
  if ((v21 & 1) == 0)
  {
    if (v18 >> 60 == 15)
    {

      v24 = sub_1C2170F74();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24580, &qword_1C217B8F0) + 48);
      *(v26 + 24) = &type metadata for ASCTAPLargeBlobExtensionInput.CodingKeys;
      *(v26 + 32) = v11;
      *v26 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C21768E0;
      *(v28 + 56) = &type metadata for ASCTAPLargeBlobExtensionInput.CodingKeys;
      *(v28 + 64) = v11;
      *(v28 + 32) = 2;
      sub_1C2170F64();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF0], v24);
      swift_willThrow();
      (*(v12 + 8))(v46, v4);
      return __swift_destroy_boxed_opaque_existential_0Tm(v49);
    }

    v32 = v20;
    (*(v12 + 8))(v46, v4);
    v22 = v32;
    v23 = 0;
    goto LABEL_11;
  }

  if (v18 >> 60 == 15)
  {
    (*(v12 + 8))(v46, v4);
    v22 = 0;
    v23 = 1;
LABEL_11:
    v33 = v47;
    v34 = v52;
    v35 = v45;
LABEL_12:
    *v13 = v33;
    *(v13 + 8) = v15;
    *(v13 + 16) = v34;
    *(v13 + 24) = v35;
    *(v13 + 32) = v18;
    *(v13 + 40) = v22;
    *(v13 + 48) = v23;
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v29 = v45;
  sub_1C20D865C(v45, v18);
  v30 = sub_1C2170044();
  v36 = v29;
  v35 = v30;
  v37 = v31;
  sub_1C20B23C8(v36, v18);
  (*(v12 + 8))(v46, v4);
  v38 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v38 != 2)
    {
      sub_1C20B23C8(v45, v18);
      v22 = 0;
      v23 = 0;
      goto LABEL_25;
    }

    v40 = *(v45 + 16);
    v39 = *(v45 + 24);
    result = sub_1C20B23C8(v45, v18);
    v22 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v38)
  {
    sub_1C20B23C8(v45, v18);
    v23 = 0;
    v22 = BYTE6(v18);
LABEL_25:
    v18 = v37;
    v33 = v47;
    v34 = v52;
    goto LABEL_12;
  }

  v41 = v18;
  v42 = v45;
  v43 = HIDWORD(v45);
  result = sub_1C20B23C8(v45, v41);
  LODWORD(v22) = v43 - v42;
  if (__OFSUB__(v43, v42))
  {
    goto LABEL_27;
  }

  v22 = v22;
LABEL_22:
  v33 = v47;
  v34 = v52;
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v18 = v37;
    goto LABEL_12;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t ASCTAPLargeBlobExtensionInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24590, &unk_1C217B900);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = *v1;
  v9 = v1[1];
  v45 = *(v1 + 16);
  v10 = v1[4];
  *&v39 = v1[3];
  *(&v39 + 1) = v10;
  v38 = v1[5];
  v37 = *(v1 + 48);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1C2171474();
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v13 = sub_1C2171054();
  v14 = __swift_project_value_buffer(v13, qword_1EBF25218);
  v15 = v14;
  if (*(v12 + 16) && (v16 = sub_1C2122198(v14), (v17 & 1) != 0))
  {
    sub_1C20DA01C(*(v12 + 56) + 32 * v16, &v43);

    if (swift_dynamicCast())
    {
      v18 = v46;
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1C213F958();
      sub_1C2171484();
      LOBYTE(v43) = 0;
      v20 = v40;
      v21 = v41;
      sub_1C2171224();
      if (v20)
      {
        return (*(v42 + 8))(v7, v21);
      }

      LOBYTE(v43) = 1;
      sub_1C2171234();
      v22 = *(&v39 + 1);
      if (*(&v39 + 1) >> 60 == 15)
      {
        return (*(v42 + 8))(v7, v21);
      }

      if (v18)
      {
        v31 = v39;
        sub_1C20D865C(v39, *(&v39 + 1));
        *&v43 = sub_1C2170054();
        *(&v43 + 1) = v33;
        v46 = 2;
        v34 = v43;
        v35 = v33;
        sub_1C20D8CEC();
        sub_1C2171294();
        (*(v42 + 8))(v7, v21);
        sub_1C20B23C8(v31, v22);
        return sub_1C20D3174(v34, v35);
      }

      else
      {
        v32 = v39;
        v43 = v39;
        v46 = 2;
        sub_1C20D865C(v39, *(&v39 + 1));
        sub_1C20D8CEC();
        sub_1C2171294();
        *&v43 = v38;
        BYTE8(v43) = v37;
        v46 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245A0, &qword_1C217B918);
        sub_1C213F9AC();
        sub_1C2171294();
        (*(v42 + 8))(v7, v21);
        return sub_1C20B23C8(v32, v22);
      }
    }
  }

  else
  {
  }

  v24 = sub_1C2170F94();
  swift_allocError();
  v26 = v25;
  v27 = sub_1C2171474();
  if (*(v27 + 16) && (v28 = sub_1C2122198(v15), (v29 & 1) != 0))
  {
    sub_1C20DA01C(*(v27 + 56) + 32 * v28, &v43);

    sub_1C20F5A58(&v43, v26);
  }

  else
  {

    v43 = 0u;
    v44 = 0u;
    *(v26 + 24) = MEMORY[0x1E69E6158];
    *v26 = 7104878;
    *(v26 + 8) = 0xE300000000000000;
    if (*(&v44 + 1))
    {
      sub_1C20EB498(&v43, &qword_1EBF243A0, &qword_1C217A290);
    }
  }

  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24598, &qword_1C217B910) + 48);
  sub_1C2170F64();
  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6B30], v24);
  return swift_willThrow();
}

uint64_t sub_1C2135114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 1818326629;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x80000001C21844B0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 1818326629;
  }

  if (*a2)
  {
    v7 = 0x80000001C21844B0;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C2171324();
  }

  return v9 & 1;
}

uint64_t sub_1C21351B8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2135238()
{
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C21352A4()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213532C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C21844B0;
  v3 = 1818326629;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1C2135368()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1818326629;
  }

  *v0;
  return result;
}

uint64_t sub_1C21353AC(uint64_t a1)
{
  v2 = sub_1C213FA28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21353E8(uint64_t a1)
{
  v2 = sub_1C213FA28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2135424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646E6F636573;
  }

  else
  {
    v4 = 0x7473726966;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x646E6F636573;
  }

  else
  {
    v6 = 0x7473726966;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C2171324();
  }

  return v9 & 1;
}

uint64_t sub_1C21354C4()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2135540()
{
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C21355A8()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C213562C(uint64_t *a1@<X8>)
{
  v2 = 0x7473726966;
  if (*v1)
  {
    v2 = 0x646E6F636573;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2135670@<X0>(char *a1@<X8>)
{
  v2 = sub_1C2171134();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C21356D0(uint64_t a1)
{
  v2 = sub_1C2142CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213570C(uint64_t a1)
{
  v2 = sub_1C2142CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2135748(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24828, &qword_1C217E118);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2142CE4();
  sub_1C2171484();
  v18 = a2;
  v19 = a3;
  v20 = 0;
  sub_1C20D865C(a2, a3);
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v18, v19);
  if (!v5)
  {
    v18 = v16;
    v19 = v17;
    v20 = 1;
    sub_1C20B22B8(v16, v17);
    sub_1C2171264();
    sub_1C20B23C8(v18, v19);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C2135908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C2142AB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t ASCTAPPRFExtensionInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245B0, &qword_1C217B920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v94 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245B8, &qword_1C217B928);
  v117 = *(v8 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v94 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1C213FA28();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v7;
  v114 = v13;
  v115 = a1;
  LOBYTE(v120) = 0;
  v16 = sub_1C213FA7C();
  sub_1C21711A4();
  v113 = v118;
  v17 = v119;
  v18 = v11;
  v19 = sub_1C2170344();
  LOBYTE(v118) = 1;
  sub_1C213FAD0(&qword_1EBF245D0, MEMORY[0x1E698F6E0]);
  v20 = v7;
  sub_1C21711A4();
  v100 = v18;
  v101 = v8;
  v109 = v17;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v20, 1, v19) == 1)
  {
    (*(v117 + 8))(v100, v101);
    sub_1C20EB498(v15, &qword_1EBF245B0, &qword_1C217B920);
    v22 = 0;
    v23 = v109;
    v24 = v115;
    v25 = v116;
    v26 = *(&v17 + 1);
LABEL_39:
    v85 = v113;
    *v25 = v113;
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    *(v25 + 32) = v22;
    sub_1C20B22CC(v85, *(&v85 + 1), v23, v26);

    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    sub_1C20B23DC(v85, *(&v85 + 1), v23, v26);
  }

  v107 = *(&v17 + 1);
  v27 = sub_1C2170334();
  (*(v21 + 8))(v20, v19);
  v28 = [v27 dictionary];

  if (!v28)
  {
    (*(v117 + 8))(v100, v101);
    v22 = 0;
    v26 = v107;
    v23 = v109;
    v24 = v115;
    v25 = v116;
    goto LABEL_39;
  }

  v96 = v16;
  v29 = sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
  sub_1C213FB18();
  v94[2] = v29;
  v30 = sub_1C2170864();

  v112 = sub_1C213FB80(MEMORY[0x1E69E7CC0]);
  v26 = v107;
  v23 = v109;
  v25 = v116;
  v31 = v117;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = sub_1C2171074();
    v33 = 0;
    v34 = 0;
    v111 = 0;
    v102 = v32 | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v30 + 32);
    v34 = ~v35;
    v33 = v30 + 64;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v111 = v37 & *(v30 + 64);
    v102 = v30;
  }

  v94[1] = v30;

  v38 = 0;
  v39 = (v34 + 64) >> 6;
  v97 = v34;
  v99 = v33;
  v40 = v102;
  v95 = v39;
  v41 = v111;
  while ((v40 & 0x8000000000000000) != 0)
  {
    v56 = sub_1C21710A4();
    if (!v56)
    {
      goto LABEL_38;
    }

    v58 = v57;
    v120 = v56;
    swift_dynamicCast();
    v120 = v58;
    v55 = v118;
    swift_dynamicCast();
    v110 = v118;
    v52 = v38;
    v106 = v41;
LABEL_24:
    if (!v55)
    {
      v23 = v109;
      v31 = v117;
LABEL_38:
      (*(v31 + 8))(v100, v101);

      sub_1C213FCB4();
      v24 = v115;
      v22 = v112;
      goto LABEL_39;
    }

    v59 = [v55 data];
    if (!v59)
    {

      v86 = sub_1C2170F74();
      swift_allocError();
      v87 = v55;
      v89 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24588, &qword_1C217B8F8);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1C21768E0;
      v91 = v114;
      *(v90 + 56) = &type metadata for ASCTAPPRFExtensionInput.CodingKeys;
      *(v90 + 64) = v91;
      *(v90 + 32) = 1;
      sub_1C2170F64();
      (*(*(v86 - 8) + 104))(v89, *MEMORY[0x1E69E6B00], v86);
      swift_willThrow();
      sub_1C213FCB4();

      (*(v117 + 8))(v100, v101);
      v92 = v109;
      v93 = v113;

      __swift_destroy_boxed_opaque_existential_0Tm(v115);
      return sub_1C20B23DC(v93, *(&v93 + 1), v92, v26);
    }

    v60 = v59;
    v111 = sub_1C2170174();
    v62 = v61;

    v63 = sub_1C21702A4();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    sub_1C2170294();
    sub_1C2170284();
    v105 = v55;

    v66 = v112;
    if (!v112)
    {
      goto LABEL_44;
    }

    v108 = v119;
    v98 = v118;
    v104 = *(&v118 + 1);
    v67 = v118;
    sub_1C20D865C(v118, *(&v118 + 1));
    v103 = *(&v108 + 1);
    v68 = v108;
    sub_1C20B22B8(v108, *(&v108 + 1));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v118 = v66;
    v70 = v62;
    v72 = sub_1C21220D8(v111, v62);
    v73 = v66[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_42;
    }

    v76 = v71;
    if (v66[3] >= v75)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C213CEF8();
      }
    }

    else
    {
      sub_1C213B8EC(v75, isUniquelyReferenced_nonNull_native);
      v77 = sub_1C21220D8(v111, v70);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_45;
      }

      v72 = v77;
    }

    v26 = v107;
    v112 = v118;
    if (v76)
    {
      v42 = (*(v118 + 56) + 32 * v72);
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      v46 = v42[3];
      v47 = v104;
      *v42 = v67;
      v42[1] = v47;
      v48 = v103;
      v42[2] = v68;
      v42[3] = v48;
      sub_1C20D3174(v43, v44);
      sub_1C20B23C8(v45, v46);

      sub_1C20D3174(v111, v70);
      sub_1C20D3174(v67, v47);
      v49 = v48;
      v26 = v107;
      sub_1C20B23C8(v68, v49);
    }

    else
    {
      *(v118 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v79 = (v112[6] + 16 * v72);
      *v79 = v111;
      v79[1] = v70;
      v80 = (v112[7] + 32 * v72);
      v81 = v108;
      *v80 = v98;
      v80[1] = v81;

      sub_1C20D3174(v67, v104);
      sub_1C20B23C8(v68, v103);
      v82 = v112[2];
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_43;
      }

      v112[2] = v84;
    }

    v38 = v52;
    v41 = v106;
    v23 = v109;
    v25 = v116;
    v31 = v117;
    v33 = v99;
    v40 = v102;
    v39 = v95;
  }

  v50 = v38;
  v51 = v41;
  v52 = v38;
  if (v41)
  {
LABEL_21:
    v106 = (v51 - 1) & v51;
    v53 = (v52 << 9) | (8 * __clz(__rbit64(v51)));
    v54 = *(*(v40 + 56) + v53);
    v55 = *(*(v40 + 48) + v53);
    v110 = v54;
    goto LABEL_24;
  }

  while (1)
  {
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v52 >= v39)
    {
      v23 = v109;
      v31 = v117;
      goto LABEL_38;
    }

    v51 = *(v33 + 8 * v52);
    ++v50;
    if (v51)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1C2171374();
  __break(1u);
  return result;
}

uint64_t ASCTAPPRFExtensionInput.encode(to:)(void *a1)
{
  v79 = sub_1C2170344();
  v84 = *(v79 - 8);
  v3 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245E0, &qword_1C217B930);
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v86 = v1[4];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_1C20B22CC(v9, v10, v11, v12);
  sub_1C213FA28();
  sub_1C2171484();
  *&v90 = v9;
  *(&v90 + 1) = v10;
  *&v91 = v11;
  *(&v91 + 1) = v12;
  v18 = v8;
  v92 = 0;
  v19 = sub_1C213FCBC();
  v20 = v89;
  sub_1C2171264();
  v21 = v20;
  sub_1C20B23DC(v90, *(&v90 + 1), v91, *(&v91 + 1));
  if (v20)
  {
    return (*(v85 + 8))(v18, v17);
  }

  v23 = v86;
  if (!v86)
  {
    return (*(v85 + 8))(v18, v17);
  }

  v73 = v18;
  v74 = v17;

  v24 = sub_1C213F208(MEMORY[0x1E69E7CC0]);
  v25 = 0;
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v76 = v23 + 64;
  v75 = v30;
  v77 = v19;
  while (1)
  {
    v33 = v84;
    if (!v29)
    {
      break;
    }

    v34 = v25;
LABEL_15:
    v36 = __clz(__rbit64(v29)) | (v34 << 6);
    v37 = (*(v23 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = (*(v23 + 56) + 32 * v36);
    v41 = *v40;
    v87 = v40[1];
    v88 = v41;
    sub_1C20D865C(v39, v38);
    sub_1C20D865C(v39, v38);
    v82 = v88;
    sub_1C20D865C(v88, *(&v88 + 1));
    v81 = *(&v87 + 1);
    v83 = v87;
    sub_1C20B22B8(v87, *(&v87 + 1));
    v42 = sub_1C2170154();
    v89 = [objc_opt_self() cborWithData_];

    sub_1C20D3174(v39, v38);
    v43 = sub_1C2170314();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_1C2170304();
    v91 = v87;
    v90 = v88;
    v46 = sub_1C21702B4();
    if (v21)
    {
      (*(v85 + 8))(v73, v74);

      sub_1C20D3174(v39, v38);

      sub_1C20D3174(v82, *(&v82 + 1));
      return sub_1C20B23C8(v83, v81);
    }

    v47 = v46;

    *&v88 = 0;
    v80 = v38;
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 < 0)
      {
        v48 = v24;
      }

      else
      {
        v48 = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v49 = v47;
      v50 = sub_1C2170E84();
      if (__OFADD__(v50, 1))
      {
        goto LABEL_36;
      }

      v24 = sub_1C213C3FC(v48, v50 + 1);
    }

    else
    {
      v51 = v47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v24;
    v54 = sub_1C21221FC(v89);
    v55 = *(v24 + 16);
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_35;
    }

    v58 = v53;
    if (*(v24 + 24) >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C213CC28();
      }
    }

    else
    {
      sub_1C213B3DC(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1C21221FC(v89);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_38;
      }

      v54 = v59;
    }

    v61 = v80;
    v62 = v81;
    v29 &= v29 - 1;
    v24 = v90;
    if (v58)
    {
      v31 = *(v90 + 56);
      v32 = *(v31 + 8 * v54);
      *(v31 + 8 * v54) = v47;

      sub_1C20D3174(v82, *(&v82 + 1));
      sub_1C20B23C8(v83, v62);

      sub_1C20D3174(v39, v61);
    }

    else
    {
      *(v90 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      *(*(v24 + 48) + 8 * v54) = v89;
      *(*(v24 + 56) + 8 * v54) = v47;
      sub_1C20D3174(v82, *(&v82 + 1));
      sub_1C20B23C8(v83, v62);

      sub_1C20D3174(v39, v61);
      v63 = *(v24 + 16);
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v65;
    }

    v25 = v34;
    v21 = v88;
    v23 = v86;
    v26 = v76;
    v30 = v75;
  }

  v35 = v85;
  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v34 >= v30)
    {

      sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
      sub_1C213FB18();
      v66 = sub_1C2170854();

      v67 = [objc_opt_self() cborWithDictionary_];

      v68 = v78;
      sub_1C2170324();
      LOBYTE(v90) = 1;
      sub_1C213FAD0(&qword_1EBF245F0, MEMORY[0x1E698F6E0]);
      v69 = v74;
      v70 = v79;
      v71 = v73;
      sub_1C2171294();
      (*(v33 + 8))(v68, v70);
      return (*(v35 + 8))(v71, v69);
    }

    v29 = *(v26 + 8 * v34);
    ++v25;
    if (v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
  result = sub_1C2171374();
  __break(1u);
  return result;
}

uint64_t ASCTAPPRFExtensionOutput.results.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C20B22CC(v2, v3, v4, v5);
}

uint64_t ASCTAPPRFExtensionOutput.Results.first.getter()
{
  v1 = *v0;
  sub_1C20D865C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASCTAPPRFExtensionOutput.Results.second.getter()
{
  v1 = *(v0 + 16);
  sub_1C20B22B8(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C2136C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C2136D50(uint64_t a1)
{
  v2 = sub_1C213FD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2136D8C(uint64_t a1)
{
  v2 = sub_1C213FD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCTAPPRFExtensionOutput.Results.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245F8, &qword_1C217B938);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v8, v9);
  sub_1C213FD10();
  sub_1C2171484();
  v17 = v8;
  v18 = v9;
  v19 = 0;
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v17, v18);
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_1C20B22B8(v15, v14);
    sub_1C2171264();
    sub_1C20B23C8(v17, v18);
  }

  return (*(v16 + 8))(v7, v4);
}

uint64_t ASCTAPPRFExtensionOutput.Results.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24608, &qword_1C217B940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C213FD10();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = 0;
  sub_1C20D8E24();
  sub_1C21711D4();
  v11 = v18;
  v17 = v19;
  v20 = 1;
  sub_1C21711A4();
  (*(v6 + 8))(v9, v5);
  v12 = v18;
  v13 = v19;
  v14 = v17;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v12;
  a2[3] = v13;
  sub_1C20D865C(v11, v14);
  sub_1C20B22B8(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  sub_1C20D3174(v11, v14);
  return sub_1C20B23C8(v12, v13);
}

uint64_t sub_1C21371F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = *v1;
  if (v10 == 2)
  {
    v11 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 1;
LABEL_5:

    return v12(v14, v15, 1, v13);
  }

  v16 = v1[2];
  if (v16 >> 60 == 15)
  {
    v17 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    v18 = *(v17 + 20);
    v19 = sub_1C2170764();
    v20 = *(*(v19 - 8) + 56);
    v20(&a1[v18], 1, 1, v19);
    v20(&a1[*(v17 + 24)], 1, 1, v19);
    *a1 = v10 & 1;
    v12 = *(*(v17 - 8) + 56);
    v14 = a1;
    v15 = 0;
    v13 = v17;
    goto LABEL_5;
  }

  v22 = v1[1];
  v24 = v1[3];
  v23 = v1[4];
  v30 = v22;
  v31 = v16;
  sub_1C20B22CC(v22, v16, v24, v23);
  sub_1C20D865C(v22, v16);
  sub_1C2170744();
  v25 = sub_1C2170764();
  v29 = *(*(v25 - 8) + 56);
  v29(v9, 0, 1, v25);
  if (v23 >> 60 == 15)
  {
    sub_1C20B23DC(v22, v16, v24, v23);
    v26 = 1;
  }

  else
  {
    v30 = v24;
    v31 = v23;
    sub_1C20B22B8(v24, v23);
    sub_1C20D865C(v24, v23);
    sub_1C2170744();
    sub_1C20B23DC(v22, v16, v24, v23);
    sub_1C20B23C8(v24, v23);
    v26 = 0;
  }

  v29(v7, v26, 1, v25);
  *a1 = v10 & 1;
  v27 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  sub_1C210B21C(v9, &a1[*(v27 + 20)]);
  sub_1C210B21C(v7, &a1[*(v27 + 24)]);
  return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
}

uint64_t sub_1C213757C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_1C2170764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[2];
  if (v12 >> 60 == 15)
  {
    v13 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }

  else
  {
    v16 = v1[1];
    v18 = v1[3];
    v17 = v1[4];
    v21 = v16;
    v22 = v12;
    sub_1C20B22CC(v16, v12, v18, v17);
    sub_1C20D865C(v16, v12);
    sub_1C2170744();
    if (v17 >> 60 == 15)
    {
      sub_1C20B23DC(v16, v12, v18, v17);
      v19 = 1;
    }

    else
    {
      v21 = v18;
      v22 = v17;
      sub_1C20B22B8(v18, v17);
      sub_1C20D865C(v18, v17);
      sub_1C2170744();
      sub_1C20B23DC(v16, v12, v18, v17);
      sub_1C20B23C8(v18, v17);
      v19 = 0;
    }

    (*(v8 + 56))(v6, v19, 1, v7);
    (*(v8 + 32))(a1, v11, v7);
    v20 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C210B21C(v6, a1 + *(v20 + 20));
    return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }
}

uint64_t sub_1C2137864()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1C2137898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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