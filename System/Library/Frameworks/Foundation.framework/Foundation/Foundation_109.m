void **PropertyListEncoder._encodeXML<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  p_src = &__src;
  PropertyListEncoder.encodeToTopLevelContainerXML<A>(_:configuration:)(a1, a2, a3, a4, &__src);
  if (!v4)
  {
    v6 = __src;
    v7 = v17;
    v8 = v18;
    __src = swift_slowAlloc();
    v17 = 0x2000;
    v18 = 0;
    v19 = 0;
    v20 = 0xC000000000000000;
    _XMLPlistEncodingFormat.Writer.append(_:)("<?xml version=1.0 encoding=UTF-8?>\n<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n<plist version=1.0>\n", 164);
    v13 = v6;
    v14 = v7;
    v15 = v8;
    _XMLPlistEncodingFormat.Writer.append(_:indentation:)(&v13, 0);
    v13 = 0x3E7473696C702F3CLL;
    v14 = 0xE90000000000000ALL;
    specialized String.withUTF8<A>(_:)(&v13);

    if (v18 >= 1)
    {
      if (__src)
      {
        v9 = __src + v18;
      }

      else
      {
        v9 = 0;
      }

      Data._Representation.append(contentsOf:)(__src, v9);
    }

    p_src = v19;
    v10 = v20;
    v11 = __src;
    if (__src)
    {
      outlined copy of Data._Representation(v19, v20);
      MEMORY[0x1865D2690](v11, -1, -1);
    }

    else
    {
      outlined copy of Data._Representation(v19, v20);
    }

    outlined consume of _XMLPlistEncodingFormat.Reference(v6, v7, v8);
    outlined consume of Data._Representation(p_src, v10);
  }

  return p_src;
}

uint64_t PropertyListEncoder.encode<A, B>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v20 - v16;
  (*(a6 + 16))(a4, a6, v15);
  v18 = (*(*v7 + 200))(a1, v17, a3, a5);
  (*(v14 + 8))(v17, AssociatedTypeWitness);
  return v18;
}

uint64_t PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  type metadata accessor for __PlistEncoderBPlist();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  *(v12 + 16) = v13;
  *(v12 + 40) = xmmword_181248570;
  specialized _BPlistEncodingFormat.init()(v26);
  v14 = v26[1];
  *(v12 + 56) = v26[0];
  *(v12 + 72) = v14;
  *(v12 + 88) = v27;
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a1;
  v23[5] = a2;

  v15 = specialized __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:configuration:for:_:), v23, 0x8000000000000000, 0, 0, 0, 255);
  if (v5)
  {
  }

  if (!v15)
  {
    v18 = type metadata accessor for EncodingError();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v20[3] = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v24 = 0x6576656C2D706F54;
    v25 = 0xEA0000000000206CLL;
    v22 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v22);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6B30], v18);
    swift_willThrow();
  }

  v17 = v15;

  return v17;
}

uint64_t PropertyListEncoder.encodeToTopLevelContainerXML<A>(_:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = type metadata accessor for __PlistEncoderXML();
  v12 = swift_allocObject();
  *(v12 + 24) = v9;
  *(v12 + 32) = v10;
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 8;
  *(v12 + 80) = xmmword_18121B2B0;
  *(v12 + 96) = 8;
  *(v12 + 104) = xmmword_18121D490;
  *(v12 + 120) = 8;
  *(v12 + 40) = xmmword_181248570;
  v30 = v11;
  v31 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, type metadata accessor for __PlistEncoderXML);
  v27 = v12;
  v13 = *(a4 + 16);
  v14 = a3;

  v15 = v32;
  v13(&v27, a2, a3, a4);
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    *(v12 + 40) = 0x8000000000000000;

    *(v12 + 48) = 0;
    if (*(*(v12 + 16) + 16))
    {
      specialized ContiguousArray._customRemoveLast()(&v27);
      if (v29 == 255)
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v27, v28, v29);
        specialized ContiguousArray.remove(at:)(*(*(v12 + 16) + 16) - 1, &v27);
        outlined consume of _XMLPlistEncodingFormat.Reference(v27, v28, v29);
      }

      else
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v27, v28, v29);
      }
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&v27);
  *(v12 + 40) = 0x8000000000000000;

  *(v12 + 48) = 0;
  if (!*(*(v12 + 16) + 16))
  {
    v20 = type metadata accessor for EncodingError();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v22[3] = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, a1, v14);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v27 = 0x6576656C2D706F54;
    v28 = 0xEA0000000000206CLL;
    v24 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v24);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B30], v20);
LABEL_10:
    swift_willThrow();
  }

  specialized ContiguousArray._customRemoveLast()(&v27);
  v16 = v29;
  v17 = v27;
  v18 = v28;
  if (v29 == 255)
  {
    outlined consume of _XMLPlistEncodingFormat.Reference?(v27, v28, 0xFFu);
    specialized ContiguousArray.remove(at:)(*(*(v12 + 16) + 16) - 1, &v27);

    v17 = v27;
    v18 = v28;
    v16 = v29;
  }

  else
  {
  }

  *a5 = v17;
  *(a5 + 8) = v18;
  *(a5 + 16) = v16;
  return result;
}

uint64_t PropertyListEncoder.deinit()
{

  return v0;
}

uint64_t outlined consume of _XMLPlistEncodingFormat.Reference?(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return outlined consume of _XMLPlistEncodingFormat.Reference(result, a2, a3);
  }

  return result;
}

uint64_t static _XMLPlistDecodingFormat.unwrapDate<A>(from:in:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a7;
  v36 = a2;
  v40 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v19;
  if (a1 >> 60 == 4)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v36 - 4) = a5;
    *(&v36 - 3) = a6;
    *(&v36 - 2) = a3;
    *(&v36 - 1) = a4;
    v22 = *(v36 + 24);
    *&v24 = MEMORY[0x1EEE9AC00](v23);
    *(&v36 - 4) = partial apply for closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:);
    *(&v36 - 3) = v25;
    *(&v36 - 1) = v24;

    os_unfair_lock_lock((v22 + 40));
    partial apply for specialized closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)((v22 + 16));
    os_unfair_lock_unlock((v22 + 40));
  }

  else
  {
    v37 = a6;
    v38 = a1;
    v27 = *(v14 + 16);
    v27(&v36 - v19, a4, v13, v20);
    (v27)(v16, v21, v13);
    v28 = v40;
    if ((*(v40 + 48))(v16, 1, a5) == 1)
    {
      v29 = *(v14 + 8);
      v29(v16, v13);
      _CodingPathNode.path.getter(a3);
      v29(v21, v13);
    }

    else
    {
      (*(v28 + 32))(v39, v16, a5);
      v30 = _CodingPathNode.path.getter(a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v32 = v37;
      *(inited + 56) = a5;
      *(inited + 64) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v34 = v39;
      (*(v28 + 16))(boxed_opaque_existential_0, v39, a5);
      v41 = v30;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v28 + 8))(v34, a5);
      (*(v14 + 8))(v21, v13);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(&type metadata for Date, v38, v35);

    return swift_willThrow();
  }
}

uint64_t _s10Foundation23_XMLPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v23[11] = a4;
  v23[12] = a5;
  v23[13] = a6;
  v24 = a7;
  if (a1 >> 60)
  {
    if (a7 == -1)
    {
      v12 = _CodingPathNode.path.getter(a3);
    }

    else
    {
      outlined copy of _CodingKey(a4, a5, a6, a7);
      v18 = _CodingPathNode.path.getter(a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v20 = swift_allocObject();
      *(inited + 32) = v20;
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      *(v20 + 32) = a6;
      *(v20 + 40) = a7;
      specialized Array.append<A>(contentsOf:)(inited);
      v12 = v18;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], a1, v21);

    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v11);

    v12 = v7;
    os_unfair_lock_lock((v10 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v10 + 16), v23);
    os_unfair_lock_unlock((v10 + 40));
    if (!v7)
    {
      v12 = v23[0];
    }
  }

  return v12;
}

double specialized XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a1;
  v56 = a2;
  v53 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v19;
  if (a4 >> 60 == 6)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v51 - 4) = a5;
    *(&v51 - 3) = a6;
    *(&v51 - 2) = v56;
    *(&v51 - 1) = a3;
    v36 = *(v55 + 24);
    *&v38 = MEMORY[0x1EEE9AC00](v37);
    *(&v51 - 4) = partial apply for specialized closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:);
    *(&v51 - 3) = v39;
    *(&v51 - 1) = v38;

    os_unfair_lock_lock((v36 + 40));
    v40 = v54;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v36 + 16), &v57);
    os_unfair_lock_unlock((v36 + 40));
    if (!v40)
    {
      v6 = v57;
    }
  }

  else
  {
    v52 = a6;
    if (a4 >> 60 == 7)
    {
      v53 = &v51;
      MEMORY[0x1EEE9AC00](v18);
      v22 = v52;
      *(&v51 - 6) = a5;
      *(&v51 - 5) = v22;
      v23 = v55;
      v24 = v56;
      *(&v51 - 4) = a4;
      *(&v51 - 3) = v24;
      *(&v51 - 2) = a3;
      v25 = *(v23 + 24);
      *&v27 = MEMORY[0x1EEE9AC00](v26);
      *(&v51 - 4) = partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:);
      *(&v51 - 3) = v28;
      *(&v51 - 1) = v27;

      os_unfair_lock_lock((v25 + 40));
      v29 = v54;
      partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v25 + 16), &v57);
      os_unfair_lock_unlock((v25 + 40));
      if (v29)
      {

        MEMORY[0x1EEE9AC00](v30);
        *(&v51 - 6) = a5;
        *(&v51 - 5) = v22;
        *(&v51 - 4) = a4;
        *(&v51 - 3) = v24;
        *(&v51 - 2) = a3;
        v31 = *(v23 + 24);
        *&v33 = MEMORY[0x1EEE9AC00](v32);
        *(&v51 - 4) = partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:);
        *(&v51 - 3) = v34;
        *(&v51 - 1) = v33;

        os_unfair_lock_lock((v31 + 40));
        partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v31 + 16), &v57);
        os_unfair_lock_unlock((v31 + 40));
        v35 = *&v57;

        return v35;
      }

      else
      {
        v49 = *&v57;

        return v49;
      }
    }

    else
    {
      v55 = a4;
      v41 = *(v14 + 16);
      v41(&v51 - v19, a3, v13, v20);
      (v41)(v16, v21, v13);
      v42 = v53;
      if ((v53[6])(v16, 1, a5) == 1)
      {
        v43 = *(v14 + 8);
        v43(v16, v13);
        _CodingPathNode.path.getter(v56);
        v43(v21, v13);
      }

      else
      {
        (v42[4])(v12, v16, a5);
        v44 = _CodingPathNode.path.getter(v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v46 = v52;
        *(inited + 56) = a5;
        *(inited + 64) = v46;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (v42[2])(boxed_opaque_existential_0, v12, a5);
        v57 = *&v44;
        specialized Array.append<A>(contentsOf:)(inited);
        (v42[1])(v12, a5);
        (*(v14 + 8))(v21, v13);
      }

      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E63B0], v55, v48);

      swift_willThrow();
    }
  }

  return v6;
}

void partial apply for specialized closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(const char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  specialized closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

uint64_t partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), a5);
}

{
  return partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(a1, a2, a3, a4, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:), a5);
}

uint64_t *specialized XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)(uint64_t *result, uint64_t (*a2)(_BYTE *, unint64_t, uint64_t), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v3 = result[3];
  v4 = result[4];
  if (v4 == v3)
  {
    return 0;
  }

  v7 = *result;
  v8 = result[1];
  v9 = v3 + 1;
  if (v4 < (v3 + 1))
  {
    v10 = 0;
    goto LABEL_12;
  }

  if (&v3[-v7] < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (((v4 - v3) & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((v7 + v8 - v4) >= 0)
  {
    v10 = 0;
    v11 = *v3;
    if (v11 == 43)
    {
      v12 = 0;
    }

    else
    {
      if (v11 != 45)
      {
        goto LABEL_12;
      }

      v12 = 1;
    }

    result[3] = v9;
    v13 = result;
    specialized XMLPlistMap.Value._skipIntegerWhitespace(_:)(result);
    result = v13;
    v10 = v12;
LABEL_12:
    v14 = result[3];
    if (v4 < v14)
    {
      __break(1u);
    }

    else if (&v14[-v7] >= 0)
    {
      if ((v4 - v14) >= 0)
      {
        if ((v7 + v8 - v4) >= 0)
        {
          v15 = v14 + 2;
          v16 = v4 - (v14 + 2);
          if (v4 < (v14 + 2) || *v14 != 48 || (v14[1] | 0x20) != 0x78)
          {
            return a3(result[3], v4 - v14, v10);
          }

          result[3] = v15;
          if (((&v15[-v7] | v16) & 0x8000000000000000) == 0)
          {
            return a2(v15, v16, v10);
          }

          goto LABEL_30;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(_BYTE *, unint64_t, uint64_t), uint64_t (*a10)(uint64_t, unint64_t, uint64_t))
{
  v85 = a8;
  v90 = a6;
  v91 = a5;
  v13 = a1;
  v92 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v82 - v16;
  v93 = v17;
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v82 - v24;
  v25 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v13[a2];
  v100[0] = a3;
  v100[1] = a4;
  v96 = a4;
  v100[2] = v13;
  v101 = v13;
  v30 = v13;
  v102 = &v13[a2];
  v86 = a2;
  if (a2 >= 1)
  {
    if ((a3 + v96 - v29) >= 0)
    {
      v31 = v13 + 1;
      v32 = (v26 + 8);
      v30 = v13;
      while (v29 >= v30)
      {
        if (&v30[-a3] < 0)
        {
          goto LABEL_72;
        }

        if ((v29 - v30) < 0)
        {
          goto LABEL_73;
        }

        v35 = *v30;
        if (v35 >= 0x21 && (v35 - 127) >= 0x22u)
        {
          if ((v35 & 0xC0) == 0x80)
          {
            goto LABEL_29;
          }

          if ((v35 & 0x80) != 0)
          {
            v36 = __clz(v35 ^ 0xFF) - 24;
            if (v29 - v30 < v36)
            {
              goto LABEL_29;
            }

            if (v36 == 2)
            {
              if ((*v31 & 0xC0) != 0x80)
              {
                goto LABEL_29;
              }

              v33 = 2;
            }

            else if (v36 == 3)
            {
              if ((*v31 & 0xC0) != 0x80 || (v30[2] & 0xC0) != 0x80)
              {
                goto LABEL_29;
              }

              v33 = 3;
            }

            else
            {
              if (v36 != 4)
              {
                goto LABEL_79;
              }

              if ((*v31 & 0xC0) != 0x80 || (v30[2] & 0xC0) != 0x80 || (v30[3] & 0xC0) != 0x80)
              {
                goto LABEL_29;
              }

              v33 = 4;
            }
          }

          else
          {
            if (v29 == v30)
            {
              goto LABEL_45;
            }

            v33 = 1;
          }

          Unicode.Scalar.properties.getter();
          v34 = Unicode.Scalar.Properties.isWhitespace.getter();
          (*v32)(v28, v25);
          if ((v34 & 1) == 0)
          {
            goto LABEL_29;
          }

          v31 = &v30[v33];
        }

        v30 = v31;
        v101 = v31++;
        if (v29 < v31)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    __break(1u);
LABEL_79:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_29:
  if (v29 == v30)
  {
    goto LABEL_45;
  }

  result = specialized XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)(v100, a9, a10);
  if ((v38 & 1) == 0)
  {
    return result;
  }

  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v98 = 0xD000000000000020;
  v99 = 0x8000000181486050;
  v39 = 1;
  if (v101 <= v13)
  {
    v40 = v88;
    v41 = v84;
LABEL_66:
    v103 = v39;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v64);

    v65 = v98;
    v97 = v99;
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v96 = v67;
    v68 = v94;
    v69 = *(v94 + 16);
    v70 = v95;
    v69(v40, v90, v95);
    v69(v41, v40, v70);
    v71 = v92;
    v72 = v93;
    if ((*(v92 + 48))(v41, 1, v93) == 1)
    {
      v73 = *(v68 + 8);
      v73(v41, v70);
      _CodingPathNode.path.getter(v91);
      v73(v40, v70);
    }

    else
    {
      v74 = *(v71 + 32);
      v90 = v65;
      v75 = v82;
      v74(v82, v41, v72);
      v76 = v71;
      v77 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v79 = v85;
      *(inited + 56) = v72;
      *(inited + 64) = v79;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v76 + 16))(boxed_opaque_existential_0, v75, v72);
      v98 = v77;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v76 + 8))(v75, v72);
      (*(v68 + 8))(v88, v70);
    }

    v81 = v96;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v81, *MEMORY[0x1E69E6B00], v66);
    return swift_willThrow();
  }

  v40 = v88;
  v41 = v84;
  while (1)
  {
    if (*v13 == 13)
    {
      v42 = __OFADD__(v39++, 1);
      if (v42)
      {
        goto LABEL_77;
      }

      if ((v13 + 1) < v101 && v13[1] == 10)
      {
        ++v13;
      }

      goto LABEL_33;
    }

    if (v96 < 2)
    {
      goto LABEL_76;
    }

    if (*(a3 + 1) == 10)
    {
      v42 = __OFADD__(v39++, 1);
      if (v42)
      {
        break;
      }
    }

LABEL_33:
    if (++v13 >= v101)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_45:
  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v98 = 0xD000000000000024;
  v99 = 0x8000000181486080;
  if (v86 < 1)
  {
    v43 = 1;
    v44 = v89;
    v45 = v87;
LABEL_61:
    v103 = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v46);

    v47 = v98;
    v96 = v99;
    v48 = type metadata accessor for DecodingError();
    v97 = swift_allocError();
    v50 = v49;
    v51 = v94;
    v52 = *(v94 + 16);
    v53 = v95;
    v52(v44, v90, v95);
    v52(v45, v44, v53);
    v54 = v92;
    v55 = v93;
    if ((*(v92 + 48))(v45, 1, v93) == 1)
    {
      v56 = *(v51 + 8);
      v56(v45, v53);
      _CodingPathNode.path.getter(v91);
      v56(v44, v53);
    }

    else
    {
      v57 = *(v54 + 32);
      v90 = v47;
      v58 = v83;
      v57(v83, v45, v55);
      v59 = v54;
      v60 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_181218E20;
      v62 = v85;
      *(v61 + 56) = v55;
      *(v61 + 64) = v62;
      v63 = __swift_allocate_boxed_opaque_existential_0((v61 + 32));
      (*(v59 + 16))(v63, v58, v55);
      v98 = v60;
      specialized Array.append<A>(contentsOf:)(v61);
      (*(v59 + 8))(v58, v55);
      (*(v51 + 8))(v89, v53);
    }

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6B00], v48);
    return swift_willThrow();
  }

  v43 = 1;
  v44 = v89;
  v45 = v87;
  while (1)
  {
    if (*v13 == 13)
    {
      v42 = __OFADD__(v43++, 1);
      if (v42)
      {
        goto LABEL_75;
      }

      if ((v13 + 1) < v29 && v13[1] == 10)
      {
        ++v13;
      }

      goto LABEL_47;
    }

    if (v96 < 2)
    {
      goto LABEL_74;
    }

    if (*(a3 + 1) == 10)
    {
      v42 = __OFADD__(v43++, 1);
      if (v42)
      {
        break;
      }
    }

LABEL_47:
    if (++v13 >= v29)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static XMLPlistMap.Value.parseSpecialRealValue<A, B>(_:fullSource:for:_:)(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v47 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  if (a2)
  {
    v20 = *a1;
    if ((v20 & 0xFFFFFFDF) == 0x4E && a2 == 3)
    {
      if ((*(a1 + 1) | 0x20) == 0x61 && (*(a1 + 2) | 0x20) == 0x6E)
      {
        return 0x7FF8000000000000;
      }
    }

    else
    {
      if (v20 == 43 && a2 == 9)
      {
        if (!_stringshims_strncasecmp_clocale(a1, "+infinity", 9uLL))
        {
          return 0x7FF0000000000000;
        }

        return 0;
      }

      if (v20 == 43 && a2 == 4)
      {
        if ((*(a1 + 1) | 0x20) == 0x69 && (*(a1 + 2) | 0x20) == 0x6E && (*(a1 + 3) | 0x20) == 0x66)
        {
          return 0x7FF0000000000000;
        }

        return 0;
      }

      if (v20 == 45 && a2 == 9)
      {
        if (!_stringshims_strncasecmp_clocale(a1, "-infinity", 9uLL))
        {
          return 0xFFF0000000000000;
        }
      }

      else if (v20 == 45 && a2 == 4)
      {
        if ((*(a1 + 1) | 0x20) == 0x69 && (*(a1 + 2) | 0x20) == 0x6E && (*(a1 + 3) | 0x20) == 0x66)
        {
          return 0xFFF0000000000000;
        }
      }

      else if ((v20 & 0xFFFFFFDF) == 0x49 && a2 == 8 && !_stringshims_strncasecmp_clocale(a1, "infinity", 8uLL))
      {
        return 0x7FF0000000000000;
      }
    }

    return 0;
  }

  v42 = a3;
  v38 = v12;
  v37 = a6;
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v48 = 0xD000000000000026;
  v49 = 0x80000001814860B0;
  v50 = 1;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v22);

  v40 = v49;
  v41 = v48;
  v39 = type metadata accessor for DecodingError();
  v43 = swift_allocError();
  v24 = v23;
  v25 = v45;
  v26 = v46;
  v27 = *(v46 + 16);
  v27(v19, v44, v45);
  v27(v16, v19, v25);
  v28 = v47;
  if ((*(v47 + 48))(v16, 1, a5) == 1)
  {
    v29 = *(v26 + 8);
    v29(v16, v25);
    _CodingPathNode.path.getter(v42);
    v29(v19, v25);
  }

  else
  {
    v31 = v38;
    (*(v28 + 32))(v38, v16, a5);
    v32 = _CodingPathNode.path.getter(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    v34 = v37;
    *(inited + 56) = a5;
    *(inited + 64) = v34;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v28 + 16))(boxed_opaque_existential_0, v31, a5);
    v48 = v32;
    specialized Array.append<A>(contentsOf:)(inited);
    (*(v28 + 8))(v31, a5);
    (*(v26 + 8))(v19, v25);
  }

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v39 - 8) + 104))(v24, *MEMORY[0x1E69E6B00]);
  return swift_willThrow();
}

void specialized closure #1 in XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v89 = a4;
  v93[1] = *MEMORY[0x1E69E9840];
  v82 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v76 - v12;
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  v24 = a1;
  v25 = a1;
  v26 = a2;
  v27 = a2;
  v83 = a3;
  v28 = v88;
  v29 = v87;
  specialized closure #1 in static XMLPlistMap.Value.parseSpecialRealValue<A, B>(_:fullSource:for:_:)(v25, v27, a3, v89, a5, v88);
  if (!v29)
  {
    v31 = v24;
    v78 = v14;
    v80 = v20;
    v79 = v17;
    v87 = a5;
    v32 = v85;
    if (v30)
    {
      v33 = v23;
      v34 = v31;
      v35 = &v31[v26];
      if (v26 >= 1)
      {
        v36 = v28;
        v37 = v86;
        while (1)
        {
          v38 = *v31;
          v39 = v38 > 0x30 || ((1 << v38) & 0x1280100002600) == 0;
          if (v39)
          {
            break;
          }

          if (++v31 >= v35)
          {
            goto LABEL_10;
          }
        }

        if (v38 == 88 || v38 == 120)
        {
          v91 = 0;
          v92 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v91 = 0xD000000000000026;
          v92 = 0x80000001814860B0;
          v93[0] = 1;
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v59);

          v81 = v91;
          v80 = v92;
          v60 = type metadata accessor for DecodingError();
          v77 = swift_allocError();
          v76 = v61;
          v62 = v84;
          v63 = *(v84 + 16);
          v64 = v32;
          v65 = v79;
          v63();
          v66 = v78;
          (v63)(v78, v65, v64);
          v67 = v66;
          v68 = v82;
          v69 = v87;
          if ((*(v82 + 48))(v67, 1, v87) == 1)
          {
            v70 = *(v62 + 8);
            v70(v67, v64);
            _CodingPathNode.path.getter(v83);
            v70(v65, v64);
          }

          else
          {
            (*(v68 + 32))(v37, v67, v69);
            v71 = _CodingPathNode.path.getter(v83);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
            v72 = v37;
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_181218E20;
            *(inited + 56) = v69;
            *(inited + 64) = v36;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
            (*(v68 + 16))(boxed_opaque_existential_0, v72, v69);
            v91 = v71;
            specialized Array.append<A>(contentsOf:)(inited);
            (*(v68 + 8))(v72, v69);
            (*(v62 + 8))(v79, v64);
          }

          v75 = v76;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v60 - 8) + 104))(v75, *MEMORY[0x1E69E6B00], v60);
          goto LABEL_18;
        }
      }

LABEL_10:
      v93[0] = 0;
      _stringshims_strtod_clocale(v34, v93);
      if (v93[0])
      {
        v39 = v35 == v93[0];
        v40 = v84;
        v41 = v83;
        v42 = v89;
        if (!v39)
        {
          v91 = 0;
          v92 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v91 = 0xD000000000000026;
          v92 = 0x80000001814860B0;
          v90 = 1;
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v43);

          v86 = v91;
          v79 = v92;
          v44 = type metadata accessor for DecodingError();
          v77 = swift_allocError();
          v78 = v45;
          v46 = *(v40 + 16);
          v47 = v32;
          v46(v33, v42, v32);
          v48 = v80;
          v46(v80, v33, v32);
          v49 = v82;
          v50 = v87;
          if ((*(v82 + 48))(v48, 1, v87) == 1)
          {
            v51 = *(v40 + 8);
            v51(v48, v47);
            _CodingPathNode.path.getter(v41);
            v51(v33, v47);
          }

          else
          {
            v52 = *(v49 + 32);
            v89 = v33;
            v53 = v81;
            v52(v81, v48, v50);
            v54 = _CodingPathNode.path.getter(v41);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
            v55 = swift_initStackObject();
            *(v55 + 16) = xmmword_181218E20;
            v56 = v88;
            *(v55 + 56) = v50;
            *(v55 + 64) = v56;
            v57 = __swift_allocate_boxed_opaque_existential_0((v55 + 32));
            (*(v49 + 16))(v57, v53, v50);
            v91 = v54;
            specialized Array.append<A>(contentsOf:)(v55);
            (*(v49 + 8))(v53, v50);
            (*(v40 + 8))(v89, v47);
          }

          v58 = v78;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v44 - 8) + 104))(v58, *MEMORY[0x1E69E6B00], v44);
LABEL_18:
          swift_willThrow();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(_BYTE *, unint64_t, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  result = specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(a1, a2, a3, a4, *(v7 + 40), *(v7 + 48), *(v7 + 16), *(v7 + 24), a5, a6);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError()
{
  result = lazy protocol witness table cache variable for type XMLPlistError and conformance XMLPlistError;
  if (!lazy protocol witness table cache variable for type XMLPlistError and conformance XMLPlistError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XMLPlistError and conformance XMLPlistError);
  }

  return result;
}

uint64_t closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)specialized partial apply@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(a1, a2, a3, a4, a5);
}

{
  return partial apply for specialized closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance __PlistEncoderXML@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __PlistEncoderXML();
  a1[4] = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, v4, type metadata accessor for __PlistEncoderXML);
  *a1 = v3;
}

char *_PlistKeyedEncodingContainerXML.encodeNil(forKey:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);
  v4 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  v47 = *(*v0 + 72);
  outlined copy of _XMLPlistEncodingFormat.Reference(v4, v3, v47);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v1 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v1) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v1 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        if (v1)
        {
LABEL_9:
          v18 = *(v16 + 56) + 24 * v10;
          v19 = *v18;
          v20 = *(v18 + 8);
          *v18 = v4;
          *(v18 + 8) = v3;
          v21 = *(v18 + 16);
          *(v18 + 16) = v47;
          outlined consume of _XMLPlistEncodingFormat.Reference(v19, v20, v21);

LABEL_28:
          *(v2 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v4, v3, v47, v16);
        goto LABEL_28;
      }
    }

    v41 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v22 = static _DictionaryStorage.copy(original:)();
    v16 = v22;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v41;
      if (v1)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v22 + 64);
    v23 = (v48 + 64);
    v24 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v23[8 * v24])
    {
      result = memmove(result, v23, 8 * v24);
    }

    v25 = 0;
    *(v16 + 16) = *(v48 + 16);
    v26 = 1 << *(v48 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v48 + 64);
    v29 = (v26 + 63) >> 6;
    v42 = v29;
    if (v28)
    {
      do
      {
        v30 = __clz(__rbit64(v28));
        v46 = (v28 - 1) & v28;
LABEL_24:
        v33 = 24 * (v30 | (v25 << 6));
        v34 = *(v48 + 48) + v33;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v48 + 56) + v33;
        v44 = *(v37 + 8);
        v45 = *v37;
        v38 = *(v16 + 48) + v33;
        v39 = *(v34 + 16);
        v43 = *(v37 + 16);
        *v38 = *v34;
        *(v38 + 8) = v36;
        *(v38 + 16) = v39;
        v40 = *(v16 + 56) + v33;
        *v40 = v45;
        *(v40 + 8) = v44;
        *(v40 + 16) = v43;
        outlined copy of _XMLPlistEncodingFormat.Reference(v35, v36, v39);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v45, v44, v43);
        v29 = v42;
        v28 = v46;
      }

      while (v46);
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_26;
      }

      v32 = *(v48 + 64 + 8 * v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v46 = (v32 - 1) & v32;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 8);
  v4 = (*v1 + 80);
  v5 = (*v1 + 120);
  if ((a1 & 1) == 0)
  {
    v4 = (*v1 + 104);
  }

  v6 = *v4;
  if (a1)
  {
    v7 = (*v1 + 88);
  }

  else
  {
    v7 = (*v1 + 112);
  }

  v8 = *v7;
  if (a1)
  {
    v5 = (*v1 + 96);
  }

  v51 = *v5;
  outlined copy of _XMLPlistEncodingFormat.Reference(v6, *v7, *v5);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v2 == 7)
  {
    v11 = result;
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12, 0);
    v16 = *(v52 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v15;
      if (*(v52 + 24) < v19)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
        v20 = v52;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12, 0);
        if ((v2 & 1) == (v21 & 1))
        {
          goto LABEL_15;
        }

        v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v52;
LABEL_15:
        if (v2)
        {
LABEL_16:
          v22 = *(v20 + 56) + 24 * v14;
          v23 = *v22;
          v24 = *(v22 + 8);
          *v22 = v6;
          *(v22 + 8) = v8;
          v25 = *(v22 + 16);
          *(v22 + 16) = v51;
          outlined consume of _XMLPlistEncodingFormat.Reference(v23, v24, v25);

LABEL_35:
          *(v3 + 16) = v20;
          return result;
        }

LABEL_34:
        result = specialized _NativeDictionary._insert(at:key:value:)(v14, v11, v12, 0, v6, v8, v51, v20);
        goto LABEL_35;
      }
    }

    v45 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v26 = static _DictionaryStorage.copy(original:)();
    v20 = v26;
    if (!*(v52 + 16))
    {
LABEL_33:

      v14 = v45;
      if (v2)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    result = (v26 + 64);
    v27 = (v52 + 64);
    v28 = ((1 << *(v20 + 32)) + 63) >> 6;
    if (v20 != v52 || result >= &v27[8 * v28])
    {
      result = memmove(result, v27, 8 * v28);
    }

    v29 = 0;
    *(v20 + 16) = *(v52 + 16);
    v30 = 1 << *(v52 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v52 + 64);
    v33 = (v30 + 63) >> 6;
    v46 = v33;
    if (v32)
    {
      do
      {
        v34 = __clz(__rbit64(v32));
        v50 = (v32 - 1) & v32;
LABEL_31:
        v37 = 24 * (v34 | (v29 << 6));
        v38 = *(v52 + 48) + v37;
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v52 + 56) + v37;
        v48 = *(v41 + 8);
        v49 = *v41;
        v42 = *(v20 + 48) + v37;
        v43 = *(v38 + 16);
        v47 = *(v41 + 16);
        *v42 = *v38;
        *(v42 + 8) = v40;
        *(v42 + 16) = v43;
        v44 = *(v20 + 56) + v37;
        *v44 = v49;
        *(v44 + 8) = v48;
        *(v44 + 16) = v47;
        outlined copy of _XMLPlistEncodingFormat.Reference(v39, v40, v43);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v49, v48, v47);
        v33 = v46;
        v32 = v50;
      }

      while (v50);
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_33;
      }

      v36 = *(v52 + 64 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v50 = (v36 - 1) & v36;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 2;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 2, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(__int16 a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 2;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 2, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 2;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 2, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(unsigned __int8 a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 1;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 1, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(unsigned __int16 a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 1;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 1, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(unsigned int a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 1;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_28:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, v18, 0, 1, v16);
        goto LABEL_28;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v48 + 16))
    {
LABEL_26:

      v10 = v42;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v23 + 64);
    v24 = (v48 + 64);
    v25 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v48 || result >= &v24[8 * v25])
    {
      result = memmove(result, v24, 8 * v25);
    }

    v26 = 0;
    *(v16 + 16) = *(v48 + 16);
    v27 = 1 << *(v48 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v48 + 64);
    v30 = (v27 + 63) >> 6;
    v43 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v47 = (v29 - 1) & v29;
LABEL_24:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v48 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v48 + 56) + v34;
        v45 = *(v38 + 8);
        v46 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v44 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v41 = *(v16 + 56) + v34;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v44;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v44);
        v30 = v43;
        v29 = v47;
      }

      while (v47);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_26;
      }

      v33 = *(v48 + 64 + 8 * v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v47 = (v33 - 1) & v33;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 8);
  v8 = *(v4 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v8 == 7)
  {
    v11 = result;
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v7 + 16);
    *(v7 + 16) = 0x8000000000000000;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12, 0);
    v16 = *(v52 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v8) = v15;
      if (*(v52 + 24) < v19)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
        v20 = v52;
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12, 0);
        if ((v8 & 1) == (v21 & 1))
        {
          goto LABEL_8;
        }

        v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v52;
LABEL_8:
        if (v8)
        {
LABEL_9:
          v22 = *(v20 + 56) + 24 * v14;
          v23 = *v22;
          v24 = *(v22 + 8);
          *v22 = a1;
          *(v22 + 8) = 0;
          v25 = *(v22 + 16);
          *(v22 + 16) = a4;
          outlined consume of _XMLPlistEncodingFormat.Reference(v23, v24, v25);

LABEL_31:
          *(v7 + 16) = v20;
          return result;
        }

LABEL_30:
        result = specialized _NativeDictionary._insert(at:key:value:)(v14, v11, v12, 0, a1, 0, a4, v20);
        goto LABEL_31;
      }
    }

    v45 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v26 = static _DictionaryStorage.copy(original:)();
    v20 = v26;
    if (!*(v52 + 16))
    {
LABEL_29:

      v14 = v45;
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    result = (v26 + 64);
    v27 = ((1 << *(v20 + 32)) + 63) >> 6;
    __src = (v52 + 64);
    if (v20 != v52 || result >= v52 + 64 + 8 * v27)
    {
      result = memmove(result, __src, 8 * v27);
    }

    v29 = 0;
    *(v20 + 16) = *(v52 + 16);
    v30 = 1 << *(v52 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v52 + 64);
    v33 = (v30 + 63) >> 6;
    v47 = v33;
    if (v32)
    {
      do
      {
        v34 = __clz(__rbit64(v32));
        v51 = (v32 - 1) & v32;
LABEL_27:
        v37 = 24 * (v34 | (v29 << 6));
        v38 = *(v52 + 48) + v37;
        v39 = *v38;
        v40 = *(v38 + 8);
        v41 = *(v52 + 56) + v37;
        v49 = *(v41 + 8);
        v50 = *v41;
        v42 = *(v20 + 48) + v37;
        v43 = *(v38 + 16);
        v48 = *(v41 + 16);
        *v42 = *v38;
        *(v42 + 8) = v40;
        *(v42 + 16) = v43;
        v44 = *(v20 + 56) + v37;
        *v44 = v50;
        *(v44 + 8) = v49;
        *(v44 + 16) = v48;
        outlined copy of _XMLPlistEncodingFormat.Reference(v39, v40, v43);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v50, v49, v48);
        v33 = v47;
        v32 = v51;
      }

      while (v51);
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_29;
      }

      v36 = *(__src + v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v6 == 7)
  {
    v9 = result;
    v10 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10, 0);
    v14 = *(v49 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v6) = v13;
      if (*(v49 + 24) < v17)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
        v18 = v49;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10, 0);
        if ((v6 & 1) == (v19 & 1))
        {
          goto LABEL_8;
        }

        v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v49;
LABEL_8:
        if (v6)
        {
LABEL_9:
          v20 = *(v18 + 56) + 24 * v12;
          v21 = *v20;
          v22 = *(v20 + 8);
          *v20 = a1;
          *(v20 + 8) = a2;
          v23 = *(v20 + 16);
          *(v20 + 16) = 0;
          outlined consume of _XMLPlistEncodingFormat.Reference(v21, v22, v23);

LABEL_28:
          *(v5 + 16) = v18;
          return result;
        }

LABEL_27:
        result = specialized _NativeDictionary._insert(at:key:value:)(v12, v9, v10, 0, a1, a2, 0, v18);
        goto LABEL_28;
      }
    }

    v43 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v24 = static _DictionaryStorage.copy(original:)();
    v18 = v24;
    if (!*(v49 + 16))
    {
LABEL_26:

      v12 = v43;
      if (v6)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    result = (v24 + 64);
    v25 = (v49 + 64);
    v26 = ((1 << *(v18 + 32)) + 63) >> 6;
    if (v18 != v49 || result >= &v25[8 * v26])
    {
      result = memmove(result, v25, 8 * v26);
    }

    v27 = 0;
    *(v18 + 16) = *(v49 + 16);
    v28 = 1 << *(v49 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v49 + 64);
    v31 = (v28 + 63) >> 6;
    v44 = v31;
    if (v30)
    {
      do
      {
        v32 = __clz(__rbit64(v30));
        v48 = (v30 - 1) & v30;
LABEL_24:
        v35 = 24 * (v32 | (v27 << 6));
        v36 = *(v49 + 48) + v35;
        v37 = *v36;
        v38 = *(v36 + 8);
        v39 = *(v49 + 56) + v35;
        v46 = *(v39 + 8);
        v47 = *v39;
        v40 = *(v18 + 48) + v35;
        v41 = *(v36 + 16);
        v45 = *(v39 + 16);
        *v40 = *v36;
        *(v40 + 8) = v38;
        *(v40 + 16) = v41;
        v42 = *(v18 + 56) + v35;
        *v42 = v47;
        *(v42 + 8) = v46;
        *(v42 + 16) = v45;
        outlined copy of _XMLPlistEncodingFormat.Reference(v37, v38, v41);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v47, v46, v45);
        v31 = v44;
        v30 = v48;
      }

      while (v48);
    }

    v33 = v27;
    while (1)
    {
      v27 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        goto LABEL_26;
      }

      v34 = *(v49 + 64 + 8 * v27);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v48 = (v34 - 1) & v34;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(float a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v49 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v49 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v49;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v49;
LABEL_8:
        v18 = a1;
        if (v4)
        {
LABEL_9:
          v19 = *(v16 + 56) + 24 * v10;
          v20 = *v19;
          v21 = *(v19 + 8);
          *v19 = v18;
          *(v19 + 8) = 0;
          v22 = *(v19 + 16);
          *(v19 + 16) = 3;
          outlined consume of _XMLPlistEncodingFormat.Reference(v20, v21, v22);

LABEL_31:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_30:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, *&v18, 0, 3, v16);
        goto LABEL_31;
      }
    }

    v43 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v23 = static _DictionaryStorage.copy(original:)();
    v16 = v23;
    if (!*(v49 + 16))
    {
LABEL_29:

      v10 = v43;
      v18 = a1;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    result = (v23 + 64);
    v24 = ((1 << *(v16 + 32)) + 63) >> 6;
    __src = (v49 + 64);
    if (v16 != v49 || result >= v49 + 64 + 8 * v24)
    {
      result = memmove(result, __src, 8 * v24);
    }

    v26 = 0;
    *(v16 + 16) = *(v49 + 16);
    v27 = 1 << *(v49 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v49 + 64);
    v30 = (v27 + 63) >> 6;
    v45 = v30;
    if (v29)
    {
      do
      {
        v31 = __clz(__rbit64(v29));
        v48 = (v29 - 1) & v29;
LABEL_27:
        v34 = 24 * (v31 | (v26 << 6));
        v35 = *(v49 + 48) + v34;
        v36 = *v35;
        v37 = *(v35 + 8);
        v38 = *(v49 + 56) + v34;
        v46 = *(v38 + 8);
        v47 = *v38;
        v39 = *(v16 + 48) + v34;
        v40 = *(v35 + 16);
        v41 = *(v38 + 16);
        *v39 = *v35;
        *(v39 + 8) = v37;
        *(v39 + 16) = v40;
        v42 = *(v16 + 56) + v34;
        *v42 = v47;
        *(v42 + 8) = v46;
        *(v42 + 16) = v41;
        outlined copy of _XMLPlistEncodingFormat.Reference(v36, v37, v40);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v47, v46, v41);
        v30 = v45;
        v29 = v48;
      }

      while (v48);
    }

    v32 = v26;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v26 >= v30)
      {
        goto LABEL_29;
      }

      v33 = *(__src + v26);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v48 = (v33 - 1) & v33;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_PlistKeyedEncodingContainerXML.encode(_:forKey:)(double a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = dispatch thunk of CodingKey.stringValue.getter();
  if (v4 == 7)
  {
    v7 = result;
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
    v12 = *(v48 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v11;
      if (*(v48 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v48;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, 0);
        if ((v4 & 1) == (v17 & 1))
        {
          goto LABEL_8;
        }

        v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v48;
LABEL_8:
        if (v4)
        {
LABEL_9:
          v18 = *(v16 + 56) + 24 * v10;
          v19 = *v18;
          v20 = *(v18 + 8);
          *v18 = a1;
          *(v18 + 8) = 0;
          v21 = *(v18 + 16);
          *(v18 + 16) = 3;
          outlined consume of _XMLPlistEncodingFormat.Reference(v19, v20, v21);

LABEL_31:
          *(v3 + 16) = v16;
          return result;
        }

LABEL_30:
        result = specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v8, 0, *&a1, 0, 3, v16);
        goto LABEL_31;
      }
    }

    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v22 = static _DictionaryStorage.copy(original:)();
    v16 = v22;
    if (!*(v48 + 16))
    {
LABEL_29:

      v10 = v42;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    result = (v22 + 64);
    v23 = ((1 << *(v16 + 32)) + 63) >> 6;
    __src = (v48 + 64);
    if (v16 != v48 || result >= v48 + 64 + 8 * v23)
    {
      result = memmove(result, __src, 8 * v23);
    }

    v25 = 0;
    *(v16 + 16) = *(v48 + 16);
    v26 = 1 << *(v48 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v48 + 64);
    v29 = (v26 + 63) >> 6;
    v44 = v29;
    if (v28)
    {
      do
      {
        v30 = __clz(__rbit64(v28));
        v47 = (v28 - 1) & v28;
LABEL_27:
        v33 = 24 * (v30 | (v25 << 6));
        v34 = *(v48 + 48) + v33;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v48 + 56) + v33;
        v45 = *(v37 + 8);
        v46 = *v37;
        v38 = *(v16 + 48) + v33;
        v39 = *(v34 + 16);
        v40 = *(v37 + 16);
        *v38 = *v34;
        *(v38 + 8) = v36;
        *(v38 + 16) = v39;
        v41 = *(v16 + 56) + v33;
        *v41 = v46;
        *(v41 + 8) = v45;
        *(v41 + 16) = v40;
        outlined copy of _XMLPlistEncodingFormat.Reference(v35, v36, v39);
        result = outlined copy of _XMLPlistEncodingFormat.Reference(v46, v45, v40);
        v29 = v44;
        v28 = v47;
      }

      while (v47);
    }

    v31 = v25;
    while (1)
    {
      v25 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_29;
      }

      v32 = *(__src + v25);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v47 = (v32 - 1) & v32;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerXML.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v92 = a3;
  v8 = *(a2 + 16);
  v96 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = a1;
  v94 = &v83 - v14;
  v15 = *(a2 + 24);
  v98 = dispatch thunk of CodingKey.stringValue.getter();
  if (*(v5 + 24) != 7)
  {
    goto LABEL_48;
  }

  v17 = v16;
  v18 = v5[1];
  v19 = *(v18 + 16);
  v20 = *(v19 + 16);
  v99 = v16;
  v90 = v15;
  if (v20)
  {
    v4 = v5[2];
    outlined copy of _XMLPlistEncodingFormat.Reference(v18, v4, 7u);

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v17, 0);
    if (v22)
    {
      v23 = *(v19 + 56) + 24 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v97 = *v23;
      v26 = v24;
      outlined copy of _XMLPlistEncodingFormat.Reference(v97, v24, v25);

      outlined consume of _XMLPlistEncodingFormat.Reference(v18, v4, 7u);

      if (v25 != 6)
      {
        __break(1u);
        goto LABEL_47;
      }

      v27 = v10;
      v4 = v11;
      v28 = v95;
      v29 = v96;
      while (1)
      {
        v47 = v94;
        v48 = *v5;
        v49 = v5[4];
        (*(v29 + 16))(v94, v93, v8);
        (*(v29 + 56))(v47, 0, 1, v8);
        (*(v4 + 16))(v28, v47, v27);
        if ((*(v29 + 48))(v28, 1, v8) == 1)
        {
          break;
        }

        v98 = v26;
        v51 = *(v29 + 32);
        v29 += 32;
        v5 = v51;
        v52 = v91;
        (v51)(v91, v28, v8);
        v35 = swift_allocObject();
        v53 = v90;
        *(v35 + 40) = v8;
        *(v35 + 48) = v53;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 16));
        (v51)(boxed_opaque_existential_0, v52, v8);

        v55 = *(v4 + 8);
        LOBYTE(v4) = v4 + 8;
        v55(v47, v27);
        *(v35 + 56) = v49;
        if (v49 >> 62)
        {
          if (v49 >> 62 != 1)
          {
            v26 = v98;
            v57 = 1;
LABEL_25:
            *(v35 + 64) = v57;
            v49 = v35;
LABEL_26:
            v58 = v92;
            v92[3] = &unk_1EEEED3E0;
            v58[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML();
            result = swift_allocObject();
            *v58 = result;
            *(result + 48) = v49;
            v60 = v97;
            *(result + 16) = v48;
            *(result + 24) = v60;
            *(result + 32) = v26;
            *(result + 40) = 6;
            return result;
          }

          v56 = ((v49 & 0x3FFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v56 = (v49 + 64);
        }

        v26 = v98;
        v32 = *v56;

        v57 = v32 + 1;
        if (!__OFADD__(v32, 1))
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
        v61 = static _DictionaryStorage.copy(original:)();
        v40 = v61;
        if (*(v35 + 16))
        {
          v62 = (v61 + 64);
          v63 = (v35 + 64);
          v64 = ((1 << *(v40 + 32)) + 63) >> 6;
          v83 = v35 + 64;
          if (v40 != v35 || v62 >= &v63[8 * v64])
          {
            memmove(v62, v63, 8 * v64);
          }

          v65 = 0;
          *(v40 + 16) = *(v35 + 16);
          v66 = 1 << *(v35 + 32);
          v67 = -1;
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          v68 = v67 & *(v35 + 64);
          v69 = (v66 + 63) >> 6;
          v84 = v69;
          if (v68)
          {
            do
            {
              v70 = __clz(__rbit64(v68));
              v87 = (v68 - 1) & v68;
LABEL_43:
              v73 = 24 * (v70 | (v65 << 6));
              v74 = *(v35 + 48) + v73;
              v75 = *v74;
              v76 = *(v74 + 8);
              v77 = *(v35 + 56) + v73;
              v79 = *v77;
              v86 = *(v77 + 8);
              v78 = v86;
              v80 = *(v40 + 48) + v73;
              v81 = *(v74 + 16);
              LODWORD(v77) = *(v77 + 16);
              v85 = v77;
              *v80 = v75;
              *(v80 + 8) = v76;
              *(v80 + 16) = v81;
              v82 = *(v40 + 56) + v73;
              *v82 = v79;
              *(v82 + 8) = v78;
              *(v82 + 16) = v77;
              outlined copy of _XMLPlistEncodingFormat.Reference(v75, v76, v81);
              outlined copy of _XMLPlistEncodingFormat.Reference(v79, v86, v85);
              v69 = v84;
              v68 = v87;
            }

            while (v87);
          }

          v71 = v65;
          while (1)
          {
            v65 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              break;
            }

            if (v65 >= v69)
            {
              goto LABEL_45;
            }

            v72 = *(v83 + 8 * v65);
            ++v71;
            if (v72)
            {
              v70 = __clz(__rbit64(v72));
              v87 = (v72 - 1) & v72;
              goto LABEL_43;
            }
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_45:

LABEL_14:
        v27 = v89;
        v28 = v95;
        if (v4)
        {
          v43 = *(v40 + 56) + 24 * v26;
          v44 = *v43;
          v45 = *(v43 + 8);
          *v43 = v97;
          *(v43 + 8) = 0;
          v46 = *(v43 + 16);
          *(v43 + 16) = 6;
          outlined consume of _XMLPlistEncodingFormat.Reference(v44, v45, v46);
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v26, v98, v99, 0, v97, 0, 6, v40);
        }

        v26 = 0;
        *(v32 + 16) = v40;
        v4 = v88;
      }

      v50 = *(v4 + 8);

      v50(v47, v27);

      v50(v28, v27);

      goto LABEL_26;
    }

    outlined consume of _XMLPlistEncodingFormat.Reference(v18, v4, 7u);
  }

  v88 = v11;
  v89 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__s15ContiguousArrayVyAEGGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = MEMORY[0x1E69E7CC0];
  if (*(v5 + 24) != 7)
  {
    goto LABEL_49;
  }

  v31 = v30;
  v32 = v5[1];
  v33 = v99;

  v97 = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v32 + 16);
  v35 = v100;
  *(v32 + 16) = 0x8000000000000000;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v33, 0);
  v37 = *(v35 + 16);
  v38 = (v36 & 1) == 0;
  v39 = v37 + v38;
  v29 = v96;
  if (__OFADD__(v37, v38))
  {
    goto LABEL_29;
  }

  LOBYTE(v4) = v36;
  if (*(v35 + 24) >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v40 = v35;
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
  v40 = v100;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v99, 0);
  if ((v4 & 1) == (v42 & 1))
  {
    v26 = v41;
    goto LABEL_14;
  }

LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerXML.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(*v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = type metadata accessor for __PlistReferencingEncoderXML();
  v9 = swift_allocObject();

  outlined copy of _XMLPlistEncodingFormat.Reference(v4, v6, v7);
  v10 = specialized __PlistReferencingEncoderXML.init(referencing:at:codingPathNode:wrapping:)(v3, 0x7265707573, 0xE500000000000000, 0, 0, v5, v4, v6, v7, v9);
  a1[3] = v8;
  result = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistReferencingEncoderXML and conformance __PlistEncoderXML, 255, type metadata accessor for __PlistReferencingEncoderXML);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t _PlistKeyedEncodingContainerXML.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(*v3 + 40);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v21[0] = v9;
  v21[1] = v11;
  v22 = v12;
  v13 = type metadata accessor for __PlistReferencingEncoderXML();
  v14 = swift_allocObject();
  (*(v5 + 16))(v7, v18, v4);

  outlined copy of _XMLPlistEncodingFormat.Reference(v9, v11, v12);
  v15 = specialized __PlistReferencingEncoderXML.init(referencing:at:codingPathNode:wrapping:)(v8, v7, v10, v21, v14, v4, *(v19 + 24));
  v16 = v20;
  v20[3] = v13;
  result = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistReferencingEncoderXML and conformance __PlistEncoderXML, 255, type metadata accessor for __PlistReferencingEncoderXML);
  v16[4] = result;
  *v16 = v15;
  return result;
}

char *protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistKeyedEncodingContainerXML<A>(char a1)
{
  return _PlistKeyedEncodingContainerXML.encode(_:forKey:)(a1);
}

{
  return _PlistKeyedEncodingContainerXML.encode(_:forKey:)(a1);
}

uint64_t _PlistUnkeyedEncodingContainerXML.encode(_:)(uint64_t result)
{
  if (result)
  {
    v2 = (*v1 + 80);
  }

  else
  {
    v2 = (*v1 + 104);
  }

  if (result)
  {
    v3 = (*v1 + 88);
  }

  else
  {
    v3 = (*v1 + 112);
  }

  if (result)
  {
    v4 = (*v1 + 96);
  }

  else
  {
    v4 = (*v1 + 120);
  }

  if (*(v1 + 24) == 6)
  {
    v6 = *(v1 + 16);
    v7 = *v2;
    v8 = *v3;
    v9 = *v4;
    v5 = *(v1 + 8);
    v10 = (v5 + 16);
    v11 = *(v5 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(v5, v6, 6u);
    outlined copy of _XMLPlistEncodingFormat.Reference(v7, v8, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
      v11 = *v10;
    }

    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v11 = *v10;
    }

    *(v11 + 16) = v14 + 1;
    v15 = v11 + 24 * v14;
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
    *(v15 + 48) = v9;
    *(v5 + 16) = v11;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v5, v6, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _PlistUnkeyedEncodingContainerXML.nestedContainer<A>(keyedBy:)()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xFE) != 6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = v0;
  v3 = *(v0 + 8);
  v4 = (v3 + 16);
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC8];
  if (v1 == 6)
  {
    v8 = v7;
    v9 = *(v2 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(v3, v9, 6u);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      v5 = *v4;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v5 = *v4;
    }

    *(v5 + 16) = v12 + 1;
    v13 = v5 + 24 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = 0;
    *(v13 + 48) = 7;
    *(v3 + 16) = v5;
    outlined consume of _XMLPlistEncodingFormat.Reference(v3, v9, 6u);
    v14 = *(v2 + 32);
    v15 = swift_allocObject();
    v15[5] = &type metadata for _CodingKey;
    v15[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v16 = swift_allocObject();
    v15[2] = v16;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = v6;
    *(v16 + 40) = 2;
    v15[7] = v14;
    if (v14 >> 62)
    {
      v17 = 0;
      if (v14 >> 62 != 1)
      {
LABEL_12:
        if (!__OFADD__(v17, 1))
        {
          v15[8] = v17 + 1;
          type metadata accessor for _PlistKeyedEncodingContainerXML();

          swift_getWitnessTable();
          KeyedEncodingContainer.init<A>(_:)();
          return;
        }

        __break(1u);
        goto LABEL_15;
      }

      v18 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v18 = (v14 + 64);
    }

    v17 = *v18;

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

void _PlistUnkeyedEncodingContainerXML.nestedUnkeyedContainer()(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if ((v3 & 0xFE) != 6)
  {
    goto LABEL_17;
  }

  v4 = v1;
  v5 = *(v1 + 8);
  v6 = (v5 + 16);
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__s15ContiguousArrayVyAEGGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  if (v3 != 6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = v4[2];
  outlined copy of _XMLPlistEncodingFormat.Reference(v5, v11, 6u);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 24 * v14;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  *(v15 + 48) = 6;
  *(v5 + 16) = v7;
  outlined consume of _XMLPlistEncodingFormat.Reference(v5, v11, 6u);
  v16 = *v4;
  v17 = v4[4];
  v18 = swift_allocObject();
  v18[5] = &type metadata for _CodingKey;
  v18[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = v8;
  *(v19 + 40) = 2;
  v18[7] = v17;
  if (v17 >> 62)
  {
    v20 = 0;
    if (v17 >> 62 != 1)
    {
      goto LABEL_12;
    }

    v21 = ((v17 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v21 = (v17 + 64);
  }

  v20 = *v21;

LABEL_12:
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[8] = v20 + 1;
  a1[3] = &unk_1EEEED3E0;
  a1[4] = lazy protocol witness table accessor for type _PlistUnkeyedEncodingContainerXML and conformance _PlistUnkeyedEncodingContainerXML();
  v22 = swift_allocObject();
  *a1 = v22;
  *(v22 + 48) = v18;
  *(v22 + 16) = v16;
  *(v22 + 24) = v10;
  *(v22 + 32) = 0;
  *(v22 + 40) = 6;
}

void _PlistUnkeyedEncodingContainerXML.superEncoder()(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if ((v3 & 0xFE) != 6)
  {
    goto LABEL_18;
  }

  v5 = *v1;
  v4 = v1[1];
  v6 = *(*(v4 + 16) + 16);
  v7 = *(*v1 + 40);
  v8 = v1[2];
  v22 = type metadata accessor for __PlistReferencingEncoderXML();
  v9 = swift_allocObject();
  *(v9 + 128) = v5;
  *(v9 + 136) = v4;
  v23 = v8;
  *(v9 + 144) = v8;
  *(v9 + 152) = v3;
  *(v9 + 160) = v6;
  *(v9 + 168) = 0;
  v10 = *(v5 + 32);
  v21 = *(v5 + 24);
  v11 = swift_allocObject();
  v11[5] = &type metadata for _CodingKey;
  v11[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v12 = swift_allocObject();
  v11[2] = v12;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v6;
  *(v12 + 40) = 2;
  v13 = v7 >> 62;
  v11[7] = v7;
  if (v7 >> 62)
  {
    v14 = 0;
    if (v13 != 1)
    {
      goto LABEL_7;
    }

    v15 = ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15 = (v7 + 64);
  }

  v14 = *v15;

LABEL_7:
  if (__OFADD__(v14, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v11[8] = v14 + 1;
  if (v13)
  {
    if (v13 != 1)
    {
      v20 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v21;
      goto LABEL_14;
    }

    v7 &= 0x3FFFFFFFFFFFFFFFuLL;
    v16 = 32;
  }

  else
  {
    v16 = 64;
  }

  v17 = v22;
  v18 = v23;
  v19 = v21;
  v20 = *(v7 + v16);
LABEL_14:
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = v19;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 48) = v20;
  *(v9 + 72) = 8;
  *(v9 + 80) = xmmword_18121B2B0;
  *(v9 + 96) = 8;
  *(v9 + 104) = xmmword_18121D490;
  *(v9 + 120) = 8;
  a1[3] = v17;
  a1[4] = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistReferencingEncoderXML and conformance __PlistEncoderXML, 255, type metadata accessor for __PlistReferencingEncoderXML);
  *a1 = v9;

  outlined copy of _XMLPlistEncodingFormat.Reference(v4, v18, v3);
}

uint64_t protocol witness for UnkeyedEncodingContainer.count.getter in conformance _PlistUnkeyedEncodingContainerXML()
{
  if ((*(v0 + 24) & 0xFE) == 6)
  {
    return *(*(*(v0 + 8) + 16) + 16);
  }

  __break(1u);
  return result;
}

void protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _PlistUnkeyedEncodingContainerXML()
{
  if (*(v0 + 24) == 6)
  {
    v1 = *(v0 + 16);
    v3 = *(*v0 + 56);
    v4 = *(*v0 + 64);
    v5 = *(*v0 + 72);
    v2 = *(v0 + 8);
    v6 = (v2 + 16);
    v7 = *(v2 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(v2, v1, 6u);
    outlined copy of _XMLPlistEncodingFormat.Reference(v3, v4, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = *v6;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      v7 = *v6;
    }

    *(v7 + 16) = v10 + 1;
    v11 = v7 + 24 * v10;
    *(v11 + 32) = v3;
    *(v11 + 40) = v4;
    *(v11 + 48) = v5;
    *(v2 + 16) = v7;
    outlined consume of _XMLPlistEncodingFormat.Reference(v2, v1, 6u);
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(uint64_t result, uint64_t a2)
{
  if (*(v2 + 24) == 6)
  {
    v4 = result;
    v6 = *(v2 + 16);
    v5 = *(v2 + 8);
    v7 = (v5 + 16);
    v8 = *(v5 + 16);
    outlined copy of _XMLPlistEncodingFormat.Reference(v5, v6, 6u);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
      v8 = *v7;
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v8 = *v7;
    }

    *(v8 + 16) = v11 + 1;
    v12 = v8 + 24 * v11;
    *(v12 + 32) = v4;
    *(v12 + 40) = a2;
    *(v12 + 48) = 0;
    *(v5 + 16) = v8;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v5, v6, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(double a1)
{
  if (*(v1 + 24) == 6)
  {
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = a1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 3;
    *(v3 + 16) = v6;
    outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }
}

void protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(float a1)
{
  if (*(v1 + 24) == 6)
  {
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = a1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 3;
    *(v3 + 16) = v6;
    outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(uint64_t result)
{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 2;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 2;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 2;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (*(v1 + 24) == 6)
  {
    v2 = result;
    v4 = *(v1 + 16);
    v3 = *(v1 + 8);
    v5 = (v3 + 16);
    v6 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      v6 = *v5;
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      v6 = *v5;
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 24 * v9;
    *(v10 + 32) = v2;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    *(v3 + 16) = v6;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v3, v4, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + 24) == 6)
  {
    v6 = result;
    v8 = *(v4 + 16);
    v7 = *(v4 + 8);
    v9 = (v7 + 16);
    v10 = *(v7 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
      v10 = *v9;
    }

    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v10 = *v9;
    }

    *(v10 + 16) = v13 + 1;
    v14 = v10 + 24 * v13;
    *(v14 + 32) = v6;
    *(v14 + 40) = 0;
    *(v14 + 48) = a4;
    *(v7 + 16) = v10;
    return outlined consume of _XMLPlistEncodingFormat.Reference(v7, v8, 6u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderXML.encode(_:)(Swift::Bool a1)
{
  v6 = a1;
  if (((*(*v1 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_15:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4, 1);
    v8 = *v1;
    goto LABEL_13;
  }

  v9 = v1[2];
  v1 += 2;
  v8 = v9;
  v10 = v1 + 8;
  v11 = (v6 & 1) == 0;
  if ((v6 & 1) == 0)
  {
    v10 = v1 + 11;
  }

  v6 = *v10;
  if (v11)
  {
    v12 = v1 + 12;
  }

  else
  {
    v12 = v1 + 9;
  }

  v2 = *v12;
  if (v11)
  {
    v13 = (v1 + 13);
  }

  else
  {
    v13 = (v1 + 10);
  }

  v3 = *v13;
  outlined copy of _XMLPlistEncodingFormat.Reference(v6, v2, *v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
    v8 = *v1;
  }

  v5 = *(v8 + 16);
  v7 = *(v8 + 24);
  v4 = v5 + 1;
  if (v5 >= v7 >> 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  *(v8 + 16) = v4;
  v15 = v8 + 24 * v5;
  *(v15 + 32) = v6;
  *(v15 + 40) = v2;
  *(v15 + 48) = v3;
  *v1 = v8;
}

uint64_t __PlistEncoderXML.encode<A>(_:)(int64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v8 = v3;
  if (((*(*v3 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_28:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), a1, 1);
    v24 = *v8;
LABEL_9:
    *(v24 + 16) = a1;
    v26 = v24 + 24 * v5;
    *(v26 + 32) = a3;
    *(v26 + 40) = a2;
    *(v26 + 48) = v6;
    *v8 = v24;
    return result;
  }

  v39 = a2;
  v40 = a3;
  __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a2 - 8) + 16))();
  v13 = v3[5];
  v14 = v39;
  v15 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v16 = swift_dynamicCastMetatype();
  if (v16)
  {
    v17 = MEMORY[0x1EEE9AC00](v16);
    (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v14, v17);
    swift_dynamicCast();
    a3 = v33;
    v6 = 4;
    a2 = 0;
    goto LABEL_6;
  }

  v20 = swift_dynamicCastMetatype();
  if (v20)
  {
    v21 = MEMORY[0x1EEE9AC00](v20);
    (*(v23 + 16))(&v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v14, v21);
    swift_dynamicCast();
    a3 = v33;
    a2 = v34;
    v6 = 5;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v38);
    v8 = v3 + 2;
    v24 = v3[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    *v8 = v24;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
      v24 = *v8;
    }

    v5 = *(v24 + 16);
    v12 = *(v24 + 24);
    a1 = v5 + 1;
    if (v5 < v12 >> 1)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v27 = v3 + 2;
  v28 = *(v3[2] + 16);
  v29 = v3[6];
  v3[5] = v13;
  v41 = v29;
  if (!(v13 >> 62))
  {
    v30 = (v13 + 64);
    goto LABEL_14;
  }

  if (v13 >> 62 == 1)
  {
    v30 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_14:
    v31 = *v30;
    swift_retain_n();
    goto LABEL_16;
  }

  v31 = 0;
LABEL_16:
  v3[6] = v31;
  v36 = type metadata accessor for __PlistEncoderXML();
  v37 = lazy protocol witness table accessor for type __PlistEncoderXML and conformance __PlistEncoderXML(&lazy protocol witness table cache variable for type __PlistEncoderXML and conformance __PlistEncoderXML, v32, type metadata accessor for __PlistEncoderXML);
  v33 = v3;

  dispatch thunk of Encodable.encode(to:)();
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(&v33);

    v3[5] = v13;

    v3[6] = v41;
    if (v28 >= *(v3[2] + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
      v6 = 7;
      a3 = swift_allocObject();
      a2 = 0;
      *(a3 + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
      specialized ContiguousArray._customRemoveLast()(&v33);
      v6 = v35;
      a3 = v33;
      a2 = v34;
      if (v35 == 255)
      {
        outlined consume of _XMLPlistEncodingFormat.Reference?(v33, v34, 0xFFu);
        specialized ContiguousArray.remove(at:)(*(*v27 + 16) - 1, &v33);

        a3 = v33;
        a2 = v34;
        v6 = v35;
      }

      else
      {
      }
    }

    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v33);

  v3[5] = v13;

  v3[6] = v41;
  if (v28 < *(v3[2] + 16))
  {
    specialized ContiguousArray._customRemoveLast()(&v33);
    if (v35 == 255)
    {
      outlined consume of _XMLPlistEncodingFormat.Reference?(v33, v34, 0xFFu);
      specialized ContiguousArray.remove(at:)(*(*v27 + 16) - 1, &v33);
      outlined consume of _XMLPlistEncodingFormat.Reference(v33, v34, v35);
    }

    else
    {
      outlined consume of _XMLPlistEncodingFormat.Reference?(v33, v34, v35);
    }
  }

  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance __PlistEncoderXML()
{
  v6 = *v0;
  if (((*(*v6 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v4, 1);
    v8 = *v6;
    goto LABEL_5;
  }

  v9 = *(v6 + 2);
  v6 += 16;
  v8 = v9;
  v1 = *(v6 + 5);
  v2 = *(v6 + 6);
  v3 = v6[56];
  outlined copy of _XMLPlistEncodingFormat.Reference(v1, v2, v3);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v9;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
    v8 = *v6;
  }

  v5 = *(v8 + 16);
  v7 = *(v8 + 24);
  v4 = v5 + 1;
  if (v5 >= v7 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v8 + 16) = v4;
  v11 = v8 + 24 * v5;
  *(v11 + 32) = v1;
  *(v11 + 40) = v2;
  *(v11 + 48) = v3;
  *v6 = v8;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  if (((*(*v7 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v3, 1);
    v9 = *v7;
    goto LABEL_5;
  }

  v10 = v7[2];
  v7 += 2;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v7;
  }

  v4 = *(v9 + 16);
  v8 = *(v9 + 24);
  v3 = v4 + 1;
  if (v4 >= v8 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v9 + 16) = v3;
  v12 = v9 + 24 * v4;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = 0;
  *v7 = v9;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(double a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 3;
  *v5 = v7;
  return result;
}

double protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(float a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  result = a1;
  *(v7 + 16) = v2;
  v11 = v7 + 24 * v3;
  *(v11 + 32) = a1;
  *(v11 + 40) = 0;
  *(v11 + 48) = 3;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(char a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 2;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(__int16 a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 2;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(int a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 2;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(unsigned __int8 a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(unsigned __int16 a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(unsigned int a1)
{
  v5 = *v1;
  if (((*(*v5 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1);
    v7 = *v5;
    goto LABEL_5;
  }

  v8 = v5[2];
  v5 += 2;
  v7 = v8;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
    v7 = *v5;
  }

  v3 = *(v7 + 16);
  v6 = *(v7 + 24);
  v2 = v3 + 1;
  if (v3 >= v6 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v7 + 16) = v2;
  v10 = v7 + 24 * v3;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  *(v10 + 48) = 1;
  *v5 = v7;
  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v4;
  if (((*(*v9 + 240))() & 1) == 0)
  {
    __break(1u);
LABEL_7:
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v5, 1);
    v11 = *v9;
    goto LABEL_5;
  }

  v12 = v9[2];
  v9 += 2;
  v11 = v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v12;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
    v11 = *v9;
  }

  v6 = *(v11 + 16);
  v10 = *(v11 + 24);
  v5 = v6 + 1;
  if (v6 >= v10 >> 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(v11 + 16) = v5;
  v14 = v11 + 24 * v6;
  *(v14 + 32) = a1;
  *(v14 + 40) = 0;
  *(v14 + 48) = a4;
  *v9 = v11;
  return result;
}

BOOL __PlistReferencingEncoderXML.canEncodeNewValue.getter()
{
  v1 = *(v0[2] + 16);
  v2 = v0[5];

  v3 = _CodingPathNode.path.getter(v2);

  v4 = *(v3 + 16);

  v5 = *(v0[16] + 40);

  v6 = _CodingPathNode.path.getter(v5);

  v7 = *(v6 + 16);

  return v1 == v4 + ~v7;
}

uint64_t __PlistReferencingEncoderXML.__ivar_destroyer()
{

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[19];

  return outlined consume of __PlistReferencingEncoderXML.Reference(v1, v2, v3);
}

uint64_t __PlistReferencingEncoderXML.__deallocating_deinit()
{
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = v0 + 16;
  v6 = *(v5 + 16);
  if (v6 == 1)
  {
    specialized ContiguousArray._customRemoveLast()(&v66);
    v9 = v68;
    v10 = v66;
    v11 = v67;
    if (v68 == 255)
    {
      outlined consume of _XMLPlistEncodingFormat.Reference?(v66, v67, 0xFFu);
      specialized ContiguousArray.remove(at:)(*(*v4 + 16) - 1, &v66);
      v10 = v66;
      v11 = v67;
      v9 = v68;
    }
  }

  else
  {
    if (v6)
    {
LABEL_47:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3BoxCy__SDyA2EGGMd);
    v9 = 7;
    v10 = swift_allocObject();
    v11 = 0;
    *(v10 + 16) = MEMORY[0x1E69E7CC8];
  }

  v12 = *(v3 + 136);
  v13 = *(v3 + 160);
  if ((*(v3 + 152) & 0x8000000000000000) != 0)
  {
    if (*(v3 + 152) != 7)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v2 = *(v3 + 168);
    v65 = *(v3 + 144);
    outlined copy of _XMLPlistEncodingFormat.Reference(*(v3 + 136), v65, 7u);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v12 + 16);
    v1 = v66;
    *(v12 + 16) = 0x8000000000000000;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v2, 0);
    v19 = *(v1 + 16);
    v20 = (v7 & 1) == 0;
    v21 = v19 + v20;
    if (!__OFADD__(v19, v20))
    {
      if (*(v1 + 24) >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        v23 = v1;
        v27 = v65;
        if (v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v22 = v7;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
        v23 = v66;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v2, 0);
        if ((v22 & 1) != (v25 & 1))
        {
LABEL_48:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v8 = v24;
        v26 = v22;
        v27 = v65;
        if (v26)
        {
          goto LABEL_19;
        }
      }

LABEL_39:
      specialized _NativeDictionary._insert(at:key:value:)(v8, v13, v2, 0, v10, v11, v9, v23);
      goto LABEL_40;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    v58 = v8;
    v59 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOAGGMd);
    v32 = static _DictionaryStorage.copy(original:)();
    v23 = v32;
    if (*(v1 + 16))
    {
      v33 = (v32 + 64);
      v34 = ((1 << *(v23 + 32)) + 63) >> 6;
      __src = (v1 + 64);
      if (v23 != v1 || v33 >= v1 + 64 + 8 * v34)
      {
        memmove(v33, __src, 8 * v34);
      }

      v35 = 0;
      *(v23 + 16) = *(v1 + 16);
      v36 = 1 << *(v1 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v57 = (v36 + 63) >> 6;
      v38 = v37 & *(v1 + 64);
      if (v38)
      {
        do
        {
          v39 = __clz(__rbit64(v38));
          v64 = (v38 - 1) & v38;
LABEL_36:
          v42 = 24 * (v39 | (v35 << 6));
          v43 = *(v1 + 48) + v42;
          v44 = *v43;
          v45 = *(v43 + 8);
          v46 = *(v1 + 56) + v42;
          v62 = *(v46 + 8);
          v63 = *v46;
          v47 = *(v23 + 48) + v42;
          v48 = *(v43 + 16);
          v61 = *(v46 + 16);
          *v47 = *v43;
          *(v47 + 8) = v45;
          *(v47 + 16) = v48;
          v49 = *(v23 + 56) + v42;
          *v49 = v63;
          *(v49 + 8) = v62;
          *(v49 + 16) = v61;
          outlined copy of _XMLPlistEncodingFormat.Reference(v44, v45, v48);
          outlined copy of _XMLPlistEncodingFormat.Reference(v63, v62, v61);
          v38 = v64;
        }

        while (v64);
      }

      v40 = v35;
      while (1)
      {
        v35 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v35 >= v57)
        {
          goto LABEL_38;
        }

        v41 = *(__src + v35);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v64 = (v41 - 1) & v41;
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_38:

    v27 = v65;
    v8 = v58;
    if ((v59 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_19:
    v28 = *(v23 + 56) + 24 * v8;
    v29 = *v28;
    v30 = *(v28 + 8);
    *v28 = v10;
    *(v28 + 8) = v11;
    v31 = *(v28 + 16);
    *(v28 + 16) = v9;
    outlined consume of _XMLPlistEncodingFormat.Reference(v29, v30, v31);

LABEL_40:
    *(v12 + 16) = v23;
    v15 = v12;
    v16 = v27;
    v17 = 7;
    goto LABEL_41;
  }

  if (*(v3 + 152) != 6)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = *(v12 + 16);
  v12 += 16;
  if (*(v14 + 16) < v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  specialized ContiguousArray.replaceSubrange<A>(_:with:)(*(v3 + 160), *(v3 + 160), v10, v11, v9);
  v15 = v10;
  v16 = v11;
  v17 = v9;
LABEL_41:
  outlined consume of _XMLPlistEncodingFormat.Reference(v15, v16, v17);

  v50 = *(v3 + 80);
  v51 = *(v3 + 88);
  v52 = *(v3 + 104);
  v53 = *(v3 + 112);
  v54 = *(v3 + 96);
  v55 = *(v3 + 120);
  outlined consume of _XMLPlistEncodingFormat.Reference(*(v3 + 56), *(v3 + 64), *(v3 + 72));
  outlined consume of _XMLPlistEncodingFormat.Reference(v50, v51, v54);
  outlined consume of _XMLPlistEncodingFormat.Reference(v52, v53, v55);

  outlined consume of __PlistReferencingEncoderXML.Reference(*(v3 + 136), *(v3 + 144), *(v3 + 152));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for __PlistReferencingEncoderXML.Reference(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for __PlistReferencingEncoderXML.Reference(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 16 * -a2;
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for _XMLPlistEncodingFormat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 65))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _XMLPlistEncodingFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall _XMLPlistEncodingFormat.Writer.appendEscaped(_:)(Swift::UInt8 a1)
{
  switch(a1)
  {
    case '&':
      v1 = 0x3B706D6126;
      v2 = 0xE500000000000000;
LABEL_8:
      v4[0] = v1;
      v4[1] = v2;
      specialized String.withUTF8<A>(_:)(v4);

      return;
    case '>':
      v1 = 997484326;
LABEL_7:
      v2 = 0xE400000000000000;
      goto LABEL_8;
    case '<':
      v1 = 997485606;
      goto LABEL_7;
  }

  _StringGuts.grow(_:)(48);

  v3 = static String._uncheckedFromUTF8(_:)();
  MEMORY[0x1865CB0E0](v3);

  MEMORY[0x1865CB0E0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6, char *a7)
{
  if (a2 >= 1)
  {
    v9 = a1;
    v10 = 0;
    v11 = 0;
    v12 = &a1[a2];
    v13 = 8 * a5;
    v14 = (a5 - 0x1000000000000000) >> 61;
    v27 = v14;
    while (1)
    {
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v15 = *v9;
      if (!(v10 % 3))
      {
        break;
      }

      v16 = v15 | (v11 << 8);
      if (v10 % 3 == 1)
      {
        v17 = (v16 >> 4) & 0x3F;
LABEL_9:
        v18 = *a3;
        v19 = 1;
        goto LABEL_11;
      }

      **a3 = outlined read-only object #0 of one-time initialization function for dataEncodeTable[((v16 >> 6) & 0x3F) + 32];
      v17 = v15 & 0x3F;
      v18 = (*a3 + 1);
      v19 = 2;
LABEL_11:
      *v18 = outlined read-only object #0 of one-time initialization function for dataEncodeTable[v17 + 32];
      v20 = (*a3 + v19);
      *a3 = v20;
      if (v14 < 7)
      {
        goto LABEL_29;
      }

      if (__OFADD__(&v20[-a4], v13))
      {
        goto LABEL_30;
      }

      if (&v20[v13 - a4] >= 76)
      {
        v29 = v15;
        *v20 = 10;
        v21 = *a3 - a4 + 1;
        v22 = a5;
        _XMLPlistEncodingFormat.Writer.appendIndents(_:)(a5);
        if (v21 < 0)
        {
          goto LABEL_31;
        }

        _XMLPlistEncodingFormat.Writer.append(_:)(a7, v21);
        *a3 = a4;
        a5 = v22;
        v14 = v27;
        LODWORD(v15) = v29;
      }

      ++v9;
      ++v10;
      v11 = v15;
      if (v9 >= v12)
      {
        goto LABEL_17;
      }
    }

    v17 = v15 >> 2;
    goto LABEL_9;
  }

  LOBYTE(v15) = 0;
LABEL_17:
  if (a2 % 3 == 1)
  {
    **a3 = outlined read-only object #0 of one-time initialization function for dataEncodeTable[16 * (v15 & 3) + 32];
    *(*a3 + 1) = 61;
    *(*a3 + 2) = 61;
    v23 = (*a3 + 3);
  }

  else
  {
    if (!(a2 % 3))
    {
      v23 = *a3;
      goto LABEL_23;
    }

    **a3 = outlined read-only object #0 of one-time initialization function for dataEncodeTable[4 * (v15 & 0xF) + 32];
    *(*a3 + 1) = 61;
    v23 = (*a3 + 2);
  }

  *a3 = v23;
LABEL_23:
  v24 = &v23[-a4];
  if (&v23[-a4] >= 1)
  {
    *v23 = 10;
    _XMLPlistEncodingFormat.Writer.appendIndents(_:)(a5);
    v25 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_32;
    }

    if (v25 < 0)
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      _XMLPlistEncodingFormat.Writer.append(_:)(a7, v25);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _XMLPlistEncodingFormat.Reference()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    String.hash(into:)();
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _XMLPlistEncodingFormat.Reference()
{
  if (*(v0 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return String.hash(into:)();
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _XMLPlistEncodingFormat.Reference()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    String.hash(into:)();
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _XMLPlistEncodingFormat.Reference(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  else
  {

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return result;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance _XMLPlistEncodingFormat.Reference(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return 0;
  }

  else
  {

    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return result;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance _XMLPlistEncodingFormat.Reference(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 16) || *(a1 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = *a2;
    v5 = a2[1];
    if (v4 == v2 && v5 == v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    return v7 & 1;
  }

  return result;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance _XMLPlistEncodingFormat.Reference(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    return v3 & 1;
  }

  return result;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance _XMLPlistEncodingFormat.Reference(uint64_t *a1, uint64_t *a2)
{
  if (*(a2 + 16) || *(a1 + 16))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *a2;
    v6 = a2[1];
    if (v5 == v3 && v6 == v4)
    {
      return 0;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v99 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v8++;
      if (v8 < v7)
      {
        v11 = *v6;
        v12 = *v6 + 48 * v8;
        if (*(v12 + 16))
        {
          goto LABEL_138;
        }

        v13 = v11 + 48 * v10;
        if (*(v13 + 16))
        {
          goto LABEL_138;
        }

        if (*v12 == *v13 && *(v12 + 8) == *(v13 + 8))
        {
          v15 = 0;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v8 = v10 + 2;
        if (v10 + 2 < v7)
        {
          v16 = v11 + 48 * v10 + 56;
          do
          {
            if (*(v16 + 56) || *(v16 + 8))
            {
              goto LABEL_138;
            }

            v17 = v16 + 48;
            if (*(v16 + 40) == *(v16 - 8) && *(v16 + 48) == *v16)
            {
              if (v15)
              {
                goto LABEL_28;
              }
            }

            else if ((v15 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              goto LABEL_27;
            }

            ++v8;
            v16 = v17;
          }

          while (v7 != v8);
          v8 = v7;
        }

LABEL_27:
        if (v15)
        {
LABEL_28:
          if (v8 < v10)
          {
            goto LABEL_130;
          }

          if (v10 < v8)
          {
            v19 = 48 * v8 - 48;
            v20 = 48 * v10;
            v21 = v8;
            v22 = v10;
            do
            {
              if (v22 != --v21)
              {
                v31 = *v6;
                if (!*v6)
                {
                  goto LABEL_135;
                }

                v23 = v31 + v20;
                v24 = *(v31 + v20 + 16);
                v25 = v31 + v19;
                v26 = *(v23 + 40);
                v27 = *(v23 + 24);
                v28 = *v23;
                v30 = *(v25 + 16);
                v29 = *(v25 + 32);
                *v23 = *v25;
                *(v23 + 16) = v30;
                *(v23 + 32) = v29;
                *v25 = v28;
                *(v25 + 16) = v24;
                *(v25 + 24) = v27;
                *(v25 + 40) = v26;
              }

              ++v22;
              v19 -= 48;
              v20 += 48;
            }

            while (v22 < v21);
          }
        }
      }

      v32 = v6[1];
      if (v8 < v32)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_129;
        }

        if (v8 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_131;
          }

          v96 = v5;
          if (v10 + a4 >= v32)
          {
            v33 = v6[1];
          }

          else
          {
            v33 = v10 + a4;
          }

          if (v33 < v10)
          {
LABEL_132:
            __break(1u);
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
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          if (v8 != v33)
          {
            v94 = v10;
            v95 = v6;
            v34 = *v6;
            v35 = *v6 + 48 * v8 - 48;
            v36 = v10 - v8;
            do
            {
              v37 = v36;
              v38 = v35;
              do
              {
                if (*(v38 + 64) || *(v38 + 16))
                {
                  goto LABEL_138;
                }

                v39 = (v38 + 48);
                v40 = *(v38 + 48) == *v38 && *(v38 + 56) == *(v38 + 8);
                if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_133;
                }

                v41 = *v38;
                v42 = *(v38 + 16);
                v43 = *(v38 + 32);
                *v38 = *(v38 + 48);
                *(v38 + 24) = *(v38 + 72);
                v44 = *(v38 + 88);
                *(v38 + 16) = *(v38 + 64);
                *(v38 + 40) = v44;
                v38 -= 48;
                *v39 = v41;
                v39[1] = v42;
                v39[2] = v43;
              }

              while (!__CFADD__(v37++, 1));
              ++v8;
              v35 += 48;
              --v36;
            }

            while (v8 != v33);
            v8 = v33;
            v10 = v94;
            v6 = v95;
          }

          v5 = v96;
        }
      }

      if (v8 < v10)
      {
        goto LABEL_128;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v47 = *(v9 + 2);
      v46 = *(v9 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v9);
      }

      *(v9 + 2) = v48;
      v49 = &v9[16 * v47];
      *(v49 + 4) = v10;
      *(v49 + 5) = v8;
      v99 = v9;
      v50 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v9 + 4);
            v53 = *(v9 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_81:
            if (v55)
            {
              goto LABEL_119;
            }

            v68 = &v9[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_122;
            }

            v74 = &v9[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_126;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v78 = &v9[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_95:
          if (v73)
          {
            goto LABEL_121;
          }

          v81 = &v9[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_124;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_102:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
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
            goto LABEL_132;
          }

          if (!*v6)
          {
            goto LABEL_134;
          }

          v90 = *&v9[16 * v89 + 32];
          v91 = *&v9[16 * v51 + 40];
          specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 48 * v90), (*v6 + 48 * *&v9[16 * v51 + 32]), (*v6 + 48 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          }

          if (v89 >= *(v9 + 2))
          {
            goto LABEL_116;
          }

          v92 = &v9[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          v99 = v9;
          specialized Array.remove(at:)(v51);
          v48 = *(v9 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v9[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_117;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_118;
        }

        v63 = &v9[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_120;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_123;
        }

        if (v67 >= v59)
        {
          v85 = &v9[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_127;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }

LABEL_3:
      v7 = v6[1];
    }

    while (v8 < v7);
  }

  if (!*a1)
  {
    goto LABEL_137;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v99, *a1, v6);
}

{
  v5 = v4;
  v129 = type metadata accessor for Unicode.CanonicalCombiningClass();
  v9 = *(v129 - 8);
  v10 = MEMORY[0x1EEE9AC00](v129);
  v128 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v110 - v12;
  v130 = type metadata accessor for Unicode.Scalar.Properties();
  v13 = MEMORY[0x1EEE9AC00](v130);
  v126 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v125 = &v110 - v17;
  v133 = MEMORY[0x1E69E7CC0];
  v18 = a3[1];
  if (v18 >= 1)
  {
    v19 = 0;
    v123 = (v9 + 8);
    v124 = (v16 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v110 = a3;
    v113 = a4;
    v114 = a1;
    do
    {
      v21 = v19++;
      if (v19 < v18)
      {
        v112 = v5;
        v111 = v20;
        v22 = *a3 + 4 * v21 + 8;
        v23 = v125;
        Unicode.Scalar.properties.getter();
        v24 = v127;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v25 = *v124;
        (*v124)(v23, v130);
        LODWORD(v120) = Unicode.CanonicalCombiningClass.rawValue.getter();
        v115 = v21;
        v26 = *v123;
        v27 = v24;
        v28 = v129;
        (*v123)(v27, v129);
        v29 = v126;
        Unicode.Scalar.properties.getter();
        v30 = v128;
        Unicode.Scalar.Properties.canonicalCombiningClass.getter();
        v117 = v25;
        v25(v29, v130);
        LODWORD(v119) = Unicode.CanonicalCombiningClass.rawValue.getter();
        v116 = v26;
        result = (v26)(v30, v28);
        v31 = v115 + 2;
        v118 = v18;
        while (v18 != v31)
        {
          LODWORD(v131) = v120 < v119;
          LODWORD(v121) = *(v22 - 4);
          v32 = v125;
          Unicode.Scalar.properties.getter();
          v33 = v127;
          Unicode.Scalar.Properties.canonicalCombiningClass.getter();
          v34 = v130;
          v35 = v117;
          v117(v32, v130);
          LOBYTE(v122) = Unicode.CanonicalCombiningClass.rawValue.getter();
          LODWORD(v122) = v122;
          v36 = v129;
          v132 = v22;
          v37 = v116;
          v116(v33, v129);
          v38 = v126;
          Unicode.Scalar.properties.getter();
          v39 = v128;
          Unicode.Scalar.Properties.canonicalCombiningClass.getter();
          v35(v38, v34);
          LOBYTE(v35) = Unicode.CanonicalCombiningClass.rawValue.getter();
          result = (v37)(v39, v36);
          v18 = v118;
          ++v31;
          v22 = v132 + 4;
          if (((v131 ^ (v122 >= v35)) & 1) == 0)
          {
            v18 = v31 - 1;
            break;
          }
        }

        v5 = v112;
        a4 = v113;
        v20 = v111;
        a3 = v110;
        a1 = v114;
        v21 = v115;
        if (v120 < v119)
        {
          if (v18 < v115)
          {
            goto LABEL_107;
          }

          if (v115 < v18)
          {
            v40 = v18 - 1;
            v41 = v115;
            do
            {
              if (v41 != v40)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_112;
                }

                v42 = *(v44 + 4 * v41);
                *(v44 + 4 * v41) = *(v44 + 4 * v40);
                *(v44 + 4 * v40) = v42;
              }
            }

            while (++v41 < v40--);
          }
        }

        v19 = v18;
      }

      v45 = a3[1];
      if (v19 < v45)
      {
        if (__OFSUB__(v19, v21))
        {
          goto LABEL_106;
        }

        if (v19 - v21 < a4)
        {
          v46 = v21 + a4;
          if (__OFADD__(v21, a4))
          {
            goto LABEL_108;
          }

          if (v46 >= v45)
          {
            v46 = a3[1];
          }

          if (v46 < v21)
          {
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            return result;
          }

          if (v19 != v46)
          {
            v111 = v20;
            v112 = v5;
            v122 = *a3;
            v47 = (v122 + 4 * v19 - 4);
            v115 = v21;
            v48 = v21 - v19;
            v118 = v46;
            do
            {
              v120 = v47;
              v121 = v19;
              v119 = v48;
              v49 = v48;
              do
              {
                v131 = v49;
                v50 = v125;
                Unicode.Scalar.properties.getter();
                v51 = v127;
                Unicode.Scalar.Properties.canonicalCombiningClass.getter();
                v52 = *v124;
                v53 = v130;
                (*v124)(v50, v130);
                LOBYTE(v132) = Unicode.CanonicalCombiningClass.rawValue.getter();
                LODWORD(v132) = v132;
                v54 = *v123;
                v55 = v51;
                v56 = v129;
                (*v123)(v55, v129);
                v57 = v126;
                Unicode.Scalar.properties.getter();
                v58 = v128;
                Unicode.Scalar.Properties.canonicalCombiningClass.getter();
                v52(v57, v53);
                v59 = Unicode.CanonicalCombiningClass.rawValue.getter();
                result = (v54)(v58, v56);
                if (v132 >= v59)
                {
                  break;
                }

                v60 = v131;
                if (!v122)
                {
                  goto LABEL_110;
                }

                v61 = *v47;
                result = v47[1];
                *v47 = result;
                v47[1] = v61;
                --v47;
                v62 = __CFADD__(v60, 1);
                v49 = v60 + 1;
              }

              while (!v62);
              v19 = v121 + 1;
              v47 = v120 + 1;
              v48 = v119 - 1;
            }

            while (v121 + 1 != v118);
            v19 = v118;
            v5 = v112;
            a3 = v110;
            a1 = v114;
            v21 = v115;
            v20 = v111;
          }
        }
      }

      if (v19 < v21)
      {
        goto LABEL_105;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v64 = *(v20 + 16);
      v63 = *(v20 + 24);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v65;
      v66 = v20 + 16 * v64;
      *(v66 + 32) = v21;
      *(v66 + 40) = v19;
      v133 = v20;
      if (!*a1)
      {
        goto LABEL_113;
      }

      if (v64)
      {
        v67 = *a1;
        while (1)
        {
          v68 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v69 = *(v20 + 32);
            v70 = *(v20 + 40);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_58:
            if (v72)
            {
              goto LABEL_96;
            }

            v85 = (v20 + 16 * v65);
            v87 = *v85;
            v86 = v85[1];
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_99;
            }

            v91 = (v20 + 32 + 16 * v68);
            v93 = *v91;
            v92 = v91[1];
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_102;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_103;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                v68 = v65 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v95 = (v20 + 16 * v65);
          v97 = *v95;
          v96 = v95[1];
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_72:
          if (v90)
          {
            goto LABEL_98;
          }

          v98 = v20 + 16 * v68;
          v100 = *(v98 + 32);
          v99 = *(v98 + 40);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_101;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_79:
          v106 = v68 - 1;
          if (v68 - 1 >= v65)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (!*a3)
          {
            goto LABEL_111;
          }

          v107 = *(v20 + 32 + 16 * v106);
          v108 = *(v20 + 32 + 16 * v68 + 8);
          result = specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 4 * v107), (*a3 + 4 * *(v20 + 32 + 16 * v68)), (*a3 + 4 * v108), v67);
          if (v5)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_92;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v20 = result;
          }

          if (v106 >= *(v20 + 16))
          {
            goto LABEL_93;
          }

          v109 = v20 + 16 * v106;
          *(v109 + 32) = v107;
          *(v109 + 40) = v108;
          v133 = v20;
          result = specialized Array.remove(at:)(v68);
          v20 = v133;
          v65 = *(v133 + 16);
          if (v65 <= 1)
          {
            goto LABEL_3;
          }
        }

        v73 = v20 + 32 + 16 * v65;
        v74 = *(v73 - 64);
        v75 = *(v73 - 56);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_94;
        }

        v78 = *(v73 - 48);
        v77 = *(v73 - 40);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_95;
        }

        v80 = (v20 + 16 * v65);
        v82 = *v80;
        v81 = v80[1];
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_97;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_100;
        }

        if (v84 >= v76)
        {
          v102 = (v20 + 32 + 16 * v68);
          v104 = *v102;
          v103 = v102[1];
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_104;
          }

          if (v71 < v105)
          {
            v68 = v65 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_58;
      }

LABEL_3:
      v18 = a3[1];
      a4 = v113;
      a1 = v114;
    }

    while (v19 < v18);
  }

  if (!*a1)
  {
    goto LABEL_114;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v133, *a1, a3);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, char *a2, uint64_t *a3)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *a1 = v4;
    v5 = *(v4 + 2);
    if (v5 < 2)
    {
      return 1;
    }

    while (1)
    {
      v6 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_68:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v38 = v5 - 1;
      v39 = v5;
      v42 = *&v4[16 * v5];
      v7 = (v6 + 48 * v42);
      v8 = 48 * *&v4[16 * v5 + 16];
      v9 = (v6 + v8);
      v40 = v4;
      v41 = *&v4[16 * v5 + 24];
      v10 = (v6 + 48 * v41);
      v11 = v8 - 48 * v42;
      v12 = 48 * v41 - v8;
      v13 = v12 / 48;
      if (v11 / 48 >= v12 / 48)
      {
        v21 = 48 * v13;
        if (v9 != a2 || &v9[48 * v13] <= a2)
        {
          memmove(a2, v9, 48 * v13);
        }

        v4 = &a2[v21];
        if (v12 < 48 || v8 <= 48 * v42)
        {
          v15 = a2;
        }

        else
        {
LABEL_38:
          v24 = v9 - 48;
          v10 -= 48;
          v25 = v4;
          do
          {
            v27 = *(v25 - 6);
            v25 -= 48;
            v26 = v27;
            if (v25[16] || *(v9 - 32))
            {
              goto LABEL_68;
            }

            v28 = v26 == *(v9 - 6) && *(v25 + 1) == *(v9 - 5);
            if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (v10 + 48 != v9)
              {
                v31 = *v24;
                v32 = *(v9 - 1);
                *(v10 + 1) = *(v9 - 2);
                *(v10 + 2) = v32;
                *v10 = v31;
              }

              if (v4 <= a2 || (v9 -= 48, v7 >= v24))
              {
                v15 = a2;
                v9 = v24;
                goto LABEL_55;
              }

              goto LABEL_38;
            }

            if (v10 + 48 != v4)
            {
              v29 = *v25;
              v30 = *(v25 + 2);
              *(v10 + 1) = *(v25 + 1);
              *(v10 + 2) = v30;
              *v10 = v29;
            }

            v10 -= 48;
            v4 = v25;
          }

          while (v25 > a2);
          v4 = v25;
          v15 = a2;
        }
      }

      else
      {
        v14 = 48 * (v11 / 48);
        if (v7 != a2 || &v7[v14] <= a2)
        {
          memmove(a2, v7, 48 * (v11 / 48));
        }

        v4 = &a2[v14];
        v16 = v11 < 48;
        v15 = a2;
        v16 = v16 || 48 * v41 <= v8;
        if (!v16)
        {
          while (1)
          {
            if (v9[16] || v15[16])
            {
              goto LABEL_68;
            }

            v17 = *v9 == *v15 && *(v9 + 1) == *(v15 + 1);
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v18 = v9;
            v17 = v7 == v9;
            v9 += 48;
            if (!v17)
            {
              goto LABEL_23;
            }

LABEL_24:
            v7 += 48;
            if (v15 >= v4 || v9 >= v10)
            {
              goto LABEL_26;
            }
          }

          v18 = v15;
          v17 = v7 == v15;
          v15 += 48;
          if (v17)
          {
            goto LABEL_24;
          }

LABEL_23:
          v19 = *v18;
          v20 = *(v18 + 2);
          *(v7 + 1) = *(v18 + 1);
          *(v7 + 2) = v20;
          *v7 = v19;
          goto LABEL_24;
        }

LABEL_26:
        v9 = v7;
      }

LABEL_55:
      v33 = 48 * ((v4 - v15) / 48);
      if (v9 != v15 || v9 >= &v15[v33])
      {
        memmove(v9, v15, v33);
      }

      if (v41 < v42)
      {
        break;
      }

      v4 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      }

      if ((v39 - 2) >= *(v4 + 2))
      {
        goto LABEL_65;
      }

      v34 = &v4[16 * v39];
      *v34 = v42;
      *(v34 + 1) = v41;
      *a1 = v4;
      specialized Array.remove(at:)(v38);
      v4 = *a1;
      v5 = *(*a1 + 2);
      if (v5 <= 1)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
LABEL_43:
      v28 = 48 * ((v13 - v4) / 48);
      if (v6 != v4 || v6 >= &v4[v28])
      {
        memmove(v6, v4, v28);
      }

      return 1;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[16] || v4[16])
      {
        goto LABEL_47;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 48;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v17 = v7 == v6;
    v6 += 48;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    v16 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  v18 = 48 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v13 = &v4[v18];
  if (v10 < 48 || v6 <= v7)
  {
    goto LABEL_43;
  }

LABEL_26:
  v19 = v6 - 48;
  v5 -= 48;
  v20 = v13;
  while (1)
  {
    v22 = *(v20 - 48);
    v20 -= 48;
    v21 = v22;
    if (*(v20 + 16) || *(v6 - 32))
    {
      break;
    }

    v23 = v21 == *(v6 - 6) && *(v20 + 8) == *(v6 - 5);
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v5 + 48 != v6)
      {
        v26 = *v19;
        v27 = *(v6 - 1);
        *(v5 + 1) = *(v6 - 2);
        *(v5 + 2) = v27;
        *v5 = v26;
      }

      if (v13 <= v4 || (v6 -= 48, v19 <= v7))
      {
        v6 = v19;
        goto LABEL_43;
      }

      goto LABEL_26;
    }

    if (v5 + 48 != v13)
    {
      v24 = *v20;
      v25 = *(v20 + 32);
      *(v5 + 1) = *(v20 + 16);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
    v13 = v20;
    if (v20 <= v4)
    {
      v13 = v20;
      goto LABEL_43;
    }
  }

LABEL_47:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 24) >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);

  return specialized ContiguousArray._endMutation()();
}

uint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = __OFSUB__(a3, v9);
  v12 = a3 - v9;
  if (v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v7 + v12;
  if (__OFADD__(v7, v12))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v7 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v7;
    }

    goto LABEL_14;
  }

  if (v13 > *(v6 + 24) >> 1)
  {
    if (v7 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v7;
    }

LABEL_14:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1);
  }

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, a3, a3, a4);
}

uint64_t outlined consume of __PlistReferencingEncoderXML.Reference(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined consume of _XMLPlistEncodingFormat.Reference(a1, a2, a3);
  }

  else
  {

    return outlined consume of _XMLPlistEncodingFormat.Reference(a1, a2, a3);
  }
}

uint64_t specialized __PlistReferencingEncoderXML.init(referencing:at:codingPathNode:wrapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v57 = a6;
  v58[3] = &type metadata for _CodingKey;
  v53 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v58[4] = v53;
  v17 = swift_allocObject();
  v58[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(a10 + 128) = a1;

  v18 = _CodingKey.stringValue.getter(a2, a3, a4, a5);
  *(a10 + 136) = a7;
  *(a10 + 144) = a8;
  *(a10 + 152) = a9 | 0x8000000000000000;
  *(a10 + 160) = v18;
  *(a10 + 168) = v19;
  v20 = *(a1 + 32);
  v54 = *(a1 + 24);
  v55 = a1;
  v56 = v20;
  v21 = __swift_project_boxed_opaque_existential_1(v58, &type metadata for _CodingKey);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = off_1EEEEF548;
  v28 = v21;
  v30 = v29;
  (*(off_1EEEEF548 + 2))(v26, v28, &type metadata for _CodingKey, v25);
  v31 = v27[7](v26, 0, 1, &type metadata for _CodingKey);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  (*(v23 + 16))(v26, v26, v30, v35);
  if ((v27[6])(v26, 1, &type metadata for _CodingKey) == 1)
  {
    v36 = v56;

    v37 = *(v23 + 8);
    v37(v26, v30);
    v37(v26, v30);
    v38 = v57;
    v39 = v57 >> 62;
    v40 = v57;
    if (v57 >> 62)
    {
LABEL_3:
      if (v39 != 1)
      {
        v48 = 0;
LABEL_14:
        v52 = v54;
        *(a10 + 16) = MEMORY[0x1E69E7CC0];
        *(a10 + 24) = v52;
        *(a10 + 32) = v36;
        *(a10 + 40) = v40;
        *(a10 + 56) = 0;
        *(a10 + 64) = 0;
        *(a10 + 48) = v48;
        *(a10 + 72) = 8;
        *(a10 + 80) = xmmword_18121B2B0;
        *(a10 + 96) = 8;
        *(a10 + 104) = xmmword_18121D490;
        *(a10 + 120) = 8;
        __swift_destroy_boxed_opaque_existential_1(v58);
        return a10;
      }

      v38 &= 0x3FFFFFFFFFFFFFFFuLL;
      v41 = 32;
LABEL_13:
      v48 = *(v38 + v41);
      goto LABEL_14;
    }

LABEL_12:
    v41 = 64;
    goto LABEL_13;
  }

  v42 = v27[4];
  v42(v33, v26, &type metadata for _CodingKey);
  v40 = swift_allocObject();
  v43 = v53;
  v40[5] = &type metadata for _CodingKey;
  v40[6] = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40 + 2);
  v42(boxed_opaque_existential_0, v33, &type metadata for _CodingKey);
  v36 = v56;

  result = (*(v23 + 8))(v26, v30);
  v38 = v57;
  v40[7] = v57;
  v39 = v38 >> 62;
  if (!(v38 >> 62))
  {
    v47 = 64;
    v46 = v38;
LABEL_10:
    v49 = *(v46 + v47);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (!v50)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v39 == 1)
  {
    v46 = v38 & 0x3FFFFFFFFFFFFFFFLL;
    v47 = 32;
    goto LABEL_10;
  }

  v51 = 1;
  if (!__OFSUB__(v39, 1))
  {
LABEL_11:
    v40[8] = v51;
    if (v39)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized __PlistReferencingEncoderXML.init(referencing:at:codingPathNode:wrapping:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a3;
  *&v55 = a6;
  *(&v55 + 1) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  *(a5 + 128) = a1;

  v16 = dispatch thunk of CodingKey.stringValue.getter();
  *(a5 + 136) = v13;
  *(a5 + 144) = v14;
  *(a5 + 152) = v15 | 0x8000000000000000;
  *(a5 + 160) = v16;
  *(a5 + 168) = v17;
  v18 = *(a1 + 32);
  v49 = *(a1 + 24);
  v51 = v18;
  v52 = a1;
  v48 = v55;
  v19 = v55;
  v50 = __swift_project_boxed_opaque_existential_1(v54, v55);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v24 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = *(v19 - 8);
  (*(v25 + 16))(&v48 - v24, v50, v19, v23);
  v26 = (*(v25 + 56))(&v48 - v24, 0, 1, v19);
  v27 = v20;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  (*(v21 + 16))(&v48 - v24, &v48 - v24, v20, v31);
  if ((*(v25 + 48))(&v48 - v24, 1, v19) == 1)
  {
    v32 = v51;

    v33 = *(v21 + 8);
    v33(&v48 - v24, v20);
    v33(&v48 - v24, v20);
    v34 = v53;
    v35 = v53 >> 62;
    v36 = v53;
    if (v53 >> 62)
    {
LABEL_3:
      if (v35 != 1)
      {
        v43 = 0;
LABEL_14:
        v47 = v49;
        *(a5 + 16) = MEMORY[0x1E69E7CC0];
        *(a5 + 24) = v47;
        *(a5 + 32) = v32;
        *(a5 + 40) = v36;
        *(a5 + 56) = 0;
        *(a5 + 64) = 0;
        *(a5 + 48) = v43;
        *(a5 + 72) = 8;
        *(a5 + 80) = xmmword_18121B2B0;
        *(a5 + 96) = 8;
        *(a5 + 104) = xmmword_18121D490;
        *(a5 + 120) = 8;
        __swift_destroy_boxed_opaque_existential_1(v54);
        return a5;
      }

      v34 &= 0x3FFFFFFFFFFFFFFFuLL;
      v37 = 32;
LABEL_13:
      v43 = *(v34 + v37);
      goto LABEL_14;
    }

LABEL_12:
    v37 = 64;
    goto LABEL_13;
  }

  v38 = *(v25 + 32);
  v38(v29, &v48 - v24, v19);
  v36 = swift_allocObject();
  *(v36 + 40) = v48;
  v39 = __swift_allocate_boxed_opaque_existential_0((v36 + 16));
  v38(v39, v29, v19);
  v32 = v51;

  result = (*(v21 + 8))(&v48 - v24, v27);
  v34 = v53;
  *(v36 + 56) = v53;
  v35 = v34 >> 62;
  if (!(v34 >> 62))
  {
    v42 = 64;
    v41 = v34;
LABEL_10:
    v44 = *(v41 + v42);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (!v45)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v35 == 1)
  {
    v41 = v34 & 0x3FFFFFFFFFFFFFFFLL;
    v42 = 32;
    goto LABEL_10;
  }

  v46 = 1;
  if (!__OFSUB__(v35, 1))
  {
LABEL_11:
    *(v36 + 64) = v46;
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized _XMLPlistEncodingFormat.Writer.realDescription(_:)(double a1)
{
  if (fabs(a1) == INFINITY)
  {
    if (a1 <= 0.0)
    {
      return 0x74696E69666E692DLL;
    }

    else
    {
      return 0x74696E69666E692BLL;
    }
  }

  else
  {
    v4 = Double.description.getter();

    v2._countAndFlagsBits = 12334;
    v2._object = 0xE200000000000000;
    v3 = String.hasSuffix(_:)(v2);

    if (v3)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    }

    return v4;
  }
}

unint64_t specialized ContiguousArray.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    goto LABEL_14;
  }

  if (v13 > *(v7 + 24) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

LABEL_14:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1);
  }

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 1, a3, a4, a5);
}

void partial apply for closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)(unsigned __int8 *a1, uint64_t a2)
{
  partial apply for closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)(a1, a2);
}

{
  closure #1 in closure #1 in _XMLPlistEncodingFormat.Writer.appendBase64(_:indentation:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t getEnumTagSinglePayload for _XMLPlistEncodingFormat.Writer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 32) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 32) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _XMLPlistEncodingFormat.Writer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _XMLPlistEncodingFormat.Reference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _XMLPlistEncodingFormat.Reference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t destructiveInjectEnumTag for _XMLPlistEncodingFormat.Reference(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _PlistUnkeyedEncodingContainerXML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_180A4B7E4(a1, a2, a3);
}

{
  return sub_180A4B800(a1, a2, a3);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderXML(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_180A4B81C(a1, a2, a3);
}

{
  return sub_180A4B838(a1, a2, a3);
}

void *protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistKeyedEncodingContainerXML<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_180A4B7AC(a1, a2, a3);
}

{
  return sub_180A4B7C8(a1, a2, a3);
}

void *closure #1 in XMLPlistMap.copyInBuffer()(void *result)
{
  if (!result[2])
  {
    v1 = result[1];
    v2 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    else
    {
      v3 = result;
      v4 = *result;
      result = swift_slowAlloc();
      if ((v1 & 0x8000000000000000) == 0)
      {
        v5 = result;
        result = memmove(result, v4, v1);
        *(v5 + v1) = 0;
        if ((v2 & 0x8000000000000000) == 0)
        {
          *v3 = v5;
          v3[1] = v2;
          v3[2] = v5;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t protocol witness for PlistDecodingMap.topObject.getter in conformance XMLPlistMap@<X0>(unint64_t *a1@<X8>)
{
  result = XMLPlistMap.loadValue(at:)(0);
  if ((~result & 0xF000000000000007) != 0)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v152 = a8;
  v153 = a9;
  v156 = a6;
  v157 = a5;
  v158 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v151 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v141 - v16;
  v159 = v17;
  v18 = type metadata accessor for Optional();
  v160 = *(v18 - 8);
  *&v161 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v141 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v141 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v155 = &v141 - v27;
  v28 = swift_allocObject();
  v30 = a4;
  v28[2] = a3;
  v31 = v28 + 2;
  v32 = &a1[a2];
  v28[3] = v30;
  v28[4] = a1;
  v28[5] = a1;
  v28[6] = &a1[a2];
  v162 = v28;
  if (a2 < 1)
  {
LABEL_59:
    *&v167[0] = 0;
    *(&v167[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    *&v167[0] = 0xD000000000000023;
    *(&v167[0] + 1) = 0x8000000181486750;
    v63 = *(v31 + 1);
    v169 = *v31;
    v170 = v63;
    v171 = v31[4];
    v166[0] = BufferReader.lineNumber.getter();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v64);

    v154 = *(&v167[0] + 1);
    v155 = *&v167[0];
    v65 = type metadata accessor for DecodingError();
    v177 = swift_allocError();
    v153 = v66;
    v67 = v160;
    v68 = *(v160 + 16);
    v69 = v23;
    v70 = v23;
    v71 = v161;
    v68(v70, v156, v161);
    v68(v20, v69, v71);
    v73 = v158;
    v72 = v159;
    if ((*(v158 + 48))(v20, 1, v159) == 1)
    {
      v74 = *(v67 + 8);
      v74(v20, v71);
      _CodingPathNode.path.getter(v157);
      v74(v69, v71);
    }

    else
    {
      v75 = *(v73 + 32);
      v156 = v69;
      v76 = v151;
      v75(v151, v20, v72);
      v77 = _CodingPathNode.path.getter(v157);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_181218E20;
      v79 = v152;
      *(v78 + 56) = v72;
      *(v78 + 64) = v79;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v78 + 32));
      (*(v73 + 16))(boxed_opaque_existential_0, v76, v72);
      *&v167[0] = v77;
      specialized Array.append<A>(contentsOf:)(v78);
      (*(v73 + 8))(v76, v72);
      (*(v67 + 8))(v156, v71);
    }

    v81 = v153;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v65 - 8) + 104))(v81, *MEMORY[0x1E69E6B00], v65);
    goto LABEL_63;
  }

  if (&a1[-a3] < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v29 = a3 + v30;
  if ((a3 + v30 - v32) < 0)
  {
    goto LABEL_70;
  }

  v29 = (a1 + 1);
  v33 = *a1;
  if (v33 == 45)
  {
    v28[5] = v29;
    if (a2 == 1)
    {
      goto LABEL_59;
    }

    v34 = a1 + 1;
    v29 = (a1 + 2);
  }

  else
  {
    v34 = a1;
  }

  v9 = 0;
  while (1)
  {
    if (v32 < v34)
    {
      goto LABEL_66;
    }

    if (&v34[-a3] < 0)
    {
      goto LABEL_67;
    }

    if ((v32 - v34) < 0)
    {
      goto LABEL_68;
    }

    if ((*v34 - 58) < 0xF6u)
    {
      break;
    }

    v35 = *v34 - 48;
    v36 = 10 * v9;
    v37 = (v9 * 10) >> 64 != (10 * v9) >> 63;
    v9 = 10 * v9 + v35;
    v38 = __OFADD__(v36, v35);
    v28[5] = v29;
    v39 = v29 + 1;
    if (v37 || v38)
    {
      if (v32 < v39)
      {
        goto LABEL_59;
      }

      v40 = 1;
      if (v32 < v29)
      {
        goto LABEL_65;
      }

      goto LABEL_23;
    }

    v34 = v29++;
    if (v32 < v39)
    {
      v29 = v39 - 1;
      goto LABEL_21;
    }
  }

  v29 = v34;
LABEL_21:
  v39 = v29 + 1;
  if (v32 < v29 + 1)
  {
    goto LABEL_59;
  }

  v40 = 0;
  if (v32 < v29)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_23:
  if ((v29 - a3) < 0)
  {
    goto LABEL_71;
  }

  if ((v32 - v29) < 0)
  {
    goto LABEL_72;
  }

  if (*v29 != 45)
  {
    goto LABEL_59;
  }

  v28[5] = v39;
  if (v40)
  {
    goto LABEL_59;
  }

  v148 = v33;
  v149 = v30;
  v41 = read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(v28);
  v42 = v162;
  if (v43)
  {
    goto LABEL_59;
  }

  v44 = v162[5];
  v29 = (v44 + 1);
  if (v32 < (v44 + 1))
  {
    goto LABEL_59;
  }

  if (&v44[-a3] < 0)
  {
    goto LABEL_73;
  }

  if ((v32 - v44) < 0)
  {
    goto LABEL_74;
  }

  if (*v44 != 45)
  {
    goto LABEL_59;
  }

  v162[5] = v29;
  v147 = v41;
  v45 = read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(v42);
  v46 = v162;
  if (v47)
  {
    goto LABEL_59;
  }

  v48 = v162[5];
  v29 = (v48 + 1);
  if (v32 < (v48 + 1))
  {
    goto LABEL_59;
  }

  if (&v48[-a3] < 0)
  {
    goto LABEL_75;
  }

  if ((v32 - v48) < 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    if (((&v142[-a3] | v29) & 0x8000000000000000) == 0)
    {
      v83 = *v142;
      v84 = *v142;
      *&v167[0] = 0;
      *(&v167[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181484E10);
      v85 = ((v84 >> 6) & 0xFFFFC0FF | ((v84 & 0x3F) << 8)) + 33217;
      if (v83 >= 0)
      {
        v85 = v84 + 1;
      }

      v166[0] = (v85 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v85) >> 3))));
      static String._uncheckedFromUTF8(_:)();
      Character.write<A>(to:)();

      MEMORY[0x1865CB0E0](0x656E696C20746120, 0xE900000000000020);
      v172 = a3;
      v173 = v149;
      v174 = a1;
      v175 = v142;
      v176 = v32;
      v166[0] = BufferReader.lineNumber.getter();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v86);

      MEMORY[0x1865CB0E0](0xD000000000000013, 0x8000000181486780);
      v151 = *(&v167[0] + 1);
      v153 = *&v167[0];
      v20 = type metadata accessor for DecodingError();
      v177 = swift_allocError();
      v32 = v87;
      v88 = v161;
      v89 = *(v160 + 16);
      v90 = v155;
      v89(v155, v156, v161);
      v91 = v154;
      v89(v154, v90, v88);
      if ((*(v158 + 48))(v91, 1, v159) == 1)
      {
        v92 = v161;
        v93 = *(v160 + 8);
        v93(v154, v161);
        _CodingPathNode.path.getter(v157);
        v93(v155, v92);
LABEL_91:
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v20 - 1) + 104))(v32, *MEMORY[0x1E69E6B00], v20);
LABEL_63:
        swift_willThrow();
      }

LABEL_90:
      v107 = v158;
      v106 = v159;
      v108 = v150;
      (*(v158 + 32))(v150, v154, v159);
      v109 = _CodingPathNode.path.getter(v157);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_181218E20;
      v111 = v152;
      *(v110 + 56) = v106;
      *(v110 + 64) = v111;
      v112 = __swift_allocate_boxed_opaque_existential_0((v110 + 32));
      (*(v107 + 16))(v112, v108, v106);
      *&v167[0] = v109;
      specialized Array.append<A>(contentsOf:)(v110);
      (*(v107 + 8))(v108, v106);
      (*(v160 + 8))(v155, v161);
      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_104;
  }

  if (*v48 != 84)
  {
    goto LABEL_59;
  }

  v162[5] = v29;
  v49 = v45;
  v50 = read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(v46);
  v51 = v162;
  if (v52)
  {
    goto LABEL_59;
  }

  v53 = v162[5];
  if (v32 < (v53 + 1))
  {
    goto LABEL_59;
  }

  if (&v53[-a3] < 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  if ((v32 - v53) < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (*v53 != 58)
  {
    goto LABEL_59;
  }

  v162[5] = v53 + 1;
  v146 = v50;
  v145 = read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(v51);
  if (v54)
  {
    goto LABEL_59;
  }

  v55 = v162[5];
  if (v32 < (v55 + 1))
  {
    goto LABEL_59;
  }

  v144 = v49;
  if (&v55[-a3] < 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if ((v32 - v55) < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v56 = v162;
  if (*v55 != 58)
  {
    goto LABEL_59;
  }

  v162[5] = v55 + 1;
  v143 = read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(v56);
  if (v57)
  {
    goto LABEL_59;
  }

  v58 = v162[5];
  v142 = v58 + 1;
  v29 = v32 - (v58 + 1);
  if (v32 < (v58 + 1))
  {
    goto LABEL_59;
  }

  if (&v58[-a3] < 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if ((v32 - v58) < 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (*v58 != 90)
  {
    goto LABEL_59;
  }

  v162[5] = v142;
  if (v32 >= (v58 + 2))
  {
    goto LABEL_77;
  }

  if (one-time initialization token for cache != -1)
  {
LABEL_102:
    swift_once();
  }

  v32 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v59 = *(v32 + 16);
  if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v61 & 1) != 0))
  {
    v161 = *(*(v59 + 56) + 16 * v60);
    v62 = v161;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v32 + 24));
    if (v62)
    {
      goto LABEL_124;
    }
  }

  else
  {
    os_unfair_lock_unlock((v32 + 24));
  }

  v20 = type metadata accessor for _CalendarGregorian();
  v94 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  LOBYTE(v164) = 7;
  v167[0] = 0uLL;
  v166[0] = 0;
  v166[1] = 0;
  v163[0] = 0;
  LOBYTE(v163[1]) = 1;
  *&v161 = v94;
  v23 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v164, v167, v166, 0, 1, 0, 1, v163);
  os_unfair_lock_lock((v32 + 24));
  v95 = *(v32 + 16);
  if (!*(v95 + 16) || (v96 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v97 & 1) == 0))
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v167[0] = *(v32 + 16);
    a3 = *&v167[0];
    v160 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    v101 = *(a3 + 16);
    v102 = (v100 & 1) == 0;
    v103 = v101 + v102;
    if (!__OFADD__(v101, v102))
    {
      LOBYTE(v31) = v100;
      if (*(a3 + 24) < v103)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v103, isUniquelyReferenced_nonNull_native);
        v104 = *&v167[0];
        v160 = specialized __RawDictionaryStorage.find<A>(_:)(7);
        if ((v31 & 1) != (v105 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_90;
        }

LABEL_94:
        if (v31)
        {
LABEL_95:
          v113 = v161;
          v114 = (*(v104 + 56) + 16 * v160);
          *v114 = v23;
          v114[1] = v113;
          swift_unknownObjectRelease();
LABEL_122:
          *(v32 + 16) = v104;
          *&v98 = v23;
          *(&v98 + 1) = v161;
          goto LABEL_123;
        }

LABEL_121:
        specialized _NativeDictionary._insert(at:key:value:)(v160, 7, v23, v104, v20, v161);
        goto LABEL_122;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v104 = a3;
        goto LABEL_94;
      }

LABEL_105:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
      v115 = static _DictionaryStorage.copy(original:)();
      v104 = v115;
      if (*(a3 + 16))
      {
        result = (v115 + 64);
        v116 = 1 << *(v104 + 32);
        v159 = (a3 + 64);
        v117 = (v116 + 63) >> 6;
        if (v104 != a3 || result >= &v159[8 * v117])
        {
          result = memmove(result, v159, 8 * v117);
        }

        v118 = 0;
        *(v104 + 16) = *(a3 + 16);
        v119 = 1 << *(a3 + 32);
        v120 = -1;
        if (v119 < 64)
        {
          v120 = ~(-1 << v119);
        }

        v158 = v120 & *(a3 + 64);
        for (i = (v119 + 63) >> 6; v158; result = swift_unknownObjectRetain())
        {
          v122 = __clz(__rbit64(v158));
          v158 &= v158 - 1;
LABEL_118:
          v125 = v122 | (v118 << 6);
          v126 = *(*(a3 + 56) + 16 * v125);
          *(*(v104 + 48) + v125) = *(*(a3 + 48) + v125);
          *(*(v104 + 56) + 16 * v125) = v126;
        }

        v123 = v118;
        while (1)
        {
          v118 = v123 + 1;
          if (__OFADD__(v123, 1))
          {
            goto LABEL_160;
          }

          if (v118 >= i)
          {
            break;
          }

          v124 = *&v159[8 * v118];
          ++v123;
          if (v124)
          {
            v122 = __clz(__rbit64(v124));
            v158 = (v124 - 1) & v124;
            goto LABEL_118;
          }
        }
      }

      if (v31)
      {
        goto LABEL_95;
      }

      goto LABEL_121;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v98 = *(*(v95 + 56) + 16 * v96);
LABEL_123:
  v161 = v98;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v32 + 24));

LABEL_124:
  v168 = v161;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v167[0] = xmmword_1ED440468;
  swift_unknownObjectRetain();
  Calendar.timeZone.setter(v167);
  BYTE8(v167[2]) = 1;
  *&v167[3] = 0;
  BYTE8(v167[3]) = 1;
  *&v167[4] = 0;
  BYTE8(v167[4]) = 1;
  *&v167[5] = 0;
  BYTE8(v167[5]) = 1;
  *&v167[6] = 0;
  BYTE8(v167[6]) = 1;
  *&v167[7] = 0;
  BYTE8(v167[7]) = 1;
  *&v167[8] = 0;
  BYTE8(v167[8]) = 1;
  *&v167[9] = 0;
  BYTE8(v167[9]) = 1;
  *&v167[10] = 0;
  BYTE8(v167[10]) = 1;
  *&v167[11] = 0;
  BYTE8(v167[11]) = 1;
  *&v167[12] = 0;
  BYTE8(v167[12]) = 1;
  *&v167[13] = 0;
  BYTE8(v167[13]) = 1;
  *&v167[14] = 0;
  BYTE8(v167[14]) = 1;
  *&v167[15] = 0;
  BYTE8(v167[15]) = 1;
  BYTE8(v167[16]) = 1;
  *&v167[16] = 0;
  *&v167[17] = 0;
  BYTE8(v167[17]) = 1;
  *(&v167[17] + 9) = 514;
  memset(v167, 0, 40);
  v166[0] = 0;
  v166[1] = 0;
  DateComponents.timeZone.setter(v166);
  *&v167[2] = 0;
  BYTE8(v167[2]) = 1;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v127 = 0;
  }

  else
  {
    v127 = v9;
  }

  *&v167[3] = v127;
  BYTE8(v167[3]) = v9 == 0x7FFFFFFFFFFFFFFFLL;
  v128 = v147;
  if (v147 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v128 = 0;
  }

  *&v167[4] = v128;
  BYTE8(v167[4]) = v147 == 0x7FFFFFFFFFFFFFFFLL;
  v129 = v144;
  if (v144 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v129 = 0;
  }

  *&v167[5] = v129;
  BYTE8(v167[5]) = v144 == 0x7FFFFFFFFFFFFFFFLL;
  v130 = v146;
  if (v146 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v130 = 0;
  }

  *&v167[7] = v130;
  BYTE8(v167[7]) = v146 == 0x7FFFFFFFFFFFFFFFLL;
  v131 = v145;
  if (v145 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v131 = 0;
  }

  *&v167[8] = v131;
  BYTE8(v167[8]) = v145 == 0x7FFFFFFFFFFFFFFFLL;
  v132 = v143;
  if (v143 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v132 = 0;
  }

  *&v167[9] = v132;
  BYTE8(v167[9]) = v143 == 0x7FFFFFFFFFFFFFFFLL;
  *&v167[10] = 0;
  BYTE8(v167[10]) = 1;
  *&v167[11] = 0;
  BYTE8(v167[11]) = 1;
  *&v167[12] = 0;
  BYTE8(v167[12]) = 1;
  *&v167[13] = 0;
  BYTE8(v167[13]) = 1;
  *&v167[15] = 0;
  BYTE8(v167[15]) = 1;
  BYTE8(v167[16]) = 1;
  *&v167[16] = 0;
  *&v167[17] = 0;
  BYTE8(v167[17]) = 1;
  *&v167[6] = 0;
  BYTE8(v167[6]) = 1;
  memcpy(v166, v167, 0x11BuLL);
  v133 = *(&v168 + 1);
  ObjectType = swift_getObjectType();
  memcpy(v163, v167, 0x11BuLL);
  v135 = *(v133 + 176);
  swift_unknownObjectRetain();
  v135(&v164, v163, ObjectType, v133);
  swift_unknownObjectRelease();
  outlined destroy of DateComponents(v166);
  result = swift_unknownObjectRelease();
  if ((v165 & 1) == 0)
  {
    v140 = v164;

    *v153 = v140;
    return result;
  }

  if (v148 == 45)
  {
    v136 = __OFSUB__(0, v9);
    v9 = -v9;
    if (v136)
    {
      goto LABEL_159;
    }
  }

  if (v147 > 127)
  {
    __break(1u);
    goto LABEL_154;
  }

  if (v144 > 127)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v146 > 127)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v147 < -128 || v144 < -128 || v146 < -128 || v145 < -128)
  {
    goto LABEL_156;
  }

  if (v145 <= 127)
  {
    result = (v9 - 2001);
    if (!__OFSUB__(v9, 2001))
    {
      v137 = v143;
      specialized static Date.daysSinceReferenceDate(year:month:day:)(result, v147, v144);
      v139 = v138;

      *v153 = v146 * 3600.0 + v145 * 60.0 + v137 + v139 * 86400.0;
      return result;
    }

    goto LABEL_158;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

void *read2DigitNumber #1 <A>() in closure #1 in XMLPlistMap.Value.dateValue<A>(in:for:_:)(void *result)
{
  v1 = result[5];
  v2 = result[6];
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = result[2];
  if (&v1[-v4] < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v2 - v1) < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v4 + result[3] - v2) < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v5 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    return 0;
  }

  result = 0;
  v6 = *v1;
  v7 = v1[1];
  v3[5] = v5;
  if ((v6 - 58) >= 0xF6u && (v7 - 58) >= 0xF6u)
  {
    return (((10 * v6 + 32) & 0xFE) + (v7 - 48));
  }

  return result;
}

uint64_t XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(unsigned __int8 a1, uint64_t a2)
{
  result = XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(a2);
  v5 = *(*v2 + 16);
  v6 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18121D6C0;
    *(inited + 32) = a1;
    *(inited + 40) = v6;
    *(inited + 48) = xmmword_181249E60;
    return specialized Array.append<A>(contentsOf:)(inited);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.skipXMLComment()()
{
  v1 = v0[3];
  v2 = v0[4] - 3;
  if (v2 < v1)
  {
LABEL_11:
    _StringGuts.grow(_:)(39);

    BufferReader.lineNumber.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v7);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v8 = 0xD000000000000025;
    *(v8 + 8) = 0x80000001814862E0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 5;
    swift_willThrow();
  }

  else
  {
    v3 = *v0 + v0[1];
    v4 = v3 - v1;
    v5 = v1 - *v0;
    while (v3 >= v1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v4 < 0)
      {
        goto LABEL_16;
      }

      if (*v1 == 11565 && *(v1 + 2) == 62)
      {
        v0[3] = v1 + 3;
        return;
      }

      ++v1;
      --v4;
      ++v5;
      if (v2 < v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance XMLPlistError(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return specialized static XMLPlistError.== infix(_:_:)(v5, v7) & 1;
}

uint64_t specialized static XMLPlistError.== infix(_:_:)(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 <= 2)
  {
    if (!*(a1 + 32))
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v8 = a2->i64[1];
      if (v4)
      {
        if (v8)
        {
          if (v3 != a2->i64[0] || v4 != v8)
          {
LABEL_31:
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }

      return !v8;
    }

    if (v5 != 1)
    {
      if (a2[2].i8[0] != 2)
      {
        return 0;
      }

      return a2->u8[0] == v3 && v4 == a2->i64[1];
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    return v3 == a2->i64[0];
  }

  if (*(a1 + 32) <= 4u)
  {
    if (v5 == 3)
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

      if (a2->u8[0] != v3 || v4 != a2->i64[1])
      {
        return 0;
      }

      v7 = a1[3];
      v8 = a2[1].i64[1];
      if (v7)
      {
        if (v8)
        {
          if (a1[2] != a2[1].i64[0] || v7 != v8)
          {
            goto LABEL_31;
          }

          return 1;
        }

        return 0;
      }

      return !v8;
    }

    if (a2[2].i8[0] != 4)
    {
      return 0;
    }

    return v3 == a2->i64[0];
  }

  if (v5 != 5)
  {
    if (a2[2].i8[0] != 6)
    {
      return 0;
    }

    v11 = vorrq_s8(*a2, a2[1]);
    return !*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  }

  if (a2[2].i8[0] != 5)
  {
    return 0;
  }

  if (v3 == a2->i64[0] && v4 == a2->i64[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *specialized static XMLPlistScanner.parseCDSect_pl(reader:string:)(void *result, uint64_t a2)
{
  v2 = result[3];
  v3 = result[4];
  v4 = v2 + 9;
  if (v3 < v2 + 9)
  {
    goto LABEL_21;
  }

  v5 = *result;
  v6 = result[1];
  v7 = *result + v6;
  if (v7 < v2)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v2 - v5) < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v7 - v2) < 0)
  {
    goto LABEL_35;
  }

  if (*v2 != 0x41544144435B213CLL || *(v2 + 8) != 91)
  {
    _StringGuts.grow(_:)(45);

    BufferReader.lineNumber.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v9);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v10 = 0xD00000000000002BLL;
    *(v10 + 8) = 0x8000000181486140;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 5;
    return swift_willThrow();
  }

  result[3] = v4;
  if (v4 >= v3 - 2)
  {
LABEL_20:
    result[3] = v4;
LABEL_21:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    return swift_willThrow();
  }

  v11 = 0;
  v12 = v6 + v5 - v2 - 9;
  while (1)
  {
    v13 = (v2 + v11 + 9);
    if (v7 < v13)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if ((v2 - v5 + 9 + v11) < 0)
    {
      goto LABEL_31;
    }

    if (v12 < 0)
    {
      goto LABEL_32;
    }

    if (*v13 == 23901 && *(v2 + v11 + 11) == 62)
    {
      break;
    }

    result[3] = v2 + v11++ + 10;
    --v12;
    if (v3 - v2 - 11 == v11)
    {
      goto LABEL_20;
    }
  }

  if (!*(a2 + 8))
  {
LABEL_28:
    result[3] = v2 + v11 + 12;
    return result;
  }

  if (v11 >= 0xFFFFFFFFFFFFFFF7)
  {
    goto LABEL_36;
  }

  if ((v4 - v5) >= 0)
  {
    v16 = result;
    v17 = static String._tryFromUTF8(_:)();
    if (v18)
    {
      MEMORY[0x1865CB0E0](v17);

      result = v16;
      goto LABEL_28;
    }

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 6;
    return swift_willThrow();
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t *specialized static XMLPlistScanner.parseNumericEntityReference(reader:string:)(uint64_t *result)
{
  v1 = *result;
  v3 = result[3];
  v2 = result[4];
  v4 = v3 + 1;
  if (v2 < (v3 + 1))
  {
    goto LABEL_9;
  }

  if (&v3[-v1] < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ((v2 - v3) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v1 + result[1] - v2) >= 0)
  {
    if (*v3 == 120)
    {
      result[3] = v4;
      v5 = 1;
      ++v3;
      if (v2 == v4)
      {
LABEL_7:
        v6 = 0;
LABEL_8:
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v7 = 0u;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0;
LABEL_32:
        swift_willThrow();
        return v6;
      }

LABEL_10:
      v6 = 0;
      v8 = 8;
      v9 = v3;
      while (1)
      {
        v13 = *v9++;
        v12 = v13;
        result[3] = v9;
        if (v13 == 59)
        {
          break;
        }

        if (!v8)
        {
          _StringGuts.grow(_:)(116);
          MEMORY[0x1865CB0E0](0xD000000000000031, 0x80000001814864F0);
          BufferReader.lineNumber.getter();
          v17 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v17);

          v15 = "sequence at line ";
          v16 = 0xD000000000000041;
          goto LABEL_27;
        }

        v10 = 16 * v6;
        if ((v12 - 58) >= 0xF6u)
        {
          if (!v5)
          {
            v10 = 10 * v6;
          }

          v11 = -48;
        }

        else
        {
          if ((v5 & 1) == 0)
          {
            v20 = BufferReader.lineNumber.getter();
            v21 = 0x80000001814864A0;
            lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
            swift_allocError();
            *v18 = v12;
            *(v18 + 8) = v20;
            v22 = 0xD00000000000001CLL;
            goto LABEL_30;
          }

          if ((v12 - 71) > 0xF9u)
          {
            v11 = -55;
          }

          else
          {
            if ((v12 - 103) <= 0xF9u)
            {
              v23 = BufferReader.lineNumber.getter();
              v21 = 0x80000001814864C0;
              lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
              swift_allocError();
              *v18 = v12;
              *(v18 + 8) = v23;
              v22 = 0xD000000000000020;
LABEL_30:
              *(v18 + 16) = v22;
              *(v18 + 24) = v21;
              v19 = 3;
LABEL_31:
              *(v18 + 32) = v19;
              goto LABEL_32;
            }

            v11 = -87;
          }
        }

        v6 = v10 + (v12 + v11);
        --v8;
        if (v9 == v2)
        {
          goto LABEL_8;
        }
      }

      if (WORD1(v6) > 0x10u || (v6 & 0xFFFFF800) == 0xD800)
      {
        _StringGuts.grow(_:)(110);
        MEMORY[0x1865CB0E0](0xD000000000000031, 0x80000001814864F0);
        BufferReader.lineNumber.getter();
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v14);

        v15 = "Unicode sequence)";
        v16 = 0xD00000000000003BLL;
LABEL_27:
        MEMORY[0x1865CB0E0](v16, v15 | 0x8000000000000000);
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v18 = 0;
        *(v18 + 8) = 0xE000000000000000;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        v19 = 5;
        goto LABEL_31;
      }

      return v6;
    }

LABEL_9:
    v5 = 0;
    if (v2 == v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t *specialized static XMLPlistScanner.parseEntityReference(reader:string:)(uint64_t *result, void *a2)
{
  v4 = result[3];
  v3 = result[4];
  v5 = v4 + 1;
  result[3] = (v4 + 1);
  v6 = v3 - (v4 + 1);
  if (v6 < 1)
  {
    goto LABEL_15;
  }

  v8 = *result;
  v7 = result[1];
  v9 = v4 + 2;
  if (v3 < (v4 + 2))
  {
LABEL_3:
    v10 = BufferReader.lineNumber.getter();
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 4;
    return swift_willThrow();
  }

  if (&v5[-v8] < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v12 = v8 + v7;
  if ((v8 + v7 - v3) < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v13 = *v5;
  if (v13 > 0x66)
  {
    if (v13 == 103)
    {
LABEL_10:
      v14 = v4 + 4;
      if (v3 < (v4 + 4) || v4[2] != 116 || v4[3] != 59)
      {
        goto LABEL_3;
      }

      goto LABEL_42;
    }

    if (v13 != 113)
    {
      if (v13 != 108)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    if (v6 < 5)
    {
      goto LABEL_3;
    }

    if (v12 >= v9)
    {
      if (v9 - v8 >= 0)
      {
        if ((v12 - v9) >= 0)
        {
          if (*v9 != 997486453)
          {
            goto LABEL_3;
          }

          v14 = v4 + 6;
          goto LABEL_42;
        }

        goto LABEL_51;
      }

      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (v13 != 35)
  {
    if (v13 != 97)
    {
      goto LABEL_3;
    }

    if (v6 >= 4)
    {
      if (v12 >= v9)
      {
        if (v9 - v8 >= 0)
        {
          if ((v12 - v9) >= 0)
          {
            if (*v9 == 28781 && v4[4] == 59)
            {
              v14 = v4 + 5;
            }

            else
            {
              if (v6 == 4 || *v9 != 997420912)
              {
                goto LABEL_3;
              }

              v14 = v4 + 6;
            }

LABEL_42:
            result[3] = v14;
            goto LABEL_43;
          }

LABEL_52:
          __break(1u);
          return result;
        }

        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_15:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0;
    return swift_willThrow();
  }

  result[3] = v9;
  v16 = a2;
  result = specialized static XMLPlistScanner.parseNumericEntityReference(reader:string:)(result);
  if (v2)
  {
    return result;
  }

  a2 = v16;
LABEL_43:
  if (a2[1])
  {
    v19 = *a2;
    v20 = a2[1];
    v18 = a2;
    result = String.UnicodeScalarView.append(_:)();
    *v18 = v19;
    v18[1] = v20;
  }

  return result;
}