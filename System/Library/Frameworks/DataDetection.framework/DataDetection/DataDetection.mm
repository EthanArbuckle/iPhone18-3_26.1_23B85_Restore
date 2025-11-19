uint64_t sub_237F78238(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_237F783F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_237F785B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 33);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 33) = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F787E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78894(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_237F789D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237F78B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78BF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_237F80F44();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_237F78D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237F80F44();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237F78DF8()
{
  v1 = type metadata accessor for DataDetector.Options(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  v4 = *(v24 - 8);
  v5 = *(v4 + 80);
  v23 = *(v4 + 64);
  v6 = v0 + v3;
  v7 = sub_237F80F04();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = v1[5];
  v10 = sub_237F80F94();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[6];
  v13 = sub_237F80F34();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[7];
  v16 = sub_237F80F44();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = (v22 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v5 + 16) & ~v5;
  v20 = *(v0 + v18 + 8);

  (*(v4 + 8))(v0 + v19, v24);

  return MEMORY[0x2821FE8E8](v0, v19 + v23, v2 | v5 | 7);
}

uint64_t sub_237F7A1B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_237F7A298(void *a1, uint64_t *a2)
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

void *sub_237F7A2C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_237F7A2F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_237F7A3E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t DataDetector.Options.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_237F80F04();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for DataDetector.Options(0);
  v4 = v3[5];
  v5 = sub_237F80F94();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = sub_237F80F34();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v3[7];
  v9 = sub_237F80F44();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
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

uint64_t sub_237F7A828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DataDetector.Match.SemanticDetails.PhoneNumber.phoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PhoneNumber.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.fullAddress.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.street.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.city.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.state.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.postalCode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.region.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.PostalAddress.label.getter()
{
  v1 = (v0 + *(type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_237F7ADAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t DataDetector.Match.SemanticDetails.MoneyAmount.amount.getter()
{
  v1 = (v0 + *(type metadata accessor for DataDetector.Match.SemanticDetails.MoneyAmount(0) + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  return result;
}

uint64_t DataDetector.Match.SemanticDetails.FlightNumber.airlineCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataDetector.Match.SemanticDetails.ShipmentTrackingNumber.trackingNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_237F7AF18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_237F7AF80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t DataDetector.Match.SemanticDetails.Measurement.measurement<A>(in:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a1;
  v6.n128_u64[0] = v4;

  return MEMORY[0x28211B708](v5, a2, v6);
}

uint64_t DataDetector.Match.SemanticDetails.AuthorizationCode.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _s13DataDetection0A8DetectorO5MatchV14HighlightStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_237F81114();
  MEMORY[0x2383E3210](v1);
  return sub_237F81134();
}

uint64_t sub_237F7B0C8()
{
  v1 = *v0;
  sub_237F81114();
  MEMORY[0x2383E3210](v1);
  return sub_237F81134();
}

uint64_t DataDetector.Match.SemanticDetails.LegalPersonIdentifier.regionCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(0) + 24);
  v4 = sub_237F80F44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DataDetector.Match.SemanticDetails.PaymentIdentifier.PaymentSystem.hashValue.getter()
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

uint64_t sub_237F7B230()
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

uint64_t sub_237F7B29C()
{
  sub_237F81114();
  MEMORY[0x2383E3210](0);
  return sub_237F81134();
}

uint64_t DataDetector.Match.originalRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t DataDetector.Match.range.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

void *static DataDetector.Match.matchesFromResults(_:types:options:forAPIUse:originalString:rangeAdjuster:)(unint64_t a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for DataDetector.Options(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a2;
  if (a4)
  {
    v21 = *a2 & 0xBBF;
  }

  else
  {
    v21 = *a2;
  }

  sub_237F7B4B0(a3, v19, type metadata accessor for DataDetector.Options);
  v25 = v21;
  v26 = v19;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v22 = sub_237F7DA80(sub_237F7E4BC, v24, a1);
  sub_237F7E4D4(v19);
  return v22;
}

uint64_t sub_237F7B4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_237F7B518(id a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, void *a4@<X3>, _BYTE *a5@<X8>)
{
  v357 = a4;
  v360 = a5;
  v367 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2510, &qword_237F81898);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v349 = (&v347 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v351 = &v347 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v352 = &v347 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v356 = &v347 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v355 = &v347 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v347 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v347 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v350 = &v347 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v354 = &v347 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v358 = &v347 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v353 = &v347 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v347 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v347 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v348 = &v347 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v347 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2508, &qword_237F81890);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v359 = &v347 - v48;
  v49 = sub_237F80ED4();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v347 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a3;
  if (a2 != 1)
  {
    v61 = a1;
    if (a2 == 2 && (v54 & 1) != 0)
    {
      v364 = 0;
      v365 = 0;
      [a1 getPhoneValue:&v365 label:&v364];
      v62 = v365;
      if (v365)
      {
        v63 = v364;
        v64 = sub_237F80FF4();
        v66 = v65;
        if (v63)
        {
          v365 = 0;
          v366 = 0;
          v67 = v62;
          v68 = v63;
          v69 = v67;
          sub_237F80FE4();

          v71 = v365;
          v70 = v366;
          if (!v366)
          {
            v71 = 0;
          }

          goto LABEL_50;
        }

        goto LABEL_49;
      }

LABEL_225:
      v345 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      (*(*(v345 - 8) + 56))(v360, 1, 1, v345);
      goto LABEL_226;
    }

    if (a2 == 3 && (v54 & 4) != 0)
    {
      v72 = [a1 coreResult];
      MatchedString = DDResultGetMatchedString();

      if (MatchedString)
      {
        v74 = MatchedString;
        v75 = [a1 coreResult];
        CountryCode = DDResultGetCountryCode();

        if (CountryCode)
        {
          v77 = CountryCode;
        }

        v364 = 0;
        v365 = 0;
        v362 = 0;
        v363 = 0;
        v361 = 0;
        v78 = [v61 getStreet:&v365 city:&v364 state:&v363 zip:&v362 country:&v361];
        v79 = v361;
        v80 = v362;
        v81 = v363;
        v82 = v364;
        v83 = v365;
        if (v78)
        {
          if (CountryCode)
          {
            sub_237F80FF4();
            v84 = v79;
            v85 = v80;
            v86 = v81;
            v87 = v82;
            v88 = v83;
            v89 = v359;
            sub_237F80F54();
            v90 = sub_237F80F44();
            (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
          }

          else
          {
            v163 = sub_237F80F44();
            (*(*(v163 - 8) + 56))(v359, 1, 1, v163);
            v164 = v79;
            v165 = v80;
            v166 = v81;
            v167 = v82;
            v168 = v83;
          }

          v169 = v74;
          v170 = sub_237F81004();
          v354 = v171;
          v355 = v170;
          if (v83)
          {
            v365 = 0;
            v366 = 0;
            sub_237F80FE4();
            v172 = v365;
            if (!v366)
            {
              v172 = 0;
            }

            v352 = v172;
            v353 = v366;
            if (v82)
            {
LABEL_76:
              v365 = 0;
              v366 = 0;
              sub_237F80FE4();
              v173 = v365;
              if (!v366)
              {
                v173 = 0;
              }

              v350 = v173;
              v351 = v366;
              if (v81)
              {
LABEL_79:
                v365 = 0;
                v366 = 0;
                sub_237F80FE4();
                v174 = v365;
                v175 = v366;
                if (!v366)
                {
                  v174 = 0;
                }

                v349 = v174;
                if (v80)
                {
                  goto LABEL_82;
                }

                goto LABEL_88;
              }

LABEL_87:
              v349 = 0;
              v175 = 0;
              if (v80)
              {
LABEL_82:
                v365 = 0;
                v366 = 0;
                sub_237F80FE4();
                v176 = v366;
                if (v366)
                {
                  v177 = v365;
                }

                else
                {
                  v177 = 0;
                }

LABEL_89:
                v356 = v82;
                v357 = v81;
                v358 = v80;
                if (v79)
                {
                  v365 = 0;
                  v366 = 0;
                  sub_237F80FE4();

                  v178 = v366;
                  v179 = v79;
                  if (v366)
                  {
                    v79 = v365;
                  }

                  else
                  {
                    v79 = 0;
                  }
                }

                else
                {

                  v179 = 0;
                  v178 = 0;
                }

                v180 = type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(0);
                v181 = v360;
                sub_237F7AF80(v359, &v360[*(v180 + 40)], &qword_27DEE2508, &qword_237F81890);
                v182 = v354;
                *v181 = v355;
                v181[1] = v182;
                v183 = v353;
                v181[2] = v352;
                v181[3] = v183;
                v184 = v351;
                v181[4] = v350;
                v181[5] = v184;
                v181[6] = v349;
                v181[7] = v175;
                v181[8] = v177;
                v181[9] = v176;
                v181[10] = v79;
                v181[11] = v178;
                v185 = (v181 + *(v180 + 44));
                v186 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                *v185 = 0;
                v185[1] = 0;
                swift_storeEnumTagMultiPayload();
                (*(*(v186 - 8) + 56))(v181, 0, 1, v186);

                goto LABEL_226;
              }

LABEL_88:
              v177 = 0;
              v176 = 0;
              goto LABEL_89;
            }
          }

          else
          {
            v352 = 0;
            v353 = 0;
            if (v82)
            {
              goto LABEL_76;
            }
          }

          v350 = 0;
          v351 = 0;
          if (v81)
          {
            goto LABEL_79;
          }

          goto LABEL_87;
        }

        v62 = v361;
        v123 = v80;
        v124 = v81;
        v125 = v82;
        v126 = v83;

        v127 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
        (*(*(v127 - 8) + 56))(v360, 1, 1, v127);

LABEL_51:
        goto LABEL_226;
      }

      __break(1u);
      goto LABEL_231;
    }

    if (a2 == 4 && (v54 & 8) != 0)
    {
      v97 = [a1 type];
      v98 = sub_237F80FF4();
      v100 = v99;

      LOBYTE(v361) = 0;
      if (!*MEMORY[0x277D04190])
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      if (v98 == sub_237F80FF4() && v100 == v101)
      {
        v102 = v358;
      }

      else
      {
        v137 = sub_237F81104();

        if (v137)
        {
          v103 = v357;
          v102 = v358;
          goto LABEL_59;
        }

        if (!*MEMORY[0x277D040A0])
        {
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        v200 = sub_237F80FF4();
        v102 = v358;
        if (v98 != v200 || v100 != v201)
        {
          v202 = sub_237F81104();

          v103 = v357;
          if ((v202 & 1) == 0)
          {
            sub_237F7AF18(v357, v41, &qword_27DEE24F0, &qword_237F81878);
            v203 = sub_237F80F04();
            v204 = *(v203 - 8);
            v349 = *(v204 + 48);
            v205 = 0;
            if (v349(v41, 1, v203) != 1)
            {
              v205 = sub_237F80EE4();
              (*(v204 + 8))(v41, v203);
            }

            v206 = type metadata accessor for DataDetector.Options(0);
            sub_237F7AF18(v357 + *(v206 + 20), v23, &qword_27DEE24F8, &qword_237F81880);
            v207 = sub_237F80F94();
            v208 = *(v207 - 8);
            v209 = 0;
            if ((*(v208 + 48))(v23, 1, v207) != 1)
            {
              v209 = sub_237F80F84();
              (*(v208 + 8))(v23, v207);
            }

            v365 = 0;
            v210 = [v61 dateFromReferenceDate:v205 referenceTimezone:v209 timezoneRef:&v365 allDayRef:&v361];

            v211 = v365;
            v359 = v365;
            if (v210)
            {
              sub_237F80EF4();
              v212 = v211;

              (*(v204 + 56))(v38, 0, 1, v203);
            }

            else
            {
              (*(v204 + 56))(v38, 1, 1, v203);
              v289 = v211;
            }

            v146 = v356;
            v102 = v358;
            v290 = v348;
            v291 = v349;
            sub_237F7AF80(v38, v348, &qword_27DEE24F0, &qword_237F81878);
            if (v291(v290, 1, v203) != 1)
            {
              v154 = sub_237F80EE4();
              (*(v204 + 8))(v290, v203);
              v148 = 0;
              v149 = 0;
              v215 = 0;
              v216 = 0;
              LODWORD(v357) = v361;
              if (v154)
              {
                goto LABEL_67;
              }

LABEL_118:
              v217 = sub_237F80F04();
              (*(*(v217 - 8) + 56))(v353, 1, 1, v217);
              v358 = 0;
              v148 = v215;
              v149 = v216;
              goto LABEL_121;
            }

            sub_237F80C34(v290, &qword_27DEE24F0, &qword_237F81878);
            v62 = 0;
            v161 = v359;
LABEL_70:
            v162 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
            (*(*(v162 - 8) + 56))(v360, 1, 1, v162);

            goto LABEL_51;
          }

LABEL_60:
          sub_237F7AF18(v103, v45, &qword_27DEE24F0, &qword_237F81878);
          v138 = sub_237F80F04();
          v139 = *(v138 - 8);
          v140 = 0;
          if ((*(v139 + 48))(v45, 1, v138) != 1)
          {
            v140 = sub_237F80EE4();
            (*(v139 + 8))(v45, v138);
          }

          v141 = type metadata accessor for DataDetector.Options(0);
          sub_237F7AF18(v103 + *(v141 + 20), v25, &qword_27DEE24F8, &qword_237F81880);
          v142 = sub_237F80F94();
          v143 = *(v142 - 8);
          v144 = (*(v143 + 48))(v25, 1, v142);
          v145 = 0;
          v146 = v356;
          if (v144 != 1)
          {
            v145 = sub_237F80F84();
            (*(v143 + 8))(v25, v142);
          }

          v364 = 0;
          v365 = 0;
          v362 = 0;
          v363 = 0;
          v147 = [v61 extractStartDate:&v365 startTimezone:&v364 endDate:&v363 endTimezone:&v362 allDayRef:&v361 referenceDate:v140 referenceTimezone:v145];

          v148 = v362;
          v149 = v363;
          v150 = v364;
          if (v147)
          {
            v151 = v365;
            if (v365)
            {
              v152 = v362;
              v153 = v149;
              v359 = v150;
              v154 = v151;
              LODWORD(v357) = v361;
LABEL_67:
              v155 = sub_237F80F04();
              v156 = *(v155 - 8);
              v157 = *(v156 + 56);
              v157(v102, 1, 1, v155);
              sub_237F80D0C(&qword_27DEE25F8, MEMORY[0x277CC9578]);
              v358 = v154;
              sub_237F810F4();
              if ((*(v156 + 48))(v102, 1, v155) == 1)
              {
                v158 = v353;
                v159 = 1;
              }

              else
              {
                v218 = v148;
                v219 = v149;
                v220 = v353;
                (*(v156 + 32))(v353, v102, v155);
                v158 = v220;
                v149 = v219;
                v148 = v218;
                v159 = 0;
              }

              v157(v158, v159, 1, v155);
LABEL_121:
              v221 = sub_237F80F94();
              v222 = *(v221 - 8);
              v223 = *(v222 + 7);
              v224 = v359;
              if (v359 && (v223(v146, 1, 1, v221), sub_237F80D0C(&qword_27DEE25F0, MEMORY[0x277CC9A70]), sub_237F810F4(), (*(v222 + 6))(v146, 1, v221) != 1))
              {
                v227 = v355;
                (*(v222 + 4))(v355, v146, v221);
                v225 = v227;
                v226 = 0;
              }

              else
              {
                v225 = v355;
                v226 = 1;
              }

              v223(v225, v226, 1, v221);
              if (v149)
              {
                v349 = v222;
                v356 = v148;
                v228 = sub_237F80F04();
                v229 = *(v228 - 8);
                v230 = *(v229 + 56);
                v231 = v149;
                v232 = v350;
                v230(v350, 1, 1, v228);
                sub_237F80D0C(&qword_27DEE25F8, MEMORY[0x277CC9578]);
                v233 = v231;
                sub_237F810F4();
                if ((*(v229 + 48))(v232, 1, v228) == 1)
                {
                  v234 = v354;
                  v235 = 1;
                }

                else
                {
                  v237 = v354;
                  (*(v229 + 32))(v354, v232, v228);
                  v234 = v237;
                  v235 = 0;
                }

                v230(v234, v235, 1, v228);
                v224 = v359;
                v149 = v233;
                v148 = v356;
                v222 = v349;
              }

              else
              {
                v236 = sub_237F80F04();
                (*(*(v236 - 8) + 56))(v354, 1, 1, v236);
              }

              if (v148 && (v238 = v351, v223(v351, 1, 1, v221), sub_237F80D0C(&qword_27DEE25F0, MEMORY[0x277CC9A70]), sub_237F810F4(), (*(v222 + 6))(v238, 1, v221) != 1))
              {
                v239 = v149;
                v243 = v352;
                (*(v222 + 4))(v352, v238, v221);
                v240 = v243;
                v241 = v243;
                v242 = 0;
              }

              else
              {
                v239 = v149;
                v240 = v352;
                v241 = v352;
                v242 = 1;
              }

              v223(v241, v242, 1, v221);
              v244 = v360;
              *v360 = v357;
              v245 = type metadata accessor for DataDetector.Match.SemanticDetails.CalendarEvent(0);
              sub_237F7AF80(v353, &v244[v245[5]], &qword_27DEE24F0, &qword_237F81878);
              sub_237F7AF80(v355, &v244[v245[6]], &qword_27DEE24F8, &qword_237F81880);
              sub_237F7AF80(v354, &v244[v245[7]], &qword_27DEE24F0, &qword_237F81878);
              sub_237F7AF80(v240, &v244[v245[8]], &qword_27DEE24F8, &qword_237F81880);
              v246 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v246 - 8) + 56))(v244, 0, 1, v246);

              goto LABEL_226;
            }

            v213 = v362;
            if (v149)
            {
              v214 = v149;
              v359 = v150;
              LODWORD(v357) = v361;
              v215 = v148;
              v216 = v149;
              goto LABEL_118;
            }

            v62 = v213;
            v161 = v150;
          }

          else
          {
            v62 = v362;
            v160 = v149;
            v161 = v150;
          }

          goto LABEL_70;
        }
      }

      v103 = v357;

LABEL_59:

      goto LABEL_60;
    }

    if (a2 == 6 && (v54 & 0x80) != 0)
    {
      v364 = 0;
      v365 = 0;
      [a1 getMoneyAmount:&v365 currency:&v364];
      v113 = v364;
      if (!v364)
      {
        goto LABEL_225;
      }

      sub_237F80FF4();
      v62 = v113;
      v114 = v360;
      v115 = sub_237F80F74();
      v116 = MEMORY[0x2383E3190](v115, *&v365);
      v118 = v117;
      v120 = v119;

      v121 = &v114[*(type metadata accessor for DataDetector.Match.SemanticDetails.MoneyAmount(0) + 20)];
      *v121 = v116;
      *(v121 + 1) = v118;
      *(v121 + 4) = v120;
      v122 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v122 - 8) + 56))(v114, 0, 1, v122);
      goto LABEL_51;
    }

    v131 = v51;
    v132 = [a1 type];
    v133 = sub_237F80FF4();
    v135 = v134;

    if (!*MEMORY[0x277D041B0])
    {
      goto LABEL_232;
    }

    if (v133 == sub_237F80FF4() && v135 == v136)
    {

      if ((v54 & 0x10) == 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v187 = sub_237F81104();

      if ((v187 & 1) == 0 || (v54 & 0x10) == 0)
      {
LABEL_101:
        if (!*MEMORY[0x277D040D0])
        {
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        if (v133 == sub_237F80FF4() && v135 == v199)
        {

          if ((v54 & 0x20) == 0)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v248 = sub_237F81104();

          if ((v248 & 1) == 0 || (v54 & 0x20) == 0)
          {
LABEL_142:
            if (!*MEMORY[0x277D04168])
            {
LABEL_235:
              __break(1u);
              goto LABEL_236;
            }

            if (v133 == sub_237F80FF4() && v135 == v259)
            {

              if ((v54 & 0x100) == 0)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v260 = sub_237F81104();

              if ((v260 & 1) == 0 || (v54 & 0x100) == 0)
              {
LABEL_161:
                if (v133 == 1937012325 && v135 == 0xE400000000000000 || (sub_237F81104()) && (v54 & 0x200000) != 0)
                {

                  v275 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
LABEL_198:
                  swift_storeEnumTagMultiPayload();
                  v108 = *(*(v275 - 8) + 56);
                  v306 = *MEMORY[0x277D85DE8];
                  v111 = v360;
                  v112 = 0;
                  v110 = v275;
                  goto LABEL_41;
                }

                if (!*MEMORY[0x277D041B8])
                {
LABEL_236:
                  __break(1u);
                  goto LABEL_237;
                }

                if (v133 == sub_237F80FF4() && v135 == v286)
                {

                  if ((v54 & 0x800) == 0)
                  {
LABEL_185:
                    if (!*MEMORY[0x277D04048])
                    {
LABEL_237:
                      __break(1u);
                      goto LABEL_238;
                    }

                    if (v133 == sub_237F80FF4() && v135 == v295)
                    {

                      if ((v54 & 0x40000) == 0)
                      {
                        goto LABEL_199;
                      }
                    }

                    else
                    {
                      v300 = sub_237F81104();

                      if ((v300 & 1) == 0 || (v54 & 0x40000) == 0)
                      {
LABEL_199:
                        if (!*MEMORY[0x277D040B8])
                        {
LABEL_238:
                          __break(1u);
                          return;
                        }

                        if (v133 == sub_237F80FF4() && v135 == v307)
                        {

                          if ((v54 & 0x400000) == 0)
                          {
                            goto LABEL_225;
                          }
                        }

                        else
                        {
                          v308 = sub_237F81104();

                          if ((v308 & 1) == 0 || (v54 & 0x400000) == 0)
                          {
                            goto LABEL_225;
                          }
                        }

                        v364 = 0;
                        v365 = 0;
                        v363 = 0;
                        if (![a1 getDomesticIdentifier:&v365 type:&v364 countryCode:&v363])
                        {
                          goto LABEL_225;
                        }

                        v309 = v365;
                        if (!v365)
                        {
                          goto LABEL_225;
                        }

                        v310 = v364;
                        if (!v364)
                        {
                          goto LABEL_225;
                        }

                        v311 = v363;
                        if (!v363)
                        {
                          goto LABEL_225;
                        }

                        v312 = *MEMORY[0x277D040C0];
                        if (*MEMORY[0x277D040C0])
                        {
                          type metadata accessor for CFString(0);
                          sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString);
                          v313 = v310;
                          v314 = v311;
                          v315 = v313;
                          v316 = v309;
                          v317 = v315;
                          v318 = v316;
                          v319 = v314;
                          v320 = v312;
                          v321 = sub_237F80FA4();

                          if (v321)
                          {
                            v322 = 0;

                            goto LABEL_222;
                          }
                        }

                        else
                        {
                          v323 = v364;
                          v324 = v311;
                          v325 = v323;
                          v326 = v309;
                          v327 = v325;
                          v328 = v326;
                          v329 = v324;
                        }

                        v330 = *MEMORY[0x277D04188];
                        if (!*MEMORY[0x277D04188] || (type metadata accessor for CFString(0), sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString), v331 = v310, v332 = v330, v333 = sub_237F80FA4(), v332, v331, (v333 & 1) == 0))
                        {
                          v334 = *MEMORY[0x277D04148];
                          if (*MEMORY[0x277D04148])
                          {
                            type metadata accessor for CFString(0);
                            sub_237F80D0C(&qword_27DEE25E8, type metadata accessor for CFString);
                            v335 = v334;
                            v336 = sub_237F80FA4();

                            v337 = v311;
                            if (v336)
                            {
                              v322 = 2;
                              goto LABEL_222;
                            }
                          }

                          else
                          {

                            v337 = v310;
                          }

                          goto LABEL_225;
                        }

                        v322 = 1;

LABEL_222:
                        v338 = sub_237F80FF4();
                        v340 = v339;
                        sub_237F80FF4();
                        v341 = type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(0);
                        v342 = v360;
                        v343 = &v360[*(v341 + 24)];
                        sub_237F80F54();

                        *v342 = v338;
                        *(v342 + 1) = v340;
                        v342[16] = v322;
                        v344 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                        swift_storeEnumTagMultiPayload();
                        (*(*(v344 - 8) + 56))(v342, 0, 1, v344);

                        goto LABEL_226;
                      }
                    }

                    v301 = [a1 coreResult];
                    v294 = DDResultCopyAuthCode();

                    if (!v294)
                    {
                      goto LABEL_30;
                    }

LABEL_197:
                    v302 = sub_237F80FF4();
                    v304 = v303;

                    v305 = v360;
                    *v360 = v302;
                    *(v305 + 1) = v304;
                    v275 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                    goto LABEL_198;
                  }
                }

                else
                {
                  v292 = sub_237F81104();

                  if ((v292 & 1) == 0 || (v54 & 0x800) == 0)
                  {
                    goto LABEL_185;
                  }
                }

                v293 = [a1 coreResult];
                v294 = DDResultCopyUPIIdentifierValue();

                if (!v294)
                {
                  goto LABEL_30;
                }

                goto LABEL_197;
              }
            }

            v364 = 0;
            v365 = 0;
            v261 = [a1 getPhysicalUnitValue:&v365 unit:&v364];
            a1 = v364;
            if (v261)
            {
              if (v364)
              {
                v262 = v364;
                v263 = sub_237F80FD4();
                v264 = [v262 componentsSeparatedByString_];

                v265 = sub_237F81034();
                v266 = *(v265 + 16);
                if (v266)
                {
                  v359 = v262;
                  v267 = 0;
                  v57 = MEMORY[0x277D84F90];
                  v364 = MEMORY[0x277D84F90];
LABEL_154:
                  v268 = (v265 + 40 + 16 * v267);
                  while (v266 != v267)
                  {
                    if (v267 >= *(v265 + 16))
                    {
                      __break(1u);
                    }

                    ++v267;
                    v269 = v268 + 2;
                    v270 = *(v268 - 1);
                    v271 = *v268;

                    v272 = sub_237F80FD4();
                    v273 = DDDimensionFromUnitString();

                    v268 = v269;
                    if (v273)
                    {
                      MEMORY[0x2383E3110]();
                      if (*((v364 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v364 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v274 = *((v364 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_237F81044();
                      }

                      sub_237F81054();
                      v57 = v364;
                      goto LABEL_154;
                    }
                  }

                  if (!(v57 >> 62))
                  {
                    v296 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_192:
                    v297 = v359;

                    if (v296 > 0)
                    {
                      v298 = v360;
                      *v360 = v365;
                      *(v298 + 1) = v57;
                      v299 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
                      swift_storeEnumTagMultiPayload();
                      (*(*(v299 - 8) + 56))(v298, 0, 1, v299);

                      goto LABEL_226;
                    }

                    goto LABEL_175;
                  }

LABEL_229:
                  v296 = sub_237F810E4();
                  goto LABEL_192;
                }
              }
            }

            else
            {
              v287 = v364;
            }

LABEL_175:
            v288 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
            (*(*(v288 - 8) + 56))(v360, 1, 1, v288);

            goto LABEL_226;
          }
        }

        v364 = 0;
        v365 = 0;
        [a1 getFlightNumber:&v365 airline:&v364];
        v249 = v365;
        if (v365)
        {
          v250 = v364;
          if (v364)
          {
            v251 = sub_237F80FF4();
            v253 = v252;
            v254 = v250;
            v255 = v249;
            v256 = [v255 integerValue];
            v257 = v360;
            *v360 = v251;
            *(v257 + 1) = v253;
            *(v257 + 2) = v256;
            v258 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v258 - 8) + 56))(v257, 0, 1, v258);

            goto LABEL_226;
          }
        }

        goto LABEL_225;
      }
    }

    v364 = 0;
    v365 = 0;
    [a1 getTrackingNumber:&v365 carrier:&v364];
    v189 = v364;
    v188 = v365;
    if (v365 && v364)
    {
      v190 = a1;
      v191 = v189;
      v192 = v188;
      v193 = v191;
      v194 = v192;
      v195 = [a1 coreResult];
      ShipmentTrackingUrlString = DDResultGetShipmentTrackingUrlString();

      if (ShipmentTrackingUrlString)
      {
        v197 = ShipmentTrackingUrlString;

        sub_237F80FF4();
        v198 = v349;
        sub_237F80EC4();
      }

      else
      {

        v276 = *(v131 + 56);
        v198 = v349;
        v276(v349, 1, 1, v49);
      }

      v277 = sub_237F80FF4();
      v279 = v278;
      v280 = sub_237F80FF4();
      v282 = v281;

      v283 = v360;
      *v360 = v277;
      v283[1] = v279;
      v283[2] = v280;
      v283[3] = v282;
      v284 = type metadata accessor for DataDetector.Match.SemanticDetails.ShipmentTrackingNumber(0);
      sub_237F7AF80(v198, v283 + *(v284 + 24), &qword_27DEE2510, &qword_237F81898);
      v285 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v285 - 8) + 56))(v283, 0, 1, v285);
    }

    else
    {
      v193 = v364;
      v194 = v188;

      v247 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      (*(*(v247 - 8) + 56))(v360, 1, 1, v247);
    }

    goto LABEL_226;
  }

  v55 = v51;
  v56 = [a1 type];
  v57 = sub_237F80FF4();
  v59 = v58;

  if (!*MEMORY[0x277D040C8])
  {
    __break(1u);
    goto LABEL_229;
  }

  if (v57 == sub_237F80FF4() && v59 == v60)
  {

    if ((v54 & 0x200) == 0)
    {
      goto LABEL_29;
    }

LABEL_24:
    v364 = 0;
    v365 = 0;
    [a1 getMailValue:&v365 label:&v364];
    v62 = v365;
    if (v365)
    {
      v63 = v364;
      v64 = sub_237F80FF4();
      v66 = v92;
      if (v63)
      {
        v365 = 0;
        v366 = 0;
        v93 = v62;
        v94 = v63;
        v95 = v93;
        sub_237F80FE4();

        v71 = v365;
        v70 = v366;
        if (!v366)
        {
          v71 = 0;
        }

        goto LABEL_50;
      }

LABEL_49:
      v128 = v62;
      v71 = 0;
      v70 = 0;
LABEL_50:
      v129 = v360;
      *v360 = v64;
      v129[1] = v66;
      v129[2] = v71;
      v129[3] = v70;
      v130 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v130 - 8) + 56))(v129, 0, 1, v130);

      goto LABEL_51;
    }

    goto LABEL_225;
  }

  v91 = sub_237F81104();

  if ((v91 & 1) != 0 && (v54 & 0x200) != 0)
  {
    goto LABEL_24;
  }

LABEL_29:
  if ((v54 & 2) != 0)
  {
    v96 = [a1 url];
    if (!v96)
    {
      goto LABEL_40;
    }

    v104 = v96;
    sub_237F80EB4();

    v105 = v360;
    (*(v55 + 32))(v360, v53, v49);
    v106 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
LABEL_226:
    v346 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_30:
  v96 = 0;
LABEL_40:
  v107 = type metadata accessor for DataDetector.Match.SemanticDetails(v96);
  v108 = *(*(v107 - 8) + 56);
  v109 = *MEMORY[0x277D85DE8];
  v110 = v107;
  v111 = v360;
  v112 = 1;
LABEL_41:

  v108(v111, v112, 1, v110);
}

void *sub_237F7DA80(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v32 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25D0, &qword_237F81F40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v23 - v6;
  v31 = type metadata accessor for DataDetector.Match(0);
  v26 = *(v31 - 8);
  v8 = *(v26 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v30 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v23 - v11;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_237F810E4())
  {
    v13 = 0;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = a3 & 0xC000000000000001;
    v14 = (v26 + 48);
    v15 = MEMORY[0x277D84F90];
    v24 = a3;
    v27 = i;
    while (1)
    {
      if (v29)
      {
        v16 = MEMORY[0x2383E31C0](v13, a3);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(a3 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v33 = v16;
      v32(&v33);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v31) == 1)
      {
        sub_237F80C34(v7, &qword_27DEE25D0, &qword_237F81F40);
      }

      else
      {
        v19 = v25;
        sub_237F80A74(v7, v25, type metadata accessor for DataDetector.Match);
        sub_237F80A74(v19, v30, type metadata accessor for DataDetector.Match);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_237F7F21C(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_237F7F21C(v20 > 1, v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_237F80A74(v30, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for DataDetector.Match);
        a3 = v24;
      }

      ++v13;
      if (v18 == v27)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_237F7DDC8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a7;
  v65 = a4;
  v66 = a6;
  v68 = a5;
  v71 = a2;
  v72 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F8, &qword_237F81880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE24F0, &qword_237F81878);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25E0, &unk_237F81F50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v64 - v20;
  v69 = type metadata accessor for DataDetector.Match.SemanticDetails(0);
  v22 = *(v69 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = [v25 category];
  v27 = [v25 coreResult];
  LODWORD(v28) = DDResultHasProperties();

  v70 = v26;
  if (!v28)
  {
    goto LABEL_23;
  }

  if (v26 - 1 <= 1)
  {
    LOBYTE(v28) = 1;
    goto LABEL_23;
  }

  if (v26 != 4 || (v71 & 8) == 0)
  {
    v32 = [v25 type];
    v33 = sub_237F80FF4();
    v35 = v34;

    result = *MEMORY[0x277D04048];
    if (*MEMORY[0x277D04048])
    {
      if (v33 == sub_237F80FF4() && v35 == v37)
      {
LABEL_21:

        goto LABEL_22;
      }

      v43 = sub_237F81104();

      if (v43)
      {
LABEL_22:

        LOBYTE(v28) = 0;
        goto LABEL_23;
      }

      result = *MEMORY[0x277D040B8];
      if (*MEMORY[0x277D040B8])
      {
        if (v33 != sub_237F80FF4() || v35 != v44)
        {
          v63 = sub_237F81104();

          if (v63)
          {
            LOBYTE(v28) = 0;
          }

          else
          {
            LOBYTE(v28) = 2;
          }

          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v29 = [v25 coreResult];
  sub_237F7AF18(v72, v17, &qword_27DEE24F0, &qword_237F81878);
  v30 = sub_237F80F04();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v17, 1, v30) == 1)
  {
    sub_237F80C34(v17, &qword_27DEE24F0, &qword_237F81878);
    v28 = 0;
  }

  else
  {
    v28 = sub_237F80EE4();
    (*(v31 + 8))(v17, v30);
  }

  v38 = type metadata accessor for DataDetector.Options(0);
  sub_237F7AF18(v72 + *(v38 + 20), v13, &qword_27DEE24F8, &qword_237F81880);
  v39 = sub_237F80F94();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v13, 1, v39) == 1)
  {
    sub_237F80C34(v13, &qword_27DEE24F8, &qword_237F81880);
    v41 = 0;
  }

  else
  {
    v41 = sub_237F80F84();
    (*(v40 + 8))(v13, v39);
  }

  v42 = DDResultIsPastDate() == 0;

  LOBYTE(v28) = 2 * v42;
LABEL_23:
  v45 = [v25 urlificationRange];
  v47 = v46;
  v73 = v71;
  sub_237F7B518(v25, v70, &v73, v72, v21);
  if ((*(v22 + 48))(v21, 1, v69) == 1)
  {
    sub_237F80C34(v21, &qword_27DEE25E0, &unk_237F81F50);
    v48 = type metadata accessor for DataDetector.Match(0);
    return (*(*(v48 - 8) + 56))(a8, 1, 1, v48);
  }

  else
  {
    v49 = v21;
    v50 = v67;
    sub_237F80A74(v49, v67, type metadata accessor for DataDetector.Match.SemanticDetails);
    v51 = v68;
    if (v68)
    {
      v52 = v66;
      if (v66)
      {

        v53 = sub_237F81094();
        if (v54)
        {
          v55 = sub_237F81094();
        }

        else
        {
          v55 = v52(v53);
        }

        v51 = v55;
        v58 = v56;
        v59 = v57;
        sub_237F80C24(v52);
      }

      else
      {
        v51 = sub_237F81094();
        v58 = v60;
        v59 = v61;
      }
    }

    else
    {
      v58 = 0;
      v59 = 1;
    }

    v62 = type metadata accessor for DataDetector.Match(0);
    sub_237F80A74(v50, a8 + *(v62 + 28), type metadata accessor for DataDetector.Match.SemanticDetails);
    *a8 = v45;
    *(a8 + 8) = v47;
    *(a8 + 16) = v51;
    *(a8 + 24) = v58;
    *(a8 + 32) = v59 & 1;
    *(a8 + 33) = v28;
    return (*(*(v62 - 8) + 56))(a8, 0, 1, v62);
  }
}

uint64_t sub_237F7E4D4(uint64_t a1)
{
  v2 = type metadata accessor for DataDetector.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237F7E530(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  v10 = *(v41 - 8);
  v42 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v12 = &v34 - v11;
  v13 = type metadata accessor for DataDetector.Options(0);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  if (a2)
  {
    v19 = a3 & 0xBBF;
  }

  else
  {
    v19 = a3;
  }

  v35 = v19;
  sub_237F7B4B0(v45, &v34 - v17, type metadata accessor for DataDetector.Options);
  v45 = objc_opt_self();
  v36 = a6;
  v37 = a5;
  v43 = sub_237F80FD4();
  v20 = sub_237F80FD4();
  v40 = [v20 length];

  aBlock[0] = v19;
  v39 = sub_237F7F3F4(aBlock, v18);
  sub_237F7B4B0(v18, v16, type metadata accessor for DataDetector.Options);
  v21 = v12;
  v22 = v12;
  v23 = v41;
  (*(v10 + 16))(v21, v44, v41);
  v24 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v10 + 80) + v25 + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  sub_237F80A74(v16, v27 + v24, type metadata accessor for DataDetector.Options);
  v28 = (v27 + v25);
  v29 = v36;
  *v28 = v37;
  v28[1] = v29;
  (*(v10 + 32))(v27 + v26, v22, v23);
  aBlock[4] = sub_237F80ADC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237F7EB5C;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  v31 = v43;
  v32 = v39;
  [v45 scanString:v43 range:0 configuration:v40 completionBlock:{v39, v30}];
  _Block_release(v30);

  return sub_237F7E4D4(v18);
}

uint64_t sub_237F7E8AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DataDetector.Match(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C8, &qword_237F81F38);
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - v16;
  v18 = type metadata accessor for DataDetector.Options(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237F7B4B0(a3, v21, type metadata accessor for DataDetector.Options);
  v33 = a2;
  v34 = v21;
  v35 = a4;
  v36 = a5;
  v37 = 0;
  v38 = 0;
  v22 = sub_237F7DA80(sub_237F80DF8, v32, a1);
  sub_237F7E4D4(v21);
  v23 = v22[2];
  if (v23)
  {
    v24 = *(v31 + 80);
    v29[1] = v22;
    v25 = v22 + ((v24 + 32) & ~v24);
    v26 = *(v31 + 72);
    v27 = (v30 + 8);
    do
    {
      sub_237F7B4B0(v25, v13, type metadata accessor for DataDetector.Match);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
      sub_237F81064();
      (*v27)(v17, v14);
      v25 += v26;
      --v23;
    }

    while (v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30);
  return sub_237F81074();
}

uint64_t sub_237F7EB5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_237F7F6E0();
  v3 = sub_237F81034();

  v2(v3);
}

uint64_t sub_237F7EC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29[0] = a7;
  v29[1] = a6;
  v9 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2518, &qword_237F818A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v29 - v18;
  v20 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v22 = *a1;
  (*(v23 + 16))(v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a3);
  v24 = *(a4 + 40);
  v25 = *(*(*(a4 + 8) + 8) + 8);
  v26 = sub_237F81014();
  v30 = a5;
  v31 = v22;
  v32 = a2;
  v33 = v26;
  v34 = v27;
  type metadata accessor for DataDetector.Match(0);
  (*(v15 + 104))(v19, *MEMORY[0x277D85778], v14);
  sub_237F81084();
}

void *StringProtocol.dataDetectorMatchesPrivateSync(_:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DataDetector.Options(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36[-v16];
  v18 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v20 = *a1;
  (*(v21 + 16))(&v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], v5, a3);
  v22 = *(a4 + 40);
  v23 = *(*(*(a4 + 8) + 8) + 8);
  v24 = sub_237F81014();
  v26 = v25;
  sub_237F7B4B0(a2, v17, type metadata accessor for DataDetector.Options);
  v27 = objc_opt_self();
  v28 = sub_237F80FD4();
  v29 = sub_237F80FD4();
  v30 = [v29 length];

  v43 = v20;
  v31 = sub_237F7F3F4(&v43, v17);
  v32 = [v27 scanString:v28 range:0 configuration:{v30, v31}];

  sub_237F7F6E0();
  v33 = sub_237F81034();

  sub_237F7B4B0(v17, v14, type metadata accessor for DataDetector.Options);
  v37 = v20;
  v38 = v14;
  v39 = v24;
  v40 = v26;
  v41 = 0;
  v42 = 0;
  v34 = sub_237F7DA80(sub_237F80DF8, v36, v33);

  sub_237F7E4D4(v17);
  sub_237F7E4D4(v14);
  return v34;
}

uint64_t sub_237F7F0A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_237F80FA4();
}

uint64_t sub_237F7F110()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_237F80FC4();
}

uint64_t sub_237F7F15C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_237F80FB4();
}

uint64_t sub_237F7F1B4()
{
  sub_237F81114();
  v1 = *v0;
  swift_getWitnessTable();
  sub_237F80FB4();
  return sub_237F81134();
}

size_t sub_237F7F21C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25D8, &qword_237F81F48);
  v10 = *(type metadata accessor for DataDetector.Match(0) - 8);
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
  v15 = *(type metadata accessor for DataDetector.Match(0) - 8);
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

id sub_237F7F3F4(void *a1, uint64_t a2)
{
  v4 = sub_237F80F24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2500, &qword_237F81888);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_237F80F34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:(*a1 & 0xFFFFFFFFFFFFFDFCLL) == 0 passiveIntent:1];
  v19 = type metadata accessor for DataDetector.Options(0);
  sub_237F7AF18(a2 + *(v19 + 24), v12, &qword_27DEE2500, &qword_237F81888);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_237F80C34(v12, &qword_27DEE2500, &qword_237F81888);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v5 + 104))(v8, *MEMORY[0x277CC9638], v4);
    sub_237F80F14();
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    if (v21)
    {
      v22 = sub_237F80FD4();
    }

    else
    {
      v22 = 0;
    }

    [v18 setLanguage_];

    (*(v14 + 8))(v17, v13);
  }

  return v18;
}

unint64_t sub_237F7F6E0()
{
  result = qword_27DEE2520;
  if (!qword_27DEE2520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE2520);
  }

  return result;
}

unint64_t sub_237F7F730()
{
  result = qword_27DEE2528;
  if (!qword_27DEE2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2528);
  }

  return result;
}

unint64_t sub_237F7F788()
{
  result = qword_27DEE2530;
  if (!qword_27DEE2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2530);
  }

  return result;
}

unint64_t sub_237F7F7E0()
{
  result = qword_27DEE2538;
  if (!qword_27DEE2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2538);
  }

  return result;
}

unint64_t sub_237F7F838()
{
  result = qword_27DEE2540;
  if (!qword_27DEE2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2540);
  }

  return result;
}

unint64_t sub_237F7F890()
{
  result = qword_27DEE2548;
  if (!qword_27DEE2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2548);
  }

  return result;
}

unint64_t sub_237F7F8E8()
{
  result = qword_27DEE2550;
  if (!qword_27DEE2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2550);
  }

  return result;
}

unint64_t sub_237F7F940()
{
  result = qword_27DEE2558;
  if (!qword_27DEE2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataDetector.MatchType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataDetector.MatchType(uint64_t result, int a2, int a3)
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

void sub_237F7FA40()
{
  sub_237F8055C(319, &qword_27DEE2560, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2568, MEMORY[0x277CC9A70]);
    if (v1 <= 0x3F)
    {
      sub_237F8055C(319, &qword_27DEE2570, MEMORY[0x277CC9640]);
      if (v2 <= 0x3F)
      {
        sub_237F8055C(319, &qword_27DEE2578, MEMORY[0x277CC9698]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237F7FB8C()
{
  type metadata accessor for _NSRange(319);
  if (v0 <= 0x3F)
  {
    sub_237F7FC58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DataDetector.Match.SemanticDetails(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237F7FC58()
{
  if (!qword_27DEE2580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE2588, &qword_237F81CA8);
    v0 = sub_237F810B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEE2580);
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

uint64_t sub_237F7FD88()
{
  result = type metadata accessor for DataDetector.Match.SemanticDetails.Link(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DataDetector.Match.SemanticDetails.PostalAddress(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DataDetector.Match.SemanticDetails.CalendarEvent(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for DataDetector.Match.SemanticDetails.MoneyAmount(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for DataDetector.Match.SemanticDetails.ShipmentTrackingNumber(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for DataDetector.Match.SemanticDetails.LegalPersonIdentifier(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_237F7FEAC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237F7FF0C()
{
  result = sub_237F80ED4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_237F7FF98(uint64_t a1, int a2)
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

uint64_t sub_237F7FFE4(uint64_t result, int a2, int a3)
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

void sub_237F8005C()
{
  sub_237F80CBC(319, &qword_27DEE2590, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2578, MEMORY[0x277CC9698]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237F80160()
{
  sub_237F8055C(319, &qword_27DEE2560, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_237F8055C(319, &qword_27DEE2568, MEMORY[0x277CC9A70]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_40Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_41Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_237F80344()
{
  sub_237F80F64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_237F80404(uint64_t a1, int a2)
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

uint64_t sub_237F8044C(uint64_t result, int a2, int a3)
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

void sub_237F804C4()
{
  sub_237F8055C(319, &qword_27DEE2598, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237F8055C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237F810B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237F80624()
{
  result = sub_237F80F44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s13DataDetection12DataDetectorO5MatchV14HighlightStyleOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13DataDetection12DataDetectorO5MatchV14HighlightStyleOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237F807F8(uint64_t a1, int a2)
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

uint64_t sub_237F80840(uint64_t result, int a2, int a3)
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

uint64_t _s13DataDetection12DataDetectorO5MatchV15SemanticDetailsO10InvitationVwet_0(unsigned int *a1, int a2)
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

_WORD *_s13DataDetection12DataDetectorO5MatchV15SemanticDetailsO10InvitationVwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_237F80968()
{
  result = qword_27DEE25A0;
  if (!qword_27DEE25A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE25A8, &qword_237F81ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE25A0);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_237F809E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F80A00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_237F80A2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F80A4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_237F80A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237F80ADC(unint64_t a1)
{
  v3 = *(type metadata accessor for DataDetector.Options(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE25C0, &qword_237F81F30) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_237F7E8AC(a1, v7, v1 + v4, v8, v9);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237F80C24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_237F80C34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_237F80CBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_237F80D0C(unint64_t *a1, void (*a2)(uint64_t))
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