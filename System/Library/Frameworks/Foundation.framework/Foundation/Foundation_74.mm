uint64_t FloatingPointFormatStyle.Percent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Percent.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - v8);
  v11 = &v22 + *(v10 + 36) - v8;
  v12 = v3[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *v11 = 0x4059000000000000;
  v11[8] = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0x1FFFFFFFELL;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = 0;
  *(v11 + 18) = 131584;
  *(v11 + 38) = 512;
  v14 = &v11[v3[10]];
  *v14 = 0;
  v14[8] = -1;
  v11[v3[11]] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v6;
  v15 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v11, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v29 = v7;
    v16 = v24;
    v17 = v25;
    v31 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v9;
    *v9 = v30;
    LOBYTE(v30) = 1;
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v26, v27);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v17, v11);
    v19 = v22;
    v20 = v29;
    (*(v22 + 16))(v23, v18, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v19 + 8))(v18, v20);
  }
}

uint64_t FloatingPointFormatStyle.Currency.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FloatingPointFormatStyle.Currency.init(code:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v4 = a4 + *(type metadata accessor for FloatingPointFormatStyle.Currency() + 40);
  v5 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0x1FFFFFFFELL;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 512;
  *(v4 + 74) = 2;
  *(v4 + 78) = 2;
  v9 = v4 + v5[10];
  *v9 = 0;
  *(v9 + 8) = -1;
  *(v4 + v5[11]) = 1;
  *(v4 + v5[12]) = 3;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 73) = v6;
  return result;
}

__n128 FloatingPointFormatStyle.Currency.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v7 + 57) = result;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  if (v7)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v6;
  if (v8)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  *(a3 + *(a2 + 40) + 74) = v12 | v13 | v14;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 78) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  (*(*(a4 - 8) + 16))(a5, v6, a4);
  v12 = a5 + *(a4 + 40);
  v13 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v14 = *(v13 + 36);
  outlined destroy of TermOfAddress?(v12 + v14, &_ss25FloatingPointRoundingRuleOSgMd);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a1, v15);
  result = (*(v16 + 56))(v12 + v14, 0, 1, v15);
  if ((a3 & 1) == 0)
  {
    v18 = v12 + *(v13 + 40);
    *v18 = a2;
    *(v18 + 8) = 1;
  }

  return result;
}

uint64_t FloatingPointFormatStyle.Currency.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  result = (*(*(a1 - 8) + 16))(a2, v4, a1);
  v9 = a2 + *(a1 + 40);
  *v9 = a3;
  *(v9 + 8) = 0;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.presentation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 44)) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 48)) = v6;
  return result;
}

uint64_t static FloatingPointFormatStyle.Currency.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v8 = *a2;
  v9 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = specialized static Locale.== infix(_:_:)(&v9, &v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 || (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for FloatingPointFormatStyle.Currency() + 40);

  return static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t FloatingPointFormatStyle.Currency.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x79636E6572727563;
  }

  return 0x697463656C6C6F63;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized URL.ParseStrategy.ComponentParseStrategy.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Currency.encode(to:)(void *a1)
{
  type metadata accessor for FloatingPointFormatStyle.Currency.CodingKeys();
  swift_getWitnessTable();
  v2 = type metadata accessor for KeyedEncodingContainer();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v10;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v6;
  v12 = v9;
  v13 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  v7 = v11;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v3 + 8))(v5, v2);
}

void FloatingPointFormatStyle.Currency.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v75 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v61 - v8;
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v76, ObjectType, v10);
    v89 = v82;
    v90[0] = v83[0];
    *(v90 + 12) = *(v83 + 12);
    *v86 = v78;
    *&v86[16] = v79;
    v87 = v80;
    v88 = v81;
    v84 = v76;
    v85 = v77;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v84) == 1)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v15 = v76;
    v16 = *(&v76 + 1);
    v17 = *(&v77 + 1);
    v61[0] = v77;
    v62 = *(&v78 + 1);
    v61[1] = v78;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v61[2] = *(&v83[0] + 1);
    v67 = *&v83[0];
    v68 = *&v83[1];
    v69 = BYTE8(v83[1]);
    v70 = BYTE9(v83[1]);
    v71 = BYTE10(v83[1]);
    v72 = BYTE11(v83[1]);
    Hasher._combine(_:)(1u);
    if (v15 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v15 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v16)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v16 + 16));
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = v16 + 40;
        do
        {

          String.hash(into:)();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v17)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v13 = v5;
    v21 = *(&v64 + 1);
    v22 = *(&v63 + 1);
    v14 = v75;
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v23 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v23 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v23, v24, v25, v26, v27, v28, v29);
        v30 = v21;
        if (v22)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v22, v31, v32, v33, v34, v35, v36);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v64)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v30)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v30)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v65)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v65 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v66)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v66)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v37 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v37 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          v38 = v67;
          if (v67)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v38 = v67;
        if (v67)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v38);
          if (v68)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v71;
            if (v71 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v41 & 1;
            }

            v43 = v72;
            Hasher._combine(_:)(v42);
            if (v43 == 2)
            {
              v44 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v44 = v43 & 1;
            }

            Hasher._combine(_:)(v44);
            outlined destroy of TermOfAddress?(&v76, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v30 = v21;
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v12 = 1;
LABEL_5:
  Hasher._combine(_:)(v12);
  v13 = v5;
  v14 = v75;
LABEL_54:
  v45 = v74;
  String.hash(into:)();
  v46 = (v3 + *(v45 + 40));
  if (v46[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = *v46;
    Hasher._combine(_:)(1u);
    if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    MEMORY[0x1865CD090](v48);
  }

  v49 = *(v46 + 2);
  v84 = *(v46 + 1);
  v85 = v49;
  *v86 = *(v46 + 3);
  *&v86[9] = *(v46 + 57);
  specialized Optional<A>.hash(into:)();
  v50 = *(v46 + 73);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = *(v46 + 74);
  if (*(v46 + 74) == 2)
  {
    LOBYTE(v52) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
    MEMORY[0x1865CD060]((v51 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v51) & 1);
    v52 = BYTE3(v51) & 1;
  }

  Hasher._combine(_:)(v52);
  v53 = *(v46 + 78);
  if (v53 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v53 & 1);
  }

  v54 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v46 + v54[9], v9, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v13 + 48))(v9, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = v73;
    (*(v13 + 32))(v73, v9, v14);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v13 + 8))(v55, v14);
  }

  v56 = (v46 + v54[10]);
  v57 = *(v56 + 8);
  if (v57 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v58 = *v56;
    Hasher._combine(_:)(1u);
    if (v57)
    {
      MEMORY[0x1865CD060](1);
      if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      MEMORY[0x1865CD090](v59);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v58);
    }
  }

  MEMORY[0x1865CD060](*(v46 + v54[11]));
  v60 = *(v46 + v54[12]);
  if (v60 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v60);
  }
}

Swift::Int FloatingPointFormatStyle.Currency.hashValue.getter(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v72 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  Hasher.init(_seed:)();
  v9 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v73, ObjectType, v9);
    v83[4] = v79;
    v84[0] = v80[0];
    *(v84 + 12) = *(v80 + 12);
    v83[0] = v75;
    v83[1] = v76;
    v83[2] = v77;
    v83[3] = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v12 = v73;
    v13 = *(&v73 + 1);
    v59[1] = v74;
    v59[2] = v75;
    v60 = *(&v74 + 1);
    v61 = *(&v75 + 1);
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v59[3] = *(&v80[0] + 1);
    v66 = *&v80[0];
    v67 = *&v80[1];
    v68 = BYTE8(v80[1]);
    v69 = BYTE9(v80[1]);
    v70 = BYTE10(v80[1]);
    v14 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v12 == 2)
    {
      v15 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v15 = v12 & 1;
    }

    v71 = v14;
    Hasher._combine(_:)(v15);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = v13 + 40;
        do
        {

          String.hash(into:)();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v60)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v60)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v8;
    v18 = *(&v63 + 1);
    v19 = *(&v62 + 1);
    if (v61)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v20 = v62;
      if (v62)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v20 = v62;
      if (v62)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v20, v21, v22, v23, v24, v25, v26);
        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v19)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v85, v19, v27, v28, v29, v30, v31, v32);
      if (v63)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v33 = v65;
      if (v64)
      {
        v34 = v66;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v66;
        Hasher._combine(_:)(0);
        if (*(&v64 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v35 = v34;
      if (v33)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v36 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v36);
        v37 = v68;
        if (v35)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = v68;
        if (v35)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v85, v35);
          if (v67)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v38 = v70;
            if (v37 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v37 & 1);
            }

            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v71;
            if (v38 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v38 & 1;
            }

            Hasher._combine(_:)(v41);
            if (v40 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v40 & 1;
            }

            Hasher._combine(_:)(v42);
            outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v18)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v11 = v8;
LABEL_56:
  String.hash(into:)();
  v43 = (v1 + *(a1 + 40));
  if (*(v43 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    MEMORY[0x1865CD090](v45);
  }

  v46 = *(v43 + 2);
  v81 = *(v43 + 1);
  v82 = v46;
  v83[0] = *(v43 + 3);
  *(v83 + 9) = *(v43 + 57);
  specialized Optional<A>.hash(into:)();
  v47 = *(v43 + 73);
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  v48 = *(v43 + 74);
  if (*(v43 + 74) == 2)
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
    MEMORY[0x1865CD060]((v48 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v48) & 1);
    v49 = BYTE3(v48) & 1;
  }

  Hasher._combine(_:)(v49);
  v50 = *(v43 + 78);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = v72;
    (*(v4 + 32))(v72, v11, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v52, v3);
  }

  v53 = (v43 + v51[10]);
  v54 = *(v53 + 8);
  if (v54 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = *v53;
    Hasher._combine(_:)(1u);
    if (v54)
    {
      MEMORY[0x1865CD060](1);
      if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      MEMORY[0x1865CD090](v56);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v55);
    }
  }

  MEMORY[0x1865CD060](*(v43 + v51[11]));
  v57 = *(v43 + v51[12]);
  if (v57 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v57);
  }

  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Currency.CodingKeys();
  swift_getWitnessTable();
  v23 = type metadata accessor for KeyedDecodingContainer();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - v4;
  v6 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v8;
  v24 = v6;
  v11 = v20;
  v12 = v21;
  v26 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v10 = v25;
  LOBYTE(v25) = 1;
  *(v10 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v10 + 3) = v13;
  LOBYTE(v25) = 2;
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 8))(v5, v23);
  v14 = v24;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v12, &v10[*(v24 + 40)], type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v15 = v18;
  (*(v18 + 16))(v19, v10, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v15 + 8))(v10, v14);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance FloatingPointFormatStyle<A>.Currency@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FloatingPointFormatStyle.Currency.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t FloatingPointFormatStyle.parseStrategy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return FloatingPointFormatStyle.parseStrategy.getter(a1, a2);
}

{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  swift_getWitnessTable();
  result = type metadata accessor for FloatingPointParseStrategy();
  *(a2 + *(result + 44)) = 1;
  return result;
}

uint64_t static FloatingPointFormatStyle.Attributed.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  *&v65 = a2;
  v2 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v53 - v3;
  v4 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v53 - v5;
  v6 = type metadata accessor for FloatingPointFormatStyle();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v53 - v7);
  v9 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v53 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v53 - v20;
  v23 = *(v22 + 48);
  v62 = v10;
  v24 = *(v10 + 16);
  v24(&v53 - v20, v64, v9, v19);
  (v24)(&v21[v23], v65, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33 = v60;
    (v24)(v17, v21, v9);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v33 + 32))(v8, &v21[v23], v6);
      v47 = *v17;
      v65 = *v8;
      v66 = v65;
      v67 = v47;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v48 = specialized static Locale.== infix(_:_:)(&v67, &v66);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v48)
      {
        v49 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v17 + *(v6 + 36), v8 + *(v6 + 36));
        v50 = *(v33 + 8);
        v50(v8, v6);
        if (v49)
        {
          v50(v17, v6);
          goto LABEL_24;
        }

        v50(v17, v6);
      }

      else
      {
        v51 = *(v33 + 8);
        v51(v8, v6);
        v51(v17, v6);
      }

LABEL_29:
      v43 = 0;
      goto LABEL_30;
    }

    (*(v33 + 8))(v17, v6);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v24)(v14, v21, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v56;
      v26 = v57;
      v28 = &v21[v23];
      v29 = v55;
      (*(v56 + 32))(v55, v28, v57);
      v30 = *v14;
      v65 = *v29;
      v66 = v65;
      v67 = v30;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = specialized static Locale.== infix(_:_:)(&v67, &v66);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v31 & 1) != 0 && (*(v14 + 2) == *(v29 + 2) && *(v14 + 3) == *(v29 + 3) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v14[*(v26 + 40)], &v29[*(v26 + 40)]))
      {
        v32 = *(v27 + 8);
        v32(v29, v26);
        v32(v14, v26);
LABEL_24:
        v43 = 1;
LABEL_30:
        v42 = v62;
        goto LABEL_31;
      }

      v46 = *(v27 + 8);
      v46(v29, v26);
      v46(v14, v26);
      goto LABEL_29;
    }

    v45 = v56;
    v44 = v57;
    goto LABEL_18;
  }

  v14 = v61;
  (v24)(v61, v21, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v45 = v58;
    v44 = v59;
LABEL_18:
    (*(v45 + 8))(v14, v44);
LABEL_19:
    v43 = 0;
    v42 = v63;
    v9 = TupleTypeMetadata2;
    goto LABEL_31;
  }

  v34 = v58;
  v35 = &v21[v23];
  v36 = v54;
  v37 = v59;
  (*(v58 + 32))(v54, v35, v59);
  v38 = *v14;
  v65 = *v36;
  v66 = v65;
  v67 = v38;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39 = specialized static Locale.== infix(_:_:)(&v67, &v66);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v39 & 1) == 0)
  {
    v41 = *(v34 + 8);
    v41(v36, v37);
    v42 = v62;
    goto LABEL_27;
  }

  v40 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(&v14[*(v37 + 36)], v36 + *(v37 + 36));
  v41 = *(v34 + 8);
  v41(v36, v37);
  v42 = v62;
  if ((v40 & 1) == 0)
  {
LABEL_27:
    v41(v14, v37);
    v43 = 0;
    goto LABEL_31;
  }

  v41(v14, v37);
  v43 = 1;
LABEL_31:
  (*(v42 + 8))(v21, v9);
  return v43;
}

uint64_t FloatingPointFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974616F6C66 && a2 == 0xED0000746E696F50;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FloatingPointFormatStyle.Attributed.Style.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x676E6974616F6C66;
  }

  if (a1 == 1)
  {
    return 0x79636E6572727563;
  }

  return 0x746E6563726570;
}

uint64_t FloatingPointFormatStyle.Attributed.Style.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v32 - v5;
  v6 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v32 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v32 - v13;
  v14 = type metadata accessor for FloatingPointFormatStyle();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style.CodingKeys();
  swift_getWitnessTable();
  v20 = type metadata accessor for KeyedEncodingContainer();
  v47 = *(v20 - 8);
  v48 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v16 + 16))(v19, v45, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v39;
      v24 = v40;
      v26 = v41;
      (*(v40 + 32))(v39, v19, v41);
      v52 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v27 = v37;
    }

    else
    {
      v25 = v42;
      v24 = v43;
      v26 = v44;
      (*(v43 + 32))(v42, v19, v44);
      v53 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v27 = v38;
    }

    v28 = v48;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  else
  {
    v24 = v35;
    v26 = v36;
    v25 = v33;
    (*(v35 + 32))(v33, v19, v36);
    v51 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v27 = v34;
    v28 = v48;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  swift_getWitnessTable();
  v30 = v50;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v49 + 8))(v27, v30);
  (*(v24 + 8))(v25, v26);
  return (*(v47 + 8))(v29, v28);
}

uint64_t FloatingPointFormatStyle.Attributed.Style.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v220 = *(v6 - 8);
  v221 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v214 = &v206 - v7;
  v217 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v219 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v9 = &v206 - v8;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v222 = *(v10 - 8);
  v223 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v218 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v215 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v216 = &v206 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v206 - v17;
  v19 = type metadata accessor for FloatingPointFormatStyle();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v206 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v3, a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v9;
      v30 = v9;
      v31 = v217;
      (*(v219 + 32))(v30, v26, v217);
      MEMORY[0x1865CD060](1);
      v32 = *(v29 + 1);
      ObjectType = swift_getObjectType();
      v34 = (*(v32 + 48))(ObjectType, v32);
      v35 = v222;
      v36 = v223;
      if (v34)
      {
        v37 = 1;
LABEL_11:
        Hasher._combine(_:)(v37);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v32 + 64))(ObjectType, v32);
      String.hash(into:)();

      (*(v32 + 464))(&v224, ObjectType, v32);
      v237 = v230;
      v238[0] = v231[0];
      *(v238 + 12) = *(v231 + 12);
      *v234 = v226;
      *&v234[16] = v227;
      v235 = v228;
      v236 = v229;
      v232 = v224;
      v233 = v225;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v232) == 1)
      {
        v37 = 0;
        goto LABEL_11;
      }

      v50 = v224;
      v51 = *(&v224 + 1);
      v52 = *(&v225 + 1);
      v207 = v225;
      v53 = *(&v226 + 1);
      v208 = v226;
      *&v209[8] = v227;
      *&v209[24] = v228;
      v210 = v229;
      v211 = v230;
      *v209 = *(&v231[0] + 1);
      v212 = *&v231[0];
      v214 = *&v231[1];
      v215 = BYTE8(v231[1]);
      v220 = BYTE9(v231[1]);
      LODWORD(v221) = BYTE10(v231[1]);
      v54 = BYTE11(v231[1]);
      Hasher._combine(_:)(1u);
      if (v50 == 2)
      {
        v55 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v55 = v50 & 1;
      }

      Hasher._combine(_:)(v55);
      if (v51)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v51 + 16));
        v69 = *(v51 + 16);
        if (v69)
        {
          v70 = v51 + 40;
          do
          {

            String.hash(into:)();

            v70 += 16;
            --v69;
          }

          while (v69);
        }

        LODWORD(v213) = v54;
        if (v52)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v213) = v54;
        if (v52)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v75 = *(&v211 + 1);
      v76 = *&v209[8];
      if (v53)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v35 = v222;
      v36 = v223;
      v31 = v217;
      v77 = *&v209[24];
      if (v76)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v76, v78, v79, v80, v81, v82, v83);
        v84 = *&v209[16];
        if (*&v209[16])
        {
          goto LABEL_51;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v84 = *&v209[16];
        if (*&v209[16])
        {
LABEL_51:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v84, v85, v86, v87, v88, v89, v90);
          if (v77)
          {
LABEL_52:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_56;
          }

LABEL_55:
          Hasher._combine(_:)(0);
LABEL_56:
          v91 = v75;
          if (*&v209[32])
          {
            v92 = v214;
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v210)
            {
LABEL_58:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
              _CFObject.hash(into:)();
              goto LABEL_61;
            }
          }

          else
          {
            v92 = v214;
            Hasher._combine(_:)(0);
            if (v210)
            {
              goto LABEL_58;
            }
          }

          Hasher._combine(_:)(0);
LABEL_61:
          v93 = v92;
          v94 = v91;
          if (*(&v210 + 1))
          {
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v211)
            {
              goto LABEL_63;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if (v211)
            {
LABEL_63:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
              _CFObject.hash(into:)();
              v95 = v220;
              if (v94)
              {
                goto LABEL_64;
              }

              goto LABEL_69;
            }
          }

          Hasher._combine(_:)(0);
          v95 = v220;
          if (v94)
          {
LABEL_64:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v94);
            v96 = v212;
            if (v212)
            {
              goto LABEL_65;
            }

            goto LABEL_70;
          }

LABEL_69:
          Hasher._combine(_:)(0);
          v96 = v212;
          if (v212)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v96);
            if (v93)
            {
LABEL_66:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
LABEL_72:
              v97 = v215;
              if (v215 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v97 & 1);
              }

              v98 = v213;
              if (v95 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v95 & 1);
              }

              v99 = v221;
              if (v221 == 2)
              {
                v100 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v100 = v99 & 1;
              }

              Hasher._combine(_:)(v100);
              if (v98 == 2)
              {
                v101 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v101 = v98 & 1;
              }

              Hasher._combine(_:)(v101);
              outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
              String.hash(into:)();
              v102 = &v29[*(v31 + 40)];
              if (v102[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v103 = *v102;
                Hasher._combine(_:)(1u);
                if ((v103 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v104 = v103;
                }

                else
                {
                  v104 = 0;
                }

                MEMORY[0x1865CD090](v104);
              }

              v105 = *(v102 + 2);
              v232 = *(v102 + 1);
              v233 = v105;
              *v234 = *(v102 + 3);
              *&v234[9] = *(v102 + 57);
              specialized Optional<A>.hash(into:)();
              v106 = v102[73];
              if (v106 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v106 & 1);
              }

              v107 = *(v102 + 74);
              if (*(v102 + 74) == 2)
              {
                LOBYTE(v108) = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v107 & 1);
                MEMORY[0x1865CD060]((v107 >> 8) & 1);
                MEMORY[0x1865CD060](WORD1(v107) & 1);
                v108 = BYTE3(v107) & 1;
              }

              Hasher._combine(_:)(v108);
              v109 = v102[78];
              if (v109 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v109 & 1);
              }

              v223 = v29;
              v110 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
              v111 = v216;
              outlined init with copy of FloatingPointRoundingRule?(&v102[v110[9]], v216, &_ss25FloatingPointRoundingRuleOSgMd);
              v112 = v31;
              if ((*(v35 + 48))(v111, 1, v36) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v113 = v218;
                (*(v35 + 32))(v218, v111, v36);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v35 + 8))(v113, v36);
              }

              v114 = &v102[v110[10]];
              v115 = v114[8];
              if (v115 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v116 = *v114;
                Hasher._combine(_:)(1u);
                if (v115)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v117 = v116;
                  }

                  else
                  {
                    v117 = 0;
                  }

                  MEMORY[0x1865CD090](v117);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v116);
                }
              }

              MEMORY[0x1865CD060](v102[v110[11]]);
              v118 = v102[v110[12]];
              if (v118 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v118);
              }

              return (*(v219 + 8))(v223, v112);
            }

LABEL_71:
            Hasher._combine(_:)(0);
            goto LABEL_72;
          }

LABEL_70:
          Hasher._combine(_:)(0);
          if (v93)
          {
            goto LABEL_66;
          }

          goto LABEL_71;
        }
      }

      Hasher._combine(_:)(0);
      if (v77)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    }

    v42 = v214;
    (*(v220 + 32))(v214, v26, v221);
    MEMORY[0x1865CD060](2);
    v43 = *(v42 + 1);
    v44 = swift_getObjectType();
    v45 = (*(v43 + 48))(v44, v43);
    v47 = v222;
    v46 = v223;
    if (v45)
    {
      v48 = 1;
LABEL_16:
      Hasher._combine(_:)(v48);
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v43 + 64))(v44, v43);
    String.hash(into:)();

    (*(v43 + 464))(&v224, v44, v43);
    v237 = v230;
    v238[0] = v231[0];
    *(v238 + 12) = *(v231 + 12);
    *v234 = v226;
    *&v234[16] = v227;
    v235 = v228;
    v236 = v229;
    v232 = v224;
    v233 = v225;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v232) == 1)
    {
      v48 = 0;
      goto LABEL_16;
    }

    v62 = v224;
    v63 = *(&v224 + 1);
    v64 = *(&v225 + 1);
    v206 = v225;
    v65 = *(&v226 + 1);
    v207 = v226;
    *v209 = v227;
    *&v209[16] = v228;
    *&v209[32] = v229;
    v66 = v230;
    *(&v210 + 1) = *(&v229 + 1);
    *(&v211 + 1) = *(&v230 + 1);
    v208 = *(&v231[0] + 1);
    v212 = *&v231[0];
    v213 = *&v231[1];
    v216 = BYTE8(v231[1]);
    v217 = BYTE9(v231[1]);
    v67 = BYTE10(v231[1]);
    LODWORD(v219) = BYTE11(v231[1]);
    Hasher._combine(_:)(1u);
    if (v62 == 2)
    {
      v68 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v68 = v62 & 1;
    }

    *&v211 = v66;
    Hasher._combine(_:)(v68);
    if (v63)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v63 + 16));
      v73 = *(v63 + 16);
      if (v73)
      {
        v74 = v63 + 40;
        do
        {

          String.hash(into:)();

          v74 += 16;
          --v73;
        }

        while (v73);
      }

      if (v64)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v64)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_187;
      }
    }

    Hasher._combine(_:)(0);
LABEL_187:
    v47 = v222;
    v46 = v223;
    v163 = *&v209[24];
    LODWORD(v210) = v67;
    if (v65)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v164 = v216;
    v165 = *v209;
    v166 = *&v209[8];
    if (*v209)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v165, v167, v168, v169, v170, v171, v172);
      if (v166)
      {
        goto LABEL_192;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v166)
      {
LABEL_192:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v166, v173, v174, v175, v176, v177, v178);
        if (*&v209[16])
        {
          goto LABEL_193;
        }

        goto LABEL_197;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v209[16])
    {
LABEL_193:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v179 = v212;
      if (v163)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      Hasher._combine(_:)(0);
LABEL_199:
      v180 = v179;
      if (*&v209[32])
      {
        v181 = v164;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v210 + 1))
        {
LABEL_201:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_204;
        }
      }

      else
      {
        v181 = v164;
        Hasher._combine(_:)(0);
        if (*(&v210 + 1))
        {
          goto LABEL_201;
        }
      }

      Hasher._combine(_:)(0);
LABEL_204:
      v182 = v181;
      v183 = v180;
      if (v211)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v184 = *(&v211 + 1);
        if (*(&v211 + 1))
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v184);
          goto LABEL_209;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v184 = *(&v211 + 1);
        if (*(&v211 + 1))
        {
          goto LABEL_206;
        }
      }

      Hasher._combine(_:)(0);
LABEL_209:
      v185 = v210;
      v186 = v217;
      if (v183)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v183);
        if (v213)
        {
LABEL_211:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_214;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v213)
        {
          goto LABEL_211;
        }
      }

      Hasher._combine(_:)(0);
LABEL_214:
      v187 = v219;
      if (v182 == 2)
      {
        Hasher._combine(_:)(0);
        if (v186 != 2)
        {
          goto LABEL_216;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v182 & 1);
        if (v186 != 2)
        {
LABEL_216:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v186 & 1);
          if (v185 != 2)
          {
LABEL_217:
            Hasher._combine(_:)(1u);
            v188 = v185 & 1;
LABEL_221:
            Hasher._combine(_:)(v188);
            if (v187 == 2)
            {
              v189 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v189 = v187 & 1;
            }

            Hasher._combine(_:)(v189);
            outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_225:
            v190 = &v42[*(v221 + 36)];
            if (v190[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v191 = *v190;
              Hasher._combine(_:)(1u);
              if ((v191 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v192 = v191;
              }

              else
              {
                v192 = 0;
              }

              MEMORY[0x1865CD090](v192);
            }

            v193 = *(v190 + 2);
            v232 = *(v190 + 1);
            v233 = v193;
            *v234 = *(v190 + 3);
            *&v234[9] = *(v190 + 57);
            specialized Optional<A>.hash(into:)();
            v194 = v190[73];
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v194 & 1);
            }

            v195 = *(v190 + 37);
            v196 = v195 | (v190[76] << 16);
            if (v195 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v196 & 1);
              MEMORY[0x1865CD060]((v196 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v196) & 1);
            }

            v197 = v190[77];
            if (v197 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v197 & 1);
            }

            v198 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v199 = v215;
            outlined init with copy of FloatingPointRoundingRule?(&v190[v198[9]], v215, &_ss25FloatingPointRoundingRuleOSgMd);
            if ((*(v47 + 48))(v199, 1, v46) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v200 = v218;
              (*(v47 + 32))(v218, v199, v46);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v47 + 8))(v200, v46);
            }

            v201 = &v190[v198[10]];
            v202 = v201[8];
            if (v202 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v203 = *v201;
              Hasher._combine(_:)(1u);
              if (v202)
              {
                MEMORY[0x1865CD060](1);
                if ((v203 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v204 = v203;
                }

                else
                {
                  v204 = 0;
                }

                MEMORY[0x1865CD090](v204);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v203);
              }
            }

            v205 = v190[v198[11]];
            if (v205 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v205);
            }

            return (*(v220 + 8))(v42, v221);
          }

LABEL_220:
          v188 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      if (v185 != 2)
      {
        goto LABEL_217;
      }

      goto LABEL_220;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    v179 = v212;
    if (v163)
    {
      goto LABEL_194;
    }

    goto LABEL_198;
  }

  v220 = v18;
  v221 = v20;
  (*(v20 + 32))(v22, v26, v19);
  MEMORY[0x1865CD060](0);
  v38 = *(v22 + 1);
  v39 = swift_getObjectType();
  if ((*(v38 + 48))(v39, v38))
  {
    Hasher._combine(_:)(1u);
    v41 = v222;
    v40 = v223;
    goto LABEL_155;
  }

  Hasher._combine(_:)(0);
  (*(v38 + 64))(v39, v38);
  String.hash(into:)();

  (*(v38 + 464))(&v224, v39, v38);
  v237 = v230;
  v238[0] = v231[0];
  *(v238 + 12) = *(v231 + 12);
  *v234 = v226;
  *&v234[16] = v227;
  v235 = v228;
  v236 = v229;
  v232 = v224;
  v233 = v225;
  v49 = _s10Foundation17LocalePreferencesVSgWOg(&v232);
  v41 = v222;
  v40 = v223;
  if (v49 == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_155;
  }

  v56 = v224;
  v57 = *(&v224 + 1);
  v58 = *(&v225 + 1);
  v207 = v225;
  v59 = *(&v226 + 1);
  v208 = v226;
  *&v209[8] = v227;
  *&v209[24] = v228;
  v210 = v229;
  v211 = v230;
  *v209 = *(&v231[0] + 1);
  v212 = *&v231[0];
  v214 = *&v231[1];
  v215 = BYTE8(v231[1]);
  v216 = BYTE9(v231[1]);
  LODWORD(v217) = BYTE10(v231[1]);
  v60 = BYTE11(v231[1]);
  Hasher._combine(_:)(1u);
  if (v56 == 2)
  {
    v61 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v61 = v56 & 1;
  }

  v219 = v19;
  Hasher._combine(_:)(v61);
  if (v57)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v57 + 16));
    v71 = *(v57 + 16);
    if (v71)
    {
      v72 = v57 + 40;
      do
      {

        String.hash(into:)();

        v72 += 16;
        --v71;
      }

      while (v71);
    }

    LODWORD(v213) = v60;
    if (v58)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    LODWORD(v213) = v60;
    if (v58)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v120 = *&v209[8];
  v121 = *(&v211 + 1);
  if (v59)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v41 = v222;
  v40 = v223;
  v19 = v219;
  if (v120)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v120, v122, v123, v124, v125, v126, v127);
    v128 = *&v209[16];
    if (*&v209[16])
    {
      goto LABEL_122;
    }

LABEL_125:
    Hasher._combine(_:)(0);
    if (*&v209[24])
    {
      goto LABEL_123;
    }

    goto LABEL_126;
  }

  Hasher._combine(_:)(0);
  v128 = *&v209[16];
  if (!*&v209[16])
  {
    goto LABEL_125;
  }

LABEL_122:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v128, v129, v130, v131, v132, v133, v134);
  if (*&v209[24])
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_127;
  }

LABEL_126:
  Hasher._combine(_:)(0);
LABEL_127:
  v135 = v121;
  if (*&v209[32])
  {
    v136 = v214;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v210)
    {
LABEL_129:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_132;
    }
  }

  else
  {
    v136 = v214;
    Hasher._combine(_:)(0);
    if (v210)
    {
      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
LABEL_132:
  v137 = v136;
  if (*(&v210 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v211)
    {
      goto LABEL_134;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v211)
    {
LABEL_134:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v135)
      {
        goto LABEL_135;
      }

      goto LABEL_140;
    }
  }

  Hasher._combine(_:)(0);
  if (v135)
  {
LABEL_135:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v135);
    v138 = v212;
    if (v212)
    {
      goto LABEL_136;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    v139 = v216;
    if (v137)
    {
      goto LABEL_137;
    }

    goto LABEL_142;
  }

LABEL_140:
  Hasher._combine(_:)(0);
  v138 = v212;
  if (!v212)
  {
    goto LABEL_141;
  }

LABEL_136:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v138);
  v139 = v216;
  if (v137)
  {
LABEL_137:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_143;
  }

LABEL_142:
  Hasher._combine(_:)(0);
LABEL_143:
  v140 = v215;
  if (v215 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v140 & 1);
  }

  v141 = v217;
  if (v139 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v139 & 1);
    if (v141 != 2)
    {
      goto LABEL_148;
    }

LABEL_150:
    v142 = 0;
    goto LABEL_151;
  }

  Hasher._combine(_:)(0);
  if (v141 == 2)
  {
    goto LABEL_150;
  }

LABEL_148:
  Hasher._combine(_:)(1u);
  v142 = v141 & 1;
LABEL_151:
  Hasher._combine(_:)(v142);
  v143 = v213;
  if (v213 == 2)
  {
    v144 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v144 = v143 & 1;
  }

  Hasher._combine(_:)(v144);
  outlined destroy of TermOfAddress?(&v224, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_155:
  v145 = &v22[*(v19 + 36)];
  if (v145[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v146 = *v145;
    Hasher._combine(_:)(1u);
    if ((v146 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v147 = v146;
    }

    else
    {
      v147 = 0;
    }

    MEMORY[0x1865CD090](v147);
  }

  v148 = *(v145 + 2);
  v232 = *(v145 + 1);
  v233 = v148;
  *v234 = *(v145 + 3);
  *&v234[9] = *(v145 + 57);
  specialized Optional<A>.hash(into:)();
  v149 = v145[73];
  if (v149 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v149 & 1);
  }

  v150 = *(v145 + 37);
  v151 = v150 | (v145[76] << 16);
  if (v150 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v151 & 1);
    MEMORY[0x1865CD060]((v151 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v151) & 1);
  }

  v152 = v145[77];
  if (v152 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v152 & 1);
  }

  v153 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v154 = v220;
  outlined init with copy of FloatingPointRoundingRule?(&v145[v153[9]], v220, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v41 + 48))(v154, 1, v40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v155 = v19;
    v156 = v218;
    (*(v41 + 32))(v218, v154, v40);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v157 = v156;
    v19 = v155;
    (*(v41 + 8))(v157, v40);
  }

  v158 = &v145[v153[10]];
  v159 = v158[8];
  if (v159 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v160 = *v158;
    Hasher._combine(_:)(1u);
    if (v159)
    {
      MEMORY[0x1865CD060](1);
      if ((v160 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v161 = v160;
      }

      else
      {
        v161 = 0;
      }

      MEMORY[0x1865CD090](v161);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v160);
    }
  }

  v162 = v145[v153[11]];
  if (v162 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v162);
  }

  return (*(v221 + 8))(v22, v19);
}

Swift::Int FloatingPointFormatStyle.Attributed.Style.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  FloatingPointFormatStyle.Attributed.Style.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v53 - v11;
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for KeyedDecodingContainer();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v60 = a2;
  v64 = a3;
  v62 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v56 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    WitnessTable = v19;
    v68 = v16;
    v53 = v22;
    v54 = v25;
    v28 = v63;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = _ArrayBuffer.requestNativeBuffer()();
    if (!v30)
    {
      v74 = v29;
      type metadata accessor for Array();
      swift_getWitnessTable();
      v30 = _copyCollectionToContiguousArray<A>(_:)();
    }

    v31 = v30;

    v32 = (2 * *(v31 + 16)) | 1;
    v70 = v31;
    v71 = v31 + 32;
    v72 = 0;
    v73 = v32;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    if (v74 == 3 || v72 != v73 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v41 = v62;
      v42 = v66;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v65 + 8))(v14, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v74)
      {
        if (v74 == 1)
        {
          LOBYTE(v74) = 1;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v33 = v58;
          v34 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v35 = v65;
          v36 = v61;
          type metadata accessor for FloatingPointFormatStyle.Currency();
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v28 + 8))(v33, v36);
          (*(v35 + 8))(v14, v34);
          swift_unknownObjectRelease();
          v37 = WitnessTable;
        }

        else
        {
          LOBYTE(v74) = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v45 = v59;
          v46 = v66;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v65;
          v48 = v61;
          type metadata accessor for FloatingPointFormatStyle.Percent();
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v28 + 8))(v45, v48);
          (*(v47 + 8))(v14, v46);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        v38 = v62;
      }

      else
      {
        LOBYTE(v74) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v44 = v57;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for FloatingPointFormatStyle();
        swift_getWitnessTable();
        v37 = v53;
        v49 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v50 = v65;
        (*(v28 + 8))(v44, v49);
        (*(v50 + 8))(v14, v66);
        swift_unknownObjectRelease();
        v38 = v62;
      }

      swift_storeEnumTagMultiPayload();
      v51 = *(v56 + 32);
      v52 = v54;
      v51(v54, v37, v38);
      v51(v55, v52, v38);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FloatingPointFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v458 = a3;
  v547 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v459 = type metadata accessor for FloatingPointFormatStyle.Percent();
  *&v457 = *(v459 - 8);
  MEMORY[0x1EEE9AC00](v459);
  v453 = &v449 - v7;
  v8 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v455 = *(v8 - 8);
  v456 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v454 = &v449 - v9;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v449 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FloatingPointFormatStyle();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v449 - v16;
  *&v475 = v5;
  *&v479 = v6;
  v18 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v449 - v20;
  (*(v22 + 16))(&v449 - v20, v3, v18, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *&v478 = a1;
  *&v477 = v10;
  *&v476 = v13;
  if (!EnumCaseMultiPayload)
  {
    v469 = v15;
    (*(v15 + 32))(v17, v21, v14);
    v452 = v14;
    v36 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v25 = v42;
    v43 = *(v17 + 1);
    v468 = v17;
    ObjectType = swift_getObjectType();
    v45 = (*(v43 + 472))(ObjectType, v43);
    v27 = v45;
    v41 = v46;
    if (one-time initialization token for cache != -1)
    {
      v45 = swift_once();
    }

    v28 = *algn_1EA7B1D98;
    v474 = static ICUNumberFormatter.cache;
    *&v508 = v36;
    *(&v508 + 1) = v25;
    *&v509 = v27;
    *(&v509 + 1) = v41;
    MEMORY[0x1EEE9AC00](v45);
    *(&v449 - 2) = &v508;
    os_unfair_lock_lock((v28 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v28 + 16, &v513);
    os_unfair_lock_unlock((v28 + 24));
    v47 = v513;
    if (v513 != 1)
    {
LABEL_226:

      if (!v47)
      {
        (*(v469 + 8))(v468, v452);
        goto LABEL_282;
      }

      v312 = v476;
      v313 = v475;
      (*(v477 + 16))(v476, v478, v475);
      v314 = specialized BinaryFloatingPoint.init<A>(_:)(v312, v313);
      v315 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v314, 0, 0x100000000);
      v318 = v452;
      v320 = v468;
      v319 = v469;
      if (v316)
      {
        v25 = v316;
        v321 = v317;
        v454 = v47;
        v322 = v315;

        v466 = v322;
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(v527, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v513);
        v323 = v513;
        v465 = *(v321 + 16);
        if (v465)
        {
          v28 = 0;
          v464 = (v321 + 32);
          v455 = "Foundation.NumberFormatSymbol";
          v456 = "ecified format, such as ";
          v457 = xmmword_1812187D0;
          v462 = v25;
          v463 = v321;
          while (1)
          {
            if (v28 >= *(v321 + 16))
            {
              goto LABEL_291;
            }

            v472 = v28;
            v28 = LODWORD(v464[3 * v28]);
            v324 = v466;
            *&v508 = v466;
            *(&v508 + 1) = v25;
            lazy protocol witness table accessor for type String and conformance String();

            v27 = MEMORY[0x1E69E6158];
            v325 = String.Index.init<A>(utf16Offset:in:)();
            *&v508 = v324;
            *(&v508 + 1) = v25;

            v326 = String.Index.init<A>(utf16Offset:in:)();
            if (v326 >> 14 < v325 >> 14)
            {
              break;
            }

            v327 = v326;

            _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v325, v327, v323, &v508);
            if (*(&v509 + 1) == 2)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
            }

            v524 = MEMORY[0x1E69E7CC8];
            v478 = v508;
            v479 = v509;
            v476 = v511;
            v477 = v510;
            if (v28 <= 5)
            {
              switch(v28)
              {
                case 0:
                  v329 = 0;
                  goto LABEL_251;
                case 1:
                  v329 = 1;
LABEL_251:
                  v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
                  v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
                  LOBYTE(v499) = v329;
                  v504 = v457;
                  LOBYTE(v505) = 1;
                  v506 = 0;
                  v331 = v455 | 0x8000000000000000;
                  v330 = 0xD00000000000001BLL;
LABEL_252:
                  specialized AttributedString._AttributeStorage.subscript.setter(&v499, v330, v331);
                  break;
                case 2:
                  v328 = 2;
                  goto LABEL_249;
              }
            }

            else
            {
              if (v28 <= 7)
              {
                if (v28 == 6)
                {
                  v328 = 0;
                }

                else
                {
                  v328 = 3;
                }

LABEL_249:
                v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
                v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
                LOBYTE(v499) = v328;
                v504 = v457;
                LOBYTE(v505) = 1;
                v506 = 0;
                v330 = 0xD00000000000001DLL;
                v331 = v456 | 0x8000000000000000;
                goto LABEL_252;
              }

              if (v28 == 8)
              {
                v328 = 4;
                goto LABEL_249;
              }

              if (v28 == 10)
              {
                v328 = 1;
                goto LABEL_249;
              }
            }

            v27 = *(&v524 + 1);
            v332 = v524;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v333 = *(v323 + 40);
              v483 = *(v323 + 24);
              v484 = v333;
              v485 = *(v323 + 56);
              v334 = *(v323 + 72);
              v335 = *(v323 + 80);
              v336 = *(v323 + 88);
              v337 = *(v323 + 96);
              type metadata accessor for AttributedString.Guts();
              swift_allocObject();
              outlined init with copy of BigString(&v483, &v499);
              swift_unknownObjectRetain();
              v338 = AttributedString.Guts.init(string:runs:)(&v483, v334, v335, v336, v337);

              v323 = v338;
            }

            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v323 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v339 = *(v323 + 40);
            v340 = *(v323 + 24);
            v533 = *(v323 + 56);
            v531 = v340;
            v532 = v339;
            v341 = BigString.startIndex.getter();
            v28 = v342;
            v25 = v343;
            v345 = v344;
            v346 = BigString.endIndex.getter();
            v499 = v323;
            v500 = v341;
            v501 = v28;
            v502 = v25;
            v503 = v345;
            *&v504 = v346;
            *(&v504 + 1) = v347;
            v505 = v348;
            v506 = v349;
            v507 = 0;

            outlined destroy of AttributedString.CharacterView(&v499);
            v488 = v478;
            v489 = v479;
            v490 = v477;
            v491 = v476;
            v350 = *(v323 + 40);
            v544 = *(v323 + 24);
            v545 = v350;
            v546 = *(v323 + 56);
            swift_unknownObjectRetain();

            BigString.UnicodeScalarView.subscript.getter();
            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(&v513);
            v351 = v516;
            v352 = v517;
            *&v479 = v518;
            *&v478 = v519;
            *&v477 = v520;
            *&v476 = v521;
            v474 = v523;
            *&v475 = v522;
            if (one-time initialization token for currentIdentity != -1)
            {
              swift_once();
            }

            v353 = static AttributedString.currentIdentity;
            os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
            v354 = *(v353 + 16);
            v68 = __OFADD__(v354, 1);
            v355 = (v354 + 1);
            if (v68)
            {
              goto LABEL_295;
            }

            v471 = v355;
            *(v353 + 16) = v355;
            os_unfair_lock_unlock((v353 + 24));
            BigString.init()();
            *&v493 = 0;
            MEMORY[0x1865D26B0](&v493, 8);
            v25 = v493;
            v28 = type metadata accessor for AttributedString.Guts();
            v356 = swift_allocObject();
            if ((BigString.isEmpty.getter() & 1) == 0)
            {
              goto LABEL_298;
            }

            *(v356 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v357 = v529;
            *(v356 + 24) = v528;
            *(v356 + 40) = v357;
            *(v356 + 56) = v530;
            *(v356 + 72) = 0;
            *(v356 + 80) = 0;
            *(v356 + 88) = 0;
            *(v356 + 96) = v25;
            *(v356 + 104) = MEMORY[0x1E69E7CC0];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v473 = v352;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v359 = *(v323 + 40);
              v541 = *(v323 + 24);
              v542 = v359;
              v543 = *(v323 + 56);
              v360 = *(v323 + 72);
              v361 = *(v323 + 80);
              v470 = v332;
              v362 = v351;
              v363 = v27;
              v364 = *(v323 + 88);
              v365 = *(v323 + 96);
              swift_allocObject();
              outlined init with copy of BigString(&v541, &v493);
              swift_unknownObjectRetain();
              v366 = v365;
              v27 = v363;
              v351 = v362;
              v332 = v470;
              v367 = AttributedString.Guts.init(string:runs:)(&v541, v360, v361, v364, v366);

              v323 = v367;
            }

            v368 = *(v323 + 40);
            v538 = *(v323 + 24);
            v539 = v368;
            v540 = *(v323 + 56);
            swift_unknownObjectRetain();
            v369 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v370 = *(v323 + 40);
            v535 = *(v323 + 24);
            v536 = v370;
            v537 = *(v323 + 56);
            swift_unknownObjectRetain();
            v371 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();

            specialized AttributedString._InternalRunsSlice.updateEach(with:)(v323, v369 >> 11, v371 >> 11, v332, 0);

            if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v332))
            {
              v459 = v371 >> 11;
              *&v460 = v369 >> 11;
              v461 = v351;
              v470 = v27;
              v372 = 1 << v332[32];
              if (v372 < 64)
              {
                v373 = ~(-1 << v372);
              }

              else
              {
                v373 = -1;
              }

              v28 = v373 & *(v332 + 8);
              v25 = (v372 + 63) >> 6;

              v374 = 0;
              v467 = MEMORY[0x1E69E7CC0];
              if (!v28)
              {
                goto LABEL_270;
              }

              do
              {
LABEL_268:
                while (1)
                {
                  v375 = __clz(__rbit64(v28));
                  v28 &= v28 - 1;
                  outlined init with copy of AttributedString._AttributeValue(*(v332 + 7) + 72 * (v375 | (v374 << 6)), &v493);
                  v376 = *(&v495 + 1);
                  v27 = v496;
                  outlined copy of AttributedString.AttributeRunBoundaries?(*(&v495 + 1), v496);
                  outlined destroy of AttributedString._AttributeValue(&v493);
                  if (v27 != 1)
                  {
                    break;
                  }

                  if (!v28)
                  {
                    goto LABEL_270;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v467 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v467 + 2) + 1, 1, v467);
                }

                v379 = *(v467 + 2);
                v378 = *(v467 + 3);
                v380 = (v379 + 1);
                if (v379 >= v378 >> 1)
                {
                  v453 = (v379 + 1);
                  v451 = v379;
                  v383 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v378 > 1), v379 + 1, 1, v467);
                  v380 = v453;
                  v379 = v451;
                  v467 = v383;
                }

                v381 = v467;
                *(v467 + 2) = v380;
                v382 = &v381[16 * v379];
                *(v382 + 4) = v376;
                *(v382 + 5) = v27;
              }

              while (v28);
              while (1)
              {
LABEL_270:
                v377 = v374 + 1;
                if (__OFADD__(v374, 1))
                {
                  goto LABEL_288;
                }

                if (v377 >= v25)
                {
                  break;
                }

                v28 = *&v332[8 * v377 + 64];
                ++v374;
                if (v28)
                {
                  v374 = v377;
                  goto LABEL_268;
                }
              }

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v460, v459, 0, v467);

              v351 = v461;
            }

            else
            {
            }

            v28 = v472 + 1;

            *&v493 = v323;
            *(&v493 + 1) = v351;
            *&v494 = v473;
            *(&v494 + 1) = v479;
            *&v495 = v478;
            *(&v495 + 1) = v477;
            *&v496 = v476;
            *(&v496 + 1) = v475;
            v497 = v474;
            v498 = v471;
            outlined destroy of AttributedSubstring(&v493);
            v320 = v468;
            v319 = v469;
            v25 = v462;
            v321 = v463;
            if (v28 == v465)
            {
              goto LABEL_284;
            }
          }

LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          v33 = swift_once();
LABEL_4:
          v35 = static ICUCurrencyNumberFormatter.cache;
          v36 = qword_1EA7B5100;
          v513 = v544;
          v514 = v545;
          v515 = v546;
          MEMORY[0x1EEE9AC00](v33);
          *(&v449 - 2) = &v513;
          os_unfair_lock_lock((v36 + 24));
          closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v36 + 16, &v508);
          v453 = 0;
          os_unfair_lock_unlock((v36 + 24));
          v37 = v508;
          if (v508 != 1)
          {
            goto LABEL_36;
          }

          v38 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v25, v27, v28, v474);
          v40 = v39;
          type metadata accessor for ICUCurrencyNumberFormatter();
          swift_allocObject();
          LOBYTE(v25) = v473;

          v41 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v38, v40);
          os_unfair_lock_lock((v36 + 24));
          v28 = *(v36 + 16);
          if (v35 >= *(v28 + 16))
          {
          }

          else
          {
            *(v36 + 16) = MEMORY[0x1E69E7CC8];
          }

          v64 = swift_isUniquelyReferenced_nonNull_native();
          *&v508 = *(v36 + 16);
          v49 = v508;
          *(v36 + 16) = 0x8000000000000000;
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v544);
          v66 = *(v49 + 16);
          v67 = (v65 & 1) == 0;
          v68 = __OFADD__(v66, v67);
          v69 = v66 + v67;
          if (v68)
          {
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          LOBYTE(v25) = v65;
          if (*(v49 + 24) >= v69)
          {
            if (v64)
            {
              v70 = v49;
              if ((v65 & 1) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_25;
            }

LABEL_309:
            v468 = v28;
            v469 = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v386 = static _DictionaryStorage.copy(original:)();
            v70 = v386;
            if (*(v49 + 16))
            {
              v387 = (v386 + 64);
              v388 = 1 << *(v70 + 32);
              v470 = (v49 + 64);
              v389 = (v388 + 63) >> 6;
              if (v70 != v49 || v387 >= &v470[8 * v389])
              {
                memmove(v387, v470, 8 * v389);
              }

              v390 = 0;
              *(v70 + 16) = *(v49 + 16);
              v391 = 1 << *(v49 + 32);
              v392 = -1;
              if (v391 < 64)
              {
                v392 = ~(-1 << v391);
              }

              v472 = v392 & *(v49 + 64);
              v467 = ((v391 + 63) >> 6);
              for (i = v472; v472; i = v472)
              {
                v394 = __clz(__rbit64(i));
                v472 = (i - 1) & i;
LABEL_322:
                v397 = v394 | (v390 << 6);
                v398 = *(v49 + 56);
                v399 = (*(v49 + 48) + 48 * v397);
                v400 = *v399;
                v401 = v399[1];
                v402 = v399[2];
                v471 = v399[3];
                v403 = v471;
                v404 = *(v398 + 8 * v397);
                v405 = v399[4];
                v406 = v399[5];
                v407 = (*(v70 + 48) + 48 * v397);
                *v407 = v400;
                v407[1] = v401;
                v407[2] = v402;
                v407[3] = v403;
                v407[4] = v405;
                v407[5] = v406;
                *(*(v70 + 56) + 8 * v397) = v404;
              }

              v395 = v390;
              while (1)
              {
                v390 = v395 + 1;
                if (__OFADD__(v395, 1))
                {
                  break;
                }

                if (v390 >= v467)
                {
                  goto LABEL_354;
                }

                v396 = *&v470[8 * v390];
                ++v395;
                if (v396)
                {
                  v394 = __clz(__rbit64(v396));
                  v472 = (v396 - 1) & v396;
                  goto LABEL_322;
                }
              }

LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_369;
            }

LABEL_354:

            v28 = v468;
            v52 = v469;
            if ((v25 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_25:
            v72 = v52;

            *(*(v70 + 56) + 8 * v72) = v41;

            goto LABEL_35;
          }

          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, v64);
          v70 = v508;
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(&v544);
          if ((v25 & 1) != (v71 & 1))
          {
LABEL_369:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_370:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_371;
          }

          if (v25)
          {
            goto LABEL_25;
          }

LABEL_34:
          specialized _NativeDictionary._insert(at:key:value:)(v52, &v544, v41, v70);
LABEL_35:
          *(v36 + 16) = v70;

          os_unfair_lock_unlock((v36 + 24));

          outlined consume of ICUNumberFormatter??(1);
          v37 = v41;
LABEL_36:

          if (!v37)
          {
            (*(v455 + 8))(v454, v456);
            v223 = v478;
            v224 = v477;
            v225 = v476;
LABEL_283:
            v384 = v475;
            (*(v224 + 16))(v225, v223, v475);
            specialized BinaryFloatingPoint.init<A>(_:)(v225, v384);
            Double.description.getter();
            BigString.init(_:)();
            result = AttributedString.init(_:attributes:)(&v513, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v508);
            *v458 = v508;
            return result;
          }

          v84 = v476;
          v85 = v475;
          (*(v477 + 16))(v476, v478, v475);
          v86 = specialized BinaryFloatingPoint.init<A>(_:)(v84, v85);
          v87 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v86, 0, 0x100000000);
          if (v88)
          {
            v90 = v87;
            v25 = v88;
            v41 = v89;
            v452 = v37;

            v467 = v90;
            BigString.init(_:)();
            AttributedString.init(_:attributes:)(v512, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v513);
            v27 = v513;
            v466 = v41[2];
            if (v466)
            {
              v91 = 0;
              v465 = v41 + 4;
              *&v457 = "Foundation.NumberFormatSymbol";
              v459 = "ecified format, such as ";
              v460 = xmmword_1812187D0;
              v463 = v25;
              v464 = v41;
              do
              {
                if (v91 >= v41[2])
                {
                  goto LABEL_297;
                }

                v472 = v91;
                v28 = LODWORD(v465[3 * v91]);
                v92 = v467;
                *&v508 = v467;
                *(&v508 + 1) = v25;
                lazy protocol witness table accessor for type String and conformance String();

                v36 = MEMORY[0x1E69E6158];
                v93 = String.Index.init<A>(utf16Offset:in:)();
                *&v508 = v92;
                *(&v508 + 1) = v25;

                v94 = String.Index.init<A>(utf16Offset:in:)();
                if (v94 >> 14 < v93 >> 14)
                {
                  goto LABEL_299;
                }

                v95 = v94;

                _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v93, v95, v27, &v508);
                if (*(&v509 + 1) == 2)
                {
                  goto LABEL_362;
                }

                v25 = MEMORY[0x1E69E7CC8];
                v481 = MEMORY[0x1E69E7CC8];
                v482 = MEMORY[0x1E69E7CD0];
                v477 = v508;
                v478 = v509;
                v475 = v511;
                v476 = v510;
                if (v28 <= 5)
                {
                  switch(v28)
                  {
                    case 0:
                      v97 = 0;
                      goto LABEL_60;
                    case 1:
                      v97 = 1;
LABEL_60:
                      v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
                      v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
                      LOBYTE(v499) = v97;
                      v504 = v460;
                      LOBYTE(v505) = 1;
                      v506 = 0;
                      v49 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
                      outlined init with copy of FloatingPointRoundingRule?(&v499, &v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      if (*(&v494 + 1))
                      {
                        v490 = v495;
                        v491 = v496;
                        v492 = v497;
                        v488 = v493;
                        v489 = v494;
                        outlined init with copy of AttributedString._AttributeValue(&v488, &v483);
                        v98 = swift_isUniquelyReferenced_nonNull_native();
                        v480 = v25;
                        v52 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v457 | 0x8000000000000000);
                        v100 = *(v25 + 16);
                        v101 = (v99 & 1) == 0;
                        v68 = __OFADD__(v100, v101);
                        v102 = v100 + v101;
                        if (v68)
                        {
                          __break(1u);
                          goto LABEL_304;
                        }

                        v103 = v99;
                        if (*(v25 + 24) >= v102)
                        {
                          if (v98)
                          {
                            v104 = v25;
                          }

                          else
                          {
                            v473 = v52;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                            v179 = static _DictionaryStorage.copy(original:)();
                            v104 = v179;
                            v180 = *(v25 + 16);
                            if (v180)
                            {
                              v181 = (v179 + 64);
                              v182 = ((1 << *(v104 + 32)) + 63) >> 6;
                              v183 = MEMORY[0x1E69E7CC8];
                              if (v104 != MEMORY[0x1E69E7CC8] || v181 >= MEMORY[0x1E69E7CC8] + 8 * v182 + 64)
                              {
                                memmove(v181, (MEMORY[0x1E69E7CC8] + 64), 8 * v182);
                              }

                              v184 = 0;
                              *(v104 + 16) = v180;
                              v185 = 1 << *(v183 + 32);
                              if (v185 < 64)
                              {
                                v186 = ~(-1 << v185);
                              }

                              else
                              {
                                v186 = -1;
                              }

                              *&v479 = v186 & *(v183 + 64);
                              v471 = ((v185 + 63) >> 6);
                              for (j = v479; v479; j = v479)
                              {
                                *&v479 = (j - 1) & j;
                                v188 = __clz(__rbit64(j)) | (v184 << 6);
LABEL_121:
                                v191 = 16 * v188;
                                v192 = *(MEMORY[0x1E69E7CC8] + 56);
                                v193 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v188);
                                v194 = v193[1];
                                v474 = *v193;
                                v195 = 72 * v188;
                                outlined init with copy of AttributedString._AttributeValue(v192 + 72 * v188, &v493);
                                v196 = (*(v104 + 48) + v191);
                                *v196 = v474;
                                v196[1] = v194;
                                v197 = *(v104 + 56) + v195;
                                *v197 = v493;
                                v198 = v494;
                                v199 = v495;
                                v200 = v496;
                                *(v197 + 64) = v497;
                                *(v197 + 32) = v199;
                                *(v197 + 48) = v200;
                                *(v197 + 16) = v198;
                              }

                              while (1)
                              {
                                v189 = v184 + 1;
                                if (__OFADD__(v184, 1))
                                {
                                  break;
                                }

                                if (v189 >= v471)
                                {
                                  goto LABEL_139;
                                }

                                v190 = *(MEMORY[0x1E69E7CC8] + 8 * v189 + 64);
                                ++v184;
                                if (v190)
                                {
                                  *&v479 = (v190 - 1) & v190;
                                  v188 = __clz(__rbit64(v190)) | (v189 << 6);
                                  v184 = v189;
                                  goto LABEL_121;
                                }
                              }

                              __break(1u);
LABEL_364:
                              __break(1u);
                              goto LABEL_365;
                            }

LABEL_139:

                            v52 = v473;
                            v41 = v464;
                          }
                        }

                        else
                        {
                          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v102, v98);
                          v104 = v480;
                          v52 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v457 | 0x8000000000000000);
                          if ((v103 & 1) != (v105 & 1))
                          {
                            goto LABEL_368;
                          }
                        }

                        if (v103)
                        {
                          v114 = *(v104 + 56) + 72 * v52;
                          v116 = *(v114 + 16);
                          v115 = *(v114 + 32);
                          v117 = *(v114 + 48);
                          v497 = *(v114 + 64);
                          v496 = v117;
                          v493 = *v114;
                          v494 = v116;
                          v495 = v115;
                          v118 = *(v104 + 56) + 72 * v52;
                          v119 = v484;
                          v120 = v485;
                          v121 = v486;
                          *(v118 + 64) = v487;
                          *(v118 + 32) = v120;
                          *(v118 + 48) = v121;
                          *(v118 + 16) = v119;
                          *v118 = v483;
                          outlined destroy of AttributedString._AttributeValue(&v488);
                        }

                        else
                        {
                          specialized _NativeDictionary._insert(at:key:value:)(v52, 0xD00000000000001BLL, v457 | 0x8000000000000000, &v483, v104);
                          outlined destroy of AttributedString._AttributeValue(&v488);
                          v493 = 0u;
                          v494 = 0u;
                          v495 = 0u;
                          v496 = 0u;
                          v497 = 0;
                        }

                        v481 = v104;
                      }

                      else
                      {
                        outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                        v106 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v457 | 0x8000000000000000);
                        if (v107)
                        {
                          v108 = v106;
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            v109 = v25;
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                            v201 = static _DictionaryStorage.copy(original:)();
                            v109 = v201;
                            v202 = *(v25 + 16);
                            if (v202)
                            {
                              v203 = (v201 + 64);
                              v204 = ((1 << *(v109 + 32)) + 63) >> 6;
                              v205 = MEMORY[0x1E69E7CC8];
                              if (v109 != MEMORY[0x1E69E7CC8] || v203 >= MEMORY[0x1E69E7CC8] + 8 * v204 + 64)
                              {
                                memmove(v203, (MEMORY[0x1E69E7CC8] + 64), 8 * v204);
                              }

                              v206 = 0;
                              *(v109 + 16) = v202;
                              v207 = 1 << *(v205 + 32);
                              if (v207 < 64)
                              {
                                v208 = ~(-1 << v207);
                              }

                              else
                              {
                                v208 = -1;
                              }

                              *&v479 = v208 & *(v205 + 64);
                              v473 = (v207 + 63) >> 6;
                              for (k = v479; v479; k = v479)
                              {
                                *&v479 = (k - 1) & k;
                                v210 = __clz(__rbit64(k)) | (v206 << 6);
LABEL_136:
                                v213 = 16 * v210;
                                v214 = *(MEMORY[0x1E69E7CC8] + 56);
                                v215 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v210);
                                v216 = v215[1];
                                v474 = *v215;
                                v217 = 72 * v210;
                                outlined init with copy of AttributedString._AttributeValue(v214 + 72 * v210, &v493);
                                v218 = (*(v109 + 48) + v213);
                                *v218 = v474;
                                v218[1] = v216;
                                v219 = *(v109 + 56) + v217;
                                *v219 = v493;
                                v220 = v494;
                                v221 = v495;
                                v222 = v496;
                                *(v219 + 64) = v497;
                                *(v219 + 32) = v221;
                                *(v219 + 48) = v222;
                                *(v219 + 16) = v220;
                              }

                              while (1)
                              {
                                v211 = v206 + 1;
                                if (__OFADD__(v206, 1))
                                {
                                  goto LABEL_364;
                                }

                                if (v211 >= v473)
                                {
                                  break;
                                }

                                v212 = *(MEMORY[0x1E69E7CC8] + 8 * v211 + 64);
                                ++v206;
                                if (v212)
                                {
                                  *&v479 = (v212 - 1) & v212;
                                  v210 = __clz(__rbit64(v212)) | (v211 << 6);
                                  v206 = v211;
                                  goto LABEL_136;
                                }
                              }
                            }

                            v41 = v464;
                          }

                          v110 = *(v109 + 56) + 72 * v108;
                          v493 = *v110;
                          v112 = *(v110 + 32);
                          v111 = *(v110 + 48);
                          v113 = *(v110 + 64);
                          v494 = *(v110 + 16);
                          v495 = v112;
                          v497 = v113;
                          v496 = v111;
                          specialized _NativeDictionary._delete(at:)(v108, v109);
                          v481 = v109;
                        }

                        else
                        {
                          v497 = 0;
                          v495 = 0u;
                          v496 = 0u;
                          v493 = 0u;
                          v494 = 0u;
                        }
                      }

                      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001BLL, v457 | 0x8000000000000000, &v493, &v499);
                      outlined destroy of TermOfAddress?(&v499, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                      v122 = v28 - 2;
                      if (v28 - 2) < 9 && ((0x171u >> v122))
                      {
                        v96 = byte_18122655A[v122];
                        goto LABEL_79;
                      }

                      break;
                    case 2:
                      v96 = 2;
LABEL_79:
                      v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
                      v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
                      LOBYTE(v499) = v96;
                      v504 = v460;
                      LOBYTE(v505) = 1;
                      v506 = 0;
                      specialized AttributedString._AttributeStorage.subscript.setter(&v499, 0xD00000000000001DLL, v459 | 0x8000000000000000);
                      break;
                  }
                }

                else
                {
                  if (v28 <= 7)
                  {
                    if (v28 == 6)
                    {
                      v96 = 0;
                    }

                    else
                    {
                      v96 = 3;
                    }

                    goto LABEL_79;
                  }

                  if (v28 == 8)
                  {
                    v96 = 4;
                    goto LABEL_79;
                  }

                  if (v28 == 10)
                  {
                    v96 = 1;
                    goto LABEL_79;
                  }
                }

                v123 = v482;
                *&v479 = v481;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v124 = *(v27 + 5);
                  v541 = *(v27 + 3);
                  v542 = v124;
                  v543 = *(v27 + 7);
                  v125 = v27[9];
                  v126 = v27[10];
                  v127 = v27[11];
                  v128 = v27[12];
                  type metadata accessor for AttributedString.Guts();
                  swift_allocObject();
                  outlined init with copy of BigString(&v541, &v499);
                  swift_unknownObjectRetain();
                  v129 = AttributedString.Guts.init(string:runs:)(&v541, v125, v126, v127, v128);

                  v27 = v129;
                }

                if (one-time initialization token for _nextVersion != -1)
                {
                  swift_once();
                }

                v27[2] = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                v130 = *(v27 + 5);
                v131 = *(v27 + 3);
                v540 = *(v27 + 7);
                v538 = v131;
                v539 = v130;
                v132 = BigString.startIndex.getter();
                v28 = v133;
                v25 = v134;
                v136 = v135;
                v137 = BigString.endIndex.getter();
                v499 = v27;
                v500 = v132;
                v501 = v28;
                v502 = v25;
                v503 = v136;
                *&v504 = v137;
                *(&v504 + 1) = v138;
                v505 = v139;
                v506 = v140;
                v507 = 0;

                outlined destroy of AttributedString.CharacterView(&v499);
                v532 = v478;
                v531 = v477;
                v534 = v475;
                v533 = v476;
                v141 = *(v27 + 5);
                v535 = *(v27 + 3);
                v536 = v141;
                v537 = *(v27 + 7);
                swift_unknownObjectRetain();

                BigString.UnicodeScalarView.subscript.getter();
                swift_unknownObjectRelease();
                outlined destroy of BigSubstring.UnicodeScalarView(&v513);
                v142 = v516;
                v143 = v517;
                *&v478 = v518;
                *&v477 = v519;
                *&v476 = v520;
                v474 = v522;
                *&v475 = v521;
                v473 = v523;
                if (one-time initialization token for currentIdentity != -1)
                {
                  swift_once();
                }

                v144 = static AttributedString.currentIdentity;
                os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
                v145 = *(v144 + 16);
                v68 = __OFADD__(v145, 1);
                v146 = (v145 + 1);
                if (v68)
                {
                  goto LABEL_300;
                }

                v471 = v146;
                *(v144 + 16) = v146;
                os_unfair_lock_unlock((v144 + 24));
                BigString.init()();
                *&v493 = 0;
                MEMORY[0x1865D26B0](&v493, 8);
                v25 = v493;
                v28 = type metadata accessor for AttributedString.Guts();
                v147 = swift_allocObject();
                if ((BigString.isEmpty.getter() & 1) == 0)
                {
                  goto LABEL_301;
                }

                *(v147 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                v148 = v512[4];
                *(v147 + 24) = v512[3];
                *(v147 + 40) = v148;
                *(v147 + 56) = v512[5];
                *(v147 + 72) = 0;
                *(v147 + 80) = 0;
                *(v147 + 88) = 0;
                *(v147 + 96) = v25;
                *(v147 + 104) = MEMORY[0x1E69E7CC0];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v149 = *(v27 + 5);
                  v528 = *(v27 + 3);
                  v529 = v149;
                  v530 = *(v27 + 7);
                  v150 = v27[9];
                  v151 = v27[10];
                  v470 = v143;
                  v152 = v142;
                  v153 = v123;
                  v154 = v27[11];
                  v155 = v27[12];
                  swift_allocObject();
                  outlined init with copy of BigString(&v528, &v493);
                  swift_unknownObjectRetain();
                  v156 = v154;
                  v142 = v152;
                  v143 = v470;
                  v157 = v155;
                  v123 = v153;
                  v41 = v464;
                  v158 = AttributedString.Guts.init(string:runs:)(&v528, v150, v151, v156, v157);

                  v27 = v158;
                }

                v159 = *(v27 + 5);
                v527[0] = *(v27 + 3);
                v527[1] = v159;
                v527[2] = *(v27 + 7);
                swift_unknownObjectRetain();
                v470 = v142;
                v160 = BigString.UnicodeScalarView.index(roundingDown:)();
                swift_unknownObjectRelease();
                v161 = *(v27 + 5);
                v524 = *(v27 + 3);
                v525 = v161;
                v526 = *(v27 + 7);
                swift_unknownObjectRetain();
                v162 = BigString.UnicodeScalarView.index(roundingDown:)();
                swift_unknownObjectRelease();
                v28 = v160 >> 11;
                v163 = v479;

                specialized AttributedString._InternalRunsSlice.updateEach(with:)(v27, v160 >> 11, v162 >> 11, v163, 0);

                if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v163))
                {
                  v461 = v162 >> 11;
                  v462 = v160 >> 11;
                  v469 = v123;
                  v164 = v479 + 64;
                  v165 = 1 << *(v479 + 32);
                  if (v165 < 64)
                  {
                    v166 = ~(-1 << v165);
                  }

                  else
                  {
                    v166 = -1;
                  }

                  v28 = v166 & *(v479 + 64);
                  v25 = (v165 + 63) >> 6;

                  v167 = 0;
                  v468 = MEMORY[0x1E69E7CC0];
                  if (!v28)
                  {
                    goto LABEL_97;
                  }

                  do
                  {
LABEL_95:
                    while (1)
                    {
                      v168 = __clz(__rbit64(v28));
                      v28 &= v28 - 1;
                      outlined init with copy of AttributedString._AttributeValue(*(v479 + 56) + 72 * (v168 | (v167 << 6)), &v493);
                      v169 = *(&v495 + 1);
                      v170 = v496;
                      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v495 + 1), v496);
                      outlined destroy of AttributedString._AttributeValue(&v493);
                      if (v170 != 1)
                      {
                        break;
                      }

                      if (!v28)
                      {
                        goto LABEL_97;
                      }
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v468 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v468 + 2) + 1, 1, v468);
                    }

                    v173 = *(v468 + 2);
                    v172 = *(v468 + 3);
                    v174 = v173 + 1;
                    if (v173 >= v172 >> 1)
                    {
                      v450 = *(v468 + 2);
                      v451 = v173 + 1;
                      v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1, v468);
                      v173 = v450;
                      v174 = v451;
                      v468 = v177;
                    }

                    v175 = v468;
                    *(v468 + 2) = v174;
                    v176 = &v175[16 * v173];
                    *(v176 + 4) = v169;
                    *(v176 + 5) = v170;
                  }

                  while (v28);
                  while (1)
                  {
LABEL_97:
                    v171 = v167 + 1;
                    if (__OFADD__(v167, 1))
                    {
                      goto LABEL_289;
                    }

                    if (v171 >= v25)
                    {
                      break;
                    }

                    v28 = *(v164 + 8 * v171);
                    ++v167;
                    if (v28)
                    {
                      v167 = v171;
                      goto LABEL_95;
                    }
                  }

                  v28 = v143;

                  v178 = v468;
                  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v462, v461, 0, v468);

                  *&v479 = v178;
                  v41 = v464;
                }

                else
                {
                }

                v91 = v472 + 1;

                *&v493 = v27;
                *(&v493 + 1) = v470;
                *&v494 = v143;
                *(&v494 + 1) = v478;
                *&v495 = v477;
                *(&v495 + 1) = v476;
                *&v496 = v475;
                *(&v496 + 1) = v474;
                v497 = v473;
                v498 = v471;
                outlined destroy of AttributedSubstring(&v493);
                v25 = v463;
              }

              while (v91 != v466);
            }

            *v458 = v27;
          }

          else
          {
            Double.description.getter();
            BigString.init(_:)();
            AttributedString.init(_:attributes:)(&v513, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v508);

            *v458 = v508;
          }

          return (*(v455 + 8))(v454, v456);
        }

LABEL_284:

        *v458 = v323;
        v318 = v452;
      }

      else
      {
        Double.description.getter();
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(&v513, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v508);

        *v458 = v508;
      }

      return (*(v319 + 8))(v320, v318);
    }

    type metadata accessor for ICUNumberFormatter();
    v47 = swift_allocObject();
    *(v47 + 3) = v36;
    *(v47 + 4) = v25;
    swift_bridgeObjectRetain_n();
    v48 = MEMORY[0x1865CB200](v36, v25);
    if (v48)
    {
      v49 = v48;
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v48, 0);

      v51 = specialized Sequence._copySequenceContents(initializing:)(&v513, (v50 + 4), v49, v36, v25);

      if (v51 != v49)
      {
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v513) = 0;
    v49 = v50[2];
    if (v49 >> 31)
    {
      goto LABEL_306;
    }

    String.utf8CString.getter();
    v300 = unumf_openForSkeletonAndLocale();

    if (v300)
    {
      if (v513 < 1)
      {
        *(v47 + 2) = v300;
LABEL_214:
        os_unfair_lock_lock((v28 + 24));
        v301 = *(*(v28 + 16) + 16);
        v473 = *(v28 + 16);
        if (v474 >= v301)
        {
        }

        else
        {
          *(v28 + 16) = MEMORY[0x1E69E7CC8];
        }

        v302 = swift_isUniquelyReferenced_nonNull_native();
        *&v513 = *(v28 + 16);
        v49 = v513;
        *(v28 + 16) = 0x8000000000000000;
        v304 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v25, v27, v41);
        v305 = *(v49 + 16);
        v306 = (v303 & 1) == 0;
        v52 = v305 + v306;
        if (__OFADD__(v305, v306))
        {
          goto LABEL_307;
        }

        if (*(v49 + 24) >= v52)
        {
          if (v302)
          {
            v308 = v49;
            if (v303)
            {
LABEL_221:
              v311 = v304;

              *(*(v308 + 56) + 8 * v311) = v47;

LABEL_225:
              *(v28 + 16) = v308;

              os_unfair_lock_unlock((v28 + 24));

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_226;
            }
          }

          else
          {
            v466 = v304;
            LODWORD(v467) = v303;
            v470 = v27;
            v454 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v428 = static _DictionaryStorage.copy(original:)();
            v308 = v428;
            if (*(v49 + 16))
            {
              v429 = (v428 + 64);
              v430 = 1 << *(v308 + 32);
              v471 = (v49 + 64);
              v431 = (v430 + 63) >> 6;
              if (v308 != v49 || v429 >= &v471[8 * v431])
              {
                memmove(v429, v471, 8 * v431);
              }

              v432 = 0;
              *(v308 + 16) = *(v49 + 16);
              v433 = 1 << *(v49 + 32);
              v434 = -1;
              if (v433 < 64)
              {
                v434 = ~(-1 << v433);
              }

              v474 = v434 & *(v49 + 64);
              v435 = (v433 + 63) >> 6;
              for (m = v474; v474; m = v474)
              {
                v437 = __clz(__rbit64(m));
                v474 = (m - 1) & m;
LABEL_352:
                v440 = v437 | (v432 << 6);
                v441 = *(v49 + 56);
                v442 = (*(v49 + 48) + 32 * v440);
                v443 = *v442;
                v472 = v442[1];
                v444 = v472;
                v445 = v442[2];
                v446 = v442[3];
                v447 = *(v441 + 8 * v440);
                v448 = (*(v308 + 48) + 32 * v440);
                *v448 = v443;
                v448[1] = v444;
                v448[2] = v445;
                v448[3] = v446;
                *(*(v308 + 56) + 8 * v440) = v447;
              }

              v438 = v432;
              while (1)
              {
                v432 = v438 + 1;
                if (__OFADD__(v438, 1))
                {
                  goto LABEL_367;
                }

                if (v432 >= v435)
                {
                  break;
                }

                v439 = *&v471[8 * v432];
                ++v438;
                if (v439)
                {
                  v437 = __clz(__rbit64(v439));
                  v474 = (v439 - 1) & v439;
                  goto LABEL_352;
                }
              }
            }

            v47 = v454;
            v27 = v470;
            v304 = v466;
            if (v467)
            {
              goto LABEL_221;
            }
          }
        }

        else
        {
          v307 = v303;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, v302);
          v308 = v513;
          v309 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v25, v27, v41);
          if ((v307 & 1) != (v310 & 1))
          {
LABEL_371:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v304 = v309;
          if (v307)
          {
            goto LABEL_221;
          }
        }

        specialized _NativeDictionary._insert(at:key:value:)(v304, v36, v25, v27, v41, v47, v308);
        goto LABEL_225;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v47 = 0;
    goto LABEL_214;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = v454;
    (*(v455 + 32))(v454, v21, v456);
    v25 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v27 = v26;
    v28 = *(v24 + 2);
    v29 = *(v24 + 3);
    v30 = *(v24 + 1);
    v31 = swift_getObjectType();
    v32 = *(v30 + 472);

    v33 = v32(v31, v30);
    *&v544 = v25;
    *(&v544 + 1) = v27;
    *&v545 = v28;
    *(&v545 + 1) = v29;
    v473 = v34;
    v474 = v29;
    *&v546 = v33;
    *(&v546 + 1) = v34;
    if (one-time initialization token for cache != -1)
    {
      goto LABEL_302;
    }

    goto LABEL_4;
  }

  v53 = v453;
  (*(v457 + 32))(v453, v21, v459);
  v54 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v28 = v55;
  v56 = *(v53 + 1);
  v57 = swift_getObjectType();
  v58 = (*(v56 + 472))(v57, v56);
  v25 = v59;
  if (one-time initialization token for cache != -1)
  {
    v385 = v58;
    swift_once();
    v58 = v385;
  }

  v60 = static ICUPercentNumberFormatter.cache;
  v36 = *algn_1EA7B0228;
  *&v513 = v54;
  *(&v513 + 1) = v28;
  v474 = v58;
  *&v514 = v58;
  *(&v514 + 1) = v25;
  MEMORY[0x1EEE9AC00](v58);
  *(&v449 - 2) = &v513;
  os_unfair_lock_lock((v36 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v36 + 16, &v508);
  os_unfair_lock_unlock((v36 + 24));
  v61 = v54;
  v27 = v508;
  if (v508 == 1)
  {
    *&v508 = 0x746E6563726570;
    *(&v508 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v499 = 32;
      v500 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v61, v28);
      MEMORY[0x1865CB0E0](v499, v500);
    }

    v473 = v61;
    v62 = v508;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v27 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v62, *(&v62 + 1));
    os_unfair_lock_lock((v36 + 24));
    v63 = *(v36 + 16);
    if (v60 >= v63[2])
    {

      v41 = v63;
    }

    else
    {
      v41 = *(v36 + 16);
      *(v36 + 16) = MEMORY[0x1E69E7CC8];
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v508 = *(v36 + 16);
    v73 = v508;
    *(v36 + 16) = 0x8000000000000000;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v473, v28, v474, v25);
    v76 = *(v73 + 16);
    v77 = (v74 & 1) == 0;
    v52 = v76 + v77;
    if (!__OFADD__(v76, v77))
    {
      if (*(v73 + 24) < v52)
      {
        v78 = v74;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, v49);
        v79 = v508;
        v80 = v474;
        v81 = specialized __RawDictionaryStorage.find<A>(_:)(v473, v28, v474, v25);
        if ((v78 & 1) == (v82 & 1))
        {
          v75 = v81;
          if (v78)
          {
LABEL_31:
            v83 = v75;

            *(*(v79 + 56) + 8 * v83) = v27;

LABEL_145:
            *(v36 + 16) = v79;

            os_unfair_lock_unlock((v36 + 24));

            outlined consume of ICUNumberFormatter??(1);
            goto LABEL_146;
          }

LABEL_144:
          specialized _NativeDictionary._insert(at:key:value:)(v75, v473, v28, v80, v25, v27, v79);
          goto LABEL_145;
        }

        goto LABEL_370;
      }

      if (v49)
      {
        v79 = v73;
        v80 = v474;
        if (v74)
        {
          goto LABEL_31;
        }

        goto LABEL_144;
      }

      v468 = v75;
      LODWORD(v469) = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v408 = static _DictionaryStorage.copy(original:)();
      v79 = v408;
      if (!*(v73 + 16))
      {
LABEL_356:

        v53 = v453;
        v80 = v474;
        v75 = v468;
        if (v469)
        {
          goto LABEL_31;
        }

        goto LABEL_144;
      }

      v409 = (v408 + 64);
      v410 = 1 << *(v79 + 32);
      v470 = (v73 + 64);
      v411 = (v410 + 63) >> 6;
      if (v79 != v73 || v409 >= &v470[8 * v411])
      {
        memmove(v409, v470, 8 * v411);
      }

      v412 = 0;
      *(v79 + 16) = *(v73 + 16);
      v413 = 1 << *(v73 + 32);
      v414 = -1;
      if (v413 < 64)
      {
        v414 = ~(-1 << v413);
      }

      v472 = v414 & *(v73 + 64);
      v467 = ((v413 + 63) >> 6);
      for (n = v472; v472; n = v472)
      {
        v416 = __clz(__rbit64(n));
        v472 = (n - 1) & n;
LABEL_337:
        v419 = v416 | (v412 << 6);
        v420 = *(v73 + 56);
        v421 = (*(v73 + 48) + 32 * v419);
        v422 = *v421;
        v423 = v421[1];
        v424 = v421[2];
        v471 = v421[3];
        v425 = v471;
        v426 = *(v420 + 8 * v419);
        v427 = (*(v79 + 48) + 32 * v419);
        *v427 = v422;
        v427[1] = v423;
        v427[2] = v424;
        v427[3] = v425;
        *(*(v79 + 56) + 8 * v419) = v426;
      }

      v417 = v412;
      while (1)
      {
        v412 = v417 + 1;
        if (__OFADD__(v417, 1))
        {
          goto LABEL_366;
        }

        if (v412 >= v467)
        {
          goto LABEL_356;
        }

        v418 = *&v470[8 * v412];
        ++v417;
        if (v418)
        {
          v416 = __clz(__rbit64(v418));
          v472 = (v418 - 1) & v418;
          goto LABEL_337;
        }
      }
    }

    goto LABEL_305;
  }

LABEL_146:

  if (!v27)
  {
    (*(v457 + 8))(v53, v459);
LABEL_282:
    v223 = v478;
    v224 = v477;
    v225 = v476;
    goto LABEL_283;
  }

  v226 = v476;
  v227 = v475;
  (*(v477 + 16))(v476, v478, v475);
  v228 = specialized BinaryFloatingPoint.init<A>(_:)(v226, v227);
  v229 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v228, 0, 0x100000000);
  if (v230)
  {
    v232 = v229;
    v25 = v230;
    v233 = v231;
    v454 = v27;

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v527, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v513);
    v234 = v513;
    v467 = v233[2];
    if (v467)
    {
      v235 = 0;
      v466 = (v233 + 4);
      v455 = "Foundation.NumberFormatSymbol";
      v456 = "ecified format, such as ";
      v460 = xmmword_1812187D0;
      v464 = v25;
      v465 = v233;
      v463 = v232;
      do
      {
        if (v235 >= v233[2])
        {
          goto LABEL_290;
        }

        v472 = v235;
        v28 = *(v466 + 24 * v235);
        *&v508 = v232;
        *(&v508 + 1) = v25;
        lazy protocol witness table accessor for type String and conformance String();

        v27 = MEMORY[0x1E69E6158];
        v236 = String.Index.init<A>(utf16Offset:in:)();
        *&v508 = v232;
        *(&v508 + 1) = v25;

        v237 = String.Index.init<A>(utf16Offset:in:)();
        if (v237 >> 14 < v236 >> 14)
        {
          goto LABEL_292;
        }

        v238 = v237;

        _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v236, v238, v234, &v508);
        if (*(&v509 + 1) == 2)
        {
          __break(1u);
          goto LABEL_361;
        }

        v524 = MEMORY[0x1E69E7CC8];
        v478 = v508;
        v479 = v509;
        v476 = v511;
        v477 = v510;
        if (v28 <= 5)
        {
          switch(v28)
          {
            case 0:
              v240 = 0;
              goto LABEL_171;
            case 1:
              v240 = 1;
LABEL_171:
              v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
              v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
              LOBYTE(v499) = v240;
              v504 = v460;
              LOBYTE(v505) = 1;
              v506 = 0;
              v242 = v455 | 0x8000000000000000;
              v241 = 0xD00000000000001BLL;
LABEL_172:
              specialized AttributedString._AttributeStorage.subscript.setter(&v499, v241, v242);
              break;
            case 2:
              v239 = 2;
              goto LABEL_169;
          }
        }

        else
        {
          if (v28 <= 7)
          {
            if (v28 == 6)
            {
              v239 = 0;
            }

            else
            {
              v239 = 3;
            }

LABEL_169:
            v502 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
            v503 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
            LOBYTE(v499) = v239;
            v504 = v460;
            LOBYTE(v505) = 1;
            v506 = 0;
            v241 = 0xD00000000000001DLL;
            v242 = v456 | 0x8000000000000000;
            goto LABEL_172;
          }

          if (v28 == 8)
          {
            v239 = 4;
            goto LABEL_169;
          }

          if (v28 == 10)
          {
            v239 = 1;
            goto LABEL_169;
          }
        }

        v27 = *(&v524 + 1);
        v243 = v524;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v244 = *(v234 + 40);
          v483 = *(v234 + 24);
          v484 = v244;
          v485 = *(v234 + 56);
          v245 = *(v234 + 72);
          v246 = *(v234 + 80);
          v247 = *(v234 + 88);
          v248 = *(v234 + 96);
          type metadata accessor for AttributedString.Guts();
          swift_allocObject();
          outlined init with copy of BigString(&v483, &v499);
          swift_unknownObjectRetain();
          v249 = AttributedString.Guts.init(string:runs:)(&v483, v245, v246, v247, v248);

          v234 = v249;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v234 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v250 = *(v234 + 40);
        v251 = *(v234 + 24);
        v533 = *(v234 + 56);
        v531 = v251;
        v532 = v250;
        v252 = BigString.startIndex.getter();
        v28 = v253;
        v255 = v254;
        v257 = v256;
        v258 = BigString.endIndex.getter();
        v499 = v234;
        v500 = v252;
        v501 = v28;
        v502 = v255;
        v503 = v257;
        *&v504 = v258;
        *(&v504 + 1) = v259;
        v505 = v260;
        v506 = v261;
        v507 = 0;

        outlined destroy of AttributedString.CharacterView(&v499);
        v488 = v478;
        v489 = v479;
        v490 = v477;
        v491 = v476;
        v262 = *(v234 + 40);
        v544 = *(v234 + 24);
        v545 = v262;
        v546 = *(v234 + 56);
        swift_unknownObjectRetain();

        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v513);
        v25 = v516;
        v263 = v517;
        v264 = v518;
        *&v479 = v519;
        *&v478 = v520;
        *&v477 = v521;
        *&v476 = v522;
        *&v475 = v523;
        if (one-time initialization token for currentIdentity != -1)
        {
          swift_once();
        }

        v265 = static AttributedString.currentIdentity;
        os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
        v266 = *(v265 + 16);
        v68 = __OFADD__(v266, 1);
        v267 = (v266 + 1);
        if (v68)
        {
          goto LABEL_294;
        }

        v474 = v264;
        v471 = v267;
        *(v265 + 16) = v267;
        os_unfair_lock_unlock((v265 + 24));
        BigString.init()();
        *&v493 = 0;
        MEMORY[0x1865D26B0](&v493, 8);
        v268 = v493;
        v28 = type metadata accessor for AttributedString.Guts();
        v269 = swift_allocObject();
        if ((BigString.isEmpty.getter() & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v269 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v270 = v529;
        *(v269 + 24) = v528;
        *(v269 + 40) = v270;
        *(v269 + 56) = v530;
        *(v269 + 72) = 0;
        *(v269 + 80) = 0;
        *(v269 + 88) = 0;
        *(v269 + 96) = v268;
        *(v269 + 104) = MEMORY[0x1E69E7CC0];

        v271 = swift_isUniquelyReferenced_nonNull_native();
        v473 = v263;
        if ((v271 & 1) == 0)
        {
          v272 = *(v234 + 40);
          v541 = *(v234 + 24);
          v542 = v272;
          v543 = *(v234 + 56);
          v470 = v243;
          v273 = v25;
          v274 = *(v234 + 72);
          v275 = *(v234 + 80);
          v276 = v27;
          v277 = *(v234 + 88);
          v278 = *(v234 + 96);
          swift_allocObject();
          outlined init with copy of BigString(&v541, &v493);
          swift_unknownObjectRetain();
          v279 = v275;
          v25 = v273;
          v243 = v470;
          v280 = v278;
          v27 = v276;
          v281 = AttributedString.Guts.init(string:runs:)(&v541, v274, v279, v277, v280);

          v234 = v281;
        }

        v282 = v474;
        v283 = *(v234 + 40);
        v538 = *(v234 + 24);
        v539 = v283;
        v540 = *(v234 + 56);
        swift_unknownObjectRetain();
        v470 = v25;
        v284 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v285 = *(v234 + 40);
        v535 = *(v234 + 24);
        v536 = v285;
        v537 = *(v234 + 56);
        swift_unknownObjectRetain();
        v286 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v28 = v286 >> 11;

        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v234, v284 >> 11, v286 >> 11, v243, 0);

        if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v243) & 1) == 0)
        {

          goto LABEL_151;
        }

        v461 = v286 >> 11;
        v462 = v284 >> 11;
        v469 = v27;
        v287 = 1 << v243[32];
        if (v287 < 64)
        {
          v288 = ~(-1 << v287);
        }

        else
        {
          v288 = -1;
        }

        v28 = v288 & *(v243 + 8);
        v25 = (v287 + 63) >> 6;

        v289 = 0;
        v468 = MEMORY[0x1E69E7CC0];
        if (!v28)
        {
          goto LABEL_190;
        }

        do
        {
LABEL_188:
          while (1)
          {
            v290 = __clz(__rbit64(v28));
            v28 &= v28 - 1;
            outlined init with copy of AttributedString._AttributeValue(*(v243 + 7) + 72 * (v290 | (v289 << 6)), &v493);
            v291 = *(&v495 + 1);
            v27 = v496;
            outlined copy of AttributedString.AttributeRunBoundaries?(*(&v495 + 1), v496);
            outlined destroy of AttributedString._AttributeValue(&v493);
            if (v27 != 1)
            {
              break;
            }

            if (!v28)
            {
              goto LABEL_190;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v468 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v468 + 2) + 1, 1, v468);
          }

          v294 = *(v468 + 2);
          v293 = *(v468 + 3);
          v295 = v294 + 1;
          if (v294 >= v293 >> 1)
          {
            v451 = *(v468 + 2);
            v452 = v294 + 1;
            v298 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v293 > 1), v294 + 1, 1, v468);
            v294 = v451;
            v295 = v452;
            v468 = v298;
          }

          v296 = v468;
          *(v468 + 2) = v295;
          v297 = &v296[16 * v294];
          *(v297 + 4) = v291;
          *(v297 + 5) = v27;
        }

        while (v28);
        while (1)
        {
LABEL_190:
          v292 = v289 + 1;
          if (__OFADD__(v289, 1))
          {
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
            goto LABEL_293;
          }

          if (v292 >= v25)
          {
            break;
          }

          v28 = *&v243[8 * v292 + 64];
          ++v289;
          if (v28)
          {
            v289 = v292;
            goto LABEL_188;
          }
        }

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v462, v461, 0, v468);

        v282 = v474;
LABEL_151:
        v235 = v472 + 1;

        *&v493 = v234;
        *(&v493 + 1) = v470;
        *&v494 = v473;
        *(&v494 + 1) = v282;
        *&v495 = v479;
        *(&v495 + 1) = v478;
        *&v496 = v477;
        *(&v496 + 1) = v476;
        v497 = v475;
        v498 = v471;
        outlined destroy of AttributedSubstring(&v493);
        v25 = v464;
        v233 = v465;
        v232 = v463;
      }

      while (v235 != v467);
    }

    *v458 = v234;
    v53 = v453;
  }

  else
  {
    Double.description.getter();
    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v513, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v508);

    *v458 = v508;
  }

  return (*(v457 + 8))(v53, v459);
}

uint64_t FloatingPointFormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - v7);
  v9 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - v10);
  v12 = type metadata accessor for FloatingPointFormatStyle();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v36 - v13);
  v15 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = *a1;
  v42 = a1[1];
  v21 = a3;
  v22 = a3;
  v23 = v43;
  (*(*(a2 - 8) + 16))(v22, v43, a2, v17);
  (*(v16 + 16))(v19, v23, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v38;
      v26 = v39;
      (*(v38 + 32))(v11, v19, v39);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v28 = v42;
      *v11 = v20;
      v11[1] = v28;
      (*v25)(v21, v15);
      (*(v27 + 16))(v21, v11, v26);
      swift_storeEnumTagMultiPayload();
      return (*(v27 + 8))(v11, v26);
    }

    else
    {
      v34 = v40;
      v33 = v41;
      (*(v40 + 32))(v8, v19, v41);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v35 = v42;
      *v8 = v20;
      v8[1] = v35;
      (*v25)(v21, v15);
      (*(v34 + 16))(v21, v8, v33);
      swift_storeEnumTagMultiPayload();
      return (*(v34 + 8))(v8, v33);
    }
  }

  else
  {
    v31 = v36;
    v30 = v37;
    (*(v36 + 32))(v14, v19, v37);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v32 = v42;
    *v14 = v20;
    v14[1] = v32;
    (*v25)(v21, v15);
    (*(v31 + 16))(v21, v14, v30);
    swift_storeEnumTagMultiPayload();
    return (*(v31 + 8))(v14, v30);
  }
}

uint64_t FloatingPointFormatStyle.Attributed.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FloatingPointFormatStyle.Attributed.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Attributed.encode(to:)(void *a1, uint64_t a2)
{
  v8 = *(a2 + 16);
  type metadata accessor for FloatingPointFormatStyle.Attributed.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FloatingPointFormatStyle.Attributed.hash(into:)(Swift::Int a1)
{
  v3 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v219 = *(v3 - 8);
  v220 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v213 = &v205 - v4;
  v216 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v218 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v6 = &v205 - v5;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v221 = *(v7 - 8);
  v222 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v217 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v214 = &v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v215 = &v205 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v205 - v14;
  v16 = type metadata accessor for FloatingPointFormatStyle();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v205 - v18;
  v20 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v205 - v22;
  (*(v24 + 16))(&v205 - v22, v1, v20, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v6;
      v27 = v216;
      (*(v218 + 32))(v6, v23, v216);
      MEMORY[0x1865CD060](1);
      v28 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      v30 = (*(v28 + 48))(ObjectType, v28);
      v32 = v221;
      v31 = v222;
      if (v30)
      {
        v33 = 1;
LABEL_11:
        Hasher._combine(_:)(v33);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v28 + 64))(ObjectType, v28);
      String.hash(into:)();

      (*(v28 + 464))(&v223, ObjectType, v28);
      v236 = v229;
      v237[0] = v230[0];
      *(v237 + 12) = *(v230 + 12);
      *v233 = v225;
      *&v233[16] = v226;
      v234 = v227;
      v235 = v228;
      v231 = v223;
      v232 = v224;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v231) == 1)
      {
        v33 = 0;
        goto LABEL_11;
      }

      v47 = v223;
      v48 = *(&v223 + 1);
      v49 = *(&v224 + 1);
      v206 = v224;
      v50 = *(&v225 + 1);
      v207 = v225;
      *&v208[8] = v226;
      *&v208[24] = v227;
      v209 = v228;
      v210 = v229;
      *v208 = *(&v230[0] + 1);
      v211 = *&v230[0];
      v213 = *&v230[1];
      v214 = BYTE8(v230[1]);
      v219 = BYTE9(v230[1]);
      LODWORD(v220) = BYTE10(v230[1]);
      v51 = BYTE11(v230[1]);
      Hasher._combine(_:)(1u);
      if (v47 == 2)
      {
        v52 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v52 = v47 & 1;
      }

      Hasher._combine(_:)(v52);
      if (v48)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v48 + 16));
        v67 = *(v48 + 16);
        if (v67)
        {
          v68 = v48 + 40;
          do
          {

            String.hash(into:)();

            v68 += 16;
            --v67;
          }

          while (v67);
        }

        LODWORD(v212) = v51;
        if (v49)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v212) = v51;
        if (v49)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v73 = *&v208[8];
      v74 = *(&v210 + 1);
      if (v50)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v32 = v221;
      v31 = v222;
      v27 = v216;
      v75 = *&v208[24];
      if (v73)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v73, v76, v77, v78, v79, v80, v81);
        v82 = *&v208[16];
        if (*&v208[16])
        {
          goto LABEL_52;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v82 = *&v208[16];
        if (*&v208[16])
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v82, v83, v84, v85, v86, v87, v88);
          if (v75)
          {
LABEL_53:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_57;
          }

LABEL_56:
          Hasher._combine(_:)(0);
LABEL_57:
          v89 = v74;
          if (*&v208[32])
          {
            v90 = v213;
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v209)
            {
LABEL_59:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
              _CFObject.hash(into:)();
              goto LABEL_62;
            }
          }

          else
          {
            v90 = v213;
            Hasher._combine(_:)(0);
            if (v209)
            {
              goto LABEL_59;
            }
          }

          Hasher._combine(_:)(0);
LABEL_62:
          v91 = v90;
          if (*(&v209 + 1))
          {
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v210)
            {
              goto LABEL_64;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if (v210)
            {
LABEL_64:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
              _CFObject.hash(into:)();
              if (v89)
              {
                goto LABEL_65;
              }

              goto LABEL_70;
            }
          }

          Hasher._combine(_:)(0);
          if (v89)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v89);
            v92 = v211;
            if (v211)
            {
              goto LABEL_66;
            }

            goto LABEL_71;
          }

LABEL_70:
          Hasher._combine(_:)(0);
          v92 = v211;
          if (v211)
          {
LABEL_66:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v92);
            v93 = v219;
            if (v91)
            {
LABEL_67:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v94 = v214;
            if (v214 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v94 & 1);
            }

            v95 = v220;
            if (v93 == 2)
            {
              Hasher._combine(_:)(0);
              if (v95 != 2)
              {
LABEL_78:
                Hasher._combine(_:)(1u);
                v96 = v95 & 1;
LABEL_81:
                Hasher._combine(_:)(v96);
                v97 = v212;
                if (v212 == 2)
                {
                  v98 = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  v98 = v97 & 1;
                }

                Hasher._combine(_:)(v98);
                outlined destroy of TermOfAddress?(&v223, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
                String.hash(into:)();
                v99 = &v26[*(v27 + 40)];
                if (v99[8] == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v100 = *v99;
                  Hasher._combine(_:)(1u);
                  if ((v100 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v101 = v100;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  MEMORY[0x1865CD090](v101);
                }

                v102 = *(v99 + 2);
                v231 = *(v99 + 1);
                v232 = v102;
                *v233 = *(v99 + 3);
                *&v233[9] = *(v99 + 57);
                specialized Optional<A>.hash(into:)();
                v103 = v99[73];
                if (v103 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v103 & 1);
                }

                v104 = *(v99 + 74);
                if (*(v99 + 74) == 2)
                {
                  LOBYTE(v105) = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v104 & 1);
                  MEMORY[0x1865CD060]((v104 >> 8) & 1);
                  MEMORY[0x1865CD060](WORD1(v104) & 1);
                  v105 = BYTE3(v104) & 1;
                }

                Hasher._combine(_:)(v105);
                v106 = v99[78];
                if (v106 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v106 & 1);
                }

                v107 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                v108 = v215;
                outlined init with copy of FloatingPointRoundingRule?(&v99[v107[9]], v215, &_ss25FloatingPointRoundingRuleOSgMd);
                if ((*(v32 + 48))(v108, 1, v31) == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v109 = v217;
                  (*(v32 + 32))(v217, v108, v31);
                  Hasher._combine(_:)(1u);
                  dispatch thunk of Hashable.hash(into:)();
                  (*(v32 + 8))(v109, v31);
                }

                v110 = &v99[v107[10]];
                v111 = v110[8];
                if (v111 == 255)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v112 = *v110;
                  Hasher._combine(_:)(1u);
                  if (v111)
                  {
                    MEMORY[0x1865CD060](1);
                    if ((v112 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v113 = v112;
                    }

                    else
                    {
                      v113 = 0;
                    }

                    MEMORY[0x1865CD090](v113);
                  }

                  else
                  {
                    MEMORY[0x1865CD060](0);
                    MEMORY[0x1865CD060](v112);
                  }
                }

                MEMORY[0x1865CD060](v99[v107[11]]);
                v114 = v99[v107[12]];
                if (v114 == 3)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v114);
                }

                return (*(v218 + 8))(v26, v27);
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v93 & 1);
              if (v95 != 2)
              {
                goto LABEL_78;
              }
            }

            v96 = 0;
            goto LABEL_81;
          }

LABEL_71:
          Hasher._combine(_:)(0);
          v93 = v219;
          if (v91)
          {
            goto LABEL_67;
          }

          goto LABEL_72;
        }
      }

      Hasher._combine(_:)(0);
      if (v75)
      {
        goto LABEL_53;
      }

      goto LABEL_56;
    }

    v38 = v213;
    (*(v219 + 32))(v213, v23, v220);
    MEMORY[0x1865CD060](2);
    v39 = *(v38 + 1);
    v40 = swift_getObjectType();
    v41 = (*(v39 + 48))(v40, v39);
    v43 = v221;
    v42 = v222;
    if (v41)
    {
      v44 = 1;
LABEL_17:
      Hasher._combine(_:)(v44);
      goto LABEL_226;
    }

    Hasher._combine(_:)(0);
    (*(v39 + 64))(v40, v39);
    String.hash(into:)();

    (*(v39 + 464))(&v223, v40, v39);
    v236 = v229;
    v237[0] = v230[0];
    *(v237 + 12) = *(v230 + 12);
    *v233 = v225;
    *&v233[16] = v226;
    v234 = v227;
    v235 = v228;
    v231 = v223;
    v232 = v224;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v231) == 1)
    {
      v44 = 0;
      goto LABEL_17;
    }

    v60 = v223;
    v61 = *(&v223 + 1);
    v62 = *(&v224 + 1);
    v205 = v224;
    v63 = *(&v225 + 1);
    v206 = v225;
    *v208 = v226;
    *&v208[16] = v227;
    *&v208[32] = v228;
    v64 = v229;
    *(&v209 + 1) = *(&v228 + 1);
    *(&v210 + 1) = *(&v229 + 1);
    v207 = *(&v230[0] + 1);
    v211 = *&v230[0];
    v212 = *&v230[1];
    v215 = BYTE8(v230[1]);
    v216 = BYTE9(v230[1]);
    v65 = BYTE10(v230[1]);
    LODWORD(v218) = BYTE11(v230[1]);
    Hasher._combine(_:)(1u);
    if (v60 == 2)
    {
      v66 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v66 = v60 & 1;
    }

    *&v210 = v64;
    Hasher._combine(_:)(v66);
    if (v61)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v61 + 16));
      v71 = *(v61 + 16);
      if (v71)
      {
        v72 = v61 + 40;
        do
        {

          String.hash(into:)();

          v72 += 16;
          --v71;
        }

        while (v71);
      }

      if (v62)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v62)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_188;
      }
    }

    Hasher._combine(_:)(0);
LABEL_188:
    v43 = v221;
    v42 = v222;
    v162 = *&v208[24];
    LODWORD(v209) = v65;
    if (v63)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v163 = v215;
    v164 = *v208;
    v165 = *&v208[8];
    if (*v208)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v164, v166, v167, v168, v169, v170, v171);
      if (v165)
      {
        goto LABEL_193;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v165)
      {
LABEL_193:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v165, v172, v173, v174, v175, v176, v177);
        if (*&v208[16])
        {
          goto LABEL_194;
        }

        goto LABEL_198;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v208[16])
    {
LABEL_194:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v178 = v211;
      if (v162)
      {
LABEL_195:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_200;
      }

LABEL_199:
      Hasher._combine(_:)(0);
LABEL_200:
      v179 = v178;
      if (*&v208[32])
      {
        v180 = v163;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v209 + 1))
        {
LABEL_202:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_205;
        }
      }

      else
      {
        v180 = v163;
        Hasher._combine(_:)(0);
        if (*(&v209 + 1))
        {
          goto LABEL_202;
        }
      }

      Hasher._combine(_:)(0);
LABEL_205:
      v181 = v180;
      v182 = v179;
      if (v210)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v183 = *(&v210 + 1);
        if (*(&v210 + 1))
        {
LABEL_207:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v183);
          goto LABEL_210;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v183 = *(&v210 + 1);
        if (*(&v210 + 1))
        {
          goto LABEL_207;
        }
      }

      Hasher._combine(_:)(0);
LABEL_210:
      v184 = v209;
      v185 = v216;
      if (v182)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v182);
        if (v212)
        {
LABEL_212:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_215;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v212)
        {
          goto LABEL_212;
        }
      }

      Hasher._combine(_:)(0);
LABEL_215:
      v186 = v218;
      if (v181 == 2)
      {
        Hasher._combine(_:)(0);
        if (v185 != 2)
        {
          goto LABEL_217;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v181 & 1);
        if (v185 != 2)
        {
LABEL_217:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v185 & 1);
          if (v184 != 2)
          {
LABEL_218:
            Hasher._combine(_:)(1u);
            v187 = v184 & 1;
LABEL_222:
            Hasher._combine(_:)(v187);
            if (v186 == 2)
            {
              v188 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v188 = v186 & 1;
            }

            Hasher._combine(_:)(v188);
            outlined destroy of TermOfAddress?(&v223, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_226:
            v189 = &v38[*(v220 + 9)];
            if (v189[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v190 = *v189;
              Hasher._combine(_:)(1u);
              if ((v190 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v191 = v190;
              }

              else
              {
                v191 = 0;
              }

              MEMORY[0x1865CD090](v191);
            }

            v192 = *(v189 + 2);
            v231 = *(v189 + 1);
            v232 = v192;
            *v233 = *(v189 + 3);
            *&v233[9] = *(v189 + 57);
            specialized Optional<A>.hash(into:)();
            v193 = v189[73];
            if (v193 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v193 & 1);
            }

            v194 = *(v189 + 37);
            v195 = v194 | (v189[76] << 16);
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v195 & 1);
              MEMORY[0x1865CD060]((v195 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v195) & 1);
            }

            v196 = v189[77];
            if (v196 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v196 & 1);
            }

            v197 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v198 = v214;
            outlined init with copy of FloatingPointRoundingRule?(&v189[v197[9]], v214, &_ss25FloatingPointRoundingRuleOSgMd);
            if ((*(v43 + 48))(v198, 1, v42) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v199 = v217;
              (*(v43 + 32))(v217, v198, v42);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v43 + 8))(v199, v42);
            }

            v200 = &v189[v197[10]];
            v201 = v200[8];
            if (v201 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v202 = *v200;
              Hasher._combine(_:)(1u);
              if (v201)
              {
                MEMORY[0x1865CD060](1);
                if ((v202 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v203 = v202;
                }

                else
                {
                  v203 = 0;
                }

                MEMORY[0x1865CD090](v203);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v202);
              }
            }

            v204 = v189[v197[11]];
            if (v204 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v204);
            }

            return (*(v219 + 8))(v38, v220);
          }

LABEL_221:
          v187 = 0;
          goto LABEL_222;
        }
      }

      Hasher._combine(_:)(0);
      if (v184 != 2)
      {
        goto LABEL_218;
      }

      goto LABEL_221;
    }

LABEL_198:
    Hasher._combine(_:)(0);
    v178 = v211;
    if (v162)
    {
      goto LABEL_195;
    }

    goto LABEL_199;
  }

  v220 = v15;
  (*(v17 + 32))(v19, v23, v16);
  MEMORY[0x1865CD060](0);
  v34 = *(v19 + 1);
  v35 = swift_getObjectType();
  v36 = (*(v34 + 48))(v35, v34);
  v212 = v17;
  if (v36)
  {
    v37 = 1;
LABEL_14:
    Hasher._combine(_:)(v37);
    v46 = v221;
    v45 = v222;
    goto LABEL_156;
  }

  Hasher._combine(_:)(0);
  (*(v34 + 64))(v35, v34);
  String.hash(into:)();

  (*(v34 + 464))(&v223, v35, v34);
  v236 = v229;
  v237[0] = v230[0];
  *(v237 + 12) = *(v230 + 12);
  *v233 = v225;
  *&v233[16] = v226;
  v234 = v227;
  v235 = v228;
  v231 = v223;
  v232 = v224;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v231) == 1)
  {
    v37 = 0;
    goto LABEL_14;
  }

  v219 = v16;
  v53 = v223;
  v54 = *(&v223 + 1);
  v55 = *(&v224 + 1);
  v206 = v224;
  v56 = *(&v225 + 1);
  v207 = v225;
  v57 = v227;
  *&v208[8] = v226;
  *&v208[32] = *(&v227 + 1);
  v209 = v228;
  v210 = v229;
  *v208 = *(&v230[0] + 1);
  v211 = *&v230[0];
  v213 = *&v230[1];
  v214 = BYTE8(v230[1]);
  v215 = BYTE9(v230[1]);
  v58 = BYTE10(v230[1]);
  LODWORD(v218) = BYTE11(v230[1]);
  Hasher._combine(_:)(1u);
  if (v53 == 2)
  {
    v59 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v59 = v53 & 1;
  }

  *&v208[24] = v57;
  LODWORD(v216) = v58;
  Hasher._combine(_:)(v59);
  if (v54)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v54 + 16));
    v69 = *(v54 + 16);
    if (v69)
    {
      v70 = v54 + 40;
      do
      {

        String.hash(into:)();

        v70 += 16;
        --v69;
      }

      while (v69);
    }

    if (v55)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v55)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v46 = v221;
  v45 = v222;
  v116 = v209;
  v117 = *&v208[8];
  if (v56)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = v219;
  v118 = *&v208[24];
  if (v117)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v117, v119, v120, v121, v122, v123, v124);
    v125 = *&v208[16];
    if (*&v208[16])
    {
      goto LABEL_122;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v125 = *&v208[16];
    if (*&v208[16])
    {
LABEL_122:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v125, v126, v127, v128, v129, v130, v131);
      if (v118)
      {
        goto LABEL_123;
      }

      goto LABEL_128;
    }
  }

  Hasher._combine(_:)(0);
  if (v118)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v208[32])
    {
      goto LABEL_124;
    }

LABEL_129:
    Hasher._combine(_:)(0);
    if (v116)
    {
      goto LABEL_125;
    }

    goto LABEL_130;
  }

LABEL_128:
  Hasher._combine(_:)(0);
  if (!*&v208[32])
  {
    goto LABEL_129;
  }

LABEL_124:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v116)
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_131;
  }

LABEL_130:
  Hasher._combine(_:)(0);
LABEL_131:
  v132 = v213;
  if (*(&v209 + 1))
  {
    v133 = v215;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v210)
    {
LABEL_133:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_136;
    }
  }

  else
  {
    v133 = v215;
    Hasher._combine(_:)(0);
    if (v210)
    {
      goto LABEL_133;
    }
  }

  Hasher._combine(_:)(0);
LABEL_136:
  v134 = v133;
  v135 = v132;
  v136 = *(&v210 + 1);
  if (*(&v210 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v136);
    v137 = v211;
    if (v211)
    {
      goto LABEL_138;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    if (v135)
    {
      goto LABEL_139;
    }

LABEL_142:
    Hasher._combine(_:)(0);
    goto LABEL_143;
  }

  Hasher._combine(_:)(0);
  v137 = v211;
  if (!v211)
  {
    goto LABEL_141;
  }

LABEL_138:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v137);
  if (!v135)
  {
    goto LABEL_142;
  }

LABEL_139:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_143:
  v138 = v214;
  if (v214 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v138 & 1);
  }

  v139 = v218;
  if (v134 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v134 & 1);
  }

  v140 = v216;
  if (v216 == 2)
  {
    v141 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v141 = v140 & 1;
  }

  Hasher._combine(_:)(v141);
  if (v139 == 2)
  {
    v142 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v142 = v139 & 1;
  }

  Hasher._combine(_:)(v142);
  outlined destroy of TermOfAddress?(&v223, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_156:
  v143 = &v19[*(v16 + 36)];
  if (v143[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v144 = *v143;
    Hasher._combine(_:)(1u);
    if ((v144 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v145 = v144;
    }

    else
    {
      v145 = 0;
    }

    MEMORY[0x1865CD090](v145);
  }

  v146 = *(v143 + 2);
  v231 = *(v143 + 1);
  v232 = v146;
  *v233 = *(v143 + 3);
  *&v233[9] = *(v143 + 57);
  specialized Optional<A>.hash(into:)();
  v147 = v143[73];
  if (v147 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v147 & 1);
  }

  v148 = *(v143 + 37);
  v149 = v148 | (v143[76] << 16);
  if (v148 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v149 & 1);
    MEMORY[0x1865CD060]((v149 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v149) & 1);
  }

  v150 = v143[77];
  if (v150 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v150 & 1);
  }

  v151 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v152 = v220;
  outlined init with copy of FloatingPointRoundingRule?(&v143[v151[9]], v220, &_ss25FloatingPointRoundingRuleOSgMd);
  if ((*(v46 + 48))(v152, 1, v45) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v153 = v16;
    v154 = v217;
    (*(v46 + 32))(v217, v152, v45);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v155 = v154;
    v16 = v153;
    (*(v46 + 8))(v155, v45);
  }

  v156 = v212;
  v157 = &v143[v151[10]];
  v158 = v157[8];
  if (v158 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v159 = *v157;
    Hasher._combine(_:)(1u);
    if (v158)
    {
      MEMORY[0x1865CD060](1);
      if ((v159 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v160 = v159;
      }

      else
      {
        v160 = 0;
      }

      MEMORY[0x1865CD090](v160);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v159);
    }
  }

  v161 = v143[v151[11]];
  if (v161 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v161);
  }

  return (*(v156 + 8))(v19, v16);
}

Swift::Int FloatingPointFormatStyle.Attributed.hashValue.getter()
{
  Hasher.init(_seed:)();
  FloatingPointFormatStyle.Attributed.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v18 - v4;
  type metadata accessor for FloatingPointFormatStyle.Attributed.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedDecodingContainer();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for FloatingPointFormatStyle.Attributed();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v18 = v10;
    v26 = v8;
    v12 = v21;
    v14 = v23;
    v13 = v24;
    swift_getWitnessTable();
    v15 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v15);
    v16 = v18;
    (*(v14 + 32))(v18, v25, v13);
    (*(v19 + 32))(v20, v16, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v220 = a4;
  v219 = a3;
  v208 = a2;
  v207 = a1;
  v215 = a6;
  v228[6] = *MEMORY[0x1E69E9840];
  v210 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v212 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v203 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v213 = &v193 - v9;
  v211 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v218 = &v193 - v12;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v209);
  v216 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v204 = *(a5 + 24);
  v18 = type metadata accessor for FloatingPointParseStrategy();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v193 - v20);
  v214 = *(a5 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v206 = type metadata accessor for Optional();
  v205 = *(v206 - 8);
  v23 = MEMORY[0x1EEE9AC00](v206);
  v25 = (&v193 - v24);
  v26 = *(v13 + 16);
  v26(v21, v217, a5, v23);
  *(v21 + *(v18 + 44)) = 0;
  if (v219 >> 14 >= v220 >> 14)
  {
    (*(v19 + 8))(v21, v18);
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v25, 1, 1, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v200 = TupleTypeMetadata2;
  v201 = v25;
  v217 = v19;
  v202 = v18;
  (v26)(v16, v21, a5);
  v27 = v216;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v16 + *(a5 + 36), v216, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v29 = *v16;
  v28 = v16[1];
  v30 = v27;
  v31 = v218;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v30, v218, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v33 = v28[8];
  swift_unknownObjectRetain();
  v34 = v33(ObjectType, v28);
  v35 = v210;
  v36 = (v31 + *(v210 + 20));
  *v36 = v34;
  v36[1] = v37;
  *(v31 + *(v35 + 24)) = 0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v38 = static ICULegacyNumberFormatter.cache;
  v39 = qword_1EA7AFFA0;
  v40 = v213;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v31, v213, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v41 = (*(v212 + 80) + 16) & ~*(v212 + 80);
  v42 = v31;
  v43 = swift_allocObject();
  v44 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v40, v43 + v41, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v44);
  *(&v193 - 2) = v42;
  os_unfair_lock_lock((v39 + 24));
  v45 = v221;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v39 + 16, v226);
  if (v45)
  {
    goto LABEL_204;
  }

  v221 = 0;
  os_unfair_lock_unlock((v39 + 24));
  if (v226[0])
  {
    goto LABEL_6;
  }

  v64 = v221;
  v65 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
  if (v64)
  {

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v218, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v67 = @"NSDebugDescription";
    v68 = v67;
    v209 = v29;
    if (!isTaggedPointer)
    {
      goto LABEL_20;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v67);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          v29 = v21;
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v193 - 2) = v68;
          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v72 = v71;

LABEL_65:
          v228[0] = v70;
          v228[1] = v72;
          v226[0] = 0;
          v226[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(43);

          strcpy(v226, "Cannot parse ");
          HIWORD(v226[1]) = -4864;
          MEMORY[0x1865CB0E0](v207, v208);
          MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x800000018147ECD0);
          v228[5] = MEMORY[0x1E69E6158];
          v228[2] = v226[0];
          v228[3] = v226[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v106 = static _DictionaryStorage.allocate(capacity:)();
          v21 = v226;
          outlined init with copy of FloatingPointRoundingRule?(v228, v226, &_sSS_yptMd);

          outlined destroy of TermOfAddress?(v228, &_sSS_yptMd);
          v75 = v226[0];
          v107 = v226[1];
          v80 = specialized __RawDictionaryStorage.find<A>(_:)(v226[0], v226[1]);
          v39 = v108;

          if (v39)
          {
            __break(1u);
          }

          else
          {
            v106[(v80 >> 6) + 8] |= 1 << v80;
            v109 = (v106[6] + 16 * v80);
            *v109 = v75;
            v109[1] = v107;
            outlined init with take of Any(&v227, (v106[7] + 32 * v80));
            v110 = v106[2];
            v111 = __OFADD__(v110, 1);
            v112 = v110 + 1;
            if (!v111)
            {
              v106[2] = v112;
              v113 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v114 = @"NSCocoaErrorDomain";
              v115 = v114;
              if (!v113)
              {
                goto LABEL_72;
              }

              v116 = _objc_getTaggedPointerTag(v114);
              if (v116)
              {
                if (v116 != 22)
                {
                  if (v116 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v116);
                    *(&v193 - 2) = v115;
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_100;
                  }

LABEL_72:
                  LOBYTE(v222) = 0;
                  v226[0] = 0;
                  LOBYTE(v224) = 0;
                  v225 = 0;
                  IsCF = __CFStringIsCF();
                  if (IsCF)
                  {
                    v118 = v226[0];
                    if (!v226[0])
                    {
LABEL_97:

                      goto LABEL_100;
                    }

                    if (v225 == 1)
                    {
                      if (v222)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_100:
                      v39 = objc_allocWithZone(NSError);
                      v129 = String._bridgeToObjectiveCImpl()();

                      v130 = [v39 initWithDomain:v129 code:2048 userInfo:_NativeDictionary.bridged()()];
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v221 = v130;
                      v131 = [v130 domain];
                      if (!v131)
                      {
                        goto LABEL_114;
                      }

                      v132 = v131;
                      v133 = _objc_isTaggedPointer(v131);
                      v134 = v132;
                      v135 = v134;
                      if ((v133 & 1) == 0)
                      {
LABEL_106:
                        LOBYTE(v222) = 0;
                        v226[0] = 0;
                        LOBYTE(v224) = 0;
                        v225 = 0;
                        v140 = __CFStringIsCF();
                        if (v140)
                        {
                          v141 = v226[0];
                          if (v226[0])
                          {
                            if (v225 == 1)
                            {
                              if (v222)
                              {
                                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                              }

                              else
                              {
                                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                              }

                              v147 = String.init<A>(_immortalCocoaString:count:encoding:)();
                              goto LABEL_136;
                            }

                            if (v224)
                            {
                              if (v222 == 1)
                              {
                                v39 = &v193;
                                MEMORY[0x1EEE9AC00](v140);
                                *(&v193 - 4) = v135;
                                *(&v193 - 3) = v226;
                                *(&v193 - 4) = 1536;
                                *(&v193 - 1) = v141;
                              }

                              else
                              {
                                v149 = [v135 lengthOfBytesUsingEncoding_];
                                v39 = &v193;
                                MEMORY[0x1EEE9AC00](v149);
                                *(&v193 - 4) = v135;
                                *(&v193 - 3) = v226;
                                *(&v193 - 4) = 134217984;
                                *(&v193 - 1) = v150;
                              }

                              v151 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v139 = v152;
                              v153 = HIBYTE(v152) & 0xF;
                              if ((v152 & 0x2000000000000000) == 0)
                              {
                                v153 = v151 & 0xFFFFFFFFFFFFLL;
                              }

                              if (v153)
                              {
                                v137 = v151;
                                goto LABEL_120;
                              }
                            }

LABEL_135:
                            v147 = String.init(_cocoaString:)();
LABEL_136:
                            v137 = v147;
                            v139 = v148;
                            goto LABEL_137;
                          }
                        }

                        else
                        {
                          v39 = v135;
                          v142 = String.init(_nativeStorage:)();
                          if (v143)
                          {
                            v137 = v142;
                            v139 = v143;

                            goto LABEL_138;
                          }

                          v226[0] = [v39 length];
                          if (v226[0])
                          {
                            goto LABEL_135;
                          }
                        }

LABEL_114:
                        v137 = 0;
                        v139 = 0xE000000000000000;
                        goto LABEL_138;
                      }

                      v136 = _objc_getTaggedPointerTag(v134);
                      if (v136)
                      {
                        if (v136 != 22)
                        {
                          if (v136 == 2)
                          {
                            v39 = &v193;
                            MEMORY[0x1EEE9AC00](v136);
                            *(&v193 - 2) = v135;
                            v137 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v139 = v138;

LABEL_138:
                            v154 = v115;
                            v155 = v154;
                            if (v113)
                            {
                              v156 = _objc_getTaggedPointerTag(v154);
                              switch(v156)
                              {
                                case 0:
                                  v224 = 0;
                                  _CFIndirectTaggedPointerStringGetContents();
                                  v166 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                  v21 = v29;
                                  if (v167)
                                  {
                                    v157 = v166;
                                    v80 = v167;
                                  }

                                  else
                                  {
                                    [(__CFString *)v155 mutableCopy];
                                    _bridgeAnyObjectToAny(_:)();

                                    swift_unknownObjectRelease();
                                    swift_dynamicCast();
                                    v157 = v222;
                                    v80 = v223;
                                  }

                                  goto LABEL_164;
                                case 0x16:
                                  v163 = [(__CFString *)v155 UTF8String];
                                  if (!v163)
                                  {
LABEL_201:
                                    __break(1u);
                                    goto LABEL_202;
                                  }

                                  v164 = String.init(utf8String:)(v163);
                                  if (!v165)
                                  {
LABEL_202:
                                    __break(1u);
                                    goto LABEL_203;
                                  }

                                  v157 = v164;
                                  v80 = v165;
                                  v21 = v29;

                                  goto LABEL_164;
                                case 2:
                                  v39 = &v193;
                                  MEMORY[0x1EEE9AC00](v156);
                                  *(&v193 - 2) = v155;
                                  v157 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                  v80 = v158;

                                  v21 = v29;
LABEL_164:
                                  v29 = v209;
                                  goto LABEL_173;
                              }
                            }

                            LOBYTE(v222) = 0;
                            v226[0] = 0;
                            LOBYTE(v224) = 0;
                            v225 = 0;
                            v159 = __CFStringIsCF();
                            if (v159)
                            {
                              v160 = v226[0];
                              v21 = v29;
                              if (!v226[0])
                              {

                                v157 = 0;
                                v80 = 0xE000000000000000;
                                goto LABEL_164;
                              }

                              if (v225 == 1)
                              {
                                v29 = v209;
                                if (v222)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                v168 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                goto LABEL_172;
                              }

                              v29 = v209;
                              if (v224)
                              {
                                if (v222 == 1)
                                {
                                  v39 = &v193;
                                  MEMORY[0x1EEE9AC00](v159);
                                  *(&v193 - 4) = v155;
                                  *(&v193 - 3) = v226;
                                  *(&v193 - 4) = 1536;
                                  *(&v193 - 1) = v160;
                                }

                                else
                                {
                                  v170 = [(__CFString *)v155 lengthOfBytesUsingEncoding:4];
                                  v39 = &v193;
                                  MEMORY[0x1EEE9AC00](v170);
                                  *(&v193 - 4) = v155;
                                  *(&v193 - 3) = v226;
                                  *(&v193 - 4) = 134217984;
                                  *(&v193 - 1) = v171;
                                }

                                v172 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v80 = v173;
                                v174 = HIBYTE(v173) & 0xF;
                                if ((v173 & 0x2000000000000000) == 0)
                                {
                                  v174 = v172 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v174)
                                {
                                  v157 = v172;

                                  goto LABEL_173;
                                }
                              }
                            }

                            else
                            {
                              v39 = v155;
                              v161 = String.init(_nativeStorage:)();
                              v21 = v29;
                              if (v162)
                              {
                                v157 = v161;
                                v80 = v162;

                                goto LABEL_164;
                              }

                              v226[0] = [v39 length];
                              v29 = v209;
                              if (!v226[0])
                              {

                                v157 = 0;
                                v80 = 0xE000000000000000;
                                goto LABEL_173;
                              }
                            }

                            v168 = String.init(_cocoaString:)();
LABEL_172:
                            v157 = v168;
                            v80 = v169;
LABEL_173:
                            v175 = v217;
                            if (v137 == v157 && v139 == v80)
                            {

LABEL_177:
                              swift_willThrow();
                              swift_unknownObjectRelease();
                              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v216, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                              return (*(v175 + 8))(v21, v202);
                            }

                            v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v75)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_181;
                          }

                          goto LABEL_106;
                        }

                        v144 = [v135 UTF8String];
                        if (!v144)
                        {
LABEL_203:
                          __break(1u);
LABEL_204:
                          os_unfair_lock_unlock((v39 + 24));
                          __break(1u);
                          goto LABEL_205;
                        }

                        v145 = String.init(utf8String:)(v144);
                        if (v146)
                        {
LABEL_119:
                          v137 = v145;
                          v139 = v146;
LABEL_120:

LABEL_137:
                          goto LABEL_138;
                        }

                        __break(1u);
                      }

                      v224 = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v145 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v146)
                      {
                        [v135 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v137 = v222;
                        v139 = v223;
                        goto LABEL_137;
                      }

                      goto LABEL_119;
                    }

                    if (v224)
                    {
                      if (v222 == 1)
                      {
                        MEMORY[0x1EEE9AC00](IsCF);
                        *(&v193 - 4) = v115;
                        *(&v193 - 3) = v226;
                        *(&v193 - 4) = 1536;
                        *(&v193 - 1) = v118;
                      }

                      else
                      {
                        v124 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v124);
                        *(&v193 - 4) = v115;
                        *(&v193 - 3) = v226;
                        *(&v193 - 4) = 134217984;
                        *(&v193 - 1) = v125;
                      }

                      v126 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v128 = HIBYTE(v127) & 0xF;
                      if ((v127 & 0x2000000000000000) == 0)
                      {
                        v128 = v126 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v128)
                      {
                        goto LABEL_97;
                      }
                    }
                  }

                  else
                  {
                    v119 = v115;
                    String.init(_nativeStorage:)();
                    if (v120 || (v226[0] = [(__CFString *)v119 length]) == 0)
                    {

                      goto LABEL_100;
                    }
                  }

                  String.init(_cocoaString:)();
                  goto LABEL_100;
                }

                v121 = [(__CFString *)v115 UTF8String];
                if (!v121)
                {
LABEL_200:
                  __break(1u);
                  goto LABEL_201;
                }

                String.init(utf8String:)(v121);
                if (v122)
                {
                  goto LABEL_97;
                }

                __break(1u);
              }

              v224 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v123)
              {
                [(__CFString *)v115 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_100;
              }

              goto LABEL_97;
            }
          }

          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

LABEL_20:
        LOBYTE(v222) = 0;
        v226[0] = 0;
        LOBYTE(v224) = 0;
        v225 = 0;
        v73 = __CFStringIsCF();
        if (v73)
        {
          v74 = v226[0];
          if (v226[0])
          {
            if (v225 == 1)
            {
              v29 = v21;
              if (v222)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v99 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_64;
            }

            if (v224)
            {
              v29 = v21;
              if (v222 == 1)
              {
                MEMORY[0x1EEE9AC00](v73);
                *(&v193 - 4) = v68;
                *(&v193 - 3) = v226;
                *(&v193 - 4) = 1536;
                *(&v193 - 1) = v74;
              }

              else
              {
                v101 = [(__CFString *)v68 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v101);
                *(&v193 - 4) = v68;
                *(&v193 - 3) = v226;
                *(&v193 - 4) = 134217984;
                *(&v193 - 1) = v102;
              }

              v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v72 = v104;
              v105 = HIBYTE(v104) & 0xF;
              if ((v104 & 0x2000000000000000) == 0)
              {
                v105 = v103 & 0xFFFFFFFFFFFFLL;
              }

              if (v105)
              {
                v70 = v103;
                goto LABEL_47;
              }
            }

            else
            {
              v29 = v21;
            }

LABEL_63:
            v99 = String.init(_cocoaString:)();
LABEL_64:
            v70 = v99;
            v72 = v100;
            goto LABEL_65;
          }

          v29 = v21;
        }

        else
        {
          v29 = v21;
          v93 = v68;
          v94 = String.init(_nativeStorage:)();
          if (v95)
          {
            v70 = v94;
            v72 = v95;

            goto LABEL_65;
          }

          v226[0] = [(__CFString *)v93 length];
          if (v226[0])
          {
            goto LABEL_63;
          }
        }

        v70 = 0;
        v72 = 0xE000000000000000;
        goto LABEL_65;
      }

      v96 = [(__CFString *)v68 UTF8String];
      if (!v96)
      {
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v29 = v21;
      v97 = String.init(utf8String:)(v96);
      if (v98)
      {
LABEL_46:
        v70 = v97;
        v72 = v98;
LABEL_47:

        goto LABEL_65;
      }

      __break(1u);
    }

    v29 = v21;
    v224 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v98)
    {
      [(__CFString *)v68 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v70 = v222;
      v72 = v223;
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v75 = v65;
  os_unfair_lock_lock((v39 + 24));
  v76 = *(v39 + 16);
  v77 = *(v76 + 16);
  v221 = 0;
  v199 = v76;
  if (v38 < v77)
  {
    *(v39 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v78 = v203;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v218, v203, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v226[0] = *(v39 + 16);
  v80 = v226[0];
  *(v39 + 16) = 0x8000000000000000;
  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
  v83 = *(v80 + 16);
  v84 = (v81 & 1) == 0;
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
    goto LABEL_180;
  }

  if (*(v80 + 24) < v85)
  {
    v198 = v81;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, isUniquelyReferenced_nonNull_native);
    v211 = v226[0];
    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v78);
    v88 = v87 & 1;
    v89 = v198;
    if ((v198 & 1) != v88)
    {
LABEL_205:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v82 = v86;
    goto LABEL_32;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v81)
    {
      goto LABEL_33;
    }

LABEL_36:
    v90 = v203;
    v211 = v80;
    v91 = v213;
    v210 = v82;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v203, v213, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v92 = v91;
    v80 = v211;
    specialized _NativeDictionary._insert(at:key:value:)(v210, v92, v75, v211);
    goto LABEL_37;
  }

LABEL_182:
  v210 = v82;
  v198 = v81;
  v209 = v29;
  v194 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
  v211 = static _DictionaryStorage.copy(original:)();
  v196 = v80;
  if (*(v80 + 16))
  {
    v176 = (v211 + 8);
    v177 = 1 << *(v211 + 32);
    v195 = (v196 + 8);
    v178 = (v177 + 63) >> 6;
    if (v211 != v196 || v176 >= &v195[8 * v178])
    {
      memmove(v176, v195, 8 * v178);
    }

    v179 = 0;
    v180 = v196;
    v211[2] = v196[2];
    v181 = 1 << *(v180 + 32);
    v182 = v180[8];
    v183 = -1;
    if (v181 < 64)
    {
      v183 = ~(-1 << v181);
    }

    v197 = v183 & v182;
    v193 = (v181 + 63) >> 6;
    while (v197)
    {
      v184 = __clz(__rbit64(v197));
      v197 &= v197 - 1;
LABEL_196:
      v187 = v184 | (v179 << 6);
      v188 = v196;
      v189 = *(v212 + 72) * v187;
      v190 = v213;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v196[6] + v189, v213, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v191 = *(v188[7] + 8 * v187);
      v192 = v211;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(v190, v211[6] + v189, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(v192[7] + 8 * v187) = v191;
    }

    v185 = v179;
    while (1)
    {
      v179 = v185 + 1;
      if (__OFADD__(v185, 1))
      {
        break;
      }

      if (v179 >= v193)
      {
        goto LABEL_197;
      }

      v186 = *&v195[8 * v179];
      ++v185;
      if (v186)
      {
        v184 = __clz(__rbit64(v186));
        v197 = (v186 - 1) & v186;
        goto LABEL_196;
      }
    }

    __break(1u);
    goto LABEL_199;
  }

LABEL_197:

  v21 = v194;
  v89 = v198;
  v82 = v210;
LABEL_32:
  v80 = v211;
  if ((v89 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  *(*(v80 + 56) + 8 * v82) = v75;

  v90 = v203;
LABEL_37:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v90, type metadata accessor for ICULegacyNumberFormatter.Signature);
  *(v39 + 16) = v80;

  os_unfair_lock_unlock((v39 + 24));

LABEL_6:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v218, type metadata accessor for ICULegacyNumberFormatter.Signature);
  swift_unknownObjectRelease();

  v46 = String.subscript.getter();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v222 = 0;
  specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v46, v47, v49, v51, &v222);
  if (v53)
  {
    swift_unknownObjectRelease();

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v216, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    (*(v217 + 8))(v21, v202);
    TupleTypeMetadata2 = v200;
    v54 = *(v200 - 8);
    v25 = v201;
    (*(v54 + 56))(v201, 1, 1, v200);
LABEL_9:
    v55 = v214;
    goto LABEL_11;
  }

  v226[0] = v46;
  v226[1] = v48;
  *&v227 = v50;
  *(&v227 + 1) = v52;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v56 = String.Index.init<A>(utf16Offset:in:)();
  TupleTypeMetadata2 = v200;
  v25 = v201;
  *v201 = v56;
  v55 = v214;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_unknownObjectRelease();

  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v216, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  (*(v217 + 8))(v21, v202);
  v54 = *(TupleTypeMetadata2 - 8);
  (*(v54 + 56))(v25, 0, 1, TupleTypeMetadata2);
LABEL_11:
  if ((*(v54 + 48))(v25, 1, TupleTypeMetadata2) == 1)
  {
    (*(v205 + 8))(v25, v206);
    v57 = swift_getTupleTypeMetadata2();
    return (*(*(v57 - 8) + 56))(v215, 1, 1, v57);
  }

  else
  {
    v59 = *v25;
    v60 = *(TupleTypeMetadata2 + 48);
    v61 = swift_getTupleTypeMetadata2();
    v62 = *(v61 + 48);
    v63 = v215;
    *v215 = v59;
    (*(*(v55 - 8) + 32))(&v63[v62], v25 + v60, v55);
    return (*(*(v61 - 8) + 56))(v63, 0, 1, v61);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Percent.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v136 = a4;
  v135 = a3;
  v120 = a2;
  v119 = a1;
  v132 = a6;
  v139[16] = *MEMORY[0x1E69E9840];
  v127 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v128 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127);
  v112 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v107 - v9;
  v126 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v107 - v12;
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  v15 = type metadata accessor for FloatingPointFormatStyle();
  v116 = type metadata accessor for Optional();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v124 = &v107 - v16;
  v17 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v107 - v21;
  v125 = v15;
  v122 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v107 - v23);
  v123 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v113 = v13;
  v26 = type metadata accessor for FloatingPointParseStrategy();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v107 - v28;
  v131 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = type metadata accessor for Optional();
  v117 = *(v118 - 8);
  v31 = MEMORY[0x1EEE9AC00](v118);
  v33 = (&v107 - v32);
  v34 = *(v17 + 16);
  v34(v29, v134, a5, v31);
  v29[*(v26 + 44)] = 0;
  if (v135 >> 14 >= v136 >> 14)
  {
    (*(v27 + 8))(v29, v26);
    v40 = *(TupleTypeMetadata2 - 8);
    (*(v40 + 56))(v33, 1, 1, TupleTypeMetadata2);
LABEL_13:
    v68 = v131;
    goto LABEL_15;
  }

  v108 = TupleTypeMetadata2;
  v109 = v33;
  v134 = v27;
  v111 = v26;
  (v34)(v121, v29, a5);
  v35 = v124;
  v36 = v125;
  v37 = swift_dynamicCast();
  v38 = v122;
  v39 = v122[7];
  v110 = v29;
  if (v37)
  {
    v39(v35, 0, 1, v36);
    (v38[4])(v24, v35, v36);
  }

  else
  {
    v39(v35, 1, 1, v36);
    (*(v115 + 8))(v35, v116);
    v24 = v114;
    (v34)(v114, v29, a5);
    v36 = a5;
  }

  v41 = v133;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v24 + *(v36 + 36), v133, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v44 = v24;
  v43 = *v24;
  v42 = v44[1];
  v45 = v130;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v41, v130, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v47 = *(v42 + 64);
  swift_unknownObjectRetain();
  v48 = v47(ObjectType, v42);
  v49 = v127;
  v50 = (v45 + *(v127 + 5));
  *v50 = v48;
  v50[1] = v51;
  *(v45 + *(v49 + 6)) = 0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v52 = static ICULegacyNumberFormatter.cache;
  v53 = qword_1EA7AFFA0;
  v54 = v129;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v45, v129, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v55 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v56 = swift_allocObject();
  v57 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v54, v56 + v55, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v57);
  *(&v107 - 2) = v45;
  os_unfair_lock_lock((v53 + 24));
  v58 = v137;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v53 + 16, v139);
  if (v58)
  {
    goto LABEL_49;
  }

  v59 = 0;
  os_unfair_lock_unlock((v53 + 24));
  if (v139[0])
  {
    v137 = 0;
    goto LABEL_11;
  }

  v77 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v137 = 0;
  os_unfair_lock_lock((v53 + 24));
  v78 = *(v53 + 16);
  if (v52 >= *(v78 + 16))
  {
  }

  else
  {
    *(v53 + 16) = MEMORY[0x1E69E7CC8];
  }

  v79 = v112;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v130, v112, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v139[0] = *(v53 + 16);
  v81 = v139[0];
  *(v53 + 16) = 0x8000000000000000;
  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
  v84 = *(v81 + 16);
  v85 = (v83 & 1) == 0;
  v86 = __OFADD__(v84, v85);
  v87 = v84 + v85;
  if (v86)
  {
    __break(1u);
    __break(1u);
LABEL_31:
    v116 = v78;
    v125 = v43;
    v121 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v127 = static _DictionaryStorage.copy(original:)();
    if (!*(v81 + 16))
    {
LABEL_46:

      v82 = v121;
      v90 = v127;
      if (v59)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v94 = v127 + 8;
    v95 = 1 << *(v127 + 32);
    v122 = (v81 + 64);
    v96 = (v95 + 63) >> 6;
    if (v127 != v81 || v94 >= &v122[v96])
    {
      memmove(v94, v122, 8 * v96);
    }

    v97 = 0;
    v127[2] = *(v81 + 16);
    v98 = 1 << *(v81 + 32);
    v99 = -1;
    if (v98 < 64)
    {
      v99 = ~(-1 << v98);
    }

    v126 = v99 & *(v81 + 64);
    v115 = (v98 + 63) >> 6;
    while (v126)
    {
      v100 = __clz(__rbit64(v126));
      v126 &= v126 - 1;
LABEL_45:
      v103 = v100 | (v97 << 6);
      v104 = *(v81 + 48);
      v124 = *(v128 + 72) * v103;
      v105 = v129;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v104 + v124, v129, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v123 = *(*(v81 + 56) + 8 * v103);
      v106 = v127;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(v105, v127[6] + v124, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(v106[7] + 8 * v103) = v123;
    }

    v101 = v97;
    while (1)
    {
      v97 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v97 >= v115)
      {
        goto LABEL_46;
      }

      v102 = v122[v97];
      ++v101;
      if (v102)
      {
        v100 = __clz(__rbit64(v102));
        v126 = (v102 - 1) & v102;
        goto LABEL_45;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_49:
    os_unfair_lock_unlock((v53 + 24));
    __break(1u);
    goto LABEL_50;
  }

  v59 = v83;
  if (*(v81 + 24) >= v87)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v90 = v81;
      if (v83)
      {
        goto LABEL_25;
      }

LABEL_28:
      v92 = v82;
      v91 = v112;
      v127 = v90;
      v93 = v129;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v112, v129, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v90 = v127;
      specialized _NativeDictionary._insert(at:key:value:)(v92, v93, v77, v127);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, isUniquelyReferenced_nonNull_native);
  v88 = v139[0];
  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v112);
  if ((v59 & 1) != (v89 & 1))
  {
LABEL_50:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v90 = v88;
  if ((v59 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  *(v90[7] + 8 * v82) = v77;

  v91 = v112;
LABEL_29:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v91, type metadata accessor for ICULegacyNumberFormatter.Signature);
  *(v53 + 16) = v90;

  os_unfair_lock_unlock((v53 + 24));

  v45 = v130;
LABEL_11:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v45, type metadata accessor for ICULegacyNumberFormatter.Signature);
  swift_unknownObjectRelease();

  v60 = String.subscript.getter();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v138 = 0;
  specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v60, v61, v63, v65, &v138);
  if (v67)
  {
    swift_unknownObjectRelease();

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v133, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    (*(v134 + 8))(v110, v111);
    TupleTypeMetadata2 = v108;
    v40 = *(v108 - 8);
    v33 = v109;
    (*(v40 + 56))(v109, 1, 1, v108);
    goto LABEL_13;
  }

  v139[0] = v60;
  v139[1] = v62;
  v139[2] = v64;
  v139[3] = v66;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v69 = String.Index.init<A>(utf16Offset:in:)();
  TupleTypeMetadata2 = v108;
  v33 = v109;
  *v109 = v69;
  v68 = v131;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_unknownObjectRelease();

  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v133, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  (*(v134 + 8))(v110, v111);
  v40 = *(TupleTypeMetadata2 - 8);
  (*(v40 + 56))(v33, 0, 1, TupleTypeMetadata2);
LABEL_15:
  if ((*(v40 + 48))(v33, 1, TupleTypeMetadata2) == 1)
  {
    (*(v117 + 8))(v33, v118);
    v70 = swift_getTupleTypeMetadata2();
    return (*(*(v70 - 8) + 56))(v132, 1, 1, v70);
  }

  else
  {
    v72 = *v33;
    v73 = *(TupleTypeMetadata2 + 48);
    v74 = swift_getTupleTypeMetadata2();
    v75 = *(v74 + 48);
    v76 = v132;
    *v132 = v72;
    (*(*(v68 - 8) + 32))(&v76[v75], v33 + v73, v68);
    return (*(*(v74 - 8) + 56))(v76, 0, 1, v74);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>.Percent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Currency.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v165 = a4;
  v166 = a3;
  v151 = a2;
  v150 = a1;
  v161 = a6;
  v169[16] = *MEMORY[0x1E69E9840];
  v157 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v159 = &v129 - v9;
  v156 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v129 - v12;
  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  v15 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v138 = type metadata accessor for Optional();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v146 = &v129 - v16;
  v147 = v15;
  v145 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v136 = &v129 - v18;
  v19 = type metadata accessor for FloatingPointFormatStyle();
  v144 = type metadata accessor for Optional();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v153 = &v129 - v20;
  v21 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v129 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  v154 = v19;
  v152 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v141 = &v129 - v30;
  v155 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v155);
  v160 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v140 = v14;
  v32 = type metadata accessor for FloatingPointParseStrategy();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v129 - v34;
  v164 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v149 = type metadata accessor for Optional();
  v148 = *(v149 - 8);
  v37 = MEMORY[0x1EEE9AC00](v149);
  v39 = &v129 - v38;
  v40 = *(v21 + 16);
  v40(v35, v162, a5, v37);
  v35[*(v32 + 44)] = 0;
  if (v166 >> 14 < v165 >> 14)
  {
    v130 = TupleTypeMetadata2;
    v131 = v39;
    v134 = v33;
    v133 = v32;
    v41 = v35;
    (v40)(v28, v35, a5);
    v42 = v153;
    v43 = v154;
    v44 = swift_dynamicCast();
    v45 = v152;
    v46 = *(v152 + 56);
    v132 = v41;
    if (v44)
    {
      v46(v42, 0, 1, v43);
      v47 = v141;
      (*(v45 + 32))(v141, v42, v43);
      v48 = v160;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v47[*(v43 + 36)], v160, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v49 = v167;
      v50 = v157;
    }

    else
    {
      v46(v42, 1, 1, v43);
      (*(v143 + 8))(v42, v144);
      (v40)(v142, v41, a5);
      v53 = v146;
      v54 = v147;
      v55 = swift_dynamicCast();
      v56 = v145;
      v57 = *(v145 + 56);
      v50 = v157;
      if (v55)
      {
        v57(v53, 0, 1, v54);
        v47 = v136;
        (*(v56 + 32))(v136, v53, v54);
        v48 = v160;
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v47[*(v54 + 36)], v160, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      }

      else
      {
        v57(v53, 1, 1, v54);
        (*(v137 + 8))(v53, v138);
        v58 = v135;
        (v40)(v135, v41, a5);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd);
        v48 = v160;
        v60 = (v160 + *(v59 + 48));
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v58[*(a5 + 40)], v160, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v61 = *(v58 + 3);
        *v60 = *(v58 + 2);
        v60[1] = v61;
        v47 = v58;
      }

      v49 = v167;
    }

    swift_storeEnumTagMultiPayload();
    v64 = v47;
    v63 = *v47;
    v62 = *(v64 + 1);
    v65 = v163;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v48, v163, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    ObjectType = swift_getObjectType();
    v67 = *(v62 + 64);
    swift_unknownObjectRetain();
    v162 = v63;
    v68 = v67(ObjectType, v62);
    v69 = (v65 + *(v50 + 20));
    *v69 = v68;
    v69[1] = v70;
    *(v65 + *(v50 + 24)) = 0;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v71 = static ICULegacyNumberFormatter.cache;
    v72 = qword_1EA7AFFA0;
    v73 = v159;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v65, v159, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v74 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v75 = swift_allocObject();
    v76 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v73, v75 + v74, type metadata accessor for ICULegacyNumberFormatter.Signature);
    MEMORY[0x1EEE9AC00](v76);
    *(&v129 - 2) = v65;
    os_unfair_lock_lock((v72 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v72 + 16, v169);
    if (!v49)
    {
      os_unfair_lock_unlock((v72 + 24));
      if (v169[0])
      {
        v167 = 0;
        goto LABEL_14;
      }

      v97 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
      v167 = 0;
      os_unfair_lock_lock((v72 + 24));
      v98 = *(v72 + 16);
      if (v71 >= *(v98 + 16))
      {
      }

      else
      {
        *(v72 + 16) = MEMORY[0x1E69E7CC8];
      }

      v99 = v139;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v163, v139, type metadata accessor for ICULegacyNumberFormatter.Signature);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169[0] = *(v72 + 16);
      v101 = v169[0];
      *(v72 + 16) = 0x8000000000000000;
      v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
      v104 = *(v101 + 16);
      v105 = (v103 & 1) == 0;
      v106 = __OFADD__(v104, v105);
      v107 = v104 + v105;
      if (v106)
      {
        __break(1u);
        __break(1u);
      }

      else
      {
        v108 = *(v101 + 24);
        v157 = v98;
        if (v108 < v107)
        {
          v109 = v103;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, isUniquelyReferenced_nonNull_native);
          v110 = v169[0];
          v102 = specialized __RawDictionaryStorage.find<A>(_:)(v139);
          if ((v109 & 1) == (v111 & 1))
          {
            v48 = v160;
            v112 = v110;
            if (v109)
            {
LABEL_27:
              *(v112[7] + 8 * v102) = v97;

              v113 = v139;
LABEL_31:
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v113, type metadata accessor for ICULegacyNumberFormatter.Signature);
              *(v72 + 16) = v112;

              os_unfair_lock_unlock((v72 + 24));

LABEL_14:
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v163, type metadata accessor for ICULegacyNumberFormatter.Signature);
              swift_unknownObjectRelease();

              v77 = String.subscript.getter();
              v79 = v78;
              v81 = v80;
              v83 = v82;
              v168 = 0;
              specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v77, v78, v80, v82, &v168);
              v84 = v134;
              if (v85)
              {
                swift_unknownObjectRelease();

                _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v48, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                (*(v84 + 8))(v132, v133);
                TupleTypeMetadata2 = v130;
                v51 = *(v130 - 8);
                v52 = v131;
                (*(v51 + 56))(v131, 1, 1, v130);
              }

              else
              {
                v169[0] = v77;
                v169[1] = v79;
                v169[2] = v81;
                v169[3] = v83;
                lazy protocol witness table accessor for type Substring and conformance Substring();
                v86 = String.Index.init<A>(utf16Offset:in:)();
                TupleTypeMetadata2 = v130;
                v87 = v131;
                *v131 = v86;
                dispatch thunk of BinaryFloatingPoint.init(_:)();
                swift_unknownObjectRelease();

                v88 = v48;
                v52 = v87;
                _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v88, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                (*(v84 + 8))(v132, v133);
                v51 = *(TupleTypeMetadata2 - 8);
                (*(v51 + 56))(v52, 0, 1, TupleTypeMetadata2);
              }

              goto LABEL_17;
            }

LABEL_30:
            v114 = v102;
            v113 = v139;
            v115 = v159;
            _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v139, v159, type metadata accessor for ICULegacyNumberFormatter.Signature);
            specialized _NativeDictionary._insert(at:key:value:)(v114, v115, v97, v112);
            goto LABEL_31;
          }

LABEL_52:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v112 = v101;
          v48 = v160;
          if (v103)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      LODWORD(v147) = v103;
      v152 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
      v155 = static _DictionaryStorage.copy(original:)();
      if (!*(v101 + 16))
      {
LABEL_48:

        v102 = v152;
        v48 = v160;
        v112 = v155;
        if (v147)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      v116 = (v155 + 64);
      v117 = 1 << *(v155 + 32);
      v153 = (v101 + 64);
      v118 = (v117 + 63) >> 6;
      if (v155 != v101 || v116 >= &v153[8 * v118])
      {
        memmove(v116, v153, 8 * v118);
      }

      v119 = 0;
      *(v155 + 16) = *(v101 + 16);
      v120 = 1 << *(v101 + 32);
      v121 = -1;
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      v156 = v121 & *(v101 + 64);
      v146 = ((v120 + 63) >> 6);
      while (v156)
      {
        v122 = __clz(__rbit64(v156));
        v156 &= v156 - 1;
LABEL_47:
        v125 = v122 | (v119 << 6);
        v126 = *(v158 + 72) * v125;
        v127 = v159;
        _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(*(v101 + 48) + v126, v159, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v154 = *(*(v101 + 56) + 8 * v125);
        v128 = v155;
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(v127, *(v155 + 48) + v126, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v128 + 56) + 8 * v125) = v154;
      }

      v123 = v119;
      while (1)
      {
        v119 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          break;
        }

        if (v119 >= v146)
        {
          goto LABEL_48;
        }

        v124 = *&v153[8 * v119];
        ++v123;
        if (v124)
        {
          v122 = __clz(__rbit64(v124));
          v156 = (v124 - 1) & v124;
          goto LABEL_47;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
    }

    os_unfair_lock_unlock((v72 + 24));
    __break(1u);
    goto LABEL_52;
  }

  (*(v33 + 8))(v35, v32);
  v51 = *(TupleTypeMetadata2 - 8);
  (*(v51 + 56))(v39, 1, 1, TupleTypeMetadata2);
  v52 = v39;
LABEL_17:
  if ((*(v51 + 48))(v52, 1, TupleTypeMetadata2) == 1)
  {
    (*(v148 + 8))(v52, v149);
    v89 = swift_getTupleTypeMetadata2();
    return (*(*(v89 - 8) + 56))(v161, 1, 1, v89);
  }

  else
  {
    v91 = *v52;
    v92 = *(TupleTypeMetadata2 + 48);
    v93 = v164;
    v94 = swift_getTupleTypeMetadata2();
    v95 = *(v94 + 48);
    v96 = v161;
    *v161 = v91;
    (*(*(v93 - 8) + 32))(&v96[v95], &v52[v92], v93);
    return (*(*(v94 - 8) + 56))(v96, 0, 1, v94);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>.Currency(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t static RegexComponent<>.localizedDouble(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd) + 36);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedDoublePercentage(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd) + 36);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>.Currency(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>.Percent(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for FloatingPointFormatStyle.Attributed()
{
  result = type metadata accessor for FloatingPointFormatStyle.Attributed.Style();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for FloatingPointFormatStyle.Attributed.Style()
{
  result = type metadata accessor for FloatingPointFormatStyle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FloatingPointFormatStyle.Currency();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FloatingPointFormatStyle.Percent();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t FloatingPointParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle, a5);
}

{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle.Percent, a5);
}

{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle.Currency, a5);
}

void FloatingPointParseStrategy.parse(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v289 = a2;
  v288 = a1;
  v256 = a4;
  v297[6] = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v281 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v271 = &v238 - v8;
  v274 = a3;
  v9 = a3[4];
  v270 = *(v9 + 8);
  v269 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v269);
  v268 = &v238 - v10;
  v284 = swift_getAssociatedTypeWitness();
  v265 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v285 = &v238 - v11;
  v12 = type metadata accessor for FloatingPointFormatStyle.Currency();
  v239 = type metadata accessor for Optional();
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v250 = &v238 - v13;
  v251 = v12;
  v249 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v240 = &v238 - v15;
  v275 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v276 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v252 = &v238 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v277 = &v238 - v18;
  v273 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v278 = &v238 - v21;
  v22 = type metadata accessor for FloatingPointFormatStyle.Percent();
  v248 = type metadata accessor for Optional();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v263 = &v238 - v23;
  v264 = v22;
  v262 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v246 = &v238 - v25;
  v255 = v9;
  v26 = type metadata accessor for FloatingPointFormatStyle();
  v261 = type metadata accessor for Optional();
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v28 = &v238 - v27;
  v286 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v245 = &v238 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v259 = &v238 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v238 - v35;
  v37 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v238 - v39);
  v272 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v272);
  v283 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v267 = type metadata accessor for Optional();
  v266 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v280 = (&v238 - v43);
  v279 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v254 = &v238 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v253 = &v238 - v49;
  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v47, v48);
    v51 = String.init(_:)();
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  if ((v52 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v52) & 0xF;
  }

  else
  {
    v53 = v51 & 0xFFFFFFFFFFFFLL;
  }

  v54 = 7;
  if (((v52 >> 60) & ((v51 & 0x800000000000000) == 0)) != 0)
  {
    v54 = 11;
  }

  if (!v53)
  {

    v61 = v280;
    (*(v279 + 56))(v280, 1, 1, TupleTypeMetadata2);
    v62 = v284;
    v63 = v282;
    goto LABEL_32;
  }

  v241 = v54;
  v242 = v53;
  v243 = TupleTypeMetadata2;
  v257 = v51;
  v258 = v52;
  v244 = v6;
  v55 = *(v29 + 16);
  v56 = v287;
  v57 = v286;
  v55(v36, v287, v286);
  v58 = swift_dynamicCast();
  v59 = *(v37 + 56);
  if (v58)
  {
    v59(v28, 0, 1, v26);
    (*(v37 + 32))(v40, v28, v26);
    v60 = v283;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v40 + *(v26 + 36), v283, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v59(v28, 1, 1, v26);
    (*(v260 + 8))(v28, v261);
    v55(v259, v56, v57);
    v64 = v263;
    v65 = v264;
    v66 = swift_dynamicCast();
    v67 = v262;
    v68 = *(v262 + 56);
    if ((v66 & 1) == 0)
    {
      v68(v64, 1, 1, v65);
      (*(v247 + 8))(v64, v248);
      v55(v245, v56, v57);
      v73 = v250;
      v74 = v251;
      v75 = swift_dynamicCast();
      v76 = v249;
      v77 = *(v249 + 56);
      v60 = v283;
      v72 = v278;
      if (v75)
      {
        v77(v73, 0, 1, v74);
        v78 = v240;
        (*(v76 + 32))(v240, v73, v74);
        v79 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd) + 48));
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v78 + *(v74 + 40), v60, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v80 = v78[3];
        *v79 = v78[2];
        v79[1] = v80;
        swift_storeEnumTagMultiPayload();
        inited = *v78;
        v69 = v78[1];
      }

      else
      {
        v77(v73, 1, 1, v74);
        (*(v238 + 8))(v73, v239);
        *v60 = 0;
        *(v60 + 8) = 1;
        *(v60 + 16) = 0;
        *(v60 + 24) = 0;
        *(v60 + 32) = 0;
        *(v60 + 40) = 0x1FFFFFFFELL;
        *(v60 + 56) = 0;
        *(v60 + 64) = 0;
        *(v60 + 48) = 0;
        *(v60 + 72) = 131584;
        *(v60 + 76) = 512;
        v81 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v82 = v81[9];
        v83 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v83 - 8) + 56))(v60 + v82, 1, 1, v83);
        v84 = v60 + v81[10];
        *v84 = 0;
        *(v84 + 8) = -1;
        *(v60 + v81[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        inited = swift_initStaticObject();
        v69 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }

      v71 = v290;
      goto LABEL_22;
    }

    v68(v64, 0, 1, v65);
    v40 = v246;
    (*(v67 + 32))(v246, v64, v65);
    v60 = v283;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v40 + *(v65 + 36), v283, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  swift_storeEnumTagMultiPayload();
  inited = *v40;
  v69 = v40[1];
  v71 = v290;
  v72 = v278;
LABEL_22:
  v85 = *(v56 + *(v274 + 11));
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v60, v72, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v87 = *(v69 + 64);
  swift_unknownObjectRetain();
  v274 = inited;
  v88 = v87(ObjectType, v69);
  v89 = v275;
  v90 = (v72 + *(v275 + 20));
  *v90 = v88;
  v90[1] = v91;
  *(v72 + *(v89 + 24)) = v85;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v92 = static ICULegacyNumberFormatter.cache;
  v62 = qword_1EA7AFFA0;
  v93 = v277;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v72, v277, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v94 = (*(v276 + 80) + 16) & ~*(v276 + 80);
  v95 = swift_allocObject();
  v96 = _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v93, v95 + v94, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v96);
  *(&v238 - 2) = v72;
  os_unfair_lock_lock((v62 + 24));
  _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA015ICULegacyNumberB0C9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLV_AJTG5TA_0(v62 + 16, v295);
  if (v71)
  {
    goto LABEL_223;
  }

  os_unfair_lock_unlock((v62 + 24));
  if (!v295[0])
  {
    v111 = 0;
    v128 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
    os_unfair_lock_lock((v62 + 24));
    v129 = *(v62 + 16);
    if (v92 >= *(v129 + 16))
    {
    }

    else
    {
      *(v62 + 16) = MEMORY[0x1E69E7CC8];
    }

    v133 = v252;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v72, v252, type metadata accessor for ICULegacyNumberFormatter.Signature);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295[0] = *(v62 + 16);
    v135 = v295[0];
    *(v62 + 16) = 0x8000000000000000;
    v136 = specialized __RawDictionaryStorage.find<A>(_:)(v133);
    v138 = v135[2];
    v139 = (v137 & 1) == 0;
    v140 = __OFADD__(v138, v139);
    v141 = v138 + v139;
    if (!v140)
    {
      LOBYTE(v92) = v137;
      v142 = v135[3];
      v273 = v129;
      if (v142 < v141)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v141, isUniquelyReferenced_nonNull_native);
        v290 = v295[0];
        v136 = specialized __RawDictionaryStorage.find<A>(_:)(v252);
        if ((v92 & 1) == (v143 & 1))
        {
          goto LABEL_68;
        }

        v136 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v290 = v135;
        goto LABEL_68;
      }

      goto LABEL_202;
    }

    goto LABEL_201;
  }

  v290 = 0;
  while (1)
  {
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v72, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v97 = String.subscript.getter();
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v291 = 0;
    specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v97, v99, v101, v103, &v291);
    v104 = v284;
    if (v105)
    {
      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v60, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      swift_unknownObjectRelease();

      v106 = 1;
      v63 = v282;
      v107 = v243;
      v61 = v280;
    }

    else
    {
      v295[0] = v97;
      v295[1] = v99;
      *&v296 = v101;
      *(&v296 + 1) = v103;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v108 = String.Index.init<A>(utf16Offset:in:)();
      v107 = v243;
      v61 = v280;
      *v280 = v108;
      v63 = v282;
      dispatch thunk of BinaryFloatingPoint.init(_:)();
      swift_unknownObjectRelease();

      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v60, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      v106 = 0;
    }

    v109 = v279;
    (*(v279 + 56))(v61, v106, 1, v107);
    v110 = (*(v109 + 48))(v61, 1, v107);
    v6 = v244;
    if (v110 != 1)
    {
      v122 = *(v109 + 32);
      v123 = v253;
      v122(v253, v61, v107);
      v124 = v254;
      v122(v254, v123, v107);
      (*(v281 + 32))(v256, &v124[*(v107 + 48)], v63);
      return;
    }

    v62 = v104;
LABEL_32:
    (*(v266 + 8))(v61, v267);
    swift_getAssociatedConformanceWitness();
    v111 = v268;
    dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)();
    v112 = v271;
    dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)();
    (*(v6 + 48))(v112, v286, v6);
    (*(v281 + 8))(v112, v63);
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v114 = @"NSDebugDescription";
    v115 = v114;
    if (!isTaggedPointer)
    {
      goto LABEL_37;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v114);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v238 - 2) = v115;
          v117 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v119 = v118;

          goto LABEL_83;
        }

LABEL_37:
        LOBYTE(v291) = 0;
        v295[0] = 0;
        LOBYTE(v293) = 0;
        v294 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v121 = v295[0];
          if (!v295[0])
          {

LABEL_47:
            v117 = 0;
            v119 = 0xE000000000000000;
            goto LABEL_83;
          }

          if (v294 == 1)
          {
            if (v291)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v150 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_82;
          }

          if (v293)
          {
            if (v291 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v238 - 4) = v115;
              *(&v238 - 3) = v295;
              *(&v238 - 4) = 1536;
              *(&v238 - 1) = v121;
            }

            else
            {
              v152 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v152);
              *(&v238 - 4) = v115;
              *(&v238 - 3) = v295;
              *(&v238 - 4) = 134217984;
              *(&v238 - 1) = v153;
            }

            v154 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v119 = v155;
            v156 = HIBYTE(v155) & 0xF;
            if ((v155 & 0x2000000000000000) == 0)
            {
              v156 = v154 & 0xFFFFFFFFFFFFLL;
            }

            if (v156)
            {
              v117 = v154;
              goto LABEL_55;
            }
          }
        }

        else
        {
          v125 = v115;
          v126 = String.init(_nativeStorage:)();
          if (v127)
          {
            v117 = v126;
            v119 = v127;

            goto LABEL_83;
          }

          v295[0] = [(__CFString *)v125 length];
          if (!v295[0])
          {

            goto LABEL_47;
          }
        }

        v150 = String.init(_cocoaString:)();
LABEL_82:
        v117 = v150;
        v119 = v151;
        goto LABEL_83;
      }

      v130 = [(__CFString *)v115 UTF8String];
      if (!v130)
      {
        goto LABEL_219;
      }

      v131 = String.init(utf8String:)(v130);
      if (v132)
      {
LABEL_54:
        v117 = v131;
        v119 = v132;
LABEL_55:

        goto LABEL_83;
      }

      __break(1u);
    }

    v293 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v131 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v132)
    {
      goto LABEL_54;
    }

    [(__CFString *)v115 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v117 = v291;
    v119 = v292;
LABEL_83:
    v297[0] = v117;
    v297[1] = v119;
    v295[0] = 0;
    v295[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v288, v289);
    MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
    _print_unlocked<A, B>(_:_:)();
    v297[5] = MEMORY[0x1E69E6158];
    v297[2] = v295[0];
    v297[3] = v295[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v128 = static _DictionaryStorage.allocate(capacity:)();
    v135 = v295;
    outlined init with copy of (String, Any)(v297, v295);

    outlined destroy of (String, Any)(v297);
    v157 = v295[0];
    v158 = v295[1];
    v159 = specialized __RawDictionaryStorage.find<A>(_:)(v295[0], v295[1]);
    LOBYTE(v92) = v160;

    if (v92)
    {
      __break(1u);
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    v128[(v159 >> 6) + 8] |= 1 << v159;
    v161 = (v128[6] + 16 * v159);
    *v161 = v157;
    v161[1] = v158;
    v136 = outlined init with take of Any(&v296, (v128[7] + 32 * v159));
    v162 = v128[2];
    v140 = __OFADD__(v162, 1);
    v163 = v162 + 1;
    if (v140)
    {
      goto LABEL_199;
    }

    v128[2] = v163;
    v164 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v165 = @"NSCocoaErrorDomain";
    v166 = v165;
    if (v164)
    {
      v167 = _objc_getTaggedPointerTag(v165);
      switch(v167)
      {
        case 0:
          goto LABEL_101;
        case 0x16:
          v172 = [(__CFString *)v166 UTF8String];
          if (!v172)
          {
            goto LABEL_220;
          }

          String.init(utf8String:)(v172);
          if (!v173)
          {
            __break(1u);
LABEL_101:
            v293 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v174)
            {
              [(__CFString *)v166 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_118;
            }
          }

LABEL_115:

          goto LABEL_118;
        case 2:
          MEMORY[0x1EEE9AC00](v167);
          *(&v238 - 2) = v166;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_118;
      }
    }

    LOBYTE(v291) = 0;
    v295[0] = 0;
    LOBYTE(v293) = 0;
    v294 = 0;
    v168 = __CFStringIsCF();
    if (!v168)
    {
      v170 = v166;
      String.init(_nativeStorage:)();
      if (v171 || (v295[0] = [(__CFString *)v170 length]) == 0)
      {

        goto LABEL_118;
      }

LABEL_117:
      String.init(_cocoaString:)();
      goto LABEL_118;
    }

    v169 = v295[0];
    if (!v295[0])
    {
      goto LABEL_115;
    }

    if (v294 != 1)
    {
      if (v293)
      {
        if (v291 == 1)
        {
          MEMORY[0x1EEE9AC00](v168);
          *(&v238 - 4) = v166;
          *(&v238 - 3) = v295;
          *(&v238 - 4) = 1536;
          *(&v238 - 1) = v169;
        }

        else
        {
          v175 = [(__CFString *)v166 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v175);
          *(&v238 - 4) = v166;
          *(&v238 - 3) = v295;
          *(&v238 - 4) = 134217984;
          *(&v238 - 1) = v176;
        }

        v177 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v179 = HIBYTE(v178) & 0xF;
        if ((v178 & 0x2000000000000000) == 0)
        {
          v179 = v177 & 0xFFFFFFFFFFFFLL;
        }

        if (v179)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_117;
    }

    if (v291)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_118:
    v180 = objc_allocWithZone(NSError);
    v181 = String._bridgeToObjectiveCImpl()();

    v111 = MEMORY[0x1E69E7CA0];
    v128 = [v180 initWithDomain:v181 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v182 = [v128 domain];
    if (!v182)
    {
      goto LABEL_132;
    }

    v183 = v182;
    v184 = _objc_isTaggedPointer(v182);
    v185 = v183;
    v186 = v185;
    if ((v184 & 1) == 0)
    {
      goto LABEL_124;
    }

    v187 = _objc_getTaggedPointerTag(v185);
    if (v187)
    {
      if (v187 != 22)
      {
        if (v187 == 2)
        {
          MEMORY[0x1EEE9AC00](v187);
          *(&v238 - 2) = v186;
          v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v189 = v188;

LABEL_152:
          v62 = v284;
          goto LABEL_158;
        }

LABEL_124:
        LOBYTE(v291) = 0;
        v295[0] = 0;
        LOBYTE(v293) = 0;
        v294 = 0;
        v190 = __CFStringIsCF();
        if (v190)
        {
          v191 = v295[0];
          if (!v295[0])
          {

LABEL_132:
            v92 = 0;
            v189 = 0xE000000000000000;
            goto LABEL_158;
          }

          if (v294 == 1)
          {
            if (v291)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v198 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_156;
          }

          if ((v293 & 1) == 0)
          {
LABEL_155:
            v198 = String.init(_cocoaString:)();
LABEL_156:
            v92 = v198;
            v189 = v199;
            goto LABEL_157;
          }

          if (v291 == 1)
          {
            MEMORY[0x1EEE9AC00](v190);
            *(&v238 - 4) = v186;
            *(&v238 - 3) = v295;
            *(&v238 - 4) = 1536;
            *(&v238 - 1) = v191;
          }

          else
          {
            v200 = [v186 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v200);
            *(&v238 - 4) = v186;
            *(&v238 - 3) = v295;
            *(&v238 - 4) = 134217984;
            *(&v238 - 1) = v201;
          }

          v202 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v189 = v203;
          v204 = HIBYTE(v203) & 0xF;
          if ((v203 & 0x2000000000000000) == 0)
          {
            v204 = v202 & 0xFFFFFFFFFFFFLL;
          }

          if (v204)
          {
            v92 = v202;

            goto LABEL_152;
          }
        }

        else
        {
          v192 = v186;
          v193 = String.init(_nativeStorage:)();
          if (v194)
          {
            v92 = v193;
            v189 = v194;

            goto LABEL_152;
          }

          v295[0] = [v192 length];
          if (!v295[0])
          {

            v92 = 0;
            v189 = 0xE000000000000000;
            goto LABEL_152;
          }
        }

        v62 = v284;
        goto LABEL_155;
      }

      v195 = [v186 UTF8String];
      if (!v195)
      {
        goto LABEL_222;
      }

      v196 = String.init(utf8String:)(v195);
      if (v197)
      {
        goto LABEL_137;
      }

      __break(1u);
    }

    v293 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v196 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v197)
    {
      [v186 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v92 = v291;
      v189 = v292;
      goto LABEL_157;
    }

LABEL_137:
    v92 = v196;
    v189 = v197;

LABEL_157:
LABEL_158:
    v205 = v166;
    v206 = v205;
    if (!v164)
    {
      goto LABEL_163;
    }

    v207 = _objc_getTaggedPointerTag(v205);
    if (v207)
    {
      if (v207 != 22)
      {
        if (v207 == 2)
        {
          MEMORY[0x1EEE9AC00](v207);
          *(&v238 - 2) = v206;
          v135 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v209 = v208;

          goto LABEL_193;
        }

LABEL_163:
        LOBYTE(v291) = 0;
        v295[0] = 0;
        LOBYTE(v293) = 0;
        v294 = 0;
        v210 = __CFStringIsCF();
        if (v210)
        {
          v211 = v295[0];
          if (!v295[0])
          {

LABEL_171:
            v135 = 0;
            v209 = 0xE000000000000000;
            goto LABEL_193;
          }

          if (v294 == 1)
          {
            if (v291)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v218 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_192;
          }

          if (v293)
          {
            if (v291 == 1)
            {
              MEMORY[0x1EEE9AC00](v210);
              *(&v238 - 4) = v206;
              *(&v238 - 3) = v295;
              *(&v238 - 4) = 1536;
              *(&v238 - 1) = v211;
            }

            else
            {
              v220 = [(__CFString *)v206 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v220);
              *(&v238 - 4) = v206;
              *(&v238 - 3) = v295;
              *(&v238 - 4) = 134217984;
              *(&v238 - 1) = v221;
            }

            v222 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v209 = v223;
            v224 = HIBYTE(v223) & 0xF;
            if ((v223 & 0x2000000000000000) == 0)
            {
              v224 = v222 & 0xFFFFFFFFFFFFLL;
            }

            if (v224)
            {
              v135 = v222;

              goto LABEL_193;
            }
          }
        }

        else
        {
          v212 = v206;
          v213 = String.init(_nativeStorage:)();
          if (v214)
          {
            v135 = v213;
            v209 = v214;

            goto LABEL_193;
          }

          v295[0] = [(__CFString *)v212 length];
          if (!v295[0])
          {

            goto LABEL_171;
          }
        }

        v218 = String.init(_cocoaString:)();
LABEL_192:
        v135 = v218;
        v209 = v219;
        goto LABEL_193;
      }

      v215 = [(__CFString *)v206 UTF8String];
      if (!v215)
      {
        goto LABEL_221;
      }

      v216 = String.init(utf8String:)(v215);
      if (v217)
      {
LABEL_176:
        v135 = v216;
        v209 = v217;

        goto LABEL_193;
      }

      __break(1u);
    }

    v293 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v216 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v217)
    {
      goto LABEL_176;
    }

    [(__CFString *)v206 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v135 = v291;
    v209 = v292;
LABEL_193:
    if (v92 == v135 && v189 == v209)
    {

LABEL_197:
      swift_willThrow();
      (*(v265 + 8))(v285, v62);
      return;
    }

    v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v225)
    {
      goto LABEL_197;
    }

LABEL_200:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_201:
    __break(1u);
    __break(1u);
LABEL_202:
    v262 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd);
    v290 = static _DictionaryStorage.copy(original:)();
    if (v135[2])
    {
      break;
    }

LABEL_217:

    v136 = v262;
LABEL_68:
    v144 = v111;
    v72 = v278;
    v60 = v283;
    if (v92)
    {
      v145 = v290;
      *(v290[7] + 8 * v136) = v128;

      v146 = v252;
    }

    else
    {
      v147 = v136;
      v146 = v252;
      v148 = v277;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v252, v277, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v149 = v147;
      v145 = v290;
      specialized _NativeDictionary._insert(at:key:value:)(v149, v148, v128, v290);
    }

    v290 = v144;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v146, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v62 + 16) = v145;

    os_unfair_lock_unlock((v62 + 24));
  }

  v226 = (v290 + 8);
  v227 = 1 << *(v290 + 32);
  v263 = (v135 + 8);
  v228 = (v227 + 63) >> 6;
  if (v290 != v135 || v226 >= &v263[8 * v228])
  {
    memmove(v226, v263, 8 * v228);
  }

  v229 = 0;
  v290[2] = v135[2];
  v230 = 1 << *(v135 + 32);
  v231 = -1;
  if (v230 < 64)
  {
    v231 = ~(-1 << v230);
  }

  v275 = v231 & v135[8];
  v261 = (v230 + 63) >> 6;
  while (v275)
  {
    v232 = __clz(__rbit64(v275));
    v275 &= v275 - 1;
LABEL_216:
    v235 = v232 | (v229 << 6);
    v236 = v135[6];
    v272 = *(v276 + 72) * v235;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v236 + v272, v277, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v264 = *(v135[7] + 8 * v235);
    v237 = v290;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v277, v290[6] + v272, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v237[7] + 8 * v235) = v264;
  }

  v233 = v229;
  while (1)
  {
    v229 = v233 + 1;
    if (__OFADD__(v233, 1))
    {
      break;
    }

    if (v229 >= v261)
    {
      goto LABEL_217;
    }

    v234 = *&v263[8 * v229];
    ++v233;
    if (v234)
    {
      v232 = __clz(__rbit64(v234));
      v275 = (v234 - 1) & v234;
      goto LABEL_216;
    }
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_223:
  os_unfair_lock_unlock((v62 + 24));
  __break(1u);
}