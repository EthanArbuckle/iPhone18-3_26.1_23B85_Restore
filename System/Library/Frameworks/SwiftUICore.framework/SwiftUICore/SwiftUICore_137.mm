uint64_t one-time initialization function for shortCaption2()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001ELL, 0x800000018DD7E130);
  static Font.PrivateTextStyle.shortCaption2 = result;
  return result;
}

uint64_t static Font.PrivateTextStyle.== infix(_:_:)()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t Font.PrivateTextStyle.hash(into:)()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return _CFObject.hash(into:)();
}

Swift::Int Font.PrivateTextStyle.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.PrivateTextStyle()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.PrivateTextStyle()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.PrivateTextStyle()
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Font.PrivateTextStyle()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t Font.TextStyleProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      if (v2 != 4)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v2);
        if (!v4)
        {
          goto LABEL_14;
        }

LABEL_19:
        Hasher._combine(_:)(0);
        return Hasher._finalize()();
      }

      Hasher._combine(_:)(0);
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_14:
      Hasher._combine(_:)(1u);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x193AC11E0](v5);
      return Hasher._finalize()();
  }
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Font.TextStyleProvider()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      if (v2 != 4)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v2);
        if (!v4)
        {
          goto LABEL_14;
        }

LABEL_19:
        Hasher._combine(_:)(0);
        return Hasher._finalize()();
      }

      Hasher._combine(_:)(0);
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_14:
      Hasher._combine(_:)(1u);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x193AC11E0](v5);
      return Hasher._finalize()();
  }
}

void Font.PrivateTextStyleProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    _CFObject.hash(into:)();
    if (a5)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x193AC11E0](v8);
}

Swift::Int Font.PrivateTextStyleProvider.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    _CFObject.hash(into:)();
    if (a4)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x193AC11E0](v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.PrivateTextStyleProvider(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v11 = *(a1 + 3);
  v12 = a1[5];
  v10[0] = v7;
  v10[1] = v6;
  v10[2] = v8;
  return (*(v8 + 40))(v3, v2, v4, v5, v10);
}

uint64_t protocol witness for FontProvider.resolveTraits(in:) in conformance Font.PrivateTextStyleProvider(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v11 = *(a1 + 3);
  v12 = a1[5];
  v10[0] = v7;
  v10[1] = v6;
  v10[2] = v8;
  return (*(v8 + 48))(v3, v2, v4, v5, v10);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.PrivateTextStyleProvider()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    _CFObject.hash(into:)();
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x193AC11E0](v4);
  return Hasher._finalize()();
}

uint64_t Font.TextStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.Caption2CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys, &unk_1F0092CB8, MEMORY[0x1E69E6F58]);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v59 - v6;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.CaptionCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys, &unk_1F0092C98, v4);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v59 - v8;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.FootnoteCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys, &unk_1F0092C78, v4);
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v59 - v10;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.CalloutCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys, &unk_1F0092C58, v4);
  v73 = v11;
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v59 - v12;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.BodyCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys, &unk_1F0092C38, v4);
  v70 = v13;
  v69 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v59 - v14;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.SubheadlineCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys, &unk_1F0092C18, v4);
  v67 = v15;
  v66 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v59 - v16;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.HeadlineCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys, &unk_1F0092BF8, v4);
  v64 = v17;
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v59 - v18;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.Title3CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys, &unk_1F0092BD8, v4);
  v62 = v19;
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v59 - v20;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.Title2CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys, &unk_1F0092BB8, v4);
  v59 = v21;
  v86 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v59 - v22;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.TitleCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys, &unk_1F0092B98, v4);
  v60 = v23;
  v84 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.LargeTitleCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys, &unk_1F0092B78, v4);
  v27 = v26;
  v83 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.TextStyle.CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys, &unk_1F0092B58, v4);
  v31 = *(v30 - 8);
  v90 = v30;
  v91 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v59 - v32;
  v34 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys();
  v89 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v34 <= 4)
  {
    v41 = v29;
    v82 = v27;
    v43 = v83;
    v42 = v84;
    v45 = v85;
    v44 = v86;
    v47 = v87;
    v46 = v88;
    if (v34 <= 1)
    {
      if (v34)
      {
        v93 = 1;
        lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys();
        v54 = v89;
        v55 = v90;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v42 + 8))(v25, v60);
      }

      else
      {
        v92 = 0;
        lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys();
        v54 = v89;
        v55 = v90;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v43 + 8))(v41, v82);
      }
    }

    else
    {
      if (v34 != 2)
      {
        if (v34 == 3)
        {
          v95 = 3;
          lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys();
          v48 = v89;
          v49 = v90;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v61 + 8))(v47, v62);
          return (*(v91 + 8))(v48, v49);
        }

        v96 = 4;
        lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys();
        v57 = v46;
        v37 = v89;
        v36 = v90;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v63 + 8))(v57, v64);
        return (*(v91 + 8))(v37, v36);
      }

      v94 = 2;
      lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys();
      v54 = v89;
      v55 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v44 + 8))(v45, v59);
    }

    return (*(v91 + 8))(v54, v55);
  }

  if (v34 <= 7)
  {
    if (v34 == 5)
    {
      v97 = 5;
      lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys();
      v56 = v65;
      v37 = v89;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = *(v66 + 8);
      v39 = v56;
      v40 = &v103;
    }

    else
    {
      if (v34 != 6)
      {
        v99 = 7;
        lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys();
        v58 = v71;
        v37 = v89;
        v36 = v90;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v72 + 8))(v58, v73);
        return (*(v91 + 8))(v37, v36);
      }

      v98 = 6;
      lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys();
      v35 = v68;
      v37 = v89;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = *(v69 + 8);
      v39 = v35;
      v40 = &v104;
    }

    v52 = *(v40 - 32);
LABEL_26:
    v38(v39, v52);
    return (*(v91 + 8))(v37, v36);
  }

  switch(v34)
  {
    case 8:
      v100 = 8;
      lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys();
      v51 = v74;
      v37 = v89;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v75;
      v52 = v76;
      goto LABEL_25;
    case 9:
      v101 = 9;
      lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys();
      v51 = v77;
      v37 = v89;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v78;
      v52 = v79;
LABEL_25:
      v38 = *(v53 + 8);
      v39 = v51;
      goto LABEL_26;
    case 10:
      v102 = 10;
      lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys();
      v51 = v80;
      v37 = v89;
      v36 = v90;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v53 = v81;
      v52 = v82;
      goto LABEL_25;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t Font.TextStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.Caption2CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys, &unk_1F0092CB8, MEMORY[0x1E69E6F48]);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v61 - v5;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.CaptionCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys, &unk_1F0092C98, v3);
  v81 = v6;
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v61 - v7;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.FootnoteCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys, &unk_1F0092C78, v3);
  v79 = v8;
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v61 - v9;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.CalloutCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys, &unk_1F0092C58, v3);
  v77 = v10;
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v61 - v11;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.BodyCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys, &unk_1F0092C38, v3);
  v75 = v12;
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v61 - v13;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.SubheadlineCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys, &unk_1F0092C18, v3);
  v73 = v14;
  v72 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v61 - v15;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.HeadlineCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys, &unk_1F0092BF8, v3);
  v71 = v16;
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v61 - v17;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.Title3CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys, &unk_1F0092BD8, v3);
  v68 = v18;
  v69 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v61 - v19;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.Title2CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys, &unk_1F0092BB8, v3);
  v67 = v20;
  v66 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v61 - v21;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.TitleCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys, &unk_1F0092B98, v3);
  v65 = v22;
  v64 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v61 - v23;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.LargeTitleCodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys, &unk_1F0092B78, v3);
  v25 = v24;
  v63 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v61 - v26;
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.TextStyle.CodingKeys>, lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys, &unk_1F0092B58, v3);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = a1[3];
  v97 = a1;
  v32 = a1;
  v34 = &v61 - v33;
  __swift_project_boxed_opaque_existential_1(v32, v31);
  lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys();
  v95 = v34;
  v35 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {
LABEL_7:
    v52 = v97;
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v96 = v27;
  v62 = v25;
  v36 = v90;
  v37 = v91;
  v38 = v92;
  v39 = v93;
  v40 = v94;
  v41 = KeyedDecodingContainer.allKeys.getter();
  v42 = (2 * *(v41 + 16)) | 1;
  v98 = v41;
  v99 = v41 + 32;
  v100 = 0;
  v101 = v42;
  v43 = specialized Collection<>.popFirst()();
  if (v100 != v101 >> 1)
  {
LABEL_5:
    v50 = type metadata accessor for DecodingError();
    v45 = v95;
    v46 = v50;
    swift_allocError();
    v48 = v51;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v48 = &type metadata for Font.TextStyle;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v49 = MEMORY[0x1E69E6AF8];
LABEL_6:
    (*(*(v46 - 8) + 104))(v48, *v49, v46);
    swift_willThrow();
    (*(v30 + 8))(v45, v29);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  switch(v43)
  {
    case 0:
      v61 = v43;
      v102 = 0;
      lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys();
      v56 = v96;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v56, v62);
      break;
    case 1:
      v61 = v43;
      v102 = 1;
      lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys();
      v57 = v84;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v64 + 8))(v57, v65);
      break;
    case 2:
      v61 = v43;
      v102 = 2;
      lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v66 + 8))(v36, v67);
      break;
    case 3:
      v61 = v43;
      v102 = 3;
      lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v69 + 8))(v37, v68);
      break;
    case 4:
      v61 = v43;
      v102 = 4;
      lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v70 + 8))(v38, v71);
      break;
    case 5:
      v61 = v43;
      v102 = 5;
      lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys();
      v58 = v85;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v72 + 8))(v58, v73);
      break;
    case 6:
      v61 = v43;
      v102 = 6;
      lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys();
      v59 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v74 + 8))(v59, v75);
      break;
    case 7:
      v61 = v43;
      v102 = 7;
      lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys();
      v55 = v87;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v76 + 8))(v55, v77);
      break;
    case 8:
      v61 = v43;
      v102 = 8;
      lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys();
      v60 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v78 + 8))(v60, v79);
      break;
    case 9:
      v61 = v43;
      v102 = 9;
      lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys();
      v54 = v89;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v80 + 8))(v54, v81);
      break;
    case 10:
      v61 = v43;
      v102 = 10;
      lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v82 + 8))(v39, v83);
      break;
    case 11:
    case 12:
    case 13:
      v44 = type metadata accessor for DecodingError();
      v45 = v95;
      v46 = v44;
      swift_allocError();
      v48 = v47;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v49 = MEMORY[0x1E69E6B00];
      goto LABEL_6;
    default:
      goto LABEL_5;
  }

  (*(v30 + 8))(v95, v29);
  swift_unknownObjectRelease();
  v52 = v97;
  *v40 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

SwiftUI::DynamicTypeSize_optional __swiftcall DynamicTypeSize.init(_:)(CFStringRef a1)
{
  v3 = v1;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  v4 = a1;
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {

    v7 = 0;
  }

  else
  {
    v8 = v4;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {

      v7 = 1;
    }

    else
    {
      v10 = v8;
      v11 = static _CFObject.== infix(_:_:)();

      if (v11)
      {

        v7 = 2;
      }

      else
      {
        v12 = v10;
        v13 = static _CFObject.== infix(_:_:)();

        if (v13)
        {

          v7 = 3;
        }

        else
        {
          v14 = v12;
          v15 = static _CFObject.== infix(_:_:)();

          if (v15)
          {

            v7 = 4;
          }

          else
          {
            v16 = v14;
            v17 = static _CFObject.== infix(_:_:)();

            if (v17)
            {

              v7 = 5;
            }

            else
            {
              v18 = v16;
              v19 = static _CFObject.== infix(_:_:)();

              if (v19)
              {

                v7 = 6;
              }

              else
              {
                v20 = v18;
                v21 = static _CFObject.== infix(_:_:)();

                if (v21)
                {

                  v7 = 7;
                }

                else
                {
                  v22 = v20;
                  v23 = static _CFObject.== infix(_:_:)();

                  if (v23)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v24 = v22;
                    v25 = static _CFObject.== infix(_:_:)();

                    if (v25)
                    {

                      v7 = 9;
                    }

                    else
                    {
                      v26 = v24;
                      v27 = static _CFObject.== infix(_:_:)();

                      if (v27)
                      {

                        v7 = 10;
                      }

                      else
                      {
                        v28 = static _CFObject.== infix(_:_:)();

                        if (v28)
                        {
                          v7 = 11;
                        }

                        else
                        {
                          v7 = 12;
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

  *v3 = v7;
  return result;
}

uint64_t specialized static Font.PrivateTextStyleProvider.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v14 = a6;
    v15 = static _CFObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || *&a3 != *&a7)
    {
      return 0;
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Caption2CodingKeys and conformance Font.TextStyle.Caption2CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CaptionCodingKeys and conformance Font.TextStyle.CaptionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.FootnoteCodingKeys and conformance Font.TextStyle.FootnoteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CalloutCodingKeys and conformance Font.TextStyle.CalloutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.BodyCodingKeys and conformance Font.TextStyle.BodyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.SubheadlineCodingKeys and conformance Font.TextStyle.SubheadlineCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.HeadlineCodingKeys and conformance Font.TextStyle.HeadlineCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title3CodingKeys and conformance Font.TextStyle.Title3CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.Title2CodingKeys and conformance Font.TextStyle.Title2CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.TitleCodingKeys and conformance Font.TextStyle.TitleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.LargeTitleCodingKeys and conformance Font.TextStyle.LargeTitleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle.CodingKeys and conformance Font.TextStyle.CodingKeys);
  }

  return result;
}

void type metadata accessor for [Font.TextStyle]()
{
  if (!lazy cache variable for type metadata for [Font.TextStyle])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Font.TextStyle]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.PrivateTextStyle and conformance Font.PrivateTextStyle()
{
  result = lazy protocol witness table cache variable for type Font.PrivateTextStyle and conformance Font.PrivateTextStyle;
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyle and conformance Font.PrivateTextStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateTextStyle and conformance Font.PrivateTextStyle);
  }

  return result;
}

uint64_t initializeWithCopy for Font.PrivateTextStyleProvider(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for Font.PrivateTextStyleProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v10;
  return a1;
}

uint64_t assignWithTake for Font.PrivateTextStyleProvider(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t specialized Font.TextStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746954656772616CLL && a2 == 0xEA0000000000656CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x32656C746974 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x33656C746974 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C64616568627573 && a2 == 0xEB00000000656E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74756F6C6C6163 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x326E6F6974706163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEF656C7469546567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018DD7E110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x336E6F6974706163 && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t EnvironmentValues.fontModifiers.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v1);

    return v2;
  }

  else if (_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v1))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t AnyFontModifier.isboldFontWeightModifier.getter()
{
  type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(result + 16) >= 0.3;
  }

  return result;
}

uint64_t Font.ModifierProvider.init(base:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for Font.ModifierProvider();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t static AnyFontModifier.dynamic<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyDynamicFontModifier();
  (*(v4 + 16))(v6, a1, a2);
  return AnyDynamicFontModifier.__allocating_init(_:)(v6);
}

uint64_t Font.modifier<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = type metadata accessor for Font.StaticModifierProvider();
  swift_getWitnessTable();
  return specialized Font.init<A>(_:)(&v4, v2);
}

uint64_t Font.lowercaseSmallCaps()(uint64_t a1, __n128 a2)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return v3;
}

uint64_t Font.smallCaps(_:)(char a1, uint64_t a2)
{
  if (a1)
  {

    return Font.smallCaps()(a2);
  }

  else
  {
    type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = xmmword_18DDF4E00;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = xmmword_18DDF4E10;

    return v5;
  }
}

void *Font.lowercaseSmallCaps(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureSettingModifier>>();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1 & 1;

  return v6;
}

uint64_t Font.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.ModifierProvider();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  *v13 = a2;
  (*(v6 + 32))(&v13[*(v9 + 36)], v8, a3);
  swift_getWitnessTable();
  v14 = specialized Font.init<A>(_:)(v13, v9);
  v15 = *(v10 + 8);

  v15(v13, v9);
  return v14;
}

uint64_t Font.width(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for FontBox<Font.ModifierProvider<Font.WidthModifier>>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

uint64_t Font.italic(_:)(char a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  if (a1)
  {
    a3(0);
  }

  else
  {
    a4(0);
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;

  return v5;
}

uint64_t Font._leading(_:)(_BYTE *a1, uint64_t a2)
{
  v3 = 0x201u >> (8 * *a1);
  type metadata accessor for FontBox<Font.ModifierProvider<Font.LeadingModifier>>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

uint64_t Font.variation(_:_:)(char *a1, uint64_t a2, double a3)
{
  v5 = *a1;
  type metadata accessor for FontBox<Font.ModifierProvider<Font.VariationModifier>>();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v5;
  *(v6 + 32) = a3;

  return v6;
}

uint64_t Font.VariationAxisIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 1936486003)
  {
    if (result == 1769234796)
    {
      *a2 = 4;
      return result;
    }

    if (result == 1869640570)
    {
      *a2 = 3;
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 2003265652:
        *a2 = 0;
        return result;
      case 2003072104:
        *a2 = 1;
        return result;
      case 1936486004:
        *a2 = 2;
        return result;
    }
  }

  *a2 = 5;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.VariationAxisIdentifier()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*&aThgw[8 * *v0]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.VariationAxisIdentifier()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*&aThgw[8 * *v0]);
  return Hasher._finalize()();
}

uint64_t Font.grade(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FontBox<Font.ModifierProvider<Font.GradeModifier>>();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t Font.removing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a2 + 128))(v8, a1, a3, a4);
  v4 = v9;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = specialized Font.init<A>(_:)(v5, v4);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t Font.Weight.hash(into:)(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&a1);
}

Swift::Int Font.Weight.hashValue.getter(double a1)
{
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

double one-time initialization function for compressed()
{
  result = *MEMORY[0x1E6965980];
  static Font.Width.compressed = *MEMORY[0x1E6965980];
  return result;
}

double one-time initialization function for condensed()
{
  result = *MEMORY[0x1E6965988];
  static Font.Width.condensed = *MEMORY[0x1E6965988];
  return result;
}

double one-time initialization function for standard()
{
  result = *MEMORY[0x1E69659C0];
  static Font.Width.standard = *MEMORY[0x1E69659C0];
  return result;
}

double one-time initialization function for expanded()
{
  result = *MEMORY[0x1E6965990];
  static Font.Width.expanded = *MEMORY[0x1E6965990];
  return result;
}

double static Font.Width.compressed.getter@<D0>(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t Font._StylisticAlternative.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 2;
  switch(result)
  {
    case 1:
      goto LABEL_3;
    case 2:
      v2 = 1;
LABEL_3:
      v3 = v2;
      goto LABEL_4;
    case 3:
LABEL_4:
      *a2 = v3;
      break;
    case 4:
      *a2 = 3;
      break;
    case 5:
      *a2 = 4;
      break;
    case 6:
      *a2 = 5;
      break;
    case 7:
      *a2 = 6;
      break;
    case 8:
      *a2 = 7;
      break;
    case 9:
      *a2 = 8;
      break;
    case 10:
      *a2 = 9;
      break;
    case 11:
      *a2 = 10;
      break;
    case 12:
      *a2 = 11;
      break;
    case 13:
      *a2 = 12;
      break;
    case 14:
      *a2 = 13;
      break;
    case 15:
      *a2 = 14;
      break;
    case 16:
      *a2 = 15;
      break;
    case 17:
      *a2 = 16;
      break;
    case 18:
      *a2 = 17;
      break;
    case 19:
      *a2 = 18;
      break;
    case 20:
      *a2 = 19;
      break;
    default:
      *a2 = 20;
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font._StylisticAlternative()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0 + 1);
  return Hasher._finalize()();
}

void static Font.BoldModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 2u, 2u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void static Font.BoldModifier.undo(descriptor:in:)(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 0, 2u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void protocol witness for static UndoableStaticFontModifier.undo(descriptor:in:) in conformance Font.BoldModifier(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 0, 2u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void static Font.ItalicModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 1u, 1u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void static Font.ItalicModifier.undo(descriptor:in:)(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 0, 1u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void protocol witness for static UndoableStaticFontModifier.undo(descriptor:in:) in conformance Font.ItalicModifier(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 0, 1u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.ItalicModifier(CTFontDescriptorRef *a1)
{
  v2 = *a1;
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(*a1, 1u, 1u);
  if (CopyWithSymbolicTraits)
  {
    v4 = CopyWithSymbolicTraits;

    v2 = v4;
  }

  *a1 = v2;
}

void Font.ScalePointSizeModifier.modify(descriptor:in:)(CTFontDescriptorRef *a1)
{
  v3 = *v1;
  v4 = *a1;
  if (v3 != 1.0)
  {
    v5 = *MEMORY[0x1E6965848];
    v6 = 0.0;
    if (CTFontDescriptorCopyAttribute(*a1, *MEMORY[0x1E6965848]) && (swift_dynamicCast() & 1) != 0)
    {
      v6 = v11;
    }

    _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, type metadata accessor for (CFStringRef, CGFloat), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    *(inited + 32) = v5;
    *(inited + 40) = round(v3 * v6 * 4.0) * 0.25;
    v8 = v5;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(inited + 32, type metadata accessor for (CFStringRef, CGFloat));
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v4, isa);

    v4 = CopyWithAttributes;
  }

  *a1 = v4;
}

void Font.PointSizeModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1)
{
  v3 = *v1;
  v4 = *a1;
  _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, type metadata accessor for (CFStringRef, CGFloat), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E6965848];
  *(inited + 16) = xmmword_18DDA6EB0;
  v7 = *v6;
  *(inited + 32) = v7;
  *(inited + 40) = v3;
  v8 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(inited + 32, type metadata accessor for (CFStringRef, CGFloat));
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v4, isa);

  *a1 = CopyWithAttributes;
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.PointSizeModifier(const __CTFontDescriptor **a1)
{
  v3 = *v1;
  v4 = *a1;
  _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, type metadata accessor for (CFStringRef, CGFloat), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E6965848];
  *(inited + 16) = xmmword_18DDA6EB0;
  v7 = *v6;
  *(inited + 32) = v7;
  *(inited + 40) = v3;
  v8 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(inited + 32, type metadata accessor for (CFStringRef, CGFloat));
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v4, isa);

  *a1 = CopyWithAttributes;
}

void static Font.MonospacedModifier.modify(descriptor:in:)(void **a1)
{
  v2 = *a1;
  v3 = CTFontDescriptorRef.monospaced(_:)(1);

  *a1 = v3;
}

void static Font.MonospacedModifier.undo(descriptor:in:)(void **a1)
{
  v2 = *a1;
  v3 = CTFontDescriptorRef.monospaced(_:)(0);

  *a1 = v3;
}

void protocol witness for static UndoableStaticFontModifier.undo(descriptor:in:) in conformance Font.MonospacedModifier(void **a1)
{
  v2 = *a1;
  v3 = CTFontDescriptorRef.monospaced(_:)(0);

  *a1 = v3;
}

void protocol witness for static StaticFontModifier.modify(descriptor:in:) in conformance Font.MonospacedModifier(void **a1)
{
  v2 = *a1;
  v3 = CTFontDescriptorRef.monospaced(_:)(1);

  *a1 = v3;
}

void static Font.MonospacedDigitModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

void Font.DesignModifier.modify(descriptor:in:)(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v6 = v3;
  v5 = CTFontDescriptorRef.design(_:)(&v6);

  *a1 = v5;
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.DesignModifier(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v6 = v3;
  v5 = CTFontDescriptorRef.design(_:)(&v6);

  *a1 = v5;
}

void Font.LeadingModifier.modify(descriptor:in:)(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v6 = v3;
  v5 = CTFontDescriptorRef.leading(_:)(&v6);

  *a1 = v5;
}

void Font.FeatureSettingModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

uint64_t Font.FeatureSettingModifier.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int Font.FeatureSettingModifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t Font.OpenTypeFeatureSettingModifier.settings.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Font.OpenTypeFeatureSettingModifier.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x193AC11A0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int Font.OpenTypeFeatureSettingModifier.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.OpenTypeFeatureSettingModifier()
{
  Hasher.init(_seed:)();
  Font.OpenTypeFeatureSettingModifier.hash(into:)();
  return Hasher._finalize()();
}

void Font.OpenTypeFeatureSettingModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t), void (*a5)(uint64_t), void (*a6)(void))
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v11 = *v6;
    a3(0);
    inited = swift_initStackObject();
    v13 = MEMORY[0x1E69657A8];
    *(inited + 16) = xmmword_18DDA6EB0;
    v14 = *v13;
    *(inited + 32) = v14;
    *(inited + 40) = v11;
    v15 = v14;

    a4(inited);
    swift_setDeallocating();
    a5(inited + 32);
    v16 = *a1;
    type metadata accessor for CFStringRef(0);
    a6(0);
    lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v16, isa);

    *a1 = CopyWithAttributes;
  }
}

Swift::Int Font.FeatureDictionariesSettingModifier.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.FeatureDictionariesSettingModifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.FeatureDictionariesSettingModifier()
{
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void Font.WeightModifier.modify(descriptor:in:)(void **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *v2;
    v4 = *a1;
    v6 = CTFontDescriptorRef.weight(_:)(v3);

    *a1 = v6;
  }
}

double Font.WeightModifier.modify(traits:)(uint64_t a1)
{
  result = *v1;
  *(a1 + 8) = *v1;
  return result;
}

void Font.WidthModifier.modify(descriptor:in:)(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = CTFontDescriptorRef.width(_:)(v3);

  *a1 = v5;
}

uint64_t Font.WidthModifier.modify(traits:)(uint64_t result)
{
  *(result + 16) = *v1;
  *(result + 24) = 0;
  return result;
}

uint64_t Font.WidthModifier.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.WidthModifier(void **a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = CTFontDescriptorRef.width(_:)(v3);

  *a1 = v5;
}

uint64_t protocol witness for FontModifier.modify(traits:) in conformance Font.WidthModifier(uint64_t result)
{
  *(result + 16) = *v1;
  *(result + 24) = 0;
  return result;
}

void Font.StylisticAlternativeModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

Swift::Int Font.StylisticAlternativeModifier.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1 + 1);
  return Hasher._finalize()();
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.StylisticAlternativeModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font._StylisticAlternative()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0 + 1);
  return Hasher._finalize()();
}

void Font.VariationModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *(v2 + 8);
    v4 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithVariation = CTFontDescriptorCreateCopyWithVariation(v4, isa, v3);

    *a1 = CopyWithVariation;
  }
}

uint64_t Font.VariationModifier.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*&aThgw[8 * *v0]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int Font.VariationModifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*&aThgw[8 * v1]);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x193AC11E0](*&v3);
  return Hasher._finalize()();
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.VariationModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *(v2 + 8);
    v4 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithVariation = CTFontDescriptorCreateCopyWithVariation(v4, isa, v3);

    *a1 = CopyWithVariation;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.VariationModifier()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*&aThgw[8 * *v0]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x193AC11E0](*&v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.VariationModifier()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  MEMORY[0x193AC11A0](*&aThgw[8 * *v0]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

void Font.GradeModifier.modify(descriptor:in:)(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *v2;
    v4 = *a1;
    v5 = MEMORY[0x1E69E6F90];
    _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, [CFStringRef? : Int])>, type metadata accessor for (CFStringRef, [CFStringRef? : Int]), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v8 = *MEMORY[0x1E6965898];
    *(inited + 32) = *MEMORY[0x1E6965898];
    _ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef?, Int)>, type metadata accessor for (CFStringRef?, Int), v5);
    v9 = swift_initStackObject();
    v10 = MEMORY[0x1E69657D8];
    *(v9 + 16) = xmmword_18DDA6EB0;
    v11 = *v10;
    *(v9 + 32) = v11;
    *(v9 + 40) = v3;
    v12 = v11;
    v13 = v8;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_SiTt0g5Tf4g_n(v9);
    swift_setDeallocating();
    _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(v9 + 32, type metadata accessor for (CFStringRef?, Int));
    *(inited + 40) = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSgSiGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(inited + 32, type metadata accessor for (CFStringRef, [CFStringRef? : Int]));
    type metadata accessor for CFStringRef(0);
    type metadata accessor for [CFStringRef? : Int]();
    lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v4, isa);

    *a1 = CopyWithAttributes;
  }
}

Swift::Int Font.GradeModifier.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static Font.UndoModifier.modify(descriptor:in:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return (*(a4 + 24))(a1, v6);
}

uint64_t Font.ModifierProvider.removing<A>(modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Font.removing<A>(_:)(v10, *v3, v11, v12);
  (*(v7 + 16))(v9, v3 + *(a2 + 36), v6);
  a3[3] = a2;
  a3[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  *boxed_opaque_existential_1 = v13;
  v15 = type metadata accessor for Font.ModifierProvider();
  return (*(v7 + 32))(boxed_opaque_existential_1 + *(v15 + 36), v9, v6);
}

Swift::Int Font.ModifierProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(**v0 + 120))(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.ModifierProvider<A>()
{
  Hasher.init(_seed:)();
  Font.ModifierProvider.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Font.StaticModifierProvider.removing<A>(modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v6 = Font.removing<A>(_:)(a1, a2, a3, a4);
  if (swift_dynamicCastMetatype())
  {
    (*(*v6 + 88))();
  }

  else
  {
    a5[3] = type metadata accessor for Font.StaticModifierProvider();
    result = swift_getWitnessTable();
    a5[4] = result;
    *a5 = v6;
  }

  return result;
}

Swift::Int Font.StaticModifierProvider.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.StaticModifierProvider<A>()
{
  Hasher.init(_seed:)();
  Font.StaticModifierProvider.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t AnyDynamicFontModifier.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

uint64_t static AnyFontModifier.static<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for staticModifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AnyFontModifier.staticModifiers;
  if (*(static AnyFontModifier.staticModifiers + 2) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for AnyStaticFontModifier();
    v5 = swift_allocObject();
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static AnyFontModifier.staticModifiers;
    static AnyFontModifier.staticModifiers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a1, isUniquelyReferenced_nonNull_native);
    static AnyFontModifier.staticModifiers = v8;
    swift_endAccess();
  }

  return v5;
}

Swift::Int AnyFontModifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 104))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyFontModifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 104))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyFontModifier()
{
  Hasher.init(_seed:)();
  (*(**v0 + 104))(v2);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.fontModifiers.setter(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013FontModifiersK033_25811D44B7BE5E768C1CBA33158F398BLLVG_Ttg5(v3, *v1);
  }
}

void (*EnvironmentValues.fontModifiers.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  *v4 = v7;
  return EnvironmentValues.fontModifiers.modify;
}

void EnvironmentValues.fontModifiers.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013FontModifiersK033_25811D44B7BE5E768C1CBA33158F398BLLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013FontModifiersK033_25811D44B7BE5E768C1CBA33158F398BLLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t AttributeContainer.addFontModifier<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyDynamicFontModifier();
  (*(v4 + 16))(v6, a1, a2);
  AnyDynamicFontModifier.__allocating_init(_:)(v6);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute();
  AttributeContainer.subscript.getter();
  v7 = v11;
  if (!v11)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = v7;

  MEMORY[0x193ABF170](v8);
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = v11;
  AttributeContainer.subscript.setter();
}

uint64_t AttributeContainer.addFontModifier<A>(_:)()
{
  type metadata accessor for AnyStaticFontModifier();
  swift_allocObject();
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute();
  AttributeContainer.subscript.getter();
  v0 = v3;
  if (!v3)
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  v4 = v0;

  MEMORY[0x193ABF170](v1);
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  AttributeContainer.subscript.setter();
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.ItalicModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.ItalicModifier>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.ItalicModifier>, &type metadata for Font.ItalicModifier, &protocol witness table for Font.ItalicModifier, type metadata accessor for Font.StaticModifierProvider);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.ItalicModifier> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.ItalicModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.ItalicModifier> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.ItalicModifier> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.ItalicModifier> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.ItalicModifier>, &type metadata for Font.ItalicModifier, &protocol witness table for Font.ItalicModifier, type metadata accessor for Font.StaticModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.ItalicModifier> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.ItalicModifier>, &type metadata for Font.ItalicModifier, &protocol witness table for Font.ItalicModifier);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.ItalicModifier>, &type metadata for Font.ItalicModifier, &protocol witness table for Font.ItalicModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.MonospacedDigitModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.MonospacedDigitModifier>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.MonospacedDigitModifier>, &type metadata for Font.MonospacedDigitModifier, &protocol witness table for Font.MonospacedDigitModifier, type metadata accessor for Font.StaticModifierProvider);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.MonospacedDigitModifier> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.MonospacedDigitModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.MonospacedDigitModifier> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedDigitModifier> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedDigitModifier> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.MonospacedDigitModifier>, &type metadata for Font.MonospacedDigitModifier, &protocol witness table for Font.MonospacedDigitModifier, type metadata accessor for Font.StaticModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedDigitModifier> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.WidthModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WidthModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.WidthModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WidthModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.WidthModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WidthModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WidthModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WidthModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>>>);
    }
  }
}

void type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, a3, a4, a5, type metadata accessor for Font.UndoModifier);
    v6 = type metadata accessor for Font.StaticModifierProvider();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.BoldModifier>> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.MonospacedModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.MonospacedModifier>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.MonospacedModifier>, &type metadata for Font.MonospacedModifier, &protocol witness table for Font.MonospacedModifier, type metadata accessor for Font.StaticModifierProvider);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.MonospacedModifier> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.MonospacedModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.MonospacedModifier> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedModifier> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedModifier> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.MonospacedModifier>, &type metadata for Font.MonospacedModifier, &protocol witness table for Font.MonospacedModifier, type metadata accessor for Font.StaticModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.MonospacedModifier> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.MonospacedModifier>, &type metadata for Font.MonospacedModifier, &protocol witness table for Font.MonospacedModifier);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.UndoModifier<Font.ItalicModifier>>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>>, &lazy cache variable for type metadata for Font.UndoModifier<Font.MonospacedModifier>, &type metadata for Font.MonospacedModifier, &protocol witness table for Font.MonospacedModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.UndoModifier<Font.MonospacedModifier>> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.PointSizeModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.PointSizeModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.PointSizeModifier>, lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier, &type metadata for Font.PointSizeModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.PointSizeModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.PointSizeModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.PointSizeModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.PointSizeModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.PointSizeModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.PointSizeModifier>, lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier, &type metadata for Font.PointSizeModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.PointSizeModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.ScalePointSizeModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.ScalePointSizeModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.ScalePointSizeModifier>, lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.ScalePointSizeModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.ScalePointSizeModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.ScalePointSizeModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.ScalePointSizeModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.ScalePointSizeModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.ScalePointSizeModifier>, lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.ScalePointSizeModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>, lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.FeatureDictionariesSettingModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureDictionariesSettingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureDictionariesSettingModifier>, lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureDictionariesSettingModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.FeatureDictionariesSettingModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.FeatureDictionariesSettingModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureDictionariesSettingModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureDictionariesSettingModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.FeatureDictionariesSettingModifier>, lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.FeatureDictionariesSettingModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.StylisticAlternativeModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.StylisticAlternativeModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.StylisticAlternativeModifier>, lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.StylisticAlternativeModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.StylisticAlternativeModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.StylisticAlternativeModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.StylisticAlternativeModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.StylisticAlternativeModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.StylisticAlternativeModifier>, lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.StylisticAlternativeModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.VariationModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.VariationModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.VariationModifier>, lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier, &type metadata for Font.VariationModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.VariationModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.VariationModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.VariationModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.VariationModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.VariationModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.VariationModifier>, lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier, &type metadata for Font.VariationModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.VariationModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.GradeModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.GradeModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.GradeModifier>, lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier, &type metadata for Font.GradeModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.GradeModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.GradeModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.GradeModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.GradeModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.GradeModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.GradeModifier>, lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier, &type metadata for Font.GradeModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.GradeModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _sSo11CFStringRefa_12CoreGraphics7CGFloatVtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (CFStringRef, [String])(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CFStringRef(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    type metadata accessor for CFStringRef?(255);
    lazy protocol witness table accessor for type AnyFontModifier and conformance AnyFontModifier(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, 255, type metadata accessor for CFStringRef);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontModifiersAttribute and conformance AttributeScopes.SwiftUIAttributes.FontModifiersAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.Width and conformance Font.Width()
{
  result = lazy protocol witness table cache variable for type Font.Width and conformance Font.Width;
  if (!lazy protocol witness table cache variable for type Font.Width and conformance Font.Width)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Width and conformance Font.Width);
  }

  return result;
}

void type metadata accessor for RawRepresentableProxy<Font.VariationAxisIdentifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for RawRepresentableProxy();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.Leading and conformance Font.Leading()
{
  result = lazy protocol witness table cache variable for type Font.Leading and conformance Font.Leading;
  if (!lazy protocol witness table cache variable for type Font.Leading and conformance Font.Leading)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Leading and conformance Font.Leading);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font._Leading and conformance Font._Leading()
{
  result = lazy protocol witness table cache variable for type Font._Leading and conformance Font._Leading;
  if (!lazy protocol witness table cache variable for type Font._Leading and conformance Font._Leading)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font._Leading and conformance Font._Leading);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.DesignModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.GradeModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier();
  *(a1 + 8) = result;
  return result;
}

uint64_t NSWritingDirection.init(_:textWritingDirection:writingMode:layoutDirection:fallbackStrategy:)(char a1, _BYTE *a2, _BYTE *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (a1 != 2)
  {
    return a1 & 1;
  }

  if (*a2 == 2)
  {
    v5 = *a5;
  }

  else
  {
    v5 = *a2;
  }

  v6 = v5 | *a3;
  v7 = v5 << 63 >> 63;
  if (v6)
  {
    return v7;
  }

  else
  {
    return *a4;
  }
}

uint64_t EnvironmentValues.textWritingDirection.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!v1[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v2, a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.WritingDirectionStrategy.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0x42746E65746E6F63;
  }

  else
  {
    return 0x614274756F79616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.WritingDirectionStrategy.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614274756F79616CLL && a2 == 0xEB00000000646573;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x42746E65746E6F63 && a2 == 0xEC00000064657361)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.WritingDirectionStrategy.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.WritingDirectionStrategy.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.WritingDirectionStrategy.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys, &unk_1F0094178, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys, &unk_1F0094158, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys, &unk_1F0094138, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

Swift::Int Text.WritingDirectionStrategy.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Text.WritingDirectionStrategy.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys, &unk_1F0094178, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys, &unk_1F0094158, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.WritingDirectionStrategy.Storage.CodingKeys>, lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys, &unk_1F0094138, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for Text.WritingDirectionStrategy.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void Text.WritingDirectionStrategy.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }
}

Swift::Int Text.WritingDirectionStrategy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.WritingDirectionStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Text.WritingDirectionStrategy()
{
  v1 = *v0;
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.WritingDirectionStrategy()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }

  return Hasher._finalize()();
}

uint64_t key path getter for EnvironmentValues.textWritingDirection : EnvironmentValues@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.textWritingDirection : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.textWritingDirection.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.textWritingDirection.modify(char **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 2;
    }

    v4[40] = v9;
  }

  return EnvironmentValues.textWritingDirection.modify;
}

void EnvironmentValues.textWritingDirection.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t View.writingDirection(strategy:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t NSWritingDirection.init(_:in:fallbackStrategy:)(char a1, uint64_t a2, char *a3)
{
  v4 = *a2;
  v5 = *a3;
  if (*(a2 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v4, &v18);

    v6 = v18;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v4, &v16);

    v7 = v16;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v4, &v15);

    v8 = v15;
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>();
    BloomFilter.init(hashValue:)(v9);
    v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v4, v17);
    if (v10)
    {
      v6 = *(v10 + 72);
    }

    else
    {
      v6 = 2;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v4);
    if (v11)
    {
      v7 = *(v11 + 72);
    }

    else
    {
      v7 = 0;
    }

    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v4);
    if (v12)
    {
      v8 = *(v12 + 72);
    }

    else
    {
      v8 = 0;
    }
  }

  if (a1 != 2)
  {
    return a1 & 1;
  }

  if (v6 == 2)
  {
    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  if (v13)
  {
    return -1;
  }

  else
  {
    return (v7 ^ 1) & v8;
  }
}

unint64_t lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys and conformance Text.WritingDirectionStrategy.Storage.LayoutBasedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage.CodingKeys and conformance Text.WritingDirectionStrategy.Storage.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<Text.WritingDirectionStrategy.Storage.ContentBasedCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t specialized static Text.WritingDirectionStrategy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Text.WritingDirectionStrategy.Storage and conformance Text.WritingDirectionStrategy.Storage()
{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage and conformance Text.WritingDirectionStrategy.Storage;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage and conformance Text.WritingDirectionStrategy.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy.Storage and conformance Text.WritingDirectionStrategy.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.WritingDirectionStrategy and conformance Text.WritingDirectionStrategy()
{
  result = lazy protocol witness table cache variable for type Text.WritingDirectionStrategy and conformance Text.WritingDirectionStrategy;
  if (!lazy protocol witness table cache variable for type Text.WritingDirectionStrategy and conformance Text.WritingDirectionStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.WritingDirectionStrategy and conformance Text.WritingDirectionStrategy);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.WritingDirectionStrategy(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.WritingDirectionStrategy>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingDirectionStrategy>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.WritingDirectionStrategy>);
    }
  }
}

uint64_t PreferencesOutputs.setIndirectDependency(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v1 + 48;
    do
    {
      v3 += 24;
      result = AGGraphSetIndirectDependency();
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Void __swiftcall PreferencesOutputs.detachIndirectOutputs()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v1 + 48;
    do
    {
      v3 += 24;
      AGGraphSetIndirectAttribute();
      --v2;
    }

    while (v2);
  }
}

unint64_t PreferencesOutputs.subscript.getter(uint64_t a1)
{
  v2 = (*v1 + 32);
  v3 = *(*v1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 3;
    v5 = *v2;
    v2 += 3;
    if (v5 == a1)
    {
      v6 = *(v4 - 2);
      return v6 | ((v3 == 0) << 32);
    }
  }

  v6 = 0;
  return v6 | ((v3 == 0) << 32);
}

uint64_t PreferencesOutputs.forEachPreference(_:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (*v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 6;
      result = v3(v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t (*PreferencesOutputs.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v4 = (*v3 + 32);
  v5 = *(*v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 3;
    v7 = *v4;
    v4 += 3;
    if (v7 == a2)
    {
      v8 = *(v6 - 2);
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  *(a1 + 24) = v8;
  *(a1 + 28) = v5 == 0;
  return _ViewOutputs.subscript.modify;
}

void (*PreferencesOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v11 = PreferencesOutputs.subscript.getter(a2, a3, a4);
  *(v10 + 8) = v11;
  *(v10 + 36) = BYTE4(v11) & 1;
  return _ViewOutputs.subscript.modify;
}

void protocol witness for AnchorProtocol.prepare(geometry:) in conformance CGRect(uint64_t a1@<X8>)
{
  *a1 = CGRect.prepare(geometry:)(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

double *static Anchor.Source<A>.rect(_:)(double a1, double a2, double a3, double a4)
{
  type metadata accessor for AnchorBox<CGRect>();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t specialized static CGRect.hashValue(_:into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x193AC11E0](*&v9);
}

void type metadata accessor for AnchorBox<CGRect>()
{
  if (!lazy cache variable for type metadata for AnchorBox<CGRect>)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for AnchorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnchorBox<CGRect>);
    }
  }
}

uint64_t static LazyHVStack<>.majorAxis.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
}

double LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HasDeadlinePassed = AGGraphHasDeadlinePassed();
  if (HasDeadlinePassed)
  {
    AGGraphCancelUpdate();
    return 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    MEMORY[0x1EEE9AC00](HasDeadlinePassed);
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = &v10;
    v8 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v8, partial apply for closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:), v7);
    return v10;
  }
}

uint64_t protocol witness for LazyStack.place(subviews:length:minorGeometry:emit:) in conformance LazyHStackLayout(uint64_t result, uint64_t a2, char a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, double, double, double, double))
{
  if (*(result + 16))
  {
    v7 = result;
    v8 = *v5;
    v9 = *a4;
    v11 = a2;
    v12 = a3 & 1;
    v13 = v9;
    v14 = 0;
    AlignmentKey.fraction.getter(v8);
    return a5(v7 + 32, &v11, 0.0, 0.0, 0.5, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static LazyHVStack<>.layoutProperties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = *(v5 + 32);
  v7 = v6(a1, v5);
  v8 = specialized Axis.Set.init(_:)(v7 & 1);
  v9 = v6(a1, v5);
  result = specialized Axis.Set.init(_:)(v9 & 1);
  *a3 = v8;
  a3[1] = result;
  return result;
}

double protocol witness for LazyStack.flexibleMinorSize(subviews:) in conformance LazyHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HasDeadlinePassed = AGGraphHasDeadlinePassed();
  if (HasDeadlinePassed)
  {
    AGGraphCancelUpdate();
    return 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    MEMORY[0x1EEE9AC00](HasDeadlinePassed);
    v7[2] = &v10;
    v8 = 2;
    _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v8, a4, v7);
    return v10;
  }
}

uint64_t protocol witness for LazyStack.place(subviews:length:minorGeometry:emit:) in conformance LazyVStackLayout(uint64_t result, uint64_t a2, char a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, double, double, double, double))
{
  if (*(result + 16))
  {
    v7 = result;
    v8 = *v5;
    v10 = *a4;
    v11 = 0;
    v12 = a2;
    v13 = a3 & 1;
    AlignmentKey.fraction.getter(v8);
    return a5(v7 + 32, &v10, 0.0, 0.0, v9, 0.5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LazyHVStack<>.flexibleMinorSize(subviews:)(uint64_t a1, _BYTE *a2, double *a3, uint64_t a4, uint64_t a5)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *(LazyLayoutViewCache.item(data:)((a1 + 16)) + 44);

    v12 = *MEMORY[0x1E698D3F8];
    v23 = v10;
    v24 = v11;
    v25 = v12;
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    v19 = static _ProposedSize.unspecified;
    v20 = byte_1ED52ECF8;
    v21 = qword_1ED52ED00;
    v22 = byte_1ED52ED08;
    LayoutProxy.size(in:)(&v19);
    v14 = v13;
    v16 = v15;
    result = (*(*(a5 + 8) + 32))(a4);
    if (result)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    *a3 = v18;
  }

  *a2 = 1;
  return result;
}

id static CoreGlue2.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CoreGlue2.shared;

  return v0;
}

void static CoreGlue2.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CoreGlue2.shared;
  static CoreGlue2.shared = a1;
}

uint64_t (*static CoreGlue2.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

id key path getter for static CoreGlue2.shared : CoreGlue2.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CoreGlue2.shared;
  *a1 = static CoreGlue2.shared;

  return v2;
}

void key path setter for static CoreGlue2.shared : CoreGlue2.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static CoreGlue2.shared;
  static CoreGlue2.shared = v2;
}

Swift::Bool_optional __swiftcall CoreGlue2.isStatusBarHidden()()
{
  result.value = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CoreGlue2.linkURL(at:in:stringDrawing:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  v8[4] = a1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);

  v6(v8);
}

uint64_t CoreGlue2.LinkURLParameters.init(point:size:stringDrawing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  return result;
}

uint64_t CoreGlue2.platformColorProviderTag()()
{
  v0 = type metadata accessor for Color.ProviderTag.CorePlatformTag();
  lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag and conformance Color.ProviderTag.AnyPlatformTag(&lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag and conformance Color.ProviderTag.AnyPlatformTag, type metadata accessor for Color.ProviderTag.CorePlatformTag);
  return v0;
}

uint64_t CoreGlue2.platformGradientProviderTag()()
{
  v0 = type metadata accessor for Gradient.ProviderTag.CorePlatformTag();
  lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag and conformance Color.ProviderTag.AnyPlatformTag(&lazy protocol witness table cache variable for type Gradient.ProviderTag.CorePlatformTag and conformance Gradient.ProviderTag.AnyPlatformTag, type metadata accessor for Gradient.ProviderTag.CorePlatformTag);
  return v0;
}

uint64_t lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag and conformance Color.ProviderTag.AnyPlatformTag(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CoreGlue2.CodableAttachmentCellTypeResult.value.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t CoreGlue2.CodableAttachmentCellTypeResult.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t CoreGlue2.LinkURLParameters.stringDrawing.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t CoreGlue2.ResolvedImage.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

__n128 CoreGlue2.ResolvedImage.base.setter(uint64_t a1)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v15[0] = v1[10];
  *(v15 + 11) = *(v1 + 171);
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined destroy of CoreGlue2.ResolvedImage(v14);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  v1[10] = *(a1 + 160);
  *(v1 + 171) = *(a1 + 171);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v13;
  return result;
}

__n128 CoreGlue2.ResolvedImage.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 171) = *(a1 + 171);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

Swift::Bool __swiftcall CoreGlue.hasTestHost()()
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id CoreGlue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreGlue2.init()(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CoreGlue2.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CoreGlue2.CodableAttachmentCellTypeResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreGlue2.CodableAttachmentCellTypeResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t _ContainerValueWritingModifier.keyPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static _ContainerValueWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static _ContainerValueWritingModifier._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

SwiftUI::DefaultDescriptionAttribute_optional __swiftcall DefaultDescriptionAttribute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t DefaultDescriptionAttribute.rawValue.getter()
{
  result = 1952671090;
  switch(*v0)
  {
    case 1:
      return 0x6E696769726FLL;
    case 2:
      return 0x696F507472617473;
    case 3:
      return 0x746E696F50646E65;
    case 4:
      return 0x726F66736E617274;
    case 5:
      return 0x7370696C63;
    case 6:
      v3 = 0x72656E726F63;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 7:
      return 0xD000000000000011;
    case 8:
      return 0x7974696361706FLL;
    case 9:
      return 0x6957726564726F62;
    case 0xA:
      v2 = 0x726564726F62;
      goto LABEL_23;
    case 0xB:
      return 0x756F72676B636162;
    case 0xC:
      return 0xD000000000000011;
    case 0xD:
      return 0x55656C6261736964;
    case 0xE:
      return 0x704F776F64616873;
    case 0xF:
      v3 = 0x776F64616873;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
    case 0x10:
      v2 = 0x776F64616873;
LABEL_23:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 0x11:
      result = 0x664F776F64616873;
      break;
    case 0x12:
      result = 0x6150776F64616873;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x14:
      result = 0x74756F68636E7570;
      break;
    case 0x15:
    case 0x16:
      result = 0x73746E65746E6F63;
      break;
    case 0x17:
      result = 0xD000000000000015;
      break;
    case 0x18:
      result = 0x686353726F6C6F63;
      break;
    case 0x19:
      result = 0x737265746C6966;
      break;
    case 0x1A:
    case 0x1B:
      result = 0x746E656964617267;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0xD000000000000016;
      break;
    case 0x1E:
      result = 0x7461506570616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DefaultDescriptionAttribute()
{
  v0 = DefaultDescriptionAttribute.rawValue.getter();
  v2 = v1;
  if (v0 == DefaultDescriptionAttribute.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DefaultDescriptionAttribute()
{
  Hasher.init(_seed:)();
  DefaultDescriptionAttribute.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DefaultDescriptionAttribute()
{
  DefaultDescriptionAttribute.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DefaultDescriptionAttribute()
{
  Hasher.init(_seed:)();
  DefaultDescriptionAttribute.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DefaultDescriptionAttribute@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultDescriptionAttribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t specialized static DefaultDescriptionAttribute.all.getter()
{
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI27DefaultDescriptionAttributeO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of static DefaultDescriptionAttribute.allCases.getter);
  v0 = *&static _TestApp.testIntents;
  if (static _TestApp.testIntents)
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI27DefaultDescriptionAttributeO_Tt0g5Tf4g_n(&outlined read-only object #0 of static DefaultDescriptionAttribute.all.getter);
    specialized Set._subtract<A>(_:)(v1);

    v0 = *&static _TestApp.testIntents;
    if ((static _TestApp.testIntents & 8) == 0)
    {
LABEL_3:
      if ((v0 & 0x40000000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((static _TestApp.testIntents & 8) == 0)
  {
    goto LABEL_3;
  }

  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI27DefaultDescriptionAttributeO_Tt0g5Tf4g_n(&outlined read-only object #1 of static DefaultDescriptionAttribute.all.getter);
  specialized Set._subtract<A>(_:)(v2);

  v0 = *&static _TestApp.testIntents;
  if ((*&static _TestApp.testIntents & 0x40000000000000) != 0)
  {
LABEL_4:
    if ((v0 & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  specialized Set._Variant.remove(_:)(7, &v4);
  v0 = *&static _TestApp.testIntents;
  if ((static _TestApp.testIntents & 0x2000) != 0)
  {
LABEL_5:
    if ((v0 & 0x40000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  specialized Set._Variant.remove(_:)(23, &v4);
  v0 = *&static _TestApp.testIntents;
  if ((static _TestApp.testIntents & 0x40000) != 0)
  {
LABEL_6:
    if ((v0 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  specialized Set._Variant.remove(_:)(26, &v4);
  specialized Set._Variant.remove(_:)(27, &v4);
  specialized Set._Variant.remove(_:)(28, &v4);
  specialized Set._Variant.remove(_:)(29, &v4);
  v0 = *&static _TestApp.testIntents;
  if ((static _TestApp.testIntents & 0x100000) == 0)
  {
LABEL_7:
    if ((v0 & 0x8000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_14:
  specialized Set._Variant.remove(_:)(8, &v4);
  v0 = *&static _TestApp.testIntents;
  if ((*&static _TestApp.testIntents & 0x8000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (*(v5 + 16))
  {
    specialized Set._Variant.remove(_:)(byte_1F0045598, &v4);
    specialized Set._Variant.remove(_:)(byte_1F0045599, &v4);
    v0 = *&static _TestApp.testIntents;
  }

LABEL_17:
  if ((v0 & 0x4000000000000000) == 0)
  {
    specialized Set._Variant.remove(_:)(30, &v4);
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type [DefaultDescriptionAttribute] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DefaultDescriptionAttribute] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DefaultDescriptionAttribute] and conformance [A])
  {
    type metadata accessor for [DefaultDescriptionAttribute]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DefaultDescriptionAttribute] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [DefaultDescriptionAttribute]()
{
  if (!lazy cache variable for type metadata for [DefaultDescriptionAttribute])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [DefaultDescriptionAttribute]);
    }
  }
}

uint64_t getEnumTagSinglePayload for DefaultDescriptionAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultDescriptionAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE029ResolvableStringReferenceDateD033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6969530];
  v7 = MEMORY[0x1E69E6720];
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(0, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, v6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v21 - v12, &lazy cache variable for type metadata for Date?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v22, &v13[v15], &lazy cache variable for type metadata for Date?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v13, v10, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v13[v15], v3);
      lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v18, v3);
      v19(v10, v3);
      outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      return v17 & 1;
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
LABEL_6:
    _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_1(v13, &lazy cache variable for type metadata for (Date?, Date?), &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA23ContainerBackgroundKindO0D0V_Tt1B5(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  result = a2 == 6 && a1 == 6;
  if (v2 != 6)
  {
    if (v2 == 5)
    {
      v4 = a2 == 5;
    }

    else
    {
      v4 = v2 == a2;
    }

    if (a2 == 6)
    {
      return result;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA012SystemAccenteD033_AA5C9AAB6528C7C6B599DF55246DE53ALLV_Tt1B5(char a1, char a2)
{
  v2 = a2 == 10 && a1 == 10;
  if (a1 != 10 && a2 != 10)
  {
    return qword_18DDF6760[a1] == qword_18DDF6760[a2];
  }

  return v2;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE02__D22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 == a7)
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI32AnyAttributedTextValueConstraintV_Tt1g5(a1, a5))
    {
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt1g5(a2, a6);
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance HoverEffectContextKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018HoverEffectContextD033_B2E20BEC96D7E01EE3D55A38320E6294LLV_Tt1B5(v5, v7) & 1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance GlassEffectBackdropGroupNameKey(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_textShape(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1 != 2)
  {
    if (v2 == 2 || ((*a2 ^ *a1) & 1) != 0)
    {
      return 0;
    }

    return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  }

  return v2 == 2;
}

uint64_t EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized EnvironmentValues.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*EnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  EnvironmentValues.subscript.getter(a2, a3, a4);
  return EnvironmentValues.subscript.modify;
}

void EnvironmentValues.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized EnvironmentValues.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized EnvironmentValues.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t specialized EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    return (*(v9 + 16))(a2, v4, a1, a3, *(a4 + 8));
  }

  v11 = *(a4 + 8);

  return EnvironmentValues.setValue<A>(_:for:)(a1, a2, a3, v11);
}

void _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_1(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for HoverEffectContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance OpenSensitiveURLActionKey()
{

  return sub_18D3B9688();
}

void Bindable<A>.init(wrappedValue:)()
{
  swift_unknownObjectRelease();
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t OptionSet.setValue(_:for:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  if (v4)
  {
    (*(v2 + 16))(&v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  else
  {

    return dispatch thunk of SetAlgebra.subtract(_:)();
  }
}

uint64_t getEnumTagSinglePayload for CustomViewCountCache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 33))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomViewCountCache(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA018ScheduledAnimationI033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_TtB5()
{
  v1 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v1;
  v38 = *(v0 + 64);
  v2 = *(v0 + 16);
  v34 = *v0;
  v35 = v2;
  outlined init with copy of _ViewListCountInputs(v0, &v29);
  v3 = _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5Tm(&lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA26ScheduledAnimationModifier020_94C2570E898B27608B6L11D65EF8A1A07LLVySiGGG_Tt0B5, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationK033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Tt2B5);
  if (v3)
  {
    v4 = v3;
    v5 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v7 = *(&v36 + 1);
      v6 = v36;
      v8 = v37;
      v9 = BYTE8(v37);
      type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>();
      v11 = 0;
      do
      {
        if (*v5 == v10)
        {
          v12 = v5;
          if (v11)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            v13 = 0;
            goto LABEL_30;
          }
        }

        else
        {
          v12 = v11;
        }

        v5 = v5[3];
        v11 = v12;
      }

      while (v5);
      if (v12)
      {
        if ((*(v12 + 17) & 1) == 0 && (v9 & 1) == 0 && *(v0 + 8) == v6 && *(v0 + 16) == v7)
        {
          v13 = v12[1];
          if (*v0)
          {
            if (*(*v0 + 64) == v8)
            {
              goto LABEL_29;
            }
          }

          else if (!v8)
          {
LABEL_29:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            goto LABEL_30;
          }
        }

        v14 = v34;
        if (v34)
        {
          v14 = *(v34 + 64);
        }

        v15 = *v0;
        if (*v0)
        {
          v15 = *(v15 + 64);
        }

        if ((v9 & 1) != 0 || v8 != v15)
        {
          v14 = v8;
        }

        else
        {
          v9 = 0;
          v7 = v7;
        }

        *(&v36 + 1) = v7;
        *&v37 = v14;
        BYTE8(v37) = v9 & 1;
        v27 = v37;
        v28 = v38;
        v24 = v34;
        v25 = v35;
        v26 = v36;
        v21 = v36;
        v22 = v37;
        v23 = v38;
        v19 = v34;
        v20 = v35;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        outlined init with copy of _ViewListCountInputs(&v24, &v29);
        v4(&v29, &v19);
        v13 = v29;
        v16 = BYTE8(v29);
        v31 = v21;
        v32 = v22;
        v33 = v23;
        v29 = v19;
        v30 = v20;
        outlined destroy of _ViewListCountInputs(&v29);
        v12[1] = v13;
        *(v12 + 16) = v16;
        *(v12 + 17) = 0;
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        goto LABEL_29;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v24 = v34;
    v25 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v19 = v34;
    v20 = v35;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined init with copy of _ViewListCountInputs(&v24, &v29);
    v4(&v18, &v19);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v29 = v19;
    v30 = v20;
    outlined destroy of _ViewListCountInputs(&v29);
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v29 = v34;
  v30 = v35;
  outlined destroy of _ViewListCountInputs(&v29);
  return v13;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015TranslationKickI033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_TtB5()
{
  v1 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v1;
  v38 = *(v0 + 64);
  v2 = *(v0 + 16);
  v34 = *v0;
  v35 = v2;
  outlined init with copy of _ViewListCountInputs(v0, &v29);
  v3 = _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5Tm(&lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<TranslationKickModifier<Int>>>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt0B5, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015TranslationKickK033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt2B5);
  if (v3)
  {
    v4 = v3;
    v5 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v7 = *(&v36 + 1);
      v6 = v36;
      v8 = v37;
      v9 = BYTE8(v37);
      type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
      v11 = 0;
      do
      {
        if (*v5 == v10)
        {
          v12 = v5;
          if (v11)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            v13 = 0;
            goto LABEL_30;
          }
        }

        else
        {
          v12 = v11;
        }

        v5 = v5[3];
        v11 = v12;
      }

      while (v5);
      if (v12)
      {
        if ((*(v12 + 17) & 1) == 0 && (v9 & 1) == 0 && *(v0 + 8) == v6 && *(v0 + 16) == v7)
        {
          v13 = v12[1];
          if (*v0)
          {
            if (*(*v0 + 64) == v8)
            {
              goto LABEL_29;
            }
          }

          else if (!v8)
          {
LABEL_29:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            goto LABEL_30;
          }
        }

        v14 = v34;
        if (v34)
        {
          v14 = *(v34 + 64);
        }

        v15 = *v0;
        if (*v0)
        {
          v15 = *(v15 + 64);
        }

        if ((v9 & 1) != 0 || v8 != v15)
        {
          v14 = v8;
        }

        else
        {
          v9 = 0;
          v7 = v7;
        }

        *(&v36 + 1) = v7;
        *&v37 = v14;
        BYTE8(v37) = v9 & 1;
        v27 = v37;
        v28 = v38;
        v24 = v34;
        v25 = v35;
        v26 = v36;
        v21 = v36;
        v22 = v37;
        v23 = v38;
        v19 = v34;
        v20 = v35;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        outlined init with copy of _ViewListCountInputs(&v24, &v29);
        v4(&v29, &v19);
        v13 = v29;
        v16 = BYTE8(v29);
        v31 = v21;
        v32 = v22;
        v33 = v23;
        v29 = v19;
        v30 = v20;
        outlined destroy of _ViewListCountInputs(&v29);
        v12[1] = v13;
        *(v12 + 16) = v16;
        *(v12 + 17) = 0;
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        goto LABEL_29;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v24 = v34;
    v25 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v19 = v34;
    v20 = v35;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined init with copy of _ViewListCountInputs(&v24, &v29);
    v4(&v18, &v19);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v29 = v19;
    v30 = v20;
    outlined destroy of _ViewListCountInputs(&v29);
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v29 = v34;
  v30 = v35;
  outlined destroy of _ViewListCountInputs(&v29);
  return v13;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA010ScalePulseI033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_TtB5()
{
  v1 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v1;
  v38 = *(v0 + 64);
  v2 = *(v0 + 16);
  v34 = *v0;
  v35 = v2;
  outlined init with copy of _ViewListCountInputs(v0, &v29);
  v3 = _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5Tm(&lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>, type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>, _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA18ScalePulseModifier33_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt0B5, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA010ScalePulseK033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt2B5);
  if (v3)
  {
    v4 = v3;
    v5 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v7 = *(&v36 + 1);
      v6 = v36;
      v8 = v37;
      v9 = BYTE8(v37);
      type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>();
      v11 = 0;
      do
      {
        if (*v5 == v10)
        {
          v12 = v5;
          if (v11)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            v13 = 0;
            goto LABEL_30;
          }
        }

        else
        {
          v12 = v11;
        }

        v5 = v5[3];
        v11 = v12;
      }

      while (v5);
      if (v12)
      {
        if ((*(v12 + 17) & 1) == 0 && (v9 & 1) == 0 && *(v0 + 8) == v6 && *(v0 + 16) == v7)
        {
          v13 = v12[1];
          if (*v0)
          {
            if (*(*v0 + 64) == v8)
            {
              goto LABEL_29;
            }
          }

          else if (!v8)
          {
LABEL_29:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
            goto LABEL_30;
          }
        }

        v14 = v34;
        if (v34)
        {
          v14 = *(v34 + 64);
        }

        v15 = *v0;
        if (*v0)
        {
          v15 = *(v15 + 64);
        }

        if ((v9 & 1) != 0 || v8 != v15)
        {
          v14 = v8;
        }

        else
        {
          v9 = 0;
          v7 = v7;
        }

        *(&v36 + 1) = v7;
        *&v37 = v14;
        BYTE8(v37) = v9 & 1;
        v27 = v37;
        v28 = v38;
        v24 = v34;
        v25 = v35;
        v26 = v36;
        v21 = v36;
        v22 = v37;
        v23 = v38;
        v19 = v34;
        v20 = v35;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        outlined init with copy of _ViewListCountInputs(&v24, &v29);
        v4(&v29, &v19);
        v13 = v29;
        v16 = BYTE8(v29);
        v31 = v21;
        v32 = v22;
        v33 = v23;
        v29 = v19;
        v30 = v20;
        outlined destroy of _ViewListCountInputs(&v29);
        v12[1] = v13;
        *(v12 + 16) = v16;
        *(v12 + 17) = 0;
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
        goto LABEL_29;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v24 = v34;
    v25 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    v19 = v34;
    v20 = v35;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined init with copy of _ViewListCountInputs(&v24, &v29);
    v4(&v18, &v19);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v4);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v29 = v19;
    v30 = v20;
    outlined destroy of _ViewListCountInputs(&v29);
    v13 = v18;
  }

  else
  {
    v13 = 0;
  }

LABEL_30:
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v29 = v34;
  v30 = v35;
  outlined destroy of _ViewListCountInputs(&v29);
  return v13;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA016GlassEffectLocalI008_3DF70D9O23D7473F4D189A049B764CFEFLLVG_TtB5Tm(uint64_t (*a1)(uint64_t), unint64_t *a2, void (*a3)(void))
{
  v7 = *(v3 + 48);
  v43 = *(v3 + 32);
  v44 = v7;
  v45 = *(v3 + 64);
  v8 = *(v3 + 16);
  v41 = *v3;
  v42 = v8;
  v9 = outlined init with copy of _ViewListCountInputs(v3, &v36);
  v10 = a1(v9);
  if (v10)
  {
    v11 = v10;
    v12 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v13 = *(&v43 + 1);
      v24 = v43;
      v14 = v44;
      v15 = BYTE8(v44);
      _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(0, a2, a3);
      v17 = 0;
      do
      {
        if (*v12 == v16)
        {
          v18 = v12;
          if (v17)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
            v19 = 0;
            goto LABEL_30;
          }
        }

        else
        {
          v18 = v17;
        }

        v12 = v12[3];
        v17 = v18;
      }

      while (v12);
      if (v18)
      {
        if ((*(v18 + 17) & 1) == 0 && (v15 & 1) == 0 && *(v3 + 8) == v24 && *(v3 + 16) == v13)
        {
          v19 = v18[1];
          if (*v3)
          {
            if (*(*v3 + 64) == v14)
            {
              goto LABEL_29;
            }
          }

          else if (!v14)
          {
LABEL_29:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
            goto LABEL_30;
          }
        }

        v20 = v41;
        if (v41)
        {
          v20 = *(v41 + 64);
        }

        v21 = *v3;
        if (*v3)
        {
          v21 = *(v21 + 64);
        }

        if ((v15 & 1) != 0 || v14 != v21)
        {
          v20 = v14;
        }

        else
        {
          v15 = 0;
          v13 = v13;
        }

        *(&v43 + 1) = v13;
        *&v44 = v20;
        BYTE8(v44) = v15 & 1;
        v34 = v44;
        v35 = v45;
        v31 = v41;
        v32 = v42;
        v33 = v43;
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v26 = v41;
        v27 = v42;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
        outlined init with copy of _ViewListCountInputs(&v31, &v36);
        v11(&v36, &v26);
        v19 = v36;
        v22 = BYTE8(v36);
        v38 = v28;
        v39 = v29;
        v40 = v30;
        v36 = v26;
        v37 = v27;
        outlined destroy of _ViewListCountInputs(&v36);
        v18[1] = v19;
        *(v18 + 16) = v22;
        *(v18 + 17) = 0;
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
        goto LABEL_29;
      }
    }

    v33 = v43;
    v34 = v44;
    v35 = v45;
    v31 = v41;
    v32 = v42;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v26 = v41;
    v27 = v42;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
    outlined init with copy of _ViewListCountInputs(&v31, &v36);
    v11(&v25, &v26);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v36 = v26;
    v37 = v27;
    outlined destroy of _ViewListCountInputs(&v36);
    v19 = v25;
  }

  else
  {
    v19 = 0;
  }

LABEL_30:
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v36 = v41;
  v37 = v42;
  outlined destroy of _ViewListCountInputs(&v36);
  return v19;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015SafeAreaPaddingI0VG_TtB5Tm(uint64_t (*a1)(uint64_t), unint64_t *a2, void (*a3)(void))
{
  v7 = *(v3 + 48);
  v44 = *(v3 + 32);
  v45 = v7;
  v46 = *(v3 + 64);
  v8 = *(v3 + 16);
  v42 = *v3;
  v43 = v8;
  v9 = outlined init with copy of _ViewListCountInputs(v3, &v37);
  v10 = a1(v9);
  if (v10)
  {
    v11 = v10;
    v12 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {
      goto LABEL_18;
    }

    v13 = *(&v44 + 1);
    v24 = v44;
    v14 = v45;
    v15 = BYTE8(v45);
    _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(0, a2, a3);
    v17 = 0;
    do
    {
      if (*v12 == v16)
      {
        v18 = v12;
        if (v17)
        {
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
          v19 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v18 = v17;
      }

      v12 = v12[3];
      v17 = v18;
    }

    while (v12);
    if (!v18)
    {
LABEL_18:
      v34 = v44;
      v35 = v45;
      v36 = v46;
      v32 = v42;
      v33 = v43;
      v29 = v44;
      v30 = v45;
      v31 = v46;
      v27 = v42;
      v28 = v43;
      outlined init with copy of _ViewListCountInputs(&v32, &v37);
      v11(&v25, &v27);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
      v39 = v29;
      v40 = v30;
      v41 = v31;
      v37 = v27;
      v38 = v28;
      outlined destroy of _ViewListCountInputs(&v37);
      v19 = v25;
      goto LABEL_29;
    }

    if ((*(v18 + 17) & 1) == 0 && (v15 & 1) == 0 && *(v3 + 8) == v24 && *(v3 + 16) == v13)
    {
      v19 = v18[1];
      if (*v3)
      {
        if (*(*v3 + 64) == v14)
        {
LABEL_17:
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
          goto LABEL_29;
        }
      }

      else if (!v14)
      {
        goto LABEL_17;
      }
    }

    v20 = v42;
    if (v42)
    {
      v20 = *(v42 + 64);
    }

    v21 = *v3;
    if (*v3)
    {
      v21 = *(v21 + 64);
    }

    if ((v15 & 1) != 0 || v14 != v21)
    {
      v20 = v14;
    }

    else
    {
      v15 = 0;
      v13 = v13;
    }

    *(&v44 + 1) = v13;
    *&v45 = v20;
    BYTE8(v45) = v15 & 1;
    v35 = v45;
    v36 = v46;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v27 = v42;
    v28 = v43;
    outlined init with copy of _ViewListCountInputs(&v32, &v37);
    v11(&v25, &v27);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11);
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v37 = v27;
    v38 = v28;
    outlined destroy of _ViewListCountInputs(&v37);
    v19 = v25;
    v22 = v26;
    v18[1] = v25;
    *(v18 + 8) = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_29:
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v37 = v42;
  v38 = v43;
  outlined destroy of _ViewListCountInputs(&v37);
  return v19;
}

uint64_t _ViewListCountInputs.cachedViewListCount<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = v2[3];
  v44 = v2[2];
  v45 = v5;
  v6 = v2[3];
  v46 = v2[4];
  v7 = v2[1];
  v42 = *v2;
  v43 = v7;
  v39 = v44;
  v40 = v6;
  v41 = v2[4];
  v37 = v42;
  v38 = v4;
  v8 = type metadata accessor for BodyCountInput();
  outlined init with copy of _ViewListCountInputs(&v42, &v32);
  type metadata accessor for (_:)();
  _ViewListCountInputs.popLast<A, B>(_:)(v8, &protocol witness table for BodyCountInput<A>, &v27);
  v9 = v27;
  if (v27)
  {
    v10 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {
      goto LABEL_20;
    }

    v11 = 0;
    v12 = *(&v39 + 1);
    v13 = BYTE8(v40);
    do
    {
      if (*v10 == a2)
      {
        v14 = v10;
        if (v11)
        {
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v27);
          v15 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v14 = v11;
      }

      v10 = v10[3];
      v11 = v14;
    }

    while (v10);
    if (v14)
    {
      if ((*(v14 + 17) & 1) == 0 && (BYTE8(v40) & 1) == 0 && *(&v42 + 1) == v39 && v43 == DWORD2(v39))
      {
        v15 = v14[1];
        if (v42)
        {
          if (*(v42 + 64) == v40)
          {
            goto LABEL_30;
          }
        }

        else if (!v40)
        {
LABEL_30:
          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v27);
          goto LABEL_23;
        }
      }

      v16 = v37;
      if (v37)
      {
        v16 = *(v37 + 64);
      }

      v17 = v42;
      if (v42)
      {
        v17 = *(v42 + 64);
      }

      if ((BYTE8(v40) & 1) != 0 || v40 != v17)
      {
        v16 = v40;
      }

      else
      {
        v13 = 0;
        v12 = DWORD2(v39);
      }

      *(&v39 + 1) = v12;
      *&v40 = v16;
      BYTE8(v40) = v13 & 1;
      v30 = v40;
      v31 = v41;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v22 = v37;
      v23 = v38;
      outlined init with copy of _ViewListCountInputs(&v27, &v32);
      v9(&v20, &v22);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9);
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v32 = v22;
      v33 = v23;
      outlined destroy of _ViewListCountInputs(&v32);
      v15 = v20;
      v18 = v21;
      v14[1] = v20;
      *(v14 + 8) = v18;
    }

    else
    {
LABEL_20:
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v27 = v37;
      v28 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v22 = v37;
      v23 = v38;
      outlined init with copy of _ViewListCountInputs(&v27, &v32);
      v9(&v20, &v22);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v9);
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v32 = v22;
      v33 = v23;
      outlined destroy of _ViewListCountInputs(&v32);
      v15 = v20;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_23:
  v34 = v39;
  v35 = v40;
  v36 = v41;
  v32 = v37;
  v33 = v38;
  outlined destroy of _ViewListCountInputs(&v32);
  return v15;
}

uint64_t static _ViewListCountInputs.withBodyCache<A>(type:inputs:content:body:)(unint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *))
{
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v14[4] = a2[4];
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = closure #1 in static _ViewListCountInputs.withBodyCache<A>(type:inputs:content:body:)(_s7SwiftUI20_ViewListCountInputsVSiSgIgnd_AcDIegnd_TRTA_0, v11, v14, a1, a5);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if ((a5 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t _ViewListCountInputs.withUniqueBody<A>(type:body:)(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  v3 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = v2[3];
  v35 = v2[2];
  v36 = v5;
  v37 = v2[4];
  v6 = v2[1];
  v34[0] = *v2;
  v34[1] = v6;
  v7 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    v9 = *(&v35 + 1);
    v8 = v35;
    v10 = v36;
    v11 = *(&v6 + 1);
    v12 = BYTE8(v36);
    while (*v11 != a1)
    {
      v11 = v11[3];
      if (!v11)
      {
        v22 = a1;
        v23 = 0;
        v24 = 256;
        v25 = *(&v6 + 1);
        v7 = &v22;
        v12 = BYTE8(v36) & 1;
        v13 = *(v2 + 2);
        v26 = *v2;
        *&v27 = v13;
        *(&v27 + 1) = &v22;
        v28 = v35;
        *v29 = v36;
        v29[8] = BYTE8(v36) & 1;
        *&v29[9] = *(v2 + 57);
        *&v29[24] = *(v2 + 9);
        v19 = v35;
        v20 = *v29;
        v21 = *&v29[16];
        v17 = v26;
        v18 = v27;
        outlined init with copy of _ViewListCountInputs(v34, &v30);
        outlined init with copy of _ViewListCountInputs(&v26, &v30);
        v14 = a2(&v17);
        v32 = v19;
        *v33 = v20;
        *&v33[16] = v21;
        v30 = v17;
        v31 = v18;
        outlined destroy of _ViewListCountInputs(&v30);
        goto LABEL_8;
      }
    }

    outlined init with copy of _ViewListCountInputs(v34, &v30);
    v14 = 0;
  }

  else
  {
    v22 = a1;
    v23 = 0;
    v24 = 256;
    v25 = 0;
    v7 = &v22;
    v15 = *(v2 + 2);
    v26 = *v2;
    *&v27 = v15;
    *(&v27 + 1) = &v22;
    *v29 = 0;
    v28 = 0uLL;
    v12 = 1;
    v29[8] = 1;
    *&v29[9] = *(v2 + 57);
    *&v29[24] = *(v2 + 9);
    v19 = 0uLL;
    v20 = *v29;
    v21 = *&v29[16];
    v17 = v26;
    v18 = v27;
    outlined init with copy of _ViewListCountInputs(v34, &v30);
    outlined init with copy of _ViewListCountInputs(&v26, &v30);
    v14 = a2(&v17);
    v32 = v19;
    *v33 = v20;
    *&v33[16] = v21;
    v30 = v17;
    v31 = v18;
    outlined destroy of _ViewListCountInputs(&v30);
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

LABEL_8:
  v30 = *v3;
  *&v31 = *(v3 + 2);
  *(&v31 + 1) = v7;
  *&v32 = v8;
  *(&v32 + 1) = v9;
  *v33 = v10;
  v33[8] = v12;
  *&v33[9] = *(v3 + 57);
  *&v33[24] = *(v3 + 9);
  outlined destroy of _ViewListCountInputs(&v30);
  return v14;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA020GlassTransitionStateN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassTransitionStateModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
  BloomFilter.init(hashValue:)(v6);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA28GlassTransitionStateModifier04_D12L27F25A0BD65FFBD3A7636B60067DFLLVGG_Tt0B5(v5, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015TranslationKickN033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_SiSgACcTt0g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void *, void *, _BYTE *))
{
  v9 = v6;
  v12 = *v6;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>(0, a3, a4);
  BloomFilter.init(hashValue:)(v13);
  v14 = a5(v12, v19);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v15;

  a6(v9, v16, v18);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA04KickN033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<KickModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
  BloomFilter.init(hashValue:)(v6);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt0B5(v5, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA04KickK033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectShapeN033_62A32D59B8A902A88963544196023CF7LLVGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectShapeModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
  BloomFilter.init(hashValue:)(v6);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGG_Tt0B5(v5, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeK033_62A32D59B8A902A88963544196023CF7LLVGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015FlexInteractionN0VGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexInteractionModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier);
  BloomFilter.init(hashValue:)(v6);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23FlexInteractionModifierVGG_Tt0B5(v5, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015FlexInteractionK0VGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectLocalN008_3DF70D9T23D7473F4D189A049B764CFEFLLVGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v6);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v5, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalK008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
  BloomFilter.init(hashValue:)(v5);

  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23SafeAreaPaddingModifierVGG_Tt0B5(v6, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingK0VGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameN0VGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
  BloomFilter.init(hashValue:)(v5);

  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA27FlexibleButtonFrameModifierVGG_Tt0B5(v6, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameK0VGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VGG_SiSgACcTt0g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  BloomFilter.init(hashValue:)(v5);

  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA024ContentCaptureProtectionZ8ModifierVGG_Tt0B5(v6, v12);
  if (v7)
  {
    v8 = v7[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA0l17CaptureProtectionjK0VGG_Tt2B5(v2, v9, v11);
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA018ScheduledAnimationN033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_SiSgACcTt0g5Tm(unint64_t *a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void *, uint64_t, _BYTE *))
{
  v7 = v4;
  v8 = *v4;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>(0, a1, a2);
  BloomFilter.init(hashValue:)(v9);
  v10 = a3(v8, v16);
  if (v10 && (v11 = *(v10 + 72)) != 0)
  {
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  a4(v7, v12, v15);

  return v13;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA04KickN033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_SiSgACcTt0g5()
{
  v1 = *v0;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<KickModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA04KickK033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA020GlassTransitionStateN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_SiSgACcTt0g5()
{
  v1 = *v0;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassTransitionStateModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA28GlassTransitionStateModifier04_D12L27F25A0BD65FFBD3A7636B60067DFLLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateK033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectShapeN033_62A32D59B8A902A88963544196023CF7LLVGG_SiSgACcTt0g5()
{
  v1 = *v0;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectShapeModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeK033_62A32D59B8A902A88963544196023CF7LLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015FlexInteractionN0VGG_SiSgACcTt0g5()
{
  v1 = *v0;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<FlexInteractionModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23FlexInteractionModifierVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015FlexInteractionK0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA016GlassEffectLocalN008_3DF70D9T23D7473F4D189A049B764CFEFLLVGG_SiSgACcTt0g5()
{
  v1 = *v0;
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalK008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VGG_SiSgACcTt0g5()
{
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
  BloomFilter.init(hashValue:)(v1);

  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA23SafeAreaPaddingModifierVGG_Tt0B5(v2, v9);
  if (!v3)
  {

    goto LABEL_5;
  }

  v4 = v3[9];

  if (!v4)
  {
LABEL_5:
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 16);

LABEL_6:

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingK0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VGG_SiSgACcTt0g5()
{
  type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(0, &lazy cache variable for type metadata for BodyCountInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  BloomFilter.init(hashValue:)(v1);

  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14BodyCountInputVyAA21_ViewModifier_ContentVyAA024ContentCaptureProtectionZ8ModifierVGG_Tt0B5(v2, v9);
  if (!v3)
  {

    goto LABEL_5;
  }

  v4 = v3[9];

  if (!v4)
  {
LABEL_5:
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 32);
  v6 = *(v4 + 16);

LABEL_6:

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14BodyCountInputVyAA21_ViewModifier_ContentVyAA0l17CaptureProtectionjK0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t *CustomViewCountCache.updateOptions(inputs:previousID:)(uint64_t *result, void *a2)
{
  v3 = *result;
  if (*(v2 + 32))
  {
    v4 = *(result + 4);
    if (v3)
    {
      v3 = *(v3 + 64);
    }

    *(v2 + 8) = result[1];
    goto LABEL_9;
  }

  if (v3)
  {
    v3 = *(v3 + 64);
  }

  if (*(v2 + 24) == *a2)
  {
    v4 = *(v2 + 16);
LABEL_9:
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE13withBodyCache4type6inputs7content4bodySiSgxm_AciCXEAiCXEtlFZA2iCcXEfU_AA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VG_Tt1g503_s7a4UI12cn10PAAE13viewd30Count6inputs4bodySiSgAA01_cfG6f23V_AgIXEtFZAgIXEfU_AA015pqR7D0V_TG5Tf1nnc_n(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(0, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
  v7 = v6;
  v8 = a3[3];
  *&v37[16] = a3[2];
  *&v37[32] = v8;
  *&v37[48] = a3[4];
  v9 = a3[1];
  v36 = *a3;
  *v37 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  outlined init with copy of _ViewListCountInputs(a3, &v38);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VGG_SiSgACcTt0g5(_s7SwiftUI20_ViewListCountInputsVSiSgIegnd_AcDIegnr_TRTA_0, v10);

  if (*&v37[8])
  {
    v11 = *&v37[16];
    v23[0] = v7;
    v23[1] = 0;
    v24 = 256;
    v25 = *&v37[8];
    v31 = v36;
    v32 = *v37;
    v33 = *&v37[16];
    v34 = *&v37[32];
    v35 = *&v37[48];
    if (*a3)
    {
      v12 = *(*a3 + 64);
    }

    else
    {
      v12 = 0;
    }

    if (v37[40])
    {
      if (v31)
      {
        v16 = *(v31 + 64);
      }

      else
      {
        v16 = 0;
      }

      v11 = *(&v31 + 1);
      v18 = v32;
    }

    else
    {
      if (v31)
      {
        v17 = *(v31 + 64);
      }

      else
      {
        v17 = 0;
      }

      if (*&v37[32] == v12)
      {
        v18 = *&v37[24];
      }

      else
      {
        v18 = *&v37[24];
      }

      if (*&v37[32] == v12)
      {
        v16 = v17;
      }

      else
      {
        v16 = *&v37[32];
      }
    }

    v26 = v31;
    v27 = v32;
    v28 = *&v37[4];
    v29 = *&v37[20];
    *v30 = *&v37[36];
    *&v30[12] = *&v37[48];
    outlined init with copy of _ViewListCountInputs(&v31, &v38);
    outlined destroy of _ViewListCountInputs(&v26);
    *&v37[8] = v23;
    *&v37[16] = v11;
    *&v37[24] = v18;
    *&v37[32] = v16;
    v37[40] = 0;
    v38 = v36;
    v39 = *v37;
    v40 = *&v37[16];
    v41 = *&v37[32];
    v42 = *&v37[48];
    outlined init with copy of _ViewListCountInputs(&v38, v20);
    v14 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015SafeAreaPaddingI0VG_TtB5Tm(_s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VGG_SiSgACcTt0g5, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
    v15 = &v38;
  }

  else
  {
    v31 = v36;
    v32 = *v37;
    v33 = *&v37[16];
    v34 = *&v37[32];
    v35 = *&v37[48];
    v20[0] = v7;
    v20[1] = 0;
    v21 = 256;
    v22 = 0;
    v13 = v36;
    if (v36)
    {
      v13 = *(v31 + 64);
    }

    *&v37[8] = v20;
    *&v37[16] = *(&v31 + 1);
    *&v37[24] = v32;
    *&v37[32] = v13;
    v37[40] = 0;
    v38 = v36;
    v39 = *v37;
    v41 = *&v37[32];
    v42 = *&v37[48];
    v40 = *&v37[16];
    outlined init with copy of _ViewListCountInputs(&v31, &v26);
    outlined init with copy of _ViewListCountInputs(&v38, &v26);
    v14 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015SafeAreaPaddingI0VG_TtB5Tm(_s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA015SafeAreaPaddingN0VGG_SiSgACcTt0g5, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier);
    outlined destroy of _ViewListCountInputs(&v38);
    v15 = &v31;
  }

  outlined destroy of _ViewListCountInputs(v15);
  v33 = *&v37[16];
  v34 = *&v37[32];
  v35 = *&v37[48];
  v31 = v36;
  v32 = *v37;
  outlined destroy of _ViewListCountInputs(&v31);
  return v14;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE13withBodyCache4type6inputs7content4bodySiSgxm_AciCXEAiCXEtlFZA2iCcXEfU_AA01_C16Modifier_ContentVyAA019FlexibleButtonFrameN0VG_Tt1g503_s7a4UI12cn10PAAE13viewd30Count6inputs4bodySiSgAA01_cfG6f23V_AgIXEtFZAgIXEfU_AA019pqR7D0V_TG5Tf1nnc_n(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier);
  v7 = v6;
  v8 = a3[3];
  *&v46[16] = a3[2];
  *&v46[32] = v8;
  *&v46[48] = a3[4];
  v9 = a3[1];
  v45 = *a3;
  *v46 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  outlined init with copy of _ViewListCountInputs(a3, &v40);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameN0VGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v10);

  if (*&v46[8])
  {
    v11 = *&v46[16];
    v25[0] = v7;
    v25[1] = 0;
    v26 = 256;
    v27 = *&v46[8];
    v40 = v45;
    v41 = *v46;
    v42 = *&v46[16];
    v43 = *&v46[32];
    v44 = *&v46[48];
    if (*a3)
    {
      v12 = *(*a3 + 64);
      v13 = *(&v40 + 1);
      if (v46[40])
      {
LABEL_4:
        if (v45)
        {
          v14 = *(v45 + 64);
        }

        else
        {
          v14 = 0;
        }

        v11 = v13;
        v18 = v41;
LABEL_21:
        *&v33 = v40;
        *(&v33 + 1) = v13;
        LODWORD(v34[0]) = *v46;
        *(v34 + 4) = *&v46[4];
        *(&v34[1] + 4) = *&v46[20];
        *(&v34[2] + 4) = *&v46[36];
        v34[3] = *&v46[48];
        outlined init with copy of _ViewListCountInputs(&v40, &v35);
        outlined destroy of _ViewListCountInputs(&v33);
        *&v46[8] = v25;
        *&v46[16] = v11;
        *&v46[24] = v18;
        *&v46[32] = v14;
        v46[40] = 0;
        v38 = *&v46[32];
        v39 = *&v46[48];
        v35 = v45;
        v36 = *v46;
        v37 = *&v46[16];
        v30 = *&v46[16];
        v31 = *&v46[32];
        v32 = *&v46[48];
        v28 = v45;
        v29 = *v46;
        outlined init with copy of _ViewListCountInputs(&v35, &v20);
        outlined init with copy of _ViewListCountInputs(&v35, &v20);
        outlined init with copy of _ViewListCountInputs(&v35, &v20);
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v28, 0);
        outlined destroy of _ViewListCountInputs(&v35);
        v22 = v30;
        v23 = v31;
        v24 = v32;
        v20 = v28;
        v21 = v29;
        outlined destroy of _ViewListCountInputs(&v20);
        v16 = &v35;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(&v40 + 1);
      if (v46[40])
      {
        goto LABEL_4;
      }
    }

    if (v45)
    {
      v17 = *(v45 + 64);
    }

    else
    {
      v17 = 0;
    }

    if (*&v46[32] == v12)
    {
      v18 = *&v46[24];
    }

    else
    {
      v18 = *&v46[24];
    }

    if (*&v46[32] == v12)
    {
      v14 = v17;
    }

    else
    {
      v14 = *&v46[32];
    }

    goto LABEL_21;
  }

  v40 = v45;
  v41 = *v46;
  v42 = *&v46[16];
  v43 = *&v46[32];
  v44 = *&v46[48];
  v20 = v7;
  LOWORD(v21) = 256;
  *(&v21 + 1) = 0;
  v15 = v45;
  if (v45)
  {
    v15 = *(v45 + 64);
  }

  *&v46[8] = &v20;
  *&v46[16] = *(&v40 + 1);
  *&v46[24] = v41;
  *&v46[32] = v15;
  v46[40] = 0;
  v38 = *&v46[32];
  v39 = *&v46[48];
  v36 = *v46;
  v37 = *&v46[16];
  v34[1] = *&v46[16];
  v34[2] = *&v46[32];
  v34[3] = *&v46[48];
  v35 = v45;
  v33 = v45;
  v34[0] = *v46;
  outlined init with copy of _ViewListCountInputs(&v35, &v28);
  outlined init with copy of _ViewListCountInputs(&v35, &v28);
  outlined init with copy of _ViewListCountInputs(&v35, &v28);
  outlined init with copy of _ViewListCountInputs(&v40, &v28);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v33, 0);
  outlined destroy of _ViewListCountInputs(&v35);
  v30 = v34[1];
  v31 = v34[2];
  v32 = v34[3];
  v28 = v33;
  v29 = v34[0];
  outlined destroy of _ViewListCountInputs(&v28);
  outlined destroy of _ViewListCountInputs(&v35);
  v16 = &v40;
LABEL_22:
  outlined destroy of _ViewListCountInputs(v16);
  v42 = *&v46[16];
  v43 = *&v46[32];
  v44 = *&v46[48];
  v40 = v45;
  v41 = *v46;
  outlined destroy of _ViewListCountInputs(&v40);
  return 1;
}

uint64_t _s7SwiftUI20_ViewListCountInputsVAAE13withBodyCache4type6inputs7content4bodySiSgxm_AciCXEAiCXEtlFZA2iCcXEfU_AA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VG_Tt1g503_s7a4UI12cn10PAAE13viewd30Count6inputs4bodySiSgAA01_cfG6f23V_AgIXEtFZAgIXEfU_AA024oP18ProtectioncD0V_TG5Tf1nnc_n(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(0, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
  v7 = v6;
  v8 = a3[3];
  *&v37[16] = a3[2];
  *&v37[32] = v8;
  *&v37[48] = a3[4];
  v9 = a3[1];
  v36 = *a3;
  *v37 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  outlined init with copy of _ViewListCountInputs(a3, &v38);
  _s7SwiftUI20_ViewListCountInputsV6append_2toyq__xmtAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VGG_SiSgACcTt0g5(thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply, v10);

  if (*&v37[8])
  {
    v11 = *&v37[16];
    v23[0] = v7;
    v23[1] = 0;
    v24 = 256;
    v25 = *&v37[8];
    v31 = v36;
    v32 = *v37;
    v33 = *&v37[16];
    v34 = *&v37[32];
    v35 = *&v37[48];
    if (*a3)
    {
      v12 = *(*a3 + 64);
    }

    else
    {
      v12 = 0;
    }

    if (v37[40])
    {
      if (v31)
      {
        v16 = *(v31 + 64);
      }

      else
      {
        v16 = 0;
      }

      v11 = *(&v31 + 1);
      v18 = v32;
    }

    else
    {
      if (v31)
      {
        v17 = *(v31 + 64);
      }

      else
      {
        v17 = 0;
      }

      if (*&v37[32] == v12)
      {
        v18 = *&v37[24];
      }

      else
      {
        v18 = *&v37[24];
      }

      if (*&v37[32] == v12)
      {
        v16 = v17;
      }

      else
      {
        v16 = *&v37[32];
      }
    }

    v26 = v31;
    v27 = v32;
    v28 = *&v37[4];
    v29 = *&v37[20];
    *v30 = *&v37[36];
    *&v30[12] = *&v37[48];
    outlined init with copy of _ViewListCountInputs(&v31, &v38);
    outlined destroy of _ViewListCountInputs(&v26);
    *&v37[8] = v23;
    *&v37[16] = v11;
    *&v37[24] = v18;
    *&v37[32] = v16;
    v37[40] = 0;
    v38 = v36;
    v39 = *v37;
    v40 = *&v37[16];
    v41 = *&v37[32];
    v42 = *&v37[48];
    outlined init with copy of _ViewListCountInputs(&v38, v20);
    v14 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015SafeAreaPaddingI0VG_TtB5Tm(_s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VGG_SiSgACcTt0g5, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
    v15 = &v38;
  }

  else
  {
    v31 = v36;
    v32 = *v37;
    v33 = *&v37[16];
    v34 = *&v37[32];
    v35 = *&v37[48];
    v20[0] = v7;
    v20[1] = 0;
    v21 = 256;
    v22 = 0;
    v13 = v36;
    if (v36)
    {
      v13 = *(v31 + 64);
    }

    *&v37[8] = v20;
    *&v37[16] = *(&v31 + 1);
    *&v37[24] = v32;
    *&v37[32] = v13;
    v37[40] = 0;
    v38 = v36;
    v39 = *v37;
    v41 = *&v37[32];
    v42 = *&v37[48];
    v40 = *&v37[16];
    outlined init with copy of _ViewListCountInputs(&v31, &v26);
    outlined init with copy of _ViewListCountInputs(&v38, &v26);
    v14 = _s7SwiftUI20_ViewListCountInputsVAAE06cachedcdE04typeSiSgxm_tlFAA01_C16Modifier_ContentVyAA015SafeAreaPaddingI0VG_TtB5Tm(_s7SwiftUI20_ViewListCountInputsV7popLastyq_SgxmAA10GraphInputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyeJ0VyAA01_C16Modifier_ContentVyAA0o17CaptureProtectioncN0VGG_SiSgACcTt0g5, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier);
    outlined destroy of _ViewListCountInputs(&v38);
    v15 = &v31;
  }

  outlined destroy of _ViewListCountInputs(v15);
  v33 = *&v37[16];
  v34 = *&v37[32];
  v35 = *&v37[48];
  v31 = v36;
  v32 = *v37;
  outlined destroy of _ViewListCountInputs(&v31);
  return v14;
}

uint64_t closure #1 in static _ViewListCountInputs.withBodyCache<A>(type:inputs:content:body:)(uint64_t a1, uint64_t a2, _OWORD *a3, unint64_t a4, uint64_t (*a5)(__int128 *))
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3[3];
  *&v50[16] = a3[2];
  *&v50[32] = v10;
  *&v50[48] = a3[4];
  v11 = a3[1];
  v49 = *a3;
  *v50 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *&v39 = thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)partial apply;
  *(&v39 + 1) = v12;
  v13 = type metadata accessor for BodyCountInput();

  outlined init with copy of _ViewListCountInputs(a3, &v44);
  v14 = type metadata accessor for (_:)();
  _ViewListCountInputs.append<A, B>(_:to:)(&v39, v13, v13, v14, &protocol witness table for BodyCountInput<A>);

  if (*&v50[8])
  {
    v15 = *&v50[16];
    v29[0] = a4;
    v29[1] = 0;
    v30 = 256;
    v31 = *&v50[8];
    v44 = v49;
    v45 = *v50;
    v46 = *&v50[16];
    v47 = *&v50[32];
    v48 = *&v50[48];
    if (*a3)
    {
      v16 = *(*a3 + 64);
    }

    else
    {
      v16 = 0;
    }

    if (v50[40])
    {
      if (v49)
      {
        v20 = *(v49 + 64);
      }

      else
      {
        v20 = 0;
      }

      v15 = *(&v44 + 1);
      v22 = v45;
    }

    else
    {
      if (v49)
      {
        v21 = *(v49 + 64);
      }

      else
      {
        v21 = 0;
      }

      if (*&v50[32] == v16)
      {
        v22 = *&v50[24];
      }

      else
      {
        v22 = *&v50[24];
      }

      if (*&v50[32] == v16)
      {
        v20 = v21;
      }

      else
      {
        v20 = *&v50[32];
      }
    }

    v32 = v44;
    *v33 = *v50;
    *&v33[4] = *&v50[4];
    *&v33[20] = *&v50[20];
    *&v33[36] = *&v50[36];
    *&v33[48] = *&v50[48];
    outlined init with copy of _ViewListCountInputs(&v44, &v39);
    outlined destroy of _ViewListCountInputs(&v32);
    *&v50[8] = v29;
    *&v50[16] = v15;
    *&v50[24] = v22;
    *&v50[32] = v20;
    v50[40] = 0;
    v37 = *&v50[32];
    v38 = *&v50[48];
    v34 = v49;
    v35 = *v50;
    v36 = *&v50[16];
    v26 = *&v50[16];
    v27 = *&v50[32];
    v28 = *&v50[48];
    v24 = v49;
    v25 = *v50;
    outlined init with copy of _ViewListCountInputs(&v34, &v39);
    v18 = a5(&v24);
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v39 = v24;
    v40 = v25;
    v19 = &v39;
  }

  else
  {
    v44 = v49;
    v45 = *v50;
    v46 = *&v50[16];
    v47 = *&v50[32];
    v48 = *&v50[48];
    v24 = a4;
    LOWORD(v25) = 256;
    *(&v25 + 1) = 0;
    v17 = v49;
    if (v49)
    {
      v17 = *(v49 + 64);
    }

    *&v50[8] = &v24;
    *&v50[16] = *(&v44 + 1);
    *&v50[24] = v45;
    *&v50[32] = v17;
    v50[40] = 0;
    v37 = *&v50[32];
    v38 = *&v50[48];
    v34 = v49;
    v35 = *v50;
    v36 = *&v50[16];
    *&v33[16] = *&v50[16];
    *&v33[32] = *&v50[32];
    *&v33[48] = *&v50[48];
    v32 = v49;
    *v33 = *v50;
    outlined init with copy of _ViewListCountInputs(&v44, &v39);
    outlined init with copy of _ViewListCountInputs(&v34, &v39);
    v18 = a5(&v32);
    v41 = *&v33[16];
    v42 = *&v33[32];
    v43 = *&v33[48];
    v39 = v32;
    v40 = *v33;
    outlined destroy of _ViewListCountInputs(&v39);
    v19 = &v44;
  }

  outlined destroy of _ViewListCountInputs(v19);
  v46 = *&v50[16];
  v47 = *&v50[32];
  v48 = *&v50[48];
  v44 = v49;
  v45 = *v50;
  outlined destroy of _ViewListCountInputs(&v44);
  return v18;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed _ViewListCountInputs) -> (@unowned Int?)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<SafeAreaPaddingModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(255, a3, a4);
    v5 = type metadata accessor for BodyCountInput();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CustomViewCountCache.Count(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CustomViewCountCache.Count(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void type metadata accessor for BodyCountInput<_ViewModifier_Content<ScalePulseModifier<Int>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for BodyCountInput();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t isLinkedOnOrAfter(_:)(unsigned int a1)
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= a1;
  }
}

uint64_t isDeployedOnOrAfter(_:)(unsigned int a1)
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    return dyld_program_minos_at_least();
  }

  else
  {
    return dword_1ED53C520 >= a1;
  }
}

uint64_t Semantics.prior.getter(int a1)
{
  v1 = a1 != 0;
  result = (a1 - 1);
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance _SemanticFeature<A>(uint64_t a1)
{
  v1 = static _SemanticFeature.introduced.getter(*(a1 + 16), *(a1 + 24));
  swift_getWitnessTable();
  if (static SemanticFeature.requirement.getter())
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C524)
    {
      return dyld_program_minos_at_least();
    }

    v3 = dword_1ED53C520;
  }

  else
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      return dyld_program_sdk_at_least();
    }

    v3 = static Semantics.forced;
  }

  return v3 >= v1;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance Semantics.DismissPopsInNavigationSplitViewRoots()
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v0 = static Semantics.DismissPopsInNavigationSplitViewRoots.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    return dyld_program_minos_at_least();
  }

  else
  {
    return dword_1ED53C520 >= v0;
  }
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance EnabledFeature()
{
  if (one-time initialization token for introduced != -1)
  {
    swift_once();
  }

  v0 = static EnabledFeature.introduced;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v0;
  }
}

uint64_t Semantics.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v0 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  v1 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v1);

  return v3;
}

Swift::Int Semantics.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Semantics()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v0 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  v1 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v1);

  return v3;
}

Swift::Int SemanticRequirement.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t Semantics.Forced.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for firstRelease != -1)
  {
    swift_once();
  }

  v2 = static Semantics.firstRelease;
  result = dyld_program_sdk_at_least();
  if (result)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  *a1 = v4;
  *(a1 + 4) = result;
  *(a1 + 8) = v4;
  *(a1 + 12) = result;
  return result;
}

uint64_t static Semantics.forced.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_1ED53C51C;
  v4 = dword_1ED53C520;
  v5 = byte_1ED53C524;
  *a1 = static Semantics.forced;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return result;
}

uint64_t static Semantics.forced.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static Semantics.forced = v1;
  byte_1ED53C51C = v2;
  dword_1ED53C520 = v3;
  byte_1ED53C524 = v4;
  return result;
}

uint64_t (*static Semantics.forced.modify())()
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t Semantics.test<A>(as:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, int a4)
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *(v7 + 4);
  v6(v12, 0);
  swift_endAccess();
  swift_beginAccess();
  v13 = a4;
  v14 = 0;
  swift_setAtWritableKeyPath();
  v10 = swift_endAccess();
  a2(v10);
  swift_beginAccess();
  v13 = v8;
  v14 = v9;
  swift_setAtWritableKeyPath();
  return swift_endAccess();
}

uint64_t Semantics.Forced.sdk.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Semantics.Forced.deploymentTarget.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t one-time initialization function for v1_3_1()
{
  result = swiftUI_v1_3_1_os_versions();
  static Semantics.v1_3_1 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v1_4()
{
  result = swiftUI_v1_4_os_versions();
  static Semantics.v1_4 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v3_4()
{
  result = swiftUI_v3_4_os_versions();
  static Semantics.v3_4 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v5_2()
{
  result = swiftUI_v5_2_os_versions();
  static Semantics.v5_2 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v7_1()
{
  result = swiftUI_v7_1_os_versions();
  static Semantics.v7_1 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v7_2()
{
  result = swiftUI_v7_2_os_versions();
  static Semantics.v7_2 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v7_4()
{
  result = swiftUI_v7_4_os_versions();
  static Semantics.v7_4 = HIDWORD(result);
  return result;
}

uint64_t one-time initialization function for v8()
{
  result = swiftUI_v8_0_os_versions();
  static Semantics.v8 = HIDWORD(result);
  return result;
}

uint64_t static SemanticsIsLinkedOnOrAfter.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    return dyld_program_sdk_at_least();
  }

  else
  {
    return static Semantics.forced >= v2;
  }
}

uint64_t one-time initialization function for semantic(uint64_t a1)
{
  return one-time initialization function for introduced(a1, &one-time initialization token for v2, &static Semantics.v2, &static Semantics_v2.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v2_1, &static Semantics.v2_1, &static Semantics_v2_1.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v2_3, &static Semantics.v2_3, &static Semantics_v2_3.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v3, &static Semantics.v3, &static Semantics_v3.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v4, &static Semantics.v4, &static Semantics_v4.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v4_4, &static Semantics.v4_4, static Semantics_v4_4.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v5, &static Semantics.v5, &static Semantics_v5.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v5_2, &static Semantics.v5_2, &static Semantics_v5_2.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v6, &static Semantics.v6, &static Semantics_v6.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v6_1, &static Semantics.v6_1, &static Semantics_v6_1.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v6_4, &static Semantics.v6_4, static Semantics_v6_4.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v7, &static Semantics.v7, static Semantics_v7.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v7_1, &static Semantics.v7_1, &static Semantics_v7_1.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v7_2, &static Semantics.v7_2, &static Semantics_v7_2.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v7_4, &static Semantics.v7_4, &static Semantics_v7_4.semantic);
}

{
  return one-time initialization function for introduced(a1, &one-time initialization token for v8, &static Semantics.v8, static Semantics_v8.semantic);
}

unint64_t lazy protocol witness table accessor for type Semantics and conformance Semantics()
{
  result = lazy protocol witness table cache variable for type Semantics and conformance Semantics;
  if (!lazy protocol witness table cache variable for type Semantics and conformance Semantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Semantics and conformance Semantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SemanticRequirement and conformance SemanticRequirement()
{
  result = lazy protocol witness table cache variable for type SemanticRequirement and conformance SemanticRequirement;
  if (!lazy protocol witness table cache variable for type SemanticRequirement and conformance SemanticRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SemanticRequirement and conformance SemanticRequirement);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SemanticsIsLinkedOnOrAfter<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Semantics.Forced(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Semantics.Forced(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 13) = v3;
  return result;
}

uint64_t _AnchorWritingModifier.anchor.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path getter for _AnchorWritingModifier.transform : <A, B>_AnchorWritingModifier<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 8);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = *(v5 - 24);
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = v7;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Anchor<A>) -> (@out B.PreferenceKey.Value);
  a4[1] = v9;
}

uint64_t key path setter for _AnchorWritingModifier.transform : <A, B>_AnchorWritingModifier<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = *(v5 - 24);
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = v7;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Anchor<A>) -> (@out B.PreferenceKey.Value);
  *(a2 + 16) = v9;
  return result;
}

uint64_t _AnchorWritingModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t _s7SwiftUI22_AnchorWritingModifierV9_makeView8modifier6inputs4bodyAA01_G7OutputsVAA11_GraphValueVyACyxq_GG_AA01_G6InputsVAiA01_L0V_AOtctFZSo6CGRectV_AA21GlassMaterialShapeKey33_62A32D59B8A902A88963544196023CF7LLVTt3B503_s7a24UI15ModifiedContentVA2A4g7RzAA0E8e8R_rlE05_f21E04view6inputsAA01_E7k6VAA11_lm18VyACyxq_GG_AA01_E6n40VtFZAjA01_K0V_APtcfU0_AA01_ef1_D0VyAA016p6Effectr7F033_62tuvwxy11LLVG_AA014_cd7F0VySo6o6VAA0n8q2P3S9AVLLVGTG5AKyAA15ModifiedContentVyAA01_gE8_ContentVyAA0p6EffectrE0AULLVGACyAsVGGGTf1nnnc_n@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  v33 = *(a2 + 48);
  v34 = v7;
  v8 = *(a2 + 16);
  v30 = *a2;
  v35 = *(a2 + 80);
  v31 = v8;
  v32 = v6;
  *&v24 = v33;
  v9 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);
  outlined init with copy of _ViewInputs(a2, v36);

  v10 = *(v33 + 16);
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (*(v33 + 16 * v9 + 32) == &type metadata for GlassMaterialShapeKey)
    {
      specialized Array.remove(at:)(v9);
    }
  }

  v36[2] = v32;
  v36[3] = v33;
  v36[4] = v34;
  v37 = v35;
  v36[0] = v30;
  v36[1] = v31;
  outlined init with copy of _ViewInputs(v36, &v24);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v36, a3);
  outlined destroy of _ViewInputs(v36);
  *&v24 = *(a2 + 48);
  v11 = v24;
  v12 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);
  v13 = *(v11 + 16);
  if (v12 == v13)
  {
    goto LABEL_9;
  }

  if (v12 >= v13)
  {
LABEL_11:
    __break(1u);
  }

  if (*(v11 + 16 * v12 + 32) == &type metadata for GlassMaterialShapeKey)
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 64);
    v16 = *(a2 + 16);
    v26 = *(a2 + 32);
    v27 = v14;
    v28 = v15;
    v29 = *(a2 + 80);
    v24 = *a2;
    v25 = v16;
    swift_beginAccess();
    v17 = CachedEnvironment.animatedPosition(for:)(&v24);
    v18 = *(a2 + 48);
    v26 = *(a2 + 32);
    v27 = v18;
    v28 = *(a2 + 64);
    v29 = *(a2 + 80);
    v19 = *(a2 + 16);
    v24 = *a2;
    v25 = v19;
    v20 = CachedEnvironment.animatedCGSize(for:)(&v24);
    swift_endAccess();
    v21 = *(a2 + 60);
    *&v24 = __PAIR64__(v17, a1);
    *(&v24 + 1) = __PAIR64__(v21, v20);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [GlassMaterialShape]();
    type metadata accessor for AnchorWriter<CGRect, GlassMaterialShapeKey>();
    lazy protocol witness table accessor for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>();
    v22 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v24) = 0;
    PreferencesOutputs.subscript.setter(v22, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
  }

LABEL_9:
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  return outlined destroy of _ViewInputs(&v24);
}

uint64_t _AnchorWritingModifier2.base.getter(uint64_t a1)
{

  return a1;
}

uint64_t _AnchorWritingModifier2.base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t static _AnchorWritingModifier2._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, ValueMetadata *a6, uint64_t a7)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v13;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v14 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v14;
  v17[1] = v12;
  type metadata accessor for _AnchorWritingModifier2();
  type metadata accessor for _GraphValue();
  v15 = type metadata accessor for _AnchorWritingModifier();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _AnchorWritingModifier2._makeView(modifier:inputs:body:), v15, v17);
  return static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(v17, v18, 0, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in static _AnchorWritingModifier2._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for _AnchorWritingModifier2();
  v6 = type metadata accessor for _AnchorWritingModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Anchor<A>) -> (@out B.PreferenceKey.Value)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v4 = a1;
  return v2(&v4);
}

uint64_t static AnchorWriter.initialValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance AnchorWriter<A, B>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  static AnchorWriter.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = a2;
  v17[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t specialized AnchorWriter.description.getter()
{
  v0 = static PreferenceKey.readableName.getter();
  MEMORY[0x193ABEDD0](v0);

  return 0x203A726F68636E41;
}

void type metadata accessor for [GlassMaterialShape]()
{
  if (!lazy cache variable for type metadata for [GlassMaterialShape])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [GlassMaterialShape]);
    }
  }
}

void type metadata accessor for AnchorWriter<CGRect, GlassMaterialShapeKey>()
{
  if (!lazy cache variable for type metadata for AnchorWriter<CGRect, GlassMaterialShapeKey>)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for AnchorWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnchorWriter<CGRect, GlassMaterialShapeKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>()
{
  result = lazy protocol witness table cache variable for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>;
  if (!lazy protocol witness table cache variable for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>)
  {
    type metadata accessor for AnchorWriter<CGRect, GlassMaterialShapeKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorWriter<CGRect, GlassMaterialShapeKey> and conformance AnchorWriter<A, B>);
  }

  return result;
}

uint64_t static ConditionalGraphicsView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 48);
  v41 = *(a2 + 32);
  v42 = v8;
  v43 = *(a2 + 64);
  v44 = *(a2 + 80);
  v9 = *(a2 + 16);
  v39 = *a2;
  v40 = v9;
  static DynamicPropertyCache.fields(of:)(a3, &v51);
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v33 = v39;
  v34 = v40;
  v18 = v52;
  LODWORD(v23[0]) = v7;
  v19 = *(&v51 + 1);
  v20 = v51;
  v45 = v51;
  LOBYTE(v46) = v52;
  v17 = DWORD1(v52);
  DWORD1(v46) = DWORD1(v52);
  outlined init with copy of _ViewInputs(&v39, &v51);
  static ConditionalGraphicsView.makeBody(view:inputs:fields:)(&v27, &v51, v23, &v33, &v45, a3, a4);
  v16 = v51;
  v10 = v52;
  LODWORD(v23[0]) = v27;
  BYTE4(v23[0]) = BYTE4(v27);
  v47 = v35;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v45 = v33;
  v46 = v34;
  outlined init with copy of _ViewInputs(&v45, &v51);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for ConditionalGraphValue();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeView(inputs:)(&v33, v11, AssociatedConformanceWitness, v13, &v27);
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v51 = v33;
  v52 = v34;
  outlined destroy of _ViewInputs(&v51);
  v14 = v27;
  if (v10)
  {
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    outlined destroy of _ViewInputs(&v27);
  }

  else
  {
    v26 = v16;
    v22 = v7;
    v23[0] = v20;
    v23[1] = v19;
    v24 = v18;
    v25 = v17;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v22, v23, a3);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    outlined destroy of _ViewInputs(&v27);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a5 = v14;
  return result;
}

uint64_t static ConditionalGraphicsView.makeBody(view:inputs:fields:)(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a3;
  v13 = *a5;
  v12 = a5[1];
  v14 = *(a5 + 16);
  v15 = *(a5 + 5);
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    v22 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v22);

    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*a4);
    if (v16)
    {
      v28 = v11;
      v24 = v13;
      v25 = v12;
      v26 = v14;
      v27 = v15;
      v17 = type metadata accessor for GraphicsViewBodyAccessor();
    }

    else
    {
      ViewBodyAccessor.init()(a6, *(a7 + 8));
      v28 = v11;
      v24 = v13;
      v25 = v12;
      v26 = v14;
      v27 = v15;
      v17 = type metadata accessor for ViewBodyAccessor();
    }

    WitnessTable = swift_getWitnessTable();
    result = BodyAccessor.makeBody(container:inputs:fields:)(v31, &v29, &v28, a4, &v24, v17, WitnessTable);
    v20 = v29;
    v21 = v30;
    *a1 = v31[0];
    *(a1 + 4) = v16 & 1;
    *a2 = v20;
    *(a2 + 16) = v21;
  }

  return result;
}

uint64_t static ConditionalGraphicsView._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  static DynamicPropertyCache.fields(of:)(a3, v30);
  v8 = v30[0];
  v9 = v30[1];
  v10 = v31;
  v11 = v32;
  outlined init with copy of _ViewListInputs(a2, v30);
  v20 = v7;
  v18 = v9;
  v19 = v8;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  static ConditionalGraphicsView.makeBody(view:inputs:fields:)(&v21, &v27, &v20, v30, &v23, a3, a4);
  v16 = v27;
  v17 = v28;
  LOBYTE(v9) = v29;
  LODWORD(v23) = v21;
  BYTE4(v23) = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ConditionalGraphValue();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  ConditionalGraphValue<>.makeViewList(inputs:)(v30, v12, AssociatedConformanceWitness, v14);
  if ((v9 & 1) == 0)
  {
    v27 = v16;
    v28 = v17;
    v21 = v7;
    v23 = v19;
    v24 = v18;
    v25 = v10;
    v26 = v11;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v21, &v23, a3);
  }

  outlined destroy of _ViewListInputs(v30);
  return outlined consume of DynamicPropertyCache.Fields.Layout();
}

uint64_t static ConditionalGraphicsView._viewListCount(inputs:)(uint64_t *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(*a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v2;
  v4 = *v1;
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v11 = *(v1 + 1);
  v12 = v5;
  v13 = v6;
  v14 = v1[8];
  v10 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(&v9, AssociatedTypeWitness, AssociatedConformanceWitness);
}

void GraphicsViewBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UncheckedSendable();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v16[-v14];
  if (a2)
  {
    (*(v8 + 16))(v10, a1, a3, v13);
    UncheckedSendable.init(_:)(v10, a3, v15);
    closure #1 in GraphicsViewBodyAccessor.updateBody(of:changed:)(v15, a3, a4);
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t closure #1 in GraphicsViewBodyAccessor.updateBody(of:changed:)(char *a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v52 - v10;
  v56 = a3;
  v58 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v52 - v11;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = static Signpost.bodyInvoke;
    v14 = word_1ED539040;
    v15 = HIBYTE(word_1ED539040);
    v16 = byte_1ED539042;
    v17 = static os_signpost_type_t.begin.getter();
    v77 = v13;
    v78 = v14;
    v79 = v15;
    v80 = v16;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v67 = *(&v13 + 1);
    LODWORD(v68) = v17;
    v52[1] = a1;
    v53 = v12;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18DDAB4C0;
    v19 = AGTypeID.description.getter();
    v21 = v20;
    v22 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v23 = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 64) = v23;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v24 = specialized static Tracing.libraryName(defining:)();
    *(v18 + 96) = v22;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    v69 = v18;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v15)
    {
      v76 = v68;
      v74 = _signpostLog;
      v75 = &dword_18D018000;
      *&v77 = v13;
      *(&v77 + 1) = v67;
      v78 = v14;
      v71 = "%{public}@.body [in %{public}@]";
      v72 = 31;
      v73 = 2;
      v70 = v69;
      v26 = v57;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      (*(v65 + 8))(v26, v64);
LABEL_34:

      v12 = v53;
      break;
    }

    if (v13 == 20)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    v28 = bswap32(v13) | (4 * WORD1(v13));
    v29 = v68;
    v30 = v65 + 16;
    v59 = *(v65 + 16);
    v31 = v59(v66, v57, v64);
    v32 = 0;
    LOBYTE(v71) = 1;
    v68 = v27;
    v65 = v30;
    v62 = 16 * v27;
    v63 = (v30 - 8);
    v61 = v69 + 32;
    v60 = *(&v13 + 1);
LABEL_11:
    v67 = v52;
    MEMORY[0x1EEE9AC00](v31);
    a1 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = a1 + 8;
    v35 = v68;
    v36 = a1 + 8;
    do
    {
      *(v36 - 1) = 0;
      *v36 = 0;
      v36 += 16;
      --v35;
    }

    while (v35);
    v12 = (v61 + 40 * v32);
    v37 = v68;
    while (1)
    {
      v38 = *(v69 + 16);
      if (v32 == v38)
      {
        LOBYTE(v71) = 0;
LABEL_19:
        v41 = v60;
        if (v60 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v41 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v42 = v64;
        v43 = *v63;
        v44 = v66;
        (*v63)(v66, v64);
        v45 = __swift_project_value_buffer(v42, static OSSignpostID.continuation);
        v31 = v59(v44, v45, v42);
        if ((v71 & 1) == 0)
        {
          v46 = v64;
          v43(v66, v64);
          v43(v57, v46);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v32 >= v38)
      {
        break;
      }

      ++v32;
      outlined init with copy of AnyTrackedValue(v12, &v77);
      v39 = v81;
      __swift_project_boxed_opaque_existential_1(&v77, v81);
      *(v34 - 1) = CVarArg.kdebugValue(_:)(v28 | v29, v39);
      *v34 = v40 & 1;
      v34 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v77);
      v12 += 40;
      if (!--v37)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v47 = v12;
  (*(v56 + 32))(v58, v56);
  AGGraphSetUpdate();
  v48 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  MEMORY[0x1EEE9AC00](v48);
  v52[-2] = type metadata accessor for GraphicsViewBodyAccessor();
  v52[-1] = swift_getWitnessTable();
  v49 = AssociatedTypeWitness;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v47, partial apply for closure #2 in BodyAccessor.setBody(_:), &v52[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  return (*(v54 + 8))(v47, v49);
}

SwiftUI::UniqueID __swiftcall UniqueID.init()()
{
  v1 = v0;
  result.value = AGMakeUniqueID();
  v1->value = result.value;
  return result;
}

Swift::Int UniqueID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AccessibilityChildBehaviorKind.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6961746E6F63;
  }

  else
  {
    return 0x656E69626D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityChildBehaviorKind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E69626D6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6961746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.CombineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.CombineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityChildBehaviorKind.ContainCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityChildBehaviorKind.ContainCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityChildBehaviorKind.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.CombineCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AccessibilityChildBehaviorKind.CodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = (v10 + 8);
  if (v13)
  {
    v27 = 1;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();
    v15 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();
    v15 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    v16 = v22;
  }

  (*(v17 + 8))(v15, v16);
  return (*v14)(v12, v9);
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys);
  }

  return result;
}

Swift::Int AccessibilityChildBehaviorKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t AccessibilityChildBehaviorKind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys, &unk_1F0095A00, MEMORY[0x1E69E6F48]);
  v29 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.CombineCodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys, &unk_1F00959E0, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  type metadata accessor for KeyedEncodingContainer<AccessibilityChildBehaviorKind.ContainCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AccessibilityChildBehaviorKind.CodingKeys>, lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys, &unk_1F00959C0, v3);
  v11 = v10;
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CodingKeys and conformance AccessibilityChildBehaviorKind.CodingKeys();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v15 = v31;
  v16 = v32;
  v34 = a1;
  v17 = v30;
  v18 = v33;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v35 = v19;
  v36 = v19 + 32;
  v37 = 0;
  v38 = v20;
  v21 = specialized Collection<>.popFirst()();
  if (v21 == 2 || v37 != v38 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for AccessibilityChildBehaviorKind;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v17 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v39 = v21;
  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.ContainCodingKeys and conformance AccessibilityChildBehaviorKind.ContainCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v15, v29);
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type AccessibilityChildBehaviorKind.CombineCodingKeys and conformance AccessibilityChildBehaviorKind.CombineCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v9, v27);
  }

  (*(v17 + 8))(v13, v11);
  swift_unknownObjectRelease();
  *v18 = v39 & 1;
  v25 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}