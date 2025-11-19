uint64_t sub_2410BE634()
{
  v0 = sub_2410DF8E0();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2410BE6A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2410BE6E0()
{
  result = qword_27E526250;
  if (!qword_27E526250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526250);
  }

  return result;
}

uint64_t sub_2410BE734(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2410BE77C(uint64_t *a1, int a2)
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

uint64_t sub_2410BE7C4(uint64_t result, int a2, int a3)
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

void sub_2410BE838()
{
  type metadata accessor for ATQuestion.Topic();
  sub_24108E730(319, &qword_27E5262D8);
  if (v0 <= 0x3F)
  {
    sub_24108E730(319, &qword_27E5262E0);
    if (v1 <= 0x3F)
    {
      sub_24108E730(319, &unk_27E525AC8);
      if (v2 <= 0x3F)
      {
        sub_24108E730(319, &qword_27E525AC0);
        if (v3 <= 0x3F)
        {
          sub_2410BEA84(319, &qword_27E5262E8, type metadata accessor for ATAnswerChoice, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_2410BEA84(319, &unk_27E5262F0, type metadata accessor for ATAnswerChoice, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2410BEA84(319, &qword_27E526198, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_2410BEA84(319, &qword_27E5261A0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2410BEA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2410BEAE8()
{
  result = qword_27E526308;
  if (!qword_27E526308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526308);
  }

  return result;
}

unint64_t sub_2410BEB3C()
{
  result = qword_27E526318;
  if (!qword_27E526318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526318);
  }

  return result;
}

unint64_t sub_2410BEB90()
{
  result = qword_27E526320;
  if (!qword_27E526320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E526258, &qword_2410E45A8);
    sub_2410AD408(&unk_27E5259E0, 255, type metadata accessor for _CommunicationHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526320);
  }

  return result;
}

uint64_t _s10AllContentV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10AllContentV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410BEDAC()
{
  result = qword_27E526330;
  if (!qword_27E526330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526330);
  }

  return result;
}

unint64_t sub_2410BEE04()
{
  result = qword_27E526338;
  if (!qword_27E526338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526338);
  }

  return result;
}

unint64_t sub_2410BEE5C()
{
  result = qword_27E526340;
  if (!qword_27E526340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526340);
  }

  return result;
}

unint64_t sub_2410BEEB4()
{
  result = qword_27E526348;
  if (!qword_27E526348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526348);
  }

  return result;
}

unint64_t sub_2410BEF0C()
{
  result = qword_27E526350;
  if (!qword_27E526350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526350);
  }

  return result;
}

unint64_t sub_2410BEF64()
{
  result = qword_27E526358;
  if (!qword_27E526358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526358);
  }

  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appItemID.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appItemID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appVersionID.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.appVersionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isWebApp.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isWebApp.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isDistributor.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.isDistributor.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2410BF9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410BFA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.authenticationContextData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData;
  swift_beginAccess();
  v2 = *v1;
  sub_24108AFBC(*v1, *(v1 + 8));
  return v2;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.authenticationContextData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2410861E4(v6, v7);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.userInitiatedOverride.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.allowAccountPrompt.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.originallyRequestedVersionID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2410C0074(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t ATContentAgeRestrictionExceptionMetadata.itemIDFromButtonConfiguration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2410C02F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_2410BF9E4(v2 + v4, a2);
}

uint64_t sub_2410C0350(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_2410BFA60(a1, v2 + v4);
  return swift_endAccess();
}

id ATContentAgeRestrictionExceptionMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATContentAgeRestrictionExceptionMetadata.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appBundleID];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID] = 0;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID] = 0;
  v3 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorID];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerID];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerName];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp] = 0;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor] = 1;
  v8 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_askerName];
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_ageRatingString];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorType];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorBundleID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorDomain];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installTypeRawValue];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_accountID];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
  v16 = sub_2410DEDF0();
  v17 = *(*(v16 - 8) + 56);
  v17(&v0[v15], 1, 1, v16);
  v18 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_oAuthToken];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installVerificationToken];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_clientID];
  *v20 = 0;
  v20[1] = 0;
  *&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData] = xmmword_2410E1830;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride] = 2;
  v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt] = 1;
  v21 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration];
  *v22 = 0;
  v22[8] = 1;
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL], 1, 1, v16);
  v17(&v0[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL], 1, 1, v16);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

unint64_t sub_2410C072C(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x496D657449707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
    case 5:
    case 12:
      result = 0x7562697274736964;
      break;
    case 6:
      result = 0x65706F6C65766564;
      break;
    case 7:
      result = 0x65706F6C65766564;
      break;
    case 8:
      result = 0x7070416265577369;
      break;
    case 9:
      result = 0x6972747369447369;
      break;
    case 10:
      result = 0x6D614E72656B7361;
      break;
    case 11:
      result = 0x6E69746152656761;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x49746E756F636361;
      break;
    case 17:
      result = 7107189;
      break;
    case 18:
      result = 0x6B6F54687475416FLL;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x4449746E65696C63;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
    case 29:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 26:
      result = 0x7265727265666572;
      break;
    case 27:
      result = 0x6572616853707061;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2410C0A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410C31F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410C0AC8(uint64_t a1)
{
  v2 = sub_2410C1AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C0B04(uint64_t a1)
{
  v2 = sub_2410C1AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

id ATContentAgeRestrictionExceptionMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ATContentAgeRestrictionExceptionMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v107 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = v103 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v105 = v103 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v104 = v103 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v103 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5263E8, &qword_2410E48A8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v103 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C1AC4();
  sub_2410DFA20();
  v22 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appBundleID);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v138 = 0;

  v25 = v139;
  sub_2410DF800();
  if (v25)
  {
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v139 = v15;

    v27 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
    swift_beginAccess();
    v28 = *(v2 + v27);
    v137 = 1;
    sub_2410DF870();
    v29 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
    swift_beginAccess();
    v30 = *(v2 + v29);
    v136 = 2;
    sub_2410DF870();
    v31 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appName);
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[1];
    v135 = 3;

    sub_2410DF800();

    v34 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorID);
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];
    v134 = 4;

    sub_2410DF800();

    v37 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorName);
    swift_beginAccess();
    v38 = *v37;
    v39 = v37[1];
    v133 = 5;

    sub_2410DF800();

    v40 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerID);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v132 = 6;

    sub_2410DF800();

    v43 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerName);
    swift_beginAccess();
    v44 = *v43;
    v45 = v43[1];
    v131 = 7;

    sub_2410DF800();

    v46 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
    swift_beginAccess();
    v47 = *(v2 + v46);
    v130 = 8;
    sub_2410DF810();
    v48 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
    swift_beginAccess();
    v49 = *(v2 + v48);
    v129 = 9;
    sub_2410DF810();
    v50 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_askerName);
    swift_beginAccess();
    v51 = *v50;
    v52 = v50[1];
    v128 = 10;

    v53 = v16;
    v54 = v20;
    sub_2410DF800();

    v55 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_ageRatingString);
    swift_beginAccess();
    v56 = *v55;
    v57 = v55[1];
    v127 = 11;

    sub_2410DF800();

    v58 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorType);
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    v126 = 12;

    sub_2410DF800();

    v61 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorBundleID);
    swift_beginAccess();
    v62 = *v61;
    v63 = v61[1];
    v125 = 13;

    sub_2410DF7A0();

    v64 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorDomain);
    swift_beginAccess();
    v65 = *v64;
    v66 = v64[1];
    v124 = 14;

    sub_2410DF7A0();

    v67 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installTypeRawValue);
    swift_beginAccess();
    v68 = *v67;
    v69 = v67[1];
    v123 = 15;

    sub_2410DF800();

    v70 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_accountID);
    swift_beginAccess();
    v71 = *v70;
    v72 = v70[1];
    v122 = 16;

    sub_2410DF800();

    v73 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
    swift_beginAccess();
    sub_2410BF9E4(v2 + v73, v139);
    v121 = 17;
    sub_2410DEDF0();
    v103[1] = sub_2410C2CEC(&qword_27E526140);
    sub_2410DF7D0();
    sub_2410C1B18(v139);
    v74 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_oAuthToken);
    swift_beginAccess();
    v75 = *v74;
    v76 = v74[1];
    v120 = 18;

    sub_2410DF7A0();

    v77 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installVerificationToken);
    swift_beginAccess();
    v78 = *v77;
    v79 = v77[1];
    v119 = 19;

    sub_2410DF7A0();

    v80 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_clientID;
    swift_beginAccess();
    v81 = *v80;
    v82 = v80[1];
    v118 = 20;

    sub_2410DF7A0();

    v83 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData);
    swift_beginAccess();
    v84 = v83[1];
    v116 = *v83;
    v117 = v84;
    v115 = 21;
    sub_24108AFBC(v116, v84);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v116, v117);
    v85 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
    swift_beginAccess();
    v86 = *(v2 + v85);
    v115 = 22;
    sub_2410DF7B0();
    v87 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
    swift_beginAccess();
    v88 = *(v2 + v87);
    v114 = 23;
    sub_2410DF810();
    v89 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID);
    swift_beginAccess();
    v90 = *v89;
    v91 = *(v89 + 8);
    v113 = 24;
    sub_2410DF7F0();
    v92 = (v2 + OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration);
    swift_beginAccess();
    v93 = *v92;
    v94 = *(v92 + 8);
    v112 = 25;
    sub_2410DF7F0();
    v95 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer;
    swift_beginAccess();
    v96 = v104;
    sub_2410BF9E4(v2 + v95, v104);
    v111 = 26;
    sub_2410DF7D0();
    sub_2410C1B18(v96);
    v97 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL;
    swift_beginAccess();
    v98 = v105;
    sub_2410BF9E4(v2 + v97, v105);
    v110 = 27;
    sub_2410DF7D0();
    sub_2410C1B18(v98);
    v99 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL;
    swift_beginAccess();
    v100 = v106;
    sub_2410BF9E4(v2 + v99, v106);
    v109 = 28;
    sub_2410DF7D0();
    sub_2410C1B18(v100);
    v101 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL;
    swift_beginAccess();
    v102 = v107;
    sub_2410BF9E4(v2 + v101, v107);
    v108 = 29;
    sub_2410DF7D0();
    sub_2410C1B18(v102);
    return (*(v17 + 8))(v54, v53);
  }
}

unint64_t sub_2410C1AC4()
{
  result = qword_27E5263F0;
  if (!qword_27E5263F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5263F0);
  }

  return result;
}

uint64_t sub_2410C1B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ATContentAgeRestrictionExceptionMetadata.init(from:)(uint64_t *a1)
{
  v251 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525FF0, &qword_2410E3A00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v191 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v190 = &v182 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v189 = &v182 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v188 = &v182 - v11;
  MEMORY[0x28223BE20](v10);
  v185 = &v182 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5263F8, &qword_2410E48B0);
  v196 = *(v13 - 8);
  v197 = v13;
  v14 = *(v196 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v182 - v15;
  v17 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appBundleID];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v219 = v17;
  v195 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID;
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appItemID] = 0;
  v194 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID;
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appVersionID] = 0;
  v18 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appName];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v218 = v18;
  v19 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorID];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v217 = v19;
  v20 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorName];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v216 = v20;
  v21 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerID];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v222 = v21;
  v22 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_developerName];
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v221 = v22;
  v193 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isWebApp] = 0;
  v192 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_isDistributor] = 1;
  v23 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_askerName];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v215 = v23;
  v24 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_ageRatingString];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v214 = v24;
  v25 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorType];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v213 = v25;
  v26 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorBundleID];
  *v26 = 0;
  v26[1] = 0;
  v212 = v26;
  v27 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorDomain];
  *v27 = 0;
  v27[1] = 0;
  v210 = v27;
  v28 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installTypeRawValue];
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v209 = v28;
  v29 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_accountID];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v207 = v29;
  v30 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_url;
  v31 = sub_2410DEDF0();
  v32 = *(*(v31 - 8) + 56);
  v208 = v30;
  (v32)(&v1[v30], 1, 1, v31);
  v33 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_oAuthToken];
  *v33 = 0;
  v33[1] = 0;
  v206 = v33;
  v34 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_installVerificationToken];
  *v34 = 0;
  v34[1] = 0;
  v205 = v34;
  v35 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_clientID];
  *v35 = 0;
  v35[1] = 0;
  v204 = v35;
  v203 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData];
  *&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_authenticationContextData] = xmmword_2410E1830;
  v36 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_userInitiatedOverride] = 2;
  v186 = v36;
  v187 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt;
  v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_allowAccountPrompt] = 1;
  v37 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_originallyRequestedVersionID];
  *v37 = 0;
  v37[8] = 1;
  v38 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_itemIDFromButtonConfiguration];
  *v38 = 0;
  v38[8] = 1;
  v202 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer;
  (v32)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_referrer], 1, 1, v31);
  v200 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL;
  (v32)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_appShareURL], 1, 1, v31);
  v199 = OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL;
  (v32)(&v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_requestedAppIconURL], 1, 1, v31);
  v220 = v1;
  v201 = &v1[OBJC_IVAR____TtC9AskToCore40ATContentAgeRestrictionExceptionMetadata_distributorIconURL];
  v32();
  v39 = v251[4];
  v40 = __swift_project_boxed_opaque_existential_1(v251, v251[3]);
  sub_2410C1AC4();
  v41 = v16;
  v42 = v198;
  sub_2410DFA10();
  if (v42)
  {
    v44 = v218;
    v43 = v219;
    v46 = v216;
    v45 = v217;
    v48 = v220;
    __swift_destroy_boxed_opaque_existential_1(v251);
    v49 = v43[1];

    v50 = v44[1];

    v51 = v45[1];

    v52 = v46[1];

    v53 = v222[1];

    v54 = v221[1];

    v55 = v215[1];

    v56 = v214[1];

    v57 = v213[1];

    v58 = v212[1];

    v59 = v210[1];

    v60 = v209[1];

    v61 = v207[1];

    sub_2410C1B18(v48 + v208);
    v62 = v206[1];

    v63 = v205[1];

    v64 = v204[1];

    sub_2410861E4(*v203, *(v203 + 1));
    sub_2410C1B18(v48 + v202);
    sub_2410C1B18(v48 + v200);
    sub_2410C1B18(v48 + v199);
    sub_2410C1B18(v201);
    v65 = *((*MEMORY[0x277D85000] & *v48) + 0x30);
    v66 = *((*MEMORY[0x277D85000] & *v48) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v47 = v195;
    v183 = v37;
    v184 = v38;
    v198 = v31;
    v250 = 0;
    v68 = sub_2410DF700();
    v70 = v69;
    v71 = v219;
    swift_beginAccess();
    v72 = v71[1];
    *v71 = v68;
    v71[1] = v70;

    v249 = 1;
    v182 = v41;
    v73 = sub_2410DF770();
    v74 = v220;
    v75 = v73;
    swift_beginAccess();
    *(v74 + v47) = v75;
    v248 = 2;
    v76 = sub_2410DF770();
    v77 = v194;
    swift_beginAccess();
    *(v74 + v77) = v76;
    v247 = 3;
    v78 = sub_2410DF700();
    v80 = v217;
    v79 = v218;
    v81 = v78;
    v83 = v82;
    swift_beginAccess();
    v84 = v79[1];
    *v79 = v81;
    v79[1] = v83;

    v246 = 4;
    v85 = sub_2410DF700();
    v86 = v216;
    v87 = v85;
    v89 = v88;
    swift_beginAccess();
    v90 = v80[1];
    *v80 = v87;
    v80[1] = v89;

    v245 = 5;
    v91 = sub_2410DF700();
    v93 = v92;
    swift_beginAccess();
    v94 = v86[1];
    *v86 = v91;
    v86[1] = v93;

    v244 = 6;
    v95 = sub_2410DF700();
    v97 = v96;
    v98 = v222;
    v195 = v95;
    swift_beginAccess();
    v99 = v98[1];
    *v98 = v195;
    v98[1] = v97;

    v243 = 7;
    v100 = sub_2410DF700();
    v102 = v101;
    v103 = v221;
    v195 = v100;
    swift_beginAccess();
    v104 = v103[1];
    *v103 = v195;
    v103[1] = v102;

    v242 = 8;
    LOBYTE(v103) = sub_2410DF710();
    v105 = v193;
    swift_beginAccess();
    *(v74 + v105) = v103 & 1;
    v241 = 9;
    LOBYTE(v103) = sub_2410DF710();
    v106 = v220;
    v107 = v192;
    swift_beginAccess();
    *(v106 + v107) = v103 & 1;
    v240 = 10;
    v108 = sub_2410DF700();
    v110 = v109;
    v111 = v215;
    swift_beginAccess();
    v112 = v111[1];
    *v111 = v108;
    v111[1] = v110;

    v239 = 11;
    v113 = sub_2410DF700();
    v115 = v114;
    v116 = v214;
    swift_beginAccess();
    v117 = v116[1];
    *v116 = v113;
    v116[1] = v115;

    v238 = 12;
    v118 = sub_2410DF700();
    v120 = v119;
    v121 = v213;
    swift_beginAccess();
    v122 = v121[1];
    *v121 = v118;
    v121[1] = v120;

    v237 = 13;
    v123 = sub_2410DF690();
    v125 = v124;
    v126 = v212;
    swift_beginAccess();
    v127 = v126[1];
    *v126 = v123;
    v126[1] = v125;

    v236 = 14;
    v128 = sub_2410DF690();
    v130 = v129;
    v131 = v210;
    swift_beginAccess();
    v132 = v131[1];
    *v131 = v128;
    v131[1] = v130;

    v235 = 15;
    v133 = sub_2410DF700();
    v135 = v134;
    v136 = v209;
    swift_beginAccess();
    v137 = v136[1];
    *v136 = v133;
    v136[1] = v135;

    v234 = 16;
    v138 = sub_2410DF700();
    v140 = v139;
    v141 = v207;
    swift_beginAccess();
    v142 = v141[1];
    *v141 = v138;
    v141[1] = v140;

    v233 = 17;
    sub_2410C2CEC(&qword_27E5260F0);
    sub_2410DF6C0();
    v143 = v208;
    v144 = v220;
    swift_beginAccess();
    sub_2410BFA60(v185, v144 + v143);
    swift_endAccess();
    v233 = 18;
    v145 = sub_2410DF690();
    v147 = v146;
    v148 = v206;
    swift_beginAccess();
    v149 = v148[1];
    *v148 = v145;
    v148[1] = v147;

    v232 = 19;
    v150 = sub_2410DF690();
    v152 = v151;
    v153 = v205;
    swift_beginAccess();
    v154 = v153[1];
    *v153 = v150;
    v153[1] = v152;

    v231 = 20;
    v155 = sub_2410DF690();
    v157 = v156;
    v158 = v204;
    swift_beginAccess();
    v159 = v158[1];
    *v158 = v155;
    v158[1] = v157;

    v230 = 21;
    sub_24108BC78();
    sub_2410DF6C0();
    v160 = v228;
    v161 = v229;
    v162 = v203;
    swift_beginAccess();
    v163 = *v162;
    v164 = v162[1];
    *v162 = v160;
    v162[1] = v161;
    sub_2410861E4(v163, v164);
    LOBYTE(v228) = 22;
    LOBYTE(v160) = sub_2410DF6A0();
    v165 = v186;
    v166 = v220;
    swift_beginAccess();
    *(v166 + v165) = v160;
    v227 = 23;
    LOBYTE(v160) = sub_2410DF710();
    v167 = v187;
    v168 = v220;
    swift_beginAccess();
    *(v168 + v167) = v160 & 1;
    v226 = 24;
    v169 = sub_2410DF6F0();
    LOBYTE(v157) = v170;
    v171 = v183;
    swift_beginAccess();
    *v171 = v169;
    v171[8] = v157 & 1;
    v225 = 25;
    v172 = sub_2410DF6F0();
    LOBYTE(v80) = v173;
    v174 = v184;
    swift_beginAccess();
    *v174 = v172;
    v174[8] = v80 & 1;
    v224 = 26;
    sub_2410DF6C0();
    v175 = v202;
    v176 = v220;
    swift_beginAccess();
    sub_2410BFA60(v188, v176 + v175);
    swift_endAccess();
    v224 = 27;
    sub_2410DF6C0();
    v177 = v200;
    v178 = v220;
    swift_beginAccess();
    sub_2410BFA60(v189, v178 + v177);
    swift_endAccess();
    v224 = 28;
    sub_2410DF6C0();
    v179 = v199;
    v180 = v220;
    swift_beginAccess();
    sub_2410BFA60(v190, v180 + v179);
    swift_endAccess();
    v224 = 29;
    sub_2410DF6C0();
    v181 = v201;
    swift_beginAccess();
    sub_2410BFA60(v191, v181);
    swift_endAccess();
    v223.receiver = v220;
    v223.super_class = ObjectType;
    v40 = objc_msgSendSuper2(&v223, sel_init);
    (*(v196 + 8))(v182, v197);
    __swift_destroy_boxed_opaque_existential_1(v251);
  }

  return v40;
}

uint64_t sub_2410C2CEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2410DEDF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2410C2D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATContentAgeRestrictionExceptionMetadata.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for ATContentAgeRestrictionExceptionMetadata()
{
  result = qword_27E526400;
  if (!qword_27E526400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2410C2DF8()
{
  sub_2410C2F44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2410C2F44()
{
  if (!qword_27E5261A0)
  {
    sub_2410DEDF0();
    v0 = sub_2410DF490();
    if (!v1)
    {
      atomic_store(v0, &qword_27E5261A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ATContentAgeRestrictionExceptionMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ATContentAgeRestrictionExceptionMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410C30F0()
{
  result = qword_27E526410;
  if (!qword_27E526410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526410);
  }

  return result;
}

unint64_t sub_2410C3148()
{
  result = qword_27E526418;
  if (!qword_27E526418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526418);
  }

  return result;
}

unint64_t sub_2410C31A0()
{
  result = qword_27E526420;
  if (!qword_27E526420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526420);
  }

  return result;
}

uint64_t sub_2410C31F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D657449707061 && a2 == 0xE900000000000044 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEC00000044496E6FLL || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF656D614E726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7070416265577369 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6972747369447369 && a2 == 0xED0000726F747562 || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D614E72656B7361 && a2 == 0xE900000000000065 || (sub_2410DF8D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xEF676E6972745367 || (sub_2410DF8D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF65707954726F74 || (sub_2410DF8D0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E9480 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002410E94A0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E94C0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_2410DF8D0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_2410DF8D0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002410E94F0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002410E9520 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002410E9540 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9560 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002410E9580 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002410E95A0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x7265727265666572 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255 || (sub_2410DF8D0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E95E0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9600 == a2)
  {

    return 29;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t sub_2410C3B38@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_2410DF500();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 10;
  }

  else
  {
    result = sub_2410C4CC0(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

id sub_2410C3BF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ATStringsResolver.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ATStringsResolver.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ATStringsResolver.requesterName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ATStringsResolver.requestingAppName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

unint64_t ATStringsResolver.topicMetadata.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_2410ADF9C(v2);
}

void ATStringsResolver.init(shouldOmitRequesterNameInTitle:requesterName:requestingAppName:topicMetadata:fallbackTitle:fallbackSubtitle:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v125 = a1;
  v124 = a9;
  v18 = type metadata accessor for ATCommunicationMetadata.PersonInformation();
  v123 = *(v18 - 8);
  v19 = *(v123 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a6;
  if ((*a6 & 0x8000000000000000) != 0)
  {
    v38 = a5;
    v39 = a7;
LABEL_109:
    v110 = v125 & 1;
    v111 = v124;
    *v124 = v39;
    v111[1] = a8;
    v111[2] = a10;
    v111[3] = a11;
    *(v111 + 32) = v110;
    v111[5] = a2;
    v111[6] = a3;
    v111[7] = a4;
    v111[8] = v38;
    v111[9] = v22;
    return;
  }

  v113 = v21;
  v114 = a8;
  v120 = a4;
  v23 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_actions;
  swift_beginAccess();
  v24 = *(v22 + v23);
  v115 = a5;

  sub_2410ADF9C(v22);
  sub_2410C3B38(v24, v131);

  v25 = *(v22 + v23);
  if (v131[0] == 10 || *(v25 + 16) != 1)
  {
    v27 = sub_2410C5340(&unk_2852E3B70);
    v28 = sub_2410C4B50(v25, v27);

    if (v28)
    {
      v26 = 0x4F6567617373654DLL;
    }

    else
    {
      v26 = 6579265;
    }

    v29 = 0xE300000000000000;
    if (v28)
    {
      v29 = 0xED00006C6C614372;
    }

    goto LABEL_14;
  }

  if (v131[0] > 4u)
  {
    if (v131[0] <= 6u)
    {
      if (v131[0] == 5)
      {
        v122 = 0xE900000000000074;
        v26 = 0x6168436F65646956;
        goto LABEL_15;
      }

LABEL_106:
      v122 = 0xE400000000000000;
      v26 = 1819042115;
      goto LABEL_15;
    }

    v67 = 0xEB00000000657461;
    v68 = 0x63696E756D6D6F43;
    v69 = 0xE400000000000000;
    v70 = 1952540739;
    if (v131[0] != 8)
    {
      v70 = 0x7463656E6E6F43;
      v69 = 0xE700000000000000;
    }

    v71 = v131[0] == 7;
    goto LABEL_98;
  }

  if (v131[0] <= 1u)
  {
    v67 = 0xE600000000000000;
    v68 = 0x646E65697246;
    v69 = 0xE600000000000000;
    v70 = 0x776F6C6C6F46;
    v71 = v131[0] == 0;
LABEL_98:
    if (v71)
    {
      v26 = v68;
    }

    else
    {
      v26 = v70;
    }

    if (v71)
    {
      v29 = v67;
    }

    else
    {
      v29 = v69;
    }

LABEL_14:
    v122 = v29;
    goto LABEL_15;
  }

  if (v131[0] == 2)
  {
    v122 = 0xEA00000000006465;
    v26 = 0x776F6C6C6F466542;
    goto LABEL_15;
  }

  if (v131[0] == 3)
  {
    goto LABEL_106;
  }

  v122 = 0xE700000000000000;
  v26 = 0x6567617373654DLL;
LABEL_15:
  v30 = OBJC_IVAR____TtC9AskToCore23ATCommunicationMetadata_personInformation;
  swift_beginAccess();
  v119 = v30;
  v31 = *(v22 + v30);
  v32 = *(v31 + 16);
  v118 = a2;
  v116 = v18;
  if (!v32 || ((v33 = (v31 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v18 + 28)), v34 = v33[1], v32 == 1) ? (v35 = v34 == 0) : (v35 = 1), v35))
  {
    v40 = 0;
    v34 = 0;
    v42 = 0;
    v121 = 0xE000000000000000;
  }

  else
  {
    v40 = *v33;
    v41 = v33[1];

    v121 = 0xE800000000000000;
    v42 = 0x656D614E68746957;
  }

  v38 = v115;
  v117 = a3;
  if (v125)
  {

    v129 = 0x6F546B7341;
    v130 = 0xE500000000000000;
    MEMORY[0x245CD9620](v26, v122);
    MEMORY[0x245CD9620](v42, v121);
    if (v38)
    {
      v43 = 0x7070416E4FLL;
    }

    else
    {
      v43 = 0;
    }

    if (v38)
    {
      v44 = 0xE500000000000000;
    }

    else
    {
      v44 = 0xE000000000000000;
    }

    MEMORY[0x245CD9620](v43, v44);

    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2410E3570;
      v46 = MEMORY[0x277D837D0];
      *(v45 + 56) = MEMORY[0x277D837D0];
      v47 = sub_2410C547C();
      *(v45 + 32) = v40;
      *(v45 + 40) = v34;
      *(v45 + 96) = v46;
      *(v45 + 104) = v47;
      v48 = v120;
      if (!v38)
      {
        v48 = 0x707041206E41;
      }

      v49 = 0xE600000000000000;
      if (v38)
      {
        v49 = v38;
      }

LABEL_74:
      *(v45 + 64) = v47;
      *(v45 + 72) = v48;
      *(v45 + 80) = v49;
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v75 = objc_opt_self();

      v60 = [v75 bundleForClass_];
      goto LABEL_80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_2410E13A0;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_2410C547C();
    v62 = v120;
    if (!v38)
    {
      v62 = 0x707041206E41;
    }

    v63 = 0xE600000000000000;
    if (v38)
    {
      v63 = v38;
    }

    goto LABEL_79;
  }

  if (!a3)
  {
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_2410DF570();

    v129 = 0xD000000000000010;
    v130 = 0x80000002410E9620;
    MEMORY[0x245CD9620](v26, v122);
    MEMORY[0x245CD9620](v42, v121);
    if (v38)
    {
      v64 = 0x7070416E4FLL;
    }

    else
    {
      v64 = 0;
    }

    if (v38)
    {
      v65 = 0xE500000000000000;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    MEMORY[0x245CD9620](v64, v65);

    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2410E3570;
      v66 = MEMORY[0x277D837D0];
      *(v45 + 56) = MEMORY[0x277D837D0];
      v47 = sub_2410C547C();
      *(v45 + 32) = v40;
      *(v45 + 40) = v34;
      *(v45 + 96) = v66;
      *(v45 + 104) = v47;
      v48 = v120;
      if (!v38)
      {
        v48 = 0x707041206E41;
      }

      v49 = 0xE600000000000000;
      if (v38)
      {
        v49 = v38;
      }

      goto LABEL_74;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_2410E13A0;
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_2410C547C();
    v62 = v120;
    if (!v38)
    {
      v62 = 0x707041206E41;
    }

    v63 = 0xE600000000000000;
    if (v38)
    {
      v63 = v38;
    }

LABEL_79:
    *(v61 + 32) = v62;
    *(v61 + 40) = v63;
    type metadata accessor for Localization();
    v76 = swift_getObjCClassFromMetadata();
    v77 = objc_opt_self();

    v60 = [v77 bundleForClass_];
    goto LABEL_80;
  }

  v129 = 0x6F5464656B734158;
  v130 = 0xE800000000000000;
  MEMORY[0x245CD9620](v26, v122);
  MEMORY[0x245CD9620](v42, v121);
  if (v38)
  {
    v50 = 0x7070416E4FLL;
  }

  else
  {
    v50 = 0;
  }

  if (v38)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  MEMORY[0x245CD9620](v50, v51);

  if (!v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2410E3570;
    v72 = MEMORY[0x277D837D0];
    *(v45 + 56) = MEMORY[0x277D837D0];
    v47 = sub_2410C547C();
    v73 = v117;
    *(v45 + 32) = v118;
    *(v45 + 40) = v73;
    *(v45 + 96) = v72;
    *(v45 + 104) = v47;
    v48 = v120;
    if (!v38)
    {
      v48 = 0x707041206E41;
    }

    v49 = 0xE600000000000000;
    if (v38)
    {
      v49 = v38;
    }

    goto LABEL_74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525CE0, &unk_2410E45D0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2410E4B00;
  v53 = MEMORY[0x277D837D0];
  *(v52 + 56) = MEMORY[0x277D837D0];
  v54 = sub_2410C547C();
  v55 = v117;
  *(v52 + 32) = v118;
  *(v52 + 40) = v55;
  *(v52 + 96) = v53;
  *(v52 + 104) = v54;
  *(v52 + 64) = v54;
  *(v52 + 72) = v40;
  *(v52 + 80) = v34;
  *(v52 + 136) = v53;
  *(v52 + 144) = v54;
  v56 = v120;
  if (!v38)
  {
    v56 = 0x707041206E41;
  }

  v57 = 0xE600000000000000;
  if (v38)
  {
    v57 = v38;
  }

  *(v52 + 112) = v56;
  *(v52 + 120) = v57;
  type metadata accessor for Localization();
  v58 = swift_getObjCClassFromMetadata();
  v59 = objc_opt_self();

  v60 = [v59 bundleForClass_];
LABEL_80:
  v78 = v60;
  sub_2410DED70();

  v39 = sub_2410DF0B0();
  a8 = v79;

  v80 = v119;
  v81 = *(v22 + v119);
  if (*(v81 + 16) < 2uLL)
  {

    v94 = *(v22 + v80);
    if (*(v94 + 16))
    {
      v95 = *(v94 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v116 + 20));
      v96 = (v95 + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
      swift_beginAccess();
      a10 = *v96;
      a11 = v96[1];
      v97 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      a2 = v118;
      if (*(v95 + v97))
      {

        sub_2410ADDF0(v22);
        a4 = v120;
        a3 = v117;
        goto LABEL_109;
      }

      v103 = objc_allocWithZone(MEMORY[0x277CBDB70]);

      v104 = sub_2410DF0A0();
      v105 = [v103 initWithStringValue_];

      v106 = [v105 formattedStringValue];
      if (v106)
      {
        a10 = sub_2410DF0C0();
        v108 = v107;
        sub_2410ADDF0(v22);

        a11 = v108;
      }

      else
      {
        sub_2410ADDF0(v22);
      }
    }

    else
    {
      sub_2410ADDF0(v22);
      a11 = 0xE700000000000000;
      a10 = 0x6E776F6E6B6E55;
    }

    a4 = v120;
    a3 = v117;
    a2 = v118;
    goto LABEL_109;
  }

  v82 = v81 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v83 = (*(v82 + *(v116 + 20)) + OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value);
  swift_beginAccess();
  if (*(v81 + 16))
  {
    v84 = *v83;
    v85 = v83[1];

    if (*(v81 + 16))
    {
      v86 = v22;
      v87 = v39;
      v88 = v113;
      sub_24108BCCC(v82, v113);

      v89 = *(v88 + *(v116 + 20));
      sub_24108BD30(v88);
      v90 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      LODWORD(v90) = v89[v90];

      if (v90)
      {

        v91 = v84;
        v92 = v85;
        v93 = v119;
      }

      else
      {
        v98 = objc_allocWithZone(MEMORY[0x277CBDB70]);
        v99 = sub_2410DF0A0();
        v100 = [v98 initWithStringValue_];

        v101 = [v100 formattedStringValue];
        v93 = v119;
        if (!v101)
        {
          v127 = 0;
          v128 = 0xE000000000000000;
          a2 = v118;
LABEL_96:
          MEMORY[0x245CD9620](v84, v85);

          MEMORY[0x245CD9620](2106912, 0xE300000000000000);
          v126 = *(*(v86 + v93) + 16) - 1;
          v109 = sub_2410DF8A0();
          MEMORY[0x245CD9620](v109);

          MEMORY[0x245CD9620](0x65726F6D20, 0xE500000000000000);
          sub_2410ADDF0(v86);
          a10 = v127;
          a11 = v128;
          a4 = v120;
          a3 = v117;
          v39 = v87;
          v22 = v86;
          goto LABEL_109;
        }

        v91 = sub_2410DF0C0();
        v92 = v102;
      }

      v127 = 0;
      v128 = 0xE000000000000000;
      a2 = v118;
      if (v92)
      {

        v84 = v91;
        v85 = v92;
      }

      goto LABEL_96;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2410C4B50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_2410DF990();
    MEMORY[0x245CD9E40](v13);
    result = sub_2410DF9F0();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2410C4CC0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2410C4D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526440, &qword_2410E4C28);
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    v29 = v3;
    while (1)
    {
      v6 = (v31 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v11 = *(v3 + 40);
      sub_2410DF990();

      sub_2410DF150();
      sub_2410DF150();
      result = sub_2410DF9F0();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = *(v5 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v32 = v4;
        v18 = ~v13;
        v19 = *(v3 + 48);
        do
        {
          v20 = (v19 + 32 * v14);
          v21 = v20[2];
          v22 = v20[3];
          v23 = *v20 == v8 && v20[1] == v7;
          if (v23 || (result = sub_2410DF8D0(), (result & 1) != 0))
          {
            v24 = v21 == v10 && v22 == v9;
            if (v24 || (result = sub_2410DF8D0(), (result & 1) != 0))
            {

              v3 = v29;
              v1 = v30;
              v4 = v32;
              goto LABEL_4;
            }
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
        }

        while ((v16 & (1 << v14)) != 0);
        v3 = v29;
        v1 = v30;
        v4 = v32;
      }

      *(v5 + 8 * v15) = v16 | v17;
      v25 = (*(v3 + 48) + 32 * v14);
      *v25 = v8;
      v25[1] = v7;
      v25[2] = v10;
      v25[3] = v9;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v3 + 16) = v28;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_2410C4F0C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2410DF620())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526448, &qword_2410E4C30);
      v3 = sub_2410DF550();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2410DF620();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CD9A20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_2410DF450();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for _CommunicationHandle();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_2410DF460();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_2410DF450();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for _CommunicationHandle();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_2410DF460();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2410C51D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526438, &qword_2410E4C20);
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2410DF990();

      sub_2410DF150();
      result = sub_2410DF9F0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_2410DF8D0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2410C5340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526430, "Xd");
    v3 = sub_2410DF550();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_2410DF990();
      MEMORY[0x245CD9E40](v10);
      result = sub_2410DF9F0();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2410C547C()
{
  result = qword_27E526428;
  if (!qword_27E526428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526428);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5AskTo10ATQuestionC13TopicMetadataOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2410C553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2410C5584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2410C5608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2410C5650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

AskToCore::Entitlement_optional __swiftcall Entitlement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2410DF660();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Entitlement.rawValue.getter()
{
  v1 = 0xD00000000000002FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_2410C5760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.asktod";
  v4 = 0xD00000000000002FLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.asktod";
  }

  else
  {
    v6 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

unint64_t sub_2410C583C()
{
  result = qword_27E526450;
  if (!qword_27E526450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526450);
  }

  return result;
}

uint64_t sub_2410C5890()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410C592C()
{
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_2410C59B4()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

void sub_2410C5A58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "com.apple.asktod";
  v4 = 0xD00000000000002FLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t Transport.debugDescription.getter(__int16 a1)
{
  if (!a1)
  {
    return 0x6567617373654D69;
  }

  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_2410C5B60()
{
  result = qword_27E526458;
  if (!qword_27E526458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526458);
  }

  return result;
}

uint64_t sub_2410C5C64()
{
  if (!*v0)
  {
    return 0x6567617373654D69;
  }

  v2 = *v0;
  result = sub_2410DF900();
  __break(1u);
  return result;
}

unint64_t sub_2410C5CC8()
{
  result = qword_27E526460;
  if (!qword_27E526460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526460);
  }

  return result;
}

unint64_t sub_2410C5D40()
{
  result = qword_27E526468;
  if (!qword_27E526468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526468);
  }

  return result;
}

uint64_t sub_2410C5D94()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](483941);
  return sub_2410DF9F0();
}

uint64_t sub_2410C5E08()
{
  sub_2410DF990();
  MEMORY[0x245CD9E40](483941);
  return sub_2410DF9F0();
}

uint64_t SandboxExtensionToken.machService.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SandboxExtensionToken.description.getter()
{
  v1 = v0;
  v2 = *v0;
  swift_getMetatypeMetadata();
  swift_getMetatypeMetadata();
  v3 = sub_2410DF110();
  MEMORY[0x245CD9620](v3);

  MEMORY[0x245CD9620](32, 0xE100000000000000);
  MEMORY[0x245CD9620](v1[2], v1[3]);
  MEMORY[0x245CD9620](8250, 0xE200000000000000);
  MEMORY[0x245CD9620](v1[4], v1[5]);
  MEMORY[0x245CD9620](62, 0xE100000000000000);
  return 60;
}

uint64_t SandboxExtensionToken.isReleased.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 57) = a1;
  return result;
}

uint64_t static SandboxExtensionToken.issue(for:)(uint64_t a1, unint64_t a2)
{
  if (qword_27E525498 != -1)
  {
    swift_once();
  }

  v4 = sub_2410DEFE0();
  __swift_project_value_buffer(v4, qword_27E5303E8);

  v5 = sub_2410DEFC0();
  v6 = sub_2410DF400();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241085208(a1, a2, &v24);
    _os_log_impl(&dword_24107E000, v5, v6, "Attempting to issue mach lookup sandbox extension for mach service named %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDA690](v8, -1, -1);
    MEMORY[0x245CDA690](v7, -1, -1);
  }

  v9 = *MEMORY[0x277D861B0];
  sub_2410DF120();
  v10 = sandbox_extension_issue_mach();

  if (!v10)
  {
    return 0;
  }

  v11 = sub_2410DF190();
  v13 = v12;
  free(v10);
  v14 = swift_allocObject();
  *(v14 + 40) = v13;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v11;

  v15 = sub_2410DEFC0();
  v16 = sub_2410DF400();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_241085208(a1, a2, &v24);
    *(v17 + 12) = 2080;

    v19 = SandboxExtensionToken.description.getter();
    v21 = v20;

    v22 = sub_241085208(v19, v21, &v24);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_24107E000, v15, v16, "Successfully issued mach lookup sandbox extension for mach service named %s. token: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v18, -1, -1);
    MEMORY[0x245CDA690](v17, -1, -1);
  }

  return v14;
}

Swift::Bool __swiftcall SandboxExtensionToken.consume()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_2410DF120();
  v3 = sandbox_extension_consume();

  if (qword_27E525498 != -1)
  {
    swift_once();
  }

  v4 = sub_2410DEFE0();
  __swift_project_value_buffer(v4, qword_27E5303E8);

  v5 = sub_2410DEFC0();
  v6 = sub_2410DF400();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 134218242;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2080;
    v9 = SandboxExtensionToken.description.getter();
    v11 = sub_241085208(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24107E000, v5, v6, "Sandbox extension consume returned with %lld. token: %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDA690](v8, -1, -1);
    MEMORY[0x245CDA690](v7, -1, -1);
  }

  if (v3 != -1)
  {
    *(v0 + 48) = v3;
    *(v0 + 56) = 0;
  }

  return v3 != -1;
}

Swift::Void __swiftcall SandboxExtensionToken.release()()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 48);
    if (qword_27E525498 != -1)
    {
      swift_once();
    }

    v2 = sub_2410DEFE0();
    __swift_project_value_buffer(v2, qword_27E5303E8);

    v3 = sub_2410DEFC0();
    v4 = sub_2410DF400();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 134218242;
      *(v5 + 4) = v1;
      *(v5 + 12) = 2080;
      v7 = SandboxExtensionToken.description.getter();
      v9 = sub_241085208(v7, v8, &v10);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_24107E000, v3, v4, "Releasing sandbox extension handle %lld. token: %s", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CDA690](v6, -1, -1);
      MEMORY[0x245CDA690](v5, -1, -1);
    }

    sandbox_extension_release();
    swift_beginAccess();
    *(v0 + 57) = 1;
  }
}

uint64_t static SandboxExtensionToken.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_2410DF8D0(), result = 0, (v5 & 1) != 0))
  {
    if (a1[4] == a2[4] && a1[5] == a2[5])
    {
      return 1;
    }

    else
    {

      return sub_2410DF8D0();
    }
  }

  return result;
}

uint64_t SandboxExtensionToken.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_2410DF150();
  v3 = v0[4];
  v4 = v0[5];

  return sub_2410DF150();
}

unint64_t sub_2410C6790()
{
  v1 = 0x767265536863616DLL;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x7361656C65527369;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_2410C6818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410C72A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410C684C(uint64_t a1)
{
  v2 = sub_2410C7080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C6888(uint64_t a1)
{
  v2 = sub_2410C7080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SandboxExtensionToken.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SandboxExtensionToken.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 58, 7);
}

uint64_t SandboxExtensionToken.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526470, &qword_2410E5060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C7080();
  sub_2410DFA20();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v20 = 0;
  sub_2410DF800();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v20 = 1;
    sub_2410DF800();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v20 = 2;
    sub_2410DF7E0();
    swift_beginAccess();
    v17 = *(v3 + 57);
    v19[7] = 3;
    sub_2410DF810();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SandboxExtensionToken.hashValue.getter()
{
  sub_2410DF990();
  v1 = v0[2];
  v2 = v0[3];
  sub_2410DF150();
  v3 = v0[4];
  v4 = v0[5];
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t SandboxExtensionToken.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SandboxExtensionToken.init(from:)(a1);
  return v2;
}

uint64_t *SandboxExtensionToken.init(from:)(uint64_t *a1)
{
  v18 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526480, &qword_2410E5068);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v1[6] = 0;
  *(v1 + 28) = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C7080();
  sub_2410DFA10();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = sub_2410DF700();
    v1[3] = v10;
    v17 = 1;
    v11 = v5;
    v1[4] = sub_2410DF700();
    v1[5] = v13;
    v17 = 2;
    v1[6] = sub_2410DF6E0();
    *(v1 + 56) = v14 & 1;
    v17 = 3;
    v15 = sub_2410DF710();
    (*(v11 + 8))(v8, v4);
    swift_beginAccess();
    *(v1 + 57) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2410C6E74()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = v1[2];
  v3 = v1[3];
  sub_2410DF150();
  v4 = v1[4];
  v5 = v1[5];
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t sub_2410C6EC8()
{
  v1 = *v0;
  v2 = v1[2];
  v3 = v1[3];
  sub_2410DF150();
  v4 = v1[4];
  v5 = v1[5];

  return sub_2410DF150();
}

uint64_t sub_2410C6F0C()
{
  v1 = *v0;
  sub_2410DF990();
  v2 = v1[2];
  v3 = v1[3];
  sub_2410DF150();
  v4 = v1[4];
  v5 = v1[5];
  sub_2410DF150();
  return sub_2410DF9F0();
}

uint64_t *sub_2410C6F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SandboxExtensionToken.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2410C6FFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_2410DF8D0(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 32) == v3[4] && *(v2 + 40) == v3[5])
    {
      return 1;
    }

    else
    {

      return sub_2410DF8D0();
    }
  }

  return result;
}

unint64_t sub_2410C7080()
{
  result = qword_27E526478;
  if (!qword_27E526478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526478);
  }

  return result;
}

unint64_t sub_2410C70D8()
{
  result = qword_27E526488;
  if (!qword_27E526488)
  {
    type metadata accessor for SandboxExtensionToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526488);
  }

  return result;
}

unint64_t sub_2410C71A4()
{
  result = qword_27E526490;
  if (!qword_27E526490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526490);
  }

  return result;
}

unint64_t sub_2410C71FC()
{
  result = qword_27E526498;
  if (!qword_27E526498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526498);
  }

  return result;
}

unint64_t sub_2410C7254()
{
  result = qword_27E5264A0;
  if (!qword_27E5264A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5264A0);
  }

  return result;
}

uint64_t sub_2410C72A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x767265536863616DLL && a2 == 0xEB00000000656369;
  if (v4 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002410E96F0 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7361656C65527369 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t TopicRegistrationEntry.responseListenerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v4 = sub_2410DEF00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TopicRegistrationEntry.__allocating_init(topic:responseListenerID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = a1;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id TopicRegistrationEntry.init(topic:responseListenerID:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = a1;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

id TopicRegistrationEntry.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2410C7BE4();
  v5 = sub_2410DF440();
  if (!v5)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E5303D0);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Not initializing TopicRegistrationEntry (coder had nil value for key data)", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }

    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_2410DEE40();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v11 = sub_24108E3EC();
  sub_2410861F8(v7, v9);
  sub_2410C8A9C(&qword_27E5264C0, type metadata accessor for TopicRegistrationEntry);
  sub_2410DF420();
  v19 = v34;
  if (!v34)
  {
    if (qword_27E525490 != -1)
    {
      swift_once();
    }

    v29 = sub_2410DEFE0();
    __swift_project_value_buffer(v29, qword_27E5303D0);
    v30 = sub_2410DEFC0();
    v31 = sub_2410DF3F0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_24107E000, v30, v31, "Not initializing TopicRegistrationEntry (unarchiver had nil value for key value)", v32, 2u);
      MEMORY[0x245CDA690](v32, -1, -1);
    }

    [v11 finishDecoding];
LABEL_8:
    swift_getObjectType();
    v16 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v17 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = objc_allocWithZone(ObjectType);
  v21 = *&v34[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic];
  *&v20[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v21;
  v22 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v23 = sub_2410DEF00();
  (*(*(v23 - 8) + 16))(&v20[v22], &v19[v22], v23);
  v33.receiver = v20;
  v33.super_class = ObjectType;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v33, sel_init);

  swift_getObjectType();
  v26 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v27 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  v28 = v25;
  [v11 finishDecoding];

  return v28;
}

unint64_t sub_2410C7BE4()
{
  result = qword_27E525C40;
  if (!qword_27E525C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E525C40);
  }

  return result;
}

Swift::Void __swiftcall TopicRegistrationEntry.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410C8A9C(&unk_27E5264C8, type metadata accessor for TopicRegistrationEntry);
  sub_2410DF410();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

id TopicRegistrationEntry.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = objc_allocWithZone(ObjectType);
  v5 = *(v1 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic);
  *&v4[OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic] = v5;
  v6 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID;
  v7 = sub_2410DEF00();
  (*(*(v7 - 8) + 16))(&v4[v6], v1 + v6, v7);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  v8 = v5;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id TopicRegistrationEntry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2410C8150()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x6369706F74;
  }

  *v0;
  return result;
}

uint64_t sub_2410C818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002410E9780 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

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

uint64_t sub_2410C826C(uint64_t a1)
{
  v2 = sub_2410C8A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C82A8(uint64_t a1)
{
  v2 = sub_2410C8A48();

  return MEMORY[0x2821FE720](a1, v2);
}

id TopicRegistrationEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TopicRegistrationEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5264D8, &qword_2410E52C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C8A48();
  sub_2410DFA20();
  v13 = *(v3 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic);
  v12[7] = 0;
  type metadata accessor for ATQuestion.Topic();
  sub_2410C8A9C(&qword_27E526120, type metadata accessor for ATQuestion.Topic);
  sub_2410DF830();
  if (!v2)
  {
    v12[6] = 1;
    sub_2410DEF00();
    sub_2410C8A9C(&qword_27E5264F0, MEMORY[0x277CC95F0]);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v9, v5);
}

char *TopicRegistrationEntry.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2410DEF00();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5264F8, &qword_2410E52D0);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C8A48();
  sub_2410DFA10();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = *((*MEMORY[0x277D85000] & *v22) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v22) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    type metadata accessor for ATQuestion.Topic();
    v25 = 0;
    sub_2410C8A9C(&qword_27E526500, type metadata accessor for ATQuestion.Topic);
    v14 = v21;
    sub_2410DF730();
    v18 = v22;
    v19 = OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic;
    *(v22 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_topic) = v26;
    LOBYTE(v26) = 1;
    sub_2410C8A9C(&unk_27E5259B0, MEMORY[0x277CC95F0]);
    sub_2410DF730();
    (*(v20 + 32))(v18 + OBJC_IVAR____TtC9AskToCore22TopicRegistrationEntry_responseListenerID, v12, v3);
    v24.receiver = v18;
    v24.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v24, sel_init);
    (*(v13 + 8))(v10, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

char *sub_2410C8988@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = TopicRegistrationEntry.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for TopicRegistrationEntry()
{
  result = qword_281369478;
  if (!qword_281369478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2410C8A48()
{
  result = qword_27E5264E0;
  if (!qword_27E5264E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5264E0);
  }

  return result;
}

uint64_t sub_2410C8A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2410C8AEC()
{
  result = sub_2410DEF00();
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

unint64_t sub_2410C8BF4()
{
  result = qword_27E526508;
  if (!qword_27E526508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526508);
  }

  return result;
}

unint64_t sub_2410C8C4C()
{
  result = qword_27E526510;
  if (!qword_27E526510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526510);
  }

  return result;
}

unint64_t sub_2410C8CA4()
{
  result = qword_27E526518;
  if (!qword_27E526518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526518);
  }

  return result;
}

id DaemonSBSendAskPayload.__allocating_init(question:clientPayload:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = a1;
  *&v5[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskPayload.init(question:clientPayload:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = a1;
  *&v2[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2410C8E84()
{
  if (*v0)
  {
    result = 0x6150746E65696C63;
  }

  else
  {
    result = 0x6E6F697473657571;
  }

  *v0;
  return result;
}

uint64_t sub_2410C8ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000;
  if (v6 || (sub_2410DF8D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6150746E65696C63 && a2 == 0xED000064616F6C79)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2410DF8D0();

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

uint64_t sub_2410C8FB0(uint64_t a1)
{
  v2 = sub_2410C92C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410C8FEC(uint64_t a1)
{
  v2 = sub_2410C92C8();

  return MEMORY[0x2821FE720](a1, v2);
}

id DaemonSBSendAskPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DaemonSBSendAskPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526530, &qword_2410E5470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C92C8();
  sub_2410DFA20();
  v13 = *(v3 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question);
  HIBYTE(v12) = 0;
  type metadata accessor for ATQuestion(0);
  sub_2410C998C(&qword_27E526540, 255, type metadata accessor for ATQuestion);
  sub_2410DF830();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload);
    HIBYTE(v12) = 1;
    type metadata accessor for ClientPayload();
    sub_2410C998C(&qword_27E526548, 255, type metadata accessor for ClientPayload);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2410C92C8()
{
  result = qword_27E526538;
  if (!qword_27E526538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526538);
  }

  return result;
}

id DaemonSBSendAskPayload.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526550, &qword_2410E5478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410C92C8();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ATQuestion(0);
    v14 = 0;
    sub_2410C998C(&qword_27E526160, 255, type metadata accessor for ATQuestion);
    sub_2410DF730();
    *&v1[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = v15;
    type metadata accessor for ClientPayload();
    v14 = 1;
    sub_2410C998C(&unk_27E526560, 255, type metadata accessor for ClientPayload);
    sub_2410DF730();
    *&v1[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = v15;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_2410C9634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = DaemonSBSendAskPayload.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id DaemonSBSendAskPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DaemonSBSendAskPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_2410C998C(&unk_27E526780, v3, type metadata accessor for DaemonSBSendAskPayload);
  sub_2410C998C(&qword_27E526570, v4, type metadata accessor for DaemonSBSendAskPayload);
  sub_2410DEF50();
  v5 = sub_2410DF440();
  if (v5)
  {
    v6 = v5;
    sub_2410DEF40();

    v7 = v22;
    v8 = *&v22[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question];
    v9 = *&v22[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload];
    v10 = objc_allocWithZone(ObjectType);
    *&v10[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_question] = v8;
    *&v10[OBJC_IVAR____TtC9AskToCore22DaemonSBSendAskPayload_clientPayload] = v9;
    v21.receiver = v10;
    v21.super_class = ObjectType;
    v11 = v8;
    v12 = v9;
    v13 = v11;
    v14 = v12;
    v15 = objc_msgSendSuper2(&v21, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v16 = sub_2410DEFE0();
    __swift_project_value_buffer(v16, qword_27E530430);
    v17 = sub_2410DEFC0();
    v18 = sub_2410DF3F0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24107E000, v17, v18, "Not initializing DaemonSBSendAskPayload (coder had nil value for key data)", v19, 2u);
      MEMORY[0x245CDA690](v19, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

uint64_t sub_2410C998C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall DaemonSBSendAskPayload.encode(with:)(NSCoder with)
{
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526578, &qword_2410E5480));
  v4 = v1;
  v5 = sub_2410DEF60();
  v6 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

unint64_t sub_2410C9BB0()
{
  result = qword_27E526588;
  if (!qword_27E526588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526588);
  }

  return result;
}

unint64_t sub_2410C9C08()
{
  result = qword_27E526590;
  if (!qword_27E526590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526590);
  }

  return result;
}

unint64_t sub_2410C9C60()
{
  result = qword_27E526598;
  if (!qword_27E526598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526598);
  }

  return result;
}

uint64_t SendableMessageComposeRequest.decodedRequest.getter()
{
  v2 = sub_2410DEB90();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2410DEB80();
  type metadata accessor for MessageComposeRequest();
  v5 = *(v0 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data);
  v6 = *(v0 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data + 8);
  sub_2410CAF78(&unk_27E5265A8, v7, type metadata accessor for MessageComposeRequest);
  sub_2410DEB70();
  if (v1)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2410DEFE0();
    __swift_project_value_buffer(v8, qword_27E530400);
    v9 = v1;
    v10 = sub_2410DEFC0();
    v11 = sub_2410DF3F0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_24107E000, v10, v11, "Not initializing MessageComposeRequest failed to unarchiver: %@", v12, 0xCu);
      sub_2410980E4(v13);
      MEMORY[0x245CDA690](v13, -1, -1);
      MEMORY[0x245CDA690](v12, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {

    return v17;
  }
}

void *MessageComposeRequest.clientInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t MessageComposeRequest.__allocating_init(promptAcknowledgement:question:recipientGroup:clientInfo:)(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t MessageComposeRequest.init(promptAcknowledgement:question:recipientGroup:clientInfo:)(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 48) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

unint64_t sub_2410C9F8C()
{
  v1 = *v0;
  v2 = 0x6E6F697473657571;
  v3 = 0x6E65697069636572;
  v4 = 0x6E49746E65696C63;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_2410CA044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410CB168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410CA078(uint64_t a1)
{
  v2 = sub_2410CAF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CA0B4(uint64_t a1)
{
  v2 = sub_2410CAF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MessageComposeRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t MessageComposeRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5265B8, &qword_2410E5638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CAF24();
  sub_2410DFA20();
  v11 = *(v3 + 16);
  LOBYTE(v15) = 0;
  sub_2410DF810();
  if (!v2)
  {
    v15 = *(v3 + 24);
    HIBYTE(v14) = 1;
    type metadata accessor for ATQuestion(0);
    sub_2410CAF78(&qword_27E526540, 255, type metadata accessor for ATQuestion);
    sub_2410DF830();
    LOWORD(v15) = *(v3 + 32);
    HIBYTE(v14) = 2;
    sub_241080B74();
    sub_2410DF830();
    v15 = *(v3 + 40);
    HIBYTE(v14) = 3;
    type metadata accessor for ClientPayload();
    sub_2410CAF78(&qword_27E526548, 255, type metadata accessor for ClientPayload);
    sub_2410DF7D0();
    v12 = *(v3 + 48);
    LOBYTE(v15) = 4;
    sub_2410DF810();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MessageComposeRequest.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MessageComposeRequest.init(from:)(a1);
  return v2;
}

uint64_t *MessageComposeRequest.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5265D0, &unk_2410E5640);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  *(v3 + 48) = 0;
  v11 = a1[3];
  v12 = a1[4];
  v15 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2410CAF24();
  sub_2410DFA10();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    *(v3 + 16) = sub_2410DF710() & 1;
    type metadata accessor for ATQuestion(0);
    v16 = 1;
    sub_2410CAF78(&qword_27E526160, 255, type metadata accessor for ATQuestion);
    sub_2410DF730();
    v3[3] = v17;
    v16 = 2;
    sub_241080F08();
    sub_2410DF730();
    *(v3 + 16) = v17;
    type metadata accessor for ClientPayload();
    v16 = 3;
    sub_2410CAF78(&unk_27E526560, 255, type metadata accessor for ClientPayload);
    sub_2410DF6C0();
    v3[5] = v17;
    LOBYTE(v17) = 4;
    v14 = sub_2410DF710();
    (*(v7 + 8))(v10, v6);
    *(v3 + 48) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v3;
}

uint64_t *sub_2410CA7B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = MessageComposeRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id MessageComposeRequest.sendableMessageComposeRequest.getter()
{
  v2 = *v0;
  v3 = sub_2410DEBF0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2410DEBE0();
  v24 = v0;
  sub_2410CAF78(&unk_27E5265E0, v6, type metadata accessor for MessageComposeRequest);
  v7 = sub_2410DEBD0();
  if (v1)
  {

    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v9 = sub_2410DEFE0();
    __swift_project_value_buffer(v9, qword_27E530400);
    v10 = v1;
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24107E000, v11, v12, "Error archiving MessageComposeRequest %@", v13, 0xCu);
      sub_2410980E4(v14);
      MEMORY[0x245CDA690](v14, -1, -1);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v18 = v7;
    v19 = v8;

    v20 = type metadata accessor for SendableMessageComposeRequest();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data];
    *v22 = v18;
    *(v22 + 1) = v19;
    v23.receiver = v21;
    v23.super_class = v20;
    return objc_msgSendSuper2(&v23, sel_init);
  }
}

id SendableMessageComposeRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendableMessageComposeRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SendableMessageComposeRequest.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SendableMessageComposeRequest.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    sub_2410DEF40();

    v5 = v16;
    v6 = v17;
    v7 = objc_allocWithZone(ObjectType);
    v8 = &v7[OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data];
    *v8 = v16;
    v8[1] = v6;
    sub_241086284(v5, v6);
    v15.receiver = v7;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);

    sub_2410861F8(v5, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E530400);
    v11 = sub_2410DEFC0();
    v12 = sub_2410DF3F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24107E000, v11, v12, "Not initializing MessageComposeRequest (coder had nil value for key data)", v13, 2u);
      MEMORY[0x245CDA690](v13, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

Swift::Void __swiftcall SendableMessageComposeRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data + 8);
  v6 = *(v1 + OBJC_IVAR____TtC9AskToCore29SendableMessageComposeRequest_data);
  v7 = v3;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525DD0, &qword_2410E2A48));
  sub_241086284(v6, v3);
  v4 = sub_2410DEF60();
  v5 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5, v6, v7];
}

unint64_t sub_2410CAF24()
{
  result = qword_27E5265C0;
  if (!qword_27E5265C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265C0);
  }

  return result;
}

uint64_t sub_2410CAF78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410CB064()
{
  result = qword_27E5265F0;
  if (!qword_27E5265F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265F0);
  }

  return result;
}

unint64_t sub_2410CB0BC()
{
  result = qword_27E5265F8;
  if (!qword_27E5265F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5265F8);
  }

  return result;
}

unint64_t sub_2410CB114()
{
  result = qword_27E526600;
  if (!qword_27E526600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526600);
  }

  return result;
}

uint64_t sub_2410CB168(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002410E9870 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697473657571 && a2 == 0xE800000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEE0070756F724774 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E49746E65696C63 && a2 == 0xEA00000000006F66 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002410E98B0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_2410DF8D0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ClientPayload.processIdentityData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  sub_24108AFBC(v1, *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8));
  return v1;
}

uint64_t ClientPayload.embeddedApplicationIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  sub_24108F4C4(0, &qword_27E526618, 0x277CCAAC8);
  sub_24108F4C4(0, &qword_27E526620, 0x277D46F60);
  sub_241086284(v4, v2);
  v5 = sub_2410DF430();
  result = sub_2410861E4(v4, v2);
  if (!v1)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 embeddedApplicationIdentifier];

    if (v6)
    {
      v7 = sub_2410DF0C0();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ClientPayload.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8);

  return v1;
}

unint64_t ClientPayload.wrappedTokenValue.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val0) | (*(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val1) << 32);
  v2 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val2) | (*(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val3) << 32);
  v3 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val4) | (*(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val5) << 32);
  v4 = *(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val6) | (*(v0 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val7) << 32);
  return result;
}

id ClientPayload.__allocating_init(token:processIdentity:pid:bundleIdentifier:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v35 = v13;
  v22 = objc_allocWithZone(v13);
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = a1;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = a2;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = a3;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = a4;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = a5;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = a6;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = a7;
  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = a8;
  if (a9)
  {
    v23 = a9;
    v28 = sub_2410CCD4C(v23);
    v30 = v29;

    v31 = &v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
    *v31 = v28;
    *(v31 + 1) = v30;
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v24 = sub_2410DEFE0();
    __swift_project_value_buffer(v24, qword_27E530400);
    v25 = sub_2410DEFC0();
    v26 = sub_2410DF3F0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24107E000, v25, v26, "Not initializing ClientPayload (coder had nil value for key processIdentityData)", v27, 2u);
      MEMORY[0x245CDA690](v27, -1, -1);
    }

    *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData] = xmmword_2410E1830;
    v23 = 0;
  }

  *&v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = a10;
  v32 = &v22[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v32 = a11;
  *(v32 + 1) = a12;
  v36.receiver = v22;
  v36.super_class = v35;
  v33 = objc_msgSendSuper2(&v36, sel_init);

  return v33;
}

id ClientPayload.init(token:processIdentity:pid:bundleIdentifier:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v12 = sub_2410CCE28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);

  return v12;
}

uint64_t ClientPayload.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241096234(a1, v14);
  if (!v15)
  {
    sub_241087824(v14);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val0) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val1) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val2) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val3) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val4) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val5) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val6) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] || *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val7) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7])
  {
    goto LABEL_24;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
  v3 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
  v6 = *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  v5 = *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8];
  if (v3 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      sub_24108AFBC(*&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
      sub_24108AFBC(v4, v3);
      sub_2410861E4(v4, v3);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v5 >> 60 == 15)
  {
LABEL_16:
    sub_24108AFBC(*&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
    sub_24108AFBC(v4, v3);

    sub_2410861E4(v4, v3);
    sub_2410861E4(v6, v5);
    goto LABEL_25;
  }

  sub_24108AFBC(*&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8]);
  sub_24108AFBC(v6, v5);
  sub_24108AFBC(v4, v3);
  v7 = sub_2410958F8(v4, v3, v6, v5);
  sub_2410861E4(v6, v5);
  sub_2410861E4(v6, v5);
  sub_2410861E4(v4, v3);
  if ((v7 & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_18:
  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_pid) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid])
  {
    goto LABEL_24;
  }

  v8 = *(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8);
  v9 = *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];
  if (!v8)
  {
    v11 = *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];

    if (!v9)
    {
      LOBYTE(v9) = 1;
      return v9 & 1;
    }

    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_30:

    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier) != *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier] || v8 != v9)
  {
    v12 = *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];
    LOBYTE(v9) = sub_2410DF8D0();
    goto LABEL_30;
  }

  LOBYTE(v9) = 1;
  return v9 & 1;
}

id ClientPayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2410CBC0C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 812409206;
    v7 = 845963638;
    v8 = 862740854;
    if (a1 != 3)
    {
      v8 = 879518070;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 829186422;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 6580592;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 896295286;
    v4 = 913072502;
    if (a1 != 6)
    {
      v4 = 929849718;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2410CBD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2410CD390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2410CBD68(uint64_t a1)
{
  v2 = sub_2410CD054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CBDA4(uint64_t a1)
{
  v2 = sub_2410CD054();

  return MEMORY[0x2821FE720](a1, v2);
}

id ClientPayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ClientPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526680, &qword_2410E5868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CD054();
  sub_2410DFA20();
  v11 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val0);
  LOBYTE(v25) = 0;
  sub_2410DF860();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val1);
    LOBYTE(v25) = 1;
    sub_2410DF860();
    v13 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val2);
    LOBYTE(v25) = 2;
    sub_2410DF860();
    v14 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val3);
    LOBYTE(v25) = 3;
    sub_2410DF860();
    v15 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val4);
    LOBYTE(v25) = 4;
    sub_2410DF860();
    v16 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val5);
    LOBYTE(v25) = 5;
    sub_2410DF860();
    v17 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val6);
    LOBYTE(v25) = 6;
    sub_2410DF860();
    v18 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_val7);
    LOBYTE(v25) = 7;
    sub_2410DF860();
    v19 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8);
    v25 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData);
    v26 = v19;
    v24[15] = 8;
    sub_24108AFBC(v25, v19);
    sub_24108C350();
    sub_2410DF7D0();
    sub_2410861E4(v25, v26);
    v20 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_pid);
    LOBYTE(v25) = 9;
    sub_2410DF850();
    v21 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier);
    v22 = *(v3 + OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8);
    LOBYTE(v25) = 10;
    sub_2410DF7A0();
  }

  return (*(v6 + 8))(v9, v5);
}

id ClientPayload.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526698, &qword_2410E5870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CD054();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v18) = 0;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = sub_2410DF760();
    LOBYTE(v18) = 1;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = sub_2410DF760();
    LOBYTE(v18) = 2;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = sub_2410DF760();
    LOBYTE(v18) = 3;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = sub_2410DF760();
    LOBYTE(v18) = 4;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = sub_2410DF760();
    LOBYTE(v18) = 5;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = sub_2410DF760();
    LOBYTE(v18) = 6;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = sub_2410DF760();
    LOBYTE(v18) = 7;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = sub_2410DF760();
    v19 = 8;
    sub_24108BC78();
    sub_2410DF6C0();
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData] = v18;
    LOBYTE(v18) = 9;
    *&v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = sub_2410DF750();
    LOBYTE(v18) = 10;
    v12 = sub_2410DF690();
    v13 = &v1[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
    *v13 = v12;
    v13[1] = v14;
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_2410CC5B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ClientPayload.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ClientPayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ClientPayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878);
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530400);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Not initializing ClientPayload (coder had nil value for key data)", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }

    goto LABEL_14;
  }

  v4 = v3;
  sub_2410DEF40();

  v5 = v39;
  v6 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData + 8];
  if (v6 >> 60 == 15 || (v7 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData], sub_24108F4C4(0, &qword_27E526618, 0x277CCAAC8), sub_24108F4C4(0, &qword_27E526620, 0x277D46F60), sub_241086284(v7, v6), v17 = sub_2410DF430(), sub_2410861E4(v7, v6), !v17))
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2410DEFE0();
    __swift_project_value_buffer(v8, qword_27E530400);
    v9 = sub_2410DEFC0();
    v10 = sub_2410DF3F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24107E000, v9, v10, "ClientPayload.init(coder:) processIdentity was nil", v11, 2u);
      MEMORY[0x245CDA690](v11, -1, -1);
    }

LABEL_14:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v35 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0];
  v32 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2];
  v33 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1];
  v30 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4];
  v31 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3];
  v29 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5];
  v18 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6];
  v19 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7];
  v37 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid];
  v20 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier + 8];
  v34 = *&v39[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  v21 = objc_allocWithZone(ObjectType);
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = v35;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = v33;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = v32;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = v31;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = v30;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = v29;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = v18;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = v19;
  v36 = v20;

  v22 = v17;
  v23 = sub_2410CCD4C(v22);
  v25 = v24;

  v26 = &v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  *v26 = v23;
  *(v26 + 1) = v25;
  *&v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = v37;
  v27 = &v21[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v27 = v34;
  *(v27 + 1) = v36;
  v38.receiver = v21;
  v38.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v38, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v28;
}

Swift::Void __swiftcall ClientPayload.encode(with:)(NSCoder with)
{
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5266A8, &qword_2410E5878));
  v4 = v1;
  v5 = sub_2410DEF60();
  v6 = sub_2410DF0A0();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

void *sub_2410CCD4C(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_2410DEE40();
  }

  else
  {
    v3 = v2;
    sub_2410DEDC0();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_2410CCE28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, int a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  ObjectType = swift_getObjectType();
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val0] = a1;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val1] = a2;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val2] = a3;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val3] = a4;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val4] = a5;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val5] = a6;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val6] = a7;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_val7] = a8;
  if (a9)
  {
    v22 = a9;
    v27 = sub_2410CCD4C(v22);
    v29 = v28;
  }

  else
  {
    if (qword_27E5254A0 != -1)
    {
      swift_once();
    }

    v23 = sub_2410DEFE0();
    __swift_project_value_buffer(v23, qword_27E530400);
    v24 = sub_2410DEFC0();
    v25 = sub_2410DF3F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24107E000, v24, v25, "Not initializing ClientPayload (coder had nil value for key processIdentityData)", v26, 2u);
      MEMORY[0x245CDA690](v26, -1, -1);
    }

    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v30 = &v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_processIdentityData];
  *v30 = v27;
  *(v30 + 1) = v29;
  *&v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_pid] = a10;
  v31 = &v13[OBJC_IVAR____TtC9AskToCore13ClientPayload_bundleIdentifier];
  *v31 = a11;
  *(v31 + 1) = a12;
  v34.receiver = v13;
  v34.super_class = ObjectType;
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t sub_2410CD054()
{
  result = qword_27E526688;
  if (!qword_27E526688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2410CD28C()
{
  result = qword_27E5266B8;
  if (!qword_27E5266B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266B8);
  }

  return result;
}

unint64_t sub_2410CD2E4()
{
  result = qword_27E5266C0;
  if (!qword_27E5266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266C0);
  }

  return result;
}

unint64_t sub_2410CD33C()
{
  result = qword_27E5266C8;
  if (!qword_27E5266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266C8);
  }

  return result;
}

uint64_t sub_2410CD390(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 812409206 && a2 == 0xE400000000000000;
  if (v3 || (sub_2410DF8D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 829186422 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 845963638 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 862740854 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 879518070 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 896295286 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 913072502 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 929849718 && a2 == 0xE400000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002410E9990 == a2 || (sub_2410DF8D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_2410DF8D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002410E99B0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_2410DF8D0();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2410CD724()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410CD7D4()
{
  *v0;
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_2410CD870()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410CD91C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2410CFDF4();
  *a2 = result;
  return result;
}

void sub_2410CD94C(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x80000002410E6CE0;
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 1684957547;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
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

unint64_t sub_2410CD9B8()
{
  v1 = 25705;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_2410CDA20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2410CFDF4();
  *a1 = result;
  return result;
}

uint64_t sub_2410CDA48(uint64_t a1)
{
  v2 = sub_2410CEA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410CDA84(uint64_t a1)
{
  v2 = sub_2410CEA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ATAnswerChoice.Kind.init(rawValue:)(unsigned __int16 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    v3 = a1 != 2;
    if (a1 == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = v2;
    }

    if (a1 == 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v1 | (v3 << 16);
}

unsigned __int16 *sub_2410CDB04@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 2;
  if (v2 > 2)
  {
    LOWORD(v2) = 0;
  }

  *a2 = v2;
  *(a2 + 2) = v3;
  return result;
}

uint64_t ATAnswerChoice.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v2 = *(v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);

  return v1;
}

uint64_t ATAnswerChoice.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ATAnswerChoice.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATAnswerChoice.completedRequestTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ATAnswerChoice.completedRequestTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATAnswerChoice.kind.getter()
{
  v1 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ATAnswerChoice.kind.setter(__int16 a1)
{
  v3 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ATAnswerChoice.__allocating_init(id:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v11 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ATAnswerChoice.init(id:title:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v11 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id ATAnswerChoice.__allocating_init(id:title:completedRequestTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v15 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v13[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v16 = a3;
  *(v16 + 1) = a4;
  swift_beginAccess();
  *v14 = a5;
  *(v14 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id ATAnswerChoice.init(id:title:completedRequestTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v15 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v6[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v16 = a3;
  *(v16 + 1) = a4;
  swift_beginAccess();
  *v14 = a5;
  *(v14 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

char *ATAnswerChoice.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5266F0, &qword_2410E5A18);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - v6;
  v8 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v8 = 0;
  v8[1] = 0;
  v32 = v8;
  v33 = a1;
  v9 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  v10 = v1;
  *&v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CEA34();
  sub_2410DFA10();
  if (v2)
  {
    v15 = v32;
    __swift_destroy_boxed_opaque_existential_1(v33);
    v16 = v15[1];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v9;
    v12 = v4;
    v37 = 0;
    v13 = v31;
    v14 = sub_2410DF700();
    v18 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
    *v18 = v14;
    v18[1] = v19;
    v37 = 1;
    v20 = sub_2410DF700();
    v21 = v32;
    v22 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
    *v22 = v20;
    v22[1] = v23;
    v37 = 2;
    v24 = sub_2410DF690();
    v29 = v25;
    swift_beginAccess();
    v26 = v21[1];
    v27 = v29;
    *v21 = v24;
    v21[1] = v27;

    v36 = 3;
    sub_2410CEA88();
    sub_2410DF730();
    (*(v12 + 8))(v7, v13);
    LOWORD(v24) = v38;
    v28 = v30;
    swift_beginAccess();
    *&v10[v28] = v24;
    v35.receiver = v10;
    v35.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v35, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  return v10;
}

unint64_t sub_2410CEA34()
{
  result = qword_27E5266F8;
  if (!qword_27E5266F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5266F8);
  }

  return result;
}

unint64_t sub_2410CEA88()
{
  result = qword_27E526700;
  if (!qword_27E526700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526700);
  }

  return result;
}

uint64_t ATAnswerChoice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526708, &qword_2410E5A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410CEA34();
  sub_2410DFA20();
  v11 = *(v3 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v12 = *(v3 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  v25 = 0;
  sub_2410DF800();
  if (!v2)
  {
    v14 = (v3 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v24 = 1;

    sub_2410DF800();

    v17 = (v3 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v23 = 2;

    sub_2410DF7A0();

    v20 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
    swift_beginAccess();
    v22 = *(v3 + v20);
    v21[5] = 3;
    sub_2410CED68();
    sub_2410DF830();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2410CED68()
{
  result = qword_27E526710;
  if (!qword_27E526710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526710);
  }

  return result;
}

BOOL ATAnswerChoice.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_241096234(a1, v19);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id) == *&v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id] && *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8) == *&v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8];
      if (v3 || (sub_2410DF8D0() & 1) != 0)
      {
        v4 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
        swift_beginAccess();
        v5 = *v4;
        v6 = v4[1];
        v7 = &v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
        swift_beginAccess();
        v8 = v5 == *v7 && v6 == *(v7 + 1);
        if (v8 || (sub_2410DF8D0() & 1) != 0)
        {
          v9 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];
          v12 = &v18[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
          swift_beginAccess();
          v13 = *(v12 + 1);
          if (v11)
          {
            if (v13 && (v10 == *v12 && v11 == v13 || (sub_2410DF8D0() & 1) != 0))
            {
              goto LABEL_18;
            }
          }

          else if (!v13)
          {
LABEL_18:
            v14 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
            swift_beginAccess();
            v15 = *(v1 + v14);
            v16 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
            swift_beginAccess();
            LODWORD(v16) = *&v18[v16];

            return v15 == v16;
          }
        }
      }
    }
  }

  else
  {
    sub_241086184(v19, &unk_27E525CA0, "P?");
  }

  return 0;
}

uint64_t ATAnswerChoice.hash.getter()
{
  v1 = v0;
  sub_2410DFA00();
  v2 = *(v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = *(v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  sub_2410DF150();
  v4 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_2410DF150();

  v7 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  if (v7[1])
  {
    v8 = *v7;
    sub_2410DF9B0();

    sub_2410DF150();
  }

  else
  {
    sub_2410DF9B0();
  }

  v9 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  v10 = *(v1 + v9);
  sub_2410DF9C0();
  return sub_2410DF9E0();
}

uint64_t ATAnswerChoice.description.getter()
{
  v1 = v0;
  sub_2410DF570();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E526720, &qword_2410E5A28);
  v2 = sub_2410DF110();
  MEMORY[0x245CD9620](v2);

  MEMORY[0x245CD9620](175841338, 0xE400000000000000);
  MEMORY[0x245CD9620](*(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id), *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8));
  MEMORY[0x245CD9620](0x203A656C7469740ALL, 0xE800000000000000);
  v3 = (v0 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x245CD9620](v4, v5);

  MEMORY[0x245CD9620](0xD000000000000018, 0x80000002410E99D0);
  v6 = (v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x245CD9620](v7, v8);

  MEMORY[0x245CD9620](0x203A646E696B0ALL, 0xE700000000000000);
  v9 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  v11 = *(v1 + v9);
  sub_2410DF610();
  MEMORY[0x245CD9620](32010, 0xE200000000000000);
  return 0;
}

id ATAnswerChoice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATAnswerChoice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2410CF534@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

char *sub_2410CF550@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATAnswerChoice.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id ATAnswerChoice.init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v17 = sub_24108E3EC();
    sub_2410861F8(v5, v7);
    sub_2410CFF94(&qword_27E5260E0);
    sub_2410DF420();
    if (v29)
    {
      v18 = objc_allocWithZone(ObjectType);
      v19 = sub_2410CFE40(v29);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v20 = v19;
      [v17 finishDecoding];

      return v20;
    }

    v21 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v22 = sub_2410DF480();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      v29 = ObjectType;
      *v23 = 136315138;
      swift_getMetatypeMetadata();
      v25 = sub_2410DF110();
      v27 = sub_241085208(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_24107E000, v22, v21, "Not initializing %s (unarchiver had nil value for key value)", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CDA690](v24, -1, -1);
      MEMORY[0x245CDA690](v23, -1, -1);
    }

    [v17 finishDecoding];
  }

  else
  {
    v9 = sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      v29 = ObjectType;
      *v11 = 136315138;
      swift_getMetatypeMetadata();
      v13 = sub_2410DF110();
      v15 = sub_241085208(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_24107E000, v10, v9, "Not initializing %s (coder had nil value for key data)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDA690](v12, -1, -1);
      MEMORY[0x245CDA690](v11, -1, -1);
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATAnswerChoice.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = v1;
  sub_2410CFF94(&qword_27E526130);
  sub_2410DF410();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2410CFDF4()
{
  v0 = sub_2410DF660();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_2410CFE40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  *&v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind] = 0;
  v6 = *(a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  v7 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id];
  *v7 = *(a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  *(v7 + 1) = v6;
  v8 = (a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v1[OBJC_IVAR____TtC5AskTo14ATAnswerChoice_title];
  *v11 = v9;
  *(v11 + 1) = v10;
  v12 = (a1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_completedRequestTitle);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  swift_beginAccess();
  *v4 = v14;
  *(v4 + 1) = v13;
  v15 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  LOWORD(a1) = *(a1 + v15);
  swift_beginAccess();
  *&v1[v5] = a1;
  v17.receiver = v1;
  v17.super_class = ObjectType;

  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_2410CFF94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ATAnswerChoice();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410CFFD8()
{
  result = qword_27E526730;
  if (!qword_27E526730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526730);
  }

  return result;
}

unint64_t sub_2410D00B8()
{
  result = qword_27E526740;
  if (!qword_27E526740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526740);
  }

  return result;
}

unint64_t sub_2410D0110()
{
  result = qword_27E526748;
  if (!qword_27E526748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526748);
  }

  return result;
}

unint64_t sub_2410D0168()
{
  result = qword_27E526750;
  if (!qword_27E526750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526750);
  }

  return result;
}

unint64_t sub_2410D01BC()
{
  result = qword_27E526758;
  if (!qword_27E526758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526758);
  }

  return result;
}

void *DaemonSBSendAskResponsePayload.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error);
  v2 = v1;
  return v1;
}

id DaemonSBSendAskResponsePayload.__allocating_init(request:error:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = a1;
  *&v5[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskResponsePayload.init(request:error:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = a1;
  *&v2[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DaemonSBSendAskResponsePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonSBSendAskResponsePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DaemonSBSendAskResponsePayload.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DaemonSBSendAskResponsePayload.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (!v3)
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v12 = sub_2410DEFE0();
    __swift_project_value_buffer(v12, qword_27E530430);
    v13 = sub_2410DEFC0();
    v14 = sub_2410DF3F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24107E000, v13, v14, "Not initializing DaemonSBSendAskResponsePayload (coder had nil value for key data)", v15, 2u);
      MEMORY[0x245CDA690](v15, -1, -1);
    }

    goto LABEL_8;
  }

  v4 = v3;
  sub_24108F4C4(0, &qword_27E526778, 0x277CCA9B8);
  v5 = sub_2410DF440();
  v6 = v4;
  v7 = sub_2410DEE40();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v11 = sub_24108E3EC();
  sub_2410861F8(v7, v9);
  type metadata accessor for DaemonSBSendAskPayload();
  sub_2410D0D54(&unk_27E526780);
  sub_2410DF420();
  if (!v26)
  {
    if (qword_27E5254B0 != -1)
    {
      swift_once();
    }

    v21 = sub_2410DEFE0();
    __swift_project_value_buffer(v21, qword_27E530430);
    v22 = sub_2410DEFC0();
    v23 = sub_2410DF3F0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_24107E000, v22, v23, "Not initializing DaemonSBSendAskResponsePayload (unarchiver had nil value for key value)", v24, 2u);
      MEMORY[0x245CDA690](v24, -1, -1);
    }

    [v11 finishDecoding];
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = objc_allocWithZone(ObjectType);
  *&v17[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request] = v26;
  *&v17[OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error] = v5;
  v25.receiver = v17;
  v25.super_class = ObjectType;
  v18 = v5;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v20 = v19;
  [v11 finishDecoding];

  return v20;
}

Swift::Void __swiftcall DaemonSBSendAskResponsePayload.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v22 = *(v1 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_request);
  type metadata accessor for DaemonSBSendAskPayload();
  sub_2410D0D54(&qword_27E526570);
  v5 = v22;
  sub_2410DF410();

  [v4 finishEncoding];
  v6 = [v4 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

    v9 = *(v2 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error);
    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC9AskToCore30DaemonSBSendAskResponsePayload_error);
      ErrorValue = swift_getErrorValue();
      v12 = v21;
      v13 = *(v21 - 8);
      v14 = *(v13 + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16);
      v17 = v9;
      v18 = sub_2410DF8C0();
      (*(v13 + 8))(v16, v12);
      v19 = sub_2410DF0A0();
      [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2410D0D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DaemonSBSendAskPayload();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410D0DE8()
{
  qword_27E526790 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = sub_241082DC0(MEMORY[0x277D84F90]);
  qword_27E526798 = result;
  return result;
}

uint64_t static ContactResolver.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E5254D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27E526790;
  v2 = qword_27E526798;
  *a1 = qword_27E526790;
  a1[1] = v2;
  v3 = v1;
}

Swift::OpaquePointer_optional __swiftcall ContactResolver.contacts(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v50[1] = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = *(v1 + 8);
  if (*(v4 + 16) && (v6 = sub_2410D81D4(a1._countAndFlagsBits, a1._object), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
    v9 = qword_27E525480;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_2410DEFE0();
    __swift_project_value_buffer(v10, qword_27E5303A0);

    v11 = sub_2410DEFC0();
    v12 = sub_2410DF400();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_241085208(countAndFlagsBits, object, v50);
      _os_log_impl(&dword_24107E000, v11, v12, "Using cached results for responder handle %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245CDA690](v14, -1, -1);
      MEMORY[0x245CDA690](v13, -1, -1);
    }
  }

  else
  {
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2410E13A0;
    *(v17 + 32) = countAndFlagsBits;
    *(v17 + 40) = object;

    v18 = sub_2410DF2B0();

    v19 = [v16 predicateForContactsMatchingHandleStrings_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2410E5D80;
    v21 = objc_opt_self();
    v22 = [v21 descriptorForRequiredKeysForStyle_];
    v23 = *MEMORY[0x277CBCFC0];
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    v24 = *MEMORY[0x277CBD098];
    v25 = *MEMORY[0x277CBD158];
    *(v20 + 48) = *MEMORY[0x277CBD098];
    *(v20 + 56) = v25;
    v50[0] = v20;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v29 = [v21 descriptorForRequiredKeysForStyle_];
    v30 = swift_unknownObjectRetain();
    MEMORY[0x245CD9740](v30);
    if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v48 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2410DF2E0();
    }

    sub_2410DF300();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267B0, &qword_2410E5DA8);
    v31 = sub_2410DF2B0();
    v49 = 0;
    v32 = [v5 unifiedContactsMatchingPredicate:v19 keysToFetch:v31 error:&v49];

    v33 = v49;
    if (v32)
    {
      sub_24108F4C4(0, &unk_27E5267C0, 0x277CBDA58);
      v8 = sub_2410DF2C0();
      v34 = v33;

      v19 = v32;
    }

    else
    {
      v35 = v49;
      v36 = sub_2410DEDC0();

      swift_willThrow();
      if (qword_27E525480 != -1)
      {
        swift_once();
      }

      v37 = sub_2410DEFE0();
      __swift_project_value_buffer(v37, qword_27E5303A0);

      v38 = v36;
      v39 = sub_2410DEFC0();
      v40 = sub_2410DF3F0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49 = v43;
        *v41 = 136315394;
        *(v41 + 4) = sub_241085208(countAndFlagsBits, object, &v49);
        *(v41 + 12) = 2112;
        v44 = v36;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v45;
        *v42 = v45;
        _os_log_impl(&dword_24107E000, v39, v40, "Error fetching contacts for responder handle %s: %@", v41, 0x16u);
        sub_2410980E4(v42);
        MEMORY[0x245CDA690](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x245CDA690](v43, -1, -1);
        MEMORY[0x245CDA690](v41, -1, -1);
      }

      else
      {
      }

      v8 = MEMORY[0x277D84F90];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
  v47 = v8;
  result.value._rawValue = v47;
  result.is_nil = v15;
  return result;
}

uint64_t ContactResolver.contacts(for:)(uint64_t a1)
{
  v109[6] = *MEMORY[0x277D85DE8];
  v101 = *v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2410DF520();
    type metadata accessor for _CommunicationHandle();
    sub_2410A88F4();
    sub_2410DF3B0();
    v4 = v109[1];
    v3 = v109[2];
    v5 = v109[3];
    v6 = v109[4];
    v7 = v109[5];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
    v6 = 0;
  }

  v11 = ((v5 + 64) >> 6);
  v12 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v104 = v4;
LABEL_8:
  v13 = v6;
  v14 = v7;
  v106 = v12;
  if (v4 < 0)
  {
    while (sub_2410DF530())
    {
      type metadata accessor for _CommunicationHandle();
      swift_dynamicCast();
      v17 = v108;
      v6 = v13;
      v7 = v14;
      if (!v108)
      {
        break;
      }

LABEL_17:
      v18 = OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_kind;
      swift_beginAccess();
      v19 = v17[v18];
      v20 = &v17[OBJC_IVAR____TtC9AskToCore20_CommunicationHandle_value];
      if (v19 != 2)
      {
        swift_beginAccess();
        v26 = *v20;
        v27 = v20[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_2410D2150(0, *(v103 + 2) + 1, 1, v103);
        }

        v2 = *(v103 + 2);
        v28 = *(v103 + 3);
        if (v2 >= v28 >> 1)
        {
          v103 = sub_2410D2150((v28 > 1), v2 + 1, 1, v103);
        }

        *(v103 + 2) = v2 + 1;
        v29 = &v103[16 * v2];
        *(v29 + 4) = v26;
        *(v29 + 5) = v27;
        v12 = v106;
        goto LABEL_8;
      }

      swift_beginAccess();
      v2 = *v20;
      v21 = v20[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2410D2150(0, *(v12 + 2) + 1, 1, v12);
      }

      v23 = *(v12 + 2);
      v22 = *(v12 + 3);
      v24 = v12;
      if (v23 >= v22 >> 1)
      {
        v24 = sub_2410D2150((v22 > 1), v23 + 1, 1, v12);
      }

      *(v24 + 2) = v23 + 1;
      v12 = v24;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v2;
      *(v25 + 5) = v21;
      v13 = v6;
      v14 = v7;
      v4 = v104;
      v106 = v12;
      if ((v104 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v15 = v13;
    v16 = v14;
    v6 = v13;
    if (v14)
    {
LABEL_13:
      v7 = ((v16 - 1) & v16);
      v17 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v16)))));
      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v6 >= v11)
        {
          break;
        }

        v16 = v3[v6];
        ++v15;
        if (v16)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_2410D245C();
  v2 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  v6 = objc_opt_self();
  v30 = sub_2410DF2B0();
  v31 = [v6 predicateForContactsMatchingHandleStrings_];

  v11 = v31;
  MEMORY[0x245CD9740]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v105 = v11;
    sub_2410DF300();
    v107 = v2;
    v11 = *(v12 + 2);
    if (!v11)
    {
      break;
    }

    v32 = 0;
    v33 = (v12 + 40);
    v2 = &selRef_formattedStringValue;
    while (v32 < *(v12 + 2))
    {
      v35 = *(v33 - 1);
      v34 = *v33;
      v36 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

      v37 = sub_2410DF0A0();

      v38 = [v36 initWithUrlString:0 username:v37 userIdentifier:0 service:0 displayname:0 teamIdentifier:0 bundleIdentifiers:0];

      v39 = [v6 predicateForContactsMatchingSocialProfile_];
      MEMORY[0x245CD9740]();
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v102 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2410DF2E0();
      }

      ++v32;
      sub_2410DF300();

      v33 += 2;
      v12 = v106;
      if (v11 == v32)
      {
        goto LABEL_36;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    sub_2410DF2E0();
  }

LABEL_36:
  sub_24108F4C4(0, &qword_27E5267D0, 0x277CCAC30);
  v40 = sub_2410DF2B0();
  v41 = objc_opt_self();
  v42 = [v41 orPredicateWithSubpredicates_];

  v43 = v42;
  MEMORY[0x245CD9740]();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v96 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2410DF2E0();
  }

  sub_2410DF300();
  v44 = sub_2410DF2B0();
  v45 = [v41 orPredicateWithSubpredicates_];

  if (qword_27E525480 != -1)
  {
    swift_once();
  }

  v100 = v43;
  v46 = sub_2410DEFE0();
  __swift_project_value_buffer(v46, qword_27E5303A0);
  v47 = v45;
  v48 = sub_2410DEFC0();
  v49 = sub_2410DF400();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&dword_24107E000, v48, v49, "fetchPredicate: %@", v50, 0xCu);
    sub_2410980E4(v51);
    MEMORY[0x245CDA690](v51, -1, -1);
    MEMORY[0x245CDA690](v50, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526268, &qword_2410E45B0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2410E5D90;
  v54 = *MEMORY[0x277CBD068];
  v55 = *MEMORY[0x277CBD070];
  *(v53 + 32) = *MEMORY[0x277CBD068];
  *(v53 + 40) = v55;
  v56 = *MEMORY[0x277CBD078];
  v57 = *MEMORY[0x277CBD000];
  *(v53 + 48) = *MEMORY[0x277CBD078];
  *(v53 + 56) = v57;
  v99 = v47;
  v58 = *MEMORY[0x277CBD058];
  v59 = *MEMORY[0x277CBCFF8];
  *(v53 + 64) = *MEMORY[0x277CBD058];
  *(v53 + 72) = v59;
  v60 = *MEMORY[0x277CBD0B0];
  v61 = *MEMORY[0x277CBD0B8];
  *(v53 + 80) = *MEMORY[0x277CBD0B0];
  *(v53 + 88) = v61;
  v62 = *MEMORY[0x277CBD0A8];
  v63 = *MEMORY[0x277CBCFC0];
  *(v53 + 96) = *MEMORY[0x277CBD0A8];
  *(v53 + 104) = v63;
  v97 = *MEMORY[0x277CBD098];
  v98 = *MEMORY[0x277CBD138];
  v64 = *MEMORY[0x277CBD138];
  *(v53 + 112) = *MEMORY[0x277CBD098];
  *(v53 + 120) = v64;
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v74 = v63;
  v75 = v97;
  v76 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267B0, &qword_2410E5DA8);
  v77 = sub_2410DF2B0();

  v109[0] = 0;
  v78 = [v101 unifiedContactsMatchingPredicate:v99 keysToFetch:v77 error:v109];

  v79 = v109[0];
  if (v78)
  {

    sub_24108F4C4(0, &unk_27E5267C0, 0x277CBDA58);
    v80 = sub_2410DF2C0();
  }

  else
  {
    v81 = v79;
    v82 = sub_2410DEDC0();

    swift_willThrow();

    v83 = v82;
    v84 = sub_2410DEFC0();
    v85 = sub_2410DF3F0();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v109[0] = v88;
      *v86 = 136315394;
      type metadata accessor for _CommunicationHandle();
      sub_2410A88F4();
      v89 = sub_2410DF3A0();
      v91 = sub_241085208(v89, v90, v109);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2112;
      v92 = v82;
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v86 + 14) = v93;
      *v87 = v93;

      _os_log_impl(&dword_24107E000, v84, v85, "Error fetching contacts for handles %s: %@", v86, 0x16u);
      sub_2410980E4(v87);
      MEMORY[0x245CDA690](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x245CDA690](v88, -1, -1);
      MEMORY[0x245CDA690](v86, -1, -1);
    }

    else
    {
    }

    v80 = MEMORY[0x277D84F90];
  }

  v94 = *MEMORY[0x277D85DE8];
  return v80;
}

size_t sub_2410D1F78(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267F0, &qword_2410E5E08);
  v10 = *(sub_2410DEC30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2410DEC30() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2410D2150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267A0, &qword_2410E29F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2410D225C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5267E8, &qword_2410E5E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_2410D2350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5267D8, &qword_2410E5DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t ATResponse.description.getter()
{
  v1 = v0;
  v2 = sub_2410DEF00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = 0;
  v22 = 0xE000000000000000;
  sub_2410DF570();
  v23 = ObjectType;
  v24 = v22;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526800, &qword_2410E5E10);
  v7 = sub_2410DF110();
  MEMORY[0x245CD9620](v7);

  MEMORY[0x245CD9620](0xD00000000000001FLL, 0x80000002410E9B30);
  v8 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  (*(v3 + 16))(v6, *(v0 + v8) + OBJC_IVAR____TtC5AskTo10ATQuestion_systemId, v2);
  sub_2410D4584(&qword_27E526810, 255, MEMORY[0x277CC95F0]);
  v9 = sub_2410DF8A0();
  MEMORY[0x245CD9620](v9);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x245CD9620](0xD000000000000016, 0x80000002410E9B50);
  v10 = (*(v0 + v8) + OBJC_IVAR____TtC5AskTo10ATQuestion_id);
  v11 = *v10;
  v12 = v10[1];

  MEMORY[0x245CD9620](v11, v12);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9B70);
  v13 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];

  MEMORY[0x245CD9620](v14, v15);

  MEMORY[0x245CD9620](0xD000000000000012, 0x80000002410E9B90);
  v16 = (*(v1 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer) + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v17 = *v16;
  v18 = v16[1];

  MEMORY[0x245CD9620](v17, v18);

  MEMORY[0x245CD9620](32010, 0xE200000000000000);
  return v23;
}

uint64_t sub_2410D2780(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF656C646E614872;
  v3 = 0x65646E6F70736572;
  v4 = *a1;
  v5 = 0x6E416E65736F6863;
  v6 = 0xEC00000072657773;
  if (v4 == 1)
  {
    v5 = 0x65646E6F70736572;
    v6 = 0xEF656C646E614872;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002410E6D00;
  }

  if (*a2 != 1)
  {
    v3 = 0x6E416E65736F6863;
    v2 = 0xEC00000072657773;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002410E6D00;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2410DF8D0();
  }

  return v11 & 1;
}

uint64_t sub_2410D2894()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D2950()
{
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_2410D29F8()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D2AB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2410D441C();
  *a2 = result;
  return result;
}

void sub_2410D2AE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656C646E614872;
  v4 = 0x65646E6F70736572;
  if (v2 != 1)
  {
    v4 = 0x6E416E65736F6863;
    v3 = 0xEC00000072657773;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000002410E6D00;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2410D2B58()
{
  v1 = 0x65646E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6E416E65736F6863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2410D2BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2410D441C();
  *a1 = result;
  return result;
}

uint64_t sub_2410D2BF4(uint64_t a1)
{
  v2 = sub_2410D3710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2410D2C30(uint64_t a1)
{
  v2 = sub_2410D3710();

  return MEMORY[0x2821FE720](a1, v2);
}

id ATResponse.originalQuestion.getter()
{
  v1 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ATResponse.originalQuestion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ATResponse.responderHandle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ATResponse.responderHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ATResponse.responderDisplayName.getter()
{
  v1 = v0;
  if (qword_27E5254D8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E526790;
  v17 = qword_27E526790;
  v3 = (v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  v6 = v2;

  v7._countAndFlagsBits = v4;
  v7._object = v5;
  v8 = ContactResolver.contacts(for:)(v7);

  countAndFlagsBits = *v3;
  v10 = v3[1];
  if (!v8)
  {

    return countAndFlagsBits;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return countAndFlagsBits;
  }

  result = sub_2410DF620();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x245CD9A20](0, v8);
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v8 + 32);

    v13 = v12;
LABEL_9:
    v14 = v13;

    v18 = *(v1 + OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter);
    v19 = *(v1 + OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter + 8);
    v15 = v18;
    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = v10;
    countAndFlagsBits = ContactFormatter.displayName(for:shouldUsePhoneNumberAsFallback:lastResortFallback:)(v14, 1, v16)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

id ATResponse.init(originalQuestion:responderHandle:chosenAnswer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v11 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v11 setStyle_];
  *v10 = v11;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = a1;
  v12 = &v4[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v4[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

char *ATResponse.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526830, &qword_2410E5E18);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  v9 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v10 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v10 setStyle_];
  *v9 = v10;
  v9[8] = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410D3710();
  sub_2410DFA10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v5;
    type metadata accessor for ATQuestion(0);
    v22 = 0;
    sub_2410D4584(&qword_27E526160, 255, type metadata accessor for ATQuestion);
    v13 = v19;
    sub_2410DF730();
    v18 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
    *&v3[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = v23;
    LOBYTE(v23) = 1;
    v15 = sub_2410DF700();
    v16 = &v3[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
    *v16 = v15;
    v16[1] = v17;
    type metadata accessor for ATAnswerChoice();
    v22 = 2;
    sub_2410D4584(&qword_27E5260E0, 255, type metadata accessor for ATAnswerChoice);
    sub_2410DF730();
    (*(v12 + 8))(v8, v13);
    *&v3[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = v23;
    v21.receiver = v3;
    v21.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v21, sel_init);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_2410D3710()
{
  result = qword_27E526838;
  if (!qword_27E526838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526838);
  }

  return result;
}

uint64_t ATResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526840, &qword_2410E5E20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2410D3710();
  sub_2410DFA20();
  v11 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v18 = *(v3 + v11);
  LOBYTE(v17) = 0;
  type metadata accessor for ATQuestion(0);
  sub_2410D4584(&qword_27E526540, 255, type metadata accessor for ATQuestion);
  sub_2410DF830();
  if (!v2)
  {
    v13 = (v3 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v17) = 1;

    sub_2410DF800();

    v17 = *(v3 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
    v16[7] = 2;
    type metadata accessor for ATAnswerChoice();
    sub_2410D4584(&qword_27E526130, 255, type metadata accessor for ATAnswerChoice);
    sub_2410DF830();
  }

  return (*(v6 + 8))(v9, v5);
}

id ATResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_24108F4C4(0, &qword_27E525C40, 0x277CBEA90);
  v3 = sub_2410DF440();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2410DEE40();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v9 = sub_24108E3EC();
    sub_2410861F8(v5, v7);
    sub_2410D4584(&qword_27E525D10, v12, type metadata accessor for ATResponse);
    sub_2410DF420();
    if (v17)
    {
      v13 = objc_allocWithZone(ObjectType);
      v14 = sub_2410D4468(v17);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v15 = v14;
      [v9 finishDecoding];

      return v15;
    }

    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v16 = sub_2410DF480();
    sub_2410DEFB0();

    [v9 finishDecoding];
  }

  else
  {
    sub_2410DF3F0();
    sub_24108F4C4(0, &qword_27E525A80, 0x277D86200);
    v10 = sub_2410DF480();
    sub_2410DEFB0();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ATResponse.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  sub_2410D4584(&qword_27E525C80, v3, type metadata accessor for ATResponse);
  sub_2410DF410();
  [v2 finishEncoding];
  v4 = [v2 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2410DF0A0();
    [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void ATResponse.copy(with:)(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = objc_allocWithZone(ObjectType);
  v5 = v1;
  v6 = sub_2410D4468(v5);

  a1[3] = ObjectType;
  *a1 = v6;
}

id ATResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2410D4290@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ATResponse.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

BOOL ATResponse.isApproval.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
  v2 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v3 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  if (v2 == 0xD000000000000025 && 0x80000002410E9CB0 == v3)
  {
    return 1;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id);
  v6 = *(v1 + OBJC_IVAR____TtC5AskTo14ATAnswerChoice_id + 8);
  if (sub_2410DF8D0())
  {
    return 1;
  }

  v7 = v2 == 0xD000000000000028 && 0x80000002410E9CE0 == v3;
  if (v7 || (sub_2410DF8D0() & 1) != 0)
  {
    return 1;
  }

  v9 = OBJC_IVAR____TtC5AskTo14ATAnswerChoice_kind;
  swift_beginAccess();
  return *(v1 + v9) == 1;
}

uint64_t sub_2410D441C()
{
  v0 = sub_2410DF660();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_2410D4468(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_displayNameContactFormatter];
  v5 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v5 setStyle_];
  *v4 = v5;
  v4[8] = 1;
  v6 = OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *&v1[OBJC_IVAR____TtC9AskToCore10ATResponse_originalQuestion] = v7;
  v8 = (a1 + OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v1[OBJC_IVAR____TtC9AskToCore10ATResponse_responderHandle];
  *v11 = v9;
  *(v11 + 1) = v10;
  v12 = *(a1 + OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer);
  *&v1[OBJC_IVAR____TtC9AskToCore10ATResponse_chosenAnswer] = v12;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v13 = v7;

  v14 = v12;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_2410D4584(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2410D4634()
{
  result = qword_27E526848;
  if (!qword_27E526848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526848);
  }

  return result;
}

unint64_t sub_2410D468C()
{
  result = qword_27E526850;
  if (!qword_27E526850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526850);
  }

  return result;
}

unint64_t sub_2410D46E4()
{
  result = qword_27E526858;
  if (!qword_27E526858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526858);
  }

  return result;
}

uint64_t sub_2410D4750(uint64_t *a1, int a2)
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

uint64_t sub_2410D4798(uint64_t result, int a2, int a3)
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

uint64_t sub_2410D4804()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D4904()
{
  *v0;
  *v0;
  *v0;
  sub_2410DF150();
}

uint64_t sub_2410D49F0()
{
  v1 = *v0;
  sub_2410DF990();
  sub_2410DF150();

  return sub_2410DF9F0();
}

uint64_t sub_2410D4AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2410D4C30();
  *a2 = result;
  return result;
}

void sub_2410D4B1C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E65;
  v4 = 0x696C436E776F6E6BLL;
  v5 = 0x80000002410E6D40;
  v6 = 0xD000000000000015;
  v7 = 0xE800000000000000;
  v8 = 0x495041616964656DLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000002410E6D60;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x767265536E6F6369;
    v3 = 0xEC00000073656369;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2410D4BDC()
{
  result = qword_27E526860;
  if (!qword_27E526860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E526860);
  }

  return result;
}

uint64_t sub_2410D4C30()
{
  v0 = sub_2410DF660();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2410D4C7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2410D4CC0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2410D4D28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

AskToCore::Client::Known_optional __swiftcall Client.Known.init(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  v2 = v1;
  if (qword_27E5254E8 != -1)
  {
    countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
    object = bundleIdentifier._object;
    swift_once();
    bundleIdentifier._countAndFlagsBits = countAndFlagsBits;
    bundleIdentifier._object = object;
  }

  v3 = off_27E526870;
  if (!*(off_27E526870 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_2410D81D4(bundleIdentifier._countAndFlagsBits, bundleIdentifier._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 8;
    goto LABEL_8;
  }

  v8 = *(v3[7] + v4);
LABEL_8:
  *v2 = v8;
  return result;
}

id static Client.objCProtocol.getter()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E526868;

  return v0;
}

void static Client.objCProtocol.setter(uint64_t a1)
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E526868;
  qword_27E526868 = a1;
}

uint64_t (*static Client.objCProtocol.modify())()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_2410D4FF0@<X0>(void *a1@<X8>)
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27E526868;
  *a1 = qword_27E526868;

  return v2;
}

void sub_2410D507C(id *a1)
{
  v1 = qword_27E5254E0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27E526868;
  qword_27E526868 = v2;
}

uint64_t Client.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id Client.pid.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (!v1)
  {
    return [*(v0 + 32) processIdentifier];
  }

  v2 = *(v0 + 80);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = (*(v2 + 16))(v1, v2);
  (*(v4 + 8))(v7, v1);
  return v8;
}

uint64_t Client.__allocating_init(connection:)(void *a1)
{
  swift_allocObject();
  v2 = sub_2410D905C(a1);

  return v2;
}

uint64_t Client.init(connection:)(void *a1)
{
  v2 = sub_2410D905C(a1);

  return v2;
}

uint64_t sub_2410D5348(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2410D57AC();
  }

  return result;
}

Swift::Void __swiftcall Client.activate()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = v0;
    if (qword_27E525460 != -1)
    {
      swift_once();
    }

    v2 = sub_2410DEFE0();
    __swift_project_value_buffer(v2, qword_27E530340);

    v3 = sub_2410DEFC0();
    v4 = sub_2410DF400();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v17 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_241085208(0x6574617669746361, 0xEA00000000002928, &v17);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_241085208(*(v1 + 16), *(v1 + 24), &v17);
      _os_log_impl(&dword_24107E000, v3, v4, "%s called for client with id %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDA690](v6, -1, -1);
      MEMORY[0x245CDA690](v5, -1, -1);
    }

    v7 = *(v1 + 32);
    [v7 activate];
    v16[3] = &type metadata for Client.Metadata;
    v16[4] = &protocol witness table for Client.Metadata;
    v8 = swift_allocObject();
    v16[0] = v8;
    v9 = [v7 processIdentifier];
    [v7 auditToken];
    v10 = v17;
    v11 = v18;
    v12 = sub_2410878DC();
    sub_2410D7688(v12, v9, v10, *(&v10 + 1), v11, *(&v11 + 1), &v17);
    v13 = v22;
    *(v8 + 80) = v21;
    *(v8 + 96) = v13;
    *(v8 + 112) = v23;
    v14 = v18;
    *(v8 + 16) = v17;
    *(v8 + 32) = v14;
    v15 = v20;
    *(v8 + 48) = v19;
    *(v8 + 64) = v15;
    swift_beginAccess();
    sub_2410D93EC(v16, v1 + 48);
    swift_endAccess();
    *(v1 + 40) = 1;
  }
}

__n128 Client.Metadata.init(xpcConnection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 processIdentifier];
  [a1 auditToken];
  v5 = v11;
  v6 = v12;
  v7 = sub_2410878DC();
  sub_2410D7688(v7, v4, v5, *(&v5 + 1), v6, *(&v6 + 1), &v11);

  v8 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  *(a2 + 96) = v17;
  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  result = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2410D57AC()
{
  v1 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530340);

  v3 = sub_2410DEFC0();
  v4 = sub_2410DF400();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v8[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_241085208(0x6F63736944646964, 0xEF29287463656E6ELL, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_241085208(*(v1 + 16), *(v1 + 24), v8);
    _os_log_impl(&dword_24107E000, v3, v4, "%s called for client with id %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDA690](v6, -1, -1);
    MEMORY[0x245CDA690](v5, -1, -1);
  }

  *(v1 + 40) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  swift_beginAccess();
  sub_2410D93EC(v8, v1 + 48);
  return swift_endAccess();
}

uint64_t Client.messagesComposeDidFinish(didSend:reply:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_2410DF350();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_2410D61B4(0, 0, v10, &unk_2410E60F8, v12);
}

uint64_t sub_2410D5A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_2410D5B34;

  return sub_2410D5E54(a5);
}

uint64_t sub_2410D5B34()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2410D5CB0;
  }

  else
  {
    v3 = sub_2410D5C48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2410D5C48()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2410D5CB0()
{
  if (qword_27E5254B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2410DEFE0();
  __swift_project_value_buffer(v2, qword_27E530448);
  v3 = v1;
  v4 = sub_2410DEFC0();
  v5 = sub_2410DF3F0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24107E000, v4, v5, "Error notifying client of user did send signal: %@", v8, 0xCu);
    sub_241086184(v9, &qword_27E525DB0, &qword_2410E3870);
    MEMORY[0x245CDA690](v9, -1, -1);
    MEMORY[0x245CDA690](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2410D5E54(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2410D5E78, 0, 0);
}

uint64_t sub_2410D5E78()
{
  v14 = v0;
  if (qword_27E525460 != -1)
  {
    swift_once();
  }

  v1 = sub_2410DEFE0();
  __swift_project_value_buffer(v1, qword_27E530340);
  v2 = sub_2410DEFC0();
  v3 = sub_2410DF3E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241085208(0xD000000000000023, 0x80000002410EA0C0, &v13);
    _os_log_impl(&dword_24107E000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDA690](v5, -1, -1);
    MEMORY[0x245CDA690](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_2410D6098;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000023, 0x80000002410EA0C0, sub_2410D9CA0, v8, v11);
}

uint64_t sub_2410D6098()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_2410A6414;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_24109F1DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410D61B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E526880, &qword_2410E60E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_241082EC4(a3, v27 - v11, &qword_27E526880, &qword_2410E60E8);
  v13 = sub_2410DF350();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_241086184(v12, &qword_27E526880, &qword_2410E60E8);
  }

  else
  {
    sub_2410DF340();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2410DF310();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2410DF120() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_241086184(a3, &qword_27E526880, &qword_2410E60E8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_241086184(a3, &qword_27E526880, &qword_2410E60E8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_2410D6610(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2410DEDB0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2410D6674(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(a2 + 32);
  v20 = *(v6 + 16);
  v20(&v20 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, v9, v5);
  v28 = sub_2410D9CAC;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4CC0;
  v27 = &block_descriptor_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_2410DF4E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5268B0, &qword_2410E63A8);
  swift_dynamicCast();
  v16 = v23;
  v20(v9, v21, v5);
  v17 = swift_allocObject();
  v13(v17 + v11, v9, v5);
  v28 = sub_2410D9D70;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2410D4D28;
  v27 = &block_descriptor_41;
  v18 = _Block_copy(&aBlock);

  [v16 messagesComposeDidFinishWithDidSend:v22 & 1 reply:v18];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_2410D6974(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525F08, &unk_2410E3848);
  return sub_2410DF320();
}

uint64_t Client.deinit()
{
  v1 = *(v0 + 24);

  sub_241086184(v0 + 48, &qword_27E526878, &qword_2410E60E0);
  return v0;
}

uint64_t Client.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_241086184(v0 + 48, &qword_27E526878, &qword_2410E60E0);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id sub_2410D6A5C()
{
  if (qword_27E5254E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27E526868;

  return v0;
}

uint64_t sub_2410D6AE0(void **a1)
{
  v1 = *a1;
  swift_allocObject();
  v2 = sub_2410D905C(v1);

  return v2;
}

uint64_t sub_2410D6B30(_BYTE *a1)
{
  v2 = *a1;
  v3 = "com.apple.asktod";
  v4 = 0xD00000000000002FLL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000024;
    v3 = ".receiveUnsupportedIDSEndpoints";
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = "";
  }

  v7 = *(v1 + 32);
  v8 = sub_2410875F8(v5, v6 | 0x8000000000000000);

  return v8 & 1;
}